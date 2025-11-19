void sub_23EF2F798(void *a1@<X8>)
{
  if ((atomic_load_explicit(qword_27E395870, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_27E395870))
  {
    sub_23EF2F824();
  }

  *a1 = qword_27E395868;
}

void sub_23EF2F8D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF2F90C(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_23EF2F968(exception, a1);
  __cxa_throw(exception, off_278C74490, MEMORY[0x277D825F0]);
}

std::logic_error *sub_23EF2F968(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void *sub_23EF2F9B0(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x245CAC890](v14, a1);
  if (v14[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      v10 = (a1 + *(*a1 - 24));
      std::ios_base::getloc(v10);
      v11 = std::locale::use_facet(&v15, MEMORY[0x277D82680]);
      v9 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v15);
      v6 = v10;
      v10[1].__fmtflags_ = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!sub_23EF2FB5C(v7, a2, v12, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x245CAC8A0](v14);
  return a1;
}

void sub_23EF2FAF4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x245CAC8A0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x23EF2FAD4);
}

uint64_t sub_23EF2FB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_23EF2F8F4();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v19 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v19 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v19 < 0)
      {
        v15 = v14;
        operator delete(__b);
        if (v15 != v12)
        {
          return 0;
        }
      }

      else if (v14 != v12)
      {
        return 0;
      }
    }

    v16 = a4 - a3;
    if (v16 < 1 || (*(*v6 + 96))(v6, a3, v16) == v16)
    {
      *(a5 + 24) = 0;
      return v6;
    }

    return 0;
  }

  return v6;
}

void sub_23EF2FD38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_23EF2FD54(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  *result = a2;
  result[1] = a3;
  if (v3)
  {
    std::mutex::~mutex((v3 + 56));
    v4 = *(v3 + 32);
    if (v4)
    {
      do
      {
        v6 = *v4;
        v7 = *(v4 + 5);
        *(v4 + 5) = 0;
        if (v7)
        {
          sub_23EF352E8((v4 + 40), v7);
        }

        if (v4[39] < 0)
        {
          operator delete(*(v4 + 2));
        }

        operator delete(v4);
        v4 = v6;
      }

      while (v6);
    }

    v5 = *(v3 + 16);
    *(v3 + 16) = 0;
    if (v5)
    {
      operator delete(v5);
    }

    sub_23EF2FE1C((v3 + 8));

    JUMPOUT(0x245CACD00);
  }

  return result;
}

void *sub_23EF2FE1C(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    std::mutex::~mutex((v1 + 56));
    v3 = *(v1 + 32);
    if (v3)
    {
      do
      {
        v5 = *v3;
        v6 = *(v3 + 5);
        *(v3 + 5) = 0;
        if (v6)
        {
          sub_23EF352E8((v3 + 40), v6);
        }

        if (v3[39] < 0)
        {
          operator delete(*(v3 + 2));
        }

        operator delete(v3);
        v3 = v5;
      }

      while (v5);
    }

    v4 = *(v1 + 16);
    *(v1 + 16) = 0;
    if (v4)
    {
      operator delete(v4);
    }

    sub_23EF2FE1C(v1 + 8);
    MEMORY[0x245CACD00](v1, 0x10A0C400EF86968);
    return v2;
  }

  return result;
}

uint64_t sub_23EF2FED0(uint64_t a1, char *__format, ...)
{
  va_start(va, __format);
  v16 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 56))
  {
    operator new();
  }

  v14 = 0;
  va_copy(__dst, va);
  v3 = vsnprintf(__str, 0x200uLL, __format, va);
  if (v3 >= 0x200)
  {
    operator new();
  }

  v4 = v3;
  v5 = *(a1 + 56);
  if (v3 >= 0x17)
  {
    operator new();
  }

  v13 = v3;
  if (v3)
  {
    memmove(__dst, __str, v3);
  }

  *(__dst + v4) = 0;
  if ((v13 & 0x80u) == 0)
  {
    v6 = __dst;
  }

  else
  {
    v6 = __dst[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v7 = v13;
  }

  else
  {
    v7 = __dst[1];
  }

  sub_23EF2F9B0((v5 + 16), v6, v7);
  if (v13 < 0)
  {
    operator delete(__dst[0]);
  }

  v8 = v14;
  if (v14)
  {
    v9 = *v14;
    if (*v14)
    {
      *(v14 + 8) = v9;
      operator delete(v9);
    }

    MEMORY[0x245CACD00](v8, 0x10C402FEFCB83);
  }

  v10 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_23EF30330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_23EF34E4C(va);
  _Unwind_Resume(a1);
}

void sub_23EF30344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    sub_23EF34E4C(&a17);
    _Unwind_Resume(a1);
  }

  sub_23EF34E4C(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_23EF303E4(uint64_t a1)
{
  *(a1 + 176) = 0;
  v2 = MEMORY[0x277D82890] + 104;
  *(a1 + 128) = MEMORY[0x277D82890] + 104;
  v3 = a1 + 16;
  v4 = MEMORY[0x277D82890] + 64;
  *(a1 + 16) = MEMORY[0x277D82890] + 64;
  v5 = a1 + 24;
  v6 = MEMORY[0x277D82818];
  v7 = *(MEMORY[0x277D82818] + 24);
  v8 = *(MEMORY[0x277D82818] + 16);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  *(a1 + 8) = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, (a1 + 24));
  v10 = MEMORY[0x277D82890] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  v11 = v6[5];
  v12 = v6[4];
  *(a1 + 16) = v12;
  *(v3 + *(v12 - 24)) = v11;
  v13 = v6[1];
  *a1 = v13;
  *(a1 + *(v13 - 24)) = v6[6];
  *a1 = v10;
  *(a1 + 128) = v2;
  v14 = MEMORY[0x277D82868] + 16;
  *(a1 + 16) = v4;
  *(a1 + 24) = v14;
  MEMORY[0x245CACAF0](a1 + 32);
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 24;
  sub_23EF36F98(v5);
  return a1;
}

void sub_23EF306C8(_Unwind_Exception *a1)
{
  if (*(v2 + 111) < 0)
  {
    operator delete(*v4);
  }

  *(v2 + 24) = v3;
  std::locale::~locale((v2 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x245CACBF0](v1);
  _Unwind_Resume(a1);
}

void sub_23EF30718(uint64_t a1, void *a2)
{
  *a1 = *a2;
  *(a1 + 31) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  operator new();
}

void sub_23EF308F4(_Unwind_Exception *a1)
{
  sub_23EF3AE8C(v2);
  sub_23EF30BF8((v1 + 40));
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_23EF30980(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 72);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_23EF368EC();
}

void sub_23EF30B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23EF30B38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23EF30B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23EF50F44(va);
  _Unwind_Resume(a1);
}

void *sub_23EF30B60(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    sub_23EF3501C(v1 + 128, *(v1 + 136));
    std::mutex::~mutex((v1 + 64));
    sub_23EF3501C(v1 + 40, *(v1 + 48));
    v3 = *(v1 + 16);
    if (v3)
    {
      do
      {
        v4 = *v3;
        operator delete(v3);
        v3 = v4;
      }

      while (v4);
    }

    v5 = *v1;
    *v1 = 0;
    if (v5)
    {
      operator delete(v5);
    }

    MEMORY[0x245CACD00](v1, 0x10A0C40AA1AA5A8);
    return v2;
  }

  return result;
}

void *sub_23EF30BF8(void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = *(v2 + 8);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v2;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v2 = v5;
    }

    MEMORY[0x245CACD00](v2, 0x30C40EEE2E2AFLL);
    return v3;
  }

  return v1;
}

uint64_t sub_23EF30CA0(uint64_t a1, void *a2, __int128 *a3, uint64_t a4, uint64_t *a5)
{
  *a1 = *a2;
  if (*(a3 + 23) < 0)
  {
    sub_23EF34EA4((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v8;
  }

  v9 = *(a4 + 56);
  *(a1 + 48) = *(a4 + 48);
  *(a1 + 32) = a4;
  *(a1 + 40) = 0;
  *(a1 + 56) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = 0;
  v10 = *a5;
  if (!*a5)
  {
    operator new();
  }

  *a5 = 0;
  *(a1 + 72) = v10;
  return a1;
}

void sub_23EF30DB0(_Unwind_Exception *a1)
{
  sub_23EF3AE8C(v3);
  sub_23EF30BF8(v4);
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_23EF30DDC(uint64_t ***a1, uint64_t a2)
{
  v4 = *a1;
  std::mutex::lock((*a1 + 7));
  v5 = *(a2 + 23);
  v6 = v5;
  v7 = *a2;
  v8 = *(a2 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  if (!v5)
  {
    goto LABEL_15;
  }

  v10 = 0;
  while (v9[v10] == 46)
  {
    if (v5 == ++v10)
    {
      goto LABEL_15;
    }
  }

  if (v10 == -1)
  {
LABEL_15:
    v11 = **a1;
  }

  else
  {
    if (sub_23EF31808(a2))
    {
      if (v6 < 0)
      {
        sub_23EF34EA4(&v14, v7, v8);
      }

      else
      {
        v14 = *a2;
        v15 = *(a2 + 16);
      }
    }

    else
    {
      sub_23EF319B4(a2, &v14);
    }

    v13 = sub_23EF371BC(v4 + 2, &v14);
    if (!v13)
    {
      operator new();
    }

    v11 = v13[5];
    if (SHIBYTE(v15) < 0)
    {
      operator delete(v14);
    }
  }

  std::mutex::unlock((v4 + 7));
  return v11;
}

void sub_23EF316A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36)
{
  v41 = a30;
  a30 = 0;
  if (v41)
  {
    sub_23EF352E8(&a30, v41);
  }

  sub_23EF30B60((v39 - 136));
  sub_23EF3CEC8(&a36);
  MEMORY[0x245CACD00](v37, v36);
  if (*(v39 - 89) < 0)
  {
    operator delete(*(v39 - 112));
  }

  std::mutex::unlock((v38 + 56));
  _Unwind_Resume(a1);
}

BOOL sub_23EF31808(_BYTE *__s)
{
  v1 = __s[23];
  if ((v1 & 0x8000000000000000) == 0)
  {
    if (__s[23])
    {
      v2 = __s;
      v3 = __s[23];
      goto LABEL_6;
    }

    return 1;
  }

  v3 = *(__s + 1);
  if (!v3)
  {
    return 1;
  }

  v2 = *__s;
LABEL_6:
  v4 = 0;
  while (v2[v4] != 46)
  {
    if (v3 == ++v4)
    {
      goto LABEL_13;
    }
  }

  if (v3 != v4 && !v4)
  {
    return 0;
  }

LABEL_13:
  v7 = *__s;
  v6 = *(__s + 1);
  if (v1 >= 0)
  {
    v8 = __s;
  }

  else
  {
    v8 = *__s;
  }

  if (v1 >= 0)
  {
    v9 = __s[23];
  }

  else
  {
    v9 = *(__s + 1);
  }

  v10 = v9;
  while (v10)
  {
    v11 = v8[--v10];
    if (v11 == 46)
    {
      if ((v1 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_26;
    }
  }

  v10 = -1;
  if ((v1 & 0x80000000) == 0)
  {
LABEL_23:
    v7 = __s;
    v6 = __s[23];
    if (v10 == v1 - 1)
    {
      return 0;
    }

    goto LABEL_28;
  }

LABEL_26:
  if (v10 == v6 - 1)
  {
    return 0;
  }

LABEL_28:
  if (v6 >= 2)
  {
    v12 = &v7[v6];
    v13 = v7;
    do
    {
      v14 = memchr(v13, 46, v6 - 1);
      if (!v14)
      {
        break;
      }

      if (*v14 == 11822)
      {
        if (v14 != v12 && v14 - v7 != -1)
        {
          return 0;
        }

        break;
      }

      v13 = v14 + 1;
      v6 = v12 - v13;
    }

    while (v12 - v13 >= 2);
  }

  if (!v9)
  {
    return 1;
  }

  v15 = 0;
  while (memchr("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_.", v8[v15], 0x40uLL))
  {
    if (v9 == ++v15)
    {
      return 1;
    }
  }

  return v15 == -1;
}

void sub_23EF319B4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_23EF31808(a1))
  {
    if (*(a1 + 23) < 0)
    {
      v4 = *a1;
      v5 = *(a1 + 8);

      sub_23EF34EA4(a2, v4, v5);
    }

    else
    {
      *a2 = *a1;
      *(a2 + 16) = *(a1 + 16);
    }

    return;
  }

  if (*(a1 + 23) < 0)
  {
    sub_23EF34EA4(&v78, *a1, *(a1 + 8));
  }

  else
  {
    v78 = *a1;
    v79 = *(a1 + 16);
  }

LABEL_10:
  v6 = HIBYTE(v79);
  v7 = *(&v78 + 1);
  v8 = v78;
  if (v79 >= 0)
  {
    v9 = &v78;
  }

  else
  {
    v9 = v78;
  }

  if (v79 >= 0)
  {
    v10 = HIBYTE(v79);
  }

  else
  {
    v10 = *(&v78 + 1);
  }

  if (v10 >= 2)
  {
    v11 = v9 + v10;
    v12 = v10;
    v13 = v9;
    do
    {
      v14 = memchr(v13, 46, v12 - 1);
      if (!v14)
      {
        break;
      }

      if (*v14 == 11822)
      {
        if (v14 == v11)
        {
          break;
        }

        v15 = v14 - v9;
        if (v14 - v9 == -1)
        {
          break;
        }

        if (v10 < v15)
        {
          sub_23EF35BA8();
        }

        sub_23EF35BC0(&v78, v15, 1uLL);
        goto LABEL_10;
      }

      v13 = (v14 + 1);
      v12 = v11 - v13;
    }

    while (v11 - v13 >= 2);
  }

  if (v10)
  {
    v16 = 0;
    while (*(v9 + v16) != 46)
    {
      if (v10 == ++v16)
      {
        goto LABEL_34;
      }
    }

    if (v10 != v16 && !v16)
    {
      sub_23EF35BC0(&v78, 0, 1uLL);
      v6 = HIBYTE(v79);
      v7 = *(&v78 + 1);
      v8 = v78;
    }
  }

LABEL_34:
  if ((v6 & 0x80u) == 0)
  {
    v17 = &v78;
  }

  else
  {
    v17 = v8;
  }

  if ((v6 & 0x80u) == 0)
  {
    v18 = v6;
  }

  else
  {
    v18 = v7;
  }

  v19 = v17 - 1;
  while (v18)
  {
    v20 = v19[v18--];
    if (v20 == 46)
    {
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_44;
      }

LABEL_47:
      if (v18 == v7 - 1)
      {
        goto LABEL_48;
      }

LABEL_51:
      v21 = *(&v78 + 1);
      if (*(&v78 + 1))
      {
        v22 = v78;
        goto LABEL_53;
      }

LABEL_60:
      *(a2 + 23) = 0;
      *a2 = 0;
      if ((v6 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_161;
    }
  }

  v18 = -1;
  if ((v6 & 0x80) != 0)
  {
    goto LABEL_47;
  }

LABEL_44:
  v7 = v6;
  if (v18 == v6 - 1)
  {
LABEL_48:
    sub_23EF35BC0(&v78, v7, 1uLL);
    LODWORD(v6) = HIBYTE(v79);
    if (SHIBYTE(v79) < 0)
    {
      goto LABEL_51;
    }
  }

  if (!v6)
  {
    goto LABEL_60;
  }

  v21 = v6;
  v22 = &v78;
LABEL_53:
  v23 = (v22 + v21);
  v24 = v21 - 1;
  while (1)
  {
    v25 = memchr("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_.", *v22, 0x40uLL);
    if (!v25 || v25 - "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_." == -1)
    {
      break;
    }

    v22 = (v22 + 1);
    --v24;
    if (v22 == v23)
    {
      goto LABEL_73;
    }
  }

  if (v22 == v23 || (v22 + 1) == v23)
  {
    v23 = v22;
  }

  else
  {
    v27 = 1;
    v23 = v22;
    do
    {
      v28 = *(v22 + v27);
      v29 = memchr("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_.", v28, 0x40uLL);
      if (v29)
      {
        v30 = v29 - "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_." == -1;
      }

      else
      {
        v30 = 1;
      }

      if (!v30)
      {
        *v23 = v28;
        v23 = (v23 + 1);
      }

      ++v27;
      --v24;
    }

    while (v24);
    LODWORD(v6) = HIBYTE(v79);
  }

LABEL_73:
  v32 = *(&v78 + 1);
  v31 = v78;
  if ((v6 & 0x80u) == 0)
  {
    v33 = &v78 + v6;
  }

  else
  {
    v33 = (v78 + *(&v78 + 1));
  }

  if ((v6 & 0x80u) == 0)
  {
    v34 = &v78;
  }

  else
  {
    v34 = v78;
  }

  if ((v6 & 0x80u) == 0)
  {
    v32 = v6;
  }

  v35 = v23 - v34;
  if (v32 < v23 - v34)
  {
    sub_23EF35BA8();
  }

  if (v33 - v23 == -1)
  {
    if ((v6 & 0x80) != 0)
    {
      *(&v78 + 1) = v23 - v34;
    }

    else
    {
      HIBYTE(v79) = v35 & 0x7F;
      v31 = &v78;
    }

    *(v31 + v35) = 0;
  }

  else
  {
    sub_23EF35BC0(&v78, v35, v33 - v23);
  }

  v75 = 0;
  v76 = 0;
  v77 = 0;
  sub_23EF32310(v63, &v78, 24);
  __p[0] = 0;
  __p[1] = 0;
  v62 = 0;
  while (1)
  {
    v37 = sub_23EF325D4(v63, __p, 0x2Eu);
    if ((*(v37 + *(*v37 - 24) + 32) & 5) != 0)
    {
      break;
    }

    v38 = v76;
    if (v76 < v77)
    {
      if (SHIBYTE(v62) < 0)
      {
        sub_23EF34EA4(v76, __p[0], __p[1]);
      }

      else
      {
        v36 = *__p;
        v76[2] = v62;
        *v38 = v36;
      }

      v76 = v38 + 3;
    }

    else
    {
      v76 = sub_23EF350D8(&v75, __p);
    }
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(__p[0]);
  }

  v63[0] = *MEMORY[0x277D82818];
  v39 = v63[0];
  v40 = *(MEMORY[0x277D82818] + 72);
  v41 = *(MEMORY[0x277D82818] + 64);
  *(v63 + *(v63[0] - 24)) = v41;
  v42 = v40;
  v64 = v40;
  v65 = MEMORY[0x277D82878] + 16;
  if (v71 < 0)
  {
    operator delete(v70);
  }

  v65 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v66);
  std::iostream::~basic_iostream();
  MEMORY[0x245CACBF0](v74);
  v43 = HIBYTE(v79);
  if (v79 < 0)
  {
    v43 = *(&v78 + 1);
  }

  if (v43)
  {
    sub_23EF303E4(v63);
    v44 = v75;
    v45 = v76;
    if (v75 != v76)
    {
      if (*(v75 + 23) < 0)
      {
        sub_23EF34EA4(__p, *v75, v75[1]);
      }

      else
      {
        v46 = *v75;
        v62 = v75[2];
        *__p = v46;
      }

      if (SHIBYTE(v62) >= 0)
      {
        v48 = HIBYTE(v62);
      }

      else
      {
        v48 = __p[1];
      }

      if (v48)
      {
        if (SHIBYTE(v62) >= 0)
        {
          v49 = __p;
        }

        else
        {
          v49 = __p[0];
        }

        sub_23EF2F9B0(&v64, v49, v48);
      }

      else
      {
        sub_23EF2F9B0(&v64, "_", 1);
      }

      if (SHIBYTE(v62) < 0)
      {
        operator delete(__p[0]);
      }

      v50 = v44 + 3;
      if ((v44 + 24) != v45)
      {
        do
        {
          if (*(v50 + 23) < 0)
          {
            sub_23EF34EA4(__p, *v50, v50[1]);
          }

          else
          {
            v51 = *v50;
            v62 = v50[2];
            *__p = v51;
          }

          sub_23EF2F9B0(&v64, ".", 1);
          if (SHIBYTE(v62) >= 0)
          {
            v52 = HIBYTE(v62);
          }

          else
          {
            v52 = __p[1];
          }

          if (v52)
          {
            if (SHIBYTE(v62) >= 0)
            {
              v53 = __p;
            }

            else
            {
              v53 = __p[0];
            }

            sub_23EF2F9B0(&v64, v53, v52);
          }

          else
          {
            sub_23EF2F9B0(&v64, "_", 1);
          }

          if (SHIBYTE(v62) < 0)
          {
            operator delete(__p[0]);
          }

          v50 += 3;
        }

        while (v50 != v45);
      }
    }

    if ((v73 & 0x10) != 0)
    {
      v55 = v72;
      if (v72 < v69)
      {
        v72 = v69;
        v55 = v69;
      }

      v56 = &v68;
    }

    else
    {
      if ((v73 & 8) == 0)
      {
        v54 = 0;
        *(a2 + 23) = 0;
        goto LABEL_150;
      }

      v56 = v67;
      v55 = v67[2];
    }

    v57 = *v56;
    v54 = v55 - *v56;
    if (v54 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_23EF2F8F4();
    }

    if (v54 >= 0x17)
    {
      operator new();
    }

    *(a2 + 23) = v54;
    if (v54)
    {
      memmove(a2, v57, v54);
    }

LABEL_150:
    *(a2 + v54) = 0;
    v63[0] = v39;
    *(v63 + *(v39 - 24)) = v41;
    v64 = v42;
    v65 = MEMORY[0x277D82878] + 16;
    if (v71 < 0)
    {
      operator delete(v70);
    }

    v65 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(&v66);
    std::iostream::~basic_iostream();
    MEMORY[0x245CACBF0](v74);
    v47 = v75;
    if (!v75)
    {
      goto LABEL_160;
    }

    goto LABEL_153;
  }

  *(a2 + 23) = 1;
  *a2 = 95;
  v47 = v75;
  if (v75)
  {
LABEL_153:
    v58 = v76;
    v59 = v47;
    if (v76 != v47)
    {
      do
      {
        v60 = *(v58 - 1);
        v58 -= 3;
        if (v60 < 0)
        {
          operator delete(*v58);
        }
      }

      while (v58 != v47);
      v59 = v75;
    }

    v76 = v47;
    operator delete(v59);
  }

LABEL_160:
  if ((v79 & 0x8000000000000000) == 0)
  {
    return;
  }

LABEL_161:
  operator delete(v78);
}

void sub_23EF3228C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  sub_23EF327C8(&a16);
  sub_23EF3291C((v16 - 136));
  if (*(v16 - 89) < 0)
  {
    operator delete(*(v16 - 112));
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_23EF32310(uint64_t *a1, __int128 *a2, int a3)
{
  a1[22] = 0;
  v6 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v7 = a1 + 2;
  v8 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v9 = MEMORY[0x277D82818];
  v10 = *(MEMORY[0x277D82818] + 24);
  v11 = *(MEMORY[0x277D82818] + 16);
  *a1 = v11;
  *(a1 + *(v11 - 24)) = v10;
  a1[1] = 0;
  v12 = (a1 + *(*a1 - 24));
  std::ios_base::init(v12, a1 + 3);
  v13 = MEMORY[0x277D82890] + 24;
  v12[1].__vftable = 0;
  v12[1].__fmtflags_ = -1;
  v14 = v9[5];
  v15 = v9[4];
  a1[2] = v15;
  *(v7 + *(v15 - 24)) = v14;
  v16 = v9[1];
  *a1 = v16;
  *(a1 + *(v16 - 24)) = v9[6];
  *a1 = v13;
  a1[16] = v6;
  a1[2] = v8;
  sub_23EF37374((a1 + 3), a2, a3);
  return a1;
}

void sub_23EF325A0(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x245CACBF0](v1);
  _Unwind_Resume(a1);
}

void *sub_23EF325D4(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x245CAC7C0](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

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

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_23EF32738(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x23EF326F8);
  }

  __cxa_rethrow();
}

uint64_t sub_23EF327C8(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x245CACBF0](a1 + 128);
  return a1;
}

void ***sub_23EF3291C(void ***a1)
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
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_23EF32990(char *a1, char **a2)
{
  v2 = *(a2 + 23);
  if (v2 >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = a2[1];
  }

  v4 = a1[23];
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = *(a1 + 1);
    if (v3 <= v5)
    {
      return 0;
    }
  }

  else
  {
    v5 = a1[23];
    if (v3 <= v4)
    {
      return 0;
    }
  }

  if (!v5)
  {
    return 1;
  }

  if (v2 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if ((v4 & 0x80000000) == 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  if ((v4 & 0x80000000) == 0)
  {
    v9 = a1[23];
  }

  else
  {
    v9 = *(a1 + 1);
  }

  if (v9)
  {
    if (v3 >= v9)
    {
      v10 = &v7[v3];
      v11 = *v8;
      v12 = v3;
      v13 = v7;
      while (1)
      {
        v14 = v12 - v9;
        if (v14 == -1)
        {
          break;
        }

        result = memchr(v13, v11, v14 + 1);
        if (!result)
        {
          return result;
        }

        v15 = result;
        result = memcmp(result, v8, v9);
        if (!result)
        {
          if (v15 == v10 || v15 != v7)
          {
            return result;
          }

          goto LABEL_30;
        }

        result = 0;
        v13 = (v15 + 1);
        v12 = &v10[-v15 - 1];
        if (v12 < v9)
        {
          return result;
        }
      }
    }

    return 0;
  }

LABEL_30:
  if (v7[v9] != 46 || v3 <= v9 + 1)
  {
    return 0;
  }

  while (v7[v9 + 1] == 46)
  {
    result = 0;
    if (v3 - 1 == ++v9)
    {
      return result;
    }
  }

  return v9 != -2;
}

BOOL sub_23EF32B28(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 72);
  std::mutex::lock(v4 + 1);
  std::mutex::lock((a1 + 64));
  v5 = *(a2 + 72);
  v6 = *(v5 + 128);
  if (v6 != v5 + 136)
  {
    v8 = *(v6 + 40);
    v7 = *(v6 + 48);
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    sub_23EF368EC();
  }

  v9 = *(a1 + 152) != 0;
  std::mutex::unlock((a1 + 64));
  std::mutex::unlock(v4 + 1);
  return v9;
}

void sub_23EF32D54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  sub_23EF50F44(va2);
  sub_23EF3AE8C(va1);
  sub_23EF3AE8C(va);
  std::mutex::unlock(v2 + 1);
  std::mutex::unlock(v3 + 1);
  _Unwind_Resume(a1);
}

void sub_23EF32D88(std::mutex *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    sub_23EF3540C(a1, &v5);
  }

  std::mutex::lock(a1 + 1);
  v4 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v8 = v4;
  v9 = v4;
  v6 = 0;
  v7 = 0;
  sub_23EF368EC();
}

void sub_23EF32F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_23EF50F44(va1);
  sub_23EF3AE8C(va);
  std::mutex::unlock(v4 + 1);
  _Unwind_Resume(a1);
}

void *sub_23EF32F5C(void *result, uint64_t a2)
{
  v2 = *(*(a2 + 72) + 16);
  if (v2)
  {
    v3 = result;
    v4 = result[1];
    v5 = *(*(v2 + 16) + 72);
    v6[0] = *v3;
    v6[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    sub_23EF32D88(v5, v6, 0);
  }

  return result;
}

uint64_t **sub_23EF33048(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 72);
  result = v4[6];
  if (result)
  {
    v7 = v4 + 6;
    v8 = v4[6];
    do
    {
      v9 = v8[4];
      v10 = v9 >= a2;
      v11 = v9 < a2;
      if (v10)
      {
        v7 = v8;
      }

      v8 = v8[v11];
    }

    while (v8);
    if (v7 == v4 + 6)
    {
      return 0;
    }

    else if (v7[4] <= a2)
    {
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
        v14 = v7;
        do
        {
          v13 = v14[2];
          v15 = *v13 == v14;
          v14 = v13;
        }

        while (!v15);
      }

      if (v4[5] == v7)
      {
        v4[5] = v13;
      }

      --v4[7];
      sub_23EF36BE4(result, v7);
      v17 = v7[6];
      if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v17->__on_zero_shared)(v17);
        std::__shared_weak_count::__release_weak(v17);
      }

      operator delete(v7);
      v18 = *(a1 + 72);
      if (a3)
      {
        sub_23EF354FC(*(a1 + 72), a2);
        v19 = *(v18 + 152);
      }

      else
      {
        std::mutex::lock((v18 + 64));
        sub_23EF354FC(v18, a2);
        v19 = *(v18 + 152);
        std::mutex::unlock((v18 + 64));
      }

      *(a1 + 64) = v19 != 0;
      v20 = a2;
      sub_23EF33218(&v20, a1);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23EF33218(uint64_t result, uint64_t a2)
{
  v2 = *(*(a2 + 72) + 16);
  if (v2)
  {
    v3 = result;
    do
    {
      v4 = v2[2];
      v5 = *v3;
      v6 = *(v4 + 72);
      std::mutex::lock((v6 + 64));
      sub_23EF354FC(v6, v5);
      v7 = *(v6 + 152);
      std::mutex::unlock((v6 + 64));
      *(v4 + 64) = v7 != 0;
      result = sub_23EF33218(v3, v2[2]);
      v2 = *v2;
    }

    while (v2);
  }

  return result;
}

void sub_23EF332B4(void *a1)
{
  v2 = *a1;
  std::mutex::lock((*a1 + 56));
  v4 = (a1[9] + 64);
  std::mutex::lock(v4);
  while (1)
  {
    v3 = a1[9];
    if (!*(v3 + 56))
    {
      break;
    }

    sub_23EF33048(a1, *(*(v3 + 40) + 32), &v4);
  }

  std::mutex::unlock(v4);
  std::mutex::unlock((v2 + 56));
}

void sub_23EF33340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10)
{
  std::mutex::unlock(a10);
  std::mutex::unlock((v10 + 56));
  _Unwind_Resume(a1);
}

unint64_t sub_23EF3335C(uint64_t a1, const char *a2, int a3, unint64_t a4)
{
  v8 = *(a1 + 72);
  std::mutex::lock(v8 + 1);
  v9 = 40;
  if (a3)
  {
    v9 = 128;
  }

  v10 = (*(a1 + 72) + v9);
  if (!a4)
  {
    goto LABEL_14;
  }

  v11 = v10[1];
  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = v10 + 1;
  do
  {
    v13 = v11[4];
    v14 = v13 >= a4;
    v15 = v13 < a4;
    if (v14)
    {
      v12 = v11;
    }

    v11 = v11[v15];
  }

  while (v11);
  if (v12 == v10 + 1 || (v16 = v12[4], v16 > a4))
  {
LABEL_14:
    if (!a2)
    {
      goto LABEL_25;
    }

    v19 = *v10;
    v18 = v10 + 1;
    v17 = v19;
    if (v19 != v18)
    {
      while (1)
      {
        v20 = (*(*v17[4] + 24))(v17[4]);
        if (v20 == a2 || !strcmp(v20, a2))
        {
          break;
        }

        v21 = v17[1];
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
            v22 = v17[2];
            v23 = *v22 == v17;
            v17 = v22;
          }

          while (!v23);
        }

        v17 = v22;
        if (v22 == v18)
        {
          goto LABEL_25;
        }
      }
    }

    if (v17 == v18)
    {
LABEL_25:
      v16 = 0;
    }

    else
    {
      v16 = v17[4];
    }
  }

  std::mutex::unlock(v8 + 1);
  return v16;
}

void *sub_23EF334B8(void *result, int a2)
{
  v2 = result[5];
  if (!v2)
  {
    std::mutex::lock((*result + 56));
    operator new();
  }

  **v2 = a2;
  return result;
}

void sub_23EF33930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11)
{
  if (a11 == a10)
  {
    v13 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = __p;
    if (!__p)
    {
LABEL_3:
      std::mutex::unlock((v11 + 56));
      _Unwind_Resume(a1);
    }
  }

  operator delete(v13);
  std::mutex::unlock((v11 + 56));
  _Unwind_Resume(a1);
}

void sub_23EF33988(_Unwind_Exception *a1)
{
  MEMORY[0x245CACD00](v2, 0x1000C4052888210);
  MEMORY[0x245CACD00](v1, 0x30C40EEE2E2AFLL);
  std::mutex::unlock((v3 + 56));
  _Unwind_Resume(a1);
}

void sub_23EF339E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23F0530B8(&a9);
  std::mutex::unlock((v9 + 56));
  _Unwind_Resume(a1);
}

uint64_t sub_23EF33A04(uint64_t result, uint64_t a2)
{
  v2 = *(result + 72);
  v3 = *(v2 + 128);
  v4 = (v2 + 136);
  if (v3 != (v2 + 136))
  {
    do
    {
      result = v3[5];
      if (*(result + 8) == 1)
      {
        result = (*(*result + 16))(result, a2);
      }

      v6 = v3[1];
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
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v4);
  }

  return result;
}

void sub_23EF33EC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, char a23)
{
  MEMORY[0x245CACD00](v25, 0x1093C402D7449D9);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x245CACD00](v23, v24);
  _Unwind_Resume(a1);
}

uint64_t sub_23EF33F8C(uint64_t result)
{
  if (*(result + 31) < 0)
  {
    v1 = result;
    operator delete(*(result + 8));
    return v1;
  }

  return result;
}

void *sub_23EF33FD0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(*a1 + 48))(&v4);
  *a2 = v4;
  return result;
}

void sub_23EF34028(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23EF340A0(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = *a2 / 1000 % 1000;
  if (v3 >= 0)
  {
    v4 = *a2 / 1000 % 1000;
  }

  else
  {
    v4 = v3 + 1000;
  }

  *&__t.tm_sec = *a2 - 1000 * v4;
  v17 = std::chrono::system_clock::to_time_t(&__t);
  v5 = localtime_r(&v17, &__t);
  strcpy(__s, "yyyy.mm.dd.HH-MM.SS.fff");
  v6 = strlen(__s);
  strftime(__s, v6, "%Y-%m-%d %H:%M:%S", v5);
  v7 = strlen(__s);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v15 = v7;
  if (v7)
  {
    memcpy(__dst, __s, v7);
  }

  *(__dst + v8) = 0;
  if ((v15 & 0x80u) == 0)
  {
    v9 = __dst;
  }

  else
  {
    v9 = __dst[0];
  }

  if ((v15 & 0x80u) == 0)
  {
    v10 = v15;
  }

  else
  {
    v10 = __dst[1];
  }

  v11 = sub_23EF2F9B0((a1 + 16), v9, v10);
  sub_23EF2F9B0(v11, ",", 1);
  if (v15 < 0)
  {
    operator delete(__dst[0]);
    if (v4 <= 9)
    {
      goto LABEL_18;
    }
  }

  else if (v4 <= 9)
  {
LABEL_18:
    sub_23EF2F9B0((a1 + 16), "00", 2);
    goto LABEL_22;
  }

  if (v4 <= 0x63)
  {
    sub_23EF2F9B0((a1 + 16), "0", 1);
  }

LABEL_22:
  result = MEMORY[0x245CAC950](a1 + 16, v4);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23EF342BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF342F0(uint64_t a1, void **a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (byte_27E393EF7 < 0)
  {
    sub_23EF34EA4(v5, *aPatternlayout, *&aPatternlayout[8]);
  }

  else
  {
    *v5 = *aPatternlayout;
    v6 = unk_27E393EF0;
  }

  v8 = 0x700000000000000;
  *__p = *"ILayout";
  sub_23EF35DB8(a2, v5, v9, 2uLL);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v6) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    operator delete(v5[0]);
    v4 = *MEMORY[0x277D85DE8];
    return;
  }

  if (SHIBYTE(v6) < 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v3 = *MEMORY[0x277D85DE8];
}

void sub_23EF343F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_23F303F10(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_23EF344D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  sub_23EF303E4(v40);
  v6 = *(a1 + 31);
  v39 = a3;
  if ((v6 & 0x8000000000000000) != 0)
  {
    v6 = *(a1 + 16);
    if (v6 < 2)
    {
      goto LABEL_75;
    }

    goto LABEL_5;
  }

  if (v6 >= 2)
  {
LABEL_5:
    v7 = 0;
    v8 = (a1 + 8);
    v9 = 1;
    while (1)
    {
      if (*(a1 + 31) < 0)
      {
        v12 = *(a1 + 31);
        if (*(*v8 + v7) != 37)
        {
LABEL_37:
          v18 = a1 + 8;
          if (v12 < 0)
          {
            v18 = *v8;
          }

          LOBYTE(__dst[0]) = *(v18 + v7);
          sub_23EF2F9B0(&v41, __dst, 1);
          v9 = v7;
          goto LABEL_8;
        }
      }

      else
      {
        v12 = *(a1 + 31);
        if (*(v8 + v7) != 37)
        {
          goto LABEL_37;
        }
      }

      v13 = a1 + 8;
      if (v12 < 0)
      {
        v13 = *v8;
      }

      v14 = (v13 + v9);
      v15 = v6 <= v9 + 1 ? v9 + 1 : v6;
      while (1)
      {
        v16 = *v14;
        if (v16 > 101)
        {
          break;
        }

        if (v16 <= 75)
        {
          if (v16 == 37)
          {
            v26 = "%";
            goto LABEL_52;
          }

          if (v16 == 70)
          {
            v10 = *(a2 + 32);
            v22 = strrchr(v10, 47);
            if (v22)
            {
              v10 = v22 + 1;
            }

            else
            {
              v30 = strrchr(v10, 92);
              if (v30)
              {
                v10 = v30 + 1;
              }
            }

            goto LABEL_7;
          }
        }

        else
        {
          switch(v16)
          {
            case 'L':
              MEMORY[0x245CAC900](&v41, *(a2 + 40));
              goto LABEL_8;
            case 'c':
              v10 = *a2;
LABEL_7:
              v11 = strlen(v10);
              sub_23EF2F9B0(&v41, v10, v11);
              goto LABEL_8;
            case 'd':
              sub_23EF340A0(v40, (a2 + 16));
              goto LABEL_8;
          }
        }

LABEL_34:
        v17 = a1 + 8;
        if (*(a1 + 31) < 0)
        {
          v17 = *v8;
        }

        v14 = (v17 + v9++ + 1);
        if (v9 >= v6)
        {
          v9 = v15;
          goto LABEL_8;
        }
      }

      if (v16 > 111)
      {
        switch(v16)
        {
          case 'p':
            v10 = (&off_278C744B0)[*(a2 + 24)];
            goto LABEL_7;
          case 'r':
            if ((atomic_load_explicit(&qword_27E395890, memory_order_acquire) & 1) == 0)
            {
              sub_23F303ED8();
            }

            MEMORY[0x245CAC950](&v41, (*(a2 + 8) - qword_27E395888) / 1000000);
            goto LABEL_8;
          case 't':
            v23 = pthread_self();
            v24 = 0x9DDFEA08EB382D69 * ((8 * (v23 & 0x1FFFFFFF) + 8) ^ (v23 >> 32));
            v25 = 0x9DDFEA08EB382D69 * ((v23 >> 32) ^ (v24 >> 47) ^ v24);
            MEMORY[0x245CAC920](&v41, 0x9DDFEA08EB382D69 * (v25 ^ (v25 >> 47)));
            goto LABEL_8;
        }

        goto LABEL_34;
      }

      if (v16 == 102)
      {
        v10 = *(a2 + 48);
        goto LABEL_7;
      }

      if (v16 != 109)
      {
        break;
      }

      v19 = *(a2 + 56);
      v20 = *(v19 + 120);
      if ((v20 & 0x10) != 0)
      {
        v27 = *(v19 + 112);
        v28 = *(v19 + 72);
        if (v27 < v28)
        {
          *(v19 + 112) = v28;
          v27 = v28;
        }

        v29 = *(v19 + 64);
        v21 = v27 - v29;
        if (v27 - v29 <= 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_62;
        }

LABEL_91:
        sub_23EF2F8F4();
      }

      if ((v20 & 8) == 0)
      {
        v21 = 0;
        v54 = 0;
        goto LABEL_67;
      }

      v29 = *(v19 + 40);
      v21 = *(v19 + 56) - v29;
      if (v21 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_91;
      }

LABEL_62:
      if (v21 >= 0x17)
      {
        operator new();
      }

      v54 = v21;
      if (v21)
      {
        memmove(__dst, v29, v21);
      }

LABEL_67:
      *(__dst + v21) = 0;
      if ((v54 & 0x80u) == 0)
      {
        v31 = __dst;
      }

      else
      {
        v31 = __dst[0];
      }

      if ((v54 & 0x80u) == 0)
      {
        v32 = v54;
      }

      else
      {
        v32 = __dst[1];
      }

      sub_23EF2F9B0(&v41, v31, v32);
      if (v54 < 0)
      {
        operator delete(__dst[0]);
      }

LABEL_8:
      v7 = v9 + 1;
      v9 += 2;
      if (v9 >= v6)
      {
        goto LABEL_75;
      }
    }

    if (v16 == 110)
    {
      v26 = "\n";
LABEL_52:
      sub_23EF2F9B0(&v41, v26, 1);
      goto LABEL_8;
    }

    goto LABEL_34;
  }

LABEL_75:
  if ((v51 & 0x10) != 0)
  {
    v35 = v50;
    v33 = v39;
    if (v50 < v47)
    {
      v50 = v47;
      v35 = v47;
    }

    v36 = v46;
    v34 = v35 - v46;
    if (v35 - v46 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_90;
    }
  }

  else
  {
    v33 = v39;
    if ((v51 & 8) == 0)
    {
      v34 = 0;
      v39[23] = 0;
      goto LABEL_86;
    }

    v36 = v44;
    v34 = v45 - v44;
    if ((v45 - v44) > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_90:
      sub_23EF2F8F4();
    }
  }

  if (v34 >= 0x17)
  {
    operator new();
  }

  v33[23] = v34;
  if (v34)
  {
    memmove(v33, v36, v34);
  }

LABEL_86:
  v33[v34] = 0;
  v40[0] = *MEMORY[0x277D82818];
  v37 = *(MEMORY[0x277D82818] + 72);
  *(v40 + *(v40[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v41 = v37;
  v42 = MEMORY[0x277D82878] + 16;
  if (v49 < 0)
  {
    operator delete(__p);
  }

  v42 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v43);
  std::iostream::~basic_iostream();
  return MEMORY[0x245CACBF0](&v52);
}

void sub_23EF34B14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF327C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23EF34B5C(uint64_t result)
{
  v1 = *(result + 16);
  *(result + 16) = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void sub_23EF34BB8(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x245CACD00);
}

void sub_23EF34C30(uint64_t a1, uint64_t a2)
{
  if (((1 << (*(a2 + 24) - 1)) | *(a1 + 24)) == *(a1 + 24))
  {
    (*(**(a1 + 16) + 40))(&__p);
    std::mutex::lock(&stru_27E393EA0);
    v3 = *(a2 + 24);
    if ((v3 - 1) < 3)
    {
      if ((atomic_load_explicit(qword_27E395898, memory_order_acquire) & 1) == 0)
      {
        sub_23F303F3C();
      }

      if ((v14 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v14 & 0x80u) == 0)
      {
        v8 = v14;
      }

      else
      {
        v8 = v13;
      }

      sub_23EF2F9B0(qword_27E3958D0, p_p, v8);
      v6 = &qword_27E3958D0;
      if (atomic_load_explicit(qword_27E395898, memory_order_acquire))
      {
        goto LABEL_23;
      }
    }

    else
    {
      if ((v3 - 4) >= 3)
      {
        goto LABEL_24;
      }

      if ((atomic_load_explicit(qword_27E395898, memory_order_acquire) & 1) == 0)
      {
        sub_23F303F3C();
      }

      if ((v14 & 0x80u) == 0)
      {
        v4 = &__p;
      }

      else
      {
        v4 = __p;
      }

      if ((v14 & 0x80u) == 0)
      {
        v5 = v14;
      }

      else
      {
        v5 = v13;
      }

      sub_23EF2F9B0(qword_27E3958D8, v4, v5);
      v6 = &qword_27E3958D8;
      if (atomic_load_explicit(qword_27E395898, memory_order_acquire))
      {
LABEL_23:
        v9 = *v6;
        std::ostream::flush();
LABEL_24:
        std::mutex::unlock(&stru_27E393EA0);
        if (v14 < 0)
        {
          operator delete(__p);
        }

        return;
      }
    }

    v10 = v6;
    v11 = __cxa_guard_acquire(qword_27E395898);
    v6 = v10;
    if (v11)
    {
      qword_27E3958D0 = MEMORY[0x277D82678];
      qword_27E3958D8 = MEMORY[0x277D82670];
      __cxa_guard_release(qword_27E395898);
      v6 = v10;
    }

    goto LABEL_23;
  }
}

void sub_23EF34DDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF34E18()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void *sub_23EF34E4C(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x245CACD00](v1, 0x10C402FEFCB83);
    return v2;
  }

  return result;
}

void *sub_23EF34EA4(_BYTE *a1, const void *a2, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_23EF2F8F4();
  }

  a1[23] = a3;
  v3 = a3 + 1;

  return memmove(a1, a2, v3);
}

void sub_23EF34F64(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23EF34F9C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23EF34FBC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__110shared_ptrIN4tlog8LogLevelEE27__shared_ptr_default_deleteIS2_S2_EE")
  {
    if (((v2 & "NSt3__110shared_ptrIN4tlog8LogLevelEE27__shared_ptr_default_deleteIS2_S2_EE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__110shared_ptrIN4tlog8LogLevelEE27__shared_ptr_default_deleteIS2_S2_EE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIN4tlog8LogLevelEE27__shared_ptr_default_deleteIS2_S2_EE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_23EF3501C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_23EF3501C(a1, *a2);
    sub_23EF3501C(a1, a2[1]);
    v4 = a2[6];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v5 = a2;
    }

    else
    {
      v5 = a2;
    }

    operator delete(v5);
  }
}

uint64_t sub_23EF350D8(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_23EF3AE74();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
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

  v6 = 8 * ((*(a1 + 8) - *a1) >> 3);
  if (*(a2 + 23) < 0)
  {
    sub_23EF34EA4(v6, *a2, *(a2 + 8));
    v6 = 24 * v2;
  }

  else
  {
    *v6 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 16);
  }

  v7 = 24 * v2 + 24;
  v8 = *(a1 + 8) - *a1;
  v9 = v6 - v8;
  memcpy((v6 - v8), *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v7;
}

void sub_23EF35218(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3522C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23EF3522C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_23EF35294(uint64_t a1)
{
  v4 = *(a1 + 24);
  v2 = (a1 + 24);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_23EF352E8(v2, v3);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_23EF352E8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_23EF30B60((a2 + 72));
    v3 = *(a2 + 56);
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = *(a2 + 40);
    *(a2 + 40) = 0;
    if (v4)
    {
      v5 = *(v4 + 8);
      if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v6 = v4;
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
        v4 = v6;
      }

      MEMORY[0x245CACD00](v4, 0x30C40EEE2E2AFLL);
    }

    if (*(a2 + 31) < 0)
    {
      operator delete(*(a2 + 8));
    }

    JUMPOUT(0x245CACD00);
  }
}

void sub_23EF3540C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  sub_23EF368EC();
}

void sub_23EF354E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF50F44(va);
  _Unwind_Resume(a1);
}

void sub_23EF354FC(void *a1, unint64_t a2)
{
  v4 = a1 + 17;
  v3 = a1[17];
  if (v3)
  {
    v5 = v4;
    v6 = v3;
    do
    {
      v7 = v6[4];
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v5 = v6;
      }

      v6 = v6[v9];
    }

    while (v6);
    if (v5 != v4)
    {
      v10 = v5[4];
      if (v10 <= a2)
      {
        if (*(v10 + 8) == 1)
        {
          --a1[19];
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
          v13 = v5;
          do
          {
            v12 = v13[2];
            v14 = *v12 == v13;
            v13 = v12;
          }

          while (!v14);
        }

        if (a1[16] == v5)
        {
          a1[16] = v12;
        }

        --a1[18];
        sub_23EF36BE4(v3, v5);
        v15 = v5[6];
        if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
          v16 = v5;
        }

        else
        {
          v16 = v5;
        }

        operator delete(v16);
      }
    }
  }
}

void *sub_23EF35650(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    sub_23EF34E18();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return sub_23EF404C8(a1, &v11);
}

void sub_23EF359B8(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

const void **sub_23EF35A10(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      v9 = (v7 - v4) >> 2;
      if (v7 == v4)
      {
        v9 = 1;
      }

      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_23EF34E18();
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v5 - 8;
  return result;
}

uint64_t *sub_23EF35BC0(uint64_t *result, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v3 = *(result + 23);
    v4 = v3;
    v5 = result;
    if (v3 < 0)
    {
      v5 = *result;
      v4 = result[1];
      v6 = v4 - a2;
      if (v4 - a2 >= a3)
      {
        v7 = a3;
      }

      else
      {
        v7 = v4 - a2;
      }

      if (v4 - a2 <= a3)
      {
LABEL_7:
        v8 = v4 - v7;
        if ((v3 & 0x80) == 0)
        {
LABEL_8:
          *(result + 23) = v8 & 0x7F;
LABEL_15:
          *(v5 + v8) = 0;
          return result;
        }

LABEL_14:
        result[1] = v8;
        goto LABEL_15;
      }
    }

    else
    {
      v6 = v3 - a2;
      if (v3 - a2 >= a3)
      {
        v7 = a3;
      }

      else
      {
        v7 = v3 - a2;
      }

      if (v3 - a2 <= a3)
      {
        goto LABEL_7;
      }
    }

    v9 = result;
    memmove(v5 + a2, v5 + a2 + v7, v6 - v7);
    result = v9;
    v8 = v4 - v7;
    if ((*(v9 + 23) & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  return result;
}

void sub_23EF35C64(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_23EF35CC0(exception, a1);
  __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
}

std::logic_error *sub_23EF35CC0(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void ***sub_23EF35CF4(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 1);
          if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v6->__on_zero_shared)(v6);
            std::__shared_weak_count::__release_weak(v6);
          }

          v4 -= 16;
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void sub_23EF35DB8(void **a1, const void **a2, const void **a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
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

        while (v10 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v24 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v25 = 2 * v24;
      if (2 * v24 <= a4)
      {
        v25 = a4;
      }

      if (v24 >= 0x555555555555555)
      {
        v26 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v26 = v25;
      }

      if (v26 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    sub_23EF3AE74();
  }

  v13 = a1[1];
  v14 = (v13 - v8);
  if (0xAAAAAAAAAAAAAAABLL * ((v13 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        if (v5 != v8)
        {
          v22 = *(v5 + 23);
          if (v8[23] < 0)
          {
            if (v22 >= 0)
            {
              v20 = v5;
            }

            else
            {
              v20 = *v5;
            }

            if (v22 >= 0)
            {
              v21 = *(v5 + 23);
            }

            else
            {
              v21 = v5[1];
            }

            sub_23EF36678(v8, v20, v21);
          }

          else if ((*(v5 + 23) & 0x80) != 0)
          {
            sub_23EF365A8(v8, *v5, v5[1]);
          }

          else
          {
            v23 = *v5;
            *(v8 + 2) = v5[2];
            *v8 = v23;
          }
        }

        v5 += 3;
        v8 += 24;
      }

      while (v5 != a3);
      v13 = a1[1];
    }

    while (v13 != v8)
    {
      v29 = *(v13 - 1);
      v13 -= 3;
      if (v29 < 0)
      {
        operator delete(*v13);
      }
    }

    a1[1] = v8;
  }

  else
  {
    if (v13 != v8)
    {
      v15 = &v14[a2];
      do
      {
        if (v5 != v8)
        {
          v18 = *(v5 + 23);
          if (v8[23] < 0)
          {
            if (v18 >= 0)
            {
              v16 = v5;
            }

            else
            {
              v16 = *v5;
            }

            if (v18 >= 0)
            {
              v17 = *(v5 + 23);
            }

            else
            {
              v17 = v5[1];
            }

            sub_23EF36678(v8, v16, v17);
          }

          else if ((*(v5 + 23) & 0x80) != 0)
          {
            sub_23EF365A8(v8, *v5, v5[1]);
          }

          else
          {
            v19 = *v5;
            *(v8 + 2) = v5[2];
            *v8 = v19;
          }
        }

        v5 += 3;
        v8 += 24;
        v14 -= 24;
      }

      while (v14);
      v13 = a1[1];
      v5 = v15;
    }

    v30 = v13;
    v27 = v13;
    if (v5 != a3)
    {
      v27 = v13;
      do
      {
        while ((*(v5 + 23) & 0x80000000) == 0)
        {
          v28 = *v5;
          v27[2] = v5[2];
          *v27 = v28;
          v27 += 3;
          v5 += 3;
          v30 = v27;
          if (v5 == a3)
          {
            goto LABEL_55;
          }
        }

        sub_23EF34EA4(v27, *v5, v5[1]);
        v5 += 3;
        v27 = v30 + 3;
        v30 += 3;
      }

      while (v5 != a3);
    }

LABEL_55:
    a1[1] = v27;
  }
}

void sub_23EF3612C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23EF53F00(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_23EF36144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23EF53F00(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

unint64_t sub_23EF3615C(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v23 = *(a2 + a3 - 48);
      v24 = *(a2 + a3 - 40);
      v25 = *(a2 + a3 - 24);
      v26 = *(a2 + a3 - 56);
      v27 = *(a2 + a3 - 16);
      v28 = *(a2 + a3 - 8);
      v29 = v26 + v27;
      v30 = 0x9DDFEA08EB382D69 * (v25 ^ ((0x9DDFEA08EB382D69 * (v25 ^ (v23 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v25 ^ (v23 + a3))));
      v31 = 0x9DDFEA08EB382D69 * (v30 ^ (v30 >> 47));
      v32 = *(a2 + a3 - 64) + a3;
      v33 = v32 + v26 + v23;
      v34 = __ROR8__(v33, 44) + v32;
      v35 = __ROR8__(v24 + v32 + v31, 21);
      v36 = v33 + v24;
      v37 = v34 + v35;
      v38 = v29 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v39 = v38 + v25 + v27;
      v40 = v39 + v28;
      v41 = __ROR8__(v39, 44) + v38 + __ROR8__(v38 + v24 + v28, 21);
      v43 = *a2;
      v42 = a2 + 4;
      v44 = v43 - 0x4B6D499041670D8DLL * v24;
      v45 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v46 = *(v42 - 3);
        v47 = v44 + v36 + v29 + v46;
        v48 = v42[2];
        v49 = v42[3];
        v50 = v42[1];
        v29 = v50 + v36 - 0x4B6D499041670D8DLL * __ROR8__(v29 + v37 + v48, 42);
        v51 = v31 + v40;
        v52 = *(v42 - 2);
        v53 = *(v42 - 1);
        v54 = *(v42 - 4) - 0x4B6D499041670D8DLL * v37;
        v55 = v54 + v40 + v53;
        v56 = v54 + v46 + v52;
        v36 = v56 + v53;
        v57 = __ROR8__(v56, 44) + v54;
        v58 = (0xB492B66FBE98F273 * __ROR8__(v47, 37)) ^ v41;
        v44 = 0xB492B66FBE98F273 * __ROR8__(v51, 33);
        v37 = v57 + __ROR8__(v55 + v58, 21);
        v59 = v44 + v41 + *v42;
        v40 = v59 + v50 + v48 + v49;
        v41 = __ROR8__(v59 + v50 + v48, 44) + v59 + __ROR8__(v29 + v52 + v59 + v49, 21);
        v42 += 8;
        v31 = v58;
        v45 += 64;
      }

      while (v45);
      v60 = v58 - 0x4B6D499041670D8DLL * (v29 ^ (v29 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v40 ^ ((0x9DDFEA08EB382D69 * (v40 ^ v36)) >> 47) ^ (0x9DDFEA08EB382D69 * (v40 ^ v36)))) ^ ((0x9DDFEA08EB382D69 * (v40 ^ ((0x9DDFEA08EB382D69 * (v40 ^ v36)) >> 47) ^ (0x9DDFEA08EB382D69 * (v40 ^ v36)))) >> 47));
      v61 = v44 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v41 ^ ((0x9DDFEA08EB382D69 * (v41 ^ v37)) >> 47) ^ (0x9DDFEA08EB382D69 * (v41 ^ v37)))) ^ ((0x9DDFEA08EB382D69 * (v41 ^ ((0x9DDFEA08EB382D69 * (v41 ^ v37)) >> 47) ^ (0x9DDFEA08EB382D69 * (v41 ^ v37)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v61 ^ ((0x9DDFEA08EB382D69 * (v61 ^ v60)) >> 47) ^ (0x9DDFEA08EB382D69 * (v61 ^ v60)))) ^ ((0x9DDFEA08EB382D69 * (v61 ^ ((0x9DDFEA08EB382D69 * (v61 ^ v60)) >> 47) ^ (0x9DDFEA08EB382D69 * (v61 ^ v60)))) >> 47));
    }

    else
    {
      v6 = *(a2 + a3 - 16);
      v7 = *a2 - 0x3C5A37A36834CED9 * (v6 + a3);
      v9 = a2[2];
      v8 = a2[3];
      v10 = __ROR8__(v7 + v8, 52);
      v11 = v7 + a2[1];
      v12 = __ROR8__(v11, 7);
      v13 = v11 + v9;
      v14 = *(a2 + a3 - 32) + v9;
      v15 = v12 + __ROR8__(*a2 - 0x3C5A37A36834CED9 * (v6 + a3), 37) + v10 + __ROR8__(v13, 31);
      v16 = *(a2 + a3 - 24) + v14 + v6;
      v17 = 0xC3A5C85C97CB3127 * (v16 + *(a2 + a3 - 8) + v8 + v15) - 0x651E95C4D06FBFB1 * (v13 + v8 + __ROR8__(v14, 37) + __ROR8__(*(a2 + a3 - 24) + v14, 7) + __ROR8__(*(a2 + a3 - 8) + v8 + v14, 52) + __ROR8__(v16, 31));
      return 0x9AE16A3B2F90404FLL * ((v15 - 0x3C5A37A36834CED9 * (v17 ^ (v17 >> 47))) ^ ((v15 - 0x3C5A37A36834CED9 * (v17 ^ (v17 >> 47))) >> 47));
    }
  }

  else if (a3 > 0x10)
  {
    v18 = a2[1];
    v19 = 0xB492B66FBE98F273 * *a2;
    v20 = __ROR8__(0x9AE16A3B2F90404FLL * *(a2 + a3 - 8), 30) + __ROR8__(v19 - v18, 43);
    v21 = v19 + a3 + __ROR8__(v18 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a2 + a3 - 8);
    v22 = 0x9DDFEA08EB382D69 * ((v20 - 0x3C5A37A36834CED9 * *(a2 + a3 - 16)) ^ v21);
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) ^ ((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) >> 47));
  }

  else if (a3 < 9)
  {
    if (a3 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a3)
      {
        v64 = (0xC949D7C7509E6557 * (a3 | (4 * *(a2 + a3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a2 | (*(a2 + (a3 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v64 ^ (v64 >> 47));
      }
    }

    else
    {
      v62 = *(a2 + a3 - 4);
      v63 = 0x9DDFEA08EB382D69 * (((8 * *a2) + a3) ^ v62);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v62 ^ (v63 >> 47) ^ v63)) ^ ((0x9DDFEA08EB382D69 * (v62 ^ (v63 >> 47) ^ v63)) >> 47));
    }
  }

  else
  {
    v3 = *(a2 + a3 - 8);
    v4 = __ROR8__(v3 + a3, a3);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a2)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a2)))) >> 47))) ^ v3;
  }

  return result;
}

_BYTE *sub_23EF365A8(_BYTE *__dst, const void *a2, size_t __len)
{
  if (__len > 0x16)
  {
    if (__len - 0x7FFFFFFFFFFFFFF7 > 0x800000000000001ELL)
    {
      operator new();
    }

    sub_23EF2F8F4();
  }

  __dst[23] = __len;
  v5 = __dst;
  if (__len)
  {
    memmove(__dst, a2, __len);
    v5 = __dst;
  }

  v5[__len] = 0;
  return __dst;
}

void **sub_23EF36678(void **a1, const void *a2, size_t __len)
{
  v5 = a1[2];
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) <= __len)
  {
    if (0x7FFFFFFFFFFFFFF7 - (v5 & 0x7FFFFFFFFFFFFFFFLL) >= __len - (v5 & 0x7FFFFFFFFFFFFFFFLL) + 1)
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        v7 = *a1;
      }

      operator new();
    }

    sub_23EF2F8F4();
  }

  v6 = *a1;
  a1[1] = __len;
  if (__len)
  {
    memmove(v6, a2, __len);
  }

  *(v6 + __len) = 0;
  return a1;
}

void *sub_23EF367A0(void *result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3 != a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_23EF3AE74();
  }

  return result;
}

void sub_23EF368CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  sub_23EF53F00(&a11);
  *(v11 + 8) = v12;
  sub_23EF53E7C(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_23EF36A38(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 == result)
  {
    return result;
  }

  while (1)
  {
    v2 = a2[2];
    if (v2[3])
    {
      return result;
    }

    v3 = v2[2];
    v4 = *v3;
    if (*v3 != v2)
    {
      break;
    }

    v8 = v3[1];
    if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
    {
      if (*v2 == a2)
      {
        v20 = a2[2];
        *(v2 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = v2[1];
        v11 = *v10;
        v2[1] = *v10;
        v12 = v2;
        if (v11)
        {
          v11[2] = v2;
          v3 = v2[2];
          v12 = *v3;
        }

        v10[2] = v3;
        v3[v12 != v2] = v10;
        *v10 = v2;
        v2[2] = v10;
        v3 = v10[2];
        v4 = *v3;
        *(v10 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
LABEL_15:
          *(v13 + 16) = v3;
        }
      }

      v14 = v3[2];
      v14[*v14 != v3] = v4;
      v4[1] = v3;
      v4[2] = v14;
      v3[2] = v4;
      return result;
    }

LABEL_3:
    *(v2 + 24) = 1;
    a2 = v3;
    *(v3 + 24) = v3 == result;
    *v7 = 1;
    if (v3 == result)
    {
      return result;
    }
  }

  if (v4)
  {
    v6 = *(v4 + 24);
    v5 = v4 + 3;
    if (v6 != 1)
    {
      v7 = v5;
      goto LABEL_3;
    }
  }

  v15 = *v2;
  if (*v2 == a2)
  {
    v16 = *(v15 + 8);
    *v2 = v16;
    if (v16)
    {
      *(v16 + 16) = v2;
      v3 = v2[2];
    }

    v3[*v3 != v2] = v15;
    *(v15 + 8) = v2;
    *(v15 + 16) = v3;
    v2[2] = v15;
    v3 = *(v15 + 16);
  }

  else
  {
    v15 = a2[2];
  }

  *(v15 + 24) = 1;
  *(v3 + 24) = 0;
  v17 = v3[1];
  v18 = *v17;
  v3[1] = *v17;
  if (v18)
  {
    *(v18 + 16) = v3;
  }

  v19 = v3[2];
  v17[2] = v19;
  v19[*v19 != v3] = v17;
  *v17 = v3;
  v3[2] = v17;
  return result;
}

uint64_t **sub_23EF36BE4(uint64_t **result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      v5 = 0;
      v6 = a2[2];
      *(v2 + 16) = v6;
      v7 = *v6;
      if (*v6 == a2)
      {
        goto LABEL_10;
      }

LABEL_6:
      v6[1] = v2;
      v8 = *(v3 + 24);
      if (v3 == a2)
      {
        goto LABEL_7;
      }

LABEL_16:
      v9 = a2[2];
      v9[*v9 != a2] = v3;
      v3[2] = v9;
      v11 = *a2;
      v10 = a2[1];
      *(v11 + 16) = v3;
      *v3 = v11;
      v3[1] = v10;
      if (v10)
      {
        *(v10 + 16) = v3;
      }

      *(v3 + 24) = *(a2 + 24);
      if (result == a2)
      {
        result = v3;
      }

      if (!result)
      {
        return result;
      }

      goto LABEL_21;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (!v2)
  {
    v6 = v3[2];
    v5 = 1;
    v7 = *v6;
    if (*v6 == v3)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v5 = 0;
  v6 = v3[2];
  *(v2 + 16) = v6;
  v7 = *v6;
  if (*v6 != v3)
  {
    goto LABEL_6;
  }

LABEL_10:
  *v6 = v2;
  if (v3 == result)
  {
    v7 = 0;
    result = v2;
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = v6[1];
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

LABEL_7:
  if (!result)
  {
    return result;
  }

LABEL_21:
  if (!v8)
  {
    return result;
  }

  if (!v5)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v14 = v7[2];
    v15 = *v14;
    v16 = *(v7 + 24);
    if (*v14 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v14 + 24) = 0;
      v17 = v14[1];
      v18 = *v17;
      v14[1] = *v17;
      if (v18)
      {
        *(v18 + 16) = v14;
      }

      v19 = v14[2];
      v17[2] = v19;
      v19[*v19 != v14] = v17;
      *v17 = v14;
      v14[2] = v17;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v20 = *v7;
    if (*v7 && *(v20 + 24) != 1)
    {
      v21 = v7[1];
      if (!v21)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v21 + 24) == 1)
      {
LABEL_62:
        *(v20 + 24) = 1;
        *(v7 + 24) = 0;
        v29 = v20[1];
        *v7 = v29;
        if (v29)
        {
          *(v29 + 16) = v7;
        }

        v30 = v7[2];
        v30[*v30 != v7] = v20;
        v20[1] = v7;
        v20[2] = v30;
        v7[2] = v20;
        v21 = v7;
      }

      else
      {
        v20 = v7;
      }

      v31 = v20[2];
      *(v20 + 24) = *(v31 + 24);
      *(v31 + 24) = 1;
      *(v21 + 24) = 1;
      v32 = *(v31 + 8);
      v33 = *v32;
      *(v31 + 8) = *v32;
      if (v33)
      {
        *(v33 + 16) = v31;
      }

      v34 = *(v31 + 16);
      v32[2] = v34;
      v34[*v34 != v31] = v32;
      *v32 = v31;
      *(v31 + 16) = v32;
      return result;
    }

    v21 = v7[1];
    if (v21 && *(v21 + 24) != 1)
    {
      goto LABEL_61;
    }

    *(v7 + 24) = 0;
    v12 = v7[2];
    if (v12 == result || (v12[3] & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_28:
    v7 = v12[2][*v12[2] == v12];
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v14 + 24) = 0;
    v22 = v15[1];
    *v14 = v22;
    if (v22)
    {
      v22[2] = v14;
    }

    v23 = v14[2];
    v23[*v23 != v14] = v15;
    v15[1] = v14;
    v15[2] = v23;
    v14[2] = v15;
    v24 = v7[1];
    if (result == v24)
    {
      result = v7;
    }

    v7 = *v24;
  }

  v25 = *v7;
  if (*v7 && *(v25 + 24) != 1)
  {
    goto LABEL_69;
  }

  v26 = v7[1];
  if (!v26 || *(v26 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v12 = v7[2];
    if (*(v12 + 24) != 1 || v12 == result)
    {
LABEL_59:
      *(v12 + 24) = 1;
      return result;
    }

    goto LABEL_28;
  }

  if (v25 && (v25[3] & 1) == 0)
  {
LABEL_69:
    v26 = v7;
  }

  else
  {
    *(v26 + 24) = 1;
    *(v7 + 24) = 0;
    v27 = *v26;
    v7[1] = *v26;
    if (v27)
    {
      *(v27 + 16) = v7;
    }

    v28 = v7[2];
    v26[2] = v28;
    v28[*v28 != v7] = v26;
    *v26 = v7;
    v7[2] = v26;
    v25 = v7;
  }

  v35 = v26[2];
  *(v26 + 24) = *(v35 + 24);
  *(v35 + 24) = 1;
  *(v25 + 24) = 1;
  v36 = *v35;
  v37 = *(*v35 + 8);
  *v35 = v37;
  if (v37)
  {
    *(v37 + 16) = v35;
  }

  v38 = v35[2];
  v38[*v38 != v35] = v36;
  *(v36 + 8) = v35;
  *(v36 + 16) = v38;
  v35[2] = v36;
  return result;
}

uint64_t sub_23EF36F98(uint64_t result)
{
  *(result + 88) = 0;
  v1 = result + 64;
  v2 = *(result + 87);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = result + 64;
    v4 = *(result + 87);
    v5 = *(result + 96);
    if ((v5 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = *(result + 64);
  v4 = *(result + 72);
  v5 = *(result + 96);
  if ((v5 & 8) != 0)
  {
LABEL_3:
    *(result + 88) = v3 + v4;
    *(result + 16) = v3;
    *(result + 24) = v3;
    *(result + 32) = v3 + v4;
  }

LABEL_4:
  if ((v5 & 0x10) == 0)
  {
    return result;
  }

  *(result + 88) = v3 + v4;
  if ((v2 & 0x80000000) != 0)
  {
    v2 = *(result + 72);
    v6 = (*(result + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v2 >= v6)
    {
      v1 = *(result + 64);
      *(result + 72) = v6;
LABEL_14:
      *(v1 + v6) = 0;
      v8 = *(result + 87);
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v6 = 22;
    if (v2 > 0x15)
    {
      *(result + 87) = 22;
      goto LABEL_14;
    }
  }

  v7 = result;
  std::string::append((result + 64), v6 - v2, 0);
  result = v7;
  v8 = *(v7 + 87);
  if ((v8 & 0x8000000000000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_15:
  v8 = *(result + 72);
LABEL_16:
  *(result + 40) = v3;
  *(result + 48) = v3;
  *(result + 56) = v3 + v8;
  if ((*(result + 96) & 3) != 0)
  {
    if (v4 >> 31)
    {
      v9 = ((v4 - 0x80000000) * 0x200000005uLL) >> 64;
      v10 = 0x7FFFFFFF * ((v9 + ((v4 - 0x80000000 - v9) >> 1)) >> 30);
      v3 += v10 + 0x7FFFFFFF;
      v4 = v4 - v10 - 0x7FFFFFFF;
      *(result + 48) = v3;
    }

    if (v4)
    {
      *(result + 48) = v3 + v4;
    }
  }

  return result;
}

void sub_23EF370E4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23EF3711C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_23EF3714C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000023F30F7BCLL)
  {
    if (((v2 & 0x800000023F30F7BCLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000023F30F7BCLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023F30F7BCLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t **sub_23EF371BC(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_23EF3615C(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = v2[23];
    if (v13 >= 0)
    {
      v14 = v2[23];
    }

    else
    {
      v14 = *(v2 + 1);
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v20 == v8)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v16 == v8)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

uint64_t sub_23EF37374(uint64_t a1, __int128 *a2, int a3)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x245CACAF0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  if ((a1 + 64) != a2)
  {
    if (*(a2 + 23) < 0)
    {
      sub_23EF365A8((a1 + 64), *a2, *(a2 + 1));
    }

    else
    {
      v6 = *a2;
      *(a1 + 80) = *(a2 + 2);
      *(a1 + 64) = v6;
    }
  }

  sub_23EF36F98(a1);
  return a1;
}

void sub_23EF37444(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void *sub_23EF3746C(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = HIDWORD(*a2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_23;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v10[1];
      if (v12 == v5)
      {
        if (v10[2] == v2)
        {
          return v10;
        }
      }

      else if ((v12 & (*&v6 - 1)) != v8)
      {
        goto LABEL_23;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_23;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  if (v10[2] != v2)
  {
    goto LABEL_12;
  }

  return v10;
}

void sub_23EF377D8(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_23EF34E18();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t *sub_23EF3796C@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
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

  v6 = *result;
  v7 = *(*result + 8 * v4);
  do
  {
    v8 = v7;
    v7 = *v7;
  }

  while (v7 != a2);
  if (v8 == result + 2)
  {
    goto LABEL_18;
  }

  v9 = v8[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v9 >= *&v3)
    {
      v9 %= *&v3;
    }
  }

  else
  {
    v9 &= *&v3 - 1;
  }

  if (v9 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v10 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v10 >= *&v3)
      {
        v10 %= *&v3;
      }
    }

    else
    {
      v10 &= *&v3 - 1;
    }

    if (v10 != v4)
    {
LABEL_19:
      *(v6 + 8 * v4) = 0;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    v12 = *(v11 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v12 >= *&v3)
      {
        v12 %= *&v3;
      }
    }

    else
    {
      v12 &= *&v3 - 1;
    }

    if (v12 != v4)
    {
      *(v6 + 8 * v12) = v8;
      v11 = *a2;
    }
  }

  *v8 = v11;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void *sub_23EF37AA4(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = HIDWORD(*a2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_23;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v10[1];
      if (v12 == v5)
      {
        if (v10[2] == v2)
        {
          return v10;
        }
      }

      else if ((v12 & (*&v6 - 1)) != v8)
      {
        goto LABEL_23;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_23;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  if (v10[2] != v2)
  {
    goto LABEL_12;
  }

  return v10;
}

uint64_t **sub_23EF37E10(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_23EF3615C(&v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    operator new();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_23EF381EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF38204(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_23EF38204(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 40);
      *(v2 + 40) = 0;
      if (v3)
      {
        sub_23EF352E8(v2 + 40, v3);
      }

      if (*(v2 + 39) < 0)
      {
        operator delete(*(v2 + 16));
      }
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_23EF3826C(void *result, void *a2, unint64_t a3)
{
  v5 = result;
  v6 = result[1];
  v7 = result[2];
  if (v7 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((v7 - v6) << 6) - 1;
  }

  v9 = result[5];
  v10 = v9 + result[4];
  v11 = v8 - v10;
  if (a3 > v11)
  {
    result = sub_23EF383D4(result, a3 - v11);
    v9 = v5[5];
    v6 = v5[1];
    v7 = v5[2];
    v10 = v5[4] + v9;
  }

  v12 = (v6 + 8 * (v10 >> 9));
  if (v7 != v6)
  {
    v13 = *v12 + 8 * (v10 & 0x1FF);
    v14 = v13;
    if (a3)
    {
      goto LABEL_8;
    }

LABEL_11:
    v16 = v12;
    goto LABEL_22;
  }

  v13 = 0;
  v14 = 0;
  if (!a3)
  {
    goto LABEL_11;
  }

LABEL_8:
  v15 = a3 + ((v14 - *v12) >> 3);
  if (v15 < 1)
  {
    v17 = 511 - v15;
    v16 = &v12[-(v17 >> 9)];
    v14 = *v16 + 8 * (~v17 & 0x1FF);
  }

  else
  {
    v16 = &v12[v15 >> 9];
    v14 = *v16 + 8 * (v15 & 0x1FF);
  }

LABEL_22:
  while (v13 != v14)
  {
    v18 = v14;
    if (v12 != v16)
    {
      v18 = *v12 + 4096;
    }

    if (v13 == v18)
    {
      v5[5] = v9;
      if (v12 == v16)
      {
        return result;
      }
    }

    else
    {
      v19 = v13;
      do
      {
        *v19++ = a2[2];
        a2 = *a2;
      }

      while (v19 != v18);
      v9 = v5[5] + ((v18 - v13) >> 3);
      v5[5] = v9;
      if (v12 == v16)
      {
        return result;
      }
    }

    v20 = v12[1];
    ++v12;
    v13 = v20;
  }

  return result;
}

void *sub_23EF383D4(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0x1FF) != 0)
  {
    v5 = (v4 >> 9) + 1;
  }

  else
  {
    v5 = v4 >> 9;
  }

  v6 = result[4];
  if (v5 >= v6 >> 9)
  {
    v7 = v6 >> 9;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 9)
  {
    for (result[4] = v6 - (v7 << 9); v7; --v7)
    {
      v12 = v2[1];
      v15 = *v12;
      v2[1] = v12 + 1;
      result = sub_23EF404C8(v2, &v15);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    v10 = v3 >> 3;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      if (v9 >> 2 <= v8 + v10)
      {
        v11 = v8 + v10;
      }

      else
      {
        v11 = v9 >> 2;
      }

      v14 = result[4];
      if (v11)
      {
        if (!(v11 >> 61))
        {
          operator new();
        }

        sub_23EF34E18();
      }

      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= v7 << 9; v7; --v7)
    {
      v13 = v2[1];
      v15 = *v13;
      v2[1] = v13 + 1;
      result = sub_23EF404C8(v2, &v15);
    }
  }

  return result;
}

void sub_23EF38A68(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF38AD8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23EF38B10(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 16);
    *(v1 + 16) = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23EF38B94(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__110shared_ptrIN4tlog15ConsoleAppenderEE27__shared_ptr_default_deleteIS2_S2_EE")
  {
    if (((v2 & "NSt3__110shared_ptrIN4tlog15ConsoleAppenderEE27__shared_ptr_default_deleteIS2_S2_EE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__110shared_ptrIN4tlog15ConsoleAppenderEE27__shared_ptr_default_deleteIS2_S2_EE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIN4tlog15ConsoleAppenderEE27__shared_ptr_default_deleteIS2_S2_EE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_23EF38BF4(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 16);
    *(v1 + 16) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    MEMORY[0x245CACD00](v1, 0x10A1C40503A8522);
    return v2;
  }

  return result;
}

void sub_23EF38C6C()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

uint64_t sub_23EF38CC4(uint64_t result)
{
  v1 = *(result + 32);
  *(result + 32) = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void sub_23EF38D20(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x245CACD00);
}

atomic_uint *AmbientSceneSessionRelease(atomic_uint *result)
{
  if (result)
  {
    if (atomic_fetch_add(result + 10, 0xFFFFFFFF) == 1)
    {
      return (*(*result + 8))();
    }
  }

  return result;
}

uint64_t AmbientSceneSessionRetain(uint64_t result)
{
  if (result)
  {
    atomic_fetch_add((result + 40), 1u);
  }

  return result;
}

uint64_t AmbientSceneSessionCreate()
{
  v0 = operator new(0x30uLL, MEMORY[0x277D826F0]);
  if (v0)
  {
    v0[1] = 3;
    *(v0 + 1) = xmmword_23F30F920;
    operator new();
  }

  return 0;
}

uint64_t sub_23EF38E9C(void *a1)
{
  MEMORY[0x245CACD00](v2, 0x1093C40AC7D6133);
  MEMORY[0x245CACCF0](v1, MEMORY[0x277D826F0]);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  return 0;
}

uint64_t AmbientSceneSessionCreateWithConfig(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = operator new(0x30uLL, MEMORY[0x277D826F0]);
  if (v2)
  {
    *(v2 + 8) = *(a1 + 8);
    *(v2 + 3) = *(a1 + 24);
    v4 = *(v2 + 1);
    v5 = *(v2 + 1);
    operator new();
  }

  return 0;
}

void sub_23EF3912C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  operator delete(v21);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23EF39168(void *a1)
{
  MEMORY[0x245CACD00](v2, 0x1093C40AC7D6133);
  MEMORY[0x245CACCF0](v1, MEMORY[0x277D826F0]);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23EF39110);
}

uint64_t AmbientSceneSessionAddObservation(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v5 = 15;
    strcpy(v4, "Session is NULL");
    operator new();
  }

  if (!a2)
  {
    operator new();
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), a2 + 8);
  (*(**(a1 + 32) + 24))(v4);
  if ((v7 & 1) == 0)
  {
    operator new();
  }

  if (v6)
  {
    return v4[0];
  }

  else
  {
    return 0;
  }
}

void sub_23EF396C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  operator delete(v21);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

atomic_uint *AmbientSceneFusionResultRelease(atomic_uint *result)
{
  if (result)
  {
    if (atomic_fetch_add(result + 14, 0xFFFFFFFF) == 1)
    {
      return (*(*result + 8))();
    }
  }

  return result;
}

double AmbientSceneSessionCreateFusionResult(uint64_t a1)
{
  if (!a1)
  {
    BYTE7(v7) = 15;
    strcpy(&v6, "Session is NULL");
    operator new();
  }

  (*(**(a1 + 32) + 24))(&v6);
  if ((v9 & 1) == 0)
  {
    operator new();
  }

  *v3 = v6;
  v4 = v7;
  v5 = v8;
  v1 = operator new(0x40uLL, MEMORY[0x277D826F0]);
  if (v1)
  {
    *(v1 + 8) = *v3;
    *(v1 + 24) = v4;
    result = *&v5;
    *(v1 + 40) = v5;
    *(v1 + 14) = 1;
    *v1 = &unk_285178758;
  }

  return result;
}

void sub_23EF39B20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, char a22)
{
  operator delete(v22);
  if (*(v23 - 65) < 0)
  {
    operator delete(*(v23 - 88));
  }

  _Unwind_Resume(a1);
}

uint64_t AmbientSceneSessionGetCurrentDecayRate(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v1 = *(**(a1 + 32) + 32);

  return v1();
}

void sub_23EF39D4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  operator delete(v18);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t AmbientSceneSessionGetCurrentWindowExpiryDurationSecs(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v1 = *(**(a1 + 32) + 40);

  return v1();
}

void sub_23EF39F64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  operator delete(v18);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

atomic_uint *AmbientSceneSessionConfigRelease(atomic_uint *result)
{
  if (result)
  {
    if (atomic_fetch_add(result + 8, 0xFFFFFFFF) == 1)
    {
      return (*(*result + 8))();
    }
  }

  return result;
}

float *AmbientSceneSessionConfigCreate(double a1, double a2, float a3, float a4, float a5, float a6)
{
  result = operator new(0x28uLL, MEMORY[0x277D826F0]);
  if (result)
  {
    *(result + 1) = 3;
    result[4] = a3;
    result[5] = a4;
    result[6] = a5;
    result[7] = a6;
    *(result + 8) = 1;
    *result = &unk_2851786E8;
  }

  return result;
}

uint64_t AmbientSceneFusionResultGetCount(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return *(a1 + 48);
}

void sub_23EF3A248(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  operator delete(v18);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t AmbientSceneFusionResultCreateSceneTypesAndConfidencesArrays(void *a1, __CFArray **a2, __CFArray **a3)
{
  if (!a1)
  {
    operator new();
  }

  if (!a2 || !a3)
  {
    operator new();
  }

  v4 = a1[6];
  if (!v4)
  {
    operator new();
  }

  if (v4 >= 5)
  {
    v7 = 5;
  }

  else
  {
    v7 = a1[6];
  }

  v8 = *MEMORY[0x277CBECE8];
  v9 = MEMORY[0x277CBF128];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], v7, MEMORY[0x277CBF128]);
  v11 = CFArrayCreateMutable(v8, v7, v9);
  v12 = CFNumberCreate(v8, kCFNumberIntType, a1 + 1);
  v13 = CFNumberCreate(v8, kCFNumberFloatType, a1 + 12);
  CFArrayAppendValue(Mutable, v12);
  CFRelease(v12);
  CFArrayAppendValue(v11, v13);
  CFRelease(v13);
  if (v4 != 1)
  {
    v14 = CFNumberCreate(v8, kCFNumberIntType, a1 + 2);
    v15 = CFNumberCreate(v8, kCFNumberFloatType, a1 + 20);
    CFArrayAppendValue(Mutable, v14);
    CFRelease(v14);
    CFArrayAppendValue(v11, v15);
    CFRelease(v15);
    if (v4 != 2)
    {
      v16 = CFNumberCreate(v8, kCFNumberIntType, a1 + 3);
      v17 = CFNumberCreate(v8, kCFNumberFloatType, a1 + 28);
      CFArrayAppendValue(Mutable, v16);
      CFRelease(v16);
      CFArrayAppendValue(v11, v17);
      CFRelease(v17);
      if (v4 != 3)
      {
        v18 = CFNumberCreate(v8, kCFNumberIntType, a1 + 4);
        v19 = CFNumberCreate(v8, kCFNumberFloatType, a1 + 36);
        CFArrayAppendValue(Mutable, v18);
        CFRelease(v18);
        CFArrayAppendValue(v11, v19);
        CFRelease(v19);
        if (v4 != 4)
        {
          v20 = CFNumberCreate(v8, kCFNumberIntType, a1 + 5);
          v21 = CFNumberCreate(v8, kCFNumberFloatType, a1 + 44);
          CFArrayAppendValue(Mutable, v20);
          CFRelease(v20);
          CFArrayAppendValue(v11, v21);
          CFRelease(v21);
        }
      }
    }
  }

  *a2 = Mutable;
  *a3 = v11;
  return 1;
}

void sub_23EF3A814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  operator delete(v20);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_23EF3A868(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *(result + 32) = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_23EF3A8A4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x245CACD00);
}

atomic_uint *AmbientSceneFrameBundleRelease(atomic_uint *result)
{
  if (result)
  {
    if (atomic_fetch_add(result + 15, 0xFFFFFFFF) == 1)
    {
      return (*(*result + 8))();
    }
  }

  return result;
}

void sub_23EF3AA44(void *a1)
{
  MEMORY[0x245CACCF0](v1, MEMORY[0x277D826F0]);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23EF3AA20);
}

void *AmbientSceneFrameBundleCreateWithSceneTypesAndConfidences(const __CFArray *a1, const __CFArray *a2, double a3, __n128 a4)
{
  Count = CFArrayGetCount(a1);
  if (Count != CFArrayGetCount(a2))
  {
    operator new();
  }

  if (Count)
  {
    if (!(Count >> 61))
    {
      operator new();
    }

    sub_23EF3AE74();
  }

  v7 = operator new(0x40uLL, MEMORY[0x277D826F0]);
  if (v7)
  {
    v7[3] = 0;
    v7[1] = (a3 * 1000000000.0);
    *(v7 + 16) = 0;
    v7[4] = 0;
    v7[5] = 0;
    v7[6] = a4.n128_u64[0];
    *(v7 + 14) = a4.n128_u32[2];
    *(v7 + 15) = 1;
    *v7 = &unk_2851787C8;
  }

  return v7;
}

void sub_23EF3ADE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  operator delete(v20);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_23EF3AE8C(uint64_t result)
{
  v1 = *(result + 8);
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

void sub_23EF3AF04(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_285178848;
  v2 = *(a2 + 16);
  *(a1 + 8) = *a2;
  *(a1 + 24) = v2;
  operator new();
}

void sub_23EF3B0A8(_Unwind_Exception *a1)
{
  sub_23EF4032C(v2);
  if (*(v1 + 55) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_23EF3B0CC(uint64_t a1, __int128 *a2)
{
  v94 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v6 = *(a1 + 64);
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 73 * (v5 - v6) - 1;
  }

  v8 = *(a1 + 88);
  v9 = *(a1 + 96) + v8;
  if (v7 == v9)
  {
    if (v8 < 0x49)
    {
      v10 = *(a1 + 80);
      v11 = *(a1 + 56);
      if (v5 - v6 < (v10 - v11))
      {
        operator new();
      }

      if (v10 == v11)
      {
        v12 = 1;
      }

      else
      {
        v12 = (v10 - v11) >> 2;
      }

      if (!(v12 >> 61))
      {
        operator new();
      }

      sub_23EF34E18();
    }

    *(a1 + 88) = v8 - 73;
    __p[0] = *v6;
    *(a1 + 64) = v6 + 1;
    sub_23EF404C8((a1 + 56), __p);
    v6 = *(a1 + 64);
    v9 = *(a1 + 96) + *(a1 + 88);
  }

  v14 = *a2;
  v13 = v6[v9 / 0x49] + 56 * (v9 % 0x49);
  *(v13 + 16) = 0;
  *v13 = v14;
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  v16 = *(a2 + 2);
  v15 = *(a2 + 3);
  if (v15 != v16)
  {
    if (((v15 - v16) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF3AE74();
  }

  v17 = *(a2 + 5);
  *(v13 + 48) = *(a2 + 12);
  *(v13 + 40) = v17;
  v18 = *(a1 + 96);
  v19 = v18 + 1;
  *(a1 + 96) = v18 + 1;
  v20 = 0.0;
  if ((v18 + 1) >= 2)
  {
    v21 = v19 <= 3 ? 1 : v18 - 2;
    v22 = v19 > v21;
    v23 = v19 - v21;
    if (v22)
    {
      v24 = v18 - v21;
      v25 = *(a1 + 64);
      v26 = v24 + 1;
      v27 = v21 + *(a1 + 88);
      do
      {
        v28 = (*(v25 + 8 * ((v27 - 1) / 0x49)) + 56 * ((v27 - 1) % 0x49));
        v29 = (*(v25 + 8 * (v27 / 0x49)) + 56 * (v27 % 0x49));
        v30 = vsub_f32(v29[5], v28[5]);
        v31 = sqrtf(vaddv_f32(vmul_f32(v30, v30)));
        v32 = (*v29 - *v28) / 1000000000.0;
        if (v32 < 0.001)
        {
          v32 = 0.001;
        }

        v20 = v20 + (v31 / (v32 * 1.25));
        ++v27;
        --v26;
      }

      while (v26);
      v20 = v20 / v23;
    }
  }

  if (v20 > 5.0)
  {
    v20 = 5.0;
  }

  v33 = (v20 * 1.8) + 1.0;
  *__p = v33 * 0.08;
  v34 = (a1 + 16);
  v35 = (a1 + 20);
  if (*(a1 + 20) >= (v33 * 0.08))
  {
    v35 = __p;
  }

  if ((v33 * 0.08) >= *(a1 + 16))
  {
    v34 = v35;
  }

  v36.i32[0] = *v34;
  v37.i32[0] = *(a1 + 104);
  v38 = 80.0 / v33;
  *__p = v38;
  v39 = *(a1 + 108);
  v40 = (a1 + 24);
  v41 = (a1 + 28);
  if (*(a1 + 28) >= v38)
  {
    v41 = __p;
  }

  if (v38 >= *(a1 + 24))
  {
    v40 = v41;
  }

  v37.i32[1] = *v40;
  v36.i32[1] = *(a1 + 108);
  *(a1 + 104) = vadd_f32(vmul_f32(v37, 0x3E4CCCCD3F4CCCCDLL), vmul_f32(v36, 0x3F4CCCCD3E4CCCCDLL));
  v42 = *(a1 + 55);
  if (v42 >= 0)
  {
    v43 = *(a1 + 55);
  }

  else
  {
    v43 = *(a1 + 40);
  }

  if (v43 + 19 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_23EF2F8F4();
  }

  v44 = (a1 + 32);
  if (v43 + 19 >= 0x17)
  {
    operator new();
  }

  v84 = 0;
  __p[1] = 0;
  __p[0] = 0;
  HIBYTE(v84) = v43 + 19;
  if (v43)
  {
    if ((v42 & 0x80u) == 0)
    {
      v45 = (a1 + 32);
    }

    else
    {
      v45 = *v44;
    }

    memmove(__p, v45, v43);
  }

  strcpy(__p + v43, ".dynamic_parameters");
  v46 = HIBYTE(v84);
  v47 = __p[0];
  v48 = __p[1];
  sub_23F05E718();
  if (v46 >= 0)
  {
    v49 = __p;
  }

  else
  {
    v49 = v47;
  }

  if (v46 >= 0)
  {
    v50 = v46;
  }

  else
  {
    v50 = v48;
  }

  v51 = (*(qword_27E3960D0 + 48))(&qword_27E3960D0, v49, v50);
  if (SHIBYTE(v84) < 0)
  {
    operator delete(__p[0]);
  }

  if ((*(*v51 + 24))(v51))
  {
    sub_23F05E718();
    if ((*(*v51 + 24))(v51))
    {
      (*(*v51 + 56))(v51);
      *&v74[7] = 266;
      strcpy(&v73[1], "te");
      v73[0] = *"decay_rate";
      v75 = *a2;
      LOBYTE(v76) = 1;
      LOBYTE(v77) = 0;
      v78 = 0;
      LOBYTE(v79) = 0;
      v80 = 0;
      LOBYTE(v81) = 0;
      v82 = 0;
      v84 = *v74;
      *__p = *v73;
      v73[0] = 0;
      v73[1] = 0;
      *v74 = 0;
      v85 = 1;
      v87 = v76;
      v86 = v75;
      LOBYTE(v88) = 0;
      v89 = 0;
      LOBYTE(v90) = 0;
      v91 = 0;
      LOBYTE(v92) = 0;
      LOBYTE(v93) = 0;
      sub_23EF409E0(v72, (a1 + 104), __p);
    }
  }

  v52 = *(a1 + 55);
  if (v52 >= 0)
  {
    v53 = *(a1 + 55);
  }

  else
  {
    v53 = *(a1 + 40);
  }

  if (v53 + 19 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_23EF2F8F4();
  }

  if (v53 + 19 >= 0x17)
  {
    operator new();
  }

  v84 = 0;
  __p[1] = 0;
  __p[0] = 0;
  HIBYTE(v84) = v53 + 19;
  if (v53)
  {
    if ((v52 & 0x80u) == 0)
    {
      v54 = (a1 + 32);
    }

    else
    {
      v54 = *v44;
    }

    memmove(__p, v54, v53);
  }

  strcpy(__p + v53, ".dynamic_parameters");
  v55 = HIBYTE(v84);
  v56 = __p[0];
  v57 = __p[1];
  sub_23F05E718();
  if (v55 >= 0)
  {
    v58 = __p;
  }

  else
  {
    v58 = v56;
  }

  if (v55 >= 0)
  {
    v59 = v55;
  }

  else
  {
    v59 = v57;
  }

  v60 = (*(qword_27E3960D0 + 48))(&qword_27E3960D0, v58, v59);
  if (SHIBYTE(v84) < 0)
  {
    operator delete(__p[0]);
  }

  if ((*(*v60 + 24))(v60))
  {
    sub_23F05E718();
    if ((*(*v60 + 24))(v60))
    {
      (*(*v60 + 56))(v60);
      operator new();
    }
  }

  v61 = *(a1 + 55);
  if (v61 >= 0)
  {
    v62 = *(a1 + 55);
  }

  else
  {
    v62 = *(a1 + 40);
  }

  if (v62 + 21 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_23EF2F8F4();
  }

  if (v62 + 21 >= 0x17)
  {
    operator new();
  }

  v84 = 0;
  __p[1] = 0;
  __p[0] = 0;
  HIBYTE(v84) = v62 + 21;
  if (v62)
  {
    if ((v61 & 0x80u) == 0)
    {
      v63 = (a1 + 32);
    }

    else
    {
      v63 = *v44;
    }

    memmove(__p, v63, v62);
  }

  strcpy(__p + v62, ".denoising_parameters");
  v64 = HIBYTE(v84);
  v65 = __p[0];
  v66 = __p[1];
  sub_23F05E718();
  if (v64 >= 0)
  {
    v67 = __p;
  }

  else
  {
    v67 = v65;
  }

  if (v64 >= 0)
  {
    v68 = v64;
  }

  else
  {
    v68 = v66;
  }

  v69 = (*(qword_27E3960D0 + 48))(&qword_27E3960D0, v67, v68);
  if (SHIBYTE(v84) < 0)
  {
    operator delete(__p[0]);
  }

  result = (*(*v69 + 24))(v69);
  if (result)
  {
    sub_23F05E718();
    result = (*(*v69 + 24))(v69);
    if (result)
    {
      (*(*v69 + 56))(v69);
      v84 = 0;
      __p[1] = 0;
      __p[0] = &__p[1];
      sub_23F2D2898();
    }
  }

  v71 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23EF3CC8C(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_23EF3CCBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  sub_23F04C7F8(&a13);
  sub_23EF44860(&a45);
  sub_23EF44860(&a21);
  sub_23EF3AE8C(&a11);
  _Unwind_Resume(a1);
}

void sub_23EF3CD8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_23EF3AE8C(&a69);
  operator delete(v69);
  sub_23EF3AE8C(&a11);
  _Unwind_Resume(a1);
}

void sub_23EF3CE78(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_23EF3CEC8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_23EF3CF14(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v106 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 96);
  if (!v4)
  {
LABEL_17:
    v15 = sub_23EF3EC98();
    v99 = v15;
    if (**(v15 + 48) > 5)
    {
      goto LABEL_176;
    }

    v16 = *(v15 + 64);
    v17 = sub_23EF3335C(v15, "OSLogSurrogateAppender", 1, 0);
    if (!v17 && !v16)
    {
      goto LABEL_176;
    }

    sub_23EF303E4(v88);
    sub_23EF2F9B0(__p, "Window is empty", 15);
    v75 = v16;
    if ((v97 & 0x10) != 0)
    {
      v33 = v96;
      if (v96 < v93)
      {
        v96 = v93;
        v33 = v93;
      }

      v34 = v92;
      v18 = v33 - v92;
      if (v33 - v92 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_99;
      }
    }

    else
    {
      if ((v97 & 8) == 0)
      {
        v18 = 0;
        v87 = 0;
LABEL_59:
        *(&__dst + v18) = 0;
        v77 = &v99;
        rep = std::chrono::steady_clock::now().__d_.__rep_;
        v79 = std::chrono::system_clock::now().__d_.__rep_;
        v80 = 5;
        v81 = "unknown file";
        v82 = 256;
        v84 = 0;
        v85 = 0;
        v83 = "unknown function";
        if (v87 >= 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst;
        }

        v45 = *v77;
        v46 = (*v77 + 8);
        v47 = *(*v77 + 31);
        if ((v47 & 0x8000000000000000) != 0)
        {
          v46 = *(v45 + 8);
          v47 = *(v45 + 16);
        }

        if ((atomic_load_explicit(&qword_27E393F58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E393F58))
        {
          sub_23EF4557C(&qword_27E393F38);
          __cxa_guard_release(&qword_27E393F58);
        }

        if (byte_27E393F4F >= 0)
        {
          v48 = &qword_27E393F38;
        }

        else
        {
          v48 = qword_27E393F38;
        }

        if (byte_27E393F4F >= 0)
        {
          v49 = byte_27E393F4F;
        }

        else
        {
          v49 = unk_27E393F40;
        }

        *&v100 = os_log_create(v48, v46);
        if (v49 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_23EF2F8F4();
        }

        if (v49 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v101) = v49;
        if (v49)
        {
          memmove(&v100 + 8, v48, v49);
        }

        *(&v100 + v49 + 8) = 0;
        LOBYTE(v102) = 1;
        if (v47 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_23EF2F8F4();
        }

        if (v47 >= 0x17)
        {
          operator new();
        }

        v104 = v47;
        if (v47)
        {
          memmove(&v103, v46, v47);
        }

        *(&v103 + v47) = 0;
        v105 = 1;
        v50 = v100;
        if (v104 < 0)
        {
          operator delete(v103);
        }

        if (v102 == 1 && SHIBYTE(v101) < 0)
        {
          operator delete(*(&v100 + 1));
        }

        if (v50)
        {
          os_release(v50);
        }

        if (v17 && *(v17 + 24))
        {
          _os_log_pack_size();
          MEMORY[0x245CACD10]();
          operator new();
        }

        os_log_type_enabled(v50, OS_LOG_TYPE_ERROR);
        LODWORD(v100) = 136315138;
        *(&v100 + 4) = p_dst;
        v51 = _os_log_send_and_compose_impl();
        if (v51)
        {
          free(v51);
        }

        if (v75)
        {
          v69 = &__dst;
          if (v87 < 0)
          {
            v69 = __dst;
          }

          sub_23EF2FED0(&v77, "%s", v69);
          sub_23EF3ED94(&v77);
        }

        goto LABEL_168;
      }

      v34 = *(&v90 + 1);
      v18 = v91 - *(&v90 + 1);
      if (v91 - *(&v90 + 1) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_99:
        sub_23EF2F8F4();
      }
    }

    if (v18 >= 0x17)
    {
      operator new();
    }

    v87 = v18;
    if (v18)
    {
      memmove(&__dst, v34, v18);
    }

    goto LABEL_59;
  }

  v7 = *(a1 + 88);
  if (*(*(*(a1 + 64) + 8 * ((v4 + v7 - 1) / 0x49)) + 56 * ((v4 + v7 - 1) % 0x49)) > *a2)
  {
    v8 = sub_23EF3EC98();
    v99 = v8;
    if (**(v8 + 48) <= 5)
    {
      v9 = *(v8 + 64);
      v10 = sub_23EF3335C(v8, "OSLogSurrogateAppender", 1, 0);
      if (v10 || v9)
      {
        sub_23EF303E4(v88);
        sub_23EF2F9B0(__p, "Query timestamp is before the last item in the window", 53);
        v74 = v9;
        if ((v97 & 0x10) != 0)
        {
          v52 = v96;
          if (v96 < v93)
          {
            v96 = v93;
            v52 = v93;
          }

          v53 = &v92;
        }

        else
        {
          if ((v97 & 8) == 0)
          {
            v11 = 0;
            v87 = 0;
LABEL_123:
            *(&__dst + v11) = 0;
            v77 = &v99;
            rep = std::chrono::steady_clock::now().__d_.__rep_;
            v79 = std::chrono::system_clock::now().__d_.__rep_;
            v80 = 5;
            v81 = "unknown file";
            v82 = 250;
            v84 = 0;
            v85 = 0;
            v83 = "unknown function";
            if (v87 >= 0)
            {
              v61 = &__dst;
            }

            else
            {
              v61 = __dst;
            }

            v62 = *v77;
            v63 = (*v77 + 8);
            v64 = *(*v77 + 31);
            if ((v64 & 0x8000000000000000) != 0)
            {
              v63 = *(v62 + 8);
              v64 = *(v62 + 16);
            }

            if ((atomic_load_explicit(&qword_27E393F58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E393F58))
            {
              sub_23EF4557C(&qword_27E393F38);
              __cxa_guard_release(&qword_27E393F58);
            }

            if (byte_27E393F4F >= 0)
            {
              v65 = &qword_27E393F38;
            }

            else
            {
              v65 = qword_27E393F38;
            }

            if (byte_27E393F4F >= 0)
            {
              v66 = byte_27E393F4F;
            }

            else
            {
              v66 = unk_27E393F40;
            }

            *&v100 = os_log_create(v65, v63);
            if (v66 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_23EF2F8F4();
            }

            if (v66 >= 0x17)
            {
              operator new();
            }

            HIBYTE(v101) = v66;
            if (v66)
            {
              memmove(&v100 + 8, v65, v66);
            }

            *(&v100 + v66 + 8) = 0;
            LOBYTE(v102) = 1;
            if (v64 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_23EF2F8F4();
            }

            if (v64 >= 0x17)
            {
              operator new();
            }

            v104 = v64;
            if (v64)
            {
              memmove(&v103, v63, v64);
            }

            *(&v103 + v64) = 0;
            v105 = 1;
            v67 = v100;
            if (v104 < 0)
            {
              operator delete(v103);
            }

            if (v102 == 1 && SHIBYTE(v101) < 0)
            {
              operator delete(*(&v100 + 1));
            }

            if (v67)
            {
              os_release(v67);
            }

            if (v10 && *(v10 + 24))
            {
              _os_log_pack_size();
              MEMORY[0x245CACD10]();
              operator new();
            }

            os_log_type_enabled(v67, OS_LOG_TYPE_ERROR);
            LODWORD(v100) = 136315138;
            *(&v100 + 4) = v61;
            v68 = _os_log_send_and_compose_impl();
            if (v68)
            {
              free(v68);
            }

            if (v74)
            {
              v70 = &__dst;
              if (v87 < 0)
              {
                v70 = __dst;
              }

              sub_23EF2FED0(&v77, "%s", v70);
              sub_23EF3ED94(&v77);
            }

LABEL_168:
            sub_23EF3ED94(&v77);
            v71 = v85;
            if (v85 && !atomic_fetch_add(&v85->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v71->__on_zero_shared)(v71);
              std::__shared_weak_count::__release_weak(v71);
            }

            if (v87 < 0)
            {
              operator delete(__dst);
            }

            v88[0] = *MEMORY[0x277D82818];
            v72 = *(MEMORY[0x277D82818] + 72);
            *(v88 + *(v88[0] - 3)) = *(MEMORY[0x277D82818] + 64);
            __p[0] = v72;
            __p[1] = (MEMORY[0x277D82878] + 16);
            if (v95 < 0)
            {
              operator delete(v94);
            }

            __p[1] = (MEMORY[0x277D82868] + 16);
            std::locale::~locale(&v90);
            std::iostream::~basic_iostream();
            MEMORY[0x245CACBF0](&v98);
            goto LABEL_176;
          }

          v53 = &v90 + 1;
          v52 = v91;
        }

        v60 = *v53;
        v11 = v52 - *v53;
        if (v11 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_23EF2F8F4();
        }

        if (v11 >= 0x17)
        {
          operator new();
        }

        v87 = v52 - *v53;
        if (v11)
        {
          memmove(&__dst, v60, v11);
        }

        goto LABEL_123;
      }
    }

LABEL_176:
    *a3 = 0;
    *(a3 + 48) = 0;
    goto LABEL_177;
  }

  v12 = (*(a1 + 108) * 1000000000.0);
  while (1)
  {
    v13 = (*(*(a1 + 64) + 8 * (v7 / 0x49)) + 56 * (v7 % 0x49));
    if (v4 <= 0x3E8 && *v13 >= *a2 - v12)
    {
      break;
    }

    v14 = v13[2];
    if (v14)
    {
      v13[3] = v14;
      operator delete(v14);
      v7 = *(a1 + 88);
      v4 = *(a1 + 96);
    }

    --v4;
    *(a1 + 88) = ++v7;
    *(a1 + 96) = v4;
    if (v7 >= 0x92)
    {
      operator delete(**(a1 + 64));
      *(a1 + 64) += 8;
      v4 = *(a1 + 96);
      v7 = *(a1 + 88) - 73;
      *(a1 + 88) = v7;
    }

    if (!v4)
    {
      goto LABEL_17;
    }
  }

  v100 = 0u;
  v101 = 0u;
  LODWORD(v102) = 1065353216;
  *v88 = 0u;
  *__p = 0u;
  LODWORD(v90) = 1065353216;
  v19 = *(a1 + 64);
  v76 = a3;
  if (*(a1 + 72) != v19)
  {
    v20 = (v19 + 8 * (v7 / 0x49));
    v21 = *v20;
    v22 = &(*v20)[56 * (v7 % 0x49)];
    v23 = *(v19 + 8 * ((v7 + v4) / 0x49)) + 56 * ((v7 + v4) % 0x49);
    if (v22 != v23)
    {
      do
      {
        v24 = expf(-(*(a1 + 104) * fmaxf((*a2 - *v22) / 1000000000.0, 0.0)));
        v25 = *(v22 + 2);
        v26 = *(v22 + 3);
        if (v25 != v26)
        {
          v27 = v24;
          do
          {
            v28 = *v25;
            v29 = *(v25 + 4);
            v77 = v25;
            v30 = sub_23EF450E0(v88, v28);
            if (v28)
            {
              v31 = v27;
            }

            else
            {
              v31 = v27 * 0.01;
            }

            *(v30 + 5) = (v29 * v31) + *(v30 + 5);
            v25 += 8;
          }

          while (v25 != v26);
          v21 = *v20;
        }

        v22 += 56;
        if (v22 - v21 == 4088)
        {
          v32 = v20[1];
          ++v20;
          v21 = v32;
          v22 = v32;
        }
      }

      while (v22 != v23);
      v35 = __p[0];
      a3 = v76;
      if (__p[0])
      {
        v36 = 0.0;
        v37 = __p[0];
        do
        {
          v36 = v36 + v37[5];
          v37 = *v37;
        }

        while (v37);
        if (v36 > 0.0)
        {
          do
          {
            v38 = *(v35 + 5);
            v39 = *(v35 + 4);
            v77 = (v35 + 16);
            *(sub_23EF450E0(&v100, v39) + 5) = v38 / v36;
            v35 = *v35;
          }

          while (v35);
          v35 = __p[0];
        }

        if (v35)
        {
          do
          {
            v40 = *v35;
            operator delete(v35);
            v35 = v40;
          }

          while (v40);
        }
      }
    }
  }

  v41 = v88[0];
  v88[0] = 0;
  if (v41)
  {
    operator delete(v41);
  }

  if (!*(&v101 + 1))
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/AmbientSceneScope/FusionEngine/src/SpatioTemporalAggregator.cpp", 261, "!probabilities.empty()", 0x16uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v42 = qword_27E396178, v43 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_103:
        qword_27E396190(*algn_27E396198, "!probabilities.empty()", 22, &unk_23F3091D6, 0);
        goto LABEL_104;
      }
    }

    else
    {
      v42 = qword_27E396178;
      v43 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_186;
      }
    }

    do
    {
      (*v42)(*(v42 + 8), "!probabilities.empty()", 22, &unk_23F3091D6, 0);
      v42 += 16;
    }

    while (v42 != v43);
    if (byte_27E3961A0)
    {
      goto LABEL_103;
    }

LABEL_186:
    abort();
  }

LABEL_104:
  v54 = v101;
  if (v101)
  {
    do
    {
      v55 = v54[5];
      if (v55 >= 0.2)
      {
        operator new();
      }

      v54 = *v54;
    }

    while (v54);
    a3 = v76;
  }

  sub_23EF3F370(0, 0, 0, 1);
  v56 = *(a1 + 8);
  if (v56)
  {
    v56 = 0;
  }

  *&v90 = 0;
  *v88 = 0u;
  *__p = 0u;
  *(&v90 + 1) = v56;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = v90;
  *(a3 + 48) = 1;
  v57 = v101;
  if (v101)
  {
    do
    {
      v58 = *v57;
      operator delete(v57);
      v57 = v58;
    }

    while (v58);
  }

  v59 = v100;
  *&v100 = 0;
  if (v59)
  {
    operator delete(v59);
  }

LABEL_177:
  v73 = *MEMORY[0x277D85DE8];
}

void sub_23EF3EA74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30)
{
  __cxa_guard_abort(&qword_27E393F58);
  sub_23EF3EF5C(&a15);
  if (a29 < 0)
  {
    operator delete(__p);
  }

  sub_23EF327C8(&a30);
  _Unwind_Resume(a1);
}

void sub_23EF3EC40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (v27)
  {
    operator delete(v27);
    sub_23EF3CEC8(v28 - 224);
    _Unwind_Resume(a1);
  }

  sub_23EF3CEC8(v28 - 224);
  _Unwind_Resume(a1);
}

uint64_t sub_23EF3EC98()
{
  if ((atomic_load_explicit(&qword_27E395A68, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_27E395A68))
  {
    return qword_27E395A60;
  }

  sub_23F296600(&v3);
  sub_23EF3F240(__p, "cv3d.ambient");
  qword_27E395A60 = sub_23EF33AC4(&v3, __p);
  if (v2 < 0)
  {
    operator delete(__p[0]);
  }

  __cxa_guard_release(&qword_27E395A68);
  return qword_27E395A60;
}

void sub_23EF3ED3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    __cxa_guard_abort(&qword_27E395A68);
    _Unwind_Resume(a1);
  }

  __cxa_guard_abort(&qword_27E395A68);
  _Unwind_Resume(a1);
}

void sub_23EF3ED94(uint64_t a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = *(a1 + 56);
    if (v3)
    {
      v4 = (*v1 + 8);
      if (*(*v1 + 31) < 0)
      {
        v4 = *v4;
      }

      v5 = *(a1 + 8);
      v6 = *(a1 + 24);
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = *(a1 + 64);
      v12 = *(a1 + 56);
      v13 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = v4;
      v15 = v5;
      v16 = v6;
      v17 = v7;
      v18 = v8;
      v19 = v9;
      v20 = v3;
      v21 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v6 >= **(*v1 + 48))
      {
        sub_23EF33A04(*v1, &v14);
        v10 = v21;
      }

      if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }

      if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
      }

      v11 = *(a1 + 64);
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      if (v11)
      {
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }
    }
  }
}

void sub_23EF3EF40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_23EF3F2F8(va1);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23EF3EF5C(uint64_t a1)
{
  sub_23EF3ED94(a1);
  v2 = *(a1 + 64);
  if (!v2 || atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  return a1;
}

uint64_t sub_23EF3EFE0(uint64_t a1)
{
  *a1 = &unk_285178848;
  sub_23EF4032C(a1 + 56);
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

void sub_23EF3F044(uint64_t a1)
{
  *a1 = &unk_285178848;
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  if (v3 == v2)
  {
    v3 = *(a1 + 64);
    *(a1 + 96) = 0;
    v11 = 0;
  }

  else
  {
    v4 = *(a1 + 88);
    v5 = &v2[v4 / 0x49];
    v6 = *v5;
    v7 = *v5 + 56 * (v4 % 0x49);
    v8 = v2[(*(a1 + 96) + v4) / 0x49] + 56 * ((*(a1 + 96) + v4) % 0x49);
    if (v7 != v8)
    {
      do
      {
        v9 = *(v7 + 16);
        if (v9)
        {
          *(v7 + 24) = v9;
          operator delete(v9);
          v6 = *v5;
        }

        v7 += 56;
        if (v7 - v6 == 4088)
        {
          v10 = v5[1];
          ++v5;
          v6 = v10;
          v7 = v10;
        }
      }

      while (v7 != v8);
      v2 = *(a1 + 64);
      v3 = *(a1 + 72);
    }

    *(a1 + 96) = 0;
    v11 = v3 - v2;
    if (v11 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = *(a1 + 72);
        v2 = (*(a1 + 64) + 8);
        *(a1 + 64) = v2;
        v11 = v3 - v2;
      }

      while (v11 > 2);
    }
  }

  if (v11 == 1)
  {
    v12 = 36;
  }

  else
  {
    if (v11 != 2)
    {
LABEL_18:
      if (v2 != v3)
      {
        do
        {
          v13 = *v2++;
          operator delete(v13);
        }

        while (v2 != v3);
        v15 = *(a1 + 64);
        v14 = *(a1 + 72);
        if (v14 != v15)
        {
          *(a1 + 72) = v14 + ((v15 - v14 + 7) & 0xFFFFFFFFFFFFFFF8);
        }
      }

      v16 = *(a1 + 56);
      if (v16)
      {
        operator delete(v16);
      }

      if (*(a1 + 55) < 0)
      {
        operator delete(*(a1 + 32));
      }

      JUMPOUT(0x245CACD00);
    }

    v12 = 73;
  }

  *(a1 + 88) = v12;
  goto LABEL_18;
}

_BYTE *sub_23EF3F240(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
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

uint64_t sub_23EF3F2F8(uint64_t result)
{
  v1 = *(result + 64);
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

float *sub_23EF3F370(float *result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 3;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        if (*(a2 - 1) <= v8[1])
        {
          return result;
        }

        v68 = *v8;
        goto LABEL_114;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v71 = v8[3];
      v72 = v8[1];
      v73 = v8[5];
      if (v71 <= v72)
      {
        if (v73 > v71)
        {
          v117 = *(v8 + 1);
          v116 = *(v8 + 2);
          *(v8 + 1) = v116;
          *(v8 + 2) = v117;
          v73 = *(&v117 + 1);
          if (v72 < *(&v116 + 1))
          {
            v118 = *v8;
            *v8 = v116;
            *(v8 + 1) = v118;
          }
        }
      }

      else
      {
        v74 = *v8;
        LODWORD(v75) = HIDWORD(*v8);
        if (v73 > v71)
        {
          *v8 = *(v8 + 2);
          goto LABEL_184;
        }

        *v8 = *(v8 + 1);
        *(v8 + 1) = v74;
        if (v73 > v75)
        {
          *(v8 + 1) = *(v8 + 2);
LABEL_184:
          *(v8 + 2) = v74;
          v73 = v75;
        }
      }

      if (*(a2 - 1) > v73)
      {
        v124 = *(v8 + 2);
        *(v8 + 2) = *(a2 - 1);
        *(a2 - 1) = v124;
        if (v8[5] > v8[3])
        {
          v126 = *(v8 + 1);
          v125 = *(v8 + 2);
          *(v8 + 1) = v125;
          *(v8 + 2) = v126;
          if (v8[1] < *(&v125 + 1))
          {
            v127 = *v8;
            *v8 = v125;
            *(v8 + 1) = v127;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {

      return sub_23EF3FE44(v8, v8 + 2, v8 + 4, v8 + 6, a2 - 2);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v76 = v8 + 2;
      v78 = v8 == a2 || v76 == a2;
      if (a4)
      {
        if (!v78)
        {
          v79 = 0;
          v80 = v8;
          do
          {
            v82 = v80[3];
            v83 = v80[1];
            v80 = v76;
            if (v82 > v83)
            {
              v84 = *v76;
              v85 = v79;
              do
              {
                *(v8 + v85 + 8) = *(v8 + v85);
                if (!v85)
                {
                  v81 = v8;
                  goto LABEL_129;
                }

                v86 = *(v8 + v85 - 4);
                v85 -= 8;
              }

              while (v86 < v82);
              v81 = v8 + v85 + 8;
LABEL_129:
              *v81 = v84;
              *(v81 + 4) = v82;
            }

            v76 = v80 + 2;
            v79 += 8;
          }

          while (v80 + 2 != a2);
        }
      }

      else if (!v78)
      {
        do
        {
          v119 = v7[3];
          v120 = v7[1];
          v7 = v76;
          if (v119 > v120)
          {
            v121 = *v76;
            do
            {
              v122 = v76;
              v123 = *(v76 - 1);
              v76 -= 2;
              *v122 = v123;
            }

            while (*(v122 - 3) < v119);
            *v76 = v121;
            v76[1] = v119;
          }

          v76 = v7 + 2;
        }

        while (v7 + 2 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v87 = (v9 - 2) >> 1;
        v88 = v87;
        do
        {
          if (v87 >= v88)
          {
            v90 = (2 * (v88 & 0x1FFFFFFFFFFFFFFFLL)) | 1;
            v91 = &v8[2 * v90];
            if (2 * (v88 & 0x1FFFFFFFFFFFFFFFLL) + 2 < v9 && v91[1] > v91[3])
            {
              v91 += 2;
              v90 = 2 * (v88 & 0x1FFFFFFFFFFFFFFFLL) + 2;
            }

            v92 = &v8[2 * v88];
            v93 = v92[1];
            if (v91[1] <= v93)
            {
              v94 = *v92;
              do
              {
                v95 = v92;
                v92 = v91;
                *v95 = *v91;
                if (v87 < v90)
                {
                  break;
                }

                v96 = 2 * v90;
                v90 = (2 * (v90 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
                v91 = &v8[2 * v90];
                v97 = v96 + 2;
                if (v97 < v9 && v91[1] > v91[3])
                {
                  v91 += 2;
                  v90 = v97;
                }
              }

              while (v91[1] <= v93);
              *v92 = v94;
              v92[1] = v93;
            }
          }

          v89 = v88-- <= 0;
        }

        while (!v89);
        do
        {
          v98 = 0;
          v99 = *v8;
          v100 = (v9 - 2) >> 1;
          v101 = v8;
          do
          {
            while (1)
            {
              v106 = &v101[2 * v98];
              v105 = v106 + 2;
              v107 = (2 * v98) | 1;
              v98 = 2 * v98 + 2;
              if (v98 < v9)
              {
                break;
              }

              v98 = v107;
              *v101 = *v105;
              v101 = v106 + 2;
              if (v107 > v100)
              {
                goto LABEL_160;
              }
            }

            v102 = v106[3];
            v103 = v106[5];
            v104 = v106 + 4;
            if (v102 <= v103)
            {
              v98 = v107;
            }

            else
            {
              v105 = v104;
            }

            *v101 = *v105;
            v101 = v105;
          }

          while (v98 <= v100);
LABEL_160:
          if (v105 == --a2)
          {
            *v105 = v99;
          }

          else
          {
            *v105 = *a2;
            *a2 = v99;
            v108 = (v105 - v8 + 8) >> 3;
            v89 = v108 < 2;
            v109 = v108 - 2;
            if (!v89)
            {
              v110 = v109 >> 1;
              v111 = &v8[2 * v110];
              v112 = v105[1];
              if (v111[1] > v112)
              {
                v113 = *v105;
                do
                {
                  v114 = v105;
                  v105 = v111;
                  *v114 = *v111;
                  if (!v110)
                  {
                    break;
                  }

                  v110 = (v110 - 1) >> 1;
                  v111 = &v8[2 * v110];
                }

                while (v111[1] > v112);
                *v105 = v113;
                v105[1] = v112;
              }
            }
          }

          v89 = v9-- <= 2;
        }

        while (!v89);
      }

      return result;
    }

    v10 = &v8[2 * (v9 >> 1)];
    v11 = *(a2 - 1);
    if (v9 < 0x81)
    {
      v14 = v8[1];
      if (v14 > v10[1])
      {
        v15 = *v10;
        if (v11 > v14)
        {
          *v10 = *(a2 - 1);
          goto LABEL_37;
        }

        *v10 = *v8;
        *v8 = v15;
        if (*(a2 - 1) > *(&v15 + 1))
        {
          *v8 = *(a2 - 1);
LABEL_37:
          *(a2 - 1) = v15;
        }

LABEL_38:
        --a3;
        if ((a4 & 1) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_39;
      }

      if (v11 <= v14)
      {
        goto LABEL_38;
      }

      v18 = *v8;
      *v8 = *(a2 - 1);
      *(a2 - 1) = v18;
      if (v8[1] <= v10[1])
      {
        goto LABEL_38;
      }

      v19 = *v10;
      *v10 = *v8;
      *v8 = v19;
      --a3;
      if ((a4 & 1) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_39;
    }

    v12 = v10[1];
    if (v12 <= v8[1])
    {
      if (v11 > v12)
      {
        v16 = *v10;
        *v10 = *(a2 - 1);
        *(a2 - 1) = v16;
        if (v10[1] > v8[1])
        {
          v17 = *v8;
          *v8 = *v10;
          *v10 = v17;
        }
      }
    }

    else
    {
      v13 = *v8;
      if (v11 <= v12)
      {
        *v8 = *v10;
        *v10 = v13;
        if (*(a2 - 1) <= *(&v13 + 1))
        {
          goto LABEL_29;
        }

        *v10 = *(a2 - 1);
      }

      else
      {
        *v8 = *(a2 - 1);
      }

      *(a2 - 1) = v13;
    }

LABEL_29:
    v20 = (v10 - 2);
    v21 = *(v10 - 1);
    v22 = *(a2 - 3);
    if (v21 <= v8[3])
    {
      if (v22 > v21)
      {
        v24 = *v20;
        *v20 = *(a2 - 2);
        *(a2 - 2) = v24;
        if (*(v10 - 1) > v8[3])
        {
          v25 = *(v8 + 1);
          *(v8 + 1) = *v20;
          *v20 = v25;
        }
      }
    }

    else
    {
      v23 = *(v8 + 1);
      if (v22 <= v21)
      {
        *(v8 + 1) = *v20;
        *v20 = v23;
        if (*(a2 - 3) <= *(&v23 + 1))
        {
          goto LABEL_43;
        }

        *v20 = *(a2 - 2);
      }

      else
      {
        *(v8 + 1) = *(a2 - 2);
      }

      *(a2 - 2) = v23;
    }

LABEL_43:
    v28 = (v10 + 2);
    v29 = v10[3];
    v30 = *(a2 - 5);
    if (v29 <= v8[5])
    {
      if (v30 > v29)
      {
        v32 = *v28;
        *v28 = *(a2 - 3);
        *(a2 - 3) = v32;
        if (v10[3] > v8[5])
        {
          v33 = *(v8 + 2);
          *(v8 + 2) = *v28;
          *v28 = v33;
        }
      }

      goto LABEL_52;
    }

    v31 = *(v8 + 2);
    if (v30 > v29)
    {
      *(v8 + 2) = *(a2 - 3);
LABEL_51:
      *(a2 - 3) = v31;
      goto LABEL_52;
    }

    *(v8 + 2) = *v28;
    *v28 = v31;
    if (*(a2 - 5) > *(&v31 + 1))
    {
      *v28 = *(a2 - 3);
      goto LABEL_51;
    }

LABEL_52:
    v34 = v10[1];
    v35 = *(v10 - 1);
    v36 = v10[3];
    if (v34 <= v35)
    {
      v37 = *v10;
      if (v36 <= v34)
      {
        goto LABEL_62;
      }

      v39 = *v28;
      *v10 = *v28;
      *v28 = v37;
      if (v35 >= *(&v39 + 1))
      {
        v57 = *v8;
        *v8 = v39;
        *v10 = v57;
        --a3;
        if (a4)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v40 = *v20;
        *v20 = v39;
        *v10 = v40;
        v41 = *v8;
        *v8 = v40;
        *v10 = v41;
        --a3;
        if (a4)
        {
          goto LABEL_39;
        }
      }

LABEL_63:
      v27 = v8[1];
      v26 = *v8;
      if (*(v8 - 1) > v27)
      {
        goto LABEL_64;
      }

      if (*(a2 - 1) >= v27)
      {
        v60 = v8 + 2;
        do
        {
          v8 = v60;
          if (v60 >= a2)
          {
            break;
          }

          v61 = v60[1];
          v60 += 2;
        }

        while (v61 >= v27);
      }

      else
      {
        v58 = v8;
        do
        {
          v8 = v58 + 2;
          v59 = v58[3];
          v58 += 2;
        }

        while (v59 >= v27);
      }

      v62 = a2;
      if (v8 < a2)
      {
        v63 = a2;
        do
        {
          v62 = (v63 - 1);
          v64 = *(v63-- - 1);
        }

        while (v64 < v27);
      }

      while (v8 < v62)
      {
        v65 = *v8;
        *v8 = *v62;
        *v62 = v65;
        do
        {
          v66 = v8[3];
          v8 += 2;
        }

        while (v66 >= v27);
        do
        {
          v67 = *(v62 - 1);
          v62 -= 2;
        }

        while (v67 < v27);
      }

      if (v8 - 2 != v7)
      {
        *v7 = *(v8 - 1);
      }

      a4 = 0;
      *(v8 - 2) = v26;
      *(v8 - 1) = v27;
    }

    else
    {
      v37 = *v20;
      if (v36 <= v34)
      {
        *v20 = *v10;
        *v10 = v37;
        if (v36 > *(&v37 + 1))
        {
          v42 = *v28;
          *v10 = *v28;
          *v28 = v37;
          v37 = v42;
        }

LABEL_62:
        v43 = *v8;
        *v8 = v37;
        *v10 = v43;
        --a3;
        if ((a4 & 1) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_39;
      }

      *v20 = *v28;
      *v28 = v37;
      v38 = *v8;
      *v8 = *v10;
      *v10 = v38;
      --a3;
      if ((a4 & 1) == 0)
      {
        goto LABEL_63;
      }

LABEL_39:
      v26 = *v8;
      v27 = v8[1];
LABEL_64:
      v44 = 0;
      do
      {
        v45 = v8[v44 + 3];
        v44 += 2;
      }

      while (v45 > v27);
      v46 = &v8[v44];
      v47 = a2;
      if (v44 == 2)
      {
        v50 = a2;
        while (v46 < v50)
        {
          v48 = v50 - 1;
          v51 = *(v50-- - 1);
          if (v51 > v27)
          {
            goto LABEL_72;
          }
        }

        v48 = v50;
        v8 = v46;
      }

      else
      {
        do
        {
          v48 = v47 - 1;
          v49 = *(v47-- - 1);
        }

        while (v49 <= v27);
LABEL_72:
        v8 = v46;
        if (v46 < v48)
        {
          v52 = v48;
          do
          {
            v53 = *v8;
            *v8 = *v52;
            *v52 = v53;
            do
            {
              v54 = v8[3];
              v8 += 2;
            }

            while (v54 > v27);
            do
            {
              v55 = *(v52 - 1);
              v52 -= 2;
            }

            while (v55 <= v27);
          }

          while (v8 < v52);
        }
      }

      if (v8 - 2 != v7)
      {
        *v7 = *(v8 - 1);
      }

      *(v8 - 2) = v26;
      *(v8 - 1) = v27;
      if (v46 < v48)
      {
        goto LABEL_83;
      }

      v56 = sub_23EF3FFD0(v7, v8 - 1);
      result = sub_23EF3FFD0(v8, a2);
      if (result)
      {
        a2 = (v8 - 2);
        if (!v56)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v56)
      {
LABEL_83:
        result = sub_23EF3F370(v7, v8 - 2, a3, a4 & 1);
        a4 = 0;
      }
    }
  }

  v69 = v8[3];
  v70 = *(a2 - 1);
  if (v69 <= v8[1])
  {
    if (v70 > v69)
    {
      v115 = *(v8 + 1);
      *(v8 + 1) = *(a2 - 1);
      *(a2 - 1) = v115;
      if (v8[3] > v8[1])
      {
        *v8 = vextq_s8(*v8, *v8, 8uLL);
      }
    }
  }

  else
  {
    v68 = *v8;
    if (v70 > v69)
    {
LABEL_114:
      *v8 = *(a2 - 1);
      *(a2 - 1) = v68;
      return result;
    }

    *v8 = *(v8 + 1);
    *(v8 + 1) = v68;
    if (*(a2 - 1) > *(&v68 + 1))
    {
      *(v8 + 1) = *(a2 - 1);
      *(a2 - 1) = v68;
    }
  }

  return result;
}

float *sub_23EF3FE44(float *result, float *a2, float *a3, float *a4, float *a5)
{
  v5 = a2[1];
  v6 = a3[1];
  if (v5 <= result[1])
  {
    if (v6 > v5)
    {
      v7 = *a2;
      *a2 = *a3;
      *a3 = v7;
      if (a2[1] <= result[1])
      {
        goto LABEL_7;
      }

      v8 = *result;
      *result = *a2;
      *a2 = v8;
      v6 = a3[1];
    }
  }

  else
  {
    v7 = *result;
    if (v6 > v5)
    {
      *result = *a3;
      *a3 = v7;
LABEL_7:
      v6 = *(&v7 + 1);
      goto LABEL_10;
    }

    *result = *a2;
    *a2 = v7;
    v6 = a3[1];
    if (v6 > *(&v7 + 1))
    {
      *a2 = *a3;
      *a3 = v7;
      v6 = *(&v7 + 1);
    }
  }

LABEL_10:
  if (a4[1] > v6)
  {
    v9 = *a3;
    *a3 = *a4;
    *a4 = v9;
    if (a3[1] > a2[1])
    {
      v10 = *a2;
      *a2 = *a3;
      *a3 = v10;
      if (a2[1] > result[1])
      {
        v11 = *result;
        *result = *a2;
        *a2 = v11;
      }
    }
  }

  if (a5[1] > a4[1])
  {
    v12 = *a4;
    *a4 = *a5;
    *a5 = v12;
    if (a4[1] > a3[1])
    {
      v13 = *a3;
      *a3 = *a4;
      *a4 = v13;
      if (a3[1] > a2[1])
      {
        v14 = *a2;
        *a2 = *a3;
        *a3 = v14;
        if (a2[1] > result[1])
        {
          v15 = *result;
          *result = *a2;
          *a2 = v15;
        }
      }
    }
  }

  return result;
}

BOOL sub_23EF3FFD0(float *a1, uint64_t *a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = a1[3];
      v6 = *(a2 - 1);
      if (v5 <= a1[1])
      {
        if (v6 <= v5)
        {
          return 1;
        }

        v17 = *(a1 + 1);
        *(a1 + 1) = *(a2 - 1);
        *(a2 - 1) = v17;
        if (a1[3] <= a1[1])
        {
          return 1;
        }

        *a1 = vextq_s8(*a1, *a1, 8uLL);
        return 1;
      }

      else
      {
        v7 = *a1;
        if (v6 <= v5)
        {
          *a1 = *(a1 + 1);
          *(a1 + 1) = v7;
          if (*(a2 - 1) <= *(&v7 + 1))
          {
            return 1;
          }

          *(a1 + 1) = *(a2 - 1);
          *(a2 - 1) = v7;
          return 1;
        }

        else
        {
          *a1 = *(a2 - 1);
          *(a2 - 1) = v7;
          return 1;
        }
      }
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        sub_23EF3FE44(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
        return 1;
      }

LABEL_14:
      v8 = a1[3];
      v9 = a1[1];
      v10 = a1[5];
      if (v8 <= v9)
      {
        if (v10 > v8)
        {
          v19 = *(a1 + 1);
          v18 = *(a1 + 2);
          *(a1 + 1) = v18;
          *(a1 + 2) = v19;
          if (v9 < *(&v18 + 1))
          {
            v20 = *a1;
            *a1 = v18;
            *(a1 + 1) = v20;
          }
        }

        goto LABEL_34;
      }

      v11 = *a1;
      if (v10 <= v8)
      {
        *a1 = *(a1 + 1);
        *(a1 + 1) = v11;
        if (v10 <= *(&v11 + 1))
        {
LABEL_34:
          v24 = a1 + 6;
          if (a1 + 6 == a2)
          {
            return 1;
          }

          v25 = 0;
          v26 = 0;
          v27 = a1 + 4;
          while (1)
          {
            v28 = v24[1];
            if (v28 > v27[1])
            {
              break;
            }

LABEL_43:
            v27 = v24;
            v25 += 8;
            v24 += 2;
            if (v24 == a2)
            {
              return 1;
            }
          }

          v29 = *v24;
          v30 = v25;
          do
          {
            *(a1 + v30 + 24) = *(a1 + v30 + 16);
            if (v30 == -16)
            {
              *a1 = v29;
              a1[1] = v28;
              if (++v26 != 8)
              {
                goto LABEL_43;
              }

              return v24 + 2 == a2;
            }

            v31 = *(a1 + v30 + 12);
            v30 -= 8;
          }

          while (v31 < v28);
          v32 = a1 + v30;
          *(v32 + 24) = v29;
          *(v32 + 28) = v28;
          if (++v26 != 8)
          {
            goto LABEL_43;
          }

          return v24 + 2 == a2;
        }

        *(a1 + 1) = *(a1 + 2);
      }

      else
      {
        *a1 = *(a1 + 2);
      }

      *(a1 + 2) = v11;
      goto LABEL_34;
    }

    v12 = a1[3];
    v13 = a1[1];
    v14 = a1[5];
    if (v12 <= v13)
    {
      if (v14 > v12)
      {
        v22 = *(a1 + 1);
        v21 = *(a1 + 2);
        *(a1 + 1) = v21;
        *(a1 + 2) = v22;
        v14 = *(&v22 + 1);
        if (v13 < *(&v21 + 1))
        {
          v23 = *a1;
          *a1 = v21;
          *(a1 + 1) = v23;
        }
      }

      goto LABEL_48;
    }

    v15 = *a1;
    LODWORD(v16) = HIDWORD(*a1);
    if (v14 <= v12)
    {
      *a1 = *(a1 + 1);
      *(a1 + 1) = v15;
      if (v14 <= v16)
      {
        goto LABEL_48;
      }

      *(a1 + 1) = *(a1 + 2);
    }

    else
    {
      *a1 = *(a1 + 2);
    }

    *(a1 + 2) = v15;
    v14 = v16;
LABEL_48:
    if (*(a2 - 1) <= v14)
    {
      return 1;
    }

    v33 = *(a1 + 2);
    *(a1 + 2) = *(a2 - 1);
    *(a2 - 1) = v33;
    if (a1[5] <= a1[3])
    {
      return 1;
    }

    v35 = *(a1 + 1);
    v34 = *(a1 + 2);
    *(a1 + 1) = v34;
    *(a1 + 2) = v35;
    if (a1[1] >= *(&v34 + 1))
    {
      return 1;
    }

    v36 = *a1;
    *a1 = v34;
    *(a1 + 1) = v36;
    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
    goto LABEL_14;
  }

  if (*(a2 - 1) <= a1[1])
  {
    return 1;
  }

  v4 = *a1;
  *a1 = *(a2 - 1);
  *(a2 - 1) = v4;
  return 1;
}

uint64_t sub_23EF4032C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    *(a1 + 40) = 0;
    v11 = 0;
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = &v2[v4 / 0x49];
    v6 = *v5;
    v7 = *v5 + 56 * (v4 % 0x49);
    v8 = v2[(*(a1 + 40) + v4) / 0x49] + 56 * ((*(a1 + 40) + v4) % 0x49);
    if (v7 != v8)
    {
      do
      {
        v9 = *(v7 + 16);
        if (v9)
        {
          *(v7 + 24) = v9;
          operator delete(v9);
          v6 = *v5;
        }

        v7 += 56;
        if (v7 - v6 == 4088)
        {
          v10 = v5[1];
          ++v5;
          v6 = v10;
          v7 = v10;
        }
      }

      while (v7 != v8);
      v2 = *(a1 + 8);
      v3 = *(a1 + 16);
    }

    *(a1 + 40) = 0;
    v11 = v3 - v2;
    if (v11 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = *(a1 + 16);
        v2 = (*(a1 + 8) + 8);
        *(a1 + 8) = v2;
        v11 = v3 - v2;
      }

      while (v11 > 2);
    }
  }

  if (v11 == 1)
  {
    v12 = 36;
    goto LABEL_17;
  }

  if (v11 == 2)
  {
    v12 = 73;
LABEL_17:
    *(a1 + 32) = v12;
  }

  if (v2 != v3)
  {
    do
    {
      v13 = *v2++;
      operator delete(v13);
    }

    while (v2 != v3);
    v15 = *(a1 + 8);
    v14 = *(a1 + 16);
    if (v14 != v15)
    {
      *(a1 + 16) = v14 + ((v15 - v14 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_23EF404C8(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      v11 = &v4[-*result] >> 2;
      if (v4 == *result)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_23EF34E18();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v8];
  }

  *v4 = *a2;
  v3[2] = v4 + 8;
  return result;
}

void sub_23EF40654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a4 + 8);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  operator new();
}

void sub_23EF409A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  sub_23EF459D8(va2);
  sub_23F04C7F8(va);
  sub_23EF3AE8C(va1);
  _Unwind_Resume(a1);
}

void sub_23EF409C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_23F04C7F8(va);
  sub_23EF3AE8C(va1);
  _Unwind_Resume(a1);
}

void sub_23EF409E0(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  LOBYTE(v12[0]) = 0;
  v14 = 0;
  if (*(a3 + 24) == 1)
  {
    *v12 = *a3;
    v13 = *(a3 + 16);
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    v14 = 1;
  }

  v15 = *(a3 + 32);
  v16 = *(a3 + 48);
  LOBYTE(v17) = 0;
  v19 = 0;
  if (*(a3 + 80) == 1)
  {
    v17 = *(a3 + 56);
    v18 = *(a3 + 72);
    *(a3 + 64) = 0;
    *(a3 + 72) = 0;
    *(a3 + 56) = 0;
    v19 = 1;
    LOBYTE(v20) = 0;
    v24 = 0;
    if (*(a3 + 144) != 1)
    {
LABEL_5:
      LOBYTE(v25) = 0;
      v27 = 0;
      if (*(a3 + 184) != 1)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else
  {
    LOBYTE(v20) = 0;
    v24 = 0;
    if (*(a3 + 144) != 1)
    {
      goto LABEL_5;
    }
  }

  _X0 = 0;
  _X1 = 0;
  v21 = *(a3 + 112);
  v20 = *(a3 + 96);
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  *(a3 + 96) = 0;
  __asm { CASPAL          X0, X1, X0, X1, [X8] }

  v22 = _X0;
  v23 = 0;
  v24 = 1;
  LOBYTE(v25) = 0;
  v27 = 0;
  if (*(a3 + 184) != 1)
  {
LABEL_7:
    sub_23EF4104C(v28, v12);
    v4 = *a2;
    operator new();
  }

LABEL_6:
  v25 = *(a3 + 160);
  v26 = *(a3 + 176);
  *(a3 + 168) = 0;
  *(a3 + 176) = 0;
  *(a3 + 160) = 0;
  v27 = 1;
  goto LABEL_7;
}

void sub_23EF40E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  (*(*v37 + 8))(v37);
  sub_23EF44860(&a37);
  sub_23EF44860(&a11);
  _Unwind_Resume(a1);
}

void sub_23EF40F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF44860(va);
  _Unwind_Resume(a1);
}

void sub_23EF40F58(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2851788A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23EF40FAC(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
    v2 = *(a1 + 32);
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *(a1 + 32);
    if (!v2)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_23EF4104C(uint64_t a1, __int128 *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  sub_23EF432A8(v13, a2);
  *a1 = sub_23F2D746C();
  *(a1 + 8) = 2;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  if (v15 == 1)
  {
    *(a1 + 16) = *v13;
    *(a1 + 32) = v14;
    v13[1] = 0;
    v14 = 0;
    v13[0] = 0;
    *(a1 + 40) = 1;
  }

  v3 = v16;
  *(a1 + 72) = 0;
  *(a1 + 48) = v3;
  *(a1 + 64) = v17;
  *(a1 + 96) = 0;
  if (v20 == 1)
  {
    *(a1 + 72) = *v18;
    *(a1 + 88) = v19;
    v18[1] = 0;
    v19 = 0;
    v18[0] = 0;
    *(a1 + 96) = 1;
    *(a1 + 112) = 0;
    v4 = a1 + 112;
    *(a1 + 160) = 0;
    if (v23 != 1)
    {
LABEL_5:
      *(a1 + 176) = 0;
      *(a1 + 200) = 0;
      if (v26 != 1)
      {
        goto LABEL_6;
      }

LABEL_10:
      *(a1 + 176) = v24;
      *(a1 + 192) = v25;
      v25 = 0;
      v24 = 0uLL;
      *(a1 + 200) = 1;
      if (v23 != 1)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }
  }

  else
  {
    *(a1 + 112) = 0;
    v4 = a1 + 112;
    *(a1 + 160) = 0;
    if (v23 != 1)
    {
      goto LABEL_5;
    }
  }

  _X0 = 0;
  _X1 = 0;
  *(v4 + 16) = v22;
  *v4 = *__p;
  __p[1] = 0;
  v22 = 0;
  __p[0] = 0;
  __asm { CASPAL          X0, X1, X0, X1, [X8] }

  *(a1 + 144) = _X0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 1;
  *(a1 + 176) = 0;
  *(a1 + 200) = 0;
  if (v26 == 1)
  {
    goto LABEL_10;
  }

LABEL_6:
  if (v23 != 1)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_13:
  if (v20 == 1 && SHIBYTE(v19) < 0)
  {
    operator delete(v18[0]);
  }

  if (v15 == 1 && SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void *sub_23EF41268(void *a1)
{
  *a1 = &unk_285178AB8;
  sub_23EF44860((a1 + 8));
  a1[1] = &unk_285178B00;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_23EF412DC(void *a1)
{
  *a1 = &unk_285178AB8;
  sub_23EF44860((a1 + 8));
  a1[1] = &unk_285178B00;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x245CACD00);
}

void sub_23EF41380(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E393FB8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E393FB8))
    {
      sub_23EF4459C(&stru_27E393FA0);
      __cxa_guard_release(&qword_27E393FB8);
    }
  }

  (*(*(a1 + 8) + 24))(__p, a1 + 8);
  sub_23EF44334(&stru_27E393FA0, "{", __p, ",");
}

void sub_23EF41480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF4149C(uint64_t a1@<X8>)
{
  *(a1 + 23) = 8;
  strcpy(a1, "cv3d.viz");
  *(a1 + 24) = 8;
}

void *sub_23EF41514(void *result)
{
  *result = &unk_285178B00;
  v1 = result[2];
  if (v1)
  {
    result[3] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void *sub_23EF4156C(void *a1)
{
  *a1 = &unk_285178AB8;
  sub_23EF44860((a1 + 8));
  a1[1] = &unk_285178B00;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_23EF415E0(void *a1)
{
  *a1 = &unk_285178AB8;
  sub_23EF44860((a1 + 8));
  a1[1] = &unk_285178B00;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x245CACD00);
}

void sub_23EF41674()
{
  if ((atomic_load_explicit(&qword_27E393F98, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E393F98))
    {
      sub_23EF440C4();
    }
  }

  sub_23EF4392C(&xmmword_27E393F80, "{");
}

void sub_23EF41728(uint64_t a1@<X8>)
{
  *(a1 + 23) = 15;
  strcpy(a1, "unknown_package");
  *(a1 + 24) = 0;
}

void sub_23EF41754(void *a1)
{
  *a1 = &unk_285178B00;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x245CACD00);
}

unint64_t sub_23EF417C8(char **a1, char **lpsrc)
{
  v4 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28517BF90, &unk_285178B20, 0);
  if (result)
  {
    return a1 == lpsrc || sub_23F2F2774(a1 + 8, (result + 8)) == 0;
  }

  return result;
}

void sub_23EF41864()
{
  if ((atomic_load_explicit(&qword_27E393F78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E393F78))
  {
    sub_23F302BD0("cv3d::kit::Number]", 0x11uLL, &xmmword_27E393F60);
    __cxa_guard_release(&qword_27E393F78);
  }

  sub_23EF41918(&xmmword_27E393F60, "{");
}

void sub_23EF41918(__int128 *a1, uint64_t a2)
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
  sub_23EF41AC4();
}

void sub_23EF41A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF41A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF41A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF41A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF41AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF41CCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EF41D10(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    (off_2851788F8[v2])(&v4, a1);
  }

  *(a1 + 24) = -1;
  return a1;
}

void sub_23EF41D6C()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82900] + 16;
  __cxa_throw(exception, MEMORY[0x277D82768], std::exception::~exception);
}

uint64_t **sub_23EF41DBC(uint64_t **result)
{
  v1 = **result;
  v2 = (*result)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    result = (off_2851788F8[v3])(&v5, v1);
  }

  *(v1 + 24) = -1;
  if (*(v2 + 23) < 0)
  {
    result = sub_23EF34EA4(v1, *v2, *(v2 + 1));
  }

  else
  {
    v4 = *v2;
    *(v1 + 16) = *(v2 + 2);
    *v1 = v4;
  }

  *(v1 + 24) = 1;
  return result;
}

uint64_t sub_23EF41E68(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_23EF350D8(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    if (*(v3 + 23) < 0)
    {
      sub_23EF34EA4(*(a2 + 8), *v3, *(v3 + 8));
    }

    else
    {
      v5 = *v3;
      *(v4 + 16) = *(v3 + 16);
      *v4 = v5;
    }

    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

void sub_23EF41F0C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_23EF41F20(uint64_t a1, void ***a2)
{
  v2 = *a2;
  if (*a2)
  {
    v4 = a2[1];
    v5 = *a2;
    if (v4 == v2)
    {
      a2[1] = v2;
    }

    else
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = *a2;
      a2[1] = v2;
    }

    operator delete(v5);
  }
}

void sub_23EF41FCC(uint64_t *a1, uint64_t a2)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v16 + 7) = *(a2 + 15);
  v3 = *a2;
  v16[0] = *(a2 + 8);
  v4 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v11 = v3;
  *v12 = v16[0];
  *&v12[7] = *(v16 + 7);
  v13 = v4;
  memset(v16, 0, 15);
  v5 = a1[1];
  if (*(v5 + 23) < 0)
  {
    sub_23EF34EA4(&__p, *v5, *(v5 + 1));
  }

  else
  {
    v6 = *v5;
    v15 = *(v5 + 2);
    __p = v6;
  }

  v7 = *(v2 + 24);
  if (v7 != -1)
  {
    (off_2851788F8[v7])(&v10, v2);
  }

  *(v2 + 24) = -1;
  sub_23EF42150(v2, &v11, 2uLL);
  *(v2 + 24) = 2;
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    operator delete(v11);
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v13 < 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_23EF4210C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_23EF42150(void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (a3 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_23EF3AE74();
  }

  return result;
}

void sub_23EF42268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  sub_23EF53F00(&a11);
  *(v11 + 8) = v12;
  sub_23EF53E7C(&a9);
  _Unwind_Resume(a1);
}

_BYTE *sub_23EF42298(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_23EF42698(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    v5 = strlen(*(*a1 + 32));
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_23EF2F8F4();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v4[23] = v5;
    if (v5)
    {
      memmove(v4, v3, v5);
    }

    v4[v6] = 0;
    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

size_t sub_23EF42398(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_2851788F8[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_23EF4248C(uint64_t *a1, uint64_t a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v18 + 7) = *(a2 + 15);
  v4 = *a2;
  v18[0] = *(a2 + 8);
  v3 = v18[0];
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v13 = v4;
  *v14 = v3;
  *&v14[7] = *(v18 + 7);
  v15 = v5;
  memset(v18, 0, 15);
  v6 = a1[1];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v17 = v7;
  if (v7)
  {
    memmove(&__p, v6, v7);
    *(&__p + v8) = 0;
    v9 = *(v2 + 24);
    if (v9 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v9 = *(v2 + 24);
  if (v9 != -1)
  {
LABEL_8:
    (off_2851788F8[v9])(&v12, v2);
  }

LABEL_9:
  *(v2 + 24) = -1;
  sub_23EF42150(v2, &v13, 2uLL);
  *(v2 + 24) = 2;
  if (v17 < 0)
  {
    operator delete(__p);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
LABEL_11:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v13);
  v11 = *MEMORY[0x277D85DE8];
}

void sub_23EF4264C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_23EF42698(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_23EF3AE74();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_23EF34E18();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}