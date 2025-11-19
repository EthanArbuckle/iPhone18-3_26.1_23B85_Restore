void sub_23F07F890(uint64_t *a1, uint64_t a2)
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
    (off_28517D1C0[v9])(&v12, v2);
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

void sub_23F07FA50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_23F07FA9C(uint64_t a1, const char *a2)
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

void sub_23F07FC38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3522C(va);
  _Unwind_Resume(a1);
}

void sub_23F07FC4C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = a1;
      v5 = a2;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      a1 = v4;
      a2 = v5;
    }

    v2 = *(a1 + 8);
    v6 = *(a1 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = a1;
        v9 = a2;
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
        a2 = v9;
        if (*(v8 + 53) == 1)
        {
          goto LABEL_8;
        }

LABEL_12:
        *a2 = 0;
        return;
      }
    }
  }

  if (*(a1 + 53) != 1)
  {
    goto LABEL_12;
  }

LABEL_8:
  v7 = *(*v2 + 96);

  v7(v2, 0);
}

void sub_23F07FD98(uint64_t a1, uint64_t a2)
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

  sub_23F07D404(&v4, v3);
}

void sub_23F07FEC4(int a1, CFTypeRef cf, uint64_t a3)
{
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  if (cf)
  {
    v3 = cf;
    CFRetain(cf);
    cf = v3;
  }

  sub_23F07FFF0(&v4, cf);
}

void sub_23F0801F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_23EF3AE8C(v15);
  _Unwind_Resume(a1);
}

void sub_23F080274(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F0802AC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_23F0802D0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIP18CGImageDestinationEC1ES4_EUlS4_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIP18CGImageDestinationEC1ES4_EUlS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIP18CGImageDestinationEC1ES4_EUlS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIP18CGImageDestinationEC1ES4_EUlS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_23F0805A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x245CACD00](v2, 0x10B2C40EED050F3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F0805D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F0805EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_23EF41D10(&a10);
    _Unwind_Resume(a1);
  }

  sub_23EF41D10(&a10);
  _Unwind_Resume(a1);
}

void sub_23F080638(uint64_t a1, int a2, int a3)
{
  v3 = a3;
  v4 = a2;
  v6 = 0;
  v7[0] = v5;
  v7[1] = "Requested to load ";
  v7[2] = v5;
  v7[3] = "Requested to load ";
  v7[4] = "Requested to load ";
  v8 = v7;
  sub_23F081890(&v8);
  sub_23F07DF44();
}

void sub_23F080884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F08092C(int a1, int a2)
{
  v2 = a2;
  v3 = a1;
  sub_23F080A84("Desired image format is ");
}

void sub_23F080A58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F080A84(uint64_t a1)
{
  v2 = 0;
  v3[0] = v1;
  v3[1] = a1;
  v3[2] = v1;
  v3[3] = a1;
  v3[4] = a1;
  v4 = v3;
  sub_23F082504(&v4);
  sub_23F07F300();
}

void sub_23F080BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F080C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F080C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F080C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F080C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F080C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F080C74(int a1, int a2)
{
  v2 = a2;
  v3 = a1;
  sub_23F080DCC("Requested to load format ");
}

void sub_23F080DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F080DCC(const char *a1)
{
  v6 = -1;
  v2 = strlen(a1);
  if (v2 < 0x7FFFFFFFFFFFFFF8)
  {
    v3 = v2;
    if (v2 < 0x17)
    {
      v5 = v2;
      if (v2)
      {
        memcpy(&__dst, a1, v2);
      }

      *(&__dst + v3) = 0;
      v6 = 1;
      sub_23F07F300();
    }

    operator new();
  }

  sub_23EF2F8F4();
}

void sub_23F080FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F080FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F080FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F080FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F081010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F081024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F081038(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50[19] = *MEMORY[0x277D85DE8];
  if (a2 == 255)
  {
    if ((a1 & 0xFFFFFFFB) != 0)
    {
      sub_23F080638(v38, a1, 4);
    }

    v5 = 4;
    goto LABEL_16;
  }

  if (a2 == 137)
  {
    if (a1 != 3 && a1)
    {
      sub_23F080638(v38, a1, 3);
    }

    v5 = 3;
LABEL_16:
    *a3 = v5;
    *(a3 + 120) = 1;
    goto LABEL_57;
  }

  if ((a2 & 0xFFFFFFFB) == 0x49)
  {
    if (a1 != 5 && a1)
    {
      sub_23F080638(v38, a1, 5);
    }

    v5 = 5;
    goto LABEL_16;
  }

  sub_23EF303E4(v38);
  *(&v39 + *(v39 - 3) + 8) = *(&v39 + *(v39 - 3) + 8) & 0xFFFFFFB5 | 8;
  MEMORY[0x245CAC900](&v39, a2);
  if ((v49 & 0x10) != 0)
  {
    v7 = v48;
    if (v48 < v45)
    {
      v48 = v45;
      v7 = v45;
    }

    v8 = v44;
    v6 = v7 - v44;
    if (v7 - v44 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_59;
    }
  }

  else
  {
    if ((v49 & 8) == 0)
    {
      v6 = 0;
      v17 = 0;
      goto LABEL_26;
    }

    v8 = v42;
    v6 = *(&v43 + 1) - v42;
    if ((*(&v43 + 1) - v42) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_59:
      sub_23EF2F8F4();
    }
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  v17 = v6;
  if (v6)
  {
    memmove(v16, v8, v6);
  }

LABEL_26:
  *(v16 + v6) = 0;
  v38[0] = *MEMORY[0x277D82818];
  v9 = *(MEMORY[0x277D82818] + 72);
  *(v38 + *(v38[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v39 = v9;
  v40 = MEMORY[0x277D82878] + 16;
  if (v47 < 0)
  {
    operator delete(__p[1]);
  }

  v40 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v41);
  std::iostream::~basic_iostream();
  MEMORY[0x245CACBF0](v50);
  v38[0] = "Found file format of unsupported format signature byte '0x";
  v38[1] = 58;
  v10 = v17;
  v11 = v16;
  if ((v17 & 0x80u) != 0)
  {
    v11 = v16[0];
    v10 = v16[1];
  }

  v39 = v11;
  v40 = v10;
  v41.__locale_ = "'.";
  v42 = 2;
  sub_23EF45AA0(v38, &v43, 0, 0, &v18);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23EF34EA4(&v19, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
  }

  else
  {
    v19 = v18;
  }

  v20 = 1;
  LOBYTE(v21) = 0;
  v25 = 0;
  v26 = 1;
  sub_23F07DBB0(1u, &v19, &v27);
  *a3 = v27;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v37 == 1)
  {
    *(a3 + 40) = 0;
    v12 = v30;
    if (v30 == 1)
    {
      *(a3 + 16) = v28;
      *(a3 + 32) = v29;
      v29 = 0;
      v28 = 0uLL;
      *(a3 + 40) = 1;
      *(a3 + 48) = 0;
      v13 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v36 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      *(a3 + 48) = 0;
      v13 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v36 & 1) == 0)
      {
LABEL_36:
        *(a3 + 112) = 1;
        *(a3 + 120) = 0;
        if (!v12)
        {
          goto LABEL_43;
        }

LABEL_41:
        if (SHIBYTE(v29) < 0)
        {
          operator delete(v28);
        }

        goto LABEL_43;
      }
    }

    v14 = v33;
    *(v13 + 16) = v32;
    *v13 = v31;
    v31 = 0uLL;
    *(a3 + 72) = v14;
    *(a3 + 80) = v34;
    *(a3 + 96) = v35;
    v32 = 0;
    v34 = 0uLL;
    v35 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    *(a3 + 120) = 0;
    if (v12)
    {
      goto LABEL_41;
    }
  }

  else
  {
    *(a3 + 120) = 0;
  }

LABEL_43:
  if (v26 == 1)
  {
    if (v25 == 1)
    {
      if (v24 < 0)
      {
        operator delete(v23);
      }

      if (v22 < 0)
      {
        operator delete(v21);
      }
    }

    if (v20 == 1 && SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

LABEL_57:
  v15 = *MEMORY[0x277D85DE8];
}

void sub_23F08168C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F081708(std::error_category *a1)
{
  std::error_category::~error_category(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F081740(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

size_t sub_23F081890(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28517D390[v3])(&v6, v1);
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

_BYTE *sub_23F081994(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_23F081D94(a2, v3);
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

size_t sub_23F081A94(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28517D390[v3])(&v6, v1);
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

void sub_23F081B88(uint64_t *a1, uint64_t a2)
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
    (off_28517D390[v9])(&v12, v2);
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

void sub_23F081D48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_23F081D94(uint64_t a1, const char *a2)
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

void sub_23F081F30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3522C(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_23F081F54(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_23F082354(a2, v3);
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

size_t sub_23F082054(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28517D390[v3])(&v6, v1);
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

void sub_23F082148(uint64_t *a1, uint64_t a2)
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
    (off_28517D390[v9])(&v12, v2);
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

void sub_23F082308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_23F082354(uint64_t a1, const char *a2)
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

void sub_23F0824F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3522C(va);
  _Unwind_Resume(a1);
}

size_t sub_23F082504(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28517D390[v3])(&v6, v1);
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

void sub_23F0825FC(uint64_t *a1, uint64_t a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v19 + 7) = *(a2 + 15);
  v5 = *a2;
  v19[0] = *(a2 + 8);
  v4 = v19[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v14 = v5;
  *v15 = v4;
  *&v15[7] = *(v19 + 7);
  v16 = v6;
  memset(v19, 0, 15);
  v7 = *(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v18 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_28517D390[v10])(&v13, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_23EF42150(v3, &v14, 2uLL);
  *(v3 + 24) = 2;
  if (v18 < 0)
  {
    operator delete(__p);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
LABEL_11:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v14);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_23F0827C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F082818(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_23EF3AE74();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_23EF34E18();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23EF2F8F4();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23EF2F8F4();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_23F082A58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3522C(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_23F082A84(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_23F082E84(a2, v3);
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

size_t sub_23F082B84(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28517D390[v3])(&v6, v1);
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

void sub_23F082C78(uint64_t *a1, uint64_t a2)
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
    (off_28517D390[v9])(&v12, v2);
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

void sub_23F082E38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_23F082E84(uint64_t a1, const char *a2)
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

void sub_23F083020(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3522C(va);
  _Unwind_Resume(a1);
}

void sub_23F083034(void *a1, int a2)
{
  v10 = a2;
  if (!*(a1 + *(*a1 - 24) + 32))
  {
LABEL_10:
    cbks = xmmword_2851843A0;
    v7 = CGDataConsumerCreate(a1, &cbks);
    sub_23F19C73C(&v8, v7);
  }

  v2 = a1;
  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/ImageIO/src/ImageDestinationRef.cpp", 73, "file.good()", 0xBuLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1 || (v3 = qword_27E396178, v4 = unk_27E396180, qword_27E396178 == unk_27E396180))
    {
LABEL_9:
      qword_27E396190(*algn_27E396198, "file.good()", 11, &unk_23F3091D6, 0);
      a1 = v2;
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_27E396178;
    v4 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "file.good()", 11, &unk_23F3091D6, 0);
  }

  while (v3 != v4);
  if (byte_27E3961A0)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_23F0834F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_23F061EB0(v16 - 112);
  sub_23EF3AE8C(v16 - 88);
  _Unwind_Resume(a1);
}

_BYTE *sub_23F08354C(_BYTE *result, int a2)
{
  switch(a2)
  {
    case 5:
      sub_23F064058(&v2, @"public.tiff");
    case 4:
      sub_23F064058(&v2, @"public.jpeg");
    case 3:
      sub_23F064058(&v2, @"public.png");
  }

  *result = 0;
  result[16] = 0;
  return result;
}

void sub_23F08367C()
{
  v0[6] = 0;
  v1[0] = v0;
  v1[1] = "ImageDestinationRef does not (yet) support format ";
  v1[2] = v0;
  v1[3] = "ImageDestinationRef does not (yet) support format ";
  v1[4] = "ImageDestinationRef does not (yet) support format ";
  v2 = v1;
  sub_23F05AC94(&v2);
  sub_23F07DF44();
}

void sub_23F083988(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_23EF3AE8C(v15);
  _Unwind_Resume(a1);
}

void sub_23F083A08(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F083A40(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_23F083A64(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIPK7__CFURLEC1ES5_EUlS5_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIPK7__CFURLEC1ES5_EUlS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIPK7__CFURLEC1ES5_EUlS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIPK7__CFURLEC1ES5_EUlS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F083AC4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a4 <= 3)
  {
    if ((a4 - 1) < 2)
    {
      v7 = *(a1 + 24);
      if (v7)
      {
        v8 = a5;
        if (v7 == a1)
        {
          v26 = v25;
          (*(*v7 + 24))(v7, v25);
        }

        else
        {
          v26 = (*(*v7 + 16))(*(a1 + 24));
        }

        a5 = v8;
      }

      else
      {
        v26 = 0;
      }

      sub_23F0867E8(v25, a3, a2, a5);
      result = v26;
      if (v26 == v25)
      {
        v16 = *v26;
LABEL_42:
        result = (*(v16 + 32))();
        v18 = *MEMORY[0x277D85DE8];
        return result;
      }

      goto LABEL_38;
    }

    if (a4 == 3)
    {
      v11 = *(a1 + 24);
      if (v11)
      {
        v12 = a5;
        if (v11 == a1)
        {
          v24 = v23;
          (*(*v11 + 24))(v11, v23);
        }

        else
        {
          v24 = (*(*v11 + 16))(*(a1 + 24));
        }

        a5 = v12;
      }

      else
      {
        v24 = 0;
      }

      sub_23F086678(v23, a3, a5);
      result = v24;
      if (v24 == v23)
      {
        v16 = *v24;
        goto LABEL_42;
      }

      goto LABEL_38;
    }

LABEL_18:
    sub_23F07DF44();
  }

  if (a4 != 4)
  {
    if (a4 == 5)
    {
      v9 = *(a1 + 24);
      if (v9)
      {
        v10 = a5;
        if (v9 == a1)
        {
          v20 = v19;
          (*(*v9 + 24))(v9, v19);
        }

        else
        {
          v20 = (*(*v9 + 16))(*(a1 + 24));
        }

        a5 = v10;
      }

      else
      {
        v20 = 0;
      }

      sub_23F19BC68(v19, a3, a5);
      result = v20;
      if (v20 == v19)
      {
        v16 = *v20;
        goto LABEL_42;
      }

      goto LABEL_38;
    }

    goto LABEL_18;
  }

  v13 = *(a1 + 24);
  if (v13)
  {
    v14 = a5;
    if (v13 == a1)
    {
      v22 = v21;
      (*(*v13 + 24))(v13, v21);
    }

    else
    {
      v22 = (*(*v13 + 16))(*(a1 + 24));
    }

    a5 = v14;
  }

  else
  {
    v22 = 0;
  }

  sub_23F0857C0(v21, a3, a5);
  result = v22;
  if (v22 == v21)
  {
    v16 = *v22;
    goto LABEL_42;
  }

LABEL_38:
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23F0842A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  operator delete(v23);
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(a1);
  }

  operator delete(a10);
  _Unwind_Resume(a1);
}

void sub_23F0843B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = v6;
  v9 = a1;
  v10 = v6;
  v11 = a1;
  v12 = a1;
  v13 = &v8;
  sub_23F084A5C(&v13);
  sub_23F04D774(&v5, v6, a2);
  v8 = v6;
  v9 = a3;
  v10 = v6;
  v11 = a3;
  v12 = a3;
  if (v7 != -1)
  {
    v13 = &v8;
    (*(&off_28517D4E8 + v7))(&v13, v6);
    sub_23F07DF44();
  }

  sub_23EF41D6C();
}

void sub_23F084528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F08453C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F084550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F084564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F084578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F08458C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F0845A0(_DWORD *a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        v4 = 3;

        break;
      case 4:
        v4 = 4;

        break;
      case 5:
        v4 = 5;

        break;
      default:
        goto LABEL_20;
    }

    sub_23F07CDD0(a1, a2, v4);
  }

  if ((a3 - 1) >= 2)
  {
    if (!a3)
    {
      v6 = 0;
      v7[0] = v5;
      v7[1] = "Format ";
      v7[2] = v5;
      v7[3] = "Format ";
      v7[4] = "Format ";
      v8 = v7;
      sub_23EF6D5F0(&v8);
      sub_23F07DF44();
    }

LABEL_20:
    sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/ImageIO/src/ImageIO.cpp", 222, &unk_23F3091D6, 0, "should not be reached", 0x15uLL, sub_23F303DA4);
    abort();
  }

  sub_23F08995C(a1, a2, 1, a3, a4);
}

void sub_23F0849C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

size_t sub_23F084A5C(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28517D4B8[v3])(&v6, v1);
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

_BYTE *sub_23F084B60(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_23F084F60(a2, v3);
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

size_t sub_23F084C60(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28517D4B8[v3])(&v6, v1);
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

void sub_23F084D54(uint64_t *a1, uint64_t a2)
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
    (off_28517D4B8[v9])(&v12, v2);
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

void sub_23F084F14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_23F084F60(uint64_t a1, const char *a2)
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

void sub_23F0850FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3522C(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_23F085120(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_23F085520(a2, v3);
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

size_t sub_23F085220(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28517D4B8[v3])(&v6, v1);
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

void sub_23F085314(uint64_t *a1, uint64_t a2)
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
    (off_28517D4B8[v9])(&v12, v2);
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

void sub_23F0854D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_23F085520(uint64_t a1, const char *a2)
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

void sub_23F0856BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3522C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23F0856D0(uint64_t result)
{
  v1 = *(result + 16);
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

uint64_t sub_23F085748(uint64_t result)
{
  v1 = *(result + 16);
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

uint64_t sub_23F0857C0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = a3;
    v6 = a2;
    if (v4 == a1)
    {
      v10 = v9;
      (*(*v4 + 24))(v4, v9);
    }

    else
    {
      v10 = (*(*v4 + 16))(v4);
    }

    a2 = v6;
    a3 = v5;
  }

  else
  {
    v10 = 0;
  }

  sub_23F07BD58(v9, a2, 4, a3);
  result = v10;
  if (v10 == v9)
  {
    result = (*(*v10 + 32))(v10);
  }

  else if (v10)
  {
    result = (*(*v10 + 40))();
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23F08591C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF61BF8(va);
  _Unwind_Resume(a1);
}

void sub_23F085930(_DWORD *a1)
{
  v1[10] = &unk_2851792E0;
  sub_23F249E7C(a1, v1);
  operator new();
}

void sub_23F085B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  sub_23EF3AE8C(v10);
  sub_23EF3AE8C(&a10);
  sub_23F085E00(&a9);
  _Unwind_Resume(a1);
}

void sub_23F085BA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  if (a18)
  {
    free(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F085BB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F085C70(uint64_t a1)
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

void sub_23F085D04(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F085D3C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 48);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 48) = 0;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F085DA0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE1EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE1EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE1EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE1EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_23F085E00(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 48);
    if (v3)
    {
      free(v3);
    }

    *(v1 + 48) = 0;
    MEMORY[0x245CACD00](v1, 0x1091C406A8758A4);
    return v2;
  }

  return result;
}

void sub_23F085E58(_DWORD *a1)
{
  v1[14] = &unk_28517D860;
  sub_23F24B0CC(a1, v1);
  operator new();
}

void sub_23F0860A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  sub_23EF3AE8C(v10);
  sub_23EF3AE8C(&a10);
  sub_23F086620(&a9);
  _Unwind_Resume(a1);
}

void sub_23F0860EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a21)
  {
    free(a21);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F086104(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F0861BC(uint64_t a1)
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

uint64_t *sub_23F08626C()
{
  if ((atomic_load_explicit(&qword_27E394718, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394718))
  {
    sub_23F086308();
  }

  if (byte_27E394717 >= 0)
  {
    return &qword_27E394700;
  }

  else
  {
    return qword_27E394700;
  }
}

void sub_23F0863D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F086404(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Rgb8u]", 29, &v10);
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

void sub_23F0864E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F086524(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F08655C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 72) = 0;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F0865C0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE21EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE21EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE21EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE21EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_23F086620(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 72);
    if (v3)
    {
      free(v3);
    }

    *(v1 + 72) = 0;
    MEMORY[0x245CACD00](v1, 0x1091C40A44A61E0);
    return v2;
  }

  return result;
}

uint64_t sub_23F086678@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = a3;
    v6 = a2;
    if (v4 == a1)
    {
      v10 = v9;
      (*(*v4 + 24))(v4, v9);
    }

    else
    {
      v10 = (*(*v4 + 16))(v4);
    }

    a2 = v6;
    a3 = v5;
  }

  else
  {
    v10 = 0;
  }

  sub_23F07BD58(v9, a2, 3, a3);
  result = v10;
  if (v10 == v9)
  {
    result = (*(*v10 + 32))(v10);
  }

  else if (v10)
  {
    result = (*(*v10 + 40))();
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23F0867D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF61BF8(va);
  _Unwind_Resume(a1);
}

void sub_23F0867E8(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v188 = *MEMORY[0x277D85DE8];
  v164 = a3;
  sub_23F089154(&v153, a2);
  if ((v163 & 1) == 0)
  {
    v177 = v153;
    LOBYTE(v178) = 0;
    v187 = 0;
    if (v162 != 1)
    {
      *a4 = v153;
      *(a4 + 16) = 0;
      *(a4 + 112) = 0;
      *(a4 + 120) = 0;
      goto LABEL_276;
    }

    sub_23EF57668(&v178, &v154);
    v187 = 1;
    *a4 = v177;
    *(a4 + 16) = 0;
    *(a4 + 40) = 0;
    v8 = v180;
    if (v180 == 1)
    {
      *(a4 + 16) = v178;
      *(a4 + 32) = v179;
      v179 = 0;
      v178 = 0uLL;
      *(a4 + 40) = 1;
      *(a4 + 48) = 0;
      v9 = a4 + 48;
      *(a4 + 104) = 0;
      if ((v186 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      *(a4 + 48) = 0;
      v9 = a4 + 48;
      *(a4 + 104) = 0;
      if ((v186 & 1) == 0)
      {
LABEL_9:
        *(a4 + 112) = 1;
        *(a4 + 120) = 0;
        if (!v8)
        {
          goto LABEL_276;
        }

LABEL_22:
        if ((SHIBYTE(v179) & 0x80000000) == 0)
        {
          goto LABEL_276;
        }

        v15 = v178;
LABEL_275:
        operator delete(v15);
        goto LABEL_276;
      }
    }

    v14 = v183;
    *(v9 + 16) = v182;
    *v9 = v181;
    v181 = 0uLL;
    *(a4 + 72) = v14;
    *(a4 + 80) = v184;
    *(a4 + 96) = v185;
    v182 = 0;
    v184 = 0uLL;
    v185 = 0;
    *(a4 + 104) = 1;
    *(a4 + 112) = 1;
    *(a4 + 120) = 0;
    if (!v8)
    {
      goto LABEL_276;
    }

    goto LABEL_22;
  }

  v152 = v153;
  if ((v4 - 1) < 2 || v4 == 21)
  {
    if (DWORD1(v152) != v4)
    {
      v176 = 0;
      sub_23F07F300();
    }
  }

  else
  {
    if (v4)
    {
      v176 = 0;
      sub_23F07F300();
    }

    v4 = DWORD1(v152);
  }

  LODWORD(v177) = v4;
  v10 = *(a1 + 24);
  if (!v10)
  {
    sub_23EF38C6C();
  }

  (*(*v10 + 48))(v143);
  if (v150)
  {
    v140 = &unk_285179008;
    *v141 = *&v143[8];
    *&v143[8] = 0;
    *&v143[16] = 0;
    *&v142[14] = *&v144[14];
    *v142 = *v144;
    v11 = *&v144[22] >> 16;
    if (v11 == DWORD1(v152))
    {
      goto LABEL_40;
    }

    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/ImageIO/src/Pnm.cpp", 275, "image_dynamic.RuntimeFormat() == color_format", 0x2DuLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v12 = qword_27E396178, v13 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_39:
        qword_27E396190(*algn_27E396198, "image_dynamic.RuntimeFormat() == color_format", 45, &unk_23F3091D6, 0);
        v11 = DWORD1(v152);
LABEL_40:
        if (v11 == 21)
        {
          v30 = v152;
          v165.__r_.__value_.__r.__words[0] = &unk_28517DB98;
          sub_23F090108(&v140, &v165.__r_.__value_.__l.__size_);
          if (v30)
          {
            if (((v172 * v170) & 0x8000000000000000) != 0)
            {
              exception = __cxa_allocate_exception(8uLL);
              *exception = &unk_28518DEE8;
              __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
            }

            size = v165.__r_.__value_.__l.__size_;
            if (!v165.__r_.__value_.__l.__size_)
            {
              goto LABEL_103;
            }

            v32 = v165.__r_.__value_.__r.__words[2];
            if (v165.__r_.__value_.__r.__words[2])
            {
              atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v32->__on_zero_shared)(v32);
                std::__shared_weak_count::__release_weak(v32);
              }

              v33 = v165.__r_.__value_.__r.__words[2];
              size = v165.__r_.__value_.__l.__size_;
              if (v165.__r_.__value_.__r.__words[2])
              {
                atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v34 = size;
                  (v33->__on_zero_shared)(v33);
                  std::__shared_weak_count::__release_weak(v33);
                  size = v34;
                }
              }
            }

            if (v174 == 1)
            {
              (*(*size + 96))(&v177);
            }

            else
            {
LABEL_103:
              *&v177 = 0;
            }

            if (!v167)
            {
              goto LABEL_254;
            }

            if (!HIDWORD(v167))
            {
              goto LABEL_254;
            }

            v56 = v168;
            if (!v168)
            {
              goto LABEL_254;
            }

            v57 = v171;
            v58 = v166;
            if (v173 == 1 && v166)
            {
              v60 = v165.__r_.__value_.__r.__words[2];
              v59 = v165.__r_.__value_.__l.__size_;
              if (v165.__r_.__value_.__r.__words[2])
              {
                atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v60->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v61 = v59;
                  (v60->__on_zero_shared)(v60);
                  std::__shared_weak_count::__release_weak(v60);
                  v59 = v61;
                }
              }

              (*(*v59 + 88))(v59, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v58 = v166;
            }

            for (i = v56 - 1; i; --i)
            {
              std::istream::read();
              v58 = (v58 + v57);
            }

LABEL_115:
            std::istream::read();
            goto LABEL_254;
          }

          memset(&v175, 0, sizeof(v175));
          v74 = v165.__r_.__value_.__l.__size_;
          if (!v165.__r_.__value_.__l.__size_)
          {
            goto LABEL_162;
          }

          v75 = v165.__r_.__value_.__r.__words[2];
          if (v165.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v75->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v75->__on_zero_shared)(v75);
              std::__shared_weak_count::__release_weak(v75);
            }

            v76 = v165.__r_.__value_.__r.__words[2];
            v74 = v165.__r_.__value_.__l.__size_;
            if (v165.__r_.__value_.__r.__words[2])
            {
              atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v76->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v77 = v74;
                (v76->__on_zero_shared)(v76);
                std::__shared_weak_count::__release_weak(v76);
                v74 = v77;
              }
            }
          }

          if (v174 == 1)
          {
            (*(*v74 + 96))(&v151);
          }

          else
          {
LABEL_162:
            v151 = 0;
          }

          v86 = v171;
          v87 = v172;
          v88 = v166;
          if (v173 == 1 && v166)
          {
            v90 = v165.__r_.__value_.__r.__words[2];
            v89 = v165.__r_.__value_.__l.__size_;
            if (v165.__r_.__value_.__r.__words[2])
            {
              atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v90->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v91 = v89;
                (v90->__on_zero_shared)(v90);
                std::__shared_weak_count::__release_weak(v90);
                v89 = v91;
              }
            }

            (*(*v89 + 88))(v89, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
            v88 = v166;
          }

          v92 = (v86 * HIDWORD(v87));
          if (v92)
          {
            v93 = (3 * v87);
            if (3 * v87)
            {
              v94 = (v88 + v92);
              v95 = a2 + 4;
              v96 = MEMORY[0x277D85DE0];
              do
              {
                v97 = v88;
                do
                {
                  v97->i8[0] = sub_23F08F5B4(&v175, a2);
                  std::istream::tellg();
                  while ((*(v95 + *(*a2 - 24)) & 2) == 0)
                  {
                    v98 = std::istream::peek();
                    if (v98 <= 0x7F)
                    {
                      if ((*(v96 + 4 * v98 + 60) & 0x4000) == 0)
                      {
                        break;
                      }
                    }

                    else if (!__maskrune(v98, 0x4000uLL))
                    {
                      break;
                    }

                    std::istream::seekg();
                  }

                  std::istream::tellg();
                  v97->i8[1] = sub_23F08F5B4(&v175, a2);
                  std::istream::tellg();
                  while ((*(v95 + *(*a2 - 24)) & 2) == 0)
                  {
                    v99 = std::istream::peek();
                    if (v99 <= 0x7F)
                    {
                      if ((*(v96 + 4 * v99 + 60) & 0x4000) == 0)
                      {
                        break;
                      }
                    }

                    else if (!__maskrune(v99, 0x4000uLL))
                    {
                      break;
                    }

                    std::istream::seekg();
                  }

                  std::istream::tellg();
                  v97->i8[2] = sub_23F08F5B4(&v175, a2);
                  std::istream::tellg();
                  while ((*(v95 + *(*a2 - 24)) & 2) == 0)
                  {
                    v100 = std::istream::peek();
                    if (v100 <= 0x7F)
                    {
                      if ((*(v96 + 4 * v100 + 60) & 0x4000) == 0)
                      {
                        break;
                      }
                    }

                    else if (!__maskrune(v100, 0x4000uLL))
                    {
                      break;
                    }

                    std::istream::seekg();
                  }

                  std::istream::tellg();
                  v97 = (v97 + 3);
                }

                while (v97 != &v88->i8[v93]);
                v88 = (v88 + v86);
              }

              while (v88 != v94);
            }
          }

LABEL_217:
          v112 = v151;
          v151 = 0;
          if (v112)
          {
            (*(*v112 + 8))(v112);
          }

          if (v175.__r_.__value_.__r.__words[0])
          {
            operator delete(v175.__r_.__value_.__l.__data_);
          }

          goto LABEL_256;
        }

        if (v11 != 2)
        {
          if (v11 == 1)
          {
            v19 = v152;
            v165.__r_.__value_.__r.__words[0] = &unk_28517D9A8;
            sub_23F08F02C(&v140, &v165.__r_.__value_.__l.__size_);
            if (v19)
            {
              if (((v167 * v168) & 0x8000000000000000) != 0)
              {
                v132 = __cxa_allocate_exception(8uLL);
                *v132 = &unk_28518DEE8;
                __cxa_throw(v132, &unk_28518DF00, std::exception::~exception);
              }

              v20 = v165.__r_.__value_.__l.__size_;
              if (!v165.__r_.__value_.__l.__size_)
              {
                goto LABEL_116;
              }

              v21 = v165.__r_.__value_.__r.__words[2];
              if (v165.__r_.__value_.__r.__words[2])
              {
                atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v21->__on_zero_shared)(v21);
                  std::__shared_weak_count::__release_weak(v21);
                }

                v22 = v165.__r_.__value_.__r.__words[2];
                v20 = v165.__r_.__value_.__l.__size_;
                if (v165.__r_.__value_.__r.__words[2])
                {
                  atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
                  if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                  {
                    v23 = v20;
                    (v22->__on_zero_shared)(v22);
                    std::__shared_weak_count::__release_weak(v22);
                    v20 = v23;
                  }
                }
              }

              if (BYTE1(v170) == 1)
              {
                (*(*v20 + 96))(&v177);
              }

              else
              {
LABEL_116:
                *&v177 = 0;
              }

              if (!v167)
              {
                goto LABEL_254;
              }

              v63 = HIDWORD(v167);
              if (!HIDWORD(v167))
              {
                goto LABEL_254;
              }

              v64 = v169;
              v65 = v166;
              if (v170 == 1 && v166)
              {
                v67 = v165.__r_.__value_.__r.__words[2];
                v66 = v165.__r_.__value_.__l.__size_;
                if (v165.__r_.__value_.__r.__words[2])
                {
                  atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
                  if (!atomic_fetch_add(&v67->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                  {
                    v68 = v66;
                    (v67->__on_zero_shared)(v67);
                    std::__shared_weak_count::__release_weak(v67);
                    v66 = v68;
                  }
                }

                (*(*v66 + 88))(v66, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
                v65 = v166;
              }

              for (j = v63 - 1; j; --j)
              {
                std::istream::read();
                v65 = (v65 + v64);
              }

              goto LABEL_115;
            }

            memset(&v175, 0, sizeof(v175));
            v78 = v165.__r_.__value_.__l.__size_;
            if (!v165.__r_.__value_.__l.__size_)
            {
              goto LABEL_197;
            }

            v79 = v165.__r_.__value_.__r.__words[2];
            if (v165.__r_.__value_.__r.__words[2])
            {
              atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v79->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v79->__on_zero_shared)(v79);
                std::__shared_weak_count::__release_weak(v79);
              }

              v80 = v165.__r_.__value_.__r.__words[2];
              v78 = v165.__r_.__value_.__l.__size_;
              if (v165.__r_.__value_.__r.__words[2])
              {
                atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v80->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v81 = v78;
                  (v80->__on_zero_shared)(v80);
                  std::__shared_weak_count::__release_weak(v80);
                  v78 = v81;
                }
              }
            }

            if (BYTE1(v170) == 1)
            {
              (*(*v78 + 96))(&v151);
            }

            else
            {
LABEL_197:
              v151 = 0;
            }

            v101 = v169;
            v102 = v167;
            v103 = v166;
            if (v170 == 1 && v166)
            {
              v105 = v165.__r_.__value_.__r.__words[2];
              v104 = v165.__r_.__value_.__l.__size_;
              if (v165.__r_.__value_.__r.__words[2])
              {
                atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v105->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v106 = v104;
                  (v105->__on_zero_shared)(v105);
                  std::__shared_weak_count::__release_weak(v105);
                  v104 = v106;
                }
              }

              (*(*v104 + 88))(v104, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v103 = v166;
            }

            v107 = (v101 * HIDWORD(v102));
            if (v107 && v102)
            {
              v108 = (v103 + v107);
              v109 = MEMORY[0x277D85DE0];
              do
              {
                v110 = v103;
                do
                {
                  v110->i8[0] = sub_23F08F5B4(&v175, a2);
                  std::istream::tellg();
                  while ((*(a2 + *(*a2 - 24) + 32) & 2) == 0)
                  {
                    v111 = std::istream::peek();
                    if (v111 <= 0x7F)
                    {
                      if ((*(v109 + 4 * v111 + 60) & 0x4000) == 0)
                      {
                        break;
                      }
                    }

                    else if (!__maskrune(v111, 0x4000uLL))
                    {
                      break;
                    }

                    std::istream::seekg();
                  }

                  std::istream::tellg();
                  v110 = (v110 + 1);
                }

                while (v110 != &v103->i8[v102]);
                v103 = (v103 + v101);
              }

              while (v103 != v108);
            }

            goto LABEL_217;
          }

          sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/ImageIO/src/Pnm.cpp", 284, &unk_23F3091D6, 0, "Not implemented", 0xFuLL, sub_23F303DA4);
LABEL_289:
          abort();
        }

        v24 = v152;
        v165.__r_.__value_.__r.__words[0] = &unk_28517DAA0;
        sub_23F08FA30(&v140, &v165.__r_.__value_.__l.__size_);
        if (!v24)
        {
          v70 = v165.__r_.__value_.__l.__size_;
          if (!v165.__r_.__value_.__l.__size_)
          {
            goto LABEL_155;
          }

          v71 = v165.__r_.__value_.__r.__words[2];
          if (v165.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v71->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v71->__on_zero_shared)(v71);
              std::__shared_weak_count::__release_weak(v71);
            }

            v72 = v165.__r_.__value_.__r.__words[2];
            v70 = v165.__r_.__value_.__l.__size_;
            if (v165.__r_.__value_.__r.__words[2])
            {
              atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v72->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v73 = v70;
                (v72->__on_zero_shared)(v72);
                std::__shared_weak_count::__release_weak(v72);
                v70 = v73;
              }
            }
          }

          if (BYTE1(v170) == 1)
          {
            (*(*v70 + 96))(&v175);
          }

          else
          {
LABEL_155:
            v175.__r_.__value_.__r.__words[0] = 0;
          }

          v138 = v169;
          v82 = v167;
          if (v170 == 1 && v166)
          {
            v84 = v165.__r_.__value_.__r.__words[2];
            v83 = v165.__r_.__value_.__l.__size_;
            if (v165.__r_.__value_.__r.__words[2])
            {
              atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v84->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v85 = v83;
                (v84->__on_zero_shared)(v84);
                std::__shared_weak_count::__release_weak(v84);
                v83 = v85;
              }
            }

            (*(*v83 + 88))(v83, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
          }

          if (v138 * HIDWORD(v82) && v82)
          {
            v113 = std::istream::peek();
            if ((*(a2 + *(*a2 - 24) + 32) & 2) == 0)
            {
              v114 = 0;
              strcpy(&v177, "0123456789");
              BYTE7(v178) = 10;
              do
              {
                v115 = *(&v177 + v114);
              }

              while (v115 != v113 && v114++ != 9);
              if (v115 == v113)
              {
                operator new();
              }
            }

            operator new();
          }

          v117 = v175.__r_.__value_.__r.__words[0];
          v175.__r_.__value_.__r.__words[0] = 0;
          if (v117)
          {
            (*(*v117 + 8))(v117);
          }

          goto LABEL_256;
        }

        v25 = v167;
        if (((2 * v168 * v167) & 0x8000000000000000) != 0)
        {
          v133 = __cxa_allocate_exception(8uLL);
          *v133 = &unk_28518DEE8;
          __cxa_throw(v133, &unk_28518DF00, std::exception::~exception);
        }

        v26 = v165.__r_.__value_.__l.__size_;
        if (!v165.__r_.__value_.__l.__size_)
        {
          goto LABEL_76;
        }

        v27 = v165.__r_.__value_.__r.__words[2];
        if (v165.__r_.__value_.__r.__words[2])
        {
          atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v27->__on_zero_shared)(v27);
            std::__shared_weak_count::__release_weak(v27);
          }

          v28 = v165.__r_.__value_.__r.__words[2];
          v26 = v165.__r_.__value_.__l.__size_;
          if (v165.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v29 = v26;
              (v28->__on_zero_shared)(v28);
              std::__shared_weak_count::__release_weak(v28);
              v26 = v29;
            }
          }
        }

        if (BYTE1(v170) == 1)
        {
          (*(*v26 + 96))(&v177);
        }

        else
        {
LABEL_76:
          *&v177 = 0;
        }

        if (!v167)
        {
          goto LABEL_254;
        }

        v35 = HIDWORD(v167);
        if (!HIDWORD(v167))
        {
          goto LABEL_254;
        }

        v135 = a4;
        v36 = v169;
        v37 = v166;
        if (v170 == 1 && v166)
        {
          v39 = v165.__r_.__value_.__r.__words[2];
          v38 = v165.__r_.__value_.__l.__size_;
          if (v165.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v40 = v38;
              (v39->__on_zero_shared)(v39);
              std::__shared_weak_count::__release_weak(v39);
              v38 = v40;
            }
          }

          (*(*v38 + 88))(v38, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
          v37 = v166;
        }

        v41 = v35 - 1;
        if (v41)
        {
          if (v25)
          {
            v42 = 0;
            v43 = v25;
            v44 = (v25 - 1) & 0x7FFFFFFFFFFFFFFFLL;
            v45 = v44 + 1;
            v139 = (v44 + 1) & 0xFFFFFFFFFFFFFFF0;
            v46 = (v44 + 1) & 0xFFFFFFFFFFFFFFFCLL;
            v137 = 2 * v46;
            v47 = v37 + 1;
            v48 = 2 * v36;
            v136 = -v46;
            while (1)
            {
              std::istream::read();
              v49 = v37;
              if (v44 >= 3)
              {
                if (v44 < 0xF)
                {
                  v50 = 0;
LABEL_96:
                  v49 = (v37 + v137);
                  v54 = 2 * v50;
                  v55 = v136 + v50;
                  do
                  {
                    *&v37->i8[v54] = vrev16_s8(*&v37->i8[v54]);
                    v54 += 8;
                    v55 += 4;
                  }

                  while (v55);
                  if (v45 == ((v44 + 1) & 0xFFFFFFFFFFFFFFFCLL))
                  {
                    goto LABEL_88;
                  }

                  goto LABEL_101;
                }

                v51 = (v44 + 1) & 0xFFFFFFFFFFFFFFF0;
                v52 = v47;
                do
                {
                  v53 = vrev16q_s8(*v52);
                  v52[-1] = vrev16q_s8(v52[-1]);
                  *v52 = v53;
                  v52 += 2;
                  v51 -= 16;
                }

                while (v51);
                if (v45 == v139)
                {
                  goto LABEL_88;
                }

                v50 = (v44 + 1) & 0xFFFFFFFFFFFFFFF0;
                if (((v44 + 1) & 0xC) != 0)
                {
                  goto LABEL_96;
                }

                v49 = (v37 + 2 * v139);
              }

              do
              {
LABEL_101:
                v49->i16[0] = bswap32(v49->u16[0]) >> 16;
                v49 = (v49 + 2);
              }

              while (v49 != (v37 + 2 * v43));
LABEL_88:
              v37 = (v37 + v48);
              ++v42;
              v47 = (v47 + v48);
              if (v42 == v41)
              {
                goto LABEL_240;
              }
            }
          }

          v43 = v25;
          do
          {
            std::istream::read();
            v37 = (v37 + 2 * v36);
            --v41;
          }

          while (v41);
        }

        else
        {
          v43 = v25;
        }

LABEL_240:
        std::istream::read();
        a4 = v135;
        if (v43)
        {
          v118 = (v43 - 1) & 0x7FFFFFFFFFFFFFFFLL;
          v119 = v37;
          if (v118 < 3)
          {
            goto LABEL_253;
          }

          v120 = v118 + 1;
          if (v118 < 0xF)
          {
            v121 = 0;
            goto LABEL_248;
          }

          v121 = v120 & 0xFFFFFFFFFFFFFFF0;
          v122 = v37 + 1;
          v123 = v120 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v124 = vrev16q_s8(*v122);
            v122[-1] = vrev16q_s8(v122[-1]);
            *v122 = v124;
            v122 += 2;
            v123 -= 16;
          }

          while (v123);
          if (v120 != v121)
          {
            if ((v120 & 0xC) == 0)
            {
              v119 = (v37 + 2 * v121);
              goto LABEL_253;
            }

LABEL_248:
            v119 = (v37 + 2 * (v120 & 0xFFFFFFFFFFFFFFFCLL));
            v125 = (v37 + 2 * v121);
            v126 = v121 - (v120 & 0xFFFFFFFFFFFFFFFCLL);
            do
            {
              *v125 = vrev16_s8(*v125);
              ++v125;
              v126 += 4;
            }

            while (v126);
            if (v120 == (v120 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_254;
            }

            do
            {
LABEL_253:
              v119->i16[0] = bswap32(v119->u16[0]) >> 16;
              v119 = (v119 + 2);
            }

            while (v119 != (v37 + 2 * v43));
          }
        }

LABEL_254:
        v127 = v177;
        *&v177 = 0;
        if (v127)
        {
          (*(*v127 + 8))(v127);
        }

LABEL_256:
        v128 = v165.__r_.__value_.__r.__words[2];
        if (v165.__r_.__value_.__r.__words[2] && !atomic_fetch_add((v165.__r_.__value_.__r.__words[2] + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v128->__on_zero_shared)(v128);
          std::__shared_weak_count::__release_weak(v128);
        }

        *(a4 + 120) = 1;
        v129 = v141[1];
        if (v141[1] && !atomic_fetch_add(v141[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v129->__on_zero_shared)(v129);
          std::__shared_weak_count::__release_weak(v129);
        }

        goto LABEL_262;
      }
    }

    else
    {
      v12 = qword_27E396178;
      v13 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_289;
      }
    }

    do
    {
      (*v12)(*(v12 + 8), "image_dynamic.RuntimeFormat() == color_format", 45, &unk_23F3091D6, 0);
      v12 += 16;
    }

    while (v12 != v13);
    if ((byte_27E3961A0 & 1) == 0)
    {
      goto LABEL_289;
    }

    goto LABEL_39;
  }

  v177 = *v143;
  LOBYTE(v178) = 0;
  v187 = 0;
  if (v149 != 1)
  {
    *a4 = *v143;
    *(a4 + 16) = 0;
    *(a4 + 112) = 0;
    *(a4 + 120) = 0;
    goto LABEL_262;
  }

  sub_23EF57668(&v178, &v143[16]);
  v187 = 1;
  *a4 = v177;
  *(a4 + 16) = 0;
  *(a4 + 40) = 0;
  v16 = v180;
  if (v180 == 1)
  {
    *(a4 + 16) = v178;
    *(a4 + 32) = v179;
    v179 = 0;
    v178 = 0uLL;
    *(a4 + 40) = 1;
    *(a4 + 48) = 0;
    v17 = a4 + 48;
    *(a4 + 104) = 0;
    if ((v186 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    *(a4 + 48) = 0;
    v17 = a4 + 48;
    *(a4 + 104) = 0;
    if ((v186 & 1) == 0)
    {
LABEL_28:
      *(a4 + 112) = 1;
      *(a4 + 120) = 0;
      if (!v16)
      {
        goto LABEL_262;
      }

      goto LABEL_34;
    }
  }

  v18 = v183;
  *(v17 + 16) = v182;
  *v17 = v181;
  v181 = 0uLL;
  *(a4 + 72) = v18;
  *(a4 + 80) = v184;
  *(a4 + 96) = v185;
  v182 = 0;
  v184 = 0uLL;
  v185 = 0;
  *(a4 + 104) = 1;
  *(a4 + 112) = 1;
  *(a4 + 120) = 0;
  if (!v16)
  {
    goto LABEL_262;
  }

LABEL_34:
  if (SHIBYTE(v179) < 0)
  {
    operator delete(v178);
  }

LABEL_262:
  if (v150 == 1)
  {
    v130 = *&v143[16];
    if (*&v143[16] && !atomic_fetch_add((*&v143[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v130->__on_zero_shared)(v130);
      std::__shared_weak_count::__release_weak(v130);
    }

    goto LABEL_276;
  }

  if (v149 == 1)
  {
    if (v148 == 1)
    {
      if (v147 < 0)
      {
        operator delete(v146);
      }

      if (v145 < 0)
      {
        operator delete(*&v144[24]);
      }
    }

    if (v144[16] == 1 && (v144[15] & 0x80000000) != 0)
    {
      v15 = *&v143[16];
      goto LABEL_275;
    }
  }

LABEL_276:
  if ((v163 & 1) == 0 && v162 == 1)
  {
    if (v161 == 1)
    {
      if (v160 < 0)
      {
        operator delete(v159);
      }

      if (v158 < 0)
      {
        operator delete(v157);
      }
    }

    if (v156 == 1 && v155 < 0)
    {
      operator delete(v154);
    }
  }

  v131 = *MEMORY[0x277D85DE8];
}

void sub_23F088D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41)
{
  v42 = a41;
  a41 = 0;
  if (v42)
  {
    (*(*v42 + 8))(v42);
  }

  if (STACK[0x2E0])
  {
    operator delete(STACK[0x2E0]);
  }

  sub_23EF50F44(&STACK[0x290]);
  sub_23EF61808(&a17);
  sub_23EF61C84(&a25);
  sub_23EF574C0(&STACK[0x200]);
  _Unwind_Resume(a1);
}

void sub_23F089154(uint64_t a1, uint64_t *a2)
{
  v42 = a2;
  if (!sub_23F08B9C0(&v42))
  {
    sub_23F07F1D0(v43, "Invalid pnm file. Unexpected end of file in header.");
    v51 = 1;
    sub_23F06C200(5u, v43, __s);
    if (v51 == 1)
    {
      if (v50 == 1)
      {
        if (v49 < 0)
        {
          operator delete(v48);
        }

        if (v47 < 0)
        {
          operator delete(v46);
        }
      }

      if (v45 == 1 && v44 < 0)
      {
        operator delete(v43[0]);
      }
    }

    *a1 = *__s;
    *(a1 + 16) = 0;
    *(a1 + 112) = 0;
    if (v41 != 1)
    {
      *(a1 + 120) = 0;
      return;
    }

    *(a1 + 40) = 0;
    v6 = v34;
    if (v34 == 1)
    {
      *(a1 + 16) = __p;
      *(a1 + 32) = v33;
      v33 = 0;
      __p = 0uLL;
      *(a1 + 40) = 1;
      *(a1 + 48) = 0;
      v7 = a1 + 48;
      *(a1 + 104) = 0;
      if ((v40 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      *(a1 + 48) = 0;
      v7 = a1 + 48;
      *(a1 + 104) = 0;
      if ((v40 & 1) == 0)
      {
LABEL_18:
        *(a1 + 112) = 1;
        *(a1 + 120) = 0;
        if (!v6)
        {
          return;
        }

LABEL_33:
        if ((SHIBYTE(v33) & 0x80000000) == 0)
        {
          return;
        }

        v17 = __p;
        goto LABEL_56;
      }
    }

    v16 = v37;
    *(v7 + 16) = v36;
    *v7 = v35;
    v35 = 0uLL;
    *(a1 + 72) = v16;
    *(a1 + 80) = v38;
    *(a1 + 96) = v39;
    v36 = 0;
    v38 = 0uLL;
    v39 = 0;
    *(a1 + 104) = 1;
    *(a1 + 112) = 1;
    *(a1 + 120) = 0;
    if (!v6)
    {
      return;
    }

    goto LABEL_33;
  }

  __s[2] = 0;
  *__s = 0;
  std::istream::read();
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

  v30 = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
  }

  *(&__dst + v5) = 0;
  if (sub_23F08B9C0(&v42))
  {
    sub_23F08BC84(a2);
    v9 = v8;
    if (sub_23F08B9C0(&v42))
    {
      sub_23F08BC84(a2);
      v11 = v10;
      if (sub_23F08B9C0(&v42))
      {
        sub_23F08BC84(a2);
        v13 = v12;
        v27 = v12;
        if ((*(a2 + *(*a2 - 24) + 32) & 2) == 0)
        {
          v14 = v30;
          if (v30 < 0)
          {
            if (v29 == 2 && *__dst == 12880)
            {
              goto LABEL_66;
            }

            if (v29 != 2)
            {
              goto LABEL_63;
            }

            p_dst = __dst;
          }

          else
          {
            if (v30 != 2)
            {
              goto LABEL_63;
            }

            if (__dst == 12880)
            {
              v21 = 0;
              goto LABEL_75;
            }

            p_dst = &__dst;
          }

          if (*p_dst != 13136)
          {
LABEL_63:
            if (!sub_23F08BF20(&__dst, "P5") && !sub_23F08BF20(&__dst, "P6"))
            {
              sub_23F07F1D0(v26, "Invalid pnm file. Format magic number not recognized.");
              v26[96] = 1;
              sub_23F07DBB0(5u, v26, __s);
              sub_23F08BBCC(a1, __s);
              sub_23EF575B8(__s);
              v22 = v26;
LABEL_86:
              sub_23EF57834(v22);
              goto LABEL_54;
            }

            v21 = 1;
LABEL_67:
            if ((v14 & 0x80) != 0)
            {
              if (v29 == 2 && *__dst == 12880)
              {
                goto LABEL_87;
              }

              if (v29 == 2)
              {
                v23 = __dst;
LABEL_80:
                if (*v23 != 13648)
                {
                  goto LABEL_81;
                }

LABEL_87:
                if (v13 == 255)
                {
                  v24 = 1;
                }

                else
                {
                  if (v13 != 0xFFFF)
                  {
                    sub_23F08BFAC(__s, &v27);
                  }

                  v24 = 2;
                }

                goto LABEL_94;
              }

LABEL_81:
              if (sub_23F08BF20(&__dst, "P3") || sub_23F08BF20(&__dst, "P6"))
              {
                if (v13 != 255)
                {
                  if (v13 != 0xFFFF)
                  {
                    sub_23F08BFAC(__s, &v27);
                  }

                  sub_23F07F1D0(v25, "Unsupported pnm format. Loader does not support Rgb16u (.pbm) loading yet.");
                  v25[96] = 1;
                  sub_23F07DBB0(5u, v25, __s);
                  sub_23F08BBCC(a1, __s);
                  sub_23EF575B8(__s);
                  v22 = v25;
                  goto LABEL_86;
                }

                v24 = 21;
              }

              else
              {
                v24 = 0;
              }

LABEL_94:
              __s[0] = 0;
              std::istream::read();
              if (__s[0] == 13)
              {
                __s[0] = 0;
                std::istream::read();
              }

              *a1 = v21;
              *(a1 + 4) = v24;
              *(a1 + 8) = v9;
              *(a1 + 12) = v11;
              *(a1 + 120) = 1;
              goto LABEL_54;
            }

            if (v14 != 2)
            {
LABEL_76:
              if (v14 == 2)
              {
                v23 = &__dst;
                goto LABEL_80;
              }

              goto LABEL_81;
            }

LABEL_75:
            if (__dst == 12880)
            {
              goto LABEL_87;
            }

            goto LABEL_76;
          }

LABEL_66:
          v21 = 0;
          goto LABEL_67;
        }
      }
    }
  }

  sub_23F07F1D0(v43, "Invalid pnm file. Unexpected end of file in header.");
  v51 = 1;
  sub_23F06C200(5u, v43, __s);
  if (v51 == 1)
  {
    if (v50 == 1)
    {
      if (v49 < 0)
      {
        operator delete(v48);
      }

      if (v47 < 0)
      {
        operator delete(v46);
      }
    }

    if (v45 == 1 && v44 < 0)
    {
      operator delete(v43[0]);
    }
  }

  *a1 = *__s;
  *(a1 + 16) = 0;
  *(a1 + 112) = 0;
  if (v41 == 1)
  {
    *(a1 + 40) = 0;
    v18 = v34;
    if (v34 == 1)
    {
      *(a1 + 16) = __p;
      *(a1 + 32) = v33;
      v33 = 0;
      __p = 0uLL;
      *(a1 + 40) = 1;
      *(a1 + 48) = 0;
      v19 = a1 + 48;
      *(a1 + 104) = 0;
      if ((v40 & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    else
    {
      *(a1 + 48) = 0;
      v19 = a1 + 48;
      *(a1 + 104) = 0;
      if ((v40 & 1) == 0)
      {
LABEL_47:
        *(a1 + 112) = 1;
        *(a1 + 120) = 0;
        if (!v18)
        {
          goto LABEL_54;
        }

LABEL_51:
        if (SHIBYTE(v33) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_54;
      }
    }

    v20 = v37;
    *(v19 + 16) = v36;
    *v19 = v35;
    v35 = 0uLL;
    *(a1 + 72) = v20;
    *(a1 + 80) = v38;
    *(a1 + 96) = v39;
    v36 = 0;
    v38 = 0uLL;
    v39 = 0;
    *(a1 + 104) = 1;
    *(a1 + 112) = 1;
    *(a1 + 120) = 0;
    if (v18)
    {
      goto LABEL_51;
    }
  }

  else
  {
    *(a1 + 120) = 0;
  }

LABEL_54:
  if ((v30 & 0x80000000) == 0)
  {
    return;
  }

  v17 = __dst;
LABEL_56:
  operator delete(v17);
}

void sub_23F0898C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a42 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F08995C(_DWORD *a1@<X0>, void *a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v6 = a1[12];
  v64 = v6;
  if (v6 > 0x15 || ((1 << v6) & 0x200006) == 0)
  {
    LODWORD(v68) = 0;
    sub_23F07F300();
  }

  if (a4 && (a4 == 1 && v6 - 3 < 0xFFFFFFFE || a4 == 2 && v6 != 21))
  {
    LODWORD(v68) = 0;
    sub_23F07DF44();
  }

  v10 = a1[6];
  v9 = a1[7];
  v63 = a1[12];
  if (v6 - 1 > 1)
  {
    if (v6 != 21)
    {
      v78 = 0;
      sub_23F07F300();
    }

    v11 = a1;
    v12 = "P3\n";
    v13 = "P6\n";
  }

  else
  {
    v11 = a1;
    v12 = "P2\n";
    v13 = "P5\n";
  }

  if (a3 == 1)
  {
    v15 = v13;
  }

  else
  {
    v15 = v12;
  }

  sub_23EF2F9B0(a2, v15, 3);
  if (v6 == 21 || v6 == 1)
  {
    v17 = 255;
  }

  else
  {
    v17 = 0xFFFF;
  }

  std::to_string(&v67, v10);
  if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v67;
  }

  else
  {
    v18 = v67.__r_.__value_.__r.__words[0];
  }

  if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v67.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v67.__r_.__value_.__l.__size_;
  }

  sub_23EF2F9B0(a2, v18, size);
  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  sub_23EF2F9B0(a2, " ", 1);
  std::to_string(&v67, v9);
  if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v67;
  }

  else
  {
    v20 = v67.__r_.__value_.__r.__words[0];
  }

  if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(v67.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = v67.__r_.__value_.__l.__size_;
  }

  sub_23EF2F9B0(a2, v20, v21);
  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  sub_23EF2F9B0(a2, "\n", 1);
  std::to_string(&v67, v17);
  if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v67;
  }

  else
  {
    v22 = v67.__r_.__value_.__r.__words[0];
  }

  if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(v67.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = v67.__r_.__value_.__l.__size_;
  }

  sub_23EF2F9B0(a2, v22, v23);
  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  sub_23EF2F9B0(a2, "\n", 1);
  switch(v64)
  {
    case 0x15u:
      v67.__r_.__value_.__r.__words[0] = &unk_28517E0A8;
      sub_23F08E4D4(v11, &v67.__r_.__value_.__l.__size_);
      if (a3 != 1)
      {
        v77.__r_.__value_.__r.__words[0] = 16;
        v77.__r_.__value_.__l.__size_ = 0x1000000008;
        v77.__r_.__value_.__r.__words[2] = 14;
        operator new();
      }

      v32 = v67.__r_.__value_.__l.__size_;
      if (!v67.__r_.__value_.__l.__size_)
      {
        goto LABEL_110;
      }

      v33 = v67.__r_.__value_.__r.__words[2];
      if (v67.__r_.__value_.__r.__words[2])
      {
        atomic_fetch_add_explicit((v67.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v33->__on_zero_shared)(v33);
          std::__shared_weak_count::__release_weak(v33);
        }

        v34 = v67.__r_.__value_.__r.__words[2];
        v32 = v67.__r_.__value_.__l.__size_;
        if (v67.__r_.__value_.__r.__words[2])
        {
          atomic_fetch_add_explicit((v67.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v35 = v32;
            (v34->__on_zero_shared)(v34);
            std::__shared_weak_count::__release_weak(v34);
            v32 = v35;
          }
        }
      }

      if (v76 == 1)
      {
        (*(*v32 + 96))(v65);
      }

      else
      {
LABEL_110:
        v65[0] = 0;
      }

      if (!v69)
      {
        goto LABEL_135;
      }

      if (!HIDWORD(v69))
      {
        goto LABEL_135;
      }

      v47 = v70;
      if (!v70)
      {
        goto LABEL_135;
      }

      v48 = v74;
      v49 = v68;
      if (v75 == 1 && v68)
      {
        v51 = v67.__r_.__value_.__r.__words[2];
        v50 = v67.__r_.__value_.__l.__size_;
        if (v67.__r_.__value_.__r.__words[2])
        {
          atomic_fetch_add_explicit((v67.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v51->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v52 = v50;
            (v51->__on_zero_shared)(v51);
            std::__shared_weak_count::__release_weak(v51);
            v50 = v52;
          }
        }

        (*(*v50 + 88))(v50, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v49 = v68;
      }

      for (i = v47 - 1; i; --i)
      {
        std::ostream::write();
        v49 += v48;
      }

      goto LABEL_134;
    case 2u:
      v67.__r_.__value_.__r.__words[0] = &unk_28517DFB0;
      sub_23F08DA84(v11, &v67.__r_.__value_.__l.__size_);
      if (a3 == 1)
      {
        v28 = v67.__r_.__value_.__l.__size_;
        if (!v67.__r_.__value_.__l.__size_)
        {
          goto LABEL_96;
        }

        v29 = v67.__r_.__value_.__r.__words[2];
        if (v67.__r_.__value_.__r.__words[2])
        {
          atomic_fetch_add_explicit((v67.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v29->__on_zero_shared)(v29);
            std::__shared_weak_count::__release_weak(v29);
          }

          v30 = v67.__r_.__value_.__r.__words[2];
          v28 = v67.__r_.__value_.__l.__size_;
          if (v67.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v67.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v31 = v28;
              (v30->__on_zero_shared)(v30);
              std::__shared_weak_count::__release_weak(v30);
              v28 = v31;
            }
          }
        }

        if (v73 == 1)
        {
          (*(*v28 + 96))(v65);
        }

        else
        {
LABEL_96:
          v65[0] = 0;
        }

        v36 = v71;
        v37 = v69;
        v38 = v68;
        if (v72 == 1 && v68)
        {
          v40 = v67.__r_.__value_.__r.__words[2];
          v39 = v67.__r_.__value_.__l.__size_;
          if (v67.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v67.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v41 = v39;
              (v40->__on_zero_shared)(v40);
              std::__shared_weak_count::__release_weak(v40);
              v39 = v41;
            }
          }

          (*(*v39 + 88))(v39, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
          v38 = v68;
        }

        v42 = v36 * HIDWORD(v37);
        if (v36 * HIDWORD(v37) && v37)
        {
          v43 = 2 * v37;
          v44 = 2 * v36;
          v45 = v38 + 2 * v42;
          do
          {
            v46 = 0;
            do
            {
              LOWORD(v77.__r_.__value_.__l.__data_) = bswap32(*(v38 + v46)) >> 16;
              std::ostream::write();
              v46 += 2;
            }

            while (v43 != v46);
            v38 += v44;
          }

          while (v38 != v45);
        }

        goto LABEL_135;
      }

      v77.__r_.__value_.__r.__words[0] = 16;
      v77.__r_.__value_.__l.__size_ = 0x1000000008;
      v77.__r_.__value_.__r.__words[2] = 14;
      LOBYTE(v65[0]) = 0;
      v66 = 0;
      sub_23F091E60(&v77, a2, &v67, v65);
      if (v66 == 1 && v65[0])
      {
        v65[1] = v65[0];
        operator delete(v65[0]);
      }

      if (v69 && HIDWORD(v69))
      {
        goto LABEL_88;
      }

      break;
    case 1u:
      v67.__r_.__value_.__r.__words[0] = &unk_28517DD38;
      sub_23F08C868(v11, &v67.__r_.__value_.__l.__size_);
      if (a3 == 1)
      {
        v24 = v67.__r_.__value_.__l.__size_;
        if (!v67.__r_.__value_.__l.__size_)
        {
          goto LABEL_123;
        }

        v25 = v67.__r_.__value_.__r.__words[2];
        if (v67.__r_.__value_.__r.__words[2])
        {
          atomic_fetch_add_explicit((v67.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v25->__on_zero_shared)(v25);
            std::__shared_weak_count::__release_weak(v25);
          }

          v26 = v67.__r_.__value_.__r.__words[2];
          v24 = v67.__r_.__value_.__l.__size_;
          if (v67.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v67.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v27 = v24;
              (v26->__on_zero_shared)(v26);
              std::__shared_weak_count::__release_weak(v26);
              v24 = v27;
            }
          }
        }

        if (v73 == 1)
        {
          (*(*v24 + 96))(v65);
        }

        else
        {
LABEL_123:
          v65[0] = 0;
        }

        if (!v69)
        {
          goto LABEL_135;
        }

        v54 = HIDWORD(v69);
        if (!HIDWORD(v69))
        {
          goto LABEL_135;
        }

        v55 = v71;
        v56 = v68;
        if (v72 == 1 && v68)
        {
          v58 = v67.__r_.__value_.__r.__words[2];
          v57 = v67.__r_.__value_.__l.__size_;
          if (v67.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v67.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v58->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v59 = v57;
              (v58->__on_zero_shared)(v58);
              std::__shared_weak_count::__release_weak(v58);
              v57 = v59;
            }
          }

          (*(*v57 + 88))(v57, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
          v56 = v68;
        }

        for (j = v54 - 1; j; --j)
        {
          std::ostream::write();
          v56 += v55;
        }

LABEL_134:
        std::ostream::write();
LABEL_135:
        v61 = v65[0];
        v65[0] = 0;
        if (v61)
        {
          (*(*v61 + 8))(v61);
        }

        break;
      }

      v77.__r_.__value_.__r.__words[0] = 16;
      v77.__r_.__value_.__l.__size_ = 0x1000000008;
      v77.__r_.__value_.__r.__words[2] = 14;
      LOBYTE(v65[0]) = 0;
      v66 = 0;
      sub_23F090EB8(&v77, a2, &v67, v65);
      if (v66 == 1 && v65[0])
      {
        v65[1] = v65[0];
        operator delete(v65[0]);
      }

      if (v69 && HIDWORD(v69))
      {
LABEL_88:
        sub_23EF2F9B0(a2, "\n", 1);
      }

      break;
    default:
      sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/ImageIO/src/Pnm.cpp", 459, &unk_23F3091D6, 0, "not implemented", 0xFuLL, sub_23F303DA4);
      abort();
  }

  v62 = v67.__r_.__value_.__r.__words[2];
  if (v67.__r_.__value_.__r.__words[2] && !atomic_fetch_add((v67.__r_.__value_.__r.__words[2] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v62->__on_zero_shared)(v62);
    std::__shared_weak_count::__release_weak(v62);
  }

  *(a5 + 120) = 1;
}

void sub_23F08B3F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, void *__p, uint64_t a62, uint64_t a63)
{
  v66 = a65;
  a65 = 0;
  if (v66)
  {
    (*(*v66 + 8))(v66);
  }

  sub_23EF50F44(&STACK[0x228]);
  sub_23EF574C0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_23F08B858(uint64_t result)
{
  v1 = *(result + 16);
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

uint64_t sub_23F08B8D0(uint64_t result)
{
  v1 = *(result + 16);
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

uint64_t sub_23F08B948(uint64_t result)
{
  v1 = *(result + 16);
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

BOOL sub_23F08B9C0(uint64_t **a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D85DE0];
  while (1)
  {
    v3 = *a1;
    std::istream::tellg();
    while ((*(v3 + *(*v3 - 24) + 32) & 2) == 0)
    {
      v4 = std::istream::peek();
      if (v4 <= 0x7F)
      {
        if ((*(v2 + 4 * v4 + 60) & 0x4000) == 0)
        {
          break;
        }
      }

      else if (!__maskrune(v4, 0x4000uLL))
      {
        break;
      }

      std::istream::seekg();
    }

    std::istream::tellg();
    if (v12 == v11)
    {
      v5 = *a1;
      std::istream::tellg();
      v7 = v5 + 4;
      for (i = *v5; (*(v7 + *(i - 24)) & 2) == 0 && std::istream::peek() == 35; i = v8)
      {
        v8 = *v5;
        if ((*(v7 + *(*v5 - 24)) & 2) == 0)
        {
          while (std::istream::peek() != 10)
          {
            std::istream::seekg();
            v8 = *v5;
            if ((*(v7 + *(*v5 - 24)) & 2) != 0)
            {
              goto LABEL_12;
            }
          }

          v8 = *v5;
        }

LABEL_12:
        ;
      }

      std::istream::tellg();
      if (v12 == v11)
      {
        break;
      }
    }
  }

  result = (*(*a1 + *(**a1 - 24) + 32) & 2) == 0;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23F08BBCC(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 16) = 0;
  *(result + 112) = 0;
  if (*(a2 + 112) == 1)
  {
    *(result + 40) = 0;
    if (*(a2 + 40) == 1)
    {
      v2 = *(a2 + 16);
      *(result + 32) = *(a2 + 32);
      *(result + 16) = v2;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 16) = 0;
      *(result + 40) = 1;
    }

    *(result + 48) = 0;
    *(result + 104) = 0;
    if (*(a2 + 104) == 1)
    {
      v3 = *(a2 + 48);
      *(result + 64) = *(a2 + 64);
      *(result + 48) = v3;
      *(a2 + 56) = 0;
      *(a2 + 64) = 0;
      *(a2 + 48) = 0;
      *(result + 72) = *(a2 + 72);
      v4 = *(a2 + 80);
      *(result + 96) = *(a2 + 96);
      *(result + 80) = v4;
      *(a2 + 88) = 0;
      *(a2 + 96) = 0;
      *(a2 + 80) = 0;
      *(result + 104) = 1;
    }

    *(result + 112) = 1;
  }

  *(result + 120) = 0;
  return result;
}

void sub_23F08BC84(void *a1)
{
  v2 = std::istream::peek();
  if ((*(a1 + *(*a1 - 24) + 32) & 2) != 0)
  {
LABEL_20:
    operator new();
  }

  v3 = v2;
  sub_23F08C378("0123456789", v10);
  v4 = v11;
  if ((v11 & 0x80u) == 0)
  {
    v5 = v10;
  }

  else
  {
    v5 = v10[0];
  }

  if ((v11 & 0x80u) != 0)
  {
    v4 = v10[1];
  }

  if (v4)
  {
    v6 = (v4 - 1);
    do
    {
      v7 = *v5;
      v5 = (v5 + 1);
      v8 = v7 == v3;
    }

    while (v7 != v3 && v6-- != 0);
    if ((v11 & 0x80000000) == 0)
    {
LABEL_15:
      if (!v8)
      {
        goto LABEL_20;
      }

LABEL_19:
      operator new();
    }
  }

  else
  {
    v8 = 0;
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  operator delete(v10[0]);
  if (!v8)
  {
    goto LABEL_20;
  }

  goto LABEL_19;
}

void sub_23F08BF04(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_23F08BF20(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      sub_23EF35BA8();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

void sub_23F08BFAC(uint64_t a1, _DWORD *a2)
{
  *a2;
  v2 = -1;
  operator new();
}

void sub_23F08C2F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F08C378(const char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = strlen(a1);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v8) = v4;
  if (v4)
  {
    memcpy(&__dst, a1, v4);
    *(&__dst + v5) = 0;
    if ((SHIBYTE(v8) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    LOBYTE(__dst) = 0;
    if ((SHIBYTE(v8) & 0x80000000) == 0)
    {
LABEL_5:
      *a2 = __dst;
      *(a2 + 16) = v8;
      return;
    }
  }

  v6 = __dst;
  sub_23EF34EA4(a2, __dst, *(&__dst + 1));

  operator delete(v6);
}

void sub_23F08C4B0(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_23EF3AE74();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_23EF34E18();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23EF2F8F4();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23EF2F8F4();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_23F08C6F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3522C(va);
  _Unwind_Resume(a1);
}

void sub_23F08C70C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F08C7C4(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
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
  }

  return result;
}

void sub_23F08C868(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 48) != 1)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F08CBC8(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v15 = v4;
      *(&v15 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v15 = v4;
    }
  }

  else
  {
    v15 = 0uLL;
  }

  v6 = *(a1 + 24);
  v7 = v6 == 0;
  if (!*(a1 + 28))
  {
    v7 = 1;
  }

  v8 = *(a1 + 32) << 32;
  if (v7)
  {
    v8 = 0;
  }

  if (v6)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(a1 + 40);
  if (v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + 24);
  }

  if (HIDWORD(v11) * HIDWORD(v8) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v12 = qword_27E396178, v13 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_27;
      }
    }

    else
    {
      v12 = qword_27E396178;
      v13 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_35;
      }
    }

    do
    {
      (*v12)(*(v12 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v12 += 16;
    }

    while (v12 != v13);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_35:
    abort();
  }

LABEL_27:
  v14 = *(a1 + 52);
  if (*(&v15 + 1))
  {
    atomic_fetch_add_explicit((*(&v15 + 1) + 8), 1uLL, memory_order_relaxed);
    *a2 = v15;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    *(a2 + 32) = v9;
    *(a2 + 40) = v14;
    if (!atomic_fetch_add((*(&v15 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(**(&v15 + 1) + 16))(*(&v15 + 1));

      std::__shared_weak_count::__release_weak(*(&v15 + 1));
    }
  }

  else
  {
    *a2 = v15;
    *(a2 + 8) = 0;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    *(a2 + 32) = v9;
    *(a2 + 40) = v14;
  }
}

void sub_23F08CB78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
  _Unwind_Resume(a1);
}

void sub_23F08CBC8(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E3947B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3947B8))
  {
    sub_23F08D424();
  }

  if ((atomic_load_explicit(&qword_27E3947D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3947D8))
    {
      sub_23F08D89C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", &unk_27E3947A0, " from an ", &unk_27E3947C0, " but the image is of incompatible format ");
}

void sub_23F08CCE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v11 = v9;
  v12 = a1;
  v13 = v9;
  v14 = a1;
  v15 = a1;
  v16 = &v11;
  sub_23F082504(&v16);
  v11 = v9;
  v12 = a2;
  v13 = v9;
  v14 = a2;
  v15 = a2;
  if (v10 != -1)
  {
    v16 = &v11;
    (off_28517D950[v10])(&v16, v9);
    v11 = v9;
    v12 = a3;
    v13 = v9;
    v14 = a3;
    v15 = a3;
    if (v10 != -1)
    {
      v16 = &v11;
      (off_28517D968[v10])(&v16, v9);
      v11 = v9;
      v12 = a4;
      v13 = v9;
      v14 = a4;
      v15 = a4;
      if (v10 != -1)
      {
        v16 = &v11;
        (off_28517D950[v10])(&v16, v9);
        v11 = v9;
        v12 = a5;
        v13 = v9;
        v14 = a5;
        v15 = a5;
        if (v10 != -1)
        {
          v16 = &v11;
          (off_28517D980[v10])(&v16, v9);
          sub_23F07F300();
        }

        sub_23EF41D6C();
      }

      sub_23EF41D6C();
    }

    sub_23EF41D6C();
  }

  sub_23EF41D6C();
}

_BYTE *sub_23F08CF68(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_23F08D274(a2, v3);
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

void sub_23F08D068(uint64_t *a1, uint64_t a2)
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
    (off_28517D8D8[v9])(&v12, v2);
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

void sub_23F08D228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_23F08D274(uint64_t a1, const char *a2)
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

void sub_23F08D410(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3522C(va);
  _Unwind_Resume(a1);
}

void sub_23F08D494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F08D4B0()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Gray8u]", 30, &v0);
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

void sub_23F08D754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
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

void sub_23F08D90C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F08D928(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F08D9E0(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
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
  }

  return result;
}

void sub_23F08DA84(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 48) != 2)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F08DDE8(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v15 = v4;
      *(&v15 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v15 = v4;
    }
  }

  else
  {
    v15 = 0uLL;
  }

  v6 = *(a1 + 24);
  v7 = v6 == 0;
  if (!*(a1 + 28))
  {
    v7 = 1;
  }

  v8 = (*(a1 + 32) << 31) & 0x7FFFFFFF00000000;
  if (v7)
  {
    v8 = 0;
  }

  if (v6)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(a1 + 40);
  if (v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + 24);
  }

  if (HIDWORD(v11) * HIDWORD(v8) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v12 = qword_27E396178, v13 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_27;
      }
    }

    else
    {
      v12 = qword_27E396178;
      v13 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_35;
      }
    }

    do
    {
      (*v12)(*(v12 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v12 += 16;
    }

    while (v12 != v13);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_35:
    abort();
  }

LABEL_27:
  v14 = *(a1 + 52);
  if (*(&v15 + 1))
  {
    atomic_fetch_add_explicit((*(&v15 + 1) + 8), 1uLL, memory_order_relaxed);
    *a2 = v15;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    *(a2 + 32) = v9;
    *(a2 + 40) = v14;
    if (!atomic_fetch_add((*(&v15 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(**(&v15 + 1) + 16))(*(&v15 + 1));

      std::__shared_weak_count::__release_weak(*(&v15 + 1));
    }
  }

  else
  {
    *a2 = v15;
    *(a2 + 8) = 0;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    *(a2 + 32) = v9;
    *(a2 + 40) = v14;
  }
}

void sub_23F08DD98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
  _Unwind_Resume(a1);
}

void sub_23F08DDE8(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E3947F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3947F8))
  {
    sub_23F08DF00();
  }

  if ((atomic_load_explicit(&qword_27E3947D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3947D8))
    {
      sub_23F08D89C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", &unk_27E3947E0, " from an ", &unk_27E3947C0, " but the image is of incompatible format ");
}

void sub_23F08DF70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F08DF8C()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Gray16u]", 31, &v0);
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

void sub_23F08E230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
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

void sub_23F08E378(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F08E430(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
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
  }

  return result;
}

void sub_23F08E4D4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 21)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F08E8C8(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v23 = v4;
      *(&v23 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v23 = v4;
    }
  }

  else
  {
    v23 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24) == 0;
  if (*(a1 + 24))
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  if (!*(a1 + 28))
  {
    v7 = 1;
  }

  v9 = !v7;
  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(a1 + 32) << 32;
  }

  v11 = v10 | v8;
  v12 = *(a1 + 24);
  if (!v9)
  {
    v12 = 0;
  }

  *(&v24 + 4) = v12;
  v13 = v12;
  LODWORD(v24) = 3;
  v14 = v24;
  v15 = HIDWORD(v12);
  LODWORD(v25) = 1;
  HIDWORD(v25) = v11;
  v16 = v25;
  v17 = HIDWORD(v10);
  if (HIDWORD(v12) * HIDWORD(v10) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v18 = qword_27E396178, v19 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v16 = v25;
        goto LABEL_27;
      }
    }

    else
    {
      v18 = qword_27E396178;
      v19 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v18)(*(v18 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v18 += 16;
    }

    while (v18 != v19);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v20 = *(a1 + 52);
  if (*(&v23 + 1))
  {
    atomic_fetch_add_explicit((*(&v23 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v23;
  *(a2 + 16) = v6;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 36) = v16;
  *(a2 + 44) = v17;
  *(a2 + 48) = v13;
  *(a2 + 56) = v11;
  *(a2 + 64) = v20;
  if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v23 + 1) + 16))(*(&v23 + 1));
    v22 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(*(&v23 + 1));
  }

  else
  {
    v21 = *MEMORY[0x277D85DE8];
  }
}

void sub_23F08E878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_23F08E8C8(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E394818, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394818))
  {
    sub_23F08E9E0();
  }

  if ((atomic_load_explicit(&qword_27E3947D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3947D8))
    {
      sub_23F08D89C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394800, " from an ", &unk_27E3947C0, " but the image is of incompatible format ");
}

void sub_23F08EA50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F08EA6C()
{
  v2[6] = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Rgb8u]", 29, &v0);
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

void sub_23F08ED10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
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

uint64_t sub_23F08EE58(uint64_t result)
{
  v1 = *(result + 16);
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

void sub_23F08EED0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F08EF88(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
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
  }

  return result;
}

void sub_23F08F02C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 48) != 1)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F08F38C(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v15 = v4;
      *(&v15 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v15 = v4;
    }
  }

  else
  {
    v15 = 0uLL;
  }

  v6 = *(a1 + 24);
  v7 = v6 == 0;
  if (!*(a1 + 28))
  {
    v7 = 1;
  }

  v8 = *(a1 + 32) << 32;
  if (v7)
  {
    v8 = 0;
  }

  if (v6)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(a1 + 40);
  if (v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + 24);
  }

  if (HIDWORD(v11) * HIDWORD(v8) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v12 = qword_27E396178, v13 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_27;
      }
    }

    else
    {
      v12 = qword_27E396178;
      v13 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_35;
      }
    }

    do
    {
      (*v12)(*(v12 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v12 += 16;
    }

    while (v12 != v13);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_35:
    abort();
  }

LABEL_27:
  v14 = *(a1 + 52);
  if (*(&v15 + 1))
  {
    atomic_fetch_add_explicit((*(&v15 + 1) + 8), 1uLL, memory_order_relaxed);
    *a2 = v15;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    *(a2 + 32) = v9;
    *(a2 + 40) = v14;
    if (!atomic_fetch_add((*(&v15 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(**(&v15 + 1) + 16))(*(&v15 + 1));

      std::__shared_weak_count::__release_weak(*(&v15 + 1));
    }
  }

  else
  {
    *a2 = v15;
    *(a2 + 8) = 0;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    *(a2 + 32) = v9;
    *(a2 + 40) = v14;
  }
}

void sub_23F08F33C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
  _Unwind_Resume(a1);
}

void sub_23F08F38C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E394738, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394738))
  {
    sub_23F08F4A4();
  }

  if ((atomic_load_explicit(&qword_27E394758, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E394758))
    {
      sub_23F08F52C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394720, " from an ", &unk_27E394740, " but the image is of incompatible format ");
}

void sub_23F08F510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F08F598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F08F5B4(uint64_t a1, void *a2)
{
  if (*(a1 + 8) != *a1)
  {
    *(a1 + 8) = *a1;
  }

  v4 = std::istream::peek();
  if ((*(a2 + *(*a2 - 24) + 32) & 2) == 0)
  {
    v5 = v4;
    do
    {
      sub_23F08C378("0123456789", v31);
      v7 = v32;
      if ((v32 & 0x80u) == 0)
      {
        v8 = v31;
      }

      else
      {
        v8 = v31[0];
      }

      if ((v32 & 0x80u) != 0)
      {
        v7 = v31[1];
      }

      if (v7)
      {
        v9 = (v7 - 1);
        do
        {
          v10 = *v8;
          v8 = (v8 + 1);
          v11 = v10 == v5;
        }

        while (v10 != v5 && v9-- != 0);
        if ((v32 & 0x80000000) == 0)
        {
LABEL_20:
          if (!v11)
          {
            break;
          }

          goto LABEL_24;
        }
      }

      else
      {
        v11 = 0;
        if ((v32 & 0x80000000) == 0)
        {
          goto LABEL_20;
        }
      }

      operator delete(v31[0]);
      if (!v11)
      {
        break;
      }

LABEL_24:
      v14 = *(a1 + 8);
      v13 = *(a1 + 16);
      if (v14 < v13)
      {
        *v14 = v5;
        v6 = v14 + 1;
      }

      else
      {
        v15 = *a1;
        v16 = &v14[-*a1];
        v17 = (v16 + 1);
        if ((v16 + 1) < 0)
        {
          goto LABEL_48;
        }

        v18 = v13 - v15;
        if (2 * v18 > v17)
        {
          v17 = 2 * v18;
        }

        if (v18 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v19 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          operator new();
        }

        v20 = &v14[-*a1];
        *v16 = v5;
        v6 = v16 + 1;
        memcpy(0, v15, v20);
        *a1 = 0;
        *(a1 + 8) = v16 + 1;
        *(a1 + 16) = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      *(a1 + 8) = v6;
      std::istream::seekg();
      v5 = std::istream::peek();
    }

    while ((*(a2 + *(*a2 - 24) + 32) & 2) == 0);
  }

  v22 = *(a1 + 8);
  v21 = *(a1 + 16);
  if (v22 >= v21)
  {
    v24 = *a1;
    v25 = &v22[-*a1];
    v26 = (v25 + 1);
    if ((v25 + 1) < 0)
    {
LABEL_48:
      sub_23EF3AE74();
    }

    v27 = v21 - v24;
    if (2 * v27 > v26)
    {
      v26 = 2 * v27;
    }

    if (v27 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v28 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v28 = v26;
    }

    if (v28)
    {
      operator new();
    }

    v29 = &v22[-*a1];
    *v25 = 10;
    v23 = v25 + 1;
    memcpy(0, v24, v29);
    *a1 = 0;
    *(a1 + 8) = v25 + 1;
    *(a1 + 16) = 0;
    if (v24)
    {
      operator delete(v24);
    }
  }

  else
  {
    *v22 = 10;
    v23 = v22 + 1;
  }

  *(a1 + 8) = v23;
  return atoi(*a1);
}

uint64_t sub_23F08F85C(uint64_t result)
{
  v1 = *(result + 16);
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

void sub_23F08F8D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F08F98C(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
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
  }

  return result;
}

void sub_23F08FA30(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 48) != 2)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F08FD94(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v15 = v4;
      *(&v15 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v15 = v4;
    }
  }

  else
  {
    v15 = 0uLL;
  }

  v6 = *(a1 + 24);
  v7 = v6 == 0;
  if (!*(a1 + 28))
  {
    v7 = 1;
  }

  v8 = (*(a1 + 32) << 31) & 0x7FFFFFFF00000000;
  if (v7)
  {
    v8 = 0;
  }

  if (v6)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(a1 + 40);
  if (v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + 24);
  }

  if (HIDWORD(v11) * HIDWORD(v8) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v12 = qword_27E396178, v13 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_27;
      }
    }

    else
    {
      v12 = qword_27E396178;
      v13 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_35;
      }
    }

    do
    {
      (*v12)(*(v12 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v12 += 16;
    }

    while (v12 != v13);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_35:
    abort();
  }

LABEL_27:
  v14 = *(a1 + 52);
  if (*(&v15 + 1))
  {
    atomic_fetch_add_explicit((*(&v15 + 1) + 8), 1uLL, memory_order_relaxed);
    *a2 = v15;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    *(a2 + 32) = v9;
    *(a2 + 40) = v14;
    if (!atomic_fetch_add((*(&v15 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(**(&v15 + 1) + 16))(*(&v15 + 1));

      std::__shared_weak_count::__release_weak(*(&v15 + 1));
    }
  }

  else
  {
    *a2 = v15;
    *(a2 + 8) = 0;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    *(a2 + 32) = v9;
    *(a2 + 40) = v14;
  }
}

void sub_23F08FD44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
  _Unwind_Resume(a1);
}

void sub_23F08FD94(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E394778, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394778))
  {
    sub_23F08FEAC();
  }

  if ((atomic_load_explicit(&qword_27E394758, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E394758))
    {
      sub_23F08F52C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394760, " from an ", &unk_27E394740, " but the image is of incompatible format ");
}

void sub_23F08FF18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F08FF34(uint64_t result)
{
  v1 = *(result + 16);
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

void sub_23F08FFAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F090064(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
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
  }

  return result;
}

void sub_23F090108(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 21)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_23F0904FC(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v23 = v4;
      *(&v23 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v23 = v4;
    }
  }

  else
  {
    v23 = 0uLL;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 24) == 0;
  if (*(a1 + 24))
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  if (!*(a1 + 28))
  {
    v7 = 1;
  }

  v9 = !v7;
  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(a1 + 32) << 32;
  }

  v11 = v10 | v8;
  v12 = *(a1 + 24);
  if (!v9)
  {
    v12 = 0;
  }

  *(&v24 + 4) = v12;
  v13 = v12;
  LODWORD(v24) = 3;
  v14 = v24;
  v15 = HIDWORD(v12);
  LODWORD(v25) = 1;
  HIDWORD(v25) = v11;
  v16 = v25;
  v17 = HIDWORD(v10);
  if (HIDWORD(v12) * HIDWORD(v10) == -1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v18 = qword_27E396178, v19 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_26:
        qword_27E396190(*algn_27E396198, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        v16 = v25;
        goto LABEL_27;
      }
    }

    else
    {
      v18 = qword_27E396178;
      v19 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_36;
      }
    }

    do
    {
      (*v18)(*(v18 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v18 += 16;
    }

    while (v18 != v19);
    if (byte_27E3961A0)
    {
      goto LABEL_26;
    }

LABEL_36:
    abort();
  }

LABEL_27:
  v20 = *(a1 + 52);
  if (*(&v23 + 1))
  {
    atomic_fetch_add_explicit((*(&v23 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = v23;
  *(a2 + 16) = v6;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 36) = v16;
  *(a2 + 44) = v17;
  *(a2 + 48) = v13;
  *(a2 + 56) = v11;
  *(a2 + 64) = v20;
  if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v23 + 1) + 16))(*(&v23 + 1));
    v22 = *MEMORY[0x277D85DE8];

    std::__shared_weak_count::__release_weak(*(&v23 + 1));
  }

  else
  {
    v21 = *MEMORY[0x277D85DE8];
  }
}

void sub_23F0904AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  _Unwind_Resume(a1);
}

void sub_23F0904FC(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E394798, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394798))
  {
    sub_23F090614();
  }

  if ((atomic_load_explicit(&qword_27E394758, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E394758))
    {
      sub_23F08F52C();
    }
  }

  v2 = *(a1 + 48);
  sub_23F08CCE0("Attempting to create an ", &unk_27E394780, " from an ", &unk_27E394740, " but the image is of incompatible format ");
}

void sub_23F090680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F09069C(uint64_t result)
{
  v1 = *(result + 16);
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

void sub_23F090714(_DWORD *a1)
{
  v1[10] = &unk_28517DF28;
  sub_23F249FA8(a1, v1);
  operator new();
}

void sub_23F09093C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  sub_23EF3AE8C(v10);
  sub_23EF3AE8C(&a10);
  sub_23F085E00(&a9);
  _Unwind_Resume(a1);
}

void sub_23F090984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  if (a18)
  {
    free(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F09099C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F090A54(uint64_t a1)
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

uint64_t *sub_23F090B04()
{
  if ((atomic_load_explicit(&qword_27E394838, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394838))
  {
    sub_23F090BA0();
  }

  if (byte_27E394837 >= 0)
  {
    return &qword_27E394820;
  }

  else
  {
    return qword_27E394820;
  }
}

void sub_23F090C6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F090C9C(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_23F302E84("cv3d::kit::img::Format::Gray16u]", 31, &v10);
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

void sub_23F090D80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F090DBC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F090DF4(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 48);
    if (v2)
    {
      free(v2);
    }

    *(v1 + 48) = 0;

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F090E58(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE2EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE2EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE2EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3img16ArrayImageBufferILNS3_6FormatE2EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_23F090EB8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (!*(a3 + 32) || !*(a3 + 36))
  {
    return;
  }

  v6 = *(a3 + 32);
  v30 = 0;
  v31 = v6;
  __p = 0;
  v29 = 0;
  if (*(a4 + 24) != 1)
  {
    operator new();
  }

  v8 = *(a4 + 8);
  v9 = *(a4 + 16);
  __p = *a4;
  v7 = __p;
  v29 = v8;
  v30 = v9;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  if (v7 != v8)
  {
    if (v8 - v7 != 8)
    {
      goto LABEL_8;
    }

    goto LABEL_47;
  }

  if (v7 >= v9)
  {
    v18 = (v9 - v7) >> 2;
    if (v18 <= 1)
    {
      v18 = 1;
    }

    if (v9 - v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v19 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v18;
    }

    if (!(v19 >> 61))
    {
      operator new();
    }

    sub_23EF34E18();
  }

  *v8++ = " ";
  v29 = v8;
  if (v8 - v7 == 8)
  {
LABEL_47:
    if (v8 >= v9)
    {
      if (((v9 - v7) >> 2) <= 2)
      {
        v20 = 2;
      }

      else
      {
        v20 = (v9 - v7) >> 2;
      }

      if (v9 - v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v21 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v20;
      }

      if (!(v21 >> 61))
      {
        operator new();
      }

      sub_23EF34E18();
    }

    *v8++ = "\n";
    v29 = v8;
  }

LABEL_8:
  v10 = (v8 - v7) >> 3;
  v27 = v10 - 1;
  if (v10 <= 1)
  {
    do
    {
      if (v8 >= v9)
      {
        if ((v9 - v7) >> 2 <= v10 + 1)
        {
          v11 = v10 + 1;
        }

        else
        {
          v11 = (v9 - v7) >> 2;
        }

        if (v9 - v7 >= 0x7FFFFFFFFFFFFFF8)
        {
          v12 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        if (!(v12 >> 61))
        {
          operator new();
        }

        sub_23EF34E18();
      }

      *v8++ = "\n";
      v29 = v8;
      v10 = (v8 - v7) >> 3;
    }

    while (v10 < 2);
  }

  v25[0] = &v26;
  v25[1] = &v31;
  v25[2] = &__p;
  v25[3] = &v27;
  v25[4] = a1;
  v26 = 0;
  LOBYTE(v23[0]) = 0;
  v32 = -1;
  v33 = v23;
  v34 = &v32;
  sub_23F091318(a3, &v33);
  v13 = v32;
  if (v32)
  {
    LOBYTE(v14) = 0;
    do
    {
      LOBYTE(v14) = v14 + 1;
      v15 = v13 > 9;
      v13 /= 0xAu;
    }

    while (v15);
    v16 = LOBYTE(v23[0]);
    if (LOBYTE(v23[0]))
    {
      goto LABEL_24;
    }
  }

  else
  {
    LOBYTE(v14) = 0;
    v16 = LOBYTE(v23[0]);
    if (LOBYTE(v23[0]))
    {
LABEL_24:
      v17 = 0;
      do
      {
        ++v17;
        v15 = v16 > 9;
        v16 /= 0xAu;
      }

      while (v15);
      goto LABEL_29;
    }
  }

  v17 = 0;
LABEL_29:
  LODWORD(v14) = v14;
  if (v17 > v14)
  {
    LODWORD(v14) = v17;
  }

  if (v14 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v14;
  }

  v24[0] = v14;
  v24[1] = 0;
  v23[0] = a2;
  v23[1] = v24;
  v33 = 0;
  sub_23F09155C(a1, a2, &v33, 1u, v27);
  v33 = v23;
  v34 = v25;
  v35 = a2;
  sub_23F091718(a3, &v33);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }
}

void sub_23F0912E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (v23)
  {
    operator delete(v23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F091318(uint64_t result, unsigned __int8 **a2)
{
  v3 = *(result + 32);
  v2 = *(result + 36);
  if (v3)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return result;
  }

  v5 = v2 - 1;
  v6 = *(result + 40);
  v7 = *(result + 44);
  v8 = *(result + 24);
  if (*(result + 48) == 1 && v8 != 0)
  {
    v10 = a2;
    v11 = result;
    v12 = *(result + 8);
    v13 = v11;
    v14 = *(v11 + 16);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v15 = v12;
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
        v12 = v15;
      }
    }

    result = (*(*v12 + 88))(v12, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
    v8 = *(v13 + 24);
    a2 = v10;
  }

  v16 = v3 - 1;
  if (v5)
  {
    if (v3 != 1)
    {
      for (i = 0; i != v5; ++i)
      {
        v18 = v3 - 1;
        v19 = v8;
        do
        {
          v20 = **a2;
          if (v20 <= *v19)
          {
            LOBYTE(v20) = *v19;
          }

          **a2 = v20;
          v21 = a2[1];
          v22 = *v19;
          if (v22 >= *v21)
          {
            LOBYTE(v22) = *v21;
          }

          *v21 = v22;
          v19 += v6;
          --v18;
        }

        while (v18);
        v23 = **a2;
        if (v23 <= *v19)
        {
          LOBYTE(v23) = *v19;
        }

        **a2 = v23;
        v24 = a2[1];
        v25 = *v19;
        if (v25 >= *v24)
        {
          LOBYTE(v25) = *v24;
        }

        *v24 = v25;
        v8 += v7;
      }

      goto LABEL_34;
    }

    do
    {
      v26 = **a2;
      if (v26 <= *v8)
      {
        LOBYTE(v26) = *v8;
      }

      **a2 = v26;
      v27 = a2[1];
      v28 = *v8;
      if (v28 >= *v27)
      {
        LOBYTE(v28) = *v27;
      }

      *v27 = v28;
      v8 += v7;
      --v5;
    }

    while (v5);
  }

  if (v3 != 1)
  {
    do
    {
LABEL_34:
      v29 = **a2;
      if (v29 <= *v8)
      {
        LOBYTE(v29) = *v8;
      }

      **a2 = v29;
      v30 = a2[1];
      v31 = *v8;
      if (v31 >= *v30)
      {
        LOBYTE(v31) = *v30;
      }

      *v30 = v31;
      v8 += v6;
      --v16;
    }

    while (v16);
  }

  v32 = **a2;
  if (v32 <= *v8)
  {
    LOBYTE(v32) = *v8;
  }

  **a2 = v32;
  v33 = a2[1];
  v34 = *v8;
  if (v34 >= *v33)
  {
    LOBYTE(v34) = *v33;
  }

  *v33 = v34;
  return result;
}

void sub_23F09155C(uint64_t a1, void *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  if (a4 > a5)
  {
    v7 = 4 * a4;
    v13 = *a3;
    ++*(&v13 + v7);
    sub_23EF2F9B0(a2, "[", 1);
    std::to_string(&v14, a4);
    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v14;
    }

    else
    {
      v8 = v14.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v14.__r_.__value_.__l.__size_;
    }

    sub_23EF2F9B0(a2, v8, size);
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    sub_23EF2F9B0(a2, "d-slice #", 9);
    std::to_string(&v14, *(a3 + v7));
    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v14;
    }

    else
    {
      v10 = v14.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v11 = v14.__r_.__value_.__l.__size_;
    }

    sub_23EF2F9B0(a2, v10, v11);
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    sub_23EF2F9B0(a2, ": ", 2);
    sub_23F091830();
  }
}

void sub_23F0916F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F091718(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 36);
  if (v5)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v16 = v2;
    v17 = v3;
    v14[0] = 0;
    v14[1] = v5 - 1;
    v8 = *(a1 + 44);
    v14[2] = *(a1 + 40);
    v14[3] = v4 - 1;
    v14[4] = v8;
    v9 = *(a1 + 24);
    if (*(a1 + 48) == 1 && v9)
    {
      v10 = *(a1 + 8);
      v11 = *(a1 + 16);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v13 = v10;
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
          v10 = v13;
        }
      }

      (*(*v10 + 88))(v10, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
      v9 = *(a1 + 24);
    }

    v15 = 0;
    sub_23F091B34(v14, &v15, a2, v9);
  }
}

void sub_23F091AAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F091B34(_DWORD *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  if (a1[3])
  {
    v7 = 0;
    while (1)
    {
      v22 = v7;
      v8 = a4;
      if (a1[1])
      {
        break;
      }

LABEL_3:
      sub_23F091D24(a3, v8);
      a4 += a1[4];
      v7 = v22 + 1;
      if ((v22 + 1) >= a1[3])
      {
        goto LABEL_14;
      }
    }

    v9 = 0;
    v8 = a4;
    while (1)
    {
      v12 = **a3;
      v13 = **(*a3 + 8);
      v24 = 0;
      std::to_string(&v25, *v8);
      __p[0] = v25;
      sub_23F2AC924(v12, __p, v13);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      v15 = *(a3 + 8);
      v14 = *(a3 + 16);
      v16 = *(v15 + 32);
      v17 = *v15;
      v18 = *(v15 + 8);
      v19 = **v15 + 1;
      **v15 = v19;
      if (v19 == *v18)
      {
        v20 = *(v17 + 1) + 1;
        *v17 = 0;
        *(v17 + 1) = v20;
        if (v20 == v18[1])
        {
          goto LABEL_8;
        }

        v10 = 1;
      }

      else
      {
        v10 = 0;
      }

      v11 = strlen(*(**(v15 + 16) + 8 * v10));
      sub_23EF2F9B0(v14, *(**(v15 + 16) + 8 * v10), v11);
      sub_23F09155C(v16, v14, *v15, v10, **(v15 + 24));
LABEL_8:
      v8 += a1[2];
      if (++v9 >= a1[1])
      {
        goto LABEL_3;
      }
    }
  }

LABEL_14:
  if (a1[1])
  {
    v21 = 0;
    do
    {
      sub_23F091D24(a3, a4);
      a4 += a1[2];
      ++v21;
    }

    while (v21 < a1[1]);
  }

  sub_23F091D24(a3, a4);
}

void sub_23F091D24(uint64_t a1, unsigned __int8 *a2)
{
  v3 = **a1;
  v4 = **(*a1 + 8);
  v15 = 0;
  std::to_string(&v16, *a2);
  __p[0] = v16;
  sub_23F2AC924(v3, __p, v4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(v6 + 32);
  v8 = *v6;
  v9 = *(v6 + 8);
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = *(v8 + 1) + 1;
    *v8 = 0;
    *(v8 + 1) = v11;
    if (v11 == v9[1])
    {
      return;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = strlen(*(**(v6 + 16) + 8 * v12));
  sub_23EF2F9B0(v5, *(**(v6 + 16) + 8 * v12), v13);
  sub_23F09155C(v7, v5, *v6, v12, **(v6 + 24));
}

void sub_23F091E30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F091E60(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  if (!*(a3 + 32) || !*(a3 + 36))
  {
    return;
  }

  v6 = *(a3 + 32);
  v30 = 0;
  v31 = v6;
  __p = 0;
  v29 = 0;
  if (*(a4 + 24) != 1)
  {
    operator new();
  }

  v8 = *(a4 + 8);
  v9 = *(a4 + 16);
  __p = *a4;
  v7 = __p;
  v29 = v8;
  v30 = v9;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  if (v7 != v8)
  {
    if (v8 - v7 != 8)
    {
      goto LABEL_8;
    }

    goto LABEL_47;
  }

  if (v7 >= v9)
  {
    v18 = (v9 - v7) >> 2;
    if (v18 <= 1)
    {
      v18 = 1;
    }

    if (v9 - v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v19 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v18;
    }

    if (!(v19 >> 61))
    {
      operator new();
    }

    sub_23EF34E18();
  }

  *v8++ = " ";
  v29 = v8;
  if (v8 - v7 == 8)
  {
LABEL_47:
    if (v8 >= v9)
    {
      if (((v9 - v7) >> 2) <= 2)
      {
        v20 = 2;
      }

      else
      {
        v20 = (v9 - v7) >> 2;
      }

      if (v9 - v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v21 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v20;
      }

      if (!(v21 >> 61))
      {
        operator new();
      }

      sub_23EF34E18();
    }

    *v8++ = "\n";
    v29 = v8;
  }

LABEL_8:
  v10 = (v8 - v7) >> 3;
  v27 = v10 - 1;
  if (v10 <= 1)
  {
    do
    {
      if (v8 >= v9)
      {
        if ((v9 - v7) >> 2 <= v10 + 1)
        {
          v11 = v10 + 1;
        }

        else
        {
          v11 = (v9 - v7) >> 2;
        }

        if (v9 - v7 >= 0x7FFFFFFFFFFFFFF8)
        {
          v12 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        if (!(v12 >> 61))
        {
          operator new();
        }

        sub_23EF34E18();
      }

      *v8++ = "\n";
      v29 = v8;
      v10 = (v8 - v7) >> 3;
    }

    while (v10 < 2);
  }

  v25[0] = &v26;
  v25[1] = &v31;
  v25[2] = &__p;
  v25[3] = &v27;
  v25[4] = a1;
  v26 = 0;
  LOWORD(v23[0]) = 0;
  v32 = -1;
  v33 = v23;
  v34 = &v32;
  sub_23F0922C0(a3, &v33);
  v13 = v32;
  if (v32)
  {
    LOBYTE(v14) = 0;
    do
    {
      LOBYTE(v14) = v14 + 1;
      v15 = v13 > 9;
      v13 /= 0xAu;
    }

    while (v15);
    v16 = LOWORD(v23[0]);
    if (LOWORD(v23[0]))
    {
      goto LABEL_24;
    }
  }

  else
  {
    LOBYTE(v14) = 0;
    v16 = LOWORD(v23[0]);
    if (LOWORD(v23[0]))
    {
LABEL_24:
      v17 = 0;
      do
      {
        ++v17;
        v15 = v16 > 9;
        v16 /= 0xAu;
      }

      while (v15);
      goto LABEL_29;
    }
  }

  v17 = 0;
LABEL_29:
  LODWORD(v14) = v14;
  if (v17 > v14)
  {
    LODWORD(v14) = v17;
  }

  if (v14 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v14;
  }

  v24[0] = v14;
  v24[1] = 0;
  v23[0] = a2;
  v23[1] = v24;
  v33 = 0;
  sub_23F09155C(a1, a2, &v33, 1u, v27);
  v33 = v23;
  v34 = v25;
  v35 = a2;
  sub_23F092524(a3, &v33);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }
}

void sub_23F092288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (v23)
  {
    operator delete(v23);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_23F0922C0(unint64_t result, uint64_t a2)
{
  v5 = *(result + 32);
  v4 = *(result + 36);
  if (v5)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v16 = v2;
    v17 = v3;
    v14[0] = 0;
    v14[1] = v5 - 1;
    v8 = *(result + 44);
    v14[2] = *(result + 40);
    v14[3] = v4 - 1;
    v14[4] = v8;
    v9 = *(result + 24);
    if (*(result + 48) == 1 && v9)
    {
      v10 = *(result + 8);
      v11 = *(result + 16);
      v12 = result;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v13 = v10;
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
          v10 = v13;
        }
      }

      (*(*v10 + 88))(v10, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
      v9 = *(v12 + 24);
    }

    v15 = 0;
    return sub_23F0923D8(v14, &v15, a2, v9);
  }

  return result;
}

unint64_t sub_23F0923D8(unint64_t result, uint64_t a2, uint64_t a3, _WORD *a4)
{
  v4 = *(result + 12);
  v5 = *(result + 4);
  if (!v4)
  {
    v7 = *a3;
    v6 = *(a3 + 8);
    if (!v5)
    {
      goto LABEL_30;
    }

    v10 = *(result + 8);
    goto LABEL_18;
  }

  v7 = *a3;
  v6 = *(a3 + 8);
  v8 = *(result + 16);
  if (v5)
  {
    v9 = 0;
    v10 = *(result + 8);
    v11 = 2 * v8;
    do
    {
      v12 = a4;
      v13 = v5;
      do
      {
        v14 = *v7;
        if (v14 <= *v12)
        {
          LOWORD(v14) = *v12;
        }

        *v7 = v14;
        v15 = *v12;
        if (v15 >= *v6)
        {
          LOWORD(v15) = *v6;
        }

        *v6 = v15;
        v12 += v10;
        --v13;
      }

      while (v13);
      v16 = *v7;
      result = *v12;
      if (v16 <= result)
      {
        LOWORD(v16) = *v12;
      }

      *v7 = v16;
      v17 = *v12;
      if (v17 >= *v6)
      {
        LOWORD(v17) = *v6;
      }

      *v6 = v17;
      a4 = (a4 + v11);
      ++v9;
    }

    while (v9 != v4);
LABEL_18:
    v18 = 2 * v10;
    do
    {
      v19 = *v7;
      if (v19 <= *a4)
      {
        LOWORD(v19) = *a4;
      }

      *v7 = v19;
      v20 = *a4;
      if (v20 >= *v6)
      {
        LOWORD(v20) = *v6;
      }

      *v6 = v20;
      a4 = (a4 + v18);
      --v5;
    }

    while (v5);
    goto LABEL_30;
  }

  do
  {
    v21 = *v7;
    if (v21 <= *a4)
    {
      LOWORD(v21) = *a4;
    }

    *v7 = v21;
    v22 = *a4;
    if (v22 >= *v6)
    {
      LOWORD(v22) = *v6;
    }

    *v6 = v22;
    a4 += v8;
    --v4;
  }

  while (v4);
LABEL_30:
  v23 = *v7;
  if (v23 <= *a4)
  {
    LOWORD(v23) = *a4;
  }

  *v7 = v23;
  v24 = *a4;
  if (v24 >= *v6)
  {
    LOWORD(v24) = *v6;
  }

  *v6 = v24;
  return result;
}

void sub_23F092524(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 36);
  if (v5)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v16 = v2;
    v17 = v3;
    v14[0] = 0;
    v14[1] = v5 - 1;
    v8 = *(a1 + 44);
    v14[2] = *(a1 + 40);
    v14[3] = v4 - 1;
    v14[4] = v8;
    v9 = *(a1 + 24);
    if (*(a1 + 48) == 1 && v9)
    {
      v10 = *(a1 + 8);
      v11 = *(a1 + 16);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v13 = v10;
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
          v10 = v13;
        }
      }

      (*(*v10 + 88))(v10, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
      v9 = *(a1 + 24);
    }

    v15 = 0;
    sub_23F09263C(v14, &v15, a2, v9);
  }
}

void sub_23F09263C(_DWORD *a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4)
{
  if (a1[3])
  {
    v7 = 0;
    while (1)
    {
      v22 = v7;
      v8 = a4;
      if (a1[1])
      {
        break;
      }

LABEL_3:
      sub_23F09282C(a3, v8);
      a4 += a1[4];
      v7 = v22 + 1;
      if ((v22 + 1) >= a1[3])
      {
        goto LABEL_14;
      }
    }

    v9 = 0;
    v8 = a4;
    while (1)
    {
      v12 = **a3;
      v13 = **(*a3 + 8);
      v24 = 0;
      std::to_string(&v25, *v8);
      __p[0] = v25;
      sub_23F2AC924(v12, __p, v13);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      v15 = *(a3 + 8);
      v14 = *(a3 + 16);
      v16 = *(v15 + 32);
      v17 = *v15;
      v18 = *(v15 + 8);
      v19 = **v15 + 1;
      **v15 = v19;
      if (v19 == *v18)
      {
        v20 = *(v17 + 1) + 1;
        *v17 = 0;
        *(v17 + 1) = v20;
        if (v20 == v18[1])
        {
          goto LABEL_8;
        }

        v10 = 1;
      }

      else
      {
        v10 = 0;
      }

      v11 = strlen(*(**(v15 + 16) + 8 * v10));
      sub_23EF2F9B0(v14, *(**(v15 + 16) + 8 * v10), v11);
      sub_23F09155C(v16, v14, *v15, v10, **(v15 + 24));
LABEL_8:
      v8 += a1[2];
      if (++v9 >= a1[1])
      {
        goto LABEL_3;
      }
    }
  }

LABEL_14:
  if (a1[1])
  {
    v21 = 0;
    do
    {
      sub_23F09282C(a3, a4);
      a4 += a1[2];
      ++v21;
    }

    while (v21 < a1[1]);
  }

  sub_23F09282C(a3, a4);
}

void sub_23F09282C(uint64_t a1, unsigned __int16 *a2)
{
  v3 = **a1;
  v4 = **(*a1 + 8);
  v15 = 0;
  std::to_string(&v16, *a2);
  __p[0] = v16;
  sub_23F2AC924(v3, __p, v4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(v6 + 32);
  v8 = *v6;
  v9 = *(v6 + 8);
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = *(v8 + 1) + 1;
    *v8 = 0;
    *(v8 + 1) = v11;
    if (v11 == v9[1])
    {
      return;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = strlen(*(**(v6 + 16) + 8 * v12));
  sub_23EF2F9B0(v5, *(**(v6 + 16) + 8 * v12), v13);
  sub_23F09155C(v7, v5, *v6, v12, **(v6 + 24));
}

void sub_23F092938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F092968(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (!*(a3 + 56) || !*(a3 + 60))
  {
    return;
  }

  v6 = *(a3 + 32);
  v34 = 0;
  v35 = v6;
  v36 = *(a3 + 40);
  __p = 0;
  v33 = 0;
  if (*(a4 + 24) != 1)
  {
    v10 = *(a1 + 8);
    if (v35 <= v10)
    {
      v11 = *(a1 + 12);
      if (v35 <= v11 && HIDWORD(v35) <= v10 && HIDWORD(v35) * v35 <= v11)
      {
        operator new();
      }
    }

    operator new();
  }

  v8 = *(a4 + 8);
  v9 = *(a4 + 16);
  __p = *a4;
  v7 = __p;
  v33 = v8;
  v34 = v9;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  if (v7 != v8)
  {
    if (v8 - v7 != 8)
    {
      goto LABEL_13;
    }

    goto LABEL_60;
  }

  if (v7 >= v9)
  {
    v21 = (v9 - v7) >> 2;
    if (v21 <= 1)
    {
      v21 = 1;
    }

    if (v9 - v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v22 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (!(v22 >> 61))
    {
      operator new();
    }

    sub_23EF34E18();
  }

  *v8++ = " ";
  v33 = v8;
  if (v8 - v7 == 8)
  {
LABEL_60:
    if (v8 >= v9)
    {
      if (((v9 - v7) >> 2) <= 2)
      {
        v23 = 2;
      }

      else
      {
        v23 = (v9 - v7) >> 2;
      }

      if (v9 - v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v24 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v24 = v23;
      }

      if (!(v24 >> 61))
      {
        operator new();
      }

      sub_23EF34E18();
    }

    *v8++ = "\n";
    v33 = v8;
  }

LABEL_13:
  v12 = (v8 - v7) >> 3;
  v31 = v12 - 1;
  if (v12 <= 2)
  {
    do
    {
      if (v8 >= v9)
      {
        if ((v9 - v7) >> 2 <= v12 + 1)
        {
          v13 = v12 + 1;
        }

        else
        {
          v13 = (v9 - v7) >> 2;
        }

        if (v9 - v7 >= 0x7FFFFFFFFFFFFFF8)
        {
          v14 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        if (!(v14 >> 61))
        {
          operator new();
        }

        sub_23EF34E18();
      }

      *v8++ = "\n";
      v33 = v8;
      v12 = (v8 - v7) >> 3;
    }

    while (v12 < 3);
  }

  v28[4] = a1;
  v29 = 0;
  v30 = 0;
  v28[0] = &v29;
  v28[1] = &v35;
  v28[2] = &__p;
  v28[3] = &v31;
  LOBYTE(v41[0]) = 0;
  v37 = -1;
  v38 = v41;
  v39 = &v37;
  if (*(a3 + 32) && *(a3 + 36) && *(a3 + 40))
  {
    v26[0] = &v38;
    sub_23F092E90(v26, a3);
    v15 = a2;
    v16 = v37;
    if (!v37)
    {
      LOBYTE(v17) = 0;
      goto LABEL_33;
    }
  }

  else
  {
    v16 = 255;
    v15 = a2;
  }

  LOBYTE(v17) = 0;
  do
  {
    LOBYTE(v17) = v17 + 1;
    v18 = v16 > 9;
    v16 /= 0xAu;
  }

  while (v18);
LABEL_33:
  v19 = LOBYTE(v41[0]);
  if (LOBYTE(v41[0]))
  {
    v20 = 0;
    do
    {
      ++v20;
      v18 = v19 > 9;
      v19 /= 0xAu;
    }

    while (v18);
  }

  else
  {
    v20 = 0;
  }

  LODWORD(v17) = v17;
  if (v20 > v17)
  {
    LODWORD(v17) = v20;
  }

  if (v17 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = v17;
  }

  v27[0] = v17;
  v27[1] = 0;
  v26[0] = v15;
  v26[1] = v27;
  LODWORD(v39) = 0;
  v38 = 0;
  sub_23F093168(a1, v15, &v38, 2u, v31);
  v38 = v26;
  v39 = v28;
  v40 = v15;
  if (*(a3 + 32) && *(a3 + 36) && *(a3 + 40))
  {
    v41[0] = &v38;
    sub_23F093630(v41, a3);
  }

  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }
}

void sub_23F092E58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (v24)
  {
    operator delete(v24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F092E90(uint64_t result, uint64_t a2)
{
  v5 = *(a2 + 32);
  v4 = *(a2 + 36);
  v6 = *(a2 + 40);
  if (v5)
  {
    v7 = v4 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7 && v6 != 0)
  {
    v21[6] = v2;
    v21[7] = v3;
    v9 = result;
    v18[0] = 0;
    v18[1] = v5 - 1;
    v10 = *(a2 + 48);
    v18[2] = *(a2 + 44);
    v18[3] = v4 - 1;
    v11 = v6 - 1;
    v18[4] = v10;
    v19 = v11;
    v20 = *(a2 + 52);
    v12 = *(a2 + 24);
    if (*(a2 + 72) == 1 && v12)
    {
      v13 = *(a2 + 8);
      v14 = *(a2 + 16);
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v16 = v13;
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
          v13 = v16;
        }
      }

      (*(*v13 + 88))(v13, 0, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
      v12 = *(a2 + 24);
      v11 = v19;
    }

    v21[0] = 0;
    v21[1] = 0;
    if (v11)
    {
      v17 = 0;
      do
      {
        sub_23F092FF0(v18, v21, v9, v12);
        v12 += v20;
        ++v17;
      }

      while (v17 < v19);
    }

    return sub_23F092FF0(v18, v21, v9, v12);
  }

  return result;
}

uint64_t sub_23F092FF0(uint64_t result, uint64_t *a2, void **a3, _BYTE *a4)
{
  *a2 = a4;
  if (*(result + 12))
  {
    v4 = 0;
    do
    {
      *a2 = a4;
      v5 = *a3;
      v6 = **a3;
      v7 = *v6;
      if (v7 <= *a4)
      {
        LOBYTE(v7) = *a4;
      }

      *v6 = v7;
      v8 = v5[1];
      v9 = *a4;
      if (v9 >= *v8)
      {
        LOBYTE(v9) = *v8;
      }

      *v8 = v9;
      v10 = *a3;
      v11 = *a2;
      v12 = **a3;
      v13 = *v12;
      if (v13 <= *(*a2 + 1))
      {
        LOBYTE(v13) = *(*a2 + 1);
      }

      *v12 = v13;
      v14 = v10[1];
      v15 = *(v11 + 1);
      if (v15 >= *v14)
      {
        LOBYTE(v15) = *v14;
      }

      *v14 = v15;
      v16 = *a3;
      v17 = *a2;
      v18 = **a3;
      v19 = *v18;
      if (v19 <= *(*a2 + 2))
      {
        LOBYTE(v19) = *(*a2 + 2);
      }

      *v18 = v19;
      v20 = v16[1];
      v21 = *(v17 + 2);
      if (v21 >= *v20)
      {
        LOBYTE(v21) = *v20;
      }

      *v20 = v21;
      a4 += *(result + 16);
      ++v4;
    }

    while (v4 < *(result + 12));
  }

  *a2 = a4;
  v22 = *a3;
  v23 = **a3;
  v24 = *v23;
  if (v24 <= *a4)
  {
    LOBYTE(v24) = *a4;
  }

  *v23 = v24;
  v25 = v22[1];
  v26 = *a4;
  if (v26 >= *v25)
  {
    LOBYTE(v26) = *v25;
  }

  *v25 = v26;
  v27 = *a3;
  v28 = *a2;
  v29 = **a3;
  v30 = *v29;
  if (v30 <= *(*a2 + 1))
  {
    LOBYTE(v30) = *(*a2 + 1);
  }

  *v29 = v30;
  v31 = v27[1];
  v32 = *(v28 + 1);
  if (v32 >= *v31)
  {
    LOBYTE(v32) = *v31;
  }

  *v31 = v32;
  v33 = *a3;
  v34 = *a2;
  v35 = **a3;
  v36 = *v35;
  if (v36 <= *(*a2 + 2))
  {
    LOBYTE(v36) = *(*a2 + 2);
  }

  *v35 = v36;
  v37 = v33[1];
  v38 = *(v34 + 2);
  if (v38 >= *v37)
  {
    LOBYTE(v38) = *v37;
  }

  *v37 = v38;
  return result;
}