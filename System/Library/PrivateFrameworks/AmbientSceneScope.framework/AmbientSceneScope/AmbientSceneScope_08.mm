void sub_23EFE9F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_23EF3AE8C(v6 - 80);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23EFE9F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_23EF3AE8C(va);
  sub_23EF3AE8C(v8 - 80);
  _Unwind_Resume(a1);
}

void sub_23EFE9FA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26)
{
  if (a26 == 1 && a25 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EFEA0A4(const void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    TypeID = CFNumberGetTypeID();
    if (CFGetTypeID(v1) == TypeID)
    {
      CFRetain(v1);
      sub_23EFEA754(&v3, v1);
    }
  }

  sub_23EFEA754(&v3, 0);
}

void sub_23EFEA198(const void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    TypeID = CFArrayGetTypeID();
    if (CFGetTypeID(v1) == TypeID)
    {
      CFRetain(v1);
      sub_23EFEABC0(&v3, v1);
    }
  }

  sub_23EFEABC0(&v3, 0);
}

void *sub_23EFEA28C(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      operator new();
    }

    sub_23EF62578();
  }

  return result;
}

void sub_23EFEA404(const void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    TypeID = CFDictionaryGetTypeID();
    if (CFGetTypeID(v1) == TypeID)
    {
      CFRetain(v1);
      sub_23EF44AC4(&v3, v1);
    }
  }

  sub_23EF44AC4(&v3, 0);
}

void sub_23EFEA710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EFEA958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_23EF3AE8C(v15);
  _Unwind_Resume(a1);
}

void sub_23EFEA9D8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23EFEAA10(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_23EFEAA34(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIPK10__CFNumberEC1ES5_EUlS5_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIPK10__CFNumberEC1ES5_EUlS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIPK10__CFNumberEC1ES5_EUlS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIPK10__CFNumberEC1ES5_EUlS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_23EFEAA94(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    CFRetain(v3);
  }

  sub_23EFEA754(&v4, v3);
}

void sub_23EFEADC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_23EF3AE8C(v15);
  _Unwind_Resume(a1);
}

void sub_23EFEAE44(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23EFEAE7C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_23EFEAEA0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIPK9__CFArrayEC1ES5_EUlS5_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIPK9__CFArrayEC1ES5_EUlS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIPK9__CFArrayEC1ES5_EUlS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIPK9__CFArrayEC1ES5_EUlS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23EFEAF00(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_23EF62578();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_23EF34E18();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  *v6 = *a2;
  *(v6 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v7 = 24 * v2 + 24;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = v6 + *a1 - v9;
    do
    {
      *v12 = *v11;
      *(v12 + 8) = *(v11 + 1);
      v11[1] = 0;
      v11[2] = 0;
      v11 += 3;
      v12 += 24;
    }

    while (v11 != v9);
    do
    {
      v13 = v8[2];
      if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
      }

      v8 += 3;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_23EFEB0A4(void *a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  operator new();
}

void sub_23EFEB118(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    CFRelease(v1);
  }

  __cxa_rethrow();
}

void sub_23EFEB148(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23EFEB180(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_23EFEB1A4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIPKvEC1ES4_EUlS4_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIPKvEC1ES4_EUlS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIPKvEC1ES4_EUlS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIPKvEC1ES4_EUlS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_23EFEB204(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_23F07903C(a2 + 48, (a2 + 40));
  v5 = sub_23F2E6C78(a2);
  *(a2 + 40) = v5;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v5 < 2u)
  {
    *(a2 + 72) = "version";
    *(a2 + 80) = 7;
    *(a2 + 88) = 1;
    if (*"version" == 1936876918 && *"sion" == 1852795251)
    {
      *(a2 + 96) = 2;
      *(a2 + 100) = 1;
      *(a2 + 88) = 0;
      v10 = a3[1];
      v13 = *a3;
      v14 = v10;
      if (!v10)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  LOBYTE(v13) = 6;
  v14 = 2;
  v7 = sub_23F2E6C78(a2);
  v8 = *v7;
  *v7 = 6;
  LOBYTE(v13) = v8;
  v9 = v7[1];
  v7[1] = v14;
  v14 = v9;
  sub_23F06357C(&v14, v8);
  v10 = a3[1];
  v13 = *a3;
  v14 = v10;
  if (v10)
  {
LABEL_9:
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_10:
  sub_23EFEB3C8(a2, &v13, 2u);
  v11 = v14;
  if (v14 && !atomic_fetch_add((v14 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = *(a2 + 56);
  *(a2 + 40) = *(v12 - 8);
  *(a2 + 56) = v12 - 8;
  if (*(a2 + 88) == 1)
  {
    *(a2 + 88) = 0;
  }
}

void sub_23EFEB3C8(uint64_t a1, void *a2, unsigned int a3)
{
  if (a3 > 2)
  {
    v9 = sub_23F063154(a2);
    sub_23F06AD58(v10, v9);
  }

  if (**(a1 + 40) <= 1u)
  {
    v4 = *(a1 + 88);
    *(a1 + 72) = "dictionary";
    *(a1 + 80) = 10;
    if ((v4 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v5 = sub_23F063074(a2);
  sub_23F07191C(v10, *v5);
  v6 = sub_23F2E6C78(a1);
  v7 = *v6;
  *v6 = v10[0];
  v10[0] = v7;
  v8 = v6[1];
  v6[1] = v11;
  v11 = v8;
  sub_23F06357C(&v11, v7);
}

void sub_23EFEB518(uint64_t a1, uint64_t a2)
{
  if (**(a1 + 40) <= 1u)
  {
    v2 = *(a1 + 88);
    *(a1 + 72) = "dictionary";
    *(a1 + 80) = 10;
    if ((v2 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_23EF4652C(v3, a2);
}

void sub_23EFEB664(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_23F06357C((v3 + 8), v2);
  sub_23F2D8E1C(va1);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23EFEB68C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23EFEB6A0(uint64_t a1, void *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = sub_23F063154(v4);
  sub_23F06AD58(v5, v3);
}

void sub_23EFEB7A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_23EF3AE8C(&a11);
  sub_23EF3AE8C(&a9);
  _Unwind_Resume(a1);
}

void sub_23EFEB7D4(uint64_t a1, unint64_t a2)
{
  v28 = 0u;
  memset(v27, 0, sizeof(v27));
  sub_23F06AEAC(&v23, a2);
  v3 = v23;
  *&v27[0] = v23;
  v4 = v24;
  *(v27 + 8) = v24;
  v5 = v25;
  *(&v27[1] + 1) = v25;
  v22 = v26;
  v28 = v26;
  if (*(a1 + 40))
  {
    v21 = v24;
    v6 = *(a1 + 24);
    LOBYTE(v23) = *(a1 + 32);
    sub_23EF2F9B0(v6, &v23, 1);
    v4 = v21;
  }

  v7 = v4;
  MEMORY[0x245CAC960](*(a1 + 24), 0xAAAAAAAAAAAAAAABLL * (v4 - v3));
  v8 = *(a1 + 40) + 1;
  *(a1 + 40) = v8;
  if (v7 != v3)
  {
    v9 = v3;
    do
    {
      sub_23F2F45C4(a1, v9);
      v9 += 24;
    }

    while (v9 != v7);
    v8 = *(a1 + 40);
  }

  if (v8)
  {
    v10 = *(a1 + 24);
    LOBYTE(v23) = *(a1 + 32);
    sub_23EF2F9B0(v10, &v23, 1);
  }

  v11 = v22;
  MEMORY[0x245CAC960](*(a1 + 24), 0xAAAAAAAAAAAAAAABLL * (v22 - v5));
  v12 = *(a1 + 40) + 1;
  *(a1 + 40) = v12;
  if (v22 == v5)
  {
    if (!v5)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v13 = v5;
  do
  {
    if (v12)
    {
      v14 = *(a1 + 24);
      LOBYTE(v23) = *(a1 + 32);
      sub_23EF2F9B0(v14, &v23, 1);
    }

    MEMORY[0x245CAC910](*(a1 + 24), 2);
    ++*(a1 + 40);
    sub_23EFEBAB8(a1, v13);
    v15 = *(a1 + 34);
    if (*(a1 + 40))
    {
      v16 = *(a1 + 24);
      LOBYTE(v23) = *(a1 + 32);
      sub_23EF2F9B0(v16, &v23, 1);
    }

    v17 = *(a1 + 24);
    LOBYTE(v23) = v15;
    sub_23EF2F9B0(v17, &v23, 1);
    v12 = *(a1 + 40) + 1;
    *(a1 + 40) = v12;
    v13 += 3;
  }

  while (v13 != v22);
  if (v5)
  {
    do
    {
      v18 = *(v11 - 1);
      if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v18->__on_zero_shared)(v18);
        std::__shared_weak_count::__release_weak(v18);
      }

      v11 -= 3;
    }

    while (v11 != v5);
    v5 = *(&v27[1] + 1);
    v3 = *&v27[0];
LABEL_24:
    operator delete(v5);
  }

LABEL_25:
  if (v3)
  {
    v19 = *(&v27[0] + 1);
    while (v19 != v3)
    {
      v20 = *(v19 - 1);
      v19 -= 3;
      if (v20 < 0)
      {
        operator delete(*v19);
      }
    }

    operator delete(v3);
  }
}

void sub_23EFEBA54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_23EFE93AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFEBA68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_23EFE93AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFEBA7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_23EFE93AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFEBA90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_23EFE93AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFEBAA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_23EFE93AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFEBAB8(uint64_t a1, const void **a2)
{
  v4 = *a2;
  if (*(a1 + 40))
  {
    v5 = *(a1 + 24);
    __p.__r_.__value_.__s.__data_[0] = *(a1 + 32);
    sub_23EF2F9B0(v5, &__p, 1);
  }

  MEMORY[0x245CAC940](*(a1 + 24), v4);
  ++*(a1 + 40);
  v6 = *a2;
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      if (v6 == 3)
      {
        sub_23EFEA198(a2 + 1);
      }

      if (v6 == 4)
      {
        sub_23EFEA404(a2 + 1);
      }

      goto LABEL_24;
    }

    v7 = a2[1];
    if (v7)
    {
      TypeID = CFBooleanGetTypeID();
      if (CFGetTypeID(v7) != TypeID)
      {
        v7 = 0;
        if (!*(a1 + 40))
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      v7 = CFBooleanGetValue(v7) != 0;
    }

    if (!*(a1 + 40))
    {
LABEL_18:
      MEMORY[0x245CAC8E0](*(a1 + 24), v7);
      ++*(a1 + 40);
      return;
    }

LABEL_17:
    v9 = *(a1 + 24);
    __p.__r_.__value_.__s.__data_[0] = *(a1 + 32);
    sub_23EF2F9B0(v9, &__p, 1);
    goto LABEL_18;
  }

  if (!*a2)
  {
    sub_23EFEA0A4(a2 + 1);
  }

  if (v6 != 1)
  {
LABEL_24:
    sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Foundation/FoundationIO/include/Kit/FoundationIO/DictionaryRefIO.h", 281, &unk_23F3091D6, 0, "invalid value type identifier", 0x1DuLL, sub_23F303DA4);
    abort();
  }

  sub_23F2CB1FC(a2[1], &__p);
  sub_23F2F45C4(a1, &__p);
  if (v11 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_23EFEC2C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_23EF3AE8C(v6 - 80);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23EFEC2E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_23EF3AE8C(va);
  sub_23EF3AE8C(v8 - 80);
  _Unwind_Resume(a1);
}

void sub_23EFEC300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23EFEC314(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26)
{
  if (a26 == 1 && a25 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EFEC3B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  va_copy(va3, va2);
  v11 = va_arg(va3, void);
  v13 = va_arg(va3, void);
  v14 = va_arg(va3, void);
  v15 = va_arg(va3, void);
  sub_23EF50F44(va2);
  sub_23EF3AE8C(va);
  sub_23EFE94A8(va3);
  sub_23EF3AE8C(va1);
  _Unwind_Resume(a1);
}

void sub_23EFEC3EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_23EFE94A8(va1);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23EFEC40C(uint64_t a1, void *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = sub_23F063154(v4);
  sub_23F06AD58(v5, v3);
}

void sub_23EFEC510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_23EF3AE8C(&a11);
  sub_23EF3AE8C(&a9);
  _Unwind_Resume(a1);
}

void sub_23EFEC540(uint64_t a1, unint64_t a2)
{
  v23 = 0u;
  memset(v22, 0, sizeof(v22));
  sub_23F06AEAC(&v18, a2);
  v3 = v18;
  *&v22[0] = v18;
  *(v22 + 8) = v19;
  v4 = v20;
  *(&v22[1] + 1) = v20;
  v17 = v21;
  v23 = v21;
  v5 = v19;
  __src = 0xAAAAAAAAAAAAAAABLL * ((v19 - v18) >> 3);
  sub_23F295368(a1 + 24, *(a1 + 32), &__src, &v25, 8uLL);
  if (v5 != v3)
  {
    v6 = v3;
    do
    {
      v7 = *(v6 + 23);
      if ((v7 & 0x80u) != 0)
      {
        v7 = v6[1];
      }

      v18 = v7;
      sub_23F295368(a1 + 24, *(a1 + 32), &v18, &v19, 8uLL);
      v8 = *(v6 + 23);
      if (v8 >= 0)
      {
        v9 = v6;
      }

      else
      {
        v9 = *v6;
      }

      if (v8 >= 0)
      {
        v10 = *(v6 + 23);
      }

      else
      {
        v10 = v6[1];
      }

      sub_23F295368(a1 + 24, *(a1 + 32), v9, &v9[v10], v10);
      v6 += 3;
    }

    while (v6 != v5);
  }

  v11 = v17;
  v18 = 0xAAAAAAAAAAAAAAABLL * (v17 - v4);
  sub_23F295368(a1 + 24, *(a1 + 32), &v18, &v19, 8uLL);
  if (v4 == v17)
  {
    if (!v4)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v12 = v4;
  do
  {
    LODWORD(__src) = 2;
    sub_23F295368(a1 + 24, *(a1 + 32), &__src, &__src + 4, 4uLL);
    sub_23F294D84(a1);
    sub_23EFEC82C(a1, v12);
    v13 = *(*(a1 + 56) - 8) + *(a1 + 24);
    *(v13 + 10) = *(a1 + 32) - v13 - 18;
    *(a1 + 56) -= 8;
    v12 += 3;
  }

  while (v12 != v17);
  if (v4)
  {
    do
    {
      v14 = *(v11 - 1);
      if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }

      v11 -= 3;
    }

    while (v11 != v4);
    v4 = *(&v22[1] + 1);
    v3 = *&v22[0];
LABEL_23:
    operator delete(v4);
  }

LABEL_24:
  if (v3)
  {
    v15 = *(&v22[0] + 1);
    while (v15 != v3)
    {
      v16 = *(v15 - 1);
      v15 -= 3;
      if (v16 < 0)
      {
        operator delete(*v15);
      }
    }

    operator delete(v3);
  }
}

void sub_23EFEC7C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_23EFE93AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFEC7DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_23EFE93AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFEC7F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_23EFE93AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFEC804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_23EFE93AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFEC818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_23EFE93AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFEC82C(uint64_t a1, const void **a2)
{
  LOWORD(__p.__r_.__value_.__l.__data_) = *a2;
  sub_23F295368(a1 + 24, *(a1 + 32), &__p, &__p.__r_.__value_.__s.__data_[2], 2uLL);
  v4 = *a2;
  if (v4 <= 1)
  {
    if (!*a2)
    {
      sub_23EFEA0A4(a2 + 1);
    }

    if (v4 != 1)
    {
LABEL_27:
      sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Foundation/FoundationIO/include/Kit/FoundationIO/DictionaryRefIO.h", 281, &unk_23F3091D6, 0, "invalid value type identifier", 0x1DuLL, sub_23F303DA4);
      abort();
    }

    sub_23F2CB1FC(a2[1], &__p);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    __src = size;
    sub_23F295368(a1 + 24, *(a1 + 32), &__src, v13, 8uLL);
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
      v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v7 = __p.__r_.__value_.__l.__size_;
    }

    sub_23F295368(a1 + 24, *(a1 + 32), p_p, p_p + v7, v7);
    if (v15 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        sub_23EFEA198(a2 + 1);
      }

      if (v4 == 4)
      {
        sub_23EFEA404(a2 + 1);
      }

      goto LABEL_27;
    }

    v8 = a2[1];
    if (v8 && (TypeID = CFBooleanGetTypeID(), CFGetTypeID(v8) == TypeID))
    {
      v10 = CFBooleanGetValue(v8) != 0;
      v11 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    LOWORD(__p.__r_.__value_.__l.__data_) = v10 | (v11 << 8);
    sub_23F295368(a1 + 24, *(a1 + 32), &__p, &__p.__r_.__value_.__s.__data_[1], 1uLL);
  }
}

void sub_23EFECFF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_23EF3AE8C(v6 - 80);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23EFED010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_23EF3AE8C(va);
  sub_23EF3AE8C(v8 - 80);
  _Unwind_Resume(a1);
}

void sub_23EFED02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23EFED054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    a18 = __p;
    operator delete(__p);
  }

  sub_23EF3AE8C(v18 - 80);
  sub_23EF3AE8C(&a14);
  _Unwind_Resume(a1);
}

void sub_23EFED080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26)
{
  if (a26 == 1 && a25 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EFED0E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  va_copy(va3, va2);
  v11 = va_arg(va3, void);
  v13 = va_arg(va3, void);
  v14 = va_arg(va3, void);
  v15 = va_arg(va3, void);
  sub_23EF50F44(va2);
  sub_23EF3AE8C(va);
  sub_23EFE94A8(va3);
  sub_23EF3AE8C(va1);
  _Unwind_Resume(a1);
}

void sub_23EFED118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_23EFE94A8(va1);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23EFED138(uint64_t a1, void *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = sub_23F063154(v4);
  sub_23F06AD58(v5, v3);
}

void sub_23EFED23C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_23EF3AE8C(&a11);
  sub_23EF3AE8C(&a9);
  _Unwind_Resume(a1);
}

void sub_23EFED26C(_DWORD *a1, unint64_t a2)
{
  v18 = 0u;
  memset(v17, 0, sizeof(v17));
  sub_23F06AEAC(&v13, a2);
  v3 = v13;
  *&v17[0] = v13;
  *(v17 + 8) = v14;
  v4 = v15;
  *(&v17[1] + 1) = v15;
  v12 = v16;
  v18 = v16;
  v5 = *a1;
  v6 = v14;
  v13 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 3);
  (*(v5 + 120))(a1, &v13);
  if (v6 != v3)
  {
    v7 = v3;
    do
    {
      (*(*a1 + 144))(a1, v7);
      v7 += 3;
    }

    while (v7 != v6);
  }

  v8 = v12;
  v19 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v4) >> 3);
  (*(*a1 + 120))(a1, &v19);
  v13 = v4;
  *&v14 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v4) >> 3);
  sub_23EFED4BC(a1, &v13);
  if (v4)
  {
    if (v12 != v4)
    {
      do
      {
        v9 = *(v8 - 1);
        if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }

        v8 -= 24;
      }

      while (v8 != v4);
      v4 = *(&v17[1] + 1);
      v3 = *&v17[0];
    }

    operator delete(v4);
  }

  if (v3)
  {
    v10 = *(&v17[0] + 1);
    while (v10 != v3)
    {
      v11 = *(v10 - 1);
      v10 -= 3;
      if (v11 < 0)
      {
        operator delete(*v10);
      }
    }

    operator delete(v3);
  }
}

void sub_23EFED46C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_23EFE93AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFED480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_23EFE93AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFED494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_23EFE93AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFED4A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_23EFE93AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFED4BC(_DWORD *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    v4 = *a2;
    v5 = 24 * v2;
    do
    {
      while (1)
      {
        v6 = a1[2];
        v8 = 2;
        (*(*a1 + 104))(a1, &v8);
        if (v6 >= 1)
        {
          break;
        }

        sub_23EFED75C(a1, v4);
        v4 += 3;
        v5 -= 24;
        if (!v5)
        {
          return;
        }
      }

      if (v6 == 2)
      {
        v7 = 2;
        (*(*a1 + 104))(a1, &v7);
      }

      (*(*a1 + 16))(a1);
      sub_23EFED75C(a1, v4);
      (*(*a1 + 24))(a1);
      v4 += 3;
      v5 -= 24;
    }

    while (v5);
  }
}

uint64_t sub_23EFED618(int *a1, uint64_t a2, uint64_t a3)
{
  v8 = 2;
  (*(*a2 + 104))(a2, &v8);
  v6 = v8;
  if (*a1 < 1)
  {
    return sub_23EFED75C(a2, a3, v6);
  }

  if (*a1 == 2)
  {
    v9 = 2;
    (*(*a2 + 104))(a2, &v9);
    if (*a1 <= 0)
    {
      return sub_23EFED75C(a2, a3, v6);
    }
  }

  (*(*a2 + 16))(a2);
  sub_23EFED75C(a2, a3, v6);
  return (*(*a2 + 24))(a2);
}

void sub_23EFED75C(_BYTE *a1, const void **a2)
{
  sub_23EFEE0E4(a1, a2);
  v4 = *a2;
  if (v4 <= 1)
  {
    if (!*a2)
    {
      sub_23EFEA0A4(a2 + 1);
    }

    if (v4 != 1)
    {
LABEL_19:
      sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Foundation/FoundationIO/include/Kit/FoundationIO/DictionaryRefIO.h", 281, &unk_23F3091D6, 0, "invalid value type identifier", 0x1DuLL, sub_23F303DA4);
      abort();
    }

    sub_23F2CB1FC(a2[1], &__p);
    (*(*a1 + 144))(a1, &__p);
    if (v10 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        sub_23EFEA198(a2 + 1);
      }

      if (v4 == 4)
      {
        sub_23EFEA404(a2 + 1);
      }

      goto LABEL_19;
    }

    v5 = a2[1];
    if (v5 && (TypeID = CFBooleanGetTypeID(), CFGetTypeID(v5) == TypeID))
    {
      v7 = CFBooleanGetValue(v5) != 0;
      v8 = 1;
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    LOWORD(__p.__r_.__value_.__l.__data_) = v7 | (v8 << 8);
    (*(*a1 + 32))(a1, &__p);
  }
}

void sub_23EFEDFA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_23EF3AE8C(v6 - 80);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23EFEDFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_23EF3AE8C(va);
  sub_23EF3AE8C(v8 - 80);
  _Unwind_Resume(a1);
}

void sub_23EFEDFE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23EFEDFF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26)
{
  if (a26 == 1 && a25 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EFEE0E4(_BYTE *a1, _WORD *a2)
{
  if ((a1[12] & 2) != 0)
  {
    v4 = 0;
    sub_23EFEA4F8();
  }

  v3[0] = *a2;
  return (*(*a1 + 96))(a1, v3);
}

void sub_23EFEE208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EFEE224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EFEE238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EFEE24C(uint64_t a1, uint64_t a2)
{
  v6[0] = *(a1 + 32);
  v4 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v4;
  sub_23F2EB5F4(a1 + 40, v6);
  sub_23F294EB4(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  v6[0] = "version";
  v6[1] = 7;
  v7 = 2;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_23F2ECE4C(a1, &v7);
  if (v7 >= 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = v7;
  }

  if (v7 < 2)
  {
    sub_23EFEE348();
  }

  sub_23EFEE468(a1, a2, v5);
}

void sub_23EFEE468(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 <= 2)
  {
    v3 = *(a1 + 104);
    *(a1 + 88) = "dictionary";
    *(a1 + 96) = 10;
    if ((v3 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    operator new();
  }

  v5[0] = 0;
  v5[1] = 0;
  v4 = v5;
  sub_23F2D21DC();
}

void sub_23EFEE6B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, uint64_t **);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_23F062A70(va);
  sub_23F2D8E74(va1);
  _Unwind_Resume(a1);
}

void sub_23EFEE6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x245CACD00](v7, 0x10E2C40590DAB7CLL);
  sub_23F2D8E74(va);
  _Unwind_Resume(a1);
}

void sub_23EFEE6F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_23F2D8E74(va);
  _Unwind_Resume(a1);
}

void sub_23EFEE738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_23F2D8E74(va);
  _Unwind_Resume(a1);
}

void sub_23EFEE74C(uint64_t a1)
{
  v1 = *(a1 + 104);
  *(a1 + 88) = "dictionary";
  *(a1 + 96) = 10;
  if ((v1 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  operator new();
}

void sub_23EFEE8E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23F2D8E74(va);
  _Unwind_Resume(a1);
}

void sub_23EFEE8F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23F2D8E74(va);
  _Unwind_Resume(a1);
}

void sub_23EFEEA50(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 <= 2)
  {
    v3 = *(a1 + 104);
    *(a1 + 88) = "dictionary";
    *(a1 + 96) = 10;
    if ((v3 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    operator new();
  }

  v5[0] = 0;
  v5[1] = 0;
  v4 = v5;
  sub_23F2D21DC();
}

void sub_23EFEEC98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, uint64_t **);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_23F062A70(va);
  sub_23F2D8E74(va1);
  _Unwind_Resume(a1);
}

void sub_23EFEECB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x245CACD00](v7, 0x10E2C40590DAB7CLL);
  sub_23F2D8E74(va);
  _Unwind_Resume(a1);
}

void sub_23EFEECE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_23F2D8E74(va);
  _Unwind_Resume(a1);
}

void sub_23EFEED20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_23F2D8E74(va);
  _Unwind_Resume(a1);
}

void sub_23EFEEE7C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4 > 1)
  {
    v7 = 0;
    sub_23F2F80F8(*(a2 + 48), &v7);
    *&v6 = (*(*(a2 + 16) + 32))(a2 + 16);
    *(&v6 + 1) = v7;
    sub_23EF62458(a2 + 24, &v6);
    sub_23EFEEFB8(a2, a3, 2u);
  }

  sub_23EFEEFB8(a2, a3, a4);
}

void sub_23EFEEFB8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 >= 2)
  {
    v4[0] = 0;
    v4[1] = 0;
    v3 = v4;
    sub_23F2D21DC();
  }

  sub_23EFEF0E0();
}

void sub_23EFEF260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, char *a15)
{
  sub_23EF53700(&a14, a15);
  sub_23EF3AE8C(&a9);
  _Unwind_Resume(a1);
}

void sub_23EFEF280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_23EF3AE8C(&a11);
  sub_23EF3AE8C(&a9);
  _Unwind_Resume(a1);
}

void sub_23EFEF29C(uint64_t a1)
{
  *__p = 0u;
  v10 = 0u;
  *v8 = 0u;
  sub_23EF62C04(a1, v8);
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - __p[1]) >> 3);
  sub_23F2F80F8(*(a1 + 48), &v11);
  v2 = v10;
  v3 = 0xAAAAAAAAAAAAAAABLL * ((v10 - __p[1]) >> 3);
  v4 = v11 - v3;
  if (v11 > v3)
  {
    sub_23EFEF748(&__p[1], v4);
    v5 = __p[1];
    if (__p[1] == v10)
    {
      goto LABEL_15;
    }

LABEL_14:
    LODWORD(v13[0]) = 2;
    sub_23F2F7EFC(*(a1 + 48), v13);
    v14 = v13[0];
    v13[0] = a1;
    v13[1] = v5;
    v13[2] = &v12;
    v13[3] = &v14;
    sub_23EFEF970(v13);
  }

  if (v11 >= v3)
  {
    v5 = __p[1];
    if (__p[1] != v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v6 = __p[1] + 24 * v11;
    if (v10 != v6)
    {
      do
      {
        v7 = *(v2 - 1);
        if (v7)
        {
          if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7, v4);
            std::__shared_weak_count::__release_weak(v7);
          }
        }

        v2 -= 24;
      }

      while (v2 != v6);
    }

    *&v10 = v6;
    v5 = __p[1];
    if (__p[1] != v6)
    {
      goto LABEL_14;
    }
  }

LABEL_15:
  sub_23F06B4DC(v8, v13);
}

void sub_23EFEF5E8(uint64_t a1, uint64_t *a2)
{
  v11 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  sub_23F2F80F8(*(a1 + 48), &v11);
  v4 = a2[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
  v6 = v11 - v5;
  if (v11 > v5)
  {
    sub_23EFEF748(a2, v6);
    v9 = a2;
    j = *a2;
    i = v9[1];
    if (j == i)
    {
      return;
    }

    goto LABEL_14;
  }

  if (v11 >= v5)
  {
    i = a2[1];
    j = *a2;
    if (j == v4)
    {
      return;
    }

    goto LABEL_14;
  }

  for (i = *a2 + 24 * v11; v4 != i; v4 -= 24)
  {
    v10 = *(v4 - 8);
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10, v6);
      std::__shared_weak_count::__release_weak(v10);
    }
  }

  a2[1] = i;
  for (j = *a2; j != i; j += 24)
  {
LABEL_14:
    v13 = 2;
    sub_23F2F7EFC(*(a1 + 48), &v13);
    sub_23EFEFAA4(&v12, a1, j, v13);
  }
}

void sub_23EFEF748(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 24 * a2;
      v10 = (v3 + 8);
      v11 = 24 * a2;
      do
      {
        *v10 = 0;
        v10[1] = 0;
        v10 += 3;
        v11 -= 24;
      }

      while (v11);
      a1[1] = v9;
    }

    else
    {
      a1[1] = v3;
    }
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_23EF62578();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_23EF34E18();
    }

    v12 = 24 * v5;
    v13 = 24 * a2;
    v14 = 24 * v5 + 24 * a2;
    v15 = (24 * v5 + 8);
    do
    {
      *v15 = 0;
      v15[1] = 0;
      v15 += 3;
      v13 -= 24;
    }

    while (v13);
    v16 = *a1;
    v17 = a1[1];
    v18 = v12 + *a1 - v17;
    if (v17 != *a1)
    {
      v19 = *a1;
      v20 = v18;
      do
      {
        *v20 = *v19;
        *(v20 + 8) = *(v19 + 1);
        v19[1] = 0;
        v19[2] = 0;
        v19 += 3;
        v20 += 24;
      }

      while (v19 != v17);
      do
      {
        v21 = v16[2];
        if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v21->__on_zero_shared)(v21);
          std::__shared_weak_count::__release_weak(v21);
        }

        v16 += 3;
      }

      while (v16 != v17);
      v16 = *a1;
    }

    *a1 = v18;
    a1[1] = v14;
    a1[2] = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void sub_23EFEF970(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (**(a1 + 24) > 1u)
  {
    v4 = 0;
    sub_23F2F80F8(*(v1 + 48), &v4);
    *&v3 = (*(*(v1 + 16) + 32))(v1 + 16);
    *(&v3 + 1) = v4;
    sub_23EF62458(v1 + 24, &v3);
    sub_23EFEFDC8(v1, v2);
  }

  sub_23EFEFBD0(&v3, v1);
}

uint64_t sub_23EFEFAA4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4 <= 1)
  {
    sub_23EFEFBD0(&v9, a2);
  }

  v10 = 0;
  sub_23F2F80F8(*(a2 + 48), &v10);
  *&v9 = (*(*(a2 + 16) + 32))(a2 + 16);
  *(&v9 + 1) = v10;
  sub_23EF62458(a2 + 24, &v9);
  sub_23EFEFDC8(a2, a3, 2);
  v6 = *(a2 + 32);
  result = (*(*(a2 + 16) + 32))(a2 + 16);
  v8 = *(v6 - 16) - result + *(v6 - 8);
  if (v8)
  {
    result = (*(*(a2 + 16) + 40))(a2 + 16, v8);
  }

  *(a2 + 32) -= 16;
  return result;
}

void sub_23EFEFBD0(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  sub_23EFF1E48(a2, &v2);
}

void sub_23EFEFD84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_23EF3AE8C(va1);
  sub_23EF50F44(va);
  _Unwind_Resume(a1);
}

void sub_23EFEFDA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23EF50F44(va);
  _Unwind_Resume(a1);
}

void sub_23EFEFDB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23EF50F44(va);
  _Unwind_Resume(a1);
}

void sub_23EFEFDC8(uint64_t a1, _WORD *a2)
{
  LOWORD(__p[0]) = 0;
  sub_23F2F7D50(*(a1 + 48), __p);
  v4 = LOWORD(__p[0]);
  *a2 = __p[0];
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (v4 != 3)
      {
        if (v4 == 4)
        {
          __p[1] = 0;
          v13 = 0;
          __p[0] = &__p[1];
          sub_23F2D21DC();
        }

        sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Foundation/FoundationIO/include/Kit/FoundationIO/DictionaryRefIO.h", 250, &unk_23F3091D6, 0, "invalid value type identifier", 0x1DuLL, sub_23F303DA4);
        abort();
      }

      v9[0] = 0;
      v9[1] = 0;
      v10 = 0;
      sub_23EFEF5E8(a1, v9);
      __p[1] = 0;
      v13 = 0;
      __p[0] = 0;
      sub_23EFF0E98(__p, 0xAAAAAAAAAAAAAAABLL * ((v9[1] - v9[0]) >> 3));
      sub_23EFF0FE0(v9[0], v9[1], __p);
      sub_23EFF13F0();
    }

    LOBYTE(v11) = 0;
    sub_23F2F8478(*(a1 + 48), &v11);
    v8 = MEMORY[0x277CBED28];
    if (!v11)
    {
      v8 = MEMORY[0x277CBED10];
    }

    sub_23F2CB698(__p, *v8);
  }

  if (v4)
  {
    __p[0] = 0;
    __p[1] = 0;
    v13 = 0;
    sub_23F2F856C(*(a1 + 48), __p);
    if (SHIBYTE(v13) >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    if (SHIBYTE(v13) >= 0)
    {
      v6 = HIBYTE(v13);
    }

    else
    {
      v6 = __p[1];
    }

    v7 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v5, v6, 0x8000100u, 0);
    sub_23F064058(v9, v7);
  }

  LOBYTE(__p[0]) = 7;
  LOBYTE(__p[1]) = 7;
  operator new();
}

void sub_23EFF06F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  sub_23EF3AE8C(&a9);
  _Unwind_Resume(a1);
}

void sub_23EFF0714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, void *a19, uint64_t a20, void *__p, uint64_t a22)
{
  sub_23EF3AE8C(&a17);
  sub_23EFF0CC0(&a9);
  sub_23EFE94A8(&a13);
  _Unwind_Resume(a1);
}

void sub_23EFF0778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void *);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_23EFF0CC0(va1);
  sub_23EFE94A8(va);
  _Unwind_Resume(a1);
}

void sub_23EFF0830(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_23EFEB0A4(&v5, v3);
}

void sub_23EFF0954(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_23EFEB0A4(&v5, v3);
}

void sub_23EFF0A78(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_23EFEB0A4(&v5, v3);
}

void sub_23EFF0B9C(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_23EFEB0A4(&v5, v3);
}

void **sub_23EFF0CC0(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_23EFF0D74(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_23EFEB0A4(&v5, v3);
}

void *sub_23EFF0E98(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      operator new();
    }

    sub_23EF62578();
  }

  return result;
}

uint64_t sub_23EFF0FE0(__int16 *a1, __int16 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = *a1;
    sub_23EFF1164(&v5, (a1 + 4));
  }

  return a3;
}

void sub_23EFF1134(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_23EF3AE8C(va1);
  sub_23EF50F44(va);
  _Unwind_Resume(a1);
}

void sub_23EFF1150(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF50F44(va);
  _Unwind_Resume(a1);
}

void sub_23EFF1164(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_23EFEB0A4(&v5, v3);
}

_OWORD *sub_23EFF1288(void *a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_23EF62578();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 3 > v3)
  {
    v3 = v5 >> 3;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 60))
    {
      operator new();
    }

    sub_23EF34E18();
  }

  v7 = (16 * v2);
  v8 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v9 = *a1;
  v10 = a1[1];
  v11 = *a1 == v10;
  v12 = (v7 + *a1 - v10);
  *v7 = v8;
  v13 = v7 + 1;
  if (!v11)
  {
    v14 = v9;
    v15 = v12;
    do
    {
      *v15++ = *v14;
      *v14 = 0;
      v14[1] = 0;
      v14 += 2;
    }

    while (v14 != v10);
    do
    {
      v16 = v9[1];
      if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
      }

      v9 += 2;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v12;
  a1[1] = v13;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v13;
}

void sub_23EFF16AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_23EF3AE8C(&a11);
  sub_23EF3AE8C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_23EFF16C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1[3] <= 1u)
  {
    sub_23EFF17FC();
  }

  v7 = 0;
  sub_23F2F80F8(*(v1 + 48), &v7);
  *&v6 = (*(*(v1 + 16) + 32))(v1 + 16);
  *(&v6 + 1) = v7;
  sub_23EF62458(v1 + 24, &v6);
  sub_23EFEF29C(v1, v2, 2);
  v3 = *(v1 + 32);
  result = (*(*(v1 + 16) + 32))(v1 + 16);
  v5 = *(v3 - 16) - result + *(v3 - 8);
  if (v5)
  {
    result = (*(*(v1 + 16) + 40))(v1 + 16, v5);
  }

  *(v1 + 32) -= 16;
  return result;
}

void sub_23EFF17FC()
{
  v1[0] = 0;
  v1[1] = 0;
  v0 = v1;
  sub_23F2D21DC();
}

void sub_23EFF19B8(uint64_t a1)
{
  *__p = 0u;
  v11 = 0u;
  *v9 = 0u;
  sub_23EF62C04(a1, v9);
  *&v8 = 0xAAAAAAAAAAAAAAABLL * ((v11 - __p[1]) >> 3);
  sub_23F2F80F8(*(a1 + 48), &v8);
  v2 = v11;
  v3 = 0xAAAAAAAAAAAAAAABLL * ((v11 - __p[1]) >> 3);
  v4 = v8 - v3;
  if (v8 <= v3)
  {
    if (v8 >= v3)
    {
      v6 = v11;
      v5 = __p[1];
      if (__p[1] == v11)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v6 = __p[1] + 24 * v8;
      if (v11 != v6)
      {
        do
        {
          v7 = *(v2 - 1);
          if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7, v4);
            std::__shared_weak_count::__release_weak(v7);
          }

          v2 -= 24;
        }

        while (v2 != v6);
      }

      *&v11 = v6;
      v5 = __p[1];
      if (__p[1] == v6)
      {
LABEL_15:
        sub_23F06A7F0(v9, &v8);
      }
    }
  }

  else
  {
    sub_23EFEF748(&__p[1], v4);
    v5 = __p[1];
    v6 = v11;
    if (__p[1] == v11)
    {
      goto LABEL_15;
    }
  }

  do
  {
    v12 = 1;
    sub_23F2F7EFC(*(a1 + 48), &v12);
    sub_23EFF1E48(a1, v5, v12);
    v5 += 24;
  }

  while (v5 != v6);
  goto LABEL_15;
}

void sub_23EFF1C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EFE93AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFF1CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EFE93AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFF1CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EFE93AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFF1CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EFE93AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFF1CEC(uint64_t a1, uint64_t *a2)
{
  v11 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  sub_23F2F80F8(*(a1 + 48), &v11);
  v4 = a2[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
  v6 = v11 - v5;
  if (v11 > v5)
  {
    sub_23EFEF748(a2, v6);
    v9 = a2;
    j = *a2;
    i = v9[1];
    if (j == i)
    {
      return;
    }

    goto LABEL_14;
  }

  if (v11 >= v5)
  {
    i = a2[1];
    j = *a2;
    if (j == v4)
    {
      return;
    }

    goto LABEL_14;
  }

  for (i = *a2 + 24 * v11; v4 != i; v4 -= 24)
  {
    v10 = *(v4 - 8);
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10, v6);
      std::__shared_weak_count::__release_weak(v10);
    }
  }

  a2[1] = i;
  for (j = *a2; j != i; j += 24)
  {
LABEL_14:
    v12 = 1;
    sub_23F2F7EFC(*(a1 + 48), &v12);
    sub_23EFF1E48(a1, j, v12);
  }
}

void sub_23EFF1E48(uint64_t a1, _WORD *a2)
{
  LOWORD(__p[0]) = 0;
  sub_23F2F7D50(*(a1 + 48), __p);
  v4 = LOWORD(__p[0]);
  *a2 = __p[0];
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (v4 != 3)
      {
        if (v4 == 4)
        {
          __p[1] = 0;
          v13 = 0;
          __p[0] = &__p[1];
          sub_23F2D21DC();
        }

        sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Foundation/FoundationIO/include/Kit/FoundationIO/DictionaryRefIO.h", 250, &unk_23F3091D6, 0, "invalid value type identifier", 0x1DuLL, sub_23F303DA4);
        abort();
      }

      v9[0] = 0;
      v9[1] = 0;
      v10 = 0;
      sub_23EFF1CEC(a1, v9);
      __p[1] = 0;
      v13 = 0;
      __p[0] = 0;
      sub_23EFF0E98(__p, 0xAAAAAAAAAAAAAAABLL * ((v9[1] - v9[0]) >> 3));
      sub_23EFF289C(v9[0], v9[1], __p);
      sub_23EFF13F0();
    }

    LOBYTE(v11) = 0;
    sub_23F2F8478(*(a1 + 48), &v11);
    v8 = MEMORY[0x277CBED28];
    if (!v11)
    {
      v8 = MEMORY[0x277CBED10];
    }

    sub_23F2CB698(__p, *v8);
  }

  if (v4)
  {
    __p[0] = 0;
    __p[1] = 0;
    v13 = 0;
    sub_23F2F856C(*(a1 + 48), __p);
    if (SHIBYTE(v13) >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    if (SHIBYTE(v13) >= 0)
    {
      v6 = HIBYTE(v13);
    }

    else
    {
      v6 = __p[1];
    }

    v7 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v5, v6, 0x8000100u, 0);
    sub_23F064058(v9, v7);
  }

  LOBYTE(__p[0]) = 7;
  LOBYTE(__p[1]) = 7;
  operator new();
}

void sub_23EFF2764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  sub_23EF3AE8C(&a9);
  _Unwind_Resume(a1);
}

void sub_23EFF2780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, void *a19, uint64_t a20, void *__p, uint64_t a22)
{
  sub_23EF3AE8C(&a17);
  sub_23EFF0CC0(&a9);
  sub_23EFE94A8(&a13);
  _Unwind_Resume(a1);
}

void sub_23EFF27E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void *);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_23EFF0CC0(va1);
  sub_23EFE94A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23EFF289C(__int16 *a1, __int16 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = *a1;
    sub_23EFF1164(&v5, (a1 + 4));
  }

  return a3;
}

void sub_23EFF29F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_23EF3AE8C(va1);
  sub_23EF50F44(va);
  _Unwind_Resume(a1);
}

void sub_23EFF2A0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF50F44(va);
  _Unwind_Resume(a1);
}

void sub_23EFF2A20(uint64_t a1, uint64_t a2)
{
  v6[0] = *(a1 + 32);
  v4 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v4;
  sub_23F2EB5F4(a1 + 40, v6);
  sub_23F294EB4(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  v6[0] = "version";
  v6[1] = 7;
  v7 = 2;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_23F2EBEC0(a1, &v7);
  if (v7 >= 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = v7;
  }

  if (v7 < 2)
  {
    sub_23EFF2B1C();
  }

  sub_23EFF2C3C(a1, a2, v5);
}

void sub_23EFF2C3C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 <= 2)
  {
    v3 = *(a1 + 104);
    *(a1 + 88) = "dictionary";
    *(a1 + 96) = 10;
    if ((v3 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    operator new();
  }

  v5[0] = 0;
  v5[1] = 0;
  v4 = v5;
  sub_23F2D21DC();
}

void sub_23EFF2E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, uint64_t **);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_23F062A70(va);
  sub_23F2D8E1C(va1);
  _Unwind_Resume(a1);
}

void sub_23EFF2EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x245CACD00](v7, 0x10E2C40590DAB7CLL);
  sub_23F2D8E1C(va);
  _Unwind_Resume(a1);
}

void sub_23EFF2ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_23F2D8E1C(va);
  _Unwind_Resume(a1);
}

void sub_23EFF2F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_23F2D8E1C(va);
  _Unwind_Resume(a1);
}

void sub_23EFF2F20(uint64_t a1)
{
  v1 = *(a1 + 104);
  *(a1 + 88) = "dictionary";
  *(a1 + 96) = 10;
  if ((v1 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  operator new();
}

void sub_23EFF30B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23F2D8E1C(va);
  _Unwind_Resume(a1);
}

void sub_23EFF30C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23F2D8E1C(va);
  _Unwind_Resume(a1);
}

void sub_23EFF30DC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 <= 2)
  {
    v3 = *(a1 + 104);
    *(a1 + 88) = "dictionary";
    *(a1 + 96) = 10;
    if ((v3 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    operator new();
  }

  v5[0] = 0;
  v5[1] = 0;
  v4 = v5;
  sub_23F2D21DC();
}

void sub_23EFF3324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, uint64_t **);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_23F062A70(va);
  sub_23F2D8E1C(va1);
  _Unwind_Resume(a1);
}

void sub_23EFF3340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x245CACD00](v7, 0x10E2C40590DAB7CLL);
  sub_23F2D8E1C(va);
  _Unwind_Resume(a1);
}

void sub_23EFF336C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_23F2D8E1C(va);
  _Unwind_Resume(a1);
}

void sub_23EFF33AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_23F2D8E1C(va);
  _Unwind_Resume(a1);
}

void sub_23EFF33C0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 >= 2)
  {
    v4[0] = 0;
    v4[1] = 0;
    v3 = v4;
    sub_23F2D21DC();
  }

  sub_23EFF34E8();
}

void sub_23EFF3668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, char *a15)
{
  sub_23EF53700(&a14, a15);
  sub_23EF3AE8C(&a9);
  _Unwind_Resume(a1);
}

void sub_23EFF3688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_23EF3AE8C(&a11);
  sub_23EF3AE8C(&a9);
  _Unwind_Resume(a1);
}

void sub_23EFF36A4(uint64_t a1)
{
  *v9 = 0u;
  v10 = 0u;
  *v8 = 0u;
  sub_23EF667E0(a1, v8);
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v9[1]) >> 3);
  sub_23F2F5EB0(a1, &v11);
  v2 = v10;
  v3 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v9[1]) >> 3);
  v4 = v11 - v3;
  if (v11 > v3)
  {
    sub_23EFEF748(&v9[1], v4);
    v5 = v9[1];
    if (v9[1] == v10)
    {
      goto LABEL_17;
    }

LABEL_14:
    LODWORD(__p[0]) = 2;
    sub_23F2F5830(a1, __p);
    if (LODWORD(__p[0]) < 2)
    {
      sub_23EFF3CE0(__p, a1);
    }

    sub_23EFF3ED8(a1, v5);
  }

  if (v11 >= v3)
  {
    v5 = v9[1];
    if (v9[1] != v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v6 = v9[1] + 24 * v11;
    if (v10 != v6)
    {
      do
      {
        v7 = *(v2 - 1);
        if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7, v4);
          std::__shared_weak_count::__release_weak(v7);
        }

        v2 -= 24;
      }

      while (v2 != v6);
    }

    *&v10 = v6;
    v5 = v9[1];
    if (v9[1] != v6)
    {
      goto LABEL_14;
    }
  }

LABEL_17:
  sub_23F06B4DC(v8, __p);
}

void sub_23EFF3AB8(uint64_t a1, uint64_t *a2)
{
  v13 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  sub_23F2F5EB0(a1, &v13);
  v4 = a2[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
  v6 = v13 - v5;
  if (v13 <= v5)
  {
    if (v13 >= v5)
    {
      i = a2[1];
      v7 = *a2;
      if (v7 == v4)
      {
        return;
      }
    }

    else
    {
      for (i = *a2 + 24 * v13; v4 != i; v4 -= 24)
      {
        v10 = *(v4 - 8);
        if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10, v6);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      a2[1] = i;
      v7 = *a2;
      if (v7 == i)
      {
        return;
      }
    }
  }

  else
  {
    sub_23EFEF748(a2, v6);
    v9 = a2;
    v7 = *a2;
    i = v9[1];
    if (v7 == i)
    {
      return;
    }
  }

  while (2)
  {
    LODWORD(__p[0]) = 2;
    sub_23F2F5830(a1, __p);
    if (LODWORD(__p[0]) >= 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = LODWORD(__p[0]);
    }

    if (LODWORD(__p[0]) <= 1)
    {
      sub_23EFF3CE0(__p, a1);
    }

    sub_23EFF3ED8(a1, v7, v11);
    while ((*(a1 + 131) & 1) == 0 && (*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) == 0)
    {
      sub_23F2F7390(a1, __p);
      if (v15 < 0)
      {
        if (__p[1] == 1 && *(a1 + 72) == *__p[0])
        {
LABEL_31:
          v12 = 0;
          if (v15 < 0)
          {
            goto LABEL_34;
          }

          goto LABEL_22;
        }
      }

      else if (v15 == 1 && *(a1 + 72) == LOBYTE(__p[0]))
      {
        goto LABEL_31;
      }

      v12 = 1;
      if (v15 < 0)
      {
LABEL_34:
        operator delete(__p[0]);
      }

LABEL_22:
      if ((v12 & 1) == 0)
      {
        break;
      }
    }

    v7 += 24;
    if (v7 != i)
    {
      continue;
    }

    break;
  }
}

void sub_23EFF3CE0(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  sub_23EFF5304(a2, &v2);
}

void sub_23EFF3E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_23EF3AE8C(va1);
  sub_23EF50F44(va);
  _Unwind_Resume(a1);
}

void sub_23EFF3EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23EF50F44(va);
  _Unwind_Resume(a1);
}

void sub_23EFF3EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23EF50F44(va);
  _Unwind_Resume(a1);
}

void sub_23EFF3ED8(uint64_t a1, _WORD *a2)
{
  LOWORD(__p[0]) = 0;
  sub_23F2F51B0(a1, __p);
  v4 = LOWORD(__p[0]);
  *a2 = __p[0];
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (v4 != 3)
      {
        if (v4 == 4)
        {
          __p[1] = 0;
          v18 = 0;
          __p[0] = &__p[1];
          sub_23F2D21DC();
        }

        sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Foundation/FoundationIO/include/Kit/FoundationIO/DictionaryRefIO.h", 250, &unk_23F3091D6, 0, "invalid value type identifier", 0x1DuLL, sub_23F303DA4);
        abort();
      }

      v19 = 0uLL;
      v20 = 0;
      sub_23EFF3AB8(a1, &v19);
      __p[1] = 0;
      v18 = 0;
      __p[0] = 0;
      sub_23EFF0E98(__p, 0xAAAAAAAAAAAAAAABLL * ((*(&v19 + 1) - v19) >> 3));
      sub_23EFF4B38(v19, *(&v19 + 1), __p);
      *v14 = *__p;
      v15 = v18;
      sub_23EFF13F0();
    }

    LOBYTE(v16) = 0;
    sub_23F2F6BE4(a1, &v16);
    v8 = MEMORY[0x277CBED28];
    if (!v16)
    {
      v8 = MEMORY[0x277CBED10];
    }

    sub_23F2CB698(__p, *v8);
  }

  if (v4)
  {
    v19 = 0uLL;
    v20 = 0;
    ++*(a1 + 80);
    if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
    {
      v5 = 0;
      v6 = 0;
      LODWORD(v7) = 0;
      *(a1 + 132) = 1;
    }

    else
    {
      sub_23F2F7390(a1, __p);
      v9 = *(a1 + 104);
      v10 = v18;
      v20 = v18;
      v19 = *__p;
      *(a1 + 104) = v9 + 1;
      v7 = HIBYTE(v10);
      v5 = *(&v19 + 1);
      v6 = v19;
    }

    if ((v7 & 0x80u) == 0)
    {
      v11 = &v19;
    }

    else
    {
      v11 = v6;
    }

    if ((v7 & 0x80u) == 0)
    {
      v12 = v7;
    }

    else
    {
      v12 = v5;
    }

    v13 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v11, v12, 0x8000100u, 0);
    sub_23F064058(__p, v13);
  }

  LOBYTE(__p[0]) = 7;
  LOBYTE(__p[1]) = 7;
  operator new();
}

void sub_23EFF49EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23EF3AE8C(v9 - 64);
  sub_23EF3AE8C(&a9);
  _Unwind_Resume(a1);
}

void sub_23EFF4A08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, void *__p, uint64_t a18)
{
  sub_23EF3AE8C(&a13);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  a18 = __p;
  operator delete(__p);
  _Unwind_Resume(a1);
}

uint64_t sub_23EFF4B38(__int16 *a1, __int16 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = *a1;
    sub_23EFF1164(&v5, (a1 + 4));
  }

  return a3;
}

void sub_23EFF4C8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_23EF3AE8C(va1);
  sub_23EF50F44(va);
  _Unwind_Resume(a1);
}

void sub_23EFF4CA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF50F44(va);
  _Unwind_Resume(a1);
}

void sub_23EFF4CBC()
{
  v1[0] = 0;
  v1[1] = 0;
  v0 = v1;
  sub_23F2D21DC();
}

void sub_23EFF4E78(uint64_t a1)
{
  *__p = 0u;
  v11 = 0u;
  *v9 = 0u;
  sub_23EF667E0(a1, v9);
  *&v8 = 0xAAAAAAAAAAAAAAABLL * ((v11 - __p[1]) >> 3);
  sub_23F2F5EB0(a1, &v8);
  v2 = v11;
  v3 = 0xAAAAAAAAAAAAAAABLL * ((v11 - __p[1]) >> 3);
  v4 = v8 - v3;
  if (v8 <= v3)
  {
    if (v8 >= v3)
    {
      v6 = v11;
      v5 = __p[1];
      if (__p[1] == v11)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v6 = __p[1] + 24 * v8;
      if (v11 != v6)
      {
        do
        {
          v7 = *(v2 - 1);
          if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7, v4);
            std::__shared_weak_count::__release_weak(v7);
          }

          v2 -= 24;
        }

        while (v2 != v6);
      }

      *&v11 = v6;
      v5 = __p[1];
      if (__p[1] == v6)
      {
LABEL_15:
        sub_23F06A7F0(v9, &v8);
      }
    }
  }

  else
  {
    sub_23EFEF748(&__p[1], v4);
    v5 = __p[1];
    v6 = v11;
    if (__p[1] == v11)
    {
      goto LABEL_15;
    }
  }

  do
  {
    v12 = 1;
    sub_23F2F5830(a1, &v12);
    sub_23EFF5304(a1, v5, v12);
    v5 += 24;
  }

  while (v5 != v6);
  goto LABEL_15;
}

void sub_23EFF515C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EFE93AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFF5170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EFE93AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFF5184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EFE93AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFF5198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EFE93AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFF51AC(uint64_t a1, uint64_t *a2)
{
  v11 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  sub_23F2F5EB0(a1, &v11);
  v4 = a2[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
  v6 = v11 - v5;
  if (v11 > v5)
  {
    sub_23EFEF748(a2, v6);
    v9 = a2;
    j = *a2;
    i = v9[1];
    if (j == i)
    {
      return;
    }

    goto LABEL_14;
  }

  if (v11 >= v5)
  {
    i = a2[1];
    j = *a2;
    if (j == v4)
    {
      return;
    }

    goto LABEL_14;
  }

  for (i = *a2 + 24 * v11; v4 != i; v4 -= 24)
  {
    v10 = *(v4 - 8);
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10, v6);
      std::__shared_weak_count::__release_weak(v10);
    }
  }

  a2[1] = i;
  for (j = *a2; j != i; j += 24)
  {
LABEL_14:
    v12 = 1;
    sub_23F2F5830(a1, &v12);
    sub_23EFF5304(a1, j, v12);
  }
}

void sub_23EFF5304(uint64_t a1, _WORD *a2)
{
  LOWORD(v17) = 0;
  sub_23F2F51B0(a1, &v17);
  v4 = v17;
  *a2 = v17;
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (v4 != 3)
      {
        if (v4 == 4)
        {
          *(&v17 + 1) = 0;
          __p = 0;
          *&v17 = &v17 + 8;
          sub_23F2D21DC();
        }

        sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Foundation/FoundationIO/include/Kit/FoundationIO/DictionaryRefIO.h", 250, &unk_23F3091D6, 0, "invalid value type identifier", 0x1DuLL, sub_23F303DA4);
        abort();
      }

      v19 = 0uLL;
      v20 = 0;
      sub_23EFF51AC(a1, &v19);
      __p = 0;
      v17 = 0uLL;
      sub_23EFF0E98(&v17, 0xAAAAAAAAAAAAAAABLL * ((*(&v19 + 1) - v19) >> 3));
      sub_23EFF5E88(v19, *(&v19 + 1), &v17);
      *v14 = v17;
      v15 = __p;
      sub_23EFF13F0();
    }

    LOBYTE(v16) = 0;
    sub_23F2F6BE4(a1, &v16);
    v8 = MEMORY[0x277CBED28];
    if (!v16)
    {
      v8 = MEMORY[0x277CBED10];
    }

    sub_23F2CB698(&v17, *v8);
  }

  if (v4)
  {
    v19 = 0uLL;
    v20 = 0;
    ++*(a1 + 80);
    if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
    {
      v5 = 0;
      v6 = 0;
      LODWORD(v7) = 0;
      *(a1 + 132) = 1;
    }

    else
    {
      sub_23F2F7390(a1, &v17);
      v9 = *(a1 + 104);
      v10 = __p;
      v20 = __p;
      v19 = v17;
      *(a1 + 104) = v9 + 1;
      v7 = HIBYTE(v10);
      v5 = *(&v19 + 1);
      v6 = v19;
    }

    if ((v7 & 0x80u) == 0)
    {
      v11 = &v19;
    }

    else
    {
      v11 = v6;
    }

    if ((v7 & 0x80u) == 0)
    {
      v12 = v7;
    }

    else
    {
      v12 = v5;
    }

    v13 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v11, v12, 0x8000100u, 0);
    sub_23F064058(&v17, v13);
  }

  LOBYTE(v17) = 7;
  BYTE8(v17) = 7;
  operator new();
}

void sub_23EFF5D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, void *__p, uint64_t a18)
{
  sub_23EF3AE8C(&a13);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  a18 = __p;
  operator delete(__p);
  _Unwind_Resume(a1);
}

uint64_t sub_23EFF5E88(__int16 *a1, __int16 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = *a1;
    sub_23EFF1164(&v5, (a1 + 4));
  }

  return a3;
}

void sub_23EFF5FDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_23EF3AE8C(va1);
  sub_23EF50F44(va);
  _Unwind_Resume(a1);
}

void sub_23EFF5FF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF50F44(va);
  _Unwind_Resume(a1);
}

void sub_23EFF600C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[6];
  v4 = a2[7];
  v5 = v4 >= v3;
  v6 = v4 - v3;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 > 3)
  {
    v8 = *(a2[3] + v3);
    a2[6] = v3 + 4;
    if (v8 > 1)
    {
      sub_23F294FCC(a2);
      sub_23F2D21DC();
    }

    sub_23EFF61C4(a2, a3, v8);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_23EF35CC0(exception, "Not enough data to read");
  __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
}

void sub_23EFF61C4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 >= 2)
  {
    v4[0] = 0;
    v4[1] = 0;
    v3 = v4;
    sub_23F2D21DC();
  }

  sub_23EFF62EC();
}

void sub_23EFF646C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, char *a15)
{
  sub_23EF53700(&a14, a15);
  sub_23EF3AE8C(&a9);
  _Unwind_Resume(a1);
}

void sub_23EFF648C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_23EF3AE8C(&a11);
  sub_23EF3AE8C(&a9);
  _Unwind_Resume(a1);
}

void sub_23EFF64A8(void *a1)
{
  *__p = 0u;
  v21 = 0u;
  *v19 = 0u;
  sub_23EF68008(a1, v19);
  v3 = a1[6];
  v2 = a1[7];
  v4 = v2 >= v3;
  v5 = v2 - v3;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 > 7)
  {
    v6 = *(a1[3] + v3);
    a1[6] = v3 + 8;
    v7 = v21;
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v21 - __p[1]) >> 3);
    v9 = v6 - v8;
    if (v6 <= v8)
    {
      if (v6 >= v8)
      {
        v10 = v21;
      }

      else
      {
        v10 = __p[1] + 24 * v6;
        if (v21 != v10)
        {
          do
          {
            v11 = *(v7 - 1);
            if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v11->__on_zero_shared)(v11, v9);
              std::__shared_weak_count::__release_weak(v11);
            }

            v7 -= 24;
          }

          while (v7 != v10);
        }

        *&v21 = v10;
      }
    }

    else
    {
      sub_23EFEF748(&__p[1], v9);
      v10 = v21;
    }

    v12 = __p[1];
    if (__p[1] == v10)
    {
      sub_23F06B4DC(v19, &v18);
    }

    v13 = a1[6];
    v14 = a1[7];
    v4 = v14 >= v13;
    v15 = v14 - v13;
    if (!v4)
    {
      v15 = 0;
    }

    if (v15 > 3)
    {
      v16 = *(a1[3] + v13);
      a1[6] = v13 + 4;
      if (v16 > 1)
      {
        sub_23F294FCC(a1);
        sub_23EFF6D20(a1, v12);
      }

      sub_23EFF6B28(&v18, a1);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Not enough data to read");
  exception->__vftable = (MEMORY[0x277D828E8] + 16);
  __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
}

void sub_23EFF6840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11)
{
  __cxa_free_exception(v11);
  sub_23EFE93AC(&a11);
  _Unwind_Resume(a1);
}

void sub_23EFF6888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EFE93AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFF689C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EFE93AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFF68B0(void *a1, uint64_t *a2)
{
  v3 = a1[6];
  v2 = a1[7];
  v4 = v2 >= v3;
  v5 = v2 - v3;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read");
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  v8 = *(a1[3] + v3);
  a1[6] = v3 + 8;
  v9 = *a2;
  v10 = a2[1];
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *a2) >> 3);
  v12 = v8 - v11;
  if (v8 <= v11)
  {
    if (v8 >= v11)
    {
      i = v10;
      v13 = *a2;
    }

    else
    {
      for (i = v9 + 24 * v8; v10 != i; v10 -= 24)
      {
        v16 = *(v10 - 8);
        if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v16->__on_zero_shared)(v16, v12);
          std::__shared_weak_count::__release_weak(v16);
        }
      }

      a2[1] = i;
      v13 = *a2;
    }
  }

  else
  {
    sub_23EFEF748(a2, v12);
    v15 = a2;
    v13 = *a2;
    i = v15[1];
  }

  while (v13 != i)
  {
    sub_23EFF6A30(&v18, a1, v13);
    v13 += 24;
  }
}

uint64_t sub_23EFF6A30(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[6];
  v4 = a2[7];
  v5 = v4 >= v3;
  v6 = v4 - v3;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read");
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  v7 = *(a2[3] + v3);
  a2[6] = v3 + 4;
  if (v7 <= 1)
  {
    sub_23EFF6B28(&v14, a2);
  }

  sub_23F294FCC(a2);
  result = sub_23EFF6D20(a2, a3, 2);
  v11 = a2[12];
  v12 = a2[9];
  a2[6] = *(v11 - 8) + *(v12 - 8) + 8;
  a2[9] = v12 - 8;
  a2[12] = v11 - 8;
  return result;
}

void sub_23EFF6B28(uint64_t a1, void *a2)
{
  v3 = 0;
  v4 = 0;
  sub_23EFF81E8(a2, &v2);
}

void sub_23EFF6CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_23EF3AE8C(va1);
  sub_23EF50F44(va);
  _Unwind_Resume(a1);
}

void sub_23EFF6CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23EF50F44(va);
  _Unwind_Resume(a1);
}

void sub_23EFF6D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23EF50F44(va);
  _Unwind_Resume(a1);
}

void sub_23EFF6D20(void *a1, _WORD *a2)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = v3 - v2;
  if (v3 < v2)
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    v5 = a1[3];
    v6 = *(v5 + v2);
    v7 = v2 + 2;
    a1[6] = v2 + 2;
    *a2 = v6;
    if (v6 <= 1)
    {
      if (v6)
      {
        __p[0] = 0;
        __p[1] = 0;
        v18 = 0;
        sub_23F295150(a1, __p);
        if (SHIBYTE(v18) >= 0)
        {
          v8 = __p;
        }

        else
        {
          v8 = __p[0];
        }

        if (SHIBYTE(v18) >= 0)
        {
          v9 = HIBYTE(v18);
        }

        else
        {
          v9 = __p[1];
        }

        v10 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v8, v9, 0x8000100u, 0);
        sub_23F064058(v15, v10);
      }

      LOBYTE(__p[0]) = 7;
      LOBYTE(__p[1]) = 7;
      operator new();
    }

    if (v6 != 2)
    {
      if (v6 != 3)
      {
        if (v6 == 4)
        {
          __p[1] = 0;
          v18 = 0;
          __p[0] = &__p[1];
          sub_23F2D21DC();
        }

        sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Foundation/FoundationIO/include/Kit/FoundationIO/DictionaryRefIO.h", 250, &unk_23F3091D6, 0, "invalid value type identifier", 0x1DuLL, sub_23F303DA4);
        abort();
      }

      v15[0] = 0;
      v15[1] = 0;
      v16 = 0;
      sub_23EFF68B0(a1, v15);
      __p[1] = 0;
      v18 = 0;
      __p[0] = 0;
      sub_23EFF0E98(__p, 0xAAAAAAAAAAAAAAABLL * ((v15[1] - v15[0]) >> 3));
      sub_23EFF78AC(v15[0], v15[1], __p);
      sub_23EFF13F0();
    }

    if (v3 > v7)
    {
      v11 = *(v5 + v7);
      v12 = MEMORY[0x277CBED28];
      a1[6] = v2 + 3;
      v13 = MEMORY[0x277CBED10];
      if (v11)
      {
        v13 = v12;
      }

      sub_23F2CB698(__p, *v13);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_23EF35CC0(exception, "Not enough data to read");
  __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
}

void sub_23EFF7738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_free_exception(v9);
  sub_23EF3AE8C(&a9);
  _Unwind_Resume(a1);
}

void sub_23EFF7768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  sub_23EF3AE8C(&a9);
  _Unwind_Resume(a1);
}

void sub_23EFF7784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_23EF3AE8C(&a17);
  sub_23EFF0CC0(&a9);
  sub_23EFE94A8(&a13);
  _Unwind_Resume(a1);
}

void sub_23EFF77D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, void *__p, uint64_t a22)
{
  sub_23EF3AE8C(&a17);
  if (__p)
  {
    a22 = __p;
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x23EFF7890);
}

void sub_23EFF7854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EFE94A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23EFF78AC(__int16 *a1, __int16 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = *a1;
    sub_23EFF1164(&v5, (a1 + 4));
  }

  return a3;
}

void sub_23EFF7A00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_23EF3AE8C(va1);
  sub_23EF50F44(va);
  _Unwind_Resume(a1);
}

void sub_23EFF7A1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF50F44(va);
  _Unwind_Resume(a1);
}

void sub_23EFF7A30()
{
  v1[0] = 0;
  v1[1] = 0;
  v0 = v1;
  sub_23F2D21DC();
}

void sub_23EFF7BEC(void *a1)
{
  *__p = 0u;
  v21 = 0u;
  *v19 = 0u;
  sub_23EF68008(a1, v19);
  v3 = a1[6];
  v2 = a1[7];
  v4 = v2 >= v3;
  v5 = v2 - v3;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 > 7)
  {
    v6 = *(a1[3] + v3);
    a1[6] = v3 + 8;
    v7 = v21;
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v21 - __p[1]) >> 3);
    v9 = v6 - v8;
    if (v6 > v8)
    {
      sub_23EFEF748(&__p[1], v9);
      v10 = __p[1];
      v11 = v21;
      if (__p[1] != v21)
      {
        goto LABEL_17;
      }

      goto LABEL_21;
    }

    if (v6 >= v8)
    {
      v11 = v21;
      v10 = __p[1];
      if (__p[1] != v21)
      {
        goto LABEL_17;
      }

LABEL_21:
      sub_23F06A7F0(v19, &v18);
    }

    v11 = __p[1] + 24 * v6;
    if (v21 != v11)
    {
      do
      {
        v12 = *(v7 - 1);
        if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v12->__on_zero_shared)(v12, v9);
          std::__shared_weak_count::__release_weak(v12);
        }

        v7 -= 24;
      }

      while (v7 != v11);
    }

    *&v21 = v11;
    v10 = __p[1];
    if (__p[1] == v11)
    {
      goto LABEL_21;
    }

    while (1)
    {
LABEL_17:
      v13 = a1[6];
      v14 = a1[7];
      v4 = v14 >= v13;
      v15 = v14 - v13;
      if (!v4)
      {
        v15 = 0;
      }

      if (v15 <= 3)
      {
        break;
      }

      v16 = *(a1[3] + v13);
      a1[6] = v13 + 4;
      sub_23EFF81E8(a1, v10, v16);
      v10 += 24;
      if (v10 == v11)
      {
        goto LABEL_21;
      }
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Not enough data to read");
  exception->__vftable = (MEMORY[0x277D828E8] + 16);
  __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
}

void sub_23EFF7F50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11)
{
  __cxa_free_exception(v11);
  sub_23EFE93AC(&a11);
  _Unwind_Resume(a1);
}

void sub_23EFF7F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EFE93AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFF7FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EFE93AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFF7FC0(void *a1, uint64_t *a2)
{
  v3 = a1[6];
  v2 = a1[7];
  v4 = v2 >= v3;
  v5 = v2 - v3;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read");
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  v8 = *(a1[3] + v3);
  a1[6] = v3 + 8;
  v9 = *a2;
  v10 = a2[1];
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *a2) >> 3);
  v12 = v8 - v11;
  if (v8 <= v11)
  {
    if (v8 >= v11)
    {
      i = v10;
      v13 = *a2;
    }

    else
    {
      for (i = v9 + 24 * v8; v10 != i; v10 -= 24)
      {
        v16 = *(v10 - 8);
        if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v16->__on_zero_shared)(v16, v12);
          std::__shared_weak_count::__release_weak(v16);
        }
      }

      a2[1] = i;
      v13 = *a2;
    }
  }

  else
  {
    sub_23EFEF748(a2, v12);
    v15 = a2;
    v13 = *a2;
    i = v15[1];
  }

  while (v13 != i)
  {
    sub_23EFF8140(&v18, a1, v13);
    v13 += 24;
  }
}

uint64_t sub_23EFF8140(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2[6];
  v3 = a2[7];
  v5 = v3 >= v4;
  v6 = v3 - v4;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read");
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  v7 = *(a2[3] + v4);
  a2[6] = v4 + 4;

  return sub_23EFF81E8(a2, a3, v7);
}

void sub_23EFF81E8(void *a1, _WORD *a2)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = v3 - v2;
  if (v3 < v2)
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    v5 = a1[3];
    v6 = *(v5 + v2);
    v7 = v2 + 2;
    a1[6] = v2 + 2;
    *a2 = v6;
    if (v6 <= 1)
    {
      if (v6)
      {
        __p[0] = 0;
        __p[1] = 0;
        v18 = 0;
        sub_23F295150(a1, __p);
        if (SHIBYTE(v18) >= 0)
        {
          v8 = __p;
        }

        else
        {
          v8 = __p[0];
        }

        if (SHIBYTE(v18) >= 0)
        {
          v9 = HIBYTE(v18);
        }

        else
        {
          v9 = __p[1];
        }

        v10 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v8, v9, 0x8000100u, 0);
        sub_23F064058(v15, v10);
      }

      LOBYTE(__p[0]) = 7;
      LOBYTE(__p[1]) = 7;
      operator new();
    }

    if (v6 != 2)
    {
      if (v6 != 3)
      {
        if (v6 == 4)
        {
          __p[1] = 0;
          v18 = 0;
          __p[0] = &__p[1];
          sub_23F2D21DC();
        }

        sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Foundation/FoundationIO/include/Kit/FoundationIO/DictionaryRefIO.h", 250, &unk_23F3091D6, 0, "invalid value type identifier", 0x1DuLL, sub_23F303DA4);
        abort();
      }

      v15[0] = 0;
      v15[1] = 0;
      v16 = 0;
      sub_23EFF7FC0(a1, v15);
      __p[1] = 0;
      v18 = 0;
      __p[0] = 0;
      sub_23EFF0E98(__p, 0xAAAAAAAAAAAAAAABLL * ((v15[1] - v15[0]) >> 3));
      sub_23EFF8D24(v15[0], v15[1], __p);
      sub_23EFF13F0();
    }

    if (v3 > v7)
    {
      v11 = *(v5 + v7);
      v12 = MEMORY[0x277CBED28];
      a1[6] = v2 + 3;
      v13 = MEMORY[0x277CBED10];
      if (v11)
      {
        v13 = v12;
      }

      sub_23F2CB698(__p, *v13);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_23EF35CC0(exception, "Not enough data to read");
  __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
}

void sub_23EFF8BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_free_exception(v9);
  sub_23EF3AE8C(&a9);
  _Unwind_Resume(a1);
}

void sub_23EFF8BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  sub_23EF3AE8C(&a9);
  _Unwind_Resume(a1);
}

void sub_23EFF8BFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_23EF3AE8C(&a17);
  sub_23EFF0CC0(&a9);
  sub_23EFE94A8(&a13);
  _Unwind_Resume(a1);
}

void sub_23EFF8C4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, void *__p, uint64_t a22)
{
  sub_23EF3AE8C(&a17);
  if (__p)
  {
    a22 = __p;
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x23EFF8D08);
}

void sub_23EFF8CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EFE94A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23EFF8D24(__int16 *a1, __int16 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = *a1;
    sub_23EFF1164(&v5, (a1 + 4));
  }

  return a3;
}

void sub_23EFF8E78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_23EF3AE8C(va1);
  sub_23EF50F44(va);
  _Unwind_Resume(a1);
}

void sub_23EFF8E94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF50F44(va);
  _Unwind_Resume(a1);
}

void sub_23EFF8EA8(int *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = *a1;
  if (*a1 == 2)
  {
    if (a4 < 2)
    {
      goto LABEL_8;
    }

    v8 = a4;
    v11 = 2;
    (*(*a2 + 104))(a2, &v11);
    if (v11 >= 3)
    {
      v10 = v11;
      if ((atomic_load_explicit(&qword_27E394438, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394438))
      {
        sub_23EFF9184();
      }

      sub_23F2FF068(&stru_27E394420, v10, 2u);
    }

    v6 = *a1;
    a4 = v8;
  }

  if (a4 >= 2 && v6 > 0)
  {
    (*(*a2 + 16))(a2);
    sub_23EFF905C(a2, a3, 2u);
  }

LABEL_8:
  if (a4 >= 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = a4;
  }

  sub_23EFF905C(a2, a3, v9);
}

void sub_23EFF905C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 >= 2)
  {
    v4[0] = 0;
    v4[1] = 0;
    v3 = v4;
    sub_23F2D21DC();
  }

  sub_23EFF928C();
}

void sub_23EFF925C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EFF940C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, char *a15)
{
  sub_23EF53700(&a14, a15);
  sub_23EF3AE8C(&a9);
  _Unwind_Resume(a1);
}

void sub_23EFF942C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_23EF3AE8C(&a11);
  sub_23EF3AE8C(&a9);
  _Unwind_Resume(a1);
}

void sub_23EFF9448(void *a1)
{
  *__p = 0u;
  v9 = 0u;
  *v7 = 0u;
  sub_23EF6A390(a1, v7);
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v9 - __p[1]) >> 3);
  (*(*a1 + 120))(a1, &v11);
  v2 = v9;
  v3 = 0xAAAAAAAAAAAAAAABLL * ((v9 - __p[1]) >> 3);
  v4 = v11 - v3;
  if (v11 <= v3)
  {
    if (v11 >= v3)
    {
      v5 = v9;
    }

    else
    {
      v5 = __p[1] + 24 * v11;
      if (v9 != v5)
      {
        do
        {
          v6 = *(v2 - 1);
          if (v6)
          {
            if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v6->__on_zero_shared)(v6, v4);
              std::__shared_weak_count::__release_weak(v6);
            }
          }

          v2 -= 24;
        }

        while (v2 != v5);
      }

      *&v9 = v5;
    }
  }

  else
  {
    sub_23EFEF748(&__p[1], v4);
    v5 = v9;
  }

  v10[0] = __p[1];
  v10[1] = 0xAAAAAAAAAAAAAAABLL * ((v5 - __p[1]) >> 3);
  sub_23EFF9940(a1, v10);
  sub_23F06B4DC(v7, v10);
}

void sub_23EFF9760(void *a1, uint64_t *a2)
{
  v12 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  (*(*a1 + 120))(a1, &v12);
  v4 = a2[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
  v6 = v12 - v5;
  if (v12 > v5)
  {
    sub_23EFEF748(a2, v6);
    v9 = a2;
    j = *a2;
    i = v9[1];
    if (j == i)
    {
      return;
    }

    goto LABEL_17;
  }

  if (v12 >= v5)
  {
    i = a2[1];
    j = *a2;
    if (j == v4)
    {
      return;
    }

    goto LABEL_17;
  }

  for (i = *a2 + 24 * v12; v4 != i; v4 -= 24)
  {
    v10 = *(v4 - 8);
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10, v6);
      std::__shared_weak_count::__release_weak(v10);
    }
  }

  a2[1] = i;
  for (j = *a2; j != i; j += 24)
  {
LABEL_17:
    v11 = *a1;
    *v13 = a1[1];
    v14 = 2;
    (*(v11 + 104))(a1, &v14);
    if (v13[0] >= 1)
    {
      sub_23EFF9C04(v13, a1, j, v14);
    }

    else
    {
      if (v14 < 2)
      {
        sub_23EFF9EE0(&v14, a1);
      }

      sub_23EFFA0D8(a1, j, v14);
    }
  }
}

void *sub_23EFF9940(void *result, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v2 = result;
    v3 = *a2;
    v4 = *result;
    v6 = result[1];
    LODWORD(v7[0]) = 2;
    (*(v4 + 104))(result, v7);
    v5 = v7[0];
    v8 = v7[0];
    v7[0] = v2;
    v7[1] = v3;
    v7[2] = &v6;
    v7[3] = &v8;
    if (v6 < 1)
    {
      if (v5 >= 2)
      {
        sub_23EFFA0D8(v2, v3);
      }

      sub_23EFF9EE0(&v9, v2);
    }

    sub_23EFF9A34(v7);
  }

  return result;
}

void sub_23EFF9A34(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = **(a1 + 24);
  v5 = *v3;
  if (*v3 == 2)
  {
    if (v4 < 2)
    {
      goto LABEL_11;
    }

    v9 = 2;
    (*(*v1 + 104))(v1, &v9);
    if (v9 >= 3)
    {
      v7 = v9;
      if ((atomic_load_explicit(&qword_27E394458, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394458))
      {
        sub_23EFF9DDC();
      }

      sub_23F2FF068(&stru_27E394440, v7, 2u);
    }

    v5 = *v3;
  }

  if (v5 >= 1 && v4 > 1)
  {
    (*(*v1 + 16))(v1);
    sub_23EFFA0D8(v1, v2);
  }

  if (v4 > 1)
  {
    sub_23EFFA0D8(v1, v2);
  }

LABEL_11:
  sub_23EFF9EE0(&v8, v1);
}

uint64_t sub_23EFF9C04(int *a1, _BYTE *a2, uint64_t a3, unsigned int a4)
{
  v6 = *a1;
  if (*a1 == 2)
  {
    if (a4 < 2)
    {
      goto LABEL_10;
    }

    v8 = a4;
    v11 = 2;
    (*(*a2 + 104))(a2, &v11);
    if (v11 >= 3)
    {
      v10 = v11;
      if ((atomic_load_explicit(&qword_27E394458, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394458))
      {
        sub_23EFF9DDC();
      }

      sub_23F2FF068(&stru_27E394440, v10, 2u);
    }

    v6 = *a1;
    a4 = v8;
  }

  if (a4 >= 2 && v6 > 0)
  {
    (*(*a2 + 16))(a2);
    sub_23EFFA0D8(a2, a3, 2);
    return (*(*a2 + 24))(a2);
  }

  if (a4 <= 1)
  {
LABEL_10:
    sub_23EFF9EE0(&v12, a2);
  }

  return sub_23EFFA0D8(a2, a3, 2);
}

void sub_23EFF9EB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EFF9EE0(uint64_t a1, _BYTE *a2)
{
  v3 = 0;
  v4 = 0;
  sub_23EFFB850(a2, &v2);
}

void sub_23EFFA094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_23EF3AE8C(va1);
  sub_23EF50F44(va);
  _Unwind_Resume(a1);
}

void sub_23EFFA0B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23EF50F44(va);
  _Unwind_Resume(a1);
}

void sub_23EFFA0C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23EF50F44(va);
  _Unwind_Resume(a1);
}

void sub_23EFFA0D8(_BYTE *a1, _WORD *a2)
{
  __p[0] = a2;
  sub_23EFFABB4(a1, __p);
  v4 = *a2;
  if (v4 <= 1)
  {
    if (!*a2)
    {
      LOBYTE(__p[0]) = 7;
      LOBYTE(__p[1]) = 7;
      operator new();
    }

    if (v4 == 1)
    {
      __p[0] = 0;
      __p[1] = 0;
      v13 = 0;
      (*(*a1 + 144))(a1, __p);
      if (SHIBYTE(v13) >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      if (SHIBYTE(v13) >= 0)
      {
        v6 = HIBYTE(v13);
      }

      else
      {
        v6 = __p[1];
      }

      v7 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v5, v6, 0x8000100u, 0);
      sub_23F064058(v9, v7);
    }
  }

  else
  {
    switch(v4)
    {
      case 2u:
        LOBYTE(v11) = 0;
        (*(*a1 + 32))(a1, &v11);
        v8 = MEMORY[0x277CBED28];
        if (!v11)
        {
          v8 = MEMORY[0x277CBED10];
        }

        sub_23F2CB698(__p, *v8);
      case 3u:
        v9[0] = 0;
        v9[1] = 0;
        v10 = 0;
        sub_23EFF9760(a1, v9);
        __p[1] = 0;
        v13 = 0;
        __p[0] = 0;
        sub_23EFF0E98(__p, 0xAAAAAAAAAAAAAAABLL * ((v9[1] - v9[0]) >> 3));
        sub_23EFFAD2C(v9[0], v9[1], __p);
        sub_23EFF13F0();
      case 4u:
        __p[1] = 0;
        v13 = 0;
        __p[0] = &__p[1];
        sub_23F2D21DC();
    }
  }

  sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Foundation/FoundationIO/include/Kit/FoundationIO/DictionaryRefIO.h", 250, &unk_23F3091D6, 0, "invalid value type identifier", 0x1DuLL, sub_23F303DA4);
  abort();
}

void sub_23EFFAA84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  sub_23EF3AE8C(&a9);
  _Unwind_Resume(a1);
}

void sub_23EFFAAA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_23EF3AE8C(&a17);
  sub_23EFF0CC0(&a9);
  sub_23EFE94A8(&a13);
  _Unwind_Resume(a1);
}

void sub_23EFFAAF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, void *__p, uint64_t a22)
{
  sub_23EF3AE8C(&a17);
  if (__p)
  {
    a22 = __p;
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x23EFFAB98);
}

void sub_23EFFAB5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EFE94A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23EFFABB4(_BYTE *a1, _WORD **a2)
{
  if ((a1[12] & 2) != 0)
  {
    memset(__p, 0, sizeof(__p));
    (*(*a1 + 144))(a1, __p);
    operator new();
  }

  LOWORD(__p[0]) = 0;
  result = (*(*a1 + 96))(a1, __p);
  **a2 = __p[0];
  return result;
}

void sub_23EFFACD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  a17 = 0;
  sub_23F302A54(&a17, v17);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_23EFFAD2C(__int16 *a1, __int16 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = *a1;
    sub_23EFF1164(&v5, (a1 + 4));
  }

  return a3;
}

void sub_23EFFAE80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_23EF3AE8C(va1);
  sub_23EF50F44(va);
  _Unwind_Resume(a1);
}

void sub_23EFFAE9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF50F44(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23EFFAEB0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1[3];
  v5 = *v3;
  if (*v3 == 2)
  {
    if (v4 < 2)
    {
      goto LABEL_11;
    }

    v9 = 2;
    (*(*v1 + 104))(v1, &v9);
    if (v9 >= 3)
    {
      v8 = v9;
      if ((atomic_load_explicit(&qword_27E394478, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394478))
      {
        sub_23EFFB080();
      }

      sub_23F2FF068(&stru_27E394460, v8, 2u);
    }

    v5 = *v3;
  }

  if (v5 < 1 || v4 <= 1)
  {
    if (v4 > 1)
    {
      return sub_23EFF9448(v1, v2, 2);
    }

LABEL_11:
    sub_23EFFB188();
  }

  (*(*v1 + 16))(v1);
  sub_23EFF9448(v1, v2, 2);
  return (*(*v1 + 24))(v1);
}

void sub_23EFFB158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EFFB188()
{
  v1[0] = 0;
  v1[1] = 0;
  v0 = v1;
  sub_23F2D21DC();
}

void sub_23EFFB344(uint64_t a1)
{
  *__p = 0u;
  v11 = 0u;
  *v9 = 0u;
  sub_23EF6A390(a1, v9);
  *&v8 = 0xAAAAAAAAAAAAAAABLL * ((v11 - __p[1]) >> 3);
  (*(*a1 + 120))(a1, &v8);
  v2 = v11;
  v3 = 0xAAAAAAAAAAAAAAABLL * ((v11 - __p[1]) >> 3);
  v4 = v8 - v3;
  if (v8 <= v3)
  {
    if (v8 >= v3)
    {
      v6 = v11;
      v5 = __p[1];
      if (v11 == __p[1])
      {
        goto LABEL_15;
      }
    }

    else
    {
      v6 = __p[1] + 24 * v8;
      if (v11 != v6)
      {
        do
        {
          v7 = *(v2 - 1);
          if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7, v4);
            std::__shared_weak_count::__release_weak(v7);
          }

          v2 -= 24;
        }

        while (v2 != v6);
      }

      *&v11 = v6;
      v5 = __p[1];
      if (v6 == __p[1])
      {
LABEL_15:
        sub_23F06A7F0(v9, &v8);
      }
    }
  }

  else
  {
    sub_23EFEF748(&__p[1], v4);
    v5 = __p[1];
    v6 = v11;
    if (v11 == __p[1])
    {
      goto LABEL_15;
    }
  }

  do
  {
    v12 = 1;
    (*(*a1 + 104))(a1, &v12);
    sub_23EFFB850(a1, v5, v12);
    v5 += 24;
  }

  while (v5 != v6);
  goto LABEL_15;
}

void sub_23EFFB668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EFE93AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFFB67C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EFE93AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFFB690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EFE93AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFFB6A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EFE93AC(va);
  _Unwind_Resume(a1);
}

void sub_23EFFB6B8(uint64_t a1, uint64_t *a2)
{
  v11 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  (*(*a1 + 120))(a1, &v11);
  v4 = a2[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
  v6 = v11 - v5;
  if (v11 > v5)
  {
    sub_23EFEF748(a2, v6);
    v9 = a2;
    j = *a2;
    i = v9[1];
    if (j == i)
    {
      return;
    }

    goto LABEL_14;
  }

  if (v11 >= v5)
  {
    i = a2[1];
    j = *a2;
    if (j == v4)
    {
      return;
    }

    goto LABEL_14;
  }

  for (i = *a2 + 24 * v11; v4 != i; v4 -= 24)
  {
    v10 = *(v4 - 8);
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10, v6);
      std::__shared_weak_count::__release_weak(v10);
    }
  }

  a2[1] = i;
  for (j = *a2; j != i; j += 24)
  {
LABEL_14:
    v12 = 1;
    (*(*a1 + 104))(a1, &v12);
    sub_23EFFB850(a1, j, v12);
  }
}

void sub_23EFFB850(_BYTE *a1, _WORD *a2)
{
  __p[0] = a2;
  sub_23EFFABB4(a1, __p);
  v4 = *a2;
  if (v4 <= 1)
  {
    if (!*a2)
    {
      LOBYTE(__p[0]) = 7;
      LOBYTE(__p[1]) = 7;
      operator new();
    }

    if (v4 == 1)
    {
      __p[0] = 0;
      __p[1] = 0;
      v13 = 0;
      (*(*a1 + 144))(a1, __p);
      if (SHIBYTE(v13) >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      if (SHIBYTE(v13) >= 0)
      {
        v6 = HIBYTE(v13);
      }

      else
      {
        v6 = __p[1];
      }

      v7 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v5, v6, 0x8000100u, 0);
      sub_23F064058(v9, v7);
    }
  }

  else
  {
    switch(v4)
    {
      case 2u:
        LOBYTE(v11) = 0;
        (*(*a1 + 32))(a1, &v11);
        v8 = MEMORY[0x277CBED28];
        if (!v11)
        {
          v8 = MEMORY[0x277CBED10];
        }

        sub_23F2CB698(__p, *v8);
      case 3u:
        v9[0] = 0;
        v9[1] = 0;
        v10 = 0;
        sub_23EFFB6B8(a1, v9);
        __p[1] = 0;
        v13 = 0;
        __p[0] = 0;
        sub_23EFF0E98(__p, 0xAAAAAAAAAAAAAAABLL * ((v9[1] - v9[0]) >> 3));
        sub_23EFFC2DC(v9[0], v9[1], __p);
        sub_23EFF13F0();
      case 4u:
        __p[1] = 0;
        v13 = 0;
        __p[0] = &__p[1];
        sub_23F2D21DC();
    }
  }

  sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Foundation/FoundationIO/include/Kit/FoundationIO/DictionaryRefIO.h", 250, &unk_23F3091D6, 0, "invalid value type identifier", 0x1DuLL, sub_23F303DA4);
  abort();
}

void sub_23EFFC1AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  sub_23EF3AE8C(&a9);
  _Unwind_Resume(a1);
}

void sub_23EFFC1C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_23EF3AE8C(&a17);
  sub_23EFF0CC0(&a9);
  sub_23EFE94A8(&a13);
  _Unwind_Resume(a1);
}

void sub_23EFFC218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, void *__p, uint64_t a22)
{
  sub_23EF3AE8C(&a17);
  if (__p)
  {
    a22 = __p;
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x23EFFC2C0);
}

void sub_23EFFC284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EFE94A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23EFFC2DC(__int16 *a1, __int16 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = *a1;
    sub_23EFF1164(&v5, (a1 + 4));
  }

  return a3;
}

void sub_23EFFC430(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_23EF3AE8C(va1);
  sub_23EF50F44(va);
  _Unwind_Resume(a1);
}

void sub_23EFFC44C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF50F44(va);
  _Unwind_Resume(a1);
}

void sub_23EFFC460(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v7[25] = *MEMORY[0x277D85DE8];
  v3 = a2[1];
  v4 = *a2;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 1);
  v6 = *a3;
  sub_23EF432A8(v7, a3 + 1);
  operator new();
}

void sub_23EFFC8AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(*v9 + 8))(v9);
  sub_23EFFE024(&a9);
  _Unwind_Resume(a1);
}

void *sub_23EFFC910(void *a1)
{
  *a1 = &unk_28517B0C8;
  sub_23EF44860((a1 + 8));
  result = a1;
  a1[1] = &unk_28517B110;
  v3 = a1[3];
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_23EFFC9D0(void *a1)
{
  *a1 = &unk_28517B0C8;
  sub_23EF44860((a1 + 8));
  a1[1] = &unk_28517B110;
  v2 = a1[3];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x245CACD00);
}

void sub_23EFFCAB4(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E3944D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3944D8))
    {
      sub_23EFFDD58(&stru_27E3944C0);
      __cxa_guard_release(&qword_27E3944D8);
    }
  }

  (*(*(a1 + 8) + 24))(__p, a1 + 8);
  sub_23EF44334(&stru_27E3944C0, "{", __p, ",");
}

void sub_23EFFCBB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EFFCBD0(uint64_t a1@<X8>)
{
  *(a1 + 23) = 8;
  strcpy(a1, "cv3d.viz");
  *(a1 + 24) = 9;
}

void *sub_23EFFCC4C(void *result)
{
  *result = &unk_28517B110;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void *sub_23EFFCCE0(void *a1)
{
  *a1 = &unk_28517B0C8;
  sub_23EF44860((a1 + 8));
  result = a1;
  a1[1] = &unk_28517B110;
  v3 = a1[3];
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_23EFFCDA0(void *a1)
{
  *a1 = &unk_28517B0C8;
  sub_23EF44860((a1 + 8));
  a1[1] = &unk_28517B110;
  v2 = a1[3];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x245CACD00);
}

void sub_23EFFCE74()
{
  if ((atomic_load_explicit(&qword_27E3944B8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3944B8))
    {
      sub_23EFFDAE0();
    }
  }

  sub_23EFFD594(&xmmword_27E3944A0, "{");
}

void sub_23EFFCF28(uint64_t a1@<X8>)
{
  *(a1 + 23) = 15;
  strcpy(a1, "unknown_package");
  *(a1 + 24) = 0;
}

void sub_23EFFCF54(void *a1)
{
  *a1 = &unk_28517B110;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23EFFCFFC(char **a1, char **lpsrc)
{
  v4 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28517BF90, &unk_28517B130, 0);
  if (result)
  {
    if (a1 == lpsrc)
    {
      return 1;
    }

    else
    {
      v6 = a1[4];
      if (v6 == *(result + 32))
      {
        v7 = result;
        result = 1;
        if (v6)
        {
          v8 = a1[3];
          v9 = *(v7 + 24);
          if (v8 != v9)
          {
            v10 = v6 - 1;
            do
            {
              v11 = v10;
              v12 = *v8;
              v13 = *v9;
              result = v12 == v13;
              if (v12 != v13)
              {
                break;
              }

              ++v8;
              ++v9;
              v10 = v11 - 1;
            }

            while (v11);
          }
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_23EFFD0E8()
{
  if ((atomic_load_explicit(&qword_27E394498, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394498))
  {
    sub_23F302BD0("cv3d::kit::con::Blob]", 0x14uLL, &xmmword_27E394480);
    __cxa_guard_release(&qword_27E394498);
  }

  sub_23EFFD19C(&xmmword_27E394480, "{");
}

void sub_23EFFD19C(__int128 *a1, uint64_t a2)
{
  v5 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_23EF34EA4(&v3, *a1, *(a1 + 1));
  }

  else
  {
    v3 = *a1;
    v4 = *(a1 + 2);
  }

  v5 = 1;
  v6 = &v3;
  v7 = a2;
  v8[0] = &v3;
  v8[1] = a2;
  v8[2] = a2;
  sub_23EF4248C(v8, &v3);
  sub_23EFFD348();
}

void sub_23EFFD2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EFFD2F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EFFD30C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EFFD320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EFFD334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EFFD550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EFFD594(__int128 *a1, uint64_t a2)
{
  v5 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_23EF34EA4(&v3, *a1, *(a1 + 1));
  }

  else
  {
    v3 = *a1;
    v4 = *(a1 + 2);
  }

  v5 = 1;
  v6 = &v3;
  v7 = a2;
  v8[0] = &v3;
  v8[1] = a2;
  v8[2] = a2;
  sub_23EF4248C(v8, &v3);
  sub_23EFFD7C4();
}

void sub_23EFFD734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EFFD74C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EFFD760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EFFD774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EFFD788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EFFD79C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EFFD7B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EFFDA58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  __cxa_guard_abort(&qword_27E394498);
  v23 = *(v21 - 56);
  *(v21 - 56) = 0;
  if (!v23)
  {
    _Unwind_Resume(a1);
  }

  sub_23F302A54(v21 - 56, v23);
  _Unwind_Resume(a1);
}

void sub_23EFFDBB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EFFDBE4(const void **a1@<X0>, std::string *a2@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  *(&__p.__r_.__value_.__s + 23) = 20;
  strcpy(&__p, "cv3d::kit::con::Blob");
  sub_23F301470(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_23EF42150(v9, v11, 1uLL);
  sub_23F302CF4(a1, v9, a2);
  v4 = v9[0];
  if (v9[0])
  {
    v5 = v9[1];
    v6 = v9[0];
    if (v9[1] != v9[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v9[0];
    }

    v9[1] = v4;
    operator delete(v6);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23EFFDD18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3291C(va);
  if (*(v2 - 25) < 0)
  {
    operator delete(*(v2 - 48));
  }

  _Unwind_Resume(a1);
}

void sub_23EFFDD58(std::string *a1@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  HIBYTE(v9[2]) = 16;
  strcpy(v9, "viz::PackageData");
  *(&__p.__r_.__value_.__s + 23) = 20;
  strcpy(&__p, "cv3d::kit::con::Blob");
  sub_23F301470(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v14 = 12;
  strcpy(v13, "viz::Package");
  sub_23F302E84("9U]", 2, &v15);
  v17 = 4;
  strcpy(v16, "void");
  sub_23EF42150(v8, v11, 4uLL);
  sub_23F302CF4(v9, v8, a1);
  v2 = v8[0];
  if (v8[0])
  {
    v3 = v8[1];
    v4 = v8[0];
    if (v8[1] != v8[0])
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = v8[0];
    }

    v8[1] = v2;
    operator delete(v4);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_13:
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_20;
    }
  }

  else if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_13;
  }

  operator delete(v15.__r_.__value_.__l.__data_);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_14:
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_21:
    operator delete(v11[0]);
    if ((SHIBYTE(v9[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_22:
    operator delete(v9[0]);
    v7 = *MEMORY[0x277D85DE8];
    return;
  }

LABEL_20:
  operator delete(v13[0]);
  if (v12 < 0)
  {
    goto LABEL_21;
  }

LABEL_15:
  if (SHIBYTE(v9[2]) < 0)
  {
    goto LABEL_22;
  }

LABEL_16:
  v6 = *MEMORY[0x277D85DE8];
}

void sub_23EFFDF74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  sub_23EF3291C(&a10);
  if (a49 < 0)
  {
    operator delete(__p);
    if ((a43 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a37 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a43 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a38);
  if ((a37 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a31 & 0x80000000) == 0)
    {
LABEL_10:
      if (a18 < 0)
      {
        operator delete(a13);
      }

      _Unwind_Resume(a1);
    }

LABEL_9:
    operator delete(a26);
    goto LABEL_10;
  }

LABEL_8:
  operator delete(a32);
  if ((a31 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void *sub_23EFFE024(void *a1)
{
  *a1 = &unk_28517B0C8;
  sub_23EF44860((a1 + 8));
  result = a1;
  a1[1] = &unk_28517B110;
  v3 = a1[3];
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_23EFFE0E4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v15 = a2[1];
  v4 = a2[2];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v16 = *(a2 + 3);
  v5 = *(a1 + 40);
  if (*v5 > 1u)
  {
    v8 = (a1 + 88);
    v6 = a1 + 72;
    v9 = (a1 + 80);
    if ((*(a1 + 88) & 1) != 0 && *(a1 + 80) == 7 && **v6 == *"version" && *(*v6 + 3) == *"sion")
    {
      goto LABEL_13;
    }
  }

  else
  {
    *(a1 + 72) = "byte_size";
    v6 = a1 + 72;
    v8 = (a1 + 88);
    v7 = *(a1 + 88);
    *(a1 + 80) = 9;
    v9 = (a1 + 80);
    if ((v7 & 1) == 0)
    {
      *v8 = 1;
    }
  }

  LOBYTE(v17) = 6;
  *(&v17 + 1) = v3;
  v11 = sub_23F2E72C0(a1);
  v12 = *v11;
  *v11 = 6;
  LOBYTE(v17) = v12;
  v13 = v11[1];
  v11[1] = *(&v17 + 1);
  *(&v17 + 1) = v13;
  sub_23F0655DC(&v17 + 1, v12);
  v5 = *(a1 + 40);
LABEL_13:
  v17 = v16;
  if (*v5 <= 1u)
  {
    v14 = *v8;
    *v6 = "bytes";
    *v9 = 5;
    if ((v14 & 1) == 0)
    {
      *v8 = 1;
    }
  }

  sub_23F2E76F4(a1, &v17);
}

void sub_23EFFE2A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23F0655DC((v2 + 8), 6);
  sub_23EF50F44(va);
  _Unwind_Resume(a1);
}

void sub_23EFFE2C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF50F44(va);
  _Unwind_Resume(a1);
}

void sub_23EFFE2D4(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 16);
  v8 = *(a2 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 + 24);
  v6 = *(a1 + 24);
  if (*(v6 + 40) == 1)
  {
    v12[0] = (v6 + 16);
    sub_23F2FDC5C(v12, v4);
  }

  else
  {
    sub_23F2FDF70((v6 + 8));
  }

  v10 = v9;
  v7 = *(a1 + 24);
  if (*(v7 + 40) == 1)
  {
    v11 = (v7 + 16);
    LODWORD(v12[0]) = DWORD2(v9);
    v12[1] = v9;
    sub_23F2FC17C(&v11, v12);
  }

  else
  {
    sub_23F2FC430((v7 + 8), &v10);
  }

  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

void sub_23EFFE400(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v15 = a2[1];
  v4 = a2[2];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v16 = *(a2 + 3);
  v5 = *(a1 + 40);
  if (*v5 > 1u)
  {
    v8 = (a1 + 88);
    v6 = a1 + 72;
    v9 = (a1 + 80);
    if ((*(a1 + 88) & 1) != 0 && *(a1 + 80) == 7 && **v6 == *"version" && *(*v6 + 3) == *"sion")
    {
      goto LABEL_13;
    }
  }

  else
  {
    *(a1 + 72) = "byte_size";
    v6 = a1 + 72;
    v8 = (a1 + 88);
    v7 = *(a1 + 88);
    *(a1 + 80) = 9;
    v9 = (a1 + 80);
    if ((v7 & 1) == 0)
    {
      *v8 = 1;
    }
  }

  LOBYTE(v17) = 6;
  *(&v17 + 1) = v3;
  v11 = sub_23F2E6C78(a1);
  v12 = *v11;
  *v11 = 6;
  LOBYTE(v17) = v12;
  v13 = v11[1];
  v11[1] = *(&v17 + 1);
  *(&v17 + 1) = v13;
  sub_23F06357C(&v17 + 1, v12);
  v5 = *(a1 + 40);
LABEL_13:
  v17 = v16;
  if (*v5 <= 1u)
  {
    v14 = *v8;
    *v6 = "bytes";
    *v9 = 5;
    if ((v14 & 1) == 0)
    {
      *v8 = 1;
    }
  }

  sub_23F2E7154(a1, &v17);
}

void sub_23EFFE5BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23F06357C((v2 + 8), 6);
  sub_23EF50F44(va);
  _Unwind_Resume(a1);
}

void sub_23EFFE5DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF50F44(va);
  _Unwind_Resume(a1);
}

void sub_23EFFE5F0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v6 = a2[1];
  v4 = a2[2];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(a2 + 3);
  if (*(a1 + 40))
  {
    v5 = *(a1 + 24);
    LOBYTE(v8) = *(a1 + 32);
    sub_23EF2F9B0(v5, &v8, 1);
  }

  MEMORY[0x245CAC960](*(a1 + 24), v3);
  ++*(a1 + 40);
  v8 = v7;
  sub_23F2F47A8(a1, &v8);
  if (v4)
  {
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

void sub_23EFFE6EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF50F44(va);
  _Unwind_Resume(a1);
}

void sub_23EFFE700(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  __src = *a2;
  v7 = v3;
  v4 = a2[2];
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 + 3);
  sub_23F295368(a1 + 24, *(a1 + 32), &__src, &v7, 8uLL);
  sub_23F295368(a1 + 24, *(a1 + 32), v9, (*(&v9 + 1) + v9), *(&v9 + 1));
  v5 = v8;
  if (v8)
  {
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

void sub_23EFFE7D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF50F44(va);
  _Unwind_Resume(a1);
}

void sub_23EFFE7EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v6[0] = *a2;
  v6[1] = v3;
  v4 = *(a2 + 16);
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 24);
  (*(*a1 + 120))(a1, v6);
  v9 = v8;
  (*(*a1 + 272))(a1, &v9);
  v5 = v7;
  if (v7)
  {
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

void sub_23EFFE8FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF50F44(va);
  _Unwind_Resume(a1);
}

void sub_23EFFE910(uint64_t a1, void *a2)
{
  v5[0] = *(a1 + 32);
  v4 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v4;
  sub_23F2EB5F4(a1 + 40, v5);
  sub_23F294EB4(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  v5[0] = "version";
  v5[1] = 7;
  v6 = 2;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_23F2ECE4C(a1, &v6);
  if (v6 < 2)
  {
    sub_23EFFEA0C();
  }

  sub_23EFFEB90(a1, a2);
}

void sub_23EFFEA0C()
{
  v0 = 0;
  __p = 0;
  v2 = 0;
  v3 = 0;
  sub_23F2BB380();
}

void sub_23EFFEB74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EFFEB90(uint64_t a1, void *a2)
{
  v4 = *(a1 + 104);
  *(a1 + 88) = "byte_size";
  *(a1 + 96) = 9;
  if ((v4 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v5 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  *&v10 = 0;
  sub_23F0702B4(v5, &v10);
  v6 = v10;
  *a2 = v10;
  memset(&v9[2], 0, 24);
  if (v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v9[0] = 0;
  v9[1] = 0;
  v7 = *(a1 + 104);
  *(a1 + 88) = "bytes";
  *(a1 + 96) = 5;
  if ((v7 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v8 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  sub_23F2EBAF0(v8, v9);
  sub_23F2BB380();
}

void sub_23EFFED24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EFFED4C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 104);
  *(a1 + 88) = "byte_size";
  *(a1 + 96) = 9;
  if ((v4 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v5 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  *&v10 = 0;
  sub_23F0702B4(v5, &v10);
  v6 = v10;
  *a2 = v10;
  memset(&v9[2], 0, 24);
  if (v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v9[0] = 0;
  v9[1] = 0;
  v7 = *(a1 + 104);
  *(a1 + 88) = "bytes";
  *(a1 + 96) = 5;
  if ((v7 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v8 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  sub_23F2EBAF0(v8, v9);
  sub_23F2BB380();
}

void sub_23EFFEEE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EFFEF08(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int a4)
{
  if (a4 > 1)
  {
    v7 = 0;
    sub_23F2F80F8(*(a2 + 48), &v7);
    *&v6 = (*(*(a2 + 16) + 32))(a2 + 16);
    *(&v6 + 1) = v7;
    sub_23EF62458(a2 + 24, &v6);
    sub_23EFFF1B8(a2, a3);
  }

  sub_23EFFF034();
}

void sub_23EFFF034()
{
  v0 = 0;
  __p = 0;
  v2 = 0;
  v3 = 0;
  sub_23F2BB380();
}

void sub_23EFFF19C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EFFF1B8(uint64_t a1, uint64_t *a2)
{
  sub_23F2F80F8(*(a1 + 48), a2);
  v4 = *a2;
  memset(&v5[2], 0, 24);
  if (v4)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_23F2F8A98(a1, v5);
  sub_23F2BB380();
}

void sub_23EFFF2E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EFFF308(uint64_t a1, uint64_t *a2)
{
  sub_23F2F80F8(*(a1 + 48), a2);
  v4 = *a2;
  memset(&v5[2], 0, 24);
  if (v4)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_23F2F8A98(a1, v5);
  sub_23F2BB380();
}

void sub_23EFFF430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EFFF458(uint64_t a1, void *a2)
{
  v5[0] = *(a1 + 32);
  v4 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v4;
  sub_23F2EB5F4(a1 + 40, v5);
  sub_23F294EB4(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  v5[0] = "version";
  v5[1] = 7;
  v6 = 2;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_23F2EBEC0(a1, &v6);
  if (v6 < 2)
  {
    sub_23EFFF554();
  }

  sub_23EFFF6D8(a1, a2);
}

void sub_23EFFF554()
{
  v0 = 0;
  __p = 0;
  v2 = 0;
  v3 = 0;
  sub_23F2BB380();
}

void sub_23EFFF6BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EFFF6D8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 104);
  *(a1 + 88) = "byte_size";
  *(a1 + 96) = 9;
  if ((v4 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v5 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  *&v10 = 0;
  sub_23F06FAB4(v5, &v10);
  v6 = v10;
  *a2 = v10;
  memset(&v9[2], 0, 24);
  if (v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v9[0] = 0;
  v9[1] = 0;
  v7 = *(a1 + 104);
  *(a1 + 88) = "bytes";
  *(a1 + 96) = 5;
  if ((v7 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v8 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  sub_23F2EB858(v8, v9);
  sub_23F2BB380();
}

void sub_23EFFF86C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EFFF894(uint64_t a1, void *a2)
{
  v4 = *(a1 + 104);
  *(a1 + 88) = "byte_size";
  *(a1 + 96) = 9;
  if ((v4 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v5 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  *&v10 = 0;
  sub_23F06FAB4(v5, &v10);
  v6 = v10;
  *a2 = v10;
  memset(&v9[2], 0, 24);
  if (v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v9[0] = 0;
  v9[1] = 0;
  v7 = *(a1 + 104);
  *(a1 + 88) = "bytes";
  *(a1 + 96) = 5;
  if ((v7 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v8 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  sub_23F2EB858(v8, v9);
  sub_23F2BB380();
}

void sub_23EFFFA28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EFFFA50()
{
  v0 = 0;
  __p = 0;
  v2 = 0;
  v3 = 0;
  sub_23F2BB380();
}

void sub_23EFFFBB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EFFFBD4(uint64_t a1, uint64_t *a2)
{
  sub_23F2F5EB0(a1, a2);
  v4 = *a2;
  memset(&v5[2], 0, 24);
  if (v4)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_23F2F75D0(a1, v5);
  sub_23F2BB380();
}

void sub_23EFFFCF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EFFFD20(uint64_t a1, uint64_t *a2)
{
  sub_23F2F5EB0(a1, a2);
  v4 = *a2;
  memset(&v5[2], 0, 24);
  if (v4)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_23F2F75D0(a1, v5);
  sub_23F2BB380();
}

void sub_23EFFFE44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EFFFE6C(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[6];
  v4 = a2[7];
  v5 = v4 >= v3;
  v6 = v4 - v3;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 > 3)
  {
    v7 = *(a2[3] + v3);
    a2[6] = v3 + 4;
    if (v7 > 1)
    {
      sub_23F294FCC(a2);
      sub_23F0000E8(a2, a3);
    }

    sub_23EFFFF64();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_23EF35CC0(exception, "Not enough data to read");
  __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
}

void sub_23EFFFF64()
{
  v0 = 0;
  __p = 0;
  v2 = 0;
  v3 = 0;
  sub_23F2BB380();
}

void sub_23F0000CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F0000E8(void *a1, void *a2)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 > 7)
  {
    v6 = *(a1[3] + v2);
    *a2 = v6;
    v7 = a1[6] + 8;
    a1[6] = v7;
    if (v6)
    {
      if ((v6 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_23EF62578();
    }

    a1[7];
    a1[6] = v7;
    sub_23F2BB380();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_23EF35CC0(exception, "Not enough data to read");
  __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
}

void sub_23F0002F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (v13)
  {
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F000340(void *a1, void *a2)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 > 7)
  {
    v6 = *(a1[3] + v2);
    *a2 = v6;
    v7 = a1[6] + 8;
    a1[6] = v7;
    if (v6)
    {
      if ((v6 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_23EF62578();
    }

    a1[7];
    a1[6] = v7;
    sub_23F2BB380();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_23EF35CC0(exception, "Not enough data to read");
  __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
}

void sub_23F00054C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (v13)
  {
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F000598(int *a1, uint64_t a2, uint64_t *a3, unsigned int a4)
{
  v6 = *a1;
  if (*a1 == 2)
  {
    if (a4 < 2)
    {
      goto LABEL_10;
    }

    v8 = a4;
    v10 = 2;
    (*(*a2 + 104))(a2, &v10);
    if (v10 >= 3)
    {
      v9 = v10;
      if ((atomic_load_explicit(&qword_27E3944F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3944F8))
      {
        sub_23F302BD0("cv3d::kit::conio::BlobSample]", 0x1CuLL, &stru_27E3944E0);
        __cxa_guard_release(&qword_27E3944F8);
        sub_23F2FF068(&stru_27E3944E0, v9, 2u);
      }

      sub_23F2FF068(&stru_27E3944E0, v9, 2u);
    }

    v6 = *a1;
    a4 = v8;
  }

  if (a4 >= 2 && v6 > 0)
  {
    (*(*a2 + 16))(a2);
    sub_23F0008FC(a2, a3);
  }

  if (a4 > 1)
  {
    sub_23F0008FC(a2, a3);
  }

LABEL_10:
  sub_23F000778();
}

void sub_23F000778()
{
  v0 = 0;
  __p = 0;
  v2 = 0;
  v3 = 0;
  sub_23F2BB380();
}

void sub_23F0008E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F0008FC(uint64_t a1, uint64_t *a2)
{
  (*(*a1 + 120))(a1);
  v4 = *a2;
  memset(&v5[2], 0, 24);
  if (v4)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v5[0] = 0;
  v5[1] = 0;
  (*(*a1 + 272))(a1, v5);
  sub_23F2BB380();
}

void sub_23F000A68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F000A90(uint64_t a1, uint64_t *a2)
{
  (*(*a1 + 120))(a1);
  v4 = *a2;
  memset(&v5[2], 0, 24);
  if (v4)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v5[0] = 0;
  v5[1] = 0;
  (*(*a1 + 272))(a1, v5);
  sub_23F2BB380();
}

void sub_23F000BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_23F000C24(uint64_t a1, uint64_t a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 192);
  if (v4 == 2)
  {
    sub_23EF82E08(a1 + 16, &v34);
  }

  else if (v4 == 1)
  {
    sub_23EF82B6C(a1 + 16, &v34);
  }

  else
  {
    if (v4)
    {
      sub_23EF41D6C();
    }

    sub_23EF47C88(a1 + 16, &v34);
  }

  v5 = *(a2 + 192);
  if (v5 == 2)
  {
    sub_23EF82E08(a2 + 16, &v19);
  }

  else if (v5 == 1)
  {
    sub_23EF82B6C(a2 + 16, &v19);
  }

  else
  {
    if (v5)
    {
      sub_23EF41D6C();
    }

    sub_23EF47C88(a2 + 16, &v19);
  }

  if (v34 != v19)
  {
    goto LABEL_19;
  }

  if (v35 != v20)
  {
    goto LABEL_19;
  }

  v18[0] = &v36;
  v18[1] = &v39;
  v18[2] = &v40;
  v18[3] = &v43;
  v18[4] = &v46;
  v17[0] = &v21;
  v17[1] = &v24;
  v17[2] = &v25;
  v17[3] = &v28;
  v17[4] = &__p;
  if (!sub_23F04C458(v18, v17))
  {
    goto LABEL_19;
  }

  if (*(a1 + 200) == *(a2 + 200))
  {
    v6 = sub_23F2F2774((a1 + 208), (a2 + 208)) == 0;
    if (v33 != 1)
    {
      goto LABEL_33;
    }
  }

  else
  {
LABEL_19:
    v6 = 0;
    if (v33 != 1)
    {
      goto LABEL_33;
    }
  }

  v7 = __p;
  if (__p)
  {
    v8 = v32;
    v9 = __p;
    if (v32 == __p)
    {
LABEL_32:
      v32 = v7;
      operator delete(v9);
      goto LABEL_33;
    }

    while (1)
    {
      v10 = v8;
      if (*(v8 - 16) == 1 && *(v8 - 41) < 0)
      {
        operator delete(*(v8 - 8));
        v8 -= 12;
        if (*(v10 - 72) == 1)
        {
LABEL_27:
          if (*(v10 - 73) < 0)
          {
            operator delete(*v8);
          }
        }
      }

      else
      {
        v8 -= 12;
        if (*(v10 - 72) == 1)
        {
          goto LABEL_27;
        }
      }

      if (v8 == v7)
      {
        v9 = __p;
        goto LABEL_32;
      }
    }
  }

LABEL_33:
  if (v30 == 1 && v29 < 0)
  {
    operator delete(v28);
  }

  if (v27 == 1 && v26 < 0)
  {
    operator delete(v25);
  }

  if (v23 == 1 && v22 < 0)
  {
    operator delete(v21);
  }

  if (v48 == 1)
  {
    v11 = v46;
    if (v46)
    {
      v12 = v47;
      v13 = v46;
      if (v47 == v46)
      {
LABEL_55:
        v47 = v11;
        operator delete(v13);
        goto LABEL_56;
      }

      while (1)
      {
        v14 = v12;
        if (*(v12 - 16) == 1 && *(v12 - 41) < 0)
        {
          operator delete(*(v12 - 8));
          v12 -= 12;
          if (*(v14 - 72) == 1)
          {
LABEL_50:
            if (*(v14 - 73) < 0)
            {
              operator delete(*v12);
            }
          }
        }

        else
        {
          v12 -= 12;
          if (*(v14 - 72) == 1)
          {
            goto LABEL_50;
          }
        }

        if (v12 == v11)
        {
          v13 = v46;
          goto LABEL_55;
        }
      }
    }
  }

LABEL_56:
  if (v45 == 1 && v44 < 0)
  {
    operator delete(v43);
  }

  if (v42 == 1 && v41 < 0)
  {
    operator delete(v40);
  }

  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_23F000FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  sub_23EF44860(v47);
  sub_23EF44860(&a47);
  _Unwind_Resume(a1);
}

void sub_23F000FE8(char **a1, uint64_t a2)
{
  v15 = a2;
  v16 = a2;
  v4 = *a1;
  v5 = **a1;
  v6 = __dynamic_cast(a1, &unk_28518D908, &unk_2851798D0, 0);
  if (v6)
  {
    sub_23F0015A0(&v16, v6);
  }

  v16 = a2;
  v7 = *v4;
  v8 = __dynamic_cast(a1, &unk_28518D908, &unk_285179918, 0);
  if (v8)
  {
    sub_23F001ACC(&v16, v8);
  }

  else
  {
    v16 = a2;
    v9 = *v4;
    v10 = __dynamic_cast(a1, &unk_28518D908, &unk_2851799A0, 0);
    if (v10)
    {
      sub_23F001D60(&v16, v10);
    }

    v16 = a2;
    v11 = *v4;
    v12 = __dynamic_cast(a1, &unk_28518D908, &unk_2851799E8, 0);
    if (v12)
    {
      sub_23F00228C(&v16, v12);
    }

    else
    {
      v16 = a2;
      v13 = *v4;
      v14 = __dynamic_cast(a1, &unk_28518D908, &unk_28518B990, 0);
      if (v14)
      {
        sub_23F0024A0(&v16, v14);
      }

      else
      {
        sub_23F0011B4(&v15, a1);
      }
    }
  }
}

void sub_23F0011B4(uint64_t *a1, _DWORD *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    v9 = a2[2];
    v12 = 4;
    (*(*a2 + 104))(a2, &v12);
    v10 = v12;
    if (v9 >= 1)
    {
      if (v9 == 2)
      {
        v12 = 3;
        (*(*a2 + 104))(a2, &v12);
      }

      (*(*a2 + 16))(a2);
      sub_23EF886A8(a2, v3 + 16, v10);
      goto LABEL_16;
    }

    sub_23EF886A8(a2, v3 + 16, v12);
  }

  else if (v4 == 1)
  {
    v7 = a2[2];
    v12 = 5;
    (*(*a2 + 104))(a2, &v12);
    v8 = v12;
    if (v7 >= 1)
    {
      if (v7 == 2)
      {
        v12 = 3;
        (*(*a2 + 104))(a2, &v12);
      }

      (*(*a2 + 16))(a2);
      sub_23EF87D4C(a2, v3 + 16, v8);
      goto LABEL_16;
    }

    sub_23EF87D4C(a2, v3 + 16, v12);
  }

  else
  {
    if (v4)
    {
      sub_23EF41D6C();
    }

    v5 = a2[2];
    v12 = 6;
    (*(*a2 + 104))(a2, &v12);
    v6 = v12;
    if (v5 >= 1)
    {
      if (v5 == 2)
      {
        v12 = 3;
        (*(*a2 + 104))(a2, &v12);
      }

      (*(*a2 + 16))(a2);
      sub_23EF5C460(a2, v3 + 16, v6);
LABEL_16:
      (*(*a2 + 24))(a2);
      goto LABEL_17;
    }

    sub_23EF5C460(a2, v3 + 16, v12);
  }

LABEL_17:
  v11 = a2[2];
  v12 = 2;
  (*(*a2 + 104))(a2, &v12);
  if (v11 < 1)
  {
    sub_23EF8896C(a2, v3 + 200);
  }

  else
  {
    if (v11 == 2)
    {
      v12 = 2;
      (*(*a2 + 104))(a2, &v12);
    }

    (*(*a2 + 16))(a2);
    sub_23EF8896C(a2, v3 + 200);
    (*(*a2 + 24))(a2);
  }
}

void sub_23F0015A0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 != 2)
  {
    if (v4 != 1)
    {
      if (!v4)
      {
        v5 = (a2 + 40);
        if (**(a2 + 40) <= 1u)
        {
          v6 = *(a2 + 88);
          *(a2 + 72) = "info";
          *(a2 + 80) = 4;
          if ((v6 & 1) == 0)
          {
            *(a2 + 88) = 1;
          }
        }

        sub_23F2E6438(a2 + 48, v5);
        v7 = sub_23F2E72C0(a2);
        *(a2 + 40) = v7;
        if (*(a2 + 88))
        {
          *(a2 + 88) = 0;
        }

        if (*v7 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v8 = *"sion" == 1852795251) : (v8 = 0), v8))
        {
          *(a2 + 96) = 6;
          *(a2 + 100) = 1;
          *(a2 + 88) = 0;
        }

        else
        {
          v26 = 6;
          v9 = sub_23F2E72C0(a2);
          v10 = *v9;
          *v9 = 6;
          v11 = v9[1];
          v9[1] = v26;
          v26 = v11;
          sub_23F0655DC(&v26, v10);
        }

        sub_23EF54B14(a2, v3 + 16);
      }

      sub_23EF41D6C();
    }

    v12 = (a2 + 40);
    if (**(a2 + 40) <= 1u)
    {
      v13 = *(a2 + 88);
      *(a2 + 72) = "info";
      *(a2 + 80) = 4;
      if ((v13 & 1) == 0)
      {
        *(a2 + 88) = 1;
      }
    }

    sub_23F2E6438(a2 + 48, v12);
    v14 = sub_23F2E72C0(a2);
    *(a2 + 40) = v14;
    if (*(a2 + 88))
    {
      *(a2 + 88) = 0;
    }

    if (*v14 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v15 = *"sion" == 1852795251) : (v15 = 0), v15))
    {
      *(a2 + 96) = 5;
      *(a2 + 100) = 1;
      *(a2 + 88) = 0;
    }

    else
    {
      v26 = 5;
      v16 = sub_23F2E72C0(a2);
      v17 = *v16;
      *v16 = 6;
      v18 = v16[1];
      v16[1] = v26;
      v26 = v18;
      sub_23F0655DC(&v26, v17);
    }

    sub_23EF830A4(a2, v3 + 16);
  }

  v19 = (a2 + 40);
  if (**(a2 + 40) <= 1u)
  {
    v20 = *(a2 + 88);
    *(a2 + 72) = "info";
    *(a2 + 80) = 4;
    if ((v20 & 1) == 0)
    {
      *(a2 + 88) = 1;
    }
  }

  sub_23F2E6438(a2 + 48, v19);
  v21 = sub_23F2E72C0(a2);
  *(a2 + 40) = v21;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v21 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v22 = *"sion" == 1852795251) : (v22 = 0), v22))
  {
    *(a2 + 96) = 4;
    *(a2 + 100) = 1;
    *(a2 + 88) = 0;
  }

  else
  {
    v26 = 4;
    v23 = sub_23F2E72C0(a2);
    v24 = *v23;
    *v23 = 6;
    v25 = v23[1];
    v23[1] = v26;
    v26 = v25;
    sub_23F0655DC(&v26, v24);
  }

  sub_23EF8390C(a2, v3 + 16);
}

void sub_23F001ACC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    v7 = *(a2 + 24);
    if (*(v7 + 40) == 1)
    {
      v25 = (v7 + 16);
      sub_23F2FD25C(&v25, 4u);
    }

    else
    {
      sub_23F2FD4DC(&v25, (v7 + 8));
    }

    sub_23F2F887C(*(a2 + 24));
    sub_23EF84C34(a2, v3 + 16, 4u);
  }

  else if (v4 == 1)
  {
    v6 = *(a2 + 24);
    if (*(v6 + 40) == 1)
    {
      v25 = (v6 + 16);
      sub_23F2FD25C(&v25, 5u);
    }

    else
    {
      sub_23F2FD4DC(&v25, (v6 + 8));
    }

    sub_23F2F887C(*(a2 + 24));
    sub_23EF84B04(a2, v3 + 16, 5u);
  }

  else
  {
    if (v4)
    {
      sub_23EF41D6C();
    }

    v5 = *(a2 + 24);
    if (*(v5 + 40) == 1)
    {
      v25 = (v5 + 16);
      sub_23F2FD25C(&v25, 6u);
    }

    else
    {
      sub_23F2FD4DC(&v25, (v5 + 8));
    }

    sub_23F2F887C(*(a2 + 24));
    sub_23EF57C0C(a2, v3 + 16, 6u);
  }

  v8 = *(a2 + 24);
  v9 = *(v8[11] - 8);
  sub_23F2F866C(v8 + 6, v8[2] - v9 - 9);
  v10 = v8[6];
  if (v10)
  {
    memmove((v8[3] + v9), v8[7], v10);
  }

  v8[6] = 0;
  v11 = v8[10];
  v12 = v8[11] - 8;
  v8[11] = v12;
  if (v11 == v12)
  {
    v13 = *v8;
    v15 = v8[2];
    v14 = v8[3];
    std::ostream::write();
    if (*(v8 + 40) == 1)
    {
      free(v8[3]);
      *(v8 + 40) = 0;
    }
  }

  v16 = *(a2 + 24);
  if (*(v16 + 40) == 1)
  {
    v25 = (v16 + 16);
    sub_23F2FD25C(&v25, 2u);
  }

  else
  {
    sub_23F2FD4DC(&v25, (v16 + 8));
  }

  sub_23F2F887C(*(a2 + 24));
  sub_23EF85030(a2, (v3 + 200));
  v17 = *(a2 + 24);
  v18 = *(v17[11] - 8);
  sub_23F2F866C(v17 + 6, v17[2] - v18 - 9);
  v19 = v17[6];
  if (v19)
  {
    memmove((v17[3] + v18), v17[7], v19);
  }

  v17[6] = 0;
  v20 = v17[10];
  v21 = v17[11] - 8;
  v17[11] = v21;
  if (v20 == v21)
  {
    v22 = *v17;
    v24 = v17[2];
    v23 = v17[3];
    std::ostream::write();
    if (*(v17 + 40) == 1)
    {
      free(v17[3]);
      *(v17 + 40) = 0;
    }
  }
}

void sub_23F001D60(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 != 2)
  {
    if (v4 != 1)
    {
      if (!v4)
      {
        v5 = (a2 + 40);
        if (**(a2 + 40) <= 1u)
        {
          v6 = *(a2 + 88);
          *(a2 + 72) = "info";
          *(a2 + 80) = 4;
          if ((v6 & 1) == 0)
          {
            *(a2 + 88) = 1;
          }
        }

        sub_23F07903C(a2 + 48, v5);
        v7 = sub_23F2E6C78(a2);
        *(a2 + 40) = v7;
        if (*(a2 + 88))
        {
          *(a2 + 88) = 0;
        }

        if (*v7 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v8 = *"sion" == 1852795251) : (v8 = 0), v8))
        {
          *(a2 + 96) = 6;
          *(a2 + 100) = 1;
          *(a2 + 88) = 0;
        }

        else
        {
          v26 = 6;
          v9 = sub_23F2E6C78(a2);
          v10 = *v9;
          *v9 = 6;
          v11 = v9[1];
          v9[1] = v26;
          v26 = v11;
          sub_23F06357C(&v26, v10);
        }

        sub_23EF58E64(a2, v3 + 16);
      }

      sub_23EF41D6C();
    }

    v12 = (a2 + 40);
    if (**(a2 + 40) <= 1u)
    {
      v13 = *(a2 + 88);
      *(a2 + 72) = "info";
      *(a2 + 80) = 4;
      if ((v13 & 1) == 0)
      {
        *(a2 + 88) = 1;
      }
    }

    sub_23F07903C(a2 + 48, v12);
    v14 = sub_23F2E6C78(a2);
    *(a2 + 40) = v14;
    if (*(a2 + 88))
    {
      *(a2 + 88) = 0;
    }

    if (*v14 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v15 = *"sion" == 1852795251) : (v15 = 0), v15))
    {
      *(a2 + 96) = 5;
      *(a2 + 100) = 1;
      *(a2 + 88) = 0;
    }

    else
    {
      v26 = 5;
      v16 = sub_23F2E6C78(a2);
      v17 = *v16;
      *v16 = 6;
      v18 = v16[1];
      v16[1] = v26;
      v26 = v18;
      sub_23F06357C(&v26, v17);
    }

    sub_23EF85628(a2, v3 + 16);
  }

  v19 = (a2 + 40);
  if (**(a2 + 40) <= 1u)
  {
    v20 = *(a2 + 88);
    *(a2 + 72) = "info";
    *(a2 + 80) = 4;
    if ((v20 & 1) == 0)
    {
      *(a2 + 88) = 1;
    }
  }

  sub_23F07903C(a2 + 48, v19);
  v21 = sub_23F2E6C78(a2);
  *(a2 + 40) = v21;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v21 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v22 = *"sion" == 1852795251) : (v22 = 0), v22))
  {
    *(a2 + 96) = 4;
    *(a2 + 100) = 1;
    *(a2 + 88) = 0;
  }

  else
  {
    v26 = 4;
    v23 = sub_23F2E6C78(a2);
    v24 = *v23;
    *v23 = 6;
    v25 = v23[1];
    v23[1] = v26;
    v26 = v25;
    sub_23F06357C(&v26, v24);
  }

  sub_23EF85CB4(a2, v3 + 16);
}

void *sub_23F00228C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    if (*(a2 + 40))
    {
      v16 = *(a2 + 24);
      v19 = *(a2 + 32);
      sub_23EF2F9B0(v16, &v19, 1);
    }

    MEMORY[0x245CAC910](*(a2 + 24), 4);
    ++*(a2 + 40);
    sub_23EF87030(a2, v3 + 16, 4u);
    v6 = *(a2 + 34);
    if (*(a2 + 40))
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (v4 != 1)
    {
      if (v4)
      {
        sub_23EF41D6C();
      }

      if (*(a2 + 40))
      {
        v5 = *(a2 + 24);
        v17 = *(a2 + 32);
        sub_23EF2F9B0(v5, &v17, 1);
      }

      MEMORY[0x245CAC910](*(a2 + 24), 6);
      ++*(a2 + 40);
      sub_23EF5A720(a2, v3 + 16, 6u);
      v6 = *(a2 + 34);
      if (!*(a2 + 40))
      {
        goto LABEL_12;
      }

LABEL_11:
      v8 = *(a2 + 24);
      v20 = *(a2 + 32);
      sub_23EF2F9B0(v8, &v20, 1);
      goto LABEL_12;
    }

    if (*(a2 + 40))
    {
      v7 = *(a2 + 24);
      v18 = *(a2 + 32);
      sub_23EF2F9B0(v7, &v18, 1);
    }

    MEMORY[0x245CAC910](*(a2 + 24), 5);
    ++*(a2 + 40);
    sub_23EF86A84(a2, v3 + 16, 5u);
    v6 = *(a2 + 34);
    if (*(a2 + 40))
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  v9 = *(a2 + 24);
  v21 = v6;
  sub_23EF2F9B0(v9, &v21, 1);
  v10 = *(a2 + 40);
  *(a2 + 40) = v10 + 1;
  if (v10 != -1)
  {
    v11 = *(a2 + 24);
    v22 = *(a2 + 32);
    sub_23EF2F9B0(v11, &v22, 1);
  }

  MEMORY[0x245CAC910](*(a2 + 24), 2);
  ++*(a2 + 40);
  sub_23EF872B8(a2, (v3 + 200));
  v12 = *(a2 + 34);
  if (*(a2 + 40))
  {
    v13 = *(a2 + 24);
    v23 = *(a2 + 32);
    sub_23EF2F9B0(v13, &v23, 1);
  }

  v14 = *(a2 + 24);
  v24 = v12;
  result = sub_23EF2F9B0(v14, &v24, 1);
  ++*(a2 + 40);
  return result;
}

void sub_23F0024A0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    __src = 4;
    sub_23F295368(a2 + 24, *(a2 + 32), &__src, &v11, 4uLL);
    v7 = __src;
    sub_23F294D84(a2);
    sub_23EF87798(a2, v3 + 16, v7);
  }

  else if (v4 == 1)
  {
    __src = 5;
    sub_23F295368(a2 + 24, *(a2 + 32), &__src, &v11, 4uLL);
    v6 = __src;
    sub_23F294D84(a2);
    sub_23EF87668(a2, v3 + 16, v6);
  }

  else
  {
    if (v4)
    {
      sub_23EF41D6C();
    }

    __src = 6;
    sub_23F295368(a2 + 24, *(a2 + 32), &__src, &v11, 4uLL);
    v5 = __src;
    sub_23F294D84(a2);
    sub_23EF5B8BC(a2, v3 + 16, v5);
  }

  v8 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v8 + 10) = *(a2 + 32) - v8 - 18;
  *(a2 + 56) -= 8;
  __src = 2;
  sub_23F295368(a2 + 24, *(a2 + 32), &__src, &v11, 4uLL);
  sub_23F294D84(a2);
  sub_23EF87A74(a2, (v3 + 200));
  v9 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v9 + 10) = *(a2 + 32) - v9 - 18;
  *(a2 + 56) -= 8;
}

void sub_23F002654(char **a1, uint64_t a2)
{
  v15 = a2;
  v16 = a2;
  v4 = *a1;
  v5 = **a1;
  v6 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285179A70, 0);
  if (v6)
  {
    sub_23F002C84(&v16, v6);
  }

  v16 = a2;
  v7 = *v4;
  v8 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285179AA8, 0);
  if (v8)
  {
    sub_23F0030B0(&v16, v8);
  }

  v16 = a2;
  v9 = *v4;
  v10 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285179B30, 0);
  if (v10)
  {
    sub_23F0034D4(&v16, v10);
  }

  v16 = a2;
  v11 = *v4;
  v12 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285179B68, 0);
  if (v12)
  {
    sub_23F003900(&v16, v12);
  }

  v16 = a2;
  v13 = *v4;
  v14 = __dynamic_cast(a1, &unk_28518D8F0, &unk_28518B930, 0);
  if (v14)
  {
    sub_23F003EBC(&v16, v14);
  }

  sub_23F002820(&v15, a1);
}

void sub_23F002820(uint64_t *a1, void **a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_23EF82B6C(v3 + 16, v21);
    sub_23EF53784(v33, v21);
    sub_23EF88F40(v3 + 16, v33);
    if (v45 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v44;
        v7 = __p;
        if (v44 != __p)
        {
          do
          {
            v8 = *(v6 - 1);
            v6 -= 3;
            if (v8 < 0)
            {
              operator delete(*v6);
            }
          }

          while (v6 != v5);
          v7 = __p;
        }

        v44 = v5;
        operator delete(v7);
      }
    }

    if (v42 == 1 && v41 < 0)
    {
      operator delete(v40);
    }

    if (v39 == 1 && v38 < 0)
    {
      operator delete(v37);
    }

    if (v36 == 1 && v35 < 0)
    {
      operator delete(v34);
    }

    if (v32 != 1)
    {
      goto LABEL_66;
    }

    v13 = v30;
    if (!v30)
    {
      goto LABEL_66;
    }

    v14 = v31;
    v15 = v30;
    if (v31 == v30)
    {
LABEL_65:
      v31 = v13;
      operator delete(v15);
LABEL_66:
      if (v29 == 1 && v28 < 0)
      {
        operator delete(v27);
      }

      if (v26 == 1 && v25 < 0)
      {
        operator delete(v24);
      }

      if (v23 == 1 && v22 < 0)
      {
        operator delete(v21[2]);
      }

      if (*(v3 + 192))
      {
        sub_23EF41D6C();
      }

LABEL_76:
      v19 = *a2;
      v21[0] = a2[1];
      v20 = v21[0];
      v33[0] = 6;
      v19[13](a2, v33);
      if (v20 < 1)
      {
        if (v33[0] < 3)
        {
          sub_23EF69318(v33, a2, v3 + 16, v33[0]);
        }

        else
        {
          sub_23EF69524(a2, v3 + 16, v33[0]);
        }
      }

      else
      {
        sub_23EF68F0C(v21, a2, v3 + 16, v33[0]);
      }

      sub_23EF8C588(v21, a2, (v3 + 200));
    }

    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

  if (v4 != 2)
  {
    sub_23EF41D6C();
  }

  sub_23EF82E08(v3 + 16, v21);
  sub_23EF53784(v33, v21);
  sub_23EF88F40(v3 + 16, v33);
  if (v45 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v44;
      v11 = __p;
      if (v44 != __p)
      {
        do
        {
          v12 = *(v10 - 1);
          v10 -= 3;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v9);
        v11 = __p;
      }

      v44 = v9;
      operator delete(v11);
    }
  }

  if (v42 == 1 && v41 < 0)
  {
    operator delete(v40);
  }

  if (v39 == 1 && v38 < 0)
  {
    operator delete(v37);
  }

  if (v36 == 1 && v35 < 0)
  {
    operator delete(v34);
  }

  if (v32 != 1)
  {
    goto LABEL_66;
  }

  v13 = v30;
  if (!v30)
  {
    goto LABEL_66;
  }

  v17 = v31;
  v15 = v30;
  if (v31 == v30)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v18 = v17;
    if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
    {
      operator delete(*(v17 - 8));
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
LABEL_60:
        if (*(v18 - 73) < 0)
        {
          operator delete(*v17);
        }
      }
    }

    else
    {
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
        goto LABEL_60;
      }
    }

    if (v17 == v13)
    {
LABEL_64:
      v15 = v30;
      goto LABEL_65;
    }
  }
}

void sub_23F002C84(uint64_t *a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_23EF82B6C(v3 + 16, v20);
    sub_23EF53784(v32, v20);
    sub_23EF88F40(v3 + 16, v32);
    if (v44 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v43;
        v7 = __p;
        if (v43 != __p)
        {
          do
          {
            v8 = *(v6 - 1);
            v6 -= 3;
            if (v8 < 0)
            {
              operator delete(*v6);
            }
          }

          while (v6 != v5);
          v7 = __p;
        }

        v43 = v5;
        operator delete(v7);
      }
    }

    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 == 1 && v37 < 0)
    {
      operator delete(v36);
    }

    if (v35 == 1 && v34 < 0)
    {
      operator delete(v33);
    }

    if (v31 != 1)
    {
      goto LABEL_66;
    }

    v13 = v29;
    if (!v29)
    {
      goto LABEL_66;
    }

    v14 = v30;
    v15 = v29;
    if (v30 == v29)
    {
LABEL_65:
      v30 = v13;
      operator delete(v15);
LABEL_66:
      if (v28 == 1 && v27 < 0)
      {
        operator delete(v26);
      }

      if (v25 == 1 && v24 < 0)
      {
        operator delete(v23);
      }

      if (v22 == 1 && v21 < 0)
      {
        operator delete(v20[2]);
      }

      if (*(v3 + 192))
      {
        sub_23EF41D6C();
      }

LABEL_76:
      v19 = *(a2 + 104);
      *(a2 + 88) = "info";
      *(a2 + 96) = 4;
      if ((v19 & 1) == 0)
      {
        *(a2 + 104) = 1;
      }

      sub_23EF5D92C(a2, v3 + 16);
    }

    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

  if (v4 != 2)
  {
    sub_23EF41D6C();
  }

  sub_23EF82E08(v3 + 16, v20);
  sub_23EF53784(v32, v20);
  sub_23EF88F40(v3 + 16, v32);
  if (v44 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v43;
      v11 = __p;
      if (v43 != __p)
      {
        do
        {
          v12 = *(v10 - 1);
          v10 -= 3;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v9);
        v11 = __p;
      }

      v43 = v9;
      operator delete(v11);
    }
  }

  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (v35 == 1 && v34 < 0)
  {
    operator delete(v33);
  }

  if (v31 != 1)
  {
    goto LABEL_66;
  }

  v13 = v29;
  if (!v29)
  {
    goto LABEL_66;
  }

  v17 = v30;
  v15 = v29;
  if (v30 == v29)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v18 = v17;
    if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
    {
      operator delete(*(v17 - 8));
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
LABEL_60:
        if (*(v18 - 73) < 0)
        {
          operator delete(*v17);
        }
      }
    }

    else
    {
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
        goto LABEL_60;
      }
    }

    if (v17 == v13)
    {
LABEL_64:
      v15 = v29;
      goto LABEL_65;
    }
  }
}

void sub_23F0030B0(uint64_t *a1, uint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_23EF82B6C(v3 + 16, v19);
    sub_23EF53784(v31, v19);
    sub_23EF88F40(v3 + 16, v31);
    if (v43 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v42;
        v7 = __p;
        if (v42 != __p)
        {
          do
          {
            v8 = *(v6 - 1);
            v6 -= 3;
            if (v8 < 0)
            {
              operator delete(*v6);
            }
          }

          while (v6 != v5);
          v7 = __p;
        }

        v42 = v5;
        operator delete(v7);
      }
    }

    if (v40 == 1 && v39 < 0)
    {
      operator delete(v38);
    }

    if (v37 == 1 && v36 < 0)
    {
      operator delete(v35);
    }

    if (v34 == 1 && v33 < 0)
    {
      operator delete(v32);
    }

    if (v30 != 1)
    {
      goto LABEL_66;
    }

    v13 = v28;
    if (!v28)
    {
      goto LABEL_66;
    }

    v14 = v29;
    v15 = v28;
    if (v29 == v28)
    {
LABEL_65:
      v29 = v13;
      operator delete(v15);
LABEL_66:
      if (v27 == 1 && v26 < 0)
      {
        operator delete(v25);
      }

      if (v24 == 1 && v23 < 0)
      {
        operator delete(v22);
      }

      if (v21 == 1 && v20 < 0)
      {
        operator delete(v19[2]);
      }

      if (*(v3 + 192))
      {
        sub_23EF41D6C();
      }

LABEL_76:
      LODWORD(v19[0]) = 6;
      sub_23F2F7EFC(*(a2 + 48), v19);
      sub_23EF62320(v19, a2, v3 + 16, v19[0]);
      LODWORD(v19[0]) = 2;
      sub_23F2F7EFC(*(a2 + 48), v19);
      sub_23EF89A70(v19, a2, (v3 + 200), v19[0]);
    }

    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

  if (v4 != 2)
  {
    sub_23EF41D6C();
  }

  sub_23EF82E08(v3 + 16, v19);
  sub_23EF53784(v31, v19);
  sub_23EF88F40(v3 + 16, v31);
  if (v43 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v42;
      v11 = __p;
      if (v42 != __p)
      {
        do
        {
          v12 = *(v10 - 1);
          v10 -= 3;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v9);
        v11 = __p;
      }

      v42 = v9;
      operator delete(v11);
    }
  }

  if (v40 == 1 && v39 < 0)
  {
    operator delete(v38);
  }

  if (v37 == 1 && v36 < 0)
  {
    operator delete(v35);
  }

  if (v34 == 1 && v33 < 0)
  {
    operator delete(v32);
  }

  if (v30 != 1)
  {
    goto LABEL_66;
  }

  v13 = v28;
  if (!v28)
  {
    goto LABEL_66;
  }

  v17 = v29;
  v15 = v28;
  if (v29 == v28)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v18 = v17;
    if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
    {
      operator delete(*(v17 - 8));
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
LABEL_60:
        if (*(v18 - 73) < 0)
        {
          operator delete(*v17);
        }
      }
    }

    else
    {
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
        goto LABEL_60;
      }
    }

    if (v17 == v13)
    {
LABEL_64:
      v15 = v28;
      goto LABEL_65;
    }
  }
}

void sub_23F0034D4(uint64_t *a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_23EF82B6C(v3 + 16, v20);
    sub_23EF53784(v32, v20);
    sub_23EF88F40(v3 + 16, v32);
    if (v44 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v43;
        v7 = __p;
        if (v43 != __p)
        {
          do
          {
            v8 = *(v6 - 1);
            v6 -= 3;
            if (v8 < 0)
            {
              operator delete(*v6);
            }
          }

          while (v6 != v5);
          v7 = __p;
        }

        v43 = v5;
        operator delete(v7);
      }
    }

    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 == 1 && v37 < 0)
    {
      operator delete(v36);
    }

    if (v35 == 1 && v34 < 0)
    {
      operator delete(v33);
    }

    if (v31 != 1)
    {
      goto LABEL_66;
    }

    v13 = v29;
    if (!v29)
    {
      goto LABEL_66;
    }

    v14 = v30;
    v15 = v29;
    if (v30 == v29)
    {
LABEL_65:
      v30 = v13;
      operator delete(v15);
LABEL_66:
      if (v28 == 1 && v27 < 0)
      {
        operator delete(v26);
      }

      if (v25 == 1 && v24 < 0)
      {
        operator delete(v23);
      }

      if (v22 == 1 && v21 < 0)
      {
        operator delete(v20[2]);
      }

      if (*(v3 + 192))
      {
        sub_23EF41D6C();
      }

LABEL_76:
      v19 = *(a2 + 104);
      *(a2 + 88) = "info";
      *(a2 + 96) = 4;
      if ((v19 & 1) == 0)
      {
        *(a2 + 104) = 1;
      }

      sub_23EF63AE0(a2, v3 + 16);
    }

    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

  if (v4 != 2)
  {
    sub_23EF41D6C();
  }

  sub_23EF82E08(v3 + 16, v20);
  sub_23EF53784(v32, v20);
  sub_23EF88F40(v3 + 16, v32);
  if (v44 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v43;
      v11 = __p;
      if (v43 != __p)
      {
        do
        {
          v12 = *(v10 - 1);
          v10 -= 3;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v9);
        v11 = __p;
      }

      v43 = v9;
      operator delete(v11);
    }
  }

  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (v35 == 1 && v34 < 0)
  {
    operator delete(v33);
  }

  if (v31 != 1)
  {
    goto LABEL_66;
  }

  v13 = v29;
  if (!v29)
  {
    goto LABEL_66;
  }

  v17 = v30;
  v15 = v29;
  if (v30 == v29)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v18 = v17;
    if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
    {
      operator delete(*(v17 - 8));
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
LABEL_60:
        if (*(v18 - 73) < 0)
        {
          operator delete(*v17);
        }
      }
    }

    else
    {
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
        goto LABEL_60;
      }
    }

    if (v17 == v13)
    {
LABEL_64:
      v15 = v29;
      goto LABEL_65;
    }
  }
}

void sub_23F003900(uint64_t *a1, uint64_t a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
LABEL_76:
    LODWORD(v22[0]) = 6;
    sub_23F2F5830(a2, v22);
    if (LODWORD(v22[0]) >= 6)
    {
      v19 = 6;
    }

    else
    {
      v19 = v22[0];
    }

    if (LODWORD(v22[0]) <= 2)
    {
      sub_23EF65CF0(v22, a2, v3 + 16, v19);
LABEL_95:
      LODWORD(v22[0]) = 2;
      sub_23F2F5830(a2, v22);
      if (LODWORD(v22[0]) > 1)
      {
        LOBYTE(v22[0]) = 0;
        sub_23F2F4C14(a2, v22);
        v21 = LOBYTE(v22[0]);
        *(v3 + 200) = v22[0];
        sub_23EF8ABA8(v21, a2);
      }

      sub_23EF8AA48();
    }

    sub_23EF65EFC(a2, v3 + 16, v19);
    while (1)
    {
      if ((*(a2 + 131) & 1) != 0 || (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_95;
      }

      sub_23F2F7390(a2, v22);
      if (SHIBYTE(v23) < 0)
      {
        if (v22[1] == 1 && *(a2 + 72) == *v22[0])
        {
LABEL_90:
          v20 = 0;
          if (SHIBYTE(v23) < 0)
          {
            goto LABEL_93;
          }

          goto LABEL_81;
        }
      }

      else if (SHIBYTE(v23) == 1 && *(a2 + 72) == LOBYTE(v22[0]))
      {
        goto LABEL_90;
      }

      v20 = 1;
      if (SHIBYTE(v23) < 0)
      {
LABEL_93:
        operator delete(v22[0]);
      }

LABEL_81:
      if ((v20 & 1) == 0)
      {
        goto LABEL_95;
      }
    }
  }

  if (v4 == 1)
  {
    sub_23EF82B6C(v3 + 16, v22);
    sub_23EF53784(v35, v22);
    sub_23EF88F40(v3 + 16, v35);
    if (v47 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v46;
        v7 = __p;
        if (v46 != __p)
        {
          do
          {
            v8 = *(v6 - 1);
            v6 -= 3;
            if (v8 < 0)
            {
              operator delete(*v6);
            }
          }

          while (v6 != v5);
          v7 = __p;
        }

        v46 = v5;
        operator delete(v7);
      }
    }

    if (v44 == 1 && v43 < 0)
    {
      operator delete(v42);
    }

    if (v41 == 1 && v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 == 1 && v37 < 0)
    {
      operator delete(v36);
    }

    if (v34 != 1)
    {
      goto LABEL_66;
    }

    v13 = v32;
    if (!v32)
    {
      goto LABEL_66;
    }

    v14 = v33;
    v15 = v32;
    if (v33 == v32)
    {
LABEL_65:
      v33 = v13;
      operator delete(v15);
LABEL_66:
      if (v31 == 1 && v30 < 0)
      {
        operator delete(v29);
      }

      if (v28 == 1 && v27 < 0)
      {
        operator delete(v26);
      }

      if (v25 == 1 && v24 < 0)
      {
        operator delete(v23);
      }

      if (*(v3 + 192))
      {
        sub_23EF41D6C();
      }

      goto LABEL_76;
    }

    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

  if (v4 != 2)
  {
    sub_23EF41D6C();
  }

  sub_23EF82E08(v3 + 16, v22);
  sub_23EF53784(v35, v22);
  sub_23EF88F40(v3 + 16, v35);
  if (v47 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v46;
      v11 = __p;
      if (v46 != __p)
      {
        do
        {
          v12 = *(v10 - 1);
          v10 -= 3;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v9);
        v11 = __p;
      }

      v46 = v9;
      operator delete(v11);
    }
  }

  if (v44 == 1 && v43 < 0)
  {
    operator delete(v42);
  }

  if (v41 == 1 && v40 < 0)
  {
    operator delete(v39);
  }

  if (v38 == 1 && v37 < 0)
  {
    operator delete(v36);
  }

  if (v34 != 1)
  {
    goto LABEL_66;
  }

  v13 = v32;
  if (!v32)
  {
    goto LABEL_66;
  }

  v17 = v33;
  v15 = v32;
  if (v33 == v32)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v18 = v17;
    if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
    {
      operator delete(*(v17 - 8));
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
LABEL_60:
        if (*(v18 - 73) < 0)
        {
          operator delete(*v17);
        }
      }
    }

    else
    {
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
        goto LABEL_60;
      }
    }

    if (v17 == v13)
    {
LABEL_64:
      v15 = v32;
      goto LABEL_65;
    }
  }
}

void sub_23F003EBC(uint64_t *a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_23EF82B6C(v3 + 16, v19);
    sub_23EF53784(v31, v19);
    sub_23EF88F40(v3 + 16, v31);
    if (v43 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v42;
        v7 = __p;
        if (v42 != __p)
        {
          do
          {
            v8 = *(v6 - 1);
            v6 -= 3;
            if (v8 < 0)
            {
              operator delete(*v6);
            }
          }

          while (v6 != v5);
          v7 = __p;
        }

        v42 = v5;
        operator delete(v7);
      }
    }

    if (v40 == 1 && v39 < 0)
    {
      operator delete(v38);
    }

    if (v37 == 1 && v36 < 0)
    {
      operator delete(v35);
    }

    if (v34 == 1 && v33 < 0)
    {
      operator delete(v32);
    }

    if (v30 != 1)
    {
      goto LABEL_66;
    }

    v13 = v28;
    if (!v28)
    {
      goto LABEL_66;
    }

    v14 = v29;
    v15 = v28;
    if (v29 == v28)
    {
LABEL_65:
      v29 = v13;
      operator delete(v15);
LABEL_66:
      if (v27 == 1 && v26 < 0)
      {
        operator delete(v25);
      }

      if (v24 == 1 && v23 < 0)
      {
        operator delete(v22);
      }

      if (v21 == 1 && v20 < 0)
      {
        operator delete(v19[2]);
      }

      if (*(v3 + 192))
      {
        sub_23EF41D6C();
      }

LABEL_76:
      sub_23EF67614(v19, a2, v3 + 16);
      sub_23EF8AF70(v19, a2, (v3 + 200));
    }

    while (1)
    {
      v16 = v14;
      if (*(v14 - 16) == 1 && *(v14 - 41) < 0)
      {
        operator delete(*(v14 - 8));
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
LABEL_37:
          if (*(v16 - 73) < 0)
          {
            operator delete(*v14);
          }
        }
      }

      else
      {
        v14 -= 12;
        if (*(v16 - 72) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v14 == v13)
      {
        goto LABEL_64;
      }
    }
  }

  if (v4 != 2)
  {
    sub_23EF41D6C();
  }

  sub_23EF82E08(v3 + 16, v19);
  sub_23EF53784(v31, v19);
  sub_23EF88F40(v3 + 16, v31);
  if (v43 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v42;
      v11 = __p;
      if (v42 != __p)
      {
        do
        {
          v12 = *(v10 - 1);
          v10 -= 3;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v9);
        v11 = __p;
      }

      v42 = v9;
      operator delete(v11);
    }
  }

  if (v40 == 1 && v39 < 0)
  {
    operator delete(v38);
  }

  if (v37 == 1 && v36 < 0)
  {
    operator delete(v35);
  }

  if (v34 == 1 && v33 < 0)
  {
    operator delete(v32);
  }

  if (v30 != 1)
  {
    goto LABEL_66;
  }

  v13 = v28;
  if (!v28)
  {
    goto LABEL_66;
  }

  v17 = v29;
  v15 = v28;
  if (v29 == v28)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v18 = v17;
    if (*(v17 - 16) == 1 && *(v17 - 41) < 0)
    {
      operator delete(*(v17 - 8));
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
LABEL_60:
        if (*(v18 - 73) < 0)
        {
          operator delete(*v17);
        }
      }
    }

    else
    {
      v17 -= 12;
      if (*(v18 - 72) == 1)
      {
        goto LABEL_60;
      }
    }

    if (v17 == v13)
    {
LABEL_64:
      v15 = v28;
      goto LABEL_65;
    }
  }
}

uint64_t sub_23F0042AC(uint64_t a1, uint64_t a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 192);
  if (v4 == 2)
  {
    sub_23EF82E08(a1 + 16, &v41);
  }

  else if (v4 == 1)
  {
    sub_23EF82B6C(a1 + 16, &v41);
  }

  else
  {
    if (v4)
    {
      sub_23EF41D6C();
    }

    sub_23EF47C88(a1 + 16, &v41);
  }

  v5 = *(a2 + 192);
  if (v5 == 2)
  {
    sub_23EF82E08(a2 + 16, &v26);
  }

  else if (v5 == 1)
  {
    sub_23EF82B6C(a2 + 16, &v26);
  }

  else
  {
    if (v5)
    {
      sub_23EF41D6C();
    }

    sub_23EF47C88(a2 + 16, &v26);
  }

  if (v41 != v26)
  {
    goto LABEL_21;
  }

  if (v42 != v27)
  {
    goto LABEL_21;
  }

  v21 = &v43;
  v22 = &v46;
  v23 = &v47;
  v24 = &v50;
  v25 = &v53;
  v20[0] = &v28;
  v20[1] = &v31;
  v20[2] = &v32;
  v20[3] = &v35;
  v20[4] = &__p;
  if (!sub_23F04C458(&v21, v20))
  {
    goto LABEL_21;
  }

  if (*(a1 + 200) == *(a2 + 200) && *(a1 + 208) == *(a2 + 208) && (v6 = *(a1 + 216), v7 = *v6, v8 = *(a2 + 216), v7 == *v8))
  {
    v21 = v20;
    v22 = v6;
    v23 = v8;
    v9 = sub_23F2C7774(v7, &v21);
    if (v40 != 1)
    {
      goto LABEL_35;
    }
  }

  else
  {
LABEL_21:
    v9 = 0;
    if (v40 != 1)
    {
      goto LABEL_35;
    }
  }

  v10 = __p;
  if (__p)
  {
    v11 = v39;
    v12 = __p;
    if (v39 == __p)
    {
LABEL_34:
      v39 = v10;
      operator delete(v12);
      goto LABEL_35;
    }

    while (1)
    {
      v13 = v11;
      if (*(v11 - 16) == 1 && *(v11 - 41) < 0)
      {
        operator delete(*(v11 - 8));
        v11 -= 12;
        if (*(v13 - 72) == 1)
        {
LABEL_29:
          if (*(v13 - 73) < 0)
          {
            operator delete(*v11);
          }
        }
      }

      else
      {
        v11 -= 12;
        if (*(v13 - 72) == 1)
        {
          goto LABEL_29;
        }
      }

      if (v11 == v10)
      {
        v12 = __p;
        goto LABEL_34;
      }
    }
  }

LABEL_35:
  if (v37 == 1 && v36 < 0)
  {
    operator delete(v35);
  }

  if (v34 == 1 && v33 < 0)
  {
    operator delete(v32);
  }

  if (v30 == 1 && v29 < 0)
  {
    operator delete(v28);
  }

  if (v55 == 1)
  {
    v14 = v53;
    if (v53)
    {
      v15 = v54;
      v16 = v53;
      if (v54 == v53)
      {
LABEL_57:
        v54 = v14;
        operator delete(v16);
        goto LABEL_58;
      }

      while (1)
      {
        v17 = v15;
        if (*(v15 - 16) == 1 && *(v15 - 41) < 0)
        {
          operator delete(*(v15 - 8));
          v15 -= 12;
          if (*(v17 - 72) == 1)
          {
LABEL_52:
            if (*(v17 - 73) < 0)
            {
              operator delete(*v15);
            }
          }
        }

        else
        {
          v15 -= 12;
          if (*(v17 - 72) == 1)
          {
            goto LABEL_52;
          }
        }

        if (v15 == v14)
        {
          v16 = v53;
          goto LABEL_57;
        }
      }
    }
  }

LABEL_58:
  if (v52 == 1 && v51 < 0)
  {
    operator delete(v50);
  }

  if (v49 == 1 && v48 < 0)
  {
    operator delete(v47);
  }

  if (v45 == 1 && v44 < 0)
  {
    operator delete(v43);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v9;
}