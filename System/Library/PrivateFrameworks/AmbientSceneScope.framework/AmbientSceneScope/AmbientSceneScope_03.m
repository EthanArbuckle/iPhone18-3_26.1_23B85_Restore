void sub_23EF69DA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a23 == 1 && a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EF69DD0(int *a1, _BYTE *a2, uint64_t a3, unsigned int a4)
{
  v6 = *a1;
  if (*a1 == 2)
  {
    if (a4 < 2)
    {
      goto LABEL_10;
    }

    v8 = a4;
    LODWORD(v12) = 2;
    (*(*a2 + 104))(a2, &v12);
    if (v12 >= 3)
    {
      v11 = v12;
      if ((atomic_load_explicit(&qword_27E3940D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3940D8))
      {
        sub_23F302BD0("cv3d::kit::timeio::TimestampSample]", 0x22uLL, &stru_27E3940C0);
        __cxa_guard_release(&qword_27E3940D8);
        sub_23F2FF068(&stru_27E3940C0, v11, 2u);
      }

      sub_23F2FF068(&stru_27E3940C0, v11, 2u);
    }

    v6 = *a1;
    a4 = v8;
  }

  if (a4 >= 2 && v6 > 0)
  {
    (*(*a2 + 16))(a2);
    (*(*a2 + 72))(a2, a3);
    v12 = (a3 + 8);
    sub_23EF6A05C(a2, &v12);
    return (*(*a2 + 24))(a2);
  }

  if (a4 >= 2)
  {
    (*(*a2 + 72))(a2, a3);
    v12 = (a3 + 8);
    return sub_23EF6A05C(a2, &v12);
  }

LABEL_10:
  v12 = 0;
  v13 = 0;
  (*(*a2 + 72))(a2, &v12);
  v14 = &v13;
  result = sub_23EF6A05C(a2, &v14);
  v10 = v13;
  *a3 = v12;
  *(a3 + 8) = v10;
  return result;
}

uint64_t sub_23EF6A05C(_BYTE *a1, _BYTE **a2)
{
  if ((a1[12] & 2) != 0)
  {
    memset(__p, 0, sizeof(__p));
    (*(*a1 + 144))(a1, __p);
    operator new();
  }

  LOBYTE(__p[0]) = 0;
  result = (*(*a1 + 80))(a1, __p);
  **a2 = __p[0];
  return result;
}

void sub_23EF6A180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  a17 = 0;
  sub_23F302A54(&a17, v17);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_23EF6A1D4(void *a1, uint64_t a2)
{
  v8 = 0;
  result = (*(*a1 + 80))(a1, &v8);
  if (v8)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 1;
    }

    v5 = *a1;
    v9 = a1[1];
    v6 = v9;
    LODWORD(v10) = 2;
    (*(v5 + 104))(a1, &v10);
    if (v6 < 1)
    {
      if (v10 < 2)
      {
        v10 = 0;
        v11 = 0;
        (*(*a1 + 72))(a1, &v10);
        v12 = &v11;
        result = sub_23EF6A05C(a1, &v12);
        v7 = v11;
        *a2 = v10;
        *(a2 + 8) = v7;
      }

      else
      {
        (*(*a1 + 72))(a1, a2);
        v10 = (a2 + 8);
        return sub_23EF6A05C(a1, &v10);
      }
    }

    else
    {
      return sub_23EF69DD0(&v9, a1, a2, v10);
    }
  }

  else if (*(a2 + 16))
  {
    *(a2 + 16) = 0;
  }

  return result;
}

void sub_23EF6A390(uint64_t a1, void ***a2)
{
  v10 = 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2);
  (*(*a1 + 120))(a1, &v10);
  v4 = a2[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * (v4 - *a2);
  if (v10 > v5)
  {
    sub_23EF62D00(a2, v10 - v5);
    v8 = a2;
    v6 = *a2;
    v7 = v8[1];
    if (v7 == v6)
    {
      return;
    }

    goto LABEL_12;
  }

  if (v10 >= v5)
  {
    v7 = a2[1];
    v6 = *a2;
    if (v4 == v6)
    {
      return;
    }

    goto LABEL_12;
  }

  v7 = &(*a2)[3 * v10];
  while (v4 != v7)
  {
    v9 = *(v4 - 1);
    v4 -= 3;
    if (v9 < 0)
    {
      operator delete(*v4);
    }
  }

  a2[1] = v7;
  v6 = *a2;
  if (v7 != v6)
  {
    do
    {
LABEL_12:
      (*(*a1 + 144))(a1, v6);
      v6 += 3;
    }

    while (v6 != v7);
  }
}

void sub_23EF6A4C4(void *a1, uint64_t a2, unsigned int a3)
{
  v6 = *a1;
  v8 = a1[1];
  LODWORD(v9) = 2;
  (*(v6 + 104))(a1, &v9);
  if (v8 < 1)
  {
    if (v9 < 2)
    {
      v9 = 0;
      v10 = 0;
      (*(*a1 + 72))(a1, &v9);
      v11 = &v10;
      sub_23EF6A05C(a1, &v11);
      v7 = v10;
      *(a2 + 8) = v9;
      *(a2 + 16) = v7;
      if (a3 < 2)
      {
        return;
      }
    }

    else
    {
      (*(*a1 + 72))(a1, a2 + 8);
      v9 = (a2 + 16);
      sub_23EF6A05C(a1, &v9);
      if (a3 < 2)
      {
        return;
      }
    }
  }

  else
  {
    sub_23EF69DD0(&v8, a1, a2 + 8, v9);
    if (a3 < 2)
    {
      return;
    }
  }

  LOBYTE(v9) = 0;
  (*(*a1 + 80))(a1, &v9);
  if (v9)
  {
    if ((*(a2 + 48) & 1) == 0)
    {
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 48) = 1;
    }

    (*(*a1 + 144))(a1, a2 + 24);
  }

  else if (*(a2 + 48))
  {
    if (*(a2 + 47) < 0)
    {
      operator delete(*(a2 + 24));
    }

    *(a2 + 48) = 0;
  }
}

void sub_23EF6A6E0(int *a1, uint64_t a2, unsigned __int16 *a3, unsigned int a4)
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
      if ((atomic_load_explicit(&qword_27E394058, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394058))
      {
        sub_23EF6A8AC();
      }

      sub_23F2FF068(&stru_27E394040, v9, 2u);
    }

    v6 = *a1;
    a4 = v8;
  }

  if (a4 >= 2 && v6 > 0)
  {
    (*(*a2 + 16))(a2);
    sub_23EF6AFFC(a2, a3);
  }

  if (a4 > 1)
  {
    sub_23EF6AFFC(a2, a3);
  }

LABEL_10:
  sub_23EF6AACC();
}

void sub_23EF6A980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF6A9B0(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_23F302E84("2U]", 2, &v10);
  sub_23EF42150(__p, &v10, 1uLL);
  sub_23F302CF4(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
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
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23EF6AA94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23EF6AF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_23EF60D14(&a22);
  sub_23EF61FDC(&a9);
  _Unwind_Resume(a1);
}

void sub_23EF6AF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_23EF47C2C(&a22);
  sub_23EF61FDC(&a9);
  _Unwind_Resume(a1);
}

void sub_23EF6AFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23EF4F970(v9);
  sub_23EF61FDC(&a9);
  _Unwind_Resume(a1);
}

void sub_23EF6AFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23EF47F24(va);
  _Unwind_Resume(a1);
}

void sub_23EF6AFFC(uint64_t a1, unsigned __int16 *a2)
{
  v7[0] = a2;
  sub_23EF6B44C(a1, v7);
  v4 = *(a1 + 8);
  LODWORD(v7[0]) = 2;
  (*(*a1 + 104))(a1, v7);
  if (v4 >= 1)
  {
    if (v4 == 2)
    {
      if (LODWORD(v7[0]) >= 2)
      {
        LODWORD(v7[0]) = 2;
        (*(*a1 + 104))(a1, v7);
        if (LODWORD(v7[0]) >= 3)
        {
          v5 = v7[0];
          if ((atomic_load_explicit(&qword_27E394038, memory_order_acquire) & 1) == 0)
          {
            if (__cxa_guard_acquire(&qword_27E394038))
            {
              sub_23EF6B704();
            }
          }

          sub_23F2FF068(&stru_27E394020, v5, 2u);
        }

LABEL_8:
        (*(*a1 + 16))(a1);
        v7[0] = a2 + 4;
        sub_23EF6B808(a1, v7);
        (*(*a1 + 104))(a1, a2 + 8);
        (*(*a1 + 104))(a1, a2 + 10);
        (*(*a1 + 24))(a1);
        v6 = *a2;
        if (v6 != 1)
        {
          goto LABEL_9;
        }

        goto LABEL_11;
      }
    }

    else if (LODWORD(v7[0]) > 1)
    {
      goto LABEL_8;
    }
  }

  sub_23EF6B5C4(a1, a2 + 8, v7[0]);
  v6 = *a2;
  if (v6 != 1)
  {
LABEL_9:
    sub_23F096D6C(v6);
    sub_23EF6B980(v7, a1);
    sub_23EF60504();
  }

LABEL_11:
  sub_23F094E7C(a2);
}

void sub_23EF6B438(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF60D14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23EF6B44C(_BYTE *a1, _WORD **a2)
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

void sub_23EF6B570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  a17 = 0;
  sub_23F302A54(&a17, v17);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double sub_23EF6B5C4(_BYTE *a1, char *a2, unsigned int a3)
{
  if (a3 < 2)
  {
    v7 = 1uLL;
    v8 = &v7;
    sub_23EF6B808(a1, &v8);
    (*(*a1 + 104))(a1, &v7 + 8);
    (*(*a1 + 104))(a1, &v7 | 0xC);
    result = *&v7;
    *a2 = v7;
  }

  else
  {
    *&v7 = a2;
    sub_23EF6B808(a1, &v7);
    (*(*a1 + 104))(a1, a2 + 8);
    v5 = *(*a1 + 104);

    v5(a1, a2 + 12);
  }

  return result;
}

void sub_23EF6B7D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EF6B808(_BYTE *a1, void ***a2)
{
  if ((a1[12] & 2) != 0)
  {
    memset(__p, 0, sizeof(__p));
    (*(*a1 + 144))(a1, __p);
    operator new();
  }

  __p[0] = 0;
  result = (*(*a1 + 120))(a1, __p);
  **a2 = __p[0];
  return result;
}

void sub_23EF6B92C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  a17 = 0;
  sub_23F302A54(&a17, v17);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_23EF6B980(uint64_t a1, uint64_t a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x245CACAF0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  v4 = (a1 + 64);
  *(a1 + 80) = 0u;
  *(a1 + 96) = 24;
  sub_23EF36F98(a1);
  *(a1 + 168) = 0;
  *(a1 + 104) = MEMORY[0x277D82848] + 24;
  *(a1 + 112) = 0;
  *(a1 + 120) = MEMORY[0x277D82848] + 64;
  std::ios_base::init((a1 + 120), a1);
  *(a1 + 256) = 0;
  *(a1 + 264) = -1;
  __n = 0;
  (*(*a2 + 120))(a2, &__n);
  memset(&v9, 0, sizeof(v9));
  if (__n)
  {
    std::string::append(&v9, __n, 0);
    v5 = __n;
    if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v9;
    }

    else
    {
      v6 = v9.__r_.__value_.__r.__words[0];
    }
  }

  else
  {
    v5 = 0;
    v6 = &v9;
  }

  v8[0] = v6;
  v8[1] = v5;
  (*(*a2 + 272))(a2, v8);
  if (*(a1 + 87) < 0)
  {
    operator delete(*v4);
  }

  *v4 = *&v9.__r_.__value_.__l.__data_;
  *(a1 + 80) = *(&v9.__r_.__value_.__l + 2);
  *(&v9.__r_.__value_.__s + 23) = 0;
  v9.__r_.__value_.__s.__data_[0] = 0;
  sub_23EF36F98(a1);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_23EF6BB6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  std::istream::~istream();
  sub_23EF57920(v16);
  _Unwind_Resume(a1);
}

void sub_23EF6BF98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_23EF3AE8C(v13 + 8);
  sub_23EF3AE8C(va);
  sub_23EF3AE8C(v14 - 80);
  MEMORY[0x245CACD00](v11, v12);
  _Unwind_Resume(a1);
}

void sub_23EF6BFC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  (*(*v9 + 8))(v9);
  sub_23EF6EF28(&a9);
  _Unwind_Resume(a1);
}

void sub_23EF6C004(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF6E650(v4);
  sub_23EF6EE94(va);
  MEMORY[0x245CACD00](v2, v3);
  _Unwind_Resume(a1);
}

void *sub_23EF6C02C(void *result)
{
  *result = &unk_285179518;
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

void sub_23EF6C0C0(void *a1)
{
  *a1 = &unk_285179518;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23EF6C170@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(result + 24);
  *(a2 + 8) = *(result + 32);
  return result;
}

uint64_t sub_23EF6C184(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
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

void *sub_23EF6C214(void *a1)
{
  *a1 = &unk_285179488;
  sub_23EF44860((a1 + 12));
  result = a1;
  a1[1] = &unk_2851794D0;
  a1[2] = &unk_285179518;
  v3 = a1[4];
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

void sub_23EF6C2F4(void *a1)
{
  *a1 = &unk_285179488;
  sub_23EF44860((a1 + 12));
  a1[1] = &unk_2851794D0;
  a1[2] = &unk_285179518;
  v2 = a1[4];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x245CACD00);
}

void sub_23EF6C3F0(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E3940B8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3940B8))
    {
      sub_23F302BD0("cv3d::kit::viz::ImageData]", 0x19uLL, &xmmword_27E3940A0);
      __cxa_guard_release(&qword_27E3940B8);
    }
  }

  (*(*(a1 + 8) + 24))(__p, a1 + 8);
  sub_23EF44334(&xmmword_27E3940A0, "{", __p, ",");
}

void sub_23EF6C4F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF6C514(uint64_t a1@<X8>)
{
  *(a1 + 23) = 8;
  strcpy(a1, "cv3d.viz");
  *(a1 + 24) = 1;
}

void *sub_23EF6C590(void *result)
{
  *result = &unk_2851794D0;
  result[1] = &unk_285179518;
  v1 = result[3];
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

void *sub_23EF6C644(void *a1)
{
  *a1 = &unk_285179488;
  sub_23EF44860((a1 + 12));
  result = a1;
  a1[1] = &unk_2851794D0;
  a1[2] = &unk_285179518;
  v3 = a1[4];
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

void sub_23EF6C724(void *a1)
{
  *a1 = &unk_285179488;
  sub_23EF44860((a1 + 12));
  a1[1] = &unk_2851794D0;
  a1[2] = &unk_285179518;
  v2 = a1[4];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x245CACD00);
}

void sub_23EF6C818()
{
  if ((atomic_load_explicit(&qword_27E394098, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E394098))
    {
      sub_23EF6EC48();
    }
  }

  sub_23EF6E704(&xmmword_27E394080, "{");
}

void sub_23EF6C8CC(uint64_t a1@<X8>)
{
  *(a1 + 23) = 15;
  strcpy(a1, "unknown_package");
  *(a1 + 24) = 0;
}

void sub_23EF6C8F8(void *a1)
{
  *a1 = &unk_2851794D0;
  a1[1] = &unk_285179518;
  v1 = a1[3];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23EF6C9C0(char **a1, char **lpsrc)
{
  v4 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28517BF90, &unk_2851794F0, 0);
  if (result)
  {
    if (a1 == lpsrc)
    {
      return 1;
    }

    else
    {

      return sub_23EF6CB08((a1 + 1), result + 8);
    }
  }

  return result;
}

void sub_23EF6CA60()
{
  if ((atomic_load_explicit(&qword_27E394078, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E394078))
    {
      sub_23EF6E1E0();
    }
  }

  sub_23EF6D0E8(&qword_27E394060, "{");
}

uint64_t sub_23EF6CB08(uint64_t a1, uint64_t a2)
{
  sub_23EF6CC50(a1, &v9);
  sub_23EF6CC50(a2, &v8);
  v4 = sub_23EF6CDA8(a1, a2);
  v5 = v8;
  v8 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = v9;
  v9 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  return v4;
}

void sub_23EF6CBBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
    v11 = a10;
    if (!a10)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v11 = a10;
    if (!a10)
    {
      goto LABEL_3;
    }
  }

  (*(*v11 + 8))(v11);
  _Unwind_Resume(exception_object);
}

void sub_23EF6CC50(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if (!v2)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v4 = a1;
      v5 = a2;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      a1 = v4;
      a2 = v5;
      if (!v2)
      {
        goto LABEL_15;
      }
    }

    v2 = *(a1 + 8);
    v6 = *(a1 + 16);
    if (!v6)
    {
      goto LABEL_10;
    }

    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_10;
    }

    v8 = a1;
    v9 = a2;
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    a2 = v9;
    if (*(v8 + 53) == 1)
    {
      goto LABEL_11;
    }

LABEL_15:
    *a2 = 0;
    return;
  }

  if (!v2)
  {
    goto LABEL_15;
  }

LABEL_10:
  if (*(a1 + 53) != 1)
  {
    goto LABEL_15;
  }

LABEL_11:
  v7 = *(*v2 + 96);

  v7(v2, 0);
}

uint64_t sub_23EF6CDA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  if (v2 != *(a2 + 48))
  {
    return 0;
  }

  v3 = (a1 + 24);
  if (*(a1 + 24))
  {
    v4 = *(a1 + 28) == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  v6 = (a2 + 24);
  if (!*(a2 + 24))
  {
    if (v5)
    {
      v7 = 1;
      goto LABEL_13;
    }

    return 0;
  }

  v7 = *(a2 + 28) == 0;
  if ((v5 ^ v7))
  {
    return 0;
  }

LABEL_13:
  if ((v5 & v7) == 1)
  {
    v9 = *v3;
    if (v9 == *v6)
    {
      return (*v6 ^ v9) >> 32 == 0;
    }

    return 0;
  }

  v32[0] = &unk_285179588;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v14 = *(a1 + 52);
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v12 = *(a1 + 40);
    v14 = *(a1 + 52);
    v13 = v2;
  }

  v32[1] = v10;
  v33 = v11;
  v34 = *v3;
  v35 = *(a1 + 32);
  v36 = v12;
  v37 = v13;
  v38 = v14;
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v15 = a2;
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    a2 = v15;
  }

  v25[0] = &unk_285179588;
  v16 = *(a2 + 8);
  v17 = *(a2 + 16);
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    v18 = *(a2 + 40);
    v19 = *(a2 + 48);
    v20 = *(a2 + 52);
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v18 = *(a2 + 40);
    v19 = *(a2 + 48);
    v20 = *(a2 + 52);
  }

  v25[1] = v16;
  v26 = v17;
  v27 = *v6;
  v28 = *(v6 + 2);
  v29 = v18;
  v30 = v19;
  v31 = v20;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  result = sub_23F203B04(v2, v32, v25);
  v21 = v26;
  if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v22 = result;
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
    result = v22;
  }

  v23 = v33;
  if (v33)
  {
    if (!atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v24 = result;
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
      return v24;
    }
  }

  return result;
}

void sub_23EF6D0CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_23EF47ABC(&a9);
  sub_23EF47ABC(&a16);
  _Unwind_Resume(a1);
}

void sub_23EF6D0E8(__int128 *a1, uint64_t a2)
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
  sub_23EF6D294();
}

void sub_23EF6D22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF6D244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF6D258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF6D26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF6D280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF6D49C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_23EF6D4F0(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_23EF6D8F0(a2, v3);
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

size_t sub_23EF6D5F0(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_285178F38[v3])(&v6, v1);
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

void sub_23EF6D6E4(uint64_t *a1, uint64_t a2)
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
    (off_285178F38[v9])(&v12, v2);
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

void sub_23EF6D8A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_23EF6D8F0(uint64_t a1, const char *a2)
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

void sub_23EF6DA8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3522C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23EF6DAA0(void *a1, uint64_t a2)
{
  sub_23EF6CC50(a2, &v36);
  if ((atomic_load_explicit(&qword_27E394078, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394078))
  {
    sub_23EF6E1E0();
  }

  if (byte_27E394077 >= 0)
  {
    v4 = &qword_27E394060;
  }

  else
  {
    v4 = qword_27E394060;
  }

  if (byte_27E394077 >= 0)
  {
    v5 = byte_27E394077;
  }

  else
  {
    v5 = unk_27E394068;
  }

  v6 = sub_23EF2F9B0(a1, v4, v5);
  sub_23EF2F9B0(v6, ": ", 2);
  v7 = *(a2 + 48);
  if (v7 >= 0x29)
  {
    v9 = sub_23EF2F9B0(a1, "Invalid Format (", 16);
    v10 = MEMORY[0x245CAC920](v9, v7);
    v8 = sub_23EF2F9B0(v10, ")", 1);
  }

  else
  {
    v8 = sub_23EF2F9B0(a1, (&off_278C749B8)[2 * v7], (&off_278C749B8)[2 * v7 + 1]);
  }

  sub_23EF2F9B0(v8, ", ", 2);
  sub_23EF6DF6C((a2 + 24), (a2 + 32), "x", 1uLL, &__p);
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

  v13 = sub_23EF2F9B0(a1, p_p, size);
  sub_23EF2F9B0(v13, " ", 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v14 = sub_23EF2F9B0(a1, "[row byte stride ", 17);
  v15 = MEMORY[0x245CAC910](v14, *(a2 + 32));
  v16 = sub_23EF2F9B0(v15, ", ", 2);
  v17 = *(a2 + 40);
  if (*(a2 + 52) == 1 && v17)
  {
    v18 = v16;
    v19 = *(a2 + 8);
    v20 = *(a2 + 16);
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v21 = v19;
        (v20->__on_zero_shared)(v20);
        std::__shared_weak_count::__release_weak(v20);
        v19 = v21;
      }
    }

    (*(*v19 + 88))(v19, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/SharedImage.h:1236");
    v16 = v18;
    v17 = *(a2 + 40);
  }

  v22 = MEMORY[0x245CAC8D0](v16, v17);
  sub_23EF2F9B0(v22, "]", 1);
  sub_23EF2F9B0(a1, ", values = {\n", 13);
  __p.__r_.__value_.__r.__words[0] = &unk_285179588;
  v23 = *(a2 + 8);
  v24 = *(a2 + 16);
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    v25 = *(a2 + 40);
    v26 = *(a2 + 48);
    v27 = *(a2 + 52);
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v25 = *(a2 + 40);
    v26 = *(a2 + 48);
    v27 = *(a2 + 52);
  }

  __p.__r_.__value_.__l.__size_ = v23;
  __p.__r_.__value_.__r.__words[2] = v24;
  v31 = *(a2 + 24);
  v32 = *(a2 + 32);
  v33 = v25;
  v34 = v26;
  v35 = v27;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  v37 = a1;
  sub_23F273F04(v34, &v37, &__p);
  v28 = __p.__r_.__value_.__r.__words[2];
  if (__p.__r_.__value_.__r.__words[2] && !atomic_fetch_add((__p.__r_.__value_.__r.__words[2] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  sub_23EF2F9B0(a1, "\n}", 2);
  result = v36;
  v36 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_23EF6DE80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  __cxa_guard_abort(&qword_27E394078);
  if (!a20)
  {
    _Unwind_Resume(a1);
  }

  (*(*a20 + 8))(a20);
  _Unwind_Resume(a1);
}

void sub_23EF6DF6C(unsigned int *a1@<X0>, unsigned int *a2@<X2>, const std::string::value_type *a3@<X4>, std::string::size_type a4@<X5>, std::string *a5@<X8>)
{
  v10 = a1 - a2;
  if (v10 >= -1)
  {
    v11 = -1;
  }

  else
  {
    v11 = a1 - a2;
  }

  if (a1 == a2)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    v18 = a1;
    do
    {
      v25 = 0;
      std::to_string(&v26, *v18);
      __p = v26;
      if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = SHIBYTE(v26.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v26.__r_.__value_.__l.__size_;
      }

      if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v12 += size;
      ++v18;
    }

    while (v18 != a2);
  }

  v13 = v12 + a4 * ~v11;
  a5->__r_.__value_.__r.__words[0] = 0;
  a5->__r_.__value_.__l.__size_ = 0;
  a5->__r_.__value_.__r.__words[2] = 0;
  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  if (v13 >= 0x17)
  {
    v14 = v13 | 7;
    if (v14 == 23)
    {
      v15 = 24;
    }

    else
    {
      v15 = v14;
    }

    sub_23EF430F4(a5, v15);
  }

  if (v10 < 0)
  {
    v25 = 0;
    std::to_string(&v26, *a1);
    v23 = v26;
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v23;
    }

    else
    {
      v16 = v26.__r_.__value_.__r.__words[0];
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v17 = v26.__r_.__value_.__l.__size_;
    }

    std::string::append(a5, v16, v17);
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
      if ((v10 + 1) < 2)
      {
        return;
      }
    }

    else if ((v10 + 1) < 2)
    {
      return;
    }

    for (i = a1 + 1; i != a2; ++i)
    {
      std::string::append(a5, a3, a4);
      v25 = 0;
      std::to_string(&v26, *i);
      v23 = v26;
      if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &v23;
      }

      else
      {
        v21 = v26.__r_.__value_.__r.__words[0];
      }

      if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v22 = v26.__r_.__value_.__l.__size_;
      }

      std::string::append(a5, v21, v22);
      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_23EF6E17C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v16 + 23) < 0)
  {
    operator delete(*v16);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF6E248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF6E264()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Dynamic]", 31, &v0);
  if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23EF34EA4(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v0;
  }

  sub_23F301470(&__p, "cv3d::kit::img::", 16, &unk_23F3091D6, 0, 1, 1, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_23EF6E508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_3:
    v33 = (v31 - 88);
    if ((v31 - 88) == v30)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      v34 = *(v30 - 1);
      v30 -= 3;
      if (v34 < 0)
      {
        operator delete(*v30);
      }
    }

    while (v30 != v33);
LABEL_11:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  v33 = (v31 - 88);
  if ((v31 - 88) == v30)
  {
    goto LABEL_11;
  }

  goto LABEL_9;
}

void *sub_23EF6E650(void *result)
{
  *result = &unk_2851794D0;
  result[1] = &unk_285179518;
  v1 = result[3];
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

void sub_23EF6E704(__int128 *a1, uint64_t a2)
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
  sub_23EF6E934();
}

void sub_23EF6E8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF6E8BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF6E8D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF6E8E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF6E8F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF6E90C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF6E920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF6EBC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  __cxa_guard_abort(&qword_27E394078);
  v24 = a23;
  a23 = 0;
  if (!v24)
  {
    _Unwind_Resume(a1);
  }

  sub_23F302A54(&a23, v24);
  _Unwind_Resume(a1);
}

void sub_23EF6ED1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF6ED4C()
{
  v2 = *MEMORY[0x277D85DE8];
  v1 = 16;
  strcpy(__p, "ConstSharedImage");
  sub_23EF6E264();
}

void sub_23EF6EE54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3291C(va);
  if (*(v2 - 25) < 0)
  {
    operator delete(*(v2 - 48));
  }

  _Unwind_Resume(a1);
}

void *sub_23EF6EE94(void *result)
{
  *result = &unk_285179518;
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

void **sub_23EF6EF28(void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_285179488;
    sub_23EF44860((v1 + 12));
    v1[1] = &unk_2851794D0;
    v1[2] = &unk_285179518;
    v3 = v1[4];
    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
      }
    }

    MEMORY[0x245CACD00](v1, 0x10F3C40144139A0);
    return v2;
  }

  return result;
}

void sub_23EF6F024(uint64_t a1, void **a2)
{
  v4 = *a2;
  v7 = a2[1];
  v8 = 6;
  v4[13](a2, &v8);
  if (v7 < 1)
  {
    if (v8 < 3)
    {
      sub_23EF69318(&v8, a2, a1 + 16, v8);
    }

    else
    {
      sub_23EF69524(a2, a1 + 16, v8);
    }
  }

  else
  {
    sub_23EF68F0C(&v7, a2, a1 + 16, v8);
  }

  v5 = *a2;
  v7 = a2[1];
  v6 = v7;
  v8 = 2;
  v5[13](a2, &v8);
  if (v6 >= 1)
  {
    sub_23EF6A6E0(&v7, a2, (a1 + 192), v8);
  }

  if (v8 >= 2)
  {
    sub_23EF6AFFC(a2, (a1 + 192));
  }

  sub_23EF6AACC();
}

void sub_23EF6F170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23F2E6438(a2 + 48, (a2 + 40));
  v5 = sub_23F2E72C0(a2);
  *(a2 + 40) = v5;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v5 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v6 = *"sion" == 1852795251) : (v6 = 0), v6))
  {
    *(a2 + 96) = 4;
    *(a2 + 100) = 1;
    *(a2 + 88) = 0;
  }

  else
  {
    LOBYTE(v10) = 6;
    v11 = 4;
    v7 = sub_23F2E72C0(a2);
    v8 = *v7;
    *v7 = 6;
    LOBYTE(v10) = v8;
    v9 = v7[1];
    v7[1] = v11;
    v11 = v9;
    sub_23F0655DC(&v11, v8);
  }

  sub_23EF6FE10(&v10, a3);
  sub_23EF6F2E4(a2, &v10);
}

void sub_23EF6F2E4(uint64_t a1, uint64_t **a2)
{
  if (**(a1 + 40) <= 1u)
  {
    v4 = *(a1 + 88);
    *(a1 + 72) = "vertices";
    *(a1 + 80) = 8;
    if ((v4 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_23F2E6438(a1 + 48, (a1 + 40));
  *(a1 + 40) = sub_23F2E72C0(a1);
  v5 = *(a1 + 88);
  if (v5 == 1)
  {
    v5 = 0;
    *(a1 + 88) = 0;
  }

  v6 = *a2;
  v7 = a2[1];
  if (*a2 == v7)
  {
    v12 = *(a1 + 56);
    v11 = *(v12 - 8);
    *(a1 + 40) = v11;
    *(a1 + 56) = v12 - 8;
    if (v5)
    {
LABEL_9:
      *(a1 + 88) = 0;
    }
  }

  else
  {
    do
    {
      v8 = *v6;
      LODWORD(v15) = *(v6 + 2);
      v14 = v8;
      v13[0] = &v14;
      v13[1] = 3;
      sub_23F2EAAD8(a1, v13);
      v6 = (v6 + 12);
    }

    while (v6 != v7);
    v9 = *(a1 + 56);
    v10 = *(a1 + 88);
    v11 = *(v9 - 8);
    *(a1 + 40) = v11;
    *(a1 + 56) = v9 - 8;
    if (v10)
    {
      goto LABEL_9;
    }
  }

  if (*v11 <= 1u)
  {
    *(a1 + 72) = "colors_type";
    *(a1 + 80) = 11;
    *(a1 + 88) = 1;
  }

  sub_23EF70EE0();
}

uint64_t sub_23EF6FE10(uint64_t a1, uint64_t a2)
{
  v4 = sub_23EF6FF84(a1, a2);
  *(v4 + 8) = *(a2 + 32);
  sub_23EF6FF84(v4 + 5, a2 + 40);
  *(a1 + 72) = *(a2 + 72);
  sub_23EF6FF84((a1 + 80), a2 + 80);
  *(a1 + 112) = *(a2 + 112);
  sub_23EF700B0((a1 + 120), a2 + 120);
  *(a1 + 152) = *(a2 + 152);
  sub_23EF700B0((a1 + 160), a2 + 160);
  sub_23EF701B8((a1 + 192), a2 + 192);
  sub_23EF702E4((a1 + 224), a2 + 224);
  sub_23EF703F8((a1 + 256), a2 + 256);
  sub_23EF701B8((a1 + 288), a2 + 288);
  v5 = *(a2 + 336);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = v5;
  sub_23EF70C64((a1 + 352), a2 + 352);
  return a1;
}

void sub_23EF6FED0(_Unwind_Exception *a1)
{
  sub_23EF4FFB0(v1 + 36);
  sub_23EF50040(v1 + 32);
  sub_23EF500C4(v1 + 28);
  sub_23EF4FFB0(v1 + 24);
  sub_23EF50148(v1 + 20);
  sub_23EF50148(v1 + 15);
  sub_23EF501C8(v1 + 10);
  sub_23EF501C8(v1 + 5);
  sub_23EF501C8(v1);
  _Unwind_Resume(a1);
}

void sub_23EF6FF54(_Unwind_Exception *a1)
{
  sub_23EF501C8(v1 + 5);
  sub_23EF501C8(v1);
  _Unwind_Resume(a1);
}

int **sub_23EF6FF84(int **a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = *(a2 + 28);
  if (v2 == -1)
  {
    sub_23EF41D6C();
  }

  v12 = &v15;
  v5 = (off_2851790C8[v2])(&v12, a2 + 24);
  a1[3] = v5;
  v7 = *a2;
  v6 = *(a2 + 8);
  v12 = a1;
  v13 = 0;
  v8 = v6 - v7;
  if (v6 != v7)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v8 >> 2) >= 0x1555555555555556)
    {
      sub_23EF62578();
    }

    v14 = -1431655765 * (v8 >> 2);
    if (HIDWORD(v5) == 0xFFFFFFFF)
    {
      sub_23EF41D6C();
    }

    v15 = &v14;
    v9 = (off_2851790D8[HIDWORD(v5)])(&v15, a1 + 3);
    *a1 = v9;
    a1[1] = v9;
    a1[2] = &v9[12 * v10];
    memmove(v9, v7, v8);
    a1[1] = &v9[v8];
  }

  return a1;
}

int **sub_23EF700B0(int **a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = *(a2 + 28);
  if (v2 == -1)
  {
    sub_23EF41D6C();
  }

  v12 = &v15;
  v5 = (off_2851790E8[v2])(&v12, a2 + 24);
  a1[3] = v5;
  v7 = *a2;
  v6 = *(a2 + 8);
  v12 = a1;
  v13 = 0;
  v8 = v6 - v7;
  if (v6 != v7)
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      sub_23EF62578();
    }

    v14 = v6 - v7;
    if (HIDWORD(v5) == 0xFFFFFFFF)
    {
      sub_23EF41D6C();
    }

    v15 = &v14;
    v9 = (off_2851790F8[HIDWORD(v5)])(&v15, a1 + 3);
    *a1 = v9;
    a1[1] = v9;
    a1[2] = &v9[v10];
    memmove(v9, v7, v8);
    a1[1] = &v9[v8];
  }

  return a1;
}

int **sub_23EF701B8(int **a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = *(a2 + 28);
  if (v2 == -1)
  {
    sub_23EF41D6C();
  }

  v12 = &v15;
  v5 = (off_285179108[v2])(&v12, a2 + 24);
  a1[3] = v5;
  v7 = *a2;
  v6 = *(a2 + 8);
  v12 = a1;
  v13 = 0;
  v8 = v6 - v7;
  if (v6 != v7)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v8 >> 2) >= 0x1555555555555556)
    {
      sub_23EF62578();
    }

    v14 = -1431655765 * (v8 >> 2);
    if (HIDWORD(v5) == 0xFFFFFFFF)
    {
      sub_23EF41D6C();
    }

    v15 = &v14;
    v9 = (off_285179118[HIDWORD(v5)])(&v15, a1 + 3);
    *a1 = v9;
    a1[1] = v9;
    a1[2] = &v9[12 * v10];
    memmove(v9, v7, v8);
    a1[1] = &v9[v8];
  }

  return a1;
}

int **sub_23EF702E4(int **a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = *(a2 + 28);
  if (v2 == -1)
  {
    sub_23EF41D6C();
  }

  v12 = &v15;
  v5 = (off_285179128[v2])(&v12, a2 + 24);
  a1[3] = v5;
  v7 = *a2;
  v6 = *(a2 + 8);
  v12 = a1;
  v13 = 0;
  v8 = v6 - v7;
  if (v6 != v7)
  {
    if ((v8 >> 3) >> 61)
    {
      sub_23EF62578();
    }

    v14 = v8 >> 3;
    if (HIDWORD(v5) == 0xFFFFFFFF)
    {
      sub_23EF41D6C();
    }

    v15 = &v14;
    v9 = (off_285179138[HIDWORD(v5)])(&v15, a1 + 3);
    *a1 = v9;
    a1[1] = v9;
    a1[2] = &v9[8 * v10];
    memmove(v9, v7, v8);
    a1[1] = &v9[v8];
  }

  return a1;
}

int **sub_23EF703F8(int **a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = *(a2 + 28);
  if (v2 == -1)
  {
    sub_23EF41D6C();
  }

  v12 = &v15;
  v5 = (off_285179148[v2])(&v12, a2 + 24);
  a1[3] = v5;
  v7 = *a2;
  v6 = *(a2 + 8);
  v12 = a1;
  v13 = 0;
  v8 = v6 - v7;
  if (v6 != v7)
  {
    if ((v8 >> 3) >> 61)
    {
      sub_23EF62578();
    }

    v14 = v8 >> 3;
    if (HIDWORD(v5) == 0xFFFFFFFF)
    {
      sub_23EF41D6C();
    }

    v15 = &v14;
    v9 = (off_285179158[HIDWORD(v5)])(&v15, a1 + 3);
    *a1 = v9;
    a1[1] = v9;
    a1[2] = &v9[8 * v10];
    memmove(v9, v7, v8);
    a1[1] = &v9[v8];
  }

  return a1;
}

vm_address_t sub_23EF70560(unsigned int **a1)
{
  v1 = (((12 * **a1 + 4095) & 0x1FFFFFF000) * 0x1555555555555556uLL) >> 64;
  address = 0;
  if (vm_allocate(*MEMORY[0x277D85F48], &address, 12 * v1, 1))
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v4, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  return address;
}

uint64_t **sub_23EF70604(uint64_t **result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v1[1] = v2;
      v3 = -1431655765 * ((v1[2] - v2) >> 2);
      v6 = v2;
      v7 = v3;
      v4 = *(v1 + 7);
      if (v4 == -1)
      {
        sub_23EF41D6C();
      }

      v5 = result;
      v8 = &v6;
      (off_285178EB8[v4])(&v8, v1 + 3);
      return v5;
    }
  }

  return result;
}

vm_address_t sub_23EF706F0(unsigned int **a1)
{
  v1 = **a1 + 4095;
  address = 0;
  if (vm_allocate(*MEMORY[0x277D85F48], &address, v1 & 0x1FFFFF000, 1))
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v4, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  return address;
}

uint64_t **sub_23EF70774(uint64_t **result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v1[1] = v2;
      v3 = *(v1 + 4) - v2;
      v6 = v2;
      v7 = v3;
      v4 = *(v1 + 7);
      if (v4 == -1)
      {
        sub_23EF41D6C();
      }

      v5 = result;
      v8 = &v6;
      (off_285178EA8[v4])(&v8, v1 + 3);
      return v5;
    }
  }

  return result;
}

vm_address_t sub_23EF70854(unsigned int **a1)
{
  v1 = (((12 * **a1 + 4095) & 0x1FFFFFF000) * 0x1555555555555556uLL) >> 64;
  address = 0;
  if (vm_allocate(*MEMORY[0x277D85F48], &address, 12 * v1, 1))
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v4, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  return address;
}

uint64_t **sub_23EF708F8(uint64_t **result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v1[1] = v2;
      v3 = -1431655765 * ((v1[2] - v2) >> 2);
      v6 = v2;
      v7 = v3;
      v4 = *(v1 + 7);
      if (v4 == -1)
      {
        sub_23EF41D6C();
      }

      v5 = result;
      v8 = &v6;
      (off_285178E78[v4])(&v8, v1 + 3);
      return v5;
    }
  }

  return result;
}

vm_address_t sub_23EF709E4(unsigned int **a1)
{
  v1 = (**a1 + 511) & 0x1FFFFFE00;
  address = 0;
  if (vm_allocate(*MEMORY[0x277D85F48], &address, 8 * v1, 1))
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v4, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  return address;
}

uint64_t **sub_23EF70A6C(uint64_t **result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v1[1] = v2;
      v3 = (v1[2] - v2) >> 3;
      v6 = v2;
      v7 = v3;
      v4 = *(v1 + 7);
      if (v4 == -1)
      {
        sub_23EF41D6C();
      }

      v5 = result;
      v8 = &v6;
      (off_285178E98[v4])(&v8, v1 + 3);
      return v5;
    }
  }

  return result;
}

vm_address_t sub_23EF70B4C(unsigned int **a1)
{
  v1 = (**a1 + 511) & 0x1FFFFFE00;
  address = 0;
  if (vm_allocate(*MEMORY[0x277D85F48], &address, 8 * v1, 1))
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v4, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  return address;
}

uint64_t **sub_23EF70BD4(uint64_t **result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v1[1] = v2;
      v3 = (v1[2] - v2) >> 3;
      v6 = v2;
      v7 = v3;
      v4 = *(v1 + 7);
      if (v4 == -1)
      {
        sub_23EF41D6C();
      }

      v5 = result;
      v8 = &v6;
      (off_285178E88[v4])(&v8, v1 + 3);
      return v5;
    }
  }

  return result;
}

int **sub_23EF70C64(int **a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = *(a2 + 28);
  if (v2 == -1)
  {
    sub_23EF41D6C();
  }

  v12 = &v15;
  v5 = (off_285179168[v2])(&v12, a2 + 24);
  a1[3] = v5;
  v7 = *a2;
  v6 = *(a2 + 8);
  v12 = a1;
  v13 = 0;
  v8 = v6 - v7;
  if (v6 != v7)
  {
    if ((v8 >> 2) >> 62)
    {
      sub_23EF62578();
    }

    v14 = v8 >> 2;
    if (HIDWORD(v5) == 0xFFFFFFFF)
    {
      sub_23EF41D6C();
    }

    v15 = &v14;
    v9 = (off_285179178[HIDWORD(v5)])(&v15, a1 + 3);
    *a1 = v9;
    a1[1] = v9;
    a1[2] = &v9[4 * v10];
    memmove(v9, v7, v8);
    a1[1] = &v9[v8];
  }

  return a1;
}

vm_address_t sub_23EF70DC8(unsigned int **a1)
{
  v1 = (**a1 + 1023) & 0x1FFFFFC00;
  address = 0;
  if (vm_allocate(*MEMORY[0x277D85F48], &address, 4 * v1, 1))
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v4, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  return address;
}

uint64_t **sub_23EF70E50(uint64_t **result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v1[1] = v2;
      v3 = (v1[2] - v2) >> 2;
      v6 = v2;
      v7 = v3;
      v4 = *(v1 + 7);
      if (v4 == -1)
      {
        sub_23EF41D6C();
      }

      v5 = result;
      v8 = &v6;
      (off_285178E68[v4])(&v8, v1 + 3);
      return v5;
    }
  }

  return result;
}

void sub_23EF70FB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF70FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF70FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF711FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF71240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 24);
  if (*(v5 + 40) == 1)
  {
    v14[0] = (v5 + 16);
    sub_23F2FD25C(v14, 4u);
  }

  else
  {
    sub_23F2FD4DC(v14, (v5 + 8));
  }

  sub_23F2F887C(*(a2 + 24));
  sub_23EF6FE10(v14, a3);
  sub_23EF71374(a2, v14, 4u);
  sub_23EF4FC00(v14);
  v6 = *(a2 + 24);
  v7 = *(v6[11] - 8);
  sub_23F2F866C(v6 + 6, v6[2] - v7 - 9);
  v8 = v6[6];
  if (v8)
  {
    memmove((v6[3] + v7), v6[7], v8);
  }

  v6[6] = 0;
  v9 = v6[10];
  v10 = v6[11] - 8;
  v6[11] = v10;
  if (v9 == v10)
  {
    v11 = *v6;
    v13 = v6[2];
    v12 = v6[3];
    std::ostream::write();
    if (*(v6 + 40) == 1)
    {
      free(v6[3]);
      *(v6 + 40) = 0;
    }
  }
}

void sub_23EF71374(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2);
  v7 = *(a1 + 24);
  if (*(v7 + 40) == 1)
  {
    i = (v7 + 16);
    sub_23F2FDC5C(&i, v6);
    v8 = *a2;
    v9 = a2[1];
    if (v9 == *a2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_23F2FDF70((v7 + 8));
    v8 = *a2;
    v9 = a2[1];
    if (v9 == *a2)
    {
      goto LABEL_9;
    }
  }

  v10 = v8 + 2;
  do
  {
    while (1)
    {
      v12 = *(a1 + 24);
      if (*(v12 + 40) != 1)
      {
        break;
      }

      i = (v12 + 16);
      sub_23F2FE06C(&v187, &i, v10 - 2);
      sub_23F2FE06C(&v187, &i, v10 - 1);
      sub_23F2FE06C(&v187, &i, v10);
      v11 = v10 + 1;
      v10 += 3;
      if (v11 == v9)
      {
        goto LABEL_9;
      }
    }

    v13 = *(v10 - 2);
    LOBYTE(i) = -54;
    *(&i + 1) = bswap32(v13);
    v14 = *(v12 + 8);
    std::ostream::write();
    v15 = *(v10 - 1);
    LOBYTE(i) = -54;
    *(&i + 1) = bswap32(v15);
    v16 = *(v12 + 8);
    std::ostream::write();
    v17 = *v10;
    LOBYTE(i) = -54;
    *(&i + 1) = bswap32(v17);
    v18 = *(v12 + 8);
    std::ostream::write();
    v19 = v10 + 1;
    v10 += 3;
  }

  while (v19 != v9);
LABEL_9:
  v20 = *(a2 + 8);
  v21 = *(a1 + 24);
  if (*(v21 + 40) == 1)
  {
    i = (v21 + 16);
    sub_23F2FD25C(&i, v20);
  }

  else
  {
    sub_23F2FD4DC(&i, (v21 + 8));
  }

  v22 = 0xAAAAAAAAAAAAAAABLL * ((a2[6] - a2[5]) >> 2);
  v23 = *(a1 + 24);
  if (*(v23 + 40) == 1)
  {
    i = (v23 + 16);
    sub_23F2FDC5C(&i, v22);
    v24 = a2[5];
    v25 = a2[6];
    if (v25 == v24)
    {
      goto LABEL_20;
    }
  }

  else
  {
    sub_23F2FDF70((v23 + 8));
    v24 = a2[5];
    v25 = a2[6];
    if (v25 == v24)
    {
      goto LABEL_20;
    }
  }

  v26 = v24 + 2;
  do
  {
    while (1)
    {
      v28 = *(a1 + 24);
      if (*(v28 + 40) != 1)
      {
        break;
      }

      i = (v28 + 16);
      sub_23F2FE06C(&v187, &i, v26 - 2);
      sub_23F2FE06C(&v187, &i, v26 - 1);
      sub_23F2FE06C(&v187, &i, v26);
      v27 = v26 + 1;
      v26 += 3;
      if (v27 == v25)
      {
        goto LABEL_20;
      }
    }

    v29 = *(v26 - 2);
    LOBYTE(i) = -54;
    *(&i + 1) = bswap32(v29);
    v30 = *(v28 + 8);
    std::ostream::write();
    v31 = *(v26 - 1);
    LOBYTE(i) = -54;
    *(&i + 1) = bswap32(v31);
    v32 = *(v28 + 8);
    std::ostream::write();
    v33 = *v26;
    LOBYTE(i) = -54;
    *(&i + 1) = bswap32(v33);
    v34 = *(v28 + 8);
    std::ostream::write();
    v35 = v26 + 1;
    v26 += 3;
  }

  while (v35 != v25);
LABEL_20:
  v36 = *(a2 + 18);
  v37 = *(a1 + 24);
  if (*(v37 + 40) == 1)
  {
    i = (v37 + 16);
    sub_23F2FD25C(&i, v36);
  }

  else
  {
    sub_23F2FD4DC(&i, (v37 + 8));
  }

  v38 = 0xAAAAAAAAAAAAAAABLL * ((a2[11] - a2[10]) >> 2);
  v39 = *(a1 + 24);
  if (*(v39 + 40) == 1)
  {
    i = (v39 + 16);
    sub_23F2FDC5C(&i, v38);
    v40 = a2[10];
    v41 = a2[11];
    if (v41 == v40)
    {
      goto LABEL_31;
    }
  }

  else
  {
    sub_23F2FDF70((v39 + 8));
    v40 = a2[10];
    v41 = a2[11];
    if (v41 == v40)
    {
      goto LABEL_31;
    }
  }

  v42 = v40 + 2;
  do
  {
    while (1)
    {
      v44 = *(a1 + 24);
      if (*(v44 + 40) != 1)
      {
        break;
      }

      i = (v44 + 16);
      sub_23F2FE06C(&v187, &i, v42 - 2);
      sub_23F2FE06C(&v187, &i, v42 - 1);
      sub_23F2FE06C(&v187, &i, v42);
      v43 = v42 + 1;
      v42 += 3;
      if (v43 == v41)
      {
        goto LABEL_31;
      }
    }

    v45 = *(v42 - 2);
    LOBYTE(i) = -54;
    *(&i + 1) = bswap32(v45);
    v46 = *(v44 + 8);
    std::ostream::write();
    v47 = *(v42 - 1);
    LOBYTE(i) = -54;
    *(&i + 1) = bswap32(v47);
    v48 = *(v44 + 8);
    std::ostream::write();
    v49 = *v42;
    LOBYTE(i) = -54;
    *(&i + 1) = bswap32(v49);
    v50 = *(v44 + 8);
    std::ostream::write();
    v51 = v42 + 1;
    v42 += 3;
  }

  while (v51 != v41);
LABEL_31:
  v52 = *(a2 + 28);
  v53 = *(a1 + 24);
  if (*(v53 + 40) == 1)
  {
    i = (v53 + 16);
    sub_23F2FD25C(&i, v52);
    v54 = a2[16] - a2[15];
    v55 = *(a1 + 24);
    if (*(v55 + 40) != 1)
    {
      goto LABEL_33;
    }
  }

  else
  {
    sub_23F2FD4DC(&i, (v53 + 8));
    v54 = a2[16] - a2[15];
    v55 = *(a1 + 24);
    if (*(v55 + 40) != 1)
    {
LABEL_33:
      sub_23F2FDF70((v55 + 8));
      v56 = a2[15];
      v57 = a2[16];
      v58 = *(a1 + 24);
      if (*(v58 + 40) != 1)
      {
        goto LABEL_34;
      }

LABEL_42:
      for (i = (v58 + 16); v56 != v57; ++v56)
      {
        sub_23F2FC63C(&i, v56);
      }

      goto LABEL_44;
    }
  }

  i = (v55 + 16);
  sub_23F2FDC5C(&i, v54);
  v56 = a2[15];
  v57 = a2[16];
  v58 = *(a1 + 24);
  if (*(v58 + 40) == 1)
  {
    goto LABEL_42;
  }

LABEL_34:
  while (v56 != v57)
  {
    while (1)
    {
      v60 = *v56;
      if ((v60 & 0x80000000) == 0)
      {
        break;
      }

      LOBYTE(i) = -52;
      BYTE1(i) = v60;
      v59 = *(v58 + 8);
      std::ostream::write();
      if (++v56 == v57)
      {
        goto LABEL_44;
      }
    }

    LOBYTE(i) = *v56;
    v61 = *(v58 + 8);
    std::ostream::write();
    ++v56;
  }

LABEL_44:
  v62 = *(a2 + 38);
  v63 = *(a1 + 24);
  if (*(v63 + 40) == 1)
  {
    i = (v63 + 16);
    sub_23F2FD25C(&i, v62);
    v64 = a2[21] - a2[20];
    v65 = *(a1 + 24);
    if (*(v65 + 40) != 1)
    {
      goto LABEL_46;
    }
  }

  else
  {
    sub_23F2FD4DC(&i, (v63 + 8));
    v64 = a2[21] - a2[20];
    v65 = *(a1 + 24);
    if (*(v65 + 40) != 1)
    {
LABEL_46:
      sub_23F2FDF70((v65 + 8));
      v66 = a2[20];
      v67 = a2[21];
      v68 = *(a1 + 24);
      if (*(v68 + 40) != 1)
      {
        goto LABEL_47;
      }

LABEL_55:
      for (i = (v68 + 16); v66 != v67; ++v66)
      {
        sub_23F2FC63C(&i, v66);
      }

      goto LABEL_57;
    }
  }

  i = (v65 + 16);
  sub_23F2FDC5C(&i, v64);
  v66 = a2[20];
  v67 = a2[21];
  v68 = *(a1 + 24);
  if (*(v68 + 40) == 1)
  {
    goto LABEL_55;
  }

LABEL_47:
  while (v66 != v67)
  {
    while (1)
    {
      v70 = *v66;
      if ((v70 & 0x80000000) == 0)
      {
        break;
      }

      LOBYTE(i) = -52;
      BYTE1(i) = v70;
      v69 = *(v68 + 8);
      std::ostream::write();
      if (++v66 == v67)
      {
        goto LABEL_57;
      }
    }

    LOBYTE(i) = *v66;
    v71 = *(v68 + 8);
    std::ostream::write();
    ++v66;
  }

LABEL_57:
  v72 = 0xAAAAAAAAAAAAAAABLL * ((a2[25] - a2[24]) >> 2);
  v73 = *(a1 + 24);
  if (*(v73 + 40) != 1)
  {
    sub_23F2FDF70((v73 + 8));
    v74 = a2[24];
    v75 = a2[25];
    if (v75 == v74)
    {
      goto LABEL_90;
    }

    while (1)
    {
      while (1)
      {
LABEL_63:
        while (1)
        {
          v76 = *(a1 + 24);
          if (*(v76 + 40) != 1)
          {
            break;
          }

          i = (v76 + 16);
          sub_23F2FD25C(&i, *v74);
          sub_23F2FD25C(&i, v74[1]);
          sub_23F2FD25C(&i, v74[2]);
          v74 += 3;
          if (v74 == v75)
          {
            goto LABEL_90;
          }
        }

        v77 = *v74;
        if (*v74 > 0xFF)
        {
          break;
        }

        if (v77 > 0x7F)
        {
          LOBYTE(i) = -52;
          BYTE1(i) = v77;
          v83 = *(v76 + 8);
          std::ostream::write();
          v79 = v74[1];
          if (v79 >= 0x100)
          {
            goto LABEL_78;
          }
        }

        else
        {
          LOBYTE(i) = *v74;
          v78 = *(v76 + 8);
          std::ostream::write();
          v79 = v74[1];
          if (v79 >= 0x100)
          {
            goto LABEL_78;
          }
        }

LABEL_72:
        if (v79 >= 0x80)
        {
          LOBYTE(i) = -52;
          BYTE1(i) = v79;
          v86 = *(v76 + 8);
          std::ostream::write();
          v85 = v74[2];
          if (v85 >= 0x100)
          {
            goto LABEL_86;
          }
        }

        else
        {
          LOBYTE(i) = v79;
          v84 = *(v76 + 8);
          std::ostream::write();
          v85 = v74[2];
          if (v85 >= 0x100)
          {
            goto LABEL_86;
          }
        }

LABEL_80:
        if (v85 >= 0x80)
        {
          LOBYTE(i) = -52;
          BYTE1(i) = v85;
          v91 = *(v76 + 8);
          std::ostream::write();
          v74 += 3;
          if (v74 == v75)
          {
            goto LABEL_90;
          }
        }

        else
        {
          LOBYTE(i) = v85;
          v90 = *(v76 + 8);
          std::ostream::write();
          v74 += 3;
          if (v74 == v75)
          {
            goto LABEL_90;
          }
        }
      }

      v80 = HIWORD(v77);
      v81 = bswap32(v77);
      if (v80)
      {
        LOBYTE(i) = -50;
        *(&i + 1) = v81;
        v87 = *(v76 + 8);
        std::ostream::write();
        v79 = v74[1];
        if (v79 >= 0x100)
        {
          goto LABEL_78;
        }

        goto LABEL_72;
      }

      LOBYTE(i) = -51;
      *(&i + 1) = HIWORD(v81);
      v82 = *(v76 + 8);
      std::ostream::write();
      v79 = v74[1];
      if (v79 < 0x100)
      {
        goto LABEL_72;
      }

LABEL_78:
      v88 = bswap32(v79);
      if (v79 >= 0x10000)
      {
        LOBYTE(i) = -50;
        *(&i + 1) = v88;
        v92 = *(v76 + 8);
        std::ostream::write();
        v85 = v74[2];
        if (v85 < 0x100)
        {
          goto LABEL_80;
        }
      }

      else
      {
        LOBYTE(i) = -51;
        *(&i + 1) = HIWORD(v88);
        v89 = *(v76 + 8);
        std::ostream::write();
        v85 = v74[2];
        if (v85 < 0x100)
        {
          goto LABEL_80;
        }
      }

LABEL_86:
      v93 = bswap32(v85);
      if (v85 >= 0x10000)
      {
        LOBYTE(i) = -50;
        *(&i + 1) = v93;
        v95 = *(v76 + 8);
        std::ostream::write();
        v74 += 3;
        if (v74 == v75)
        {
          goto LABEL_90;
        }
      }

      else
      {
        LOBYTE(i) = -51;
        *(&i + 1) = HIWORD(v93);
        v94 = *(v76 + 8);
        std::ostream::write();
        v74 += 3;
        if (v74 == v75)
        {
          goto LABEL_90;
        }
      }
    }
  }

  i = (v73 + 16);
  sub_23F2FDC5C(&i, v72);
  v74 = a2[24];
  v75 = a2[25];
  if (v75 != v74)
  {
    goto LABEL_63;
  }

LABEL_90:
  v96 = (a2[29] - a2[28]) >> 3;
  v97 = *(a1 + 24);
  if (*(v97 + 40) != 1)
  {
    sub_23F2FDF70((v97 + 8));
    v98 = a2[28];
    v99 = a2[29];
    if (v99 == v98)
    {
      goto LABEL_115;
    }

    while (1)
    {
      while (1)
      {
LABEL_96:
        while (1)
        {
          v100 = *(a1 + 24);
          if (*(v100 + 40) != 1)
          {
            break;
          }

          i = (v100 + 16);
          sub_23F2FD25C(&i, *v98);
          sub_23F2FD25C(&i, v98[1]);
          v98 += 2;
          if (v98 == v99)
          {
            goto LABEL_115;
          }
        }

        v101 = *v98;
        if (*v98 <= 0xFF)
        {
          break;
        }

        v104 = HIWORD(v101);
        v105 = bswap32(v101);
        if (!v104)
        {
          LOBYTE(i) = -51;
          *(&i + 1) = HIWORD(v105);
          v106 = *(v100 + 8);
          std::ostream::write();
          v103 = v98[1];
          if (v103 >= 0x100)
          {
            goto LABEL_111;
          }

          goto LABEL_105;
        }

        LOBYTE(i) = -50;
        *(&i + 1) = v105;
        v110 = *(v100 + 8);
        std::ostream::write();
        v103 = v98[1];
        if (v103 < 0x100)
        {
          goto LABEL_105;
        }

LABEL_111:
        v111 = bswap32(v103);
        if (v103 >= 0x10000)
        {
          LOBYTE(i) = -50;
          *(&i + 1) = v111;
          v113 = *(v100 + 8);
          std::ostream::write();
          v98 += 2;
          if (v98 == v99)
          {
            goto LABEL_115;
          }
        }

        else
        {
          LOBYTE(i) = -51;
          *(&i + 1) = HIWORD(v111);
          v112 = *(v100 + 8);
          std::ostream::write();
          v98 += 2;
          if (v98 == v99)
          {
            goto LABEL_115;
          }
        }
      }

      if (v101 > 0x7F)
      {
        LOBYTE(i) = -52;
        BYTE1(i) = v101;
        v107 = *(v100 + 8);
        std::ostream::write();
        v103 = v98[1];
        if (v103 < 0x100)
        {
          goto LABEL_105;
        }

        goto LABEL_111;
      }

      LOBYTE(i) = *v98;
      v102 = *(v100 + 8);
      std::ostream::write();
      v103 = v98[1];
      if (v103 >= 0x100)
      {
        goto LABEL_111;
      }

LABEL_105:
      if (v103 >= 0x80)
      {
        LOBYTE(i) = -52;
        BYTE1(i) = v103;
        v109 = *(v100 + 8);
        std::ostream::write();
        v98 += 2;
        if (v98 == v99)
        {
          goto LABEL_115;
        }
      }

      else
      {
        LOBYTE(i) = v103;
        v108 = *(v100 + 8);
        std::ostream::write();
        v98 += 2;
        if (v98 == v99)
        {
          goto LABEL_115;
        }
      }
    }
  }

  i = (v97 + 16);
  sub_23F2FDC5C(&i, v96);
  v98 = a2[28];
  v99 = a2[29];
  if (v99 != v98)
  {
    goto LABEL_96;
  }

LABEL_115:
  v114 = (a2[33] - a2[32]) >> 3;
  v115 = *(a1 + 24);
  if (*(v115 + 40) == 1)
  {
    i = (v115 + 16);
    sub_23F2FDC5C(&i, v114);
    v116 = a2[32];
    v117 = a2[33];
    if (v117 == v116)
    {
      goto LABEL_123;
    }
  }

  else
  {
    sub_23F2FDF70((v115 + 8));
    v116 = a2[32];
    v117 = a2[33];
    if (v117 == v116)
    {
      goto LABEL_123;
    }
  }

  v118 = v116 + 1;
  do
  {
    while (1)
    {
      v120 = *(a1 + 24);
      if (*(v120 + 40) != 1)
      {
        break;
      }

      i = (v120 + 16);
      sub_23F2FE06C(&v187, &i, v118 - 1);
      sub_23F2FE06C(&v187, &i, v118);
      v119 = v118 + 1;
      v118 += 2;
      if (v119 == v117)
      {
        goto LABEL_123;
      }
    }

    v121 = *(v118 - 1);
    LOBYTE(i) = -54;
    *(&i + 1) = bswap32(v121);
    v122 = *(v120 + 8);
    std::ostream::write();
    v123 = *v118;
    LOBYTE(i) = -54;
    *(&i + 1) = bswap32(v123);
    v124 = *(v120 + 8);
    std::ostream::write();
    v125 = v118 + 1;
    v118 += 2;
  }

  while (v125 != v117);
LABEL_123:
  v126 = 0xAAAAAAAAAAAAAAABLL * ((a2[37] - a2[36]) >> 2);
  v127 = *(a1 + 24);
  if (*(v127 + 40) != 1)
  {
    sub_23F2FDF70((v127 + 8));
    v128 = a2[36];
    v129 = a2[37];
    if (v129 == v128)
    {
      goto LABEL_156;
    }

    while (1)
    {
      while (1)
      {
LABEL_129:
        while (1)
        {
          v130 = *(a1 + 24);
          if (*(v130 + 40) != 1)
          {
            break;
          }

          i = (v130 + 16);
          sub_23F2FD25C(&i, *v128);
          sub_23F2FD25C(&i, v128[1]);
          sub_23F2FD25C(&i, v128[2]);
          v128 += 3;
          if (v128 == v129)
          {
            goto LABEL_156;
          }
        }

        v131 = *v128;
        if (*v128 > 0xFF)
        {
          break;
        }

        if (v131 > 0x7F)
        {
          LOBYTE(i) = -52;
          BYTE1(i) = v131;
          v137 = *(v130 + 8);
          std::ostream::write();
          v133 = v128[1];
          if (v133 >= 0x100)
          {
            goto LABEL_144;
          }
        }

        else
        {
          LOBYTE(i) = *v128;
          v132 = *(v130 + 8);
          std::ostream::write();
          v133 = v128[1];
          if (v133 >= 0x100)
          {
            goto LABEL_144;
          }
        }

LABEL_138:
        if (v133 >= 0x80)
        {
          LOBYTE(i) = -52;
          BYTE1(i) = v133;
          v140 = *(v130 + 8);
          std::ostream::write();
          v139 = v128[2];
          if (v139 >= 0x100)
          {
            goto LABEL_152;
          }
        }

        else
        {
          LOBYTE(i) = v133;
          v138 = *(v130 + 8);
          std::ostream::write();
          v139 = v128[2];
          if (v139 >= 0x100)
          {
            goto LABEL_152;
          }
        }

LABEL_146:
        if (v139 >= 0x80)
        {
          LOBYTE(i) = -52;
          BYTE1(i) = v139;
          v145 = *(v130 + 8);
          std::ostream::write();
          v128 += 3;
          if (v128 == v129)
          {
            goto LABEL_156;
          }
        }

        else
        {
          LOBYTE(i) = v139;
          v144 = *(v130 + 8);
          std::ostream::write();
          v128 += 3;
          if (v128 == v129)
          {
            goto LABEL_156;
          }
        }
      }

      v134 = HIWORD(v131);
      v135 = bswap32(v131);
      if (v134)
      {
        LOBYTE(i) = -50;
        *(&i + 1) = v135;
        v141 = *(v130 + 8);
        std::ostream::write();
        v133 = v128[1];
        if (v133 >= 0x100)
        {
          goto LABEL_144;
        }

        goto LABEL_138;
      }

      LOBYTE(i) = -51;
      *(&i + 1) = HIWORD(v135);
      v136 = *(v130 + 8);
      std::ostream::write();
      v133 = v128[1];
      if (v133 < 0x100)
      {
        goto LABEL_138;
      }

LABEL_144:
      v142 = bswap32(v133);
      if (v133 >= 0x10000)
      {
        LOBYTE(i) = -50;
        *(&i + 1) = v142;
        v146 = *(v130 + 8);
        std::ostream::write();
        v139 = v128[2];
        if (v139 < 0x100)
        {
          goto LABEL_146;
        }
      }

      else
      {
        LOBYTE(i) = -51;
        *(&i + 1) = HIWORD(v142);
        v143 = *(v130 + 8);
        std::ostream::write();
        v139 = v128[2];
        if (v139 < 0x100)
        {
          goto LABEL_146;
        }
      }

LABEL_152:
      v147 = bswap32(v139);
      if (v139 >= 0x10000)
      {
        LOBYTE(i) = -50;
        *(&i + 1) = v147;
        v149 = *(v130 + 8);
        std::ostream::write();
        v128 += 3;
        if (v128 == v129)
        {
          goto LABEL_156;
        }
      }

      else
      {
        LOBYTE(i) = -51;
        *(&i + 1) = HIWORD(v147);
        v148 = *(v130 + 8);
        std::ostream::write();
        v128 += 3;
        if (v128 == v129)
        {
          goto LABEL_156;
        }
      }
    }
  }

  i = (v127 + 16);
  sub_23F2FDC5C(&i, v126);
  v128 = a2[36];
  v129 = a2[37];
  if (v129 != v128)
  {
    goto LABEL_129;
  }

LABEL_156:
  if (a3 < 2)
  {
    return;
  }

  if (*(a2 + 344) != 1)
  {
    v187 = 0;
    v166 = *(a1 + 24);
    if (*(v166 + 40) == 1)
    {
      i = (v166 + 16);
      sub_23F2FC63C(&i, &v187);
    }

    else
    {
      LOBYTE(i) = 0;
      v176 = *(v166 + 8);
      std::ostream::write();
    }

    goto LABEL_175;
  }

  v187 = 1;
  v150 = *(a1 + 24);
  if (*(v150 + 40) == 1)
  {
    i = (v150 + 16);
    sub_23F2FC63C(&i, &v187);
    v151 = *(a1 + 24);
    if (*(v151 + 40) != 1)
    {
      goto LABEL_160;
    }
  }

  else
  {
    LOBYTE(i) = 1;
    v167 = *(v150 + 8);
    std::ostream::write();
    v151 = *(a1 + 24);
    if (*(v151 + 40) != 1)
    {
LABEL_160:
      sub_23F2FD4DC(&i, (v151 + 8));
      sub_23F2F887C(*(a1 + 24));
      v152 = *(a1 + 24);
      if (*(v152 + 40) != 1)
      {
        goto LABEL_161;
      }

LABEL_167:
      i = (v152 + 16);
      sub_23F2FE06C(&v187, &i, a2 + 80);
      sub_23F2FE06C(&v187, &i, a2 + 81);
      sub_23F2FE06C(&v187, &i, a2 + 82);
      v159 = *(a1 + 24);
      if (*(v159 + 40) != 1)
      {
        goto LABEL_162;
      }

LABEL_168:
      i = (v159 + 16);
      sub_23F2FE06C(&v187, &i, a2 + 83);
      sub_23F2FE06C(&v187, &i, a2 + 84);
      sub_23F2FE06C(&v187, &i, a2 + 85);
      goto LABEL_169;
    }
  }

  i = (v151 + 16);
  sub_23F2FD25C(&i, 2u);
  sub_23F2F887C(*(a1 + 24));
  v152 = *(a1 + 24);
  if (*(v152 + 40) == 1)
  {
    goto LABEL_167;
  }

LABEL_161:
  v153 = *(a2 + 80);
  LOBYTE(i) = -54;
  *(&i + 1) = bswap32(v153);
  v154 = *(v152 + 8);
  std::ostream::write();
  v155 = *(a2 + 81);
  LOBYTE(i) = -54;
  *(&i + 1) = bswap32(v155);
  v156 = *(v152 + 8);
  std::ostream::write();
  v157 = *(a2 + 82);
  LOBYTE(i) = -54;
  *(&i + 1) = bswap32(v157);
  v158 = *(v152 + 8);
  std::ostream::write();
  v159 = *(a1 + 24);
  if (*(v159 + 40) == 1)
  {
    goto LABEL_168;
  }

LABEL_162:
  v160 = *(a2 + 83);
  LOBYTE(i) = -54;
  *(&i + 1) = bswap32(v160);
  v161 = *(v159 + 8);
  std::ostream::write();
  v162 = *(a2 + 84);
  LOBYTE(i) = -54;
  *(&i + 1) = bswap32(v162);
  v163 = *(v159 + 8);
  std::ostream::write();
  v164 = *(a2 + 85);
  LOBYTE(i) = -54;
  *(&i + 1) = bswap32(v164);
  v165 = *(v159 + 8);
  std::ostream::write();
LABEL_169:
  v168 = *(a1 + 24);
  v169 = *(v168[11] - 8);
  sub_23F2F866C(v168 + 6, v168[2] - v169 - 9);
  v170 = v168[6];
  if (v170)
  {
    memmove((v168[3] + v169), v168[7], v170);
  }

  v168[6] = 0;
  v171 = v168[10];
  v172 = v168[11] - 8;
  v168[11] = v172;
  if (v171 == v172)
  {
    v173 = *v168;
    v175 = v168[2];
    v174 = v168[3];
    std::ostream::write();
    if (*(v168 + 40) == 1)
    {
      free(v168[3]);
      *(v168 + 40) = 0;
    }
  }

LABEL_175:
  if (a3 < 4)
  {
    return;
  }

  v177 = *(a2 + 87);
  v178 = *(a1 + 24);
  if (*(v178 + 40) == 1)
  {
    i = (v178 + 16);
    sub_23F2FD25C(&i, v177);
  }

  else
  {
    sub_23F2FD4DC(&i, (v178 + 8));
  }

  v179 = (a2[45] - a2[44]) >> 2;
  v180 = *(a1 + 24);
  if (*(v180 + 40) == 1)
  {
    i = (v180 + 16);
    sub_23F2FDC5C(&i, v179);
    v182 = a2[44];
    v181 = a2[45];
    v183 = *(a1 + 24);
    if (*(v183 + 40) != 1)
    {
      goto LABEL_181;
    }
  }

  else
  {
    sub_23F2FDF70((v180 + 8));
    v182 = a2[44];
    v181 = a2[45];
    v183 = *(a1 + 24);
    if (*(v183 + 40) != 1)
    {
LABEL_181:
      while (v182 != v181)
      {
        v184 = *v182++;
        LOBYTE(i) = -54;
        *(&i + 1) = bswap32(v184);
        v185 = *(v183 + 8);
        std::ostream::write();
      }

      return;
    }
  }

  for (i = (v183 + 16); v182 != v181; ++v182)
  {
    sub_23F2FE06C(&v187, &i, v182);
  }
}

void sub_23EF72680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23F07903C(a2 + 48, (a2 + 40));
  v5 = sub_23F2E6C78(a2);
  *(a2 + 40) = v5;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v5 < 2u && ((*(a2 + 72) = "version", *(a2 + 80) = 7, *(a2 + 88) = 1, *"version" == 1936876918) ? (v6 = *"sion" == 1852795251) : (v6 = 0), v6))
  {
    *(a2 + 96) = 4;
    *(a2 + 100) = 1;
    *(a2 + 88) = 0;
  }

  else
  {
    LOBYTE(v10) = 6;
    v11[0] = 4;
    v7 = sub_23F2E6C78(a2);
    v8 = *v7;
    *v7 = 6;
    LOBYTE(v10) = v8;
    v9 = v7[1];
    v7[1] = v11[0];
    v11[0] = v9;
    sub_23F06357C(v11, v8);
  }

  sub_23EF6FE10(&v10, a3);
  sub_23EF727F4(a2, &v10);
}

void sub_23EF727F4(uint64_t a1, uint64_t **a2)
{
  if (**(a1 + 40) <= 1u)
  {
    v4 = *(a1 + 88);
    *(a1 + 72) = "vertices";
    *(a1 + 80) = 8;
    if ((v4 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_23F07903C(a1 + 48, (a1 + 40));
  *(a1 + 40) = sub_23F2E6C78(a1);
  v5 = *(a1 + 88);
  if (v5 == 1)
  {
    v5 = 0;
    *(a1 + 88) = 0;
  }

  v6 = *a2;
  v7 = a2[1];
  if (*a2 == v7)
  {
    v12 = *(a1 + 56);
    v11 = *(v12 - 8);
    *(a1 + 40) = v11;
    *(a1 + 56) = v12 - 8;
    if (v5)
    {
LABEL_9:
      *(a1 + 88) = 0;
    }
  }

  else
  {
    do
    {
      v8 = *v6;
      LODWORD(v15) = *(v6 + 2);
      v14 = v8;
      v13[0] = &v14;
      v13[1] = 3;
      sub_23F2E8C48(a1, v13);
      v6 = (v6 + 12);
    }

    while (v6 != v7);
    v9 = *(a1 + 56);
    v10 = *(a1 + 88);
    v11 = *(v9 - 8);
    *(a1 + 40) = v11;
    *(a1 + 56) = v9 - 8;
    if (v10)
    {
      goto LABEL_9;
    }
  }

  if (*v11 <= 1u)
  {
    *(a1 + 72) = "colors_type";
    *(a1 + 80) = 11;
    *(a1 + 88) = 1;
  }

  sub_23EF73320();
}

void sub_23EF733F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF7340C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF73420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF73434(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 2);
  if (*(a1 + 40))
  {
    v7 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_23EF2F9B0(v7, &__p, 1);
  }

  MEMORY[0x245CAC960](*(a1 + 24), v6);
  v8 = *(a1 + 40) + 1;
  *(a1 + 40) = v8;
  v9 = *a2;
  v10 = *(a2 + 8);
  if (v10 != *a2)
  {
    while (1)
    {
      if (v8)
      {
        v11 = *(a1 + 24);
        LOBYTE(__p) = *(a1 + 32);
        sub_23EF2F9B0(v11, &__p, 1);
      }

      v155 = 9;
      v12 = *(a1 + 24);
      sub_23F2F41C4("{:.{}}", v9, &v155, &__p);
      v13 = (v154 & 0x80u) == 0 ? &__p : __p;
      v14 = (v154 & 0x80u) == 0 ? v154 : v153;
      sub_23EF2F9B0(v12, v13, v14);
      if ((v154 & 0x80000000) == 0)
      {
        break;
      }

      operator delete(__p);
      v27 = *(a1 + 40);
      *(a1 + 40) = v27 + 1;
      if (v27 != -1)
      {
        goto LABEL_16;
      }

LABEL_17:
      v155 = 9;
      v17 = *(a1 + 24);
      v18 = v9 + 1;
      sub_23F2F41C4("{:.{}}", v18, &v155, &__p);
      if ((v154 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v154 & 0x80u) == 0)
      {
        v20 = v154;
      }

      else
      {
        v20 = v153;
      }

      sub_23EF2F9B0(v17, p_p, v20);
      if (v154 < 0)
      {
        operator delete(__p);
        v28 = *(a1 + 40);
        *(a1 + 40) = v28 + 1;
        if (v28 == -1)
        {
          goto LABEL_26;
        }

LABEL_25:
        v22 = *(a1 + 24);
        LOBYTE(__p) = *(a1 + 32);
        sub_23EF2F9B0(v22, &__p, 1);
        goto LABEL_26;
      }

      v21 = *(a1 + 40);
      *(a1 + 40) = v21 + 1;
      if (v21 != -1)
      {
        goto LABEL_25;
      }

LABEL_26:
      v155 = 9;
      v23 = *(a1 + 24);
      v24 = v18 + 1;
      sub_23F2F41C4("{:.{}}", v24, &v155, &__p);
      if ((v154 & 0x80u) == 0)
      {
        v25 = &__p;
      }

      else
      {
        v25 = __p;
      }

      if ((v154 & 0x80u) == 0)
      {
        v26 = v154;
      }

      else
      {
        v26 = v153;
      }

      sub_23EF2F9B0(v23, v25, v26);
      if (v154 < 0)
      {
        operator delete(__p);
      }

      v8 = *(a1 + 40) + 1;
      *(a1 + 40) = v8;
      v9 = v24 + 1;
      if (v9 == v10)
      {
        goto LABEL_38;
      }
    }

    v15 = *(a1 + 40);
    *(a1 + 40) = v15 + 1;
    if (v15 == -1)
    {
      goto LABEL_17;
    }

LABEL_16:
    v16 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_23EF2F9B0(v16, &__p, 1);
    goto LABEL_17;
  }

LABEL_38:
  v29 = *(a2 + 32);
  if (v8)
  {
    v30 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_23EF2F9B0(v30, &__p, 1);
  }

  MEMORY[0x245CAC910](*(a1 + 24), v29);
  v31 = *(a1 + 40);
  *(a1 + 40) = v31 + 1;
  v32 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 2);
  if (v31 != -1)
  {
    v33 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_23EF2F9B0(v33, &__p, 1);
  }

  MEMORY[0x245CAC960](*(a1 + 24), v32);
  v34 = *(a1 + 40) + 1;
  *(a1 + 40) = v34;
  v35 = *(a2 + 40);
  v36 = *(a2 + 48);
  if (v36 != v35)
  {
    while (1)
    {
      if (v34)
      {
        v37 = *(a1 + 24);
        LOBYTE(__p) = *(a1 + 32);
        sub_23EF2F9B0(v37, &__p, 1);
      }

      v155 = 9;
      v38 = *(a1 + 24);
      sub_23F2F41C4("{:.{}}", v35, &v155, &__p);
      v39 = (v154 & 0x80u) == 0 ? &__p : __p;
      v40 = (v154 & 0x80u) == 0 ? v154 : v153;
      sub_23EF2F9B0(v38, v39, v40);
      if ((v154 & 0x80000000) == 0)
      {
        break;
      }

      operator delete(__p);
      v53 = *(a1 + 40);
      *(a1 + 40) = v53 + 1;
      if (v53 != -1)
      {
        goto LABEL_55;
      }

LABEL_56:
      v155 = 9;
      v43 = *(a1 + 24);
      v44 = v35 + 1;
      sub_23F2F41C4("{:.{}}", v44, &v155, &__p);
      if ((v154 & 0x80u) == 0)
      {
        v45 = &__p;
      }

      else
      {
        v45 = __p;
      }

      if ((v154 & 0x80u) == 0)
      {
        v46 = v154;
      }

      else
      {
        v46 = v153;
      }

      sub_23EF2F9B0(v43, v45, v46);
      if (v154 < 0)
      {
        operator delete(__p);
        v54 = *(a1 + 40);
        *(a1 + 40) = v54 + 1;
        if (v54 == -1)
        {
          goto LABEL_65;
        }

LABEL_64:
        v48 = *(a1 + 24);
        LOBYTE(__p) = *(a1 + 32);
        sub_23EF2F9B0(v48, &__p, 1);
        goto LABEL_65;
      }

      v47 = *(a1 + 40);
      *(a1 + 40) = v47 + 1;
      if (v47 != -1)
      {
        goto LABEL_64;
      }

LABEL_65:
      v155 = 9;
      v49 = *(a1 + 24);
      v50 = v44 + 1;
      sub_23F2F41C4("{:.{}}", v50, &v155, &__p);
      if ((v154 & 0x80u) == 0)
      {
        v51 = &__p;
      }

      else
      {
        v51 = __p;
      }

      if ((v154 & 0x80u) == 0)
      {
        v52 = v154;
      }

      else
      {
        v52 = v153;
      }

      sub_23EF2F9B0(v49, v51, v52);
      if (v154 < 0)
      {
        operator delete(__p);
      }

      v34 = *(a1 + 40) + 1;
      *(a1 + 40) = v34;
      v35 = v50 + 1;
      if (v35 == v36)
      {
        goto LABEL_77;
      }
    }

    v41 = *(a1 + 40);
    *(a1 + 40) = v41 + 1;
    if (v41 == -1)
    {
      goto LABEL_56;
    }

LABEL_55:
    v42 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_23EF2F9B0(v42, &__p, 1);
    goto LABEL_56;
  }

LABEL_77:
  v55 = *(a2 + 72);
  if (v34)
  {
    v56 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_23EF2F9B0(v56, &__p, 1);
  }

  MEMORY[0x245CAC910](*(a1 + 24), v55);
  v57 = *(a1 + 40);
  *(a1 + 40) = v57 + 1;
  v58 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 88) - *(a2 + 80)) >> 2);
  if (v57 != -1)
  {
    v59 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_23EF2F9B0(v59, &__p, 1);
  }

  MEMORY[0x245CAC960](*(a1 + 24), v58);
  v60 = *(a1 + 40) + 1;
  *(a1 + 40) = v60;
  v61 = *(a2 + 80);
  v62 = *(a2 + 88);
  if (v62 != v61)
  {
    while (1)
    {
      if (v60)
      {
        v63 = *(a1 + 24);
        LOBYTE(__p) = *(a1 + 32);
        sub_23EF2F9B0(v63, &__p, 1);
      }

      v155 = 9;
      v64 = *(a1 + 24);
      sub_23F2F41C4("{:.{}}", v61, &v155, &__p);
      v65 = (v154 & 0x80u) == 0 ? &__p : __p;
      v66 = (v154 & 0x80u) == 0 ? v154 : v153;
      sub_23EF2F9B0(v64, v65, v66);
      if ((v154 & 0x80000000) == 0)
      {
        break;
      }

      operator delete(__p);
      v79 = *(a1 + 40);
      *(a1 + 40) = v79 + 1;
      if (v79 != -1)
      {
        goto LABEL_94;
      }

LABEL_95:
      v155 = 9;
      v69 = *(a1 + 24);
      v70 = v61 + 1;
      sub_23F2F41C4("{:.{}}", v70, &v155, &__p);
      if ((v154 & 0x80u) == 0)
      {
        v71 = &__p;
      }

      else
      {
        v71 = __p;
      }

      if ((v154 & 0x80u) == 0)
      {
        v72 = v154;
      }

      else
      {
        v72 = v153;
      }

      sub_23EF2F9B0(v69, v71, v72);
      if (v154 < 0)
      {
        operator delete(__p);
        v80 = *(a1 + 40);
        *(a1 + 40) = v80 + 1;
        if (v80 == -1)
        {
          goto LABEL_104;
        }

LABEL_103:
        v74 = *(a1 + 24);
        LOBYTE(__p) = *(a1 + 32);
        sub_23EF2F9B0(v74, &__p, 1);
        goto LABEL_104;
      }

      v73 = *(a1 + 40);
      *(a1 + 40) = v73 + 1;
      if (v73 != -1)
      {
        goto LABEL_103;
      }

LABEL_104:
      v155 = 9;
      v75 = *(a1 + 24);
      v76 = v70 + 1;
      sub_23F2F41C4("{:.{}}", v76, &v155, &__p);
      if ((v154 & 0x80u) == 0)
      {
        v77 = &__p;
      }

      else
      {
        v77 = __p;
      }

      if ((v154 & 0x80u) == 0)
      {
        v78 = v154;
      }

      else
      {
        v78 = v153;
      }

      sub_23EF2F9B0(v75, v77, v78);
      if (v154 < 0)
      {
        operator delete(__p);
      }

      v60 = *(a1 + 40) + 1;
      *(a1 + 40) = v60;
      v61 = v76 + 1;
      if (v61 == v62)
      {
        goto LABEL_116;
      }
    }

    v67 = *(a1 + 40);
    *(a1 + 40) = v67 + 1;
    if (v67 == -1)
    {
      goto LABEL_95;
    }

LABEL_94:
    v68 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_23EF2F9B0(v68, &__p, 1);
    goto LABEL_95;
  }

LABEL_116:
  v81 = *(a2 + 112);
  if (v60)
  {
    v82 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_23EF2F9B0(v82, &__p, 1);
  }

  MEMORY[0x245CAC910](*(a1 + 24), v81);
  v83 = *(a1 + 40);
  *(a1 + 40) = v83 + 1;
  v84 = *(a2 + 128) - *(a2 + 120);
  if (v83 != -1)
  {
    v85 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_23EF2F9B0(v85, &__p, 1);
  }

  MEMORY[0x245CAC960](*(a1 + 24), v84);
  v86 = *(a1 + 40) + 1;
  *(a1 + 40) = v86;
  v87 = *(a2 + 120);
  v88 = *(a2 + 128);
  if (v88 != v87)
  {
    do
    {
      sub_23F2F3D94(a1, v87++);
    }

    while (v87 != v88);
    v86 = *(a1 + 40);
  }

  v89 = *(a2 + 152);
  if (v86)
  {
    v90 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_23EF2F9B0(v90, &__p, 1);
  }

  MEMORY[0x245CAC910](*(a1 + 24), v89);
  v91 = *(a1 + 40);
  *(a1 + 40) = v91 + 1;
  v92 = *(a2 + 168) - *(a2 + 160);
  if (v91 != -1)
  {
    v93 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_23EF2F9B0(v93, &__p, 1);
  }

  MEMORY[0x245CAC960](*(a1 + 24), v92);
  v94 = *(a1 + 40) + 1;
  *(a1 + 40) = v94;
  v95 = *(a2 + 160);
  v96 = *(a2 + 168);
  if (v96 != v95)
  {
    do
    {
      sub_23F2F3D94(a1, v95++);
    }

    while (v95 != v96);
    v94 = *(a1 + 40);
  }

  v97 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 200) - *(a2 + 192)) >> 2);
  if (v94)
  {
    v98 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_23EF2F9B0(v98, &__p, 1);
  }

  MEMORY[0x245CAC960](*(a1 + 24), v97);
  v99 = *(a1 + 40) + 1;
  *(a1 + 40) = v99;
  v100 = *(a2 + 192);
  for (i = *(a2 + 200); v100 != i; v100 += 3)
  {
    if (v99)
    {
      v112 = *(a1 + 24);
      LOBYTE(__p) = *(a1 + 32);
      sub_23EF2F9B0(v112, &__p, 1);
    }

    MEMORY[0x245CAC910](*(a1 + 24), *v100);
    v113 = *(a1 + 40);
    *(a1 + 40) = v113 + 1;
    if (v113 != -1)
    {
      v114 = *(a1 + 24);
      LOBYTE(__p) = *(a1 + 32);
      sub_23EF2F9B0(v114, &__p, 1);
    }

    MEMORY[0x245CAC910](*(a1 + 24), v100[1]);
    v115 = *(a1 + 40);
    *(a1 + 40) = v115 + 1;
    if (v115 != -1)
    {
      v116 = *(a1 + 24);
      LOBYTE(__p) = *(a1 + 32);
      sub_23EF2F9B0(v116, &__p, 1);
    }

    MEMORY[0x245CAC910](*(a1 + 24), v100[2]);
    v99 = *(a1 + 40) + 1;
    *(a1 + 40) = v99;
  }

  v102 = (*(a2 + 232) - *(a2 + 224)) >> 3;
  if (v99)
  {
    v103 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_23EF2F9B0(v103, &__p, 1);
  }

  MEMORY[0x245CAC960](*(a1 + 24), v102);
  v104 = *(a1 + 40) + 1;
  *(a1 + 40) = v104;
  v105 = *(a2 + 224);
  for (j = *(a2 + 232); v105 != j; v105 += 2)
  {
    if (v104)
    {
      v117 = *(a1 + 24);
      LOBYTE(__p) = *(a1 + 32);
      sub_23EF2F9B0(v117, &__p, 1);
    }

    MEMORY[0x245CAC910](*(a1 + 24), *v105);
    v118 = *(a1 + 40);
    *(a1 + 40) = v118 + 1;
    if (v118 != -1)
    {
      v119 = *(a1 + 24);
      LOBYTE(__p) = *(a1 + 32);
      sub_23EF2F9B0(v119, &__p, 1);
    }

    MEMORY[0x245CAC910](*(a1 + 24), v105[1]);
    v104 = *(a1 + 40) + 1;
    *(a1 + 40) = v104;
  }

  v107 = (*(a2 + 264) - *(a2 + 256)) >> 3;
  if (v104)
  {
    v108 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_23EF2F9B0(v108, &__p, 1);
  }

  MEMORY[0x245CAC960](*(a1 + 24), v107);
  v109 = *(a1 + 40) + 1;
  *(a1 + 40) = v109;
  v110 = *(a2 + 256);
  v111 = *(a2 + 264);
  if (v111 != v110)
  {
    while (1)
    {
      if (v109)
      {
        v120 = *(a1 + 24);
        LOBYTE(__p) = *(a1 + 32);
        sub_23EF2F9B0(v120, &__p, 1);
      }

      v155 = 9;
      v121 = *(a1 + 24);
      sub_23F2F41C4("{:.{}}", v110, &v155, &__p);
      v122 = (v154 & 0x80u) == 0 ? &__p : __p;
      v123 = (v154 & 0x80u) == 0 ? v154 : v153;
      sub_23EF2F9B0(v121, v122, v123);
      if (v154 < 0)
      {
        break;
      }

      v124 = *(a1 + 40);
      *(a1 + 40) = v124 + 1;
      if (v124 != -1)
      {
        goto LABEL_163;
      }

LABEL_164:
      v155 = 9;
      v126 = *(a1 + 24);
      v127 = v110 + 1;
      sub_23F2F41C4("{:.{}}", v127, &v155, &__p);
      if ((v154 & 0x80u) == 0)
      {
        v128 = &__p;
      }

      else
      {
        v128 = __p;
      }

      if ((v154 & 0x80u) == 0)
      {
        v129 = v154;
      }

      else
      {
        v129 = v153;
      }

      sub_23EF2F9B0(v126, v128, v129);
      if (v154 < 0)
      {
        operator delete(__p);
      }

      v109 = *(a1 + 40) + 1;
      *(a1 + 40) = v109;
      v110 = v127 + 1;
      if (v110 == v111)
      {
        goto LABEL_174;
      }
    }

    operator delete(__p);
    v130 = *(a1 + 40);
    *(a1 + 40) = v130 + 1;
    if (v130 == -1)
    {
      goto LABEL_164;
    }

LABEL_163:
    v125 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_23EF2F9B0(v125, &__p, 1);
    goto LABEL_164;
  }

LABEL_174:
  v131 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 296) - *(a2 + 288)) >> 2);
  if (v109)
  {
    v132 = *(a1 + 24);
    LOBYTE(__p) = *(a1 + 32);
    sub_23EF2F9B0(v132, &__p, 1);
  }

  MEMORY[0x245CAC960](*(a1 + 24), v131);
  v133 = *(a1 + 40) + 1;
  *(a1 + 40) = v133;
  v134 = *(a2 + 288);
  for (k = *(a2 + 296); v134 != k; v134 += 3)
  {
    if (v133)
    {
      v140 = *(a1 + 24);
      LOBYTE(__p) = *(a1 + 32);
      sub_23EF2F9B0(v140, &__p, 1);
    }

    MEMORY[0x245CAC910](*(a1 + 24), *v134);
    v141 = *(a1 + 40);
    *(a1 + 40) = v141 + 1;
    if (v141 != -1)
    {
      v142 = *(a1 + 24);
      LOBYTE(__p) = *(a1 + 32);
      sub_23EF2F9B0(v142, &__p, 1);
    }

    MEMORY[0x245CAC910](*(a1 + 24), v134[1]);
    v143 = *(a1 + 40);
    *(a1 + 40) = v143 + 1;
    if (v143 != -1)
    {
      v144 = *(a1 + 24);
      LOBYTE(__p) = *(a1 + 32);
      sub_23EF2F9B0(v144, &__p, 1);
    }

    MEMORY[0x245CAC910](*(a1 + 24), v134[2]);
    v133 = *(a1 + 40) + 1;
    *(a1 + 40) = v133;
  }

  if (a3 >= 2)
  {
    if (*(a2 + 344) == 1)
    {
      LOBYTE(__p) = 1;
      sub_23F2F3D94(a1, &__p);
      if (*(a1 + 40))
      {
        v136 = *(a1 + 24);
        LOBYTE(__p) = *(a1 + 32);
        sub_23EF2F9B0(v136, &__p, 1);
      }

      MEMORY[0x245CAC910](*(a1 + 24), 2);
      ++*(a1 + 40);
      sub_23F2F40F0(a1, (a2 + 320));
      sub_23F2F40F0(a1, (a2 + 324));
      sub_23F2F40F0(a1, (a2 + 328));
      sub_23F2F40F0(a1, (a2 + 332));
      sub_23F2F40F0(a1, (a2 + 336));
      sub_23F2F40F0(a1, (a2 + 340));
      v137 = *(a1 + 34);
      if (*(a1 + 40))
      {
        v138 = *(a1 + 24);
        LOBYTE(__p) = *(a1 + 32);
        sub_23EF2F9B0(v138, &__p, 1);
      }

      v139 = *(a1 + 24);
      LOBYTE(__p) = v137;
      sub_23EF2F9B0(v139, &__p, 1);
      ++*(a1 + 40);
      if (a3 < 4)
      {
        return;
      }
    }

    else
    {
      LOBYTE(__p) = 0;
      sub_23F2F3D94(a1, &__p);
      if (a3 < 4)
      {
        return;
      }
    }

    v145 = *(a2 + 348);
    if (*(a1 + 40))
    {
      v146 = *(a1 + 24);
      LOBYTE(__p) = *(a1 + 32);
      sub_23EF2F9B0(v146, &__p, 1);
    }

    MEMORY[0x245CAC910](*(a1 + 24), v145);
    v147 = *(a1 + 40);
    *(a1 + 40) = v147 + 1;
    v148 = (*(a2 + 360) - *(a2 + 352)) >> 2;
    if (v147 != -1)
    {
      v149 = *(a1 + 24);
      LOBYTE(__p) = *(a1 + 32);
      sub_23EF2F9B0(v149, &__p, 1);
    }

    MEMORY[0x245CAC960](*(a1 + 24), v148);
    ++*(a1 + 40);
    v151 = *(a2 + 352);
    for (m = *(a2 + 360); v151 != m; ++v151)
    {
      sub_23F2F40F0(a1, v151);
    }
  }
}

void sub_23EF74230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_23EF74258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(v8[0]) = 4;
  sub_23F295368(a2 + 24, *(a2 + 32), v8, v8 + 4, 4uLL);
  v5 = v8[0];
  sub_23F294D84(a2);
  sub_23EF6FE10(v8, a3);
  sub_23EF7431C(a2, v8, v5);
  result = sub_23EF4FC00(v8);
  v7 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v7 + 10) = *(a2 + 32) - v7 - 18;
  *(a2 + 56) -= 8;
  return result;
}

char *sub_23EF7431C(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  __src = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2);
  sub_23F295368(a1 + 24, *(a1 + 32), &__src, &v37, 8uLL);
  v6 = *a2;
  v7 = a2[1];
  if (v7 != *a2)
  {
    v8 = *a2;
    do
    {
      v9 = v6 + 12;
      sub_23F295368(a1 + 24, *(a1 + 32), v6, v6 + 12, 0xCuLL);
      v8 += 12;
      v6 = v9;
    }

    while (v8 != v7);
  }

  LODWORD(__src) = *(a2 + 8);
  sub_23F295368(a1 + 24, *(a1 + 32), &__src, &__src + 4, 4uLL);
  __src = 0xAAAAAAAAAAAAAAABLL * ((a2[6] - a2[5]) >> 2);
  sub_23F295368(a1 + 24, *(a1 + 32), &__src, &v37, 8uLL);
  v10 = a2[5];
  v11 = a2[6];
  if (v11 != v10)
  {
    v12 = a2[5];
    do
    {
      v13 = v10 + 12;
      sub_23F295368(a1 + 24, *(a1 + 32), v10, v10 + 12, 0xCuLL);
      v12 += 12;
      v10 = v13;
    }

    while (v12 != v11);
  }

  LODWORD(__src) = *(a2 + 18);
  sub_23F295368(a1 + 24, *(a1 + 32), &__src, &__src + 4, 4uLL);
  __src = 0xAAAAAAAAAAAAAAABLL * ((a2[11] - a2[10]) >> 2);
  sub_23F295368(a1 + 24, *(a1 + 32), &__src, &v37, 8uLL);
  v14 = a2[10];
  v15 = a2[11];
  if (v15 != v14)
  {
    v16 = a2[10];
    do
    {
      v17 = v14 + 12;
      sub_23F295368(a1 + 24, *(a1 + 32), v14, v14 + 12, 0xCuLL);
      v16 += 12;
      v14 = v17;
    }

    while (v16 != v15);
  }

  LODWORD(__src) = *(a2 + 28);
  sub_23F295368(a1 + 24, *(a1 + 32), &__src, &__src + 4, 4uLL);
  __src = a2[16] - a2[15];
  sub_23F295368(a1 + 24, *(a1 + 32), &__src, &v37, 8uLL);
  sub_23F295368(a1 + 24, *(a1 + 32), a2[15], a2[16], a2[16] - a2[15]);
  LODWORD(__src) = *(a2 + 38);
  sub_23F295368(a1 + 24, *(a1 + 32), &__src, &__src + 4, 4uLL);
  __src = a2[21] - a2[20];
  sub_23F295368(a1 + 24, *(a1 + 32), &__src, &v37, 8uLL);
  sub_23F295368(a1 + 24, *(a1 + 32), a2[20], a2[21], a2[21] - a2[20]);
  __src = 0xAAAAAAAAAAAAAAABLL * ((a2[25] - a2[24]) >> 2);
  sub_23F295368(a1 + 24, *(a1 + 32), &__src, &v37, 8uLL);
  v18 = a2[24];
  v19 = a2[25];
  if (v19 != v18)
  {
    v20 = a2[24];
    do
    {
      v21 = v18 + 12;
      sub_23F295368(a1 + 24, *(a1 + 32), v18, v18 + 12, 0xCuLL);
      v20 += 12;
      v18 = v21;
    }

    while (v20 != v19);
  }

  __src = (a2[29] - a2[28]) >> 3;
  sub_23F295368(a1 + 24, *(a1 + 32), &__src, &v37, 8uLL);
  v22 = a2[28];
  v23 = a2[29];
  if (v23 != v22)
  {
    v24 = a2[28];
    do
    {
      v25 = v22 + 8;
      sub_23F295368(a1 + 24, *(a1 + 32), v22, v22 + 8, 8uLL);
      v24 += 8;
      v22 = v25;
    }

    while (v24 != v23);
  }

  __src = (a2[33] - a2[32]) >> 3;
  sub_23F295368(a1 + 24, *(a1 + 32), &__src, &v37, 8uLL);
  v26 = a2[32];
  v27 = a2[33];
  if (v27 != v26)
  {
    v28 = a2[32];
    do
    {
      v29 = v26 + 8;
      sub_23F295368(a1 + 24, *(a1 + 32), v26, v26 + 8, 8uLL);
      v28 += 8;
      v26 = v29;
    }

    while (v28 != v27);
  }

  __src = 0xAAAAAAAAAAAAAAABLL * ((a2[37] - a2[36]) >> 2);
  result = sub_23F295368(a1 + 24, *(a1 + 32), &__src, &v37, 8uLL);
  v31 = a2[36];
  v32 = a2[37];
  if (v32 != v31)
  {
    v33 = a2[36];
    do
    {
      v34 = v31 + 12;
      result = sub_23F295368(a1 + 24, *(a1 + 32), v31, v31 + 12, 0xCuLL);
      v33 += 12;
      v31 = v34;
    }

    while (v33 != v32);
  }

  if (a3 >= 2)
  {
    if (*(a2 + 344) == 1)
    {
      LOBYTE(__src) = 1;
      sub_23F295368(a1 + 24, *(a1 + 32), &__src, &__src + 1, 1uLL);
      LODWORD(__src) = 2;
      sub_23F295368(a1 + 24, *(a1 + 32), &__src, &__src + 4, 4uLL);
      sub_23F294D84(a1);
      sub_23F295368(a1 + 24, *(a1 + 32), a2 + 320, a2 + 332, 0xCuLL);
      result = sub_23F295368(a1 + 24, *(a1 + 32), a2 + 332, a2 + 344, 0xCuLL);
      v35 = *(*(a1 + 56) - 8) + *(a1 + 24);
      *(v35 + 10) = *(a1 + 32) - v35 - 18;
      *(a1 + 56) -= 8;
      if (a3 < 4)
      {
        return result;
      }
    }

    else
    {
      LOBYTE(__src) = 0;
      result = sub_23F295368(a1 + 24, *(a1 + 32), &__src, &__src + 1, 1uLL);
      if (a3 < 4)
      {
        return result;
      }
    }

    LODWORD(__src) = *(a2 + 87);
    sub_23F295368(a1 + 24, *(a1 + 32), &__src, &__src + 4, 4uLL);
    __src = (a2[45] - a2[44]) >> 2;
    sub_23F295368(a1 + 24, *(a1 + 32), &__src, &v37, 8uLL);
    return sub_23F295368(a1 + 24, *(a1 + 32), a2[44], a2[45], a2[45] - a2[44]);
  }

  return result;
}

uint64_t *sub_23EF7487C(_DWORD *a1, uint64_t a2)
{
  v4 = a1[2];
  LODWORD(v7[0]) = 4;
  (*(*a1 + 104))(a1, v7);
  v5 = v7[0];
  if (v4 < 1)
  {
    sub_23EF6FE10(v7, a2);
    sub_23EF74A0C(a1, v7, v5);
    return sub_23EF4FC00(v7);
  }

  else
  {
    if (v4 == 2)
    {
      LODWORD(v7[0]) = 3;
      (*(*a1 + 104))(a1, v7);
    }

    (*(*a1 + 16))(a1);
    sub_23EF6FE10(v7, a2);
    sub_23EF74A0C(a1, v7, v5);
    sub_23EF4FC00(v7);
    return (*(*a1 + 24))(a1);
  }
}

uint64_t sub_23EF74A0C(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v28 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2);
  (*(*a1 + 120))(a1, &v28);
  v6 = *a2;
  v7 = a2[1];
  if (v7 != *a2)
  {
    do
    {
      (*(*a1 + 128))(a1, v6);
      (*(*a1 + 128))(a1, v6 + 4);
      (*(*a1 + 128))(a1, v6 + 8);
      v6 += 12;
    }

    while (v6 != v7);
  }

  sub_23EF75530(a1, a2 + 8);
  v28 = 0xAAAAAAAAAAAAAAABLL * ((a2[6] - a2[5]) >> 2);
  (*(*a1 + 120))(a1, &v28);
  v8 = a2[5];
  for (i = a2[6]; v8 != i; v8 += 12)
  {
    (*(*a1 + 128))(a1, v8);
    (*(*a1 + 128))(a1, v8 + 4);
    (*(*a1 + 128))(a1, v8 + 8);
  }

  sub_23EF75530(a1, a2 + 18);
  v28 = 0xAAAAAAAAAAAAAAABLL * ((a2[11] - a2[10]) >> 2);
  (*(*a1 + 120))(a1, &v28);
  v10 = a2[10];
  for (j = a2[11]; v10 != j; v10 += 12)
  {
    (*(*a1 + 128))(a1, v10);
    (*(*a1 + 128))(a1, v10 + 4);
    (*(*a1 + 128))(a1, v10 + 8);
  }

  sub_23EF75530(a1, a2 + 28);
  v28 = a2[16] - a2[15];
  (*(*a1 + 120))(a1, &v28);
  v12 = a2[15];
  for (k = a2[16]; v12 != k; ++v12)
  {
    (*(*a1 + 80))(a1, v12);
  }

  sub_23EF75530(a1, a2 + 38);
  v28 = a2[21] - a2[20];
  (*(*a1 + 120))(a1, &v28);
  v14 = a2[20];
  for (m = a2[21]; v14 != m; ++v14)
  {
    (*(*a1 + 80))(a1, v14);
  }

  v28 = 0xAAAAAAAAAAAAAAABLL * ((a2[25] - a2[24]) >> 2);
  (*(*a1 + 120))(a1, &v28);
  v16 = a2[24];
  for (n = a2[25]; v16 != n; v16 += 12)
  {
    (*(*a1 + 104))(a1, v16);
    (*(*a1 + 104))(a1, v16 + 4);
    (*(*a1 + 104))(a1, v16 + 8);
  }

  v28 = (a2[29] - a2[28]) >> 3;
  (*(*a1 + 120))(a1, &v28);
  v18 = a2[28];
  for (ii = a2[29]; v18 != ii; v18 += 8)
  {
    (*(*a1 + 104))(a1, v18);
    (*(*a1 + 104))(a1, v18 + 4);
  }

  v28 = (a2[33] - a2[32]) >> 3;
  (*(*a1 + 120))(a1, &v28);
  v20 = a2[32];
  for (jj = a2[33]; v20 != jj; v20 += 8)
  {
    (*(*a1 + 128))(a1, v20);
    (*(*a1 + 128))(a1, v20 + 4);
  }

  v28 = 0xAAAAAAAAAAAAAAABLL * ((a2[37] - a2[36]) >> 2);
  result = (*(*a1 + 120))(a1, &v28);
  v23 = a2[36];
  for (kk = a2[37]; v23 != kk; v23 += 12)
  {
    (*(*a1 + 104))(a1, v23);
    (*(*a1 + 104))(a1, v23 + 4);
    result = (*(*a1 + 104))(a1, v23 + 8);
  }

  if (a3 >= 2)
  {
    if (*(a2 + 344) == 1)
    {
      LOBYTE(v28) = 1;
      (*(*a1 + 80))(a1, &v28);
      v25 = *(a1 + 8);
      LODWORD(v28) = 2;
      (*(*a1 + 104))(a1, &v28);
      if (v25 < 1)
      {
        (*(*a1 + 128))(a1, a2 + 40);
        (*(*a1 + 128))(a1, a2 + 324);
        (*(*a1 + 128))(a1, a2 + 41);
        (*(*a1 + 128))(a1, a2 + 332);
        (*(*a1 + 128))(a1, a2 + 42);
        result = (*(*a1 + 128))(a1, a2 + 340);
        if (a3 < 4)
        {
          return result;
        }
      }

      else
      {
        if (v25 == 2)
        {
          LODWORD(v28) = 2;
          (*(*a1 + 104))(a1, &v28);
        }

        (*(*a1 + 16))(a1);
        (*(*a1 + 128))(a1, a2 + 40);
        (*(*a1 + 128))(a1, a2 + 324);
        (*(*a1 + 128))(a1, a2 + 41);
        (*(*a1 + 128))(a1, a2 + 332);
        (*(*a1 + 128))(a1, a2 + 42);
        (*(*a1 + 128))(a1, a2 + 340);
        result = (*(*a1 + 24))(a1);
        if (a3 < 4)
        {
          return result;
        }
      }
    }

    else
    {
      LOBYTE(v28) = 0;
      result = (*(*a1 + 80))(a1, &v28);
      if (a3 < 4)
      {
        return result;
      }
    }

    sub_23EF75530(a1, a2 + 87);
    v28 = (a2[45] - a2[44]) >> 2;
    result = (*(*a1 + 120))(a1, &v28);
    v27 = a2[44];
    for (mm = a2[45]; v27 != mm; v27 += 4)
    {
      result = (*(*a1 + 128))(a1, v27);
    }
  }

  return result;
}

uint64_t sub_23EF75530(_BYTE *a1, _DWORD *a2)
{
  if ((a1[12] & 2) != 0)
  {
    v3[6] = 0;
    sub_23EF70FF4();
  }

  v3[0] = *a2;
  return (*(*a1 + 104))(a1, v3);
}

void sub_23EF75654(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF75670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF75684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF75698(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v4 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v4;
  sub_23F2EB5F4(a1 + 40, &v7);
  sub_23F294EB4(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  if (*(a1 + 104) == 1)
  {
    *(a1 + 104) = 0;
  }

  v7 = "version";
  v8 = 7;
  LODWORD(v9) = 4;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_23F2ECE4C(a1, &v9);
  if (v9 >= 3)
  {
    v7 = "vertices";
    v8 = 8;
    v9 = a2;
    sub_23EF766FC(a1, &v7);
    v5 = *(a1 + 104);
    *(a1 + 88) = "colors_type";
    *(a1 + 96) = 11;
    if ((v5 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v7 = (a2 + 32);
    sub_23EF76AA4(a1);
  }

  v10 = 0u;
  v12[0] = 0;
  v11 = 0;
  *(&v12[1] + 4) = 0;
  *(&v12[2] + 4) = 0;
  *(&v12[3] + 4) = 0;
  v12[5] = 0;
  *(&v12[6] + 4) = 0;
  *(&v12[7] + 4) = 0;
  v12[10] = 0;
  *(&v12[8] + 4) = 0;
  *(&v12[11] + 4) = 0;
  *(&v12[12] + 4) = 0;
  *(&v12[13] + 4) = 0;
  v12[15] = 0;
  *(&v12[18] + 4) = 0;
  *(&v12[16] + 4) = 0;
  *(&v12[17] + 4) = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  memset(&v12[20], 0, 24);
  v16 = 0;
  v13 = 0;
  v17 = 0;
  v14 = 0;
  v15 = 0;
  v20 = 0;
  v19 = 0;
  v21 = 0;
  v18 = 0;
  v24 = 0;
  v22 = 0;
  v23 = 0;
  v25 = 0;
  v7 = "vertices";
  v8 = 8;
  v9 = &v10;
  sub_23EF766FC(a1, &v7);
  v6 = *(a1 + 104);
  *(a1 + 88) = "colors_type";
  *(a1 + 96) = 11;
  if ((v6 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v7 = v12 + 4;
  sub_23EF76AA4(a1);
}

void sub_23EF766FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 104);
  *(a1 + 88) = *a2;
  if ((v3 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v4 = *(a2 + 16);
  v16[0] = *(a1 + 32);
  v5 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v5;
  sub_23F2EB5F4(a1 + 40, v16);
  sub_23F294EB4(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  if (*(a1 + 104) == 1)
  {
    *(a1 + 104) = 0;
  }

  v6 = *(a1 + 32);
  v7 = *v6;
  if (v7 == 2)
  {
    v8 = (*(*(v6 + 1) + 8) - **(v6 + 1)) >> 4;
  }

  else if (v7 == 1)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((*(*(v6 + 1) + 8) - **(v6 + 1)) >> 3);
  }

  else
  {
    if (!*v6)
    {
      v8 = 0;
      v9 = v4 + 1;
      v10 = v4[1];
      v11 = *v4;
      v12 = 0xAAAAAAAAAAAAAAABLL * (v10 - *v4);
      goto LABEL_14;
    }

    v8 = 1;
  }

  v9 = v4 + 1;
  v10 = v4[1];
  v11 = *v4;
  v12 = 0xAAAAAAAAAAAAAAABLL * (v10 - *v4);
  if (v8 > v12)
  {
    sub_23EF768B8(v4, v8 - v12);
    v11 = *v4;
    v10 = v4[1];
    goto LABEL_16;
  }

LABEL_14:
  if (v12 > v8)
  {
    v10 = &v11[3 * v8];
    *v9 = v10;
  }

LABEL_16:
  while (v11 != v10)
  {
    v16[0] = v11;
    v16[1] = 3;
    v13 = sub_23F2EB9A4(a1);
    ++*(a1 + 112);
    sub_23F2ED6DC(v13, v16);
    v11 += 3;
  }

  v14 = *(a1 + 48);
  *(a1 + 32) = *(v14 - 8);
  v15 = *(a1 + 72);
  *(a1 + 112) = *(v15 - 8);
  *(a1 + 48) = v14 - 8;
  *(a1 + 72) = v15 - 8;
}

void sub_23EF768B8(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 2) >= a2)
  {
    if (a2)
    {
      v13 = 12 * ((12 * a2 - 12) / 0xC) + 12;
      bzero(*(a1 + 8), v13);
      v4 += v13;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    v6 = v5 + a2;
    if (v5 + a2 > 0x1555555555555555)
    {
      sub_23EF62578();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 2);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0xAAAAAAAAAAAAAAALL)
    {
      v8 = 0x1555555555555555;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      LODWORD(v25) = v8;
      v9 = *(a1 + 28);
      if (v9 == -1)
      {
        sub_23EF41D6C();
      }

      v10 = a2;
      v23 = &v25;
      v11 = (off_2851790D8[v9])(&v23, a1 + 24);
      v8 = v12;
      a2 = v10;
    }

    else
    {
      v11 = 0;
    }

    v14 = (v11 + 12 * v5);
    v15 = v11 + 12 * v8;
    v16 = 12 * ((12 * a2 - 12) / 0xC) + 12;
    bzero(v14, v16);
    v17 = &v14[v16];
    v18 = *(a1 + 8) - *a1;
    v19 = &v14[-v18];
    memcpy(v19, *a1, v18);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v17;
    v21 = *(a1 + 16);
    *(a1 + 16) = v15;
    if (v20)
    {
      v23 = v20;
      v24 = -1431655765 * ((v21 - v20) >> 2);
      v22 = *(a1 + 28);
      if (v22 == -1)
      {
        sub_23EF41D6C();
      }

      v25 = &v23;
      (off_285178EB8[v22])(&v25, a1 + 24);
    }
  }
}

void sub_23EF76AA4(void *a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v4 = 0;
  v2 = sub_23F2EB9A4(a1);
  ++a1[14];
  v6 = 0;
  v5 = 0uLL;
  sub_23F0707E4(v2, &v5);
  v4 = v6;
  *__p = v5;
  operator new();
}

void sub_23EF76B94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  a17 = 0;
  sub_23F302A54(&a17, v22);
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

char *sub_23EF76C28(uint64_t a1, size_t a2)
{
  v5 = a1 + 8;
  result = *(a1 + 8);
  v4 = *(v5 + 8);
  if (v4 - result >= a2)
  {
    if (a2)
    {
      v15 = &result[a2];
      bzero(result, a2);
      result = v15;
    }

    *(a1 + 8) = result;
  }

  else
  {
    v6 = &result[-*a1];
    v7 = &v6[a2];
    if (&v6[a2] < 0)
    {
      sub_23EF62578();
    }

    v8 = v4 - *a1;
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    v9 = v8 >= 0x3FFFFFFFFFFFFFFFLL;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v9)
    {
      v10 = v7;
    }

    if (v10)
    {
      LODWORD(v26) = v10;
      v11 = *(a1 + 28);
      if (v11 == -1)
      {
        sub_23EF41D6C();
      }

      v12 = a2;
      v24 = &v26;
      v13 = (off_2851790F8[v11])(&v24, a1 + 24);
      v10 = v14;
      a2 = v12;
    }

    else
    {
      v13 = 0;
    }

    v16 = &v6[v13];
    v17 = v13 + v10;
    v18 = &v16[a2];
    bzero(v16, a2);
    v19 = *(a1 + 8);
    v20 = &v16[*a1 - v19];
    result = memcpy(v20, *a1, v19 - *a1);
    v21 = *a1;
    *a1 = v20;
    *(a1 + 8) = v18;
    v22 = *(a1 + 16);
    *(a1 + 16) = v17;
    if (v21)
    {
      v24 = v21;
      v25 = v22 - v21;
      v23 = *(a1 + 28);
      if (v23 == -1)
      {
        sub_23EF41D6C();
      }

      v26 = &v24;
      return (off_285178EA8[v23])(&v26, a1 + 24);
    }
  }

  return result;
}

void sub_23EF76D94(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 104);
  *(a1 + 88) = *a2;
  if ((v3 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v4 = *(a2 + 16);
  v16[0] = *(a1 + 32);
  v5 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v5;
  sub_23F2EB5F4(a1 + 40, v16);
  sub_23F294EB4(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  if (*(a1 + 104) == 1)
  {
    *(a1 + 104) = 0;
  }

  v6 = *(a1 + 32);
  v7 = *v6;
  if (v7 == 2)
  {
    v8 = (*(*(v6 + 1) + 8) - **(v6 + 1)) >> 4;
  }

  else if (v7 == 1)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((*(*(v6 + 1) + 8) - **(v6 + 1)) >> 3);
  }

  else
  {
    if (!*v6)
    {
      v8 = 0;
      v9 = v4 + 1;
      v10 = v4[1];
      v11 = *v4;
      v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *v4) >> 2);
      goto LABEL_14;
    }

    v8 = 1;
  }

  v9 = v4 + 1;
  v10 = v4[1];
  v11 = *v4;
  v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *v4) >> 2);
  if (v8 > v12)
  {
    sub_23EF76F50(v4, v8 - v12);
    v11 = *v4;
    v10 = v4[1];
    goto LABEL_16;
  }

LABEL_14:
  if (v12 > v8)
  {
    v10 = &v11[3 * v8];
    *v9 = v10;
  }

LABEL_16:
  while (v11 != v10)
  {
    v16[0] = v11;
    v16[1] = 3;
    v13 = sub_23F2EB9A4(a1);
    ++*(a1 + 112);
    sub_23F2ED3D0(v13, v16);
    v11 += 3;
  }

  v14 = *(a1 + 48);
  *(a1 + 32) = *(v14 - 8);
  v15 = *(a1 + 72);
  *(a1 + 112) = *(v15 - 8);
  *(a1 + 48) = v14 - 8;
  *(a1 + 72) = v15 - 8;
}

void sub_23EF76F50(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 2) >= a2)
  {
    if (a2)
    {
      v13 = 12 * ((12 * a2 - 12) / 0xC) + 12;
      bzero(*(a1 + 8), v13);
      v4 += v13;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    v6 = v5 + a2;
    if (v5 + a2 > 0x1555555555555555)
    {
      sub_23EF62578();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 2);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0xAAAAAAAAAAAAAAALL)
    {
      v8 = 0x1555555555555555;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      LODWORD(v25) = v8;
      v9 = *(a1 + 28);
      if (v9 == -1)
      {
        sub_23EF41D6C();
      }

      v10 = a2;
      v23 = &v25;
      v11 = (off_285179118[v9])(&v23, a1 + 24);
      v8 = v12;
      a2 = v10;
    }

    else
    {
      v11 = 0;
    }

    v14 = (v11 + 12 * v5);
    v15 = v11 + 12 * v8;
    v16 = 12 * ((12 * a2 - 12) / 0xC) + 12;
    bzero(v14, v16);
    v17 = &v14[v16];
    v18 = *(a1 + 8) - *a1;
    v19 = &v14[-v18];
    memcpy(v19, *a1, v18);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v17;
    v21 = *(a1 + 16);
    *(a1 + 16) = v15;
    if (v20)
    {
      v23 = v20;
      v24 = -1431655765 * ((v21 - v20) >> 2);
      v22 = *(a1 + 28);
      if (v22 == -1)
      {
        sub_23EF41D6C();
      }

      v25 = &v23;
      (off_285178E78[v22])(&v25, a1 + 24);
    }
  }
}

void sub_23EF7713C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 104);
  *(a1 + 88) = *a2;
  if ((v3 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v4 = *(a2 + 16);
  v16[0] = *(a1 + 32);
  v5 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v5;
  sub_23F2EB5F4(a1 + 40, v16);
  sub_23F294EB4(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  if (*(a1 + 104) == 1)
  {
    *(a1 + 104) = 0;
  }

  v6 = *(a1 + 32);
  v7 = *v6;
  if (v7 == 2)
  {
    v8 = (*(*(v6 + 1) + 8) - **(v6 + 1)) >> 4;
  }

  else if (v7 == 1)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((*(*(v6 + 1) + 8) - **(v6 + 1)) >> 3);
  }

  else
  {
    if (!*v6)
    {
      v8 = 0;
      v9 = v4 + 1;
      v10 = v4[1];
      v11 = *v4;
      v12 = (v10 - *v4) >> 3;
      goto LABEL_14;
    }

    v8 = 1;
  }

  v9 = v4 + 1;
  v10 = v4[1];
  v11 = *v4;
  v12 = (v10 - *v4) >> 3;
  if (v8 > v12)
  {
    sub_23EF772DC(v4, v8 - v12);
    v11 = *v4;
    v10 = v4[1];
    goto LABEL_16;
  }

LABEL_14:
  if (v12 > v8)
  {
    v10 = &v11[2 * v8];
    *v9 = v10;
  }

LABEL_16:
  while (v11 != v10)
  {
    v16[0] = v11;
    v16[1] = 2;
    v13 = sub_23F2EB9A4(a1);
    ++*(a1 + 112);
    sub_23F2ED3D0(v13, v16);
    v11 += 2;
  }

  v14 = *(a1 + 48);
  *(a1 + 32) = *(v14 - 8);
  v15 = *(a1 + 72);
  *(a1 + 112) = *(v15 - 8);
  *(a1 + 48) = v14 - 8;
  *(a1 + 72) = v15 - 8;
}

void sub_23EF772DC(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v14 = 8 * a2;
      bzero(*(a1 + 8), 8 * a2);
      v4 += v14;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = (v4 - *a1) >> 3;
    if ((v5 + a2) >> 61)
    {
      sub_23EF62578();
    }

    v6 = v3 - *a1;
    v7 = v6 >> 2;
    if (v6 >> 2 <= v5 + a2)
    {
      v7 = v5 + a2;
    }

    v8 = v6 >= 0x7FFFFFFFFFFFFFF8;
    v9 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v8)
    {
      v9 = v7;
    }

    if (v9)
    {
      LODWORD(v26) = v9;
      v10 = *(a1 + 28);
      if (v10 == -1)
      {
        sub_23EF41D6C();
      }

      v11 = a2;
      v24 = &v26;
      v12 = (off_285179138[v10])(&v24, a1 + 24);
      v9 = v13;
      a2 = v11;
    }

    else
    {
      v12 = 0;
    }

    v15 = (v12 + 8 * v5);
    v16 = 8 * a2;
    v17 = v12 + 8 * v9;
    bzero(v15, 8 * a2);
    v18 = &v15[v16];
    v19 = *(a1 + 8) - *a1;
    v20 = &v15[-v19];
    memcpy(v20, *a1, v19);
    v21 = *a1;
    *a1 = v20;
    *(a1 + 8) = v18;
    v22 = *(a1 + 16);
    *(a1 + 16) = v17;
    if (v21)
    {
      v24 = v21;
      v25 = (v22 - v21) >> 3;
      v23 = *(a1 + 28);
      if (v23 == -1)
      {
        sub_23EF41D6C();
      }

      v26 = &v24;
      (off_285178E98[v23])(&v26, a1 + 24);
    }
  }
}

void sub_23EF77460(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 104);
  *(a1 + 88) = *a2;
  if ((v3 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v4 = *(a2 + 16);
  v16[0] = *(a1 + 32);
  v5 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v5;
  sub_23F2EB5F4(a1 + 40, v16);
  sub_23F294EB4(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  if (*(a1 + 104) == 1)
  {
    *(a1 + 104) = 0;
  }

  v6 = *(a1 + 32);
  v7 = *v6;
  if (v7 == 2)
  {
    v8 = (*(*(v6 + 1) + 8) - **(v6 + 1)) >> 4;
  }

  else if (v7 == 1)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((*(*(v6 + 1) + 8) - **(v6 + 1)) >> 3);
  }

  else
  {
    if (!*v6)
    {
      v8 = 0;
      v9 = v4 + 1;
      v10 = v4[1];
      v11 = *v4;
      v12 = (v10 - *v4) >> 3;
      goto LABEL_14;
    }

    v8 = 1;
  }

  v9 = v4 + 1;
  v10 = v4[1];
  v11 = *v4;
  v12 = (v10 - *v4) >> 3;
  if (v8 > v12)
  {
    sub_23EF77600(v4, v8 - v12);
    v11 = *v4;
    v10 = v4[1];
    goto LABEL_16;
  }

LABEL_14:
  if (v12 > v8)
  {
    v10 = &v11[2 * v8];
    *v9 = v10;
  }

LABEL_16:
  while (v11 != v10)
  {
    v16[0] = v11;
    v16[1] = 2;
    v13 = sub_23F2EB9A4(a1);
    ++*(a1 + 112);
    sub_23F2ED6DC(v13, v16);
    v11 += 2;
  }

  v14 = *(a1 + 48);
  *(a1 + 32) = *(v14 - 8);
  v15 = *(a1 + 72);
  *(a1 + 112) = *(v15 - 8);
  *(a1 + 48) = v14 - 8;
  *(a1 + 72) = v15 - 8;
}

void sub_23EF77600(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v14 = 8 * a2;
      bzero(*(a1 + 8), 8 * a2);
      v4 += v14;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = (v4 - *a1) >> 3;
    if ((v5 + a2) >> 61)
    {
      sub_23EF62578();
    }

    v6 = v3 - *a1;
    v7 = v6 >> 2;
    if (v6 >> 2 <= v5 + a2)
    {
      v7 = v5 + a2;
    }

    v8 = v6 >= 0x7FFFFFFFFFFFFFF8;
    v9 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v8)
    {
      v9 = v7;
    }

    if (v9)
    {
      LODWORD(v26) = v9;
      v10 = *(a1 + 28);
      if (v10 == -1)
      {
        sub_23EF41D6C();
      }

      v11 = a2;
      v24 = &v26;
      v12 = (off_285179158[v10])(&v24, a1 + 24);
      v9 = v13;
      a2 = v11;
    }

    else
    {
      v12 = 0;
    }

    v15 = (v12 + 8 * v5);
    v16 = 8 * a2;
    v17 = v12 + 8 * v9;
    bzero(v15, 8 * a2);
    v18 = &v15[v16];
    v19 = *(a1 + 8) - *a1;
    v20 = &v15[-v19];
    memcpy(v20, *a1, v19);
    v21 = *a1;
    *a1 = v20;
    *(a1 + 8) = v18;
    v22 = *(a1 + 16);
    *(a1 + 16) = v17;
    if (v21)
    {
      v24 = v21;
      v25 = (v22 - v21) >> 3;
      v23 = *(a1 + 28);
      if (v23 == -1)
      {
        sub_23EF41D6C();
      }

      v26 = &v24;
      (off_285178E88[v23])(&v26, a1 + 24);
    }
  }
}

void sub_23EF77858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF77888(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 2)
  {
    if (a2)
    {
      v17 = 4 * a2;
      bzero(*(a1 + 8), 4 * a2);
      v4 += v17;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = v6 >> 2;
    v8 = (v6 >> 2) + a2;
    if (v8 >> 62)
    {
      sub_23EF62578();
    }

    v9 = v3 - v5;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    v10 = v9 >= 0x7FFFFFFFFFFFFFFCLL;
    v11 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v10)
    {
      v11 = v8;
    }

    if (v11)
    {
      LODWORD(v28) = v11;
      v12 = *(a1 + 28);
      if (v12 == -1)
      {
        sub_23EF41D6C();
      }

      v13 = a2;
      v26 = &v28;
      v14 = (off_285179178[v12])(&v26, a1 + 24);
      v11 = v15;
      v5 = *a1;
      v6 = *(a1 + 8) - *a1;
      v16 = v6 >> 2;
      a2 = v13;
    }

    else
    {
      v14 = 0;
      v16 = v6 >> 2;
    }

    v18 = (v14 + 4 * v7);
    v19 = 4 * a2;
    v20 = v14 + 4 * v11;
    bzero(v18, 4 * a2);
    v21 = &v18[v19];
    v22 = &v18[-4 * v16];
    memcpy(v22, v5, v6);
    v23 = *a1;
    *a1 = v22;
    *(a1 + 8) = v21;
    v24 = *(a1 + 16);
    *(a1 + 16) = v20;
    if (v23)
    {
      v26 = v23;
      v27 = (v24 - v23) >> 2;
      v25 = *(a1 + 28);
      if (v25 == -1)
      {
        sub_23EF41D6C();
      }

      v28 = &v26;
      (off_285178E68[v25])(&v28, a1 + 24);
    }
  }
}

uint64_t sub_23EF77A1C(uint64_t a1, uint64_t a2)
{
  LOBYTE(v11) = 0;
  v13 = 0;
  if (*(a2 + 344) == 1)
  {
    *&v3 = *(a2 + 320);
    DWORD2(v3) = *(a2 + 328);
    HIDWORD(v3) = *(a2 + 332);
    LODWORD(v4) = vdup_lane_s32(*(a2 + 332), 1).u32[0];
    v11 = v3;
    HIDWORD(v4) = *(a2 + 340);
    v12 = v4;
    v13 = 1;
  }

  v10 = 0;
  HIDWORD(v9) = 0;
  v7 = 0;
  v8 = 0;
  v6 = 0;
  sub_23EF780F4(a1, a2, (a2 + 32), a2 + 40, (a2 + 72), a2 + 80, (a2 + 112), a2 + 120, (a2 + 152), a2 + 160, a2 + 192, a2 + 224, a2 + 256, a2 + 288, &v11, &v10, &v6);
  if (v6)
  {
    v7 = v6;
    *&v11 = v6;
    DWORD2(v11) = (v8 - v6) >> 2;
    if (HIDWORD(v9) == -1)
    {
      sub_23EF41D6C();
    }

    v14 = &v11;
    (off_285178E68[HIDWORD(v9)])(&v14, &v9);
  }

  return a1;
}

void sub_23EF77B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_23EF50258(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_23EF77B68(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    a1[1] = v4;
    v5 = -1431655765 * ((a1[2] - v4) >> 2);
    v36 = v4;
    v37 = v5;
    v6 = *(a1 + 7);
    if (v6 == -1)
    {
      sub_23EF41D6C();
    }

    v38 = &v36;
    (off_285178EB8[v6])(&v38, a1 + 3);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  a1[3] = *(a2 + 24);
  *a1 = *a2;
  a1[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v7 = a1[5];
  *(a1 + 8) = *(a2 + 32);
  if (v7)
  {
    a1[6] = v7;
    v8 = -1431655765 * ((a1[7] - v7) >> 2);
    v36 = v7;
    v37 = v8;
    v9 = *(a1 + 17);
    if (v9 == -1)
    {
      sub_23EF41D6C();
    }

    v38 = &v36;
    (off_285178EB8[v9])(&v38, a1 + 8);
    a1[5] = 0;
    a1[6] = 0;
    a1[7] = 0;
  }

  a1[8] = *(a2 + 64);
  *(a1 + 5) = *(a2 + 40);
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v10 = a1[10];
  *(a1 + 18) = *(a2 + 72);
  if (v10)
  {
    a1[11] = v10;
    v11 = -1431655765 * ((a1[12] - v10) >> 2);
    v36 = v10;
    v37 = v11;
    v12 = *(a1 + 27);
    if (v12 == -1)
    {
      sub_23EF41D6C();
    }

    v38 = &v36;
    (off_285178EB8[v12])(&v38, a1 + 13);
    a1[10] = 0;
    a1[11] = 0;
    a1[12] = 0;
  }

  a1[13] = *(a2 + 104);
  *(a1 + 5) = *(a2 + 80);
  a1[12] = *(a2 + 96);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  v13 = a1[15];
  *(a1 + 28) = *(a2 + 112);
  if (v13)
  {
    a1[16] = v13;
    v14 = *(a1 + 34) - v13;
    v36 = v13;
    v37 = v14;
    v15 = *(a1 + 37);
    if (v15 == -1)
    {
      sub_23EF41D6C();
    }

    v38 = &v36;
    (off_285178EA8[v15])(&v38, a1 + 18);
    a1[15] = 0;
    a1[16] = 0;
    a1[17] = 0;
  }

  a1[18] = *(a2 + 144);
  *(a1 + 15) = *(a2 + 120);
  a1[17] = *(a2 + 136);
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  v16 = a1[20];
  *(a1 + 38) = *(a2 + 152);
  if (v16)
  {
    a1[21] = v16;
    v17 = *(a1 + 44) - v16;
    v36 = v16;
    v37 = v17;
    v18 = *(a1 + 47);
    if (v18 == -1)
    {
      sub_23EF41D6C();
    }

    v38 = &v36;
    (off_285178EA8[v18])(&v38, a1 + 23);
    a1[20] = 0;
    a1[21] = 0;
    a1[22] = 0;
  }

  a1[23] = *(a2 + 184);
  *(a1 + 10) = *(a2 + 160);
  a1[22] = *(a2 + 176);
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  v19 = a1[24];
  if (v19)
  {
    a1[25] = v19;
    v20 = -1431655765 * ((a1[26] - v19) >> 2);
    v36 = v19;
    v37 = v20;
    v21 = *(a1 + 55);
    if (v21 == -1)
    {
      sub_23EF41D6C();
    }

    v38 = &v36;
    (off_285178E78[v21])(&v38, a1 + 27);
    a1[24] = 0;
    a1[25] = 0;
    a1[26] = 0;
  }

  a1[27] = *(a2 + 216);
  *(a1 + 12) = *(a2 + 192);
  a1[26] = *(a2 + 208);
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  v22 = a1[28];
  if (v22)
  {
    a1[29] = v22;
    v23 = (a1[30] - v22) >> 3;
    v36 = v22;
    v37 = v23;
    v24 = *(a1 + 63);
    if (v24 == -1)
    {
      sub_23EF41D6C();
    }

    v38 = &v36;
    (off_285178E98[v24])(&v38, a1 + 31);
    a1[28] = 0;
    a1[29] = 0;
    a1[30] = 0;
  }

  a1[31] = *(a2 + 248);
  *(a1 + 14) = *(a2 + 224);
  a1[30] = *(a2 + 240);
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  v25 = a1[32];
  if (v25)
  {
    a1[33] = v25;
    v26 = (a1[34] - v25) >> 3;
    v36 = v25;
    v37 = v26;
    v27 = *(a1 + 71);
    if (v27 == -1)
    {
      sub_23EF41D6C();
    }

    v38 = &v36;
    (off_285178E88[v27])(&v38, a1 + 35);
    a1[32] = 0;
    a1[33] = 0;
    a1[34] = 0;
  }

  a1[35] = *(a2 + 280);
  *(a1 + 16) = *(a2 + 256);
  a1[34] = *(a2 + 272);
  *(a2 + 256) = 0;
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  v28 = a1[36];
  if (v28)
  {
    a1[37] = v28;
    v29 = -1431655765 * ((a1[38] - v28) >> 2);
    v36 = v28;
    v37 = v29;
    v30 = *(a1 + 79);
    if (v30 == -1)
    {
      sub_23EF41D6C();
    }

    v38 = &v36;
    (off_285178E78[v30])(&v38, a1 + 39);
    a1[36] = 0;
    a1[37] = 0;
    a1[38] = 0;
  }

  a1[39] = *(a2 + 312);
  *(a1 + 18) = *(a2 + 288);
  a1[38] = *(a2 + 304);
  *(a2 + 296) = 0;
  *(a2 + 304) = 0;
  *(a2 + 288) = 0;
  v31 = *(a2 + 336);
  *(a1 + 20) = *(a2 + 320);
  *(a1 + 21) = v31;
  v32 = a1[44];
  if (v32)
  {
    a1[45] = v32;
    v33 = (a1[46] - v32) >> 2;
    v36 = v32;
    v37 = v33;
    v34 = *(a1 + 95);
    if (v34 == -1)
    {
      sub_23EF41D6C();
    }

    v38 = &v36;
    (off_285178E68[v34])(&v38, a1 + 47);
    a1[44] = 0;
    a1[45] = 0;
    a1[46] = 0;
  }

  a1[47] = *(a2 + 376);
  *(a1 + 22) = *(a2 + 352);
  a1[46] = *(a2 + 368);
  *(a2 + 352) = 0;
  *(a2 + 360) = 0;
  *(a2 + 368) = 0;
  return a1;
}

uint64_t sub_23EF780F4(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, _DWORD *a5, uint64_t a6, _DWORD *a7, uint64_t a8, _DWORD *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 *a15, _DWORD *a16, uint64_t a17)
{
  v24 = sub_23EF6FF84(a1, a2);
  *(v24 + 8) = *a3;
  sub_23EF6FF84(v24 + 5, a4);
  *(a1 + 72) = *a5;
  sub_23EF6FF84((a1 + 80), a6);
  *(a1 + 112) = *a7;
  sub_23EF700B0((a1 + 120), a8);
  *(a1 + 152) = *a9;
  sub_23EF700B0((a1 + 160), a10);
  sub_23EF701B8((a1 + 192), a11);
  sub_23EF702E4((a1 + 224), a12);
  sub_23EF703F8((a1 + 256), a13);
  sub_23EF701B8((a1 + 288), a14);
  v25 = *a15;
  *(a1 + 332) = *(a15 + 12);
  *(a1 + 320) = v25;
  *(a1 + 348) = *a16;
  sub_23EF70C64((a1 + 352), a17);
  return a1;
}

void sub_23EF781F8(_Unwind_Exception *a1)
{
  sub_23EF4FFB0(v1 + 36);
  sub_23EF50040(v1 + 32);
  sub_23EF500C4(v1 + 28);
  sub_23EF4FFB0(v1 + 24);
  sub_23EF50148(v1 + 20);
  sub_23EF50148(v1 + 15);
  sub_23EF501C8(v1 + 10);
  sub_23EF501C8(v1 + 5);
  sub_23EF501C8(v1);
  _Unwind_Resume(a1);
}

void sub_23EF7827C(_Unwind_Exception *a1)
{
  sub_23EF501C8(v1 + 5);
  sub_23EF501C8(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_23EF782AC(uint64_t *a1)
{
  v2 = a1[36];
  if (v2)
  {
    a1[37] = v2;
    v3 = -1431655765 * ((a1[38] - v2) >> 2);
    v30 = v2;
    v31 = v3;
    v4 = *(a1 + 79);
    if (v4 == -1)
    {
      sub_23EF41D6C();
    }

    v32 = &v30;
    (off_285178E78[v4])(&v32, a1 + 39);
  }

  v5 = a1[32];
  if (v5)
  {
    a1[33] = v5;
    v6 = (a1[34] - v5) >> 3;
    v30 = v5;
    v31 = v6;
    v7 = *(a1 + 71);
    if (v7 == -1)
    {
      sub_23EF41D6C();
    }

    v32 = &v30;
    (off_285178E88[v7])(&v32, a1 + 35);
  }

  v8 = a1[28];
  if (v8)
  {
    a1[29] = v8;
    v9 = (a1[30] - v8) >> 3;
    v30 = v8;
    v31 = v9;
    v10 = *(a1 + 63);
    if (v10 == -1)
    {
      sub_23EF41D6C();
    }

    v32 = &v30;
    (off_285178E98[v10])(&v32, a1 + 31);
  }

  v11 = a1[24];
  if (v11)
  {
    a1[25] = v11;
    v12 = -1431655765 * ((a1[26] - v11) >> 2);
    v30 = v11;
    v31 = v12;
    v13 = *(a1 + 55);
    if (v13 == -1)
    {
      sub_23EF41D6C();
    }

    v32 = &v30;
    (off_285178E78[v13])(&v32, a1 + 27);
  }

  v14 = a1[20];
  if (v14)
  {
    a1[21] = v14;
    v15 = *(a1 + 44) - v14;
    v30 = v14;
    v31 = v15;
    v16 = *(a1 + 47);
    if (v16 == -1)
    {
      sub_23EF41D6C();
    }

    v32 = &v30;
    (off_285178EA8[v16])(&v32, a1 + 23);
  }

  v17 = a1[15];
  if (v17)
  {
    a1[16] = v17;
    v18 = *(a1 + 34) - v17;
    v30 = v17;
    v31 = v18;
    v19 = *(a1 + 37);
    if (v19 == -1)
    {
      sub_23EF41D6C();
    }

    v32 = &v30;
    (off_285178EA8[v19])(&v32, a1 + 18);
  }

  v20 = a1[10];
  if (v20)
  {
    a1[11] = v20;
    v21 = -1431655765 * ((a1[12] - v20) >> 2);
    v30 = v20;
    v31 = v21;
    v22 = *(a1 + 27);
    if (v22 == -1)
    {
      sub_23EF41D6C();
    }

    v32 = &v30;
    (off_285178EB8[v22])(&v32, a1 + 13);
  }

  v23 = a1[5];
  if (v23)
  {
    a1[6] = v23;
    v24 = -1431655765 * ((a1[7] - v23) >> 2);
    v30 = v23;
    v31 = v24;
    v25 = *(a1 + 17);
    if (v25 == -1)
    {
      sub_23EF41D6C();
    }

    v32 = &v30;
    (off_285178EB8[v25])(&v32, a1 + 8);
  }

  v26 = *a1;
  if (*a1)
  {
    a1[1] = v26;
    v27 = -1431655765 * ((a1[2] - v26) >> 2);
    v30 = v26;
    v31 = v27;
    v28 = *(a1 + 7);
    if (v28 == -1)
    {
      sub_23EF41D6C();
    }

    v32 = &v30;
    (off_285178EB8[v28])(&v32, a1 + 3);
  }

  return a1;
}

uint64_t *sub_23EF78604(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 <= 2)
  {
    v105 = 0u;
    v107 = 0;
    v106 = 0;
    v108 = 0;
    v109 = 0;
    v110 = 0;
    v111 = 0;
    v112 = 0;
    v113 = 0;
    v115 = 0;
    v114 = 0;
    v116 = 0;
    v118 = 0;
    v117 = 0;
    v119 = 0;
    v122 = 0;
    v120 = 0;
    v121 = 0;
    v123[32] = 0;
    LOBYTE(v124) = 0;
    v127 = 0;
    memset(v123, 0, 28);
    memset(&v123[8], 0, 28);
    memset(&v123[16], 0, 28);
    memset(&v123[24], 0, 28);
    *&v104[0] = 0;
    sub_23F2F80F8(*(a1 + 48), v104);
    v11 = *(&v105 + 1);
    v10 = v105;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((*(&v105 + 1) - v105) >> 2);
    if (*&v104[0] <= v12)
    {
      if (*&v104[0] < v12)
      {
        v11 = (v105 + 12 * *&v104[0]);
        *(&v105 + 1) = v11;
      }
    }

    else
    {
      sub_23EF768B8(&v105, *&v104[0] - v12);
      v11 = *(&v105 + 1);
      v10 = v105;
    }

    for (; v10 != v11; v10 = v51 + 1)
    {
      v50 = *(a1 + 48);
      sub_23F2F81EC(v50, v10);
      v51 = v10 + 1;
      sub_23F2F81EC(v50, v51++);
      sub_23F2F81EC(v50, v51);
    }

    LODWORD(v104[0]) = 0;
    sub_23F2F7EFC(*(a1 + 48), v104);
    HIDWORD(v107) = v104[0];
    *&v104[0] = 0xAAAAAAAAAAAAAAABLL * (v109 - v108);
    sub_23F2F80F8(*(a1 + 48), v104);
    v52 = v108;
    v53 = v109;
    v54 = 0xAAAAAAAAAAAAAAABLL * (v109 - v108);
    if (*&v104[0] <= v54)
    {
      if (*&v104[0] < v54)
      {
        v53 = &v108[3 * *&v104[0]];
        v109 = v53;
      }
    }

    else
    {
      sub_23EF768B8(&v108, *&v104[0] - v54);
      v52 = v108;
      v53 = v109;
    }

    for (; v52 != v53; v52 = v56 + 1)
    {
      v55 = *(a1 + 48);
      sub_23F2F81EC(v55, v52);
      v56 = v52 + 1;
      sub_23F2F81EC(v55, v56++);
      sub_23F2F81EC(v55, v56);
    }

    LODWORD(v104[0]) = 0;
    sub_23F2F7EFC(*(a1 + 48), v104);
    HIDWORD(v111) = v104[0];
    *&v104[0] = 0xAAAAAAAAAAAAAAABLL * (v113 - v112);
    sub_23F2F80F8(*(a1 + 48), v104);
    v57 = v112;
    v58 = v113;
    v59 = 0xAAAAAAAAAAAAAAABLL * (v113 - v112);
    if (*&v104[0] <= v59)
    {
      if (*&v104[0] < v59)
      {
        v58 = &v112[3 * *&v104[0]];
        v113 = v58;
      }
    }

    else
    {
      sub_23EF768B8(&v112, *&v104[0] - v59);
      v57 = v112;
      v58 = v113;
    }

    for (; v57 != v58; v57 = v61 + 1)
    {
      v60 = *(a1 + 48);
      sub_23F2F81EC(v60, v57);
      v61 = v57 + 1;
      sub_23F2F81EC(v60, v61++);
      sub_23F2F81EC(v60, v61);
    }

    LODWORD(v104[0]) = 0;
    sub_23F2F7EFC(*(a1 + 48), v104);
    HIDWORD(v115) = v104[0];
    *&v104[0] = v117 - v116;
    sub_23F2F80F8(*(a1 + 48), v104);
    v62 = v117;
    v63 = v116;
    if (*&v104[0] <= (v117 - v116))
    {
      if (*&v104[0] < (v117 - v116))
      {
        v62 = &v116[*&v104[0]];
        v117 = &v116[*&v104[0]];
      }
    }

    else
    {
      sub_23EF76C28(&v116, *&v104[0] - (v117 - v116));
      v63 = v116;
      v62 = v117;
    }

    v64 = *(a1 + 48);
    v65 = v62 - v63;
    if (v62 != v63)
    {
      do
      {
        sub_23F2F7BA4(v64, v63++);
        --v65;
      }

      while (v65);
      v64 = *(a1 + 48);
    }

    LODWORD(v104[0]) = 0;
    sub_23F2F7EFC(v64, v104);
    HIDWORD(v119) = v104[0];
    *&v104[0] = v121 - v120;
    sub_23F2F80F8(*(a1 + 48), v104);
    v66 = v121;
    v67 = v120;
    if (*&v104[0] <= (v121 - v120))
    {
      if (*&v104[0] < (v121 - v120))
      {
        v66 = &v120[*&v104[0]];
        v121 = &v120[*&v104[0]];
      }
    }

    else
    {
      sub_23EF76C28(&v120, *&v104[0] - (v121 - v120));
      v67 = v120;
      v66 = v121;
    }

    v68 = *(a1 + 48);
    v69 = v66 - v67;
    if (v66 != v67)
    {
      do
      {
        sub_23F2F7BA4(v68, v67++);
        --v69;
      }

      while (v69);
      v68 = *(a1 + 48);
    }

    *&v104[0] = 0xAAAAAAAAAAAAAAABLL * ((*&v123[3] - *&v123[1]) >> 2);
    sub_23F2F80F8(v68, v104);
    v70 = *&v123[3];
    v71 = *&v123[1];
    v72 = 0xAAAAAAAAAAAAAAABLL * ((*&v123[3] - *&v123[1]) >> 2);
    if (*&v104[0] <= v72)
    {
      if (*&v104[0] < v72)
      {
        v70 = *&v123[1] + 12 * *&v104[0];
        *&v123[3] = v70;
      }
    }

    else
    {
      sub_23EF76F50(&v123[1], *&v104[0] - v72);
      v71 = *&v123[1];
      v70 = *&v123[3];
    }

    if (v70 != v71)
    {
      do
      {
        v73 = *(a1 + 48);
        sub_23F2F7EFC(v73, v71);
        v74 = v71 + 1;
        sub_23F2F7EFC(v73, v74++);
        sub_23F2F7EFC(v73, v74);
        v71 = v74 + 1;
      }

      while (v71 != v70);
    }

    *&v104[0] = (*&v123[11] - *&v123[9]) >> 3;
    sub_23F2F80F8(*(a1 + 48), v104);
    v75 = *&v123[11];
    v76 = *&v123[9];
    v77 = (*&v123[11] - *&v123[9]) >> 3;
    if (*&v104[0] <= v77)
    {
      if (*&v104[0] < v77)
      {
        v75 = *&v123[9] + 8 * *&v104[0];
        *&v123[11] = v75;
      }
    }

    else
    {
      sub_23EF772DC(&v123[9], *&v104[0] - v77);
      v76 = *&v123[9];
      v75 = *&v123[11];
    }

    if (v75 != v76)
    {
      do
      {
        v78 = *(a1 + 48);
        sub_23F2F7EFC(v78, v76);
        v79 = v76 + 1;
        sub_23F2F7EFC(v78, v79);
        v76 = v79 + 1;
      }

      while (v76 != v75);
    }

    *&v104[0] = (*&v123[19] - *&v123[17]) >> 3;
    sub_23F2F80F8(*(a1 + 48), v104);
    v80 = *&v123[19];
    v81 = *&v123[17];
    v82 = (*&v123[19] - *&v123[17]) >> 3;
    if (*&v104[0] <= v82)
    {
      if (*&v104[0] < v82)
      {
        v80 = *&v123[17] + 8 * *&v104[0];
        *&v123[19] = v80;
      }
    }

    else
    {
      sub_23EF77600(&v123[17], *&v104[0] - v82);
      v81 = *&v123[17];
      v80 = *&v123[19];
    }

    if (v80 != v81)
    {
      do
      {
        v83 = *(a1 + 48);
        sub_23F2F81EC(v83, v81);
        v84 = v81 + 1;
        sub_23F2F81EC(v83, v84);
        v81 = v84 + 1;
      }

      while (v81 != v80);
    }

    *&v104[0] = 0xAAAAAAAAAAAAAAABLL * ((*&v123[27] - *&v123[25]) >> 2);
    sub_23F2F80F8(*(a1 + 48), v104);
    v85 = *&v123[27];
    v86 = *&v123[25];
    v87 = 0xAAAAAAAAAAAAAAABLL * ((*&v123[27] - *&v123[25]) >> 2);
    if (*&v104[0] <= v87)
    {
      if (*&v104[0] < v87)
      {
        v85 = *&v123[25] + 12 * *&v104[0];
        *&v123[27] = v85;
      }
    }

    else
    {
      sub_23EF76F50(&v123[25], *&v104[0] - v87);
      v86 = *&v123[25];
      v85 = *&v123[27];
    }

    if (v85 != v86)
    {
      do
      {
        v88 = *(a1 + 48);
        sub_23F2F7EFC(v88, v86);
        v89 = v86 + 1;
        sub_23F2F7EFC(v88, v89++);
        sub_23F2F7EFC(v88, v89);
        v86 = v89 + 1;
      }

      while (v86 != v85);
    }

    if (a3 == 2)
    {
      v128 = 0;
      sub_23F2F7BA4(*(a1 + 48), &v128);
      if (v128)
      {
        if ((v127 & 1) == 0)
        {
          v124 = 0;
          v125 = 0;
          v126 = 0;
          v127 = 1;
        }

        LODWORD(v104[0]) = 1;
        sub_23F2F7EFC(*(a1 + 48), v104);
        v90 = *(a1 + 48);
        sub_23F2F81EC(v90, &v124);
        sub_23F2F81EC(v90, &v124 + 1);
        sub_23F2F81EC(v90, &v125);
        v91 = *(a1 + 48);
        sub_23F2F81EC(v91, &v125 + 1);
        sub_23F2F81EC(v91, &v126);
        sub_23F2F81EC(v91, &v126 + 1);
      }

      else if (v127)
      {
        v127 = 0;
      }
    }

    sub_23EF77A1C(v104, &v105);
    sub_23EF77B68(a2, v104);
    sub_23EF4FC00(v104);
    return sub_23EF782AC(&v105);
  }

  else
  {
    *&v105 = 0;
    sub_23F2F80F8(*(a1 + 48), &v105);
    v6 = a1 + 16;
    *&v104[0] = (*(*(a1 + 16) + 32))(a1 + 16);
    *(&v104[0] + 1) = v105;
    sub_23EF62458(a1 + 24, v104);
    *&v104[0] = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 2);
    sub_23F2F80F8(*(a1 + 48), v104);
    v7 = *a2;
    v8 = *(a2 + 8);
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *a2) >> 2);
    if (*&v104[0] <= v9)
    {
      if (*&v104[0] < v9)
      {
        v8 = &v7[3 * *&v104[0]];
        *(a2 + 8) = v8;
      }
    }

    else
    {
      sub_23EF768B8(a2, *&v104[0] - v9);
      v7 = *a2;
      v8 = *(a2 + 8);
    }

    for (; v7 != v8; v7 += 3)
    {
      v13 = *(a1 + 48);
      sub_23F2F81EC(v13, v7);
      sub_23F2F81EC(v13, v7 + 1);
      sub_23F2F81EC(v13, v7 + 2);
    }

    LODWORD(v104[0]) = 0;
    sub_23F2F7EFC(*(a1 + 48), v104);
    *(a2 + 32) = v104[0];
    *&v104[0] = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 2);
    sub_23F2F80F8(*(a1 + 48), v104);
    v14 = *(a2 + 40);
    v15 = *(a2 + 48);
    v16 = 0xAAAAAAAAAAAAAAABLL * (v15 - v14);
    if (*&v104[0] <= v16)
    {
      if (*&v104[0] < v16)
      {
        v15 = &v14[3 * *&v104[0]];
        *(a2 + 48) = v15;
      }
    }

    else
    {
      sub_23EF768B8(a2 + 40, *&v104[0] - v16);
      v14 = *(a2 + 40);
      v15 = *(a2 + 48);
    }

    for (; v14 != v15; v14 += 3)
    {
      v17 = *(a1 + 48);
      sub_23F2F81EC(v17, v14);
      sub_23F2F81EC(v17, v14 + 1);
      sub_23F2F81EC(v17, v14 + 2);
    }

    LODWORD(v104[0]) = 0;
    sub_23F2F7EFC(*(a1 + 48), v104);
    *(a2 + 72) = v104[0];
    *&v104[0] = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 88) - *(a2 + 80)) >> 2);
    sub_23F2F80F8(*(a1 + 48), v104);
    v18 = *(a2 + 80);
    v19 = *(a2 + 88);
    v20 = 0xAAAAAAAAAAAAAAABLL * (v19 - v18);
    if (*&v104[0] <= v20)
    {
      if (*&v104[0] < v20)
      {
        v19 = &v18[3 * *&v104[0]];
        *(a2 + 88) = v19;
      }
    }

    else
    {
      sub_23EF768B8(a2 + 80, *&v104[0] - v20);
      v18 = *(a2 + 80);
      v19 = *(a2 + 88);
    }

    for (; v18 != v19; v18 += 3)
    {
      v21 = *(a1 + 48);
      sub_23F2F81EC(v21, v18);
      sub_23F2F81EC(v21, v18 + 1);
      sub_23F2F81EC(v21, v18 + 2);
    }

    LODWORD(v104[0]) = 0;
    sub_23F2F7EFC(*(a1 + 48), v104);
    *(a2 + 112) = v104[0];
    *&v104[0] = *(a2 + 128) - *(a2 + 120);
    sub_23F2F80F8(*(a1 + 48), v104);
    v23 = *(a2 + 120);
    v22 = *(a2 + 128);
    if (*&v104[0] <= (v22 - v23))
    {
      if (*&v104[0] < (v22 - v23))
      {
        v22 = &v23[*&v104[0]];
        *(a2 + 128) = &v23[*&v104[0]];
      }
    }

    else
    {
      sub_23EF76C28(a2 + 120, *&v104[0] - (v22 - v23));
      v23 = *(a2 + 120);
      v22 = *(a2 + 128);
    }

    v24 = *(a1 + 48);
    v25 = v22 - v23;
    if (v22 != v23)
    {
      do
      {
        sub_23F2F7BA4(v24, v23++);
        --v25;
      }

      while (v25);
      v24 = *(a1 + 48);
    }

    LODWORD(v104[0]) = 0;
    sub_23F2F7EFC(v24, v104);
    *(a2 + 152) = v104[0];
    *&v104[0] = *(a2 + 168) - *(a2 + 160);
    sub_23F2F80F8(*(a1 + 48), v104);
    v27 = *(a2 + 160);
    v26 = *(a2 + 168);
    if (*&v104[0] <= (v26 - v27))
    {
      if (*&v104[0] < (v26 - v27))
      {
        v26 = &v27[*&v104[0]];
        *(a2 + 168) = &v27[*&v104[0]];
      }
    }

    else
    {
      sub_23EF76C28(a2 + 160, *&v104[0] - (v26 - v27));
      v27 = *(a2 + 160);
      v26 = *(a2 + 168);
    }

    v28 = *(a1 + 48);
    v29 = v26 - v27;
    if (v26 != v27)
    {
      do
      {
        sub_23F2F7BA4(v28, v27++);
        --v29;
      }

      while (v29);
      v28 = *(a1 + 48);
    }

    *&v104[0] = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 200) - *(a2 + 192)) >> 2);
    sub_23F2F80F8(v28, v104);
    v30 = *(a2 + 192);
    v31 = *(a2 + 200);
    v32 = 0xAAAAAAAAAAAAAAABLL * (v31 - v30);
    if (*&v104[0] <= v32)
    {
      if (*&v104[0] < v32)
      {
        v31 = &v30[3 * *&v104[0]];
        *(a2 + 200) = v31;
      }
    }

    else
    {
      sub_23EF76F50(a2 + 192, *&v104[0] - v32);
      v30 = *(a2 + 192);
      v31 = *(a2 + 200);
    }

    for (; v30 != v31; v30 += 3)
    {
      v33 = *(a1 + 48);
      sub_23F2F7EFC(v33, v30);
      sub_23F2F7EFC(v33, v30 + 1);
      sub_23F2F7EFC(v33, v30 + 2);
    }

    *&v104[0] = (*(a2 + 232) - *(a2 + 224)) >> 3;
    sub_23F2F80F8(*(a1 + 48), v104);
    v34 = *(a2 + 224);
    v35 = *(a2 + 232);
    v36 = (v35 - v34) >> 3;
    if (*&v104[0] <= v36)
    {
      if (*&v104[0] < v36)
      {
        v35 = &v34[8 * *&v104[0]];
        *(a2 + 232) = v35;
      }
    }

    else
    {
      sub_23EF772DC(a2 + 224, *&v104[0] - v36);
      v34 = *(a2 + 224);
      v35 = *(a2 + 232);
    }

    for (; v34 != v35; v34 += 8)
    {
      v37 = *(a1 + 48);
      sub_23F2F7EFC(v37, v34);
      sub_23F2F7EFC(v37, v34 + 1);
    }

    *&v104[0] = (*(a2 + 264) - *(a2 + 256)) >> 3;
    sub_23F2F80F8(*(a1 + 48), v104);
    v38 = *(a2 + 256);
    v39 = *(a2 + 264);
    v40 = (v39 - v38) >> 3;
    if (*&v104[0] <= v40)
    {
      if (*&v104[0] < v40)
      {
        v39 = &v38[2 * *&v104[0]];
        *(a2 + 264) = v39;
      }
    }

    else
    {
      sub_23EF77600(a2 + 256, *&v104[0] - v40);
      v38 = *(a2 + 256);
      v39 = *(a2 + 264);
    }

    for (; v38 != v39; v38 += 2)
    {
      v41 = *(a1 + 48);
      sub_23F2F81EC(v41, v38);
      sub_23F2F81EC(v41, v38 + 1);
    }

    *&v104[0] = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 296) - *(a2 + 288)) >> 2);
    sub_23F2F80F8(*(a1 + 48), v104);
    v42 = *(a2 + 288);
    v43 = *(a2 + 296);
    v44 = 0xAAAAAAAAAAAAAAABLL * (v43 - v42);
    if (*&v104[0] <= v44)
    {
      if (*&v104[0] < v44)
      {
        v43 = &v42[3 * *&v104[0]];
        *(a2 + 296) = v43;
      }
    }

    else
    {
      sub_23EF76F50(a2 + 288, *&v104[0] - v44);
      v42 = *(a2 + 288);
      v43 = *(a2 + 296);
    }

    for (; v42 != v43; v42 += 3)
    {
      v45 = *(a1 + 48);
      sub_23F2F7EFC(v45, v42);
      sub_23F2F7EFC(v45, v42 + 1);
      sub_23F2F7EFC(v45, v42 + 2);
    }

    v128 = 0;
    sub_23F2F7BA4(*(a1 + 48), &v128);
    if (v128)
    {
      if ((*(a2 + 344) & 1) == 0)
      {
        *(a2 + 320) = 0;
        *(a2 + 328) = 0;
        *(a2 + 336) = 0;
        *(a2 + 344) = 1;
      }

      LODWORD(v104[0]) = 2;
      sub_23F2F7EFC(*(a1 + 48), v104);
      if (LODWORD(v104[0]) <= 1)
      {
        memset(v104, 0, 24);
        v92 = *(a1 + 48);
        sub_23F2F81EC(v92, v104);
        sub_23F2F81EC(v92, v104 + 1);
        sub_23F2F81EC(v92, v104 + 2);
        v93 = *(a1 + 48);
        sub_23F2F81EC(v93, (v104 | 0xC));
        sub_23F2F81EC(v93, &v104[1]);
        sub_23F2F81EC(v93, &v104[1] + 1);
        v94 = v104[0];
        v95 = *(v104 + 12);
        HIDWORD(v94) = HIDWORD(v104[0]);
        *(a2 + 320) = v94;
        LODWORD(v94) = vdup_lane_s32(v95, 1).u32[0];
        DWORD1(v94) = DWORD1(v104[1]);
        *(a2 + 336) = v94;
      }

      else
      {
        *&v105 = 0;
        sub_23F2F80F8(*(a1 + 48), &v105);
        *&v104[0] = (*(*(a1 + 16) + 32))(a1 + 16);
        *(&v104[0] + 1) = v105;
        sub_23EF62458(a1 + 24, v104);
        v47 = *(a1 + 48);
        sub_23F2F81EC(v47, (a2 + 320));
        sub_23F2F81EC(v47, (a2 + 324));
        sub_23F2F81EC(v47, (a2 + 328));
        v48 = *(a1 + 48);
        sub_23F2F81EC(v48, (a2 + 332));
        sub_23F2F81EC(v48, (a2 + 336));
        sub_23F2F81EC(v48, (a2 + 340));
        v49 = *(a1 + 32);
        v46 = *(v49 - 16) - (*(*(a1 + 16) + 32))(a1 + 16) + *(v49 - 8);
        if (v46)
        {
          (*(*v6 + 40))(a1 + 16, v46);
        }

        *(a1 + 32) -= 16;
      }
    }

    else if (*(a2 + 344))
    {
      *(a2 + 344) = 0;
    }

    if (a3 != 3)
    {
      LODWORD(v104[0]) = 0;
      sub_23F2F7EFC(*(a1 + 48), v104);
      *(a2 + 348) = v104[0];
      *&v104[0] = (*(a2 + 360) - *(a2 + 352)) >> 2;
      sub_23F2F80F8(*(a1 + 48), v104);
      v97 = *(a2 + 352);
      v96 = *(a2 + 360);
      v98 = v96 - v97;
      v46 = *&v104[0] - v98;
      if (*&v104[0] <= v98)
      {
        if (*&v104[0] < v98)
        {
          v96 = &v97[*&v104[0]];
          *(a2 + 360) = v96;
        }
      }

      else
      {
        sub_23EF77888(a2 + 352, v46);
        v97 = *(a2 + 352);
        v96 = *(a2 + 360);
      }

      v99 = v96 - v97;
      if (v96 != v97)
      {
        v100 = *(a1 + 48);
        do
        {
          sub_23F2F81EC(v100, v97++);
          v99 -= 4;
        }

        while (v99);
      }
    }

    v101 = *(a1 + 32);
    result = (*(*(a1 + 16) + 32))(a1 + 16, v46);
    v103 = *(v101 - 16) - result + *(v101 - 8);
    if (v103)
    {
      result = (*(*v6 + 40))(a1 + 16, v103);
    }

    *(a1 + 32) -= 16;
  }

  return result;
}

void sub_23EF79754(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 32);
  v4 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v4;
  sub_23F2EB5F4(a1 + 40, &v7);
  sub_23F294EB4(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  if (*(a1 + 104) == 1)
  {
    *(a1 + 104) = 0;
  }

  v7 = "version";
  v8 = 7;
  LODWORD(v9) = 4;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_23F2EBEC0(a1, &v9);
  if (v9 >= 3)
  {
    v7 = "vertices";
    v8 = 8;
    v9 = a2;
    sub_23EF7A754(a1, &v7);
    v5 = *(a1 + 104);
    *(a1 + 88) = "colors_type";
    *(a1 + 96) = 11;
    if ((v5 & 1) == 0)
    {
      *(a1 + 104) = 1;
    }

    v7 = (a2 + 32);
    sub_23EF7A8FC(a1);
  }

  v10 = 0u;
  v12[0] = 0;
  v11 = 0;
  *(&v12[1] + 4) = 0;
  *(&v12[2] + 4) = 0;
  *(&v12[3] + 4) = 0;
  v12[5] = 0;
  *(&v12[6] + 4) = 0;
  *(&v12[7] + 4) = 0;
  v12[10] = 0;
  *(&v12[8] + 4) = 0;
  *(&v12[11] + 4) = 0;
  *(&v12[12] + 4) = 0;
  *(&v12[13] + 4) = 0;
  v12[15] = 0;
  *(&v12[18] + 4) = 0;
  *(&v12[16] + 4) = 0;
  *(&v12[17] + 4) = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  memset(&v12[20], 0, 24);
  v16 = 0;
  v13 = 0;
  v17 = 0;
  v14 = 0;
  v15 = 0;
  v20 = 0;
  v19 = 0;
  v21 = 0;
  v18 = 0;
  v24 = 0;
  v22 = 0;
  v23 = 0;
  v25 = 0;
  v7 = "vertices";
  v8 = 8;
  v9 = &v10;
  sub_23EF7A754(a1, &v7);
  v6 = *(a1 + 104);
  *(a1 + 88) = "colors_type";
  *(a1 + 96) = 11;
  if ((v6 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v7 = v12 + 4;
  sub_23EF7A8FC(a1);
}

void sub_23EF7A754(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 104);
  *(a1 + 88) = *a2;
  if ((v3 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v4 = *(a2 + 16);
  v16[0] = *(a1 + 32);
  v5 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v5;
  sub_23F2EB5F4(a1 + 40, v16);
  sub_23F294EB4(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  if (*(a1 + 104) == 1)
  {
    *(a1 + 104) = 0;
  }

  v6 = *(a1 + 32);
  v7 = *v6;
  if (v7 == 2)
  {
    v8 = (*(*(v6 + 1) + 8) - **(v6 + 1)) >> 4;
  }

  else if (v7 == 1)
  {
    v8 = *(*(v6 + 1) + 16);
  }

  else
  {
    if (!*v6)
    {
      v8 = 0;
      v9 = v4 + 1;
      v10 = v4[1];
      v11 = *v4;
      v12 = 0xAAAAAAAAAAAAAAABLL * (v10 - *v4);
      goto LABEL_14;
    }

    v8 = 1;
  }

  v9 = v4 + 1;
  v10 = v4[1];
  v11 = *v4;
  v12 = 0xAAAAAAAAAAAAAAABLL * (v10 - *v4);
  if (v8 > v12)
  {
    sub_23EF768B8(v4, v8 - v12);
    v11 = *v4;
    v10 = v4[1];
    goto LABEL_16;
  }

LABEL_14:
  if (v12 > v8)
  {
    v10 = &v11[3 * v8];
    *v9 = v10;
  }

LABEL_16:
  while (v11 != v10)
  {
    v16[0] = v11;
    v16[1] = 3;
    v13 = sub_23F2EB70C(a1);
    ++*(a1 + 112);
    sub_23F2EC778(v13, v16);
    v11 += 3;
  }

  v14 = *(a1 + 48);
  *(a1 + 32) = *(v14 - 8);
  v15 = *(a1 + 72);
  *(a1 + 112) = *(v15 - 8);
  *(a1 + 48) = v14 - 8;
  *(a1 + 72) = v15 - 8;
}

void sub_23EF7A8FC(void *a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v4 = 0;
  v2 = sub_23F2EB70C(a1);
  ++a1[14];
  v6 = 0;
  v5 = 0uLL;
  sub_23F06FFE4(v2, &v5);
  v4 = v6;
  *__p = v5;
  operator new();
}

void sub_23EF7A9EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  a17 = 0;
  sub_23F302A54(&a17, v22);
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_23EF7AA80(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 104);
  *(a1 + 88) = *a2;
  if ((v3 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v4 = *(a2 + 16);
  v16[0] = *(a1 + 32);
  v5 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v5;
  sub_23F2EB5F4(a1 + 40, v16);
  sub_23F294EB4(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  if (*(a1 + 104) == 1)
  {
    *(a1 + 104) = 0;
  }

  v6 = *(a1 + 32);
  v7 = *v6;
  if (v7 == 2)
  {
    v8 = (*(*(v6 + 1) + 8) - **(v6 + 1)) >> 4;
  }

  else if (v7 == 1)
  {
    v8 = *(*(v6 + 1) + 16);
  }

  else
  {
    if (!*v6)
    {
      v8 = 0;
      v9 = v4 + 1;
      v10 = v4[1];
      v11 = *v4;
      v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *v4) >> 2);
      goto LABEL_14;
    }

    v8 = 1;
  }

  v9 = v4 + 1;
  v10 = v4[1];
  v11 = *v4;
  v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *v4) >> 2);
  if (v8 > v12)
  {
    sub_23EF76F50(v4, v8 - v12);
    v11 = *v4;
    v10 = v4[1];
    goto LABEL_16;
  }

LABEL_14:
  if (v12 > v8)
  {
    v10 = &v11[3 * v8];
    *v9 = v10;
  }

LABEL_16:
  while (v11 != v10)
  {
    v16[0] = v11;
    v16[1] = 3;
    v13 = sub_23F2EB70C(a1);
    ++*(a1 + 112);
    sub_23F2EC444(v13, v16);
    v11 += 3;
  }

  v14 = *(a1 + 48);
  *(a1 + 32) = *(v14 - 8);
  v15 = *(a1 + 72);
  *(a1 + 112) = *(v15 - 8);
  *(a1 + 48) = v14 - 8;
  *(a1 + 72) = v15 - 8;
}

void sub_23EF7AC28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 104);
  *(a1 + 88) = *a2;
  if ((v3 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v4 = *(a2 + 16);
  v16[0] = *(a1 + 32);
  v5 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v5;
  sub_23F2EB5F4(a1 + 40, v16);
  sub_23F294EB4(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  if (*(a1 + 104) == 1)
  {
    *(a1 + 104) = 0;
  }

  v6 = *(a1 + 32);
  v7 = *v6;
  if (v7 == 2)
  {
    v8 = (*(*(v6 + 1) + 8) - **(v6 + 1)) >> 4;
  }

  else if (v7 == 1)
  {
    v8 = *(*(v6 + 1) + 16);
  }

  else
  {
    if (!*v6)
    {
      v8 = 0;
      v9 = v4 + 1;
      v10 = v4[1];
      v11 = *v4;
      v12 = (v10 - *v4) >> 3;
      goto LABEL_14;
    }

    v8 = 1;
  }

  v9 = v4 + 1;
  v10 = v4[1];
  v11 = *v4;
  v12 = (v10 - *v4) >> 3;
  if (v8 > v12)
  {
    sub_23EF772DC(v4, v8 - v12);
    v11 = *v4;
    v10 = v4[1];
    goto LABEL_16;
  }

LABEL_14:
  if (v12 > v8)
  {
    v10 = &v11[2 * v8];
    *v9 = v10;
  }

LABEL_16:
  while (v11 != v10)
  {
    v16[0] = v11;
    v16[1] = 2;
    v13 = sub_23F2EB70C(a1);
    ++*(a1 + 112);
    sub_23F2EC444(v13, v16);
    v11 += 2;
  }

  v14 = *(a1 + 48);
  *(a1 + 32) = *(v14 - 8);
  v15 = *(a1 + 72);
  *(a1 + 112) = *(v15 - 8);
  *(a1 + 48) = v14 - 8;
  *(a1 + 72) = v15 - 8;
}

void sub_23EF7ADB4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 104);
  *(a1 + 88) = *a2;
  if ((v3 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v4 = *(a2 + 16);
  v16[0] = *(a1 + 32);
  v5 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v5;
  sub_23F2EB5F4(a1 + 40, v16);
  sub_23F294EB4(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  if (*(a1 + 104) == 1)
  {
    *(a1 + 104) = 0;
  }

  v6 = *(a1 + 32);
  v7 = *v6;
  if (v7 == 2)
  {
    v8 = (*(*(v6 + 1) + 8) - **(v6 + 1)) >> 4;
  }

  else if (v7 == 1)
  {
    v8 = *(*(v6 + 1) + 16);
  }

  else
  {
    if (!*v6)
    {
      v8 = 0;
      v9 = v4 + 1;
      v10 = v4[1];
      v11 = *v4;
      v12 = (v10 - *v4) >> 3;
      goto LABEL_14;
    }

    v8 = 1;
  }

  v9 = v4 + 1;
  v10 = v4[1];
  v11 = *v4;
  v12 = (v10 - *v4) >> 3;
  if (v8 > v12)
  {
    sub_23EF77600(v4, v8 - v12);
    v11 = *v4;
    v10 = v4[1];
    goto LABEL_16;
  }

LABEL_14:
  if (v12 > v8)
  {
    v10 = &v11[2 * v8];
    *v9 = v10;
  }

LABEL_16:
  while (v11 != v10)
  {
    v16[0] = v11;
    v16[1] = 2;
    v13 = sub_23F2EB70C(a1);
    ++*(a1 + 112);
    sub_23F2EC778(v13, v16);
    v11 += 2;
  }

  v14 = *(a1 + 48);
  *(a1 + 32) = *(v14 - 8);
  v15 = *(a1 + 72);
  *(a1 + 112) = *(v15 - 8);
  *(a1 + 48) = v14 - 8;
  *(a1 + 72) = v15 - 8;
}

uint64_t *sub_23EF7AF40(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v42 = 0u;
  v44 = 0;
  v43 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v52 = 0;
  v51 = 0;
  v53 = 0;
  v55 = 0;
  v54 = 0;
  v56 = 0;
  v59 = 0;
  v57 = 0;
  v58 = 0;
  v60[32] = 0;
  LOBYTE(v61) = 0;
  v64 = 0;
  memset(v60, 0, 28);
  memset(&v60[8], 0, 28);
  memset(&v60[16], 0, 28);
  memset(&v60[24], 0, 28);
  v41[0] = 0;
  sub_23F2F5EB0(a1, v41);
  v7 = *(&v42 + 1);
  v6 = v42;
  v8 = 0xAAAAAAAAAAAAAAABLL * ((*(&v42 + 1) - v42) >> 2);
  if (v41[0] <= v8)
  {
    if (v41[0] < v8)
    {
      v7 = (v42 + 12 * v41[0]);
      *(&v42 + 1) = v7;
    }
  }

  else
  {
    sub_23EF768B8(&v42, v41[0] - v8);
    v7 = *(&v42 + 1);
    v6 = v42;
  }

  for (; v6 != v7; v6 = v9 + 1)
  {
    sub_23F2F6564(a1, v6);
    v9 = v6 + 1;
    sub_23F2F6564(a1, v9++);
    sub_23F2F6564(a1, v9);
  }

  LODWORD(v41[0]) = 0;
  sub_23F2F5830(a1, v41);
  HIDWORD(v44) = v41[0];
  v41[0] = 0xAAAAAAAAAAAAAAABLL * (v46 - v45);
  sub_23F2F5EB0(a1, v41);
  v10 = v45;
  v11 = v46;
  v12 = 0xAAAAAAAAAAAAAAABLL * (v46 - v45);
  if (v41[0] <= v12)
  {
    if (v41[0] < v12)
    {
      v11 = &v45[3 * v41[0]];
      v46 = v11;
    }
  }

  else
  {
    sub_23EF768B8(&v45, v41[0] - v12);
    v10 = v45;
    v11 = v46;
  }

  for (; v10 != v11; v10 = v13 + 1)
  {
    sub_23F2F6564(a1, v10);
    v13 = v10 + 1;
    sub_23F2F6564(a1, v13++);
    sub_23F2F6564(a1, v13);
  }

  LODWORD(v41[0]) = 0;
  sub_23F2F5830(a1, v41);
  HIDWORD(v48) = v41[0];
  v41[0] = 0xAAAAAAAAAAAAAAABLL * (v50 - v49);
  sub_23F2F5EB0(a1, v41);
  v14 = v49;
  v15 = v50;
  v16 = 0xAAAAAAAAAAAAAAABLL * (v50 - v49);
  if (v41[0] <= v16)
  {
    if (v41[0] < v16)
    {
      v15 = &v49[3 * v41[0]];
      v50 = v15;
    }
  }

  else
  {
    sub_23EF768B8(&v49, v41[0] - v16);
    v14 = v49;
    v15 = v50;
  }

  for (; v14 != v15; v14 = v17 + 1)
  {
    sub_23F2F6564(a1, v14);
    v17 = v14 + 1;
    sub_23F2F6564(a1, v17++);
    sub_23F2F6564(a1, v17);
  }

  LODWORD(v41[0]) = 0;
  sub_23F2F5830(a1, v41);
  HIDWORD(v52) = v41[0];
  v41[0] = v54 - v53;
  sub_23F2F5EB0(a1, v41);
  v18 = v54;
  v19 = v53;
  if (v41[0] <= (v54 - v53))
  {
    if (v41[0] < (v54 - v53))
    {
      v18 = &v53[v41[0]];
      v54 = &v53[v41[0]];
    }
  }

  else
  {
    sub_23EF76C28(&v53, v41[0] - (v54 - v53));
    v19 = v53;
    v18 = v54;
  }

  v20 = v18 - v19;
  if (v18 != v19)
  {
    do
    {
      sub_23F2F4C14(a1, v19++);
      --v20;
    }

    while (v20);
  }

  LODWORD(v41[0]) = 0;
  sub_23F2F5830(a1, v41);
  HIDWORD(v56) = v41[0];
  v41[0] = v58 - v57;
  sub_23F2F5EB0(a1, v41);
  v21 = v58;
  v22 = v57;
  if (v41[0] <= (v58 - v57))
  {
    if (v41[0] < (v58 - v57))
    {
      v21 = &v57[v41[0]];
      v58 = &v57[v41[0]];
    }
  }

  else
  {
    sub_23EF76C28(&v57, v41[0] - (v58 - v57));
    v22 = v57;
    v21 = v58;
  }

  v23 = v21 - v22;
  if (v21 != v22)
  {
    do
    {
      sub_23F2F4C14(a1, v22++);
      --v23;
    }

    while (v23);
  }

  v41[0] = 0xAAAAAAAAAAAAAAABLL * ((*&v60[3] - *&v60[1]) >> 2);
  sub_23F2F5EB0(a1, v41);
  v24 = *&v60[3];
  v25 = *&v60[1];
  v26 = 0xAAAAAAAAAAAAAAABLL * ((*&v60[3] - *&v60[1]) >> 2);
  if (v41[0] <= v26)
  {
    if (v41[0] < v26)
    {
      v24 = *&v60[1] + 12 * v41[0];
      *&v60[3] = v24;
    }
  }

  else
  {
    sub_23EF76F50(&v60[1], v41[0] - v26);
    v25 = *&v60[1];
    v24 = *&v60[3];
  }

  if (v24 != v25)
  {
    do
    {
      sub_23F2F5830(a1, v25);
      v27 = v25 + 1;
      sub_23F2F5830(a1, v27++);
      sub_23F2F5830(a1, v27);
      v25 = v27 + 1;
    }

    while (v25 != v24);
  }

  v41[0] = (*&v60[11] - *&v60[9]) >> 3;
  sub_23F2F5EB0(a1, v41);
  v28 = *&v60[11];
  v29 = *&v60[9];
  v30 = (*&v60[11] - *&v60[9]) >> 3;
  if (v41[0] <= v30)
  {
    if (v41[0] < v30)
    {
      v28 = *&v60[9] + 8 * v41[0];
      *&v60[11] = v28;
    }
  }

  else
  {
    sub_23EF772DC(&v60[9], v41[0] - v30);
    v29 = *&v60[9];
    v28 = *&v60[11];
  }

  if (v28 != v29)
  {
    do
    {
      sub_23F2F5830(a1, v29);
      v31 = v29 + 1;
      sub_23F2F5830(a1, v31);
      v29 = v31 + 1;
    }

    while (v29 != v28);
  }

  v41[0] = (*&v60[19] - *&v60[17]) >> 3;
  sub_23F2F5EB0(a1, v41);
  v32 = *&v60[19];
  v33 = *&v60[17];
  v34 = (*&v60[19] - *&v60[17]) >> 3;
  if (v41[0] <= v34)
  {
    if (v41[0] < v34)
    {
      v32 = *&v60[17] + 8 * v41[0];
      *&v60[19] = v32;
    }
  }

  else
  {
    sub_23EF77600(&v60[17], v41[0] - v34);
    v33 = *&v60[17];
    v32 = *&v60[19];
  }

  if (v32 != v33)
  {
    do
    {
      sub_23F2F6564(a1, v33);
      v35 = v33 + 1;
      sub_23F2F6564(a1, v35);
      v33 = v35 + 1;
    }

    while (v33 != v32);
  }

  v41[0] = 0xAAAAAAAAAAAAAAABLL * ((*&v60[27] - *&v60[25]) >> 2);
  sub_23F2F5EB0(a1, v41);
  v36 = *&v60[27];
  v37 = *&v60[25];
  v38 = 0xAAAAAAAAAAAAAAABLL * ((*&v60[27] - *&v60[25]) >> 2);
  if (v41[0] <= v38)
  {
    if (v41[0] < v38)
    {
      v36 = *&v60[25] + 12 * v41[0];
      *&v60[27] = v36;
    }
  }

  else
  {
    sub_23EF76F50(&v60[25], v41[0] - v38);
    v37 = *&v60[25];
    v36 = *&v60[27];
  }

  if (v36 != v37)
  {
    do
    {
      sub_23F2F5830(a1, v37);
      v39 = v37 + 1;
      sub_23F2F5830(a1, v39++);
      sub_23F2F5830(a1, v39);
      v37 = v39 + 1;
    }

    while (v37 != v36);
  }

  if (a3 >= 2)
  {
    v65 = 0;
    sub_23F2F4C14(a1, &v65);
    if (v65)
    {
      if ((v64 & 1) == 0)
      {
        v61 = 0;
        v62 = 0;
        v63 = 0;
        v64 = 1;
      }

      LODWORD(v41[0]) = 1;
      sub_23F2F5830(a1, v41);
      sub_23F2F6564(a1, &v61);
      sub_23F2F6564(a1, &v61 + 1);
      sub_23F2F6564(a1, &v62);
      sub_23F2F6564(a1, &v62 + 1);
      sub_23F2F6564(a1, &v63);
      sub_23F2F6564(a1, &v63 + 1);
    }

    else if (v64)
    {
      v64 = 0;
    }
  }

  sub_23EF77A1C(v41, &v42);
  sub_23EF77B68(a2, v41);
  sub_23EF4FC00(v41);
  return sub_23EF782AC(&v42);
}

void sub_23EF7B790(uint64_t a1, uint64_t a2, unsigned int a3)
{
  __p[0] = (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 2));
  sub_23F2F5EB0(a1, __p);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a2) >> 2);
  if (__p[0] <= v8)
  {
    if (__p[0] < v8)
    {
      v7 = &v6[3 * __p[0]];
      *(a2 + 8) = v7;
    }
  }

  else
  {
    sub_23EF768B8(a2, __p[0] - v8);
    v6 = *a2;
    v7 = *(a2 + 8);
  }

  for (; v6 != v7; v6 += 3)
  {
    sub_23F2F6564(a1, v6);
    sub_23F2F6564(a1, v6 + 1);
    sub_23F2F6564(a1, v6 + 2);
  }

  LODWORD(__p[0]) = 0;
  sub_23F2F5830(a1, __p);
  *(a2 + 32) = __p[0];
  __p[0] = (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 2));
  sub_23F2F5EB0(a1, __p);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = 0xAAAAAAAAAAAAAAABLL * (v10 - v9);
  if (__p[0] <= v11)
  {
    if (__p[0] < v11)
    {
      v10 = &v9[3 * __p[0]];
      *(a2 + 48) = v10;
    }
  }

  else
  {
    sub_23EF768B8(a2 + 40, __p[0] - v11);
    v9 = *(a2 + 40);
    v10 = *(a2 + 48);
  }

  for (; v9 != v10; v9 += 3)
  {
    sub_23F2F6564(a1, v9);
    sub_23F2F6564(a1, v9 + 1);
    sub_23F2F6564(a1, v9 + 2);
  }

  LODWORD(__p[0]) = 0;
  sub_23F2F5830(a1, __p);
  *(a2 + 72) = __p[0];
  __p[0] = (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 88) - *(a2 + 80)) >> 2));
  sub_23F2F5EB0(a1, __p);
  v12 = *(a2 + 80);
  v13 = *(a2 + 88);
  v14 = 0xAAAAAAAAAAAAAAABLL * (v13 - v12);
  if (__p[0] <= v14)
  {
    if (__p[0] < v14)
    {
      v13 = &v12[3 * __p[0]];
      *(a2 + 88) = v13;
    }
  }

  else
  {
    sub_23EF768B8(a2 + 80, __p[0] - v14);
    v12 = *(a2 + 80);
    v13 = *(a2 + 88);
  }

  for (; v12 != v13; v12 += 3)
  {
    sub_23F2F6564(a1, v12);
    sub_23F2F6564(a1, v12 + 1);
    sub_23F2F6564(a1, v12 + 2);
  }

  LODWORD(__p[0]) = 0;
  sub_23F2F5830(a1, __p);
  *(a2 + 112) = __p[0];
  __p[0] = (*(a2 + 128) - *(a2 + 120));
  sub_23F2F5EB0(a1, __p);
  v16 = *(a2 + 120);
  v15 = *(a2 + 128);
  if (__p[0] <= (v15 - v16))
  {
    if (__p[0] < (v15 - v16))
    {
      v15 = &v16[__p[0]];
      *(a2 + 128) = &v16[__p[0]];
    }
  }

  else
  {
    sub_23EF76C28(a2 + 120, __p[0] - (v15 - v16));
    v16 = *(a2 + 120);
    v15 = *(a2 + 128);
  }

  v17 = v15 - v16;
  if (v15 != v16)
  {
    do
    {
      sub_23F2F4C14(a1, v16++);
      --v17;
    }

    while (v17);
  }

  LODWORD(__p[0]) = 0;
  sub_23F2F5830(a1, __p);
  *(a2 + 152) = __p[0];
  __p[0] = (*(a2 + 168) - *(a2 + 160));
  sub_23F2F5EB0(a1, __p);
  v19 = *(a2 + 160);
  v18 = *(a2 + 168);
  if (__p[0] <= (v18 - v19))
  {
    if (__p[0] < (v18 - v19))
    {
      v18 = &v19[__p[0]];
      *(a2 + 168) = &v19[__p[0]];
    }
  }

  else
  {
    sub_23EF76C28(a2 + 160, __p[0] - (v18 - v19));
    v19 = *(a2 + 160);
    v18 = *(a2 + 168);
  }

  v20 = v18 - v19;
  if (v18 != v19)
  {
    do
    {
      sub_23F2F4C14(a1, v19++);
      --v20;
    }

    while (v20);
  }

  __p[0] = (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 200) - *(a2 + 192)) >> 2));
  sub_23F2F5EB0(a1, __p);
  v21 = *(a2 + 192);
  v22 = *(a2 + 200);
  v23 = 0xAAAAAAAAAAAAAAABLL * (v22 - v21);
  if (__p[0] <= v23)
  {
    if (__p[0] < v23)
    {
      v22 = &v21[3 * __p[0]];
      *(a2 + 200) = v22;
    }
  }

  else
  {
    sub_23EF76F50(a2 + 192, __p[0] - v23);
    v21 = *(a2 + 192);
    v22 = *(a2 + 200);
  }

  for (; v21 != v22; v21 += 3)
  {
    sub_23F2F5830(a1, v21);
    sub_23F2F5830(a1, v21 + 1);
    sub_23F2F5830(a1, v21 + 2);
  }

  __p[0] = ((*(a2 + 232) - *(a2 + 224)) >> 3);
  sub_23F2F5EB0(a1, __p);
  v24 = *(a2 + 224);
  v25 = *(a2 + 232);
  v26 = (v25 - v24) >> 3;
  if (__p[0] <= v26)
  {
    if (__p[0] < v26)
    {
      v25 = &v24[8 * __p[0]];
      *(a2 + 232) = v25;
    }
  }

  else
  {
    sub_23EF772DC(a2 + 224, __p[0] - v26);
    v24 = *(a2 + 224);
    v25 = *(a2 + 232);
  }

  for (; v24 != v25; v24 += 8)
  {
    sub_23F2F5830(a1, v24);
    sub_23F2F5830(a1, v24 + 1);
  }

  __p[0] = ((*(a2 + 264) - *(a2 + 256)) >> 3);
  sub_23F2F5EB0(a1, __p);
  v27 = *(a2 + 256);
  v28 = *(a2 + 264);
  v29 = (v28 - v27) >> 3;
  if (__p[0] <= v29)
  {
    if (__p[0] < v29)
    {
      v28 = &v27[8 * __p[0]];
      *(a2 + 264) = v28;
    }
  }

  else
  {
    sub_23EF77600(a2 + 256, __p[0] - v29);
    v27 = *(a2 + 256);
    v28 = *(a2 + 264);
  }

  for (; v27 != v28; v27 += 8)
  {
    sub_23F2F6564(a1, v27);
    sub_23F2F6564(a1, v27 + 1);
  }

  __p[0] = (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 296) - *(a2 + 288)) >> 2));
  sub_23F2F5EB0(a1, __p);
  v30 = *(a2 + 288);
  v31 = *(a2 + 296);
  v32 = 0xAAAAAAAAAAAAAAABLL * (v31 - v30);
  if (__p[0] <= v32)
  {
    if (__p[0] < v32)
    {
      v31 = &v30[3 * __p[0]];
      *(a2 + 296) = v31;
    }
  }

  else
  {
    sub_23EF76F50(a2 + 288, __p[0] - v32);
    v30 = *(a2 + 288);
    v31 = *(a2 + 296);
  }

  for (; v30 != v31; v30 += 3)
  {
    sub_23F2F5830(a1, v30);
    sub_23F2F5830(a1, v30 + 1);
    sub_23F2F5830(a1, v30 + 2);
  }

  if (a3 >= 2)
  {
    v40 = 0;
    sub_23F2F4C14(a1, &v40);
    if (v40)
    {
      if ((*(a2 + 344) & 1) == 0)
      {
        *(a2 + 320) = 0;
        *(a2 + 328) = 0;
        *(a2 + 336) = 0;
        *(a2 + 344) = 1;
      }

      LODWORD(__p[0]) = 2;
      sub_23F2F5830(a1, __p);
      if (LODWORD(__p[0]) > 1)
      {
        sub_23F2F6564(a1, (a2 + 320));
        sub_23F2F6564(a1, (a2 + 324));
        sub_23F2F6564(a1, (a2 + 328));
        sub_23F2F6564(a1, (a2 + 332));
        sub_23F2F6564(a1, (a2 + 336));
        sub_23F2F6564(a1, (a2 + 340));
        while (1)
        {
          if ((*(a1 + 131) & 1) != 0 || (*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) != 0)
          {
            goto LABEL_77;
          }

          sub_23F2F7390(a1, __p);
          if (SHIBYTE(__p[2]) < 0)
          {
            if (__p[1] == 1 && *(a1 + 72) == *__p[0])
            {
LABEL_70:
              v33 = 0;
              if (SHIBYTE(__p[2]) < 0)
              {
                goto LABEL_73;
              }

              goto LABEL_61;
            }
          }

          else if (SHIBYTE(__p[2]) == 1 && *(a1 + 72) == LOBYTE(__p[0]))
          {
            goto LABEL_70;
          }

          v33 = 1;
          if (SHIBYTE(__p[2]) < 0)
          {
LABEL_73:
            operator delete(__p[0]);
          }

LABEL_61:
          if ((v33 & 1) == 0)
          {
            goto LABEL_77;
          }
        }
      }

      memset(__p, 0, 24);
      sub_23F2F6564(a1, __p);
      sub_23F2F6564(a1, __p + 1);
      sub_23F2F6564(a1, &__p[1]);
      sub_23F2F6564(a1, (__p | 0xC));
      sub_23F2F6564(a1, &__p[2]);
      sub_23F2F6564(a1, &__p[2] + 1);
      v34 = *__p;
      v35 = *(&__p[1] + 4);
      HIDWORD(v34) = HIDWORD(__p[1]);
      *(a2 + 320) = v34;
      LODWORD(v34) = vdup_lane_s32(v35, 1).u32[0];
      DWORD1(v34) = HIDWORD(__p[2]);
      *(a2 + 336) = v34;
    }

    else if (*(a2 + 344))
    {
      *(a2 + 344) = 0;
    }

LABEL_77:
    if (a3 >= 4)
    {
      LODWORD(__p[0]) = 0;
      sub_23F2F5830(a1, __p);
      *(a2 + 348) = __p[0];
      __p[0] = ((*(a2 + 360) - *(a2 + 352)) >> 2);
      sub_23F2F5EB0(a1, __p);
      v37 = *(a2 + 352);
      v36 = *(a2 + 360);
      v38 = (v36 - v37) >> 2;
      if (__p[0] <= v38)
      {
        if (__p[0] < v38)
        {
          v36 = &v37[4 * __p[0]];
          *(a2 + 360) = v36;
        }
      }

      else
      {
        sub_23EF77888(a2 + 352, __p[0] - v38);
        v37 = *(a2 + 352);
        v36 = *(a2 + 360);
      }

      v39 = v36 - v37;
      if (v36 != v37)
      {
        do
        {
          sub_23F2F6564(a1, v37);
          v37 += 4;
          v39 -= 4;
        }

        while (v39);
      }
    }
  }
}

void sub_23EF7BF7C(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 3)
  {
    goto LABEL_77;
  }

  v8 = *(a1[3] + v2);
  a1[6] = v2 + 4;
  if (v8 > 2)
  {
    sub_23F294FCC(a1);
    sub_23EF7CA5C(a1, a2);
    v9 = a1[6];
    v10 = a1[7];
    v4 = v10 >= v9;
    v11 = v10 - v9;
    if (!v4)
    {
      v11 = 0;
    }

    if (v11 > 3)
    {
      v12 = *(a1[3] + v9);
      a1[6] = v9 + 4;
      *(a2 + 32) = v12;
      sub_23EF7CA5C(a1, (a2 + 40));
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
        *(a2 + 72) = v16;
        sub_23EF7CA5C(a1, (a2 + 80));
        v17 = a1[6];
        v18 = a1[7];
        v4 = v18 >= v17;
        v19 = v18 - v17;
        if (!v4)
        {
          v19 = 0;
        }

        if (v19 > 3)
        {
          v20 = *(a1[3] + v17);
          a1[6] = v17 + 4;
          *(a2 + 112) = v20;
          sub_23EF7C930(a1, (a2 + 120));
          v21 = a1[6];
          v22 = a1[7];
          v4 = v22 >= v21;
          v23 = v22 - v21;
          if (!v4)
          {
            v23 = 0;
          }

          if (v23 > 3)
          {
            v24 = *(a1[3] + v21);
            a1[6] = v21 + 4;
            *(a2 + 152) = v24;
            v25 = sub_23EF7C930(a1, (a2 + 160));
            sub_23EF7CBB0(v25, (a2 + 192));
            sub_23EF7CD04(a1, (a2 + 224));
            sub_23EF7CE3C(a1, (a2 + 256));
            sub_23EF7CBB0(a1, (a2 + 288));
            v27 = a1[6];
            v26 = a1[7];
            if (v26 > v27)
            {
              v28 = *(a1[3] + v27);
              v29 = v27 + 1;
              a1[6] = v29;
              if (!v28)
              {
                if (*(a2 + 344))
                {
                  *(a2 + 344) = 0;
                }

                if (v8 == 3)
                {
                  goto LABEL_73;
                }

                goto LABEL_59;
              }

              v30 = (a2 + 320);
              if ((*(a2 + 344) & 1) == 0)
              {
                *v30 = 0;
                *(a2 + 328) = 0;
                *(a2 + 336) = 0;
                *(a2 + 344) = 1;
                v29 = a1[6];
                v26 = a1[7];
              }

              v4 = v26 >= v29;
              v31 = v26 - v29;
              if (!v4)
              {
                v31 = 0;
              }

              if (v31 > 3)
              {
                v32 = *(a1[3] + v29);
                a1[6] = v29 + 4;
                if (v32 <= 1)
                {
                  memset(v85, 0, 24);
                  sub_23EF7CF74(a1, v85);
                  v66 = v85[0];
                  v67 = *(v85 + 12);
                  HIDWORD(v66) = HIDWORD(v85[0]);
                  *(a2 + 320) = v66;
                  LODWORD(v66) = vdup_lane_s32(v67, 1).u32[0];
                  DWORD1(v66) = DWORD1(v85[1]);
                  *(a2 + 336) = v66;
                  if (v8 == 3)
                  {
LABEL_73:
                    v81 = a1[12];
                    v82 = a1[9];
                    a1[6] = *(v81 - 8) + *(v82 - 8) + 8;
                    a1[9] = v82 - 8;
                    a1[12] = v81 - 8;
                    return;
                  }
                }

                else
                {
                  sub_23F294FCC(a1);
                  v33 = a1[6];
                  v34 = a1[7];
                  v4 = v34 >= v33;
                  v35 = v34 - v33;
                  if (!v4)
                  {
                    v35 = 0;
                  }

                  if (v35 <= 0xB)
                  {
                    goto LABEL_89;
                  }

                  v36 = (a1[3] + v33);
                  v37 = *v36;
                  *(a2 + 328) = *(v36 + 2);
                  *v30 = v37;
                  v38 = a1[7];
                  v39 = a1[6] + 12;
                  a1[6] = v39;
                  v4 = v38 >= v39;
                  v40 = v38 - v39;
                  if (!v4)
                  {
                    v40 = 0;
                  }

                  if (v40 <= 0xB)
                  {
LABEL_89:
                    exception = __cxa_allocate_exception(0x10uLL);
                    sub_23EF35CC0(exception, "Not enough data to read span");
                    goto LABEL_90;
                  }

                  v41 = a1[3] + v39;
                  v42 = *v41;
                  *(a2 + 340) = *(v41 + 8);
                  *(a2 + 332) = v42;
                  a1[6] += 12;
                  v43 = a1[12];
                  v44 = a1[9];
                  a1[6] = *(v43 - 8) + *(v44 - 8) + 8;
                  a1[9] = v44 - 8;
                  a1[12] = v43 - 8;
                  if (v8 == 3)
                  {
                    goto LABEL_73;
                  }
                }

LABEL_59:
                v69 = a1[6];
                v68 = a1[7];
                v70 = v68 - v69;
                if (v68 < v69)
                {
                  v70 = 0;
                }

                if (v70 <= 3)
                {
                  goto LABEL_85;
                }

                v71 = a1[3];
                v72 = *(v71 + v69);
                a1[6] = v69 + 4;
                *(a2 + 348) = v72;
                v73 = v68 - (v69 + 4);
                if (v68 < v69 + 4)
                {
                  v73 = 0;
                }

                if (v73 <= 7)
                {
LABEL_85:
                  exception = __cxa_allocate_exception(0x10uLL);
                  sub_23EF35CC0(exception, "Not enough data to read");
                }

                else
                {
                  v74 = *(v71 + v69 + 4);
                  v75 = v69 + 12;
                  a1[6] = v75;
                  v76 = *(a2 + 352);
                  v77 = *(a2 + 360);
                  v78 = (v77 - v76) >> 2;
                  if (v74 <= v78)
                  {
                    if (v74 < v78)
                    {
                      v77 = &v76[4 * v74];
                      *(a2 + 360) = v77;
                    }
                  }

                  else
                  {
                    sub_23EF77888(a2 + 352, v74 - v78);
                    v76 = *(a2 + 352);
                    v77 = *(a2 + 360);
                    v75 = a1[6];
                    v68 = a1[7];
                  }

                  v79 = v77 - v76;
                  v4 = v68 >= v75;
                  v80 = v68 - v75;
                  if (!v4)
                  {
                    v80 = 0;
                  }

                  if (v80 >= v79)
                  {
                    memcpy(v76, (a1[3] + v75), v77 - v76);
                    a1[6] += v79;
                    goto LABEL_73;
                  }

                  exception = __cxa_allocate_exception(0x10uLL);
                  sub_23EF35CC0(exception, "Not enough data to read span");
                }

LABEL_90:
                __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
              }
            }
          }
        }
      }
    }

LABEL_77:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read");
    goto LABEL_90;
  }

  v86 = 0u;
  v88 = 0;
  v87 = 0;
  memset(v89, 0, sizeof(v89));
  v90 = 0;
  memset(v91, 0, sizeof(v91));
  v92 = 0;
  memset(v93, 0, sizeof(v93));
  v94 = 0;
  memset(v95, 0, 24);
  v96 = 0;
  v97[0] = 0;
  v98 = 0;
  memset(&v95[3] + 4, 0, 28);
  memset(&v95[7] + 4, 0, 28);
  memset(&v95[11] + 4, 0, 28);
  memset(&v95[15] + 4, 0, 28);
  sub_23EF7CA5C(a1, &v86);
  v45 = a1[6];
  v46 = a1[7];
  v4 = v46 >= v45;
  v47 = v46 - v45;
  if (!v4)
  {
    v47 = 0;
  }

  if (v47 <= 3)
  {
    goto LABEL_91;
  }

  v48 = *(a1[3] + v45);
  a1[6] = v45 + 4;
  HIDWORD(v88) = v48;
  sub_23EF7CA5C(a1, v89);
  v49 = a1[6];
  v50 = a1[7];
  v4 = v50 >= v49;
  v51 = v50 - v49;
  if (!v4)
  {
    v51 = 0;
  }

  if (v51 <= 3)
  {
    goto LABEL_91;
  }

  v52 = *(a1[3] + v49);
  a1[6] = v49 + 4;
  HIDWORD(v90) = v52;
  sub_23EF7CA5C(a1, v91);
  v53 = a1[6];
  v54 = a1[7];
  v4 = v54 >= v53;
  v55 = v54 - v53;
  if (!v4)
  {
    v55 = 0;
  }

  if (v55 <= 3)
  {
    goto LABEL_91;
  }

  v56 = *(a1[3] + v53);
  a1[6] = v53 + 4;
  HIDWORD(v92) = v56;
  sub_23EF7C930(a1, v93);
  v57 = a1[6];
  v58 = a1[7];
  v4 = v58 >= v57;
  v59 = v58 - v57;
  if (!v4)
  {
    v59 = 0;
  }

  if (v59 <= 3)
  {
    goto LABEL_91;
  }

  v60 = *(a1[3] + v57);
  a1[6] = v57 + 4;
  HIDWORD(v94) = v60;
  sub_23EF7C930(a1, v95);
  sub_23EF7CBB0(a1, &v95[4]);
  sub_23EF7CD04(a1, &v95[8]);
  sub_23EF7CE3C(a1, &v95[12]);
  sub_23EF7CBB0(a1, &v95[16]);
  if (v8 == 2)
  {
    v61 = a1[6];
    v62 = a1[7];
    if (v62 > v61)
    {
      v63 = *(a1[3] + v61);
      v64 = v61 + 1;
      a1[6] = v61 + 1;
      if (!v63)
      {
        if (v98)
        {
          v98 = 0;
        }

        goto LABEL_76;
      }

      if ((v98 & 1) == 0)
      {
        memset(v97, 0, sizeof(v97));
        v98 = 1;
      }

      v4 = v62 >= v64;
      v65 = v62 - v64;
      if (!v4)
      {
        v65 = 0;
      }

      if (v65 > 3)
      {
        a1[6] = v61 + 5;
        sub_23EF7CF74(a1, v97);
        goto LABEL_76;
      }
    }

LABEL_91:
    v84 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v84, "Not enough data to read");
    v84->__vftable = (MEMORY[0x277D828E8] + 16);
    __cxa_throw(v84, off_278C74498, MEMORY[0x277D825F8]);
  }

LABEL_76:
  sub_23EF77A1C(v85, &v86);
  sub_23EF77B68(a2, v85);
  sub_23EF4FC00(v85);
  sub_23EF782AC(&v86);
}

void sub_23EF7C7E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  __cxa_free_exception(v57);
  sub_23EF782AC(&a57);
  _Unwind_Resume(a1);
}

void *sub_23EF7C930(void *a1, void *a2)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = v3 - v2;
  if (v3 < v2)
  {
    v4 = 0;
  }

  if (v4 <= 7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read");
    goto LABEL_15;
  }

  v6 = *(a1[3] + v2);
  v7 = v2 + 8;
  a1[6] = v2 + 8;
  v8 = *a2;
  v9 = a2[1];
  v10 = &v9[-*a2];
  v11 = v6 >= v10;
  v12 = v6 - v10;
  if (v12 != 0 && v11)
  {
    sub_23EF76C28(a2, v12);
    v8 = *a2;
    v9 = a2[1];
    v7 = a1[6];
    v3 = a1[7];
  }

  else if (!v11)
  {
    v9 = &v8[v6];
    a2[1] = &v8[v6];
  }

  v14 = v9 - v8;
  v15 = v3 - v7;
  if (v3 < v7)
  {
    v15 = 0;
  }

  if (v15 < v14)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read span");
LABEL_15:
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  memcpy(v8, (a1[3] + v7), v9 - v8);
  a1[6] += v14;
  return a1;
}

void sub_23EF7CA5C(void *a1, uint64_t *a2)
{
  v2 = a1[6];
  v3 = a1[7];
  v11 = v3 >= v2;
  v4 = v3 - v2;
  if (!v11)
  {
    v4 = 0;
  }

  if (v4 <= 7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read");
    goto LABEL_17;
  }

  v6 = *a2;
  v7 = a2[1];
  v8 = v7 - *a2;
  v9 = *(a1[3] + v2);
  a1[6] = v2 + 8;
  v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 2);
  v11 = v9 >= v10;
  v12 = v9 - v10;
  if (v12 != 0 && v11)
  {
    sub_23EF768B8(a2, v12);
    v6 = *a2;
    v7 = a2[1];
  }

  else if (!v11)
  {
    v7 = v6 + 12 * v9;
    a2[1] = v7;
  }

  if (v7 != v6)
  {
    v14 = a1[6];
    while (1)
    {
      v15 = a1[7];
      v11 = v15 >= v14;
      v16 = v15 - v14;
      if (!v11)
      {
        v16 = 0;
      }

      if (v16 <= 0xB)
      {
        break;
      }

      v17 = a1[3] + v14;
      v18 = *v17;
      *(v6 + 8) = *(v17 + 8);
      *v6 = v18;
      v6 += 12;
      v14 = a1[6] + 12;
      a1[6] = v14;
      if (v6 == v7)
      {
        return;
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read span");
LABEL_17:
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }
}

void sub_23EF7CBB0(void *a1, uint64_t *a2)
{
  v2 = a1[6];
  v3 = a1[7];
  v11 = v3 >= v2;
  v4 = v3 - v2;
  if (!v11)
  {
    v4 = 0;
  }

  if (v4 <= 7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read");
    goto LABEL_17;
  }

  v6 = *a2;
  v7 = a2[1];
  v8 = v7 - *a2;
  v9 = *(a1[3] + v2);
  a1[6] = v2 + 8;
  v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 2);
  v11 = v9 >= v10;
  v12 = v9 - v10;
  if (v12 != 0 && v11)
  {
    sub_23EF76F50(a2, v12);
    v6 = *a2;
    v7 = a2[1];
  }

  else if (!v11)
  {
    v7 = v6 + 12 * v9;
    a2[1] = v7;
  }

  if (v7 != v6)
  {
    v14 = a1[6];
    while (1)
    {
      v15 = a1[7];
      v11 = v15 >= v14;
      v16 = v15 - v14;
      if (!v11)
      {
        v16 = 0;
      }

      if (v16 <= 0xB)
      {
        break;
      }

      v17 = a1[3] + v14;
      v18 = *v17;
      *(v6 + 8) = *(v17 + 8);
      *v6 = v18;
      v6 += 12;
      v14 = a1[6] + 12;
      a1[6] = v14;
      if (v6 == v7)
      {
        return;
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read span");
LABEL_17:
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }
}

void sub_23EF7CD04(void *a1, void *a2)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read");
    goto LABEL_16;
  }

  v7 = *a2;
  v8 = a2[1];
  v9 = v8 - *a2;
  v10 = *(a1[3] + v2);
  a1[6] = v2 + 8;
  if (v10 <= v9 >> 3)
  {
    if (v10 < v9 >> 3)
    {
      v8 = &v7[v10];
      a2[1] = v8;
    }
  }

  else
  {
    sub_23EF772DC(a2, v10 - (v9 >> 3));
    v7 = *a2;
    v8 = a2[1];
  }

  if (v8 != v7)
  {
    v12 = a1[6];
    while (1)
    {
      v13 = a1[7];
      v4 = v13 >= v12;
      v14 = v13 - v12;
      if (!v4)
      {
        v14 = 0;
      }

      if (v14 <= 7)
      {
        break;
      }

      *v7++ = *(a1[3] + v12);
      v12 = a1[6] + 8;
      a1[6] = v12;
      if (v7 == v8)
      {
        return;
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read span");
LABEL_16:
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }
}