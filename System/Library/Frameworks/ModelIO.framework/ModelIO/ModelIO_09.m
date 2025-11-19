void sub_239F0E158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, Alembic::Abc::v12::OArrayProperty *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, char a48)
{
  if (v51)
  {
    sub_239E9A9B4(v51);
  }

  if (a47 < 0)
  {
    operator delete(__p);
  }

  sub_239F0C724(&a48);
  if (SLOBYTE(STACK[0x23F]) < 0)
  {
    operator delete(STACK[0x228]);
  }

  sub_239F0C724(&STACK[0x240]);
  if (*(v52 - 185) < 0)
  {
    operator delete(*(v52 - 208));
  }

  sub_239E91CE0(v52 - 184, *(v52 - 176));
  sub_239F06B8C(v52 - 160);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v50);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v49);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(a10);
  if (*(v48 + 23) < 0)
  {
    operator delete(*v48);
  }

  _Unwind_Resume(a1);
}

void sub_239F0E39C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a50 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x239F0E330);
}

void sub_239F0E3B4()
{
  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  JUMPOUT(0x239F0E348);
}

void sub_239F0E3CC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a50 < 0)
  {
    operator delete(__p);
  }

  if (SLOBYTE(STACK[0x257]) < 0)
  {
    v50 = STACK[0x240];
    JUMPOUT(0x239F0E354);
  }

  JUMPOUT(0x239F0E358);
}

uint64_t sub_239F0E3F8(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = 2;
  sub_239E552A0((a1 + 8), "");
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v12 = *(a2 + 5);
  v16 = *(a2 + 4);
  v17 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *a2;
  v15[0] = 1;
  v15[2] = v13;
  sub_239F0E4D4(a1, &v16, a3, v15, a4, a5, a6);
  if (v17)
  {
    sub_239E9A9B4(v17);
  }

  return a1;
}

void sub_239F0E4B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_239E9A9B4(a12);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v12);
  _Unwind_Resume(a1);
}

void sub_239F0E4D4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  *&v23 = &v23 + 8;
  *(&v23 + 1) = 0;
  LODWORD(v28) = 2;
  *&v24[0] = 0;
  sub_239F07444(&v28 + 1, &v23);
  LODWORD(v31) = 0;
  v30 = 0u;
  *(&v31 + 4) = 1;
  sub_239E91CE0(&v23, *(&v23 + 1));
  sub_239F0669C(a4, &v28);
  sub_239F0669C(a5, &v28);
  sub_239F0669C(a6, &v28);
  sub_239F0669C(a7, &v28);
  *a1 = v28;
  v26 = a1;
  v27 = "OTypedArrayProperty::init()";
  if (!*a2)
  {
    v25 = 0;
    memset(v24, 0, sizeof(v24));
    v23 = 0u;
    sub_239EE76F8(&v23);
    sub_239E98B94(v24, "NULL CompoundPropertyWriterPtr", 30);
    *__p = 0u;
    v22 = 0u;
    std::stringbuf::str();
    sub_239F072EC(__p, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v19 = sub_239F073B0(exception, __p);
    __cxa_throw(v19, &unk_284D178C8, sub_239F06748);
  }

  v23 = 0uLL;
  *&v24[0] = 0;
  sub_239F07444(&v23, &v28 + 1);
  sub_239E552A0(__p, "interpretation");
  sub_239E552A0(&__str, "vector");
  v32 = __p;
  v13 = sub_239F075C4(&v23, __p);
  std::string::operator=((v13 + 56), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SBYTE7(v22) < 0)
  {
    operator delete(__p[0]);
  }

  v14 = v30;
  if (*(&v30 + 1))
  {
    atomic_fetch_add_explicit((*(&v30 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v15 = *a2;
  if (v14)
  {
    (*(*v15 + 24))(&__str);
    (*(*__str.__r_.__value_.__l.__data_ + 24))(__p);
    (*(*__p[0] + 48))(__p[0], v14);
    if (__p[1])
    {
      sub_239E9A9B4(__p[1]);
    }

    if (__str.__r_.__value_.__l.__size_)
    {
      sub_239E9A9B4(__str.__r_.__value_.__l.__size_);
    }

    v15 = *a2;
  }

  __str.__r_.__value_.__s.__data_[4] = 3;
  LODWORD(__str.__r_.__value_.__l.__data_) = 10;
  (*(*v15 + 104))(__p);
  v16 = *__p;
  __p[0] = 0;
  __p[1] = 0;
  v17 = *(a1 + 40);
  *(a1 + 32) = v16;
  if (v17)
  {
    sub_239E9A9B4(v17);
    if (__p[1])
    {
      sub_239E9A9B4(__p[1]);
    }
  }

  if (*(&v14 + 1))
  {
    sub_239E9A9B4(*(&v14 + 1));
  }

  sub_239E91CE0(&v23, *(&v23 + 1));
  if (*(&v30 + 1))
  {
    sub_239E9A9B4(*(&v30 + 1));
  }

  sub_239E91CE0(&v28 + 8, v29);
}

void sub_239F0E870(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24)
{
  sub_239F0740C(&__p);
  sub_239EB746C(&a23);
  __cxa_begin_catch(a1);
  sub_239F07B88(v24);
  if (a2 == 2)
  {
    sub_239F06B1C((v25 - 176));
  }

  else
  {
    sub_239F06AAC((v25 - 176));
  }

  __cxa_end_catch();
  JUMPOUT(0x239F0E788);
}

uint64_t sub_239F0E9DC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 2;
  sub_239E552A0((a1 + 8), "");
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v14 = a2[1];
  v16 = *a2;
  v17 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_239F0E4D4(a1, &v16, a3, a4, a5, a6, a7);
  if (v17)
  {
    sub_239E9A9B4(v17);
  }

  return a1;
}

void sub_239F0EA94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_239E9A9B4(a10);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v10);
  _Unwind_Resume(a1);
}

void *sub_239F0EAB4(void *a1, uint64_t *a2)
{
  if (a2[1] == *a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *a2;
  }

  v5 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2);
  sub_239F0AA54(&__p, 1uLL);
  *a1 = v3;
  a1[1] = 0x30000000ALL;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  sub_239F0AB2C((a1 + 2), __p, v7, (v7 - __p) >> 3);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  return a1;
}

void sub_239F0EB48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239F0EB64(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v7 = *a2;
  *(a1 + 5) = *(a2 + 5);
  *a1 = v7;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_239F0AB2C(a1 + 16, a2[2], a2[3], (a2[3] - a2[2]) >> 3);
  v8 = *a3;
  v9 = *(a3 + 5);
  *(a1 + 56) = 0;
  *(a1 + 45) = v9;
  *(a1 + 40) = v8;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_239F0AB2C(a1 + 56, a3[2], a3[3], (a3[3] - a3[2]) >> 3);
  *(a1 + 80) = a4;
  return a1;
}

void sub_239F0EBFC(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *sub_239F0EC18(void *__dst, uint64_t a2, uint64_t a3, char a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(a3 + 23) < 0)
  {
    sub_239E5BAE0(__dst, *a3, *(a3 + 8));
  }

  else
  {
    v16 = *a3;
    __dst[2] = *(a3 + 16);
    *__dst = v16;
  }

  *(__dst + 6) = 2;
  sub_239E552A0(__dst + 32, "");
  *(__dst + 18) = 2;
  __dst[7] = 0;
  __dst[8] = 0;
  sub_239E552A0(__dst + 80, "");
  *(__dst + 32) = 2;
  __dst[13] = 0;
  __dst[14] = 0;
  *(__dst + 120) = a4;
  *(__dst + 31) = a5;
  sub_239E552A0(__dst + 136, "");
  __dst[20] = 0;
  __dst[21] = 0;
  v17 = *(a2 + 40);
  v20 = *(a2 + 32);
  v21 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_239F0EDFC(__p, &v20, a3, a4, a5, a6, a7, a8, a9);
  sub_239F0A6FC(__dst, __p);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v26);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v25);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v24);
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (v21)
  {
    sub_239E9A9B4(v21);
  }

  return __dst;
}

void sub_239F0ED94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, std::__shared_weak_count *a6, ...)
{
  va_start(va, a6);
  sub_239F08168(va);
  if (a6)
  {
    sub_239E9A9B4(a6);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v9);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v8);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v7);
  if (*(v6 + 23) < 0)
  {
    operator delete(*v6);
  }

  _Unwind_Resume(a1);
}

char *sub_239F0EDFC(char *__dst, uint64_t *a2, uint64_t a3, char a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(a3 + 23) < 0)
  {
    sub_239E5BAE0(__dst, *a3, *(a3 + 8));
  }

  else
  {
    v17 = *a3;
    *(__dst + 2) = *(a3 + 16);
    *__dst = v17;
  }

  *(__dst + 6) = 2;
  v49 = __dst + 24;
  sub_239E552A0(__dst + 32, "");
  *(__dst + 18) = 2;
  *(__dst + 7) = 0;
  *(__dst + 8) = 0;
  sub_239E552A0(__dst + 80, "");
  *(__dst + 32) = 2;
  *(__dst + 13) = 0;
  *(__dst + 14) = 0;
  __dst[120] = a4;
  *(__dst + 31) = a5;
  sub_239E552A0(__dst + 136, "");
  *(__dst + 20) = 0;
  *(__dst + 21) = 0;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v18 = a2[1];
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v84.__locale_ = 0;
  __p[1] = 0;
  __p[0] = &__p[1];
  LODWORD(v94) = 2;
  sub_239F07444(&v94 + 1, __p);
  LODWORD(v97) = 0;
  v96 = 0u;
  *(&v97 + 4) = 1;
  sub_239E91CE0(__p, __p[1]);
  if (v18)
  {
    sub_239E9A9B4(v18);
  }

  sub_239F0669C(a7, &v94);
  sub_239F0669C(a8, &v94);
  sub_239F0669C(a9, &v94);
  v91 = 0;
  v92 = 0;
  v93 = 0;
  v19 = sub_239F07444(&v91, &v94 + 1);
  sub_239F0C350(v19, a5);
  sub_239E552A0(__p, "isGeomParam");
  sub_239E552A0(__str, "true");
  v70 = __p;
  v20 = sub_239F075C4(&v91, __p);
  std::string::operator=((v20 + 56), __str);
  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  if (SHIBYTE(v84.__locale_) < 0)
  {
    operator delete(__p[0]);
  }

  memset(&v90, 0, sizeof(v90));
  sub_239E552A0(&v90, "float32_t");
  sub_239E552A0(__p, "podName");
  *__str = __p;
  v21 = sub_239F075C4(&v91, __p);
  std::string::operator=((v21 + 56), &v90);
  if (SHIBYTE(v84.__locale_) < 0)
  {
    operator delete(__p[0]);
  }

  v89 = 0;
  v87 = 0u;
  memset(v88, 0, sizeof(v88));
  *v85 = 0u;
  v86 = 0u;
  *__p = 0u;
  memset(&v84, 0, 48);
  sub_239F0C5B8(__p);
  MEMORY[0x23EE80160](__p, 2);
  memset(&v82, 0, sizeof(v82));
  std::stringbuf::str();
  sub_239E552A0(__str, "podExtent");
  v70 = __str;
  v22 = sub_239F075C4(&v91, __str);
  std::string::operator=((v22 + 56), &v82);
  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  v81 = 0;
  v79 = 0u;
  memset(v80, 0, sizeof(v80));
  *v77 = 0u;
  v78 = 0u;
  memset(__str, 0, sizeof(__str));
  sub_239F0C5B8(__str);
  MEMORY[0x23EE80160](__str, a6);
  memset(&v75, 0, sizeof(v75));
  std::stringbuf::str();
  sub_239E552A0(&v70, "arrayExtent");
  v74.__r_.__value_.__r.__words[0] = &v70;
  v23 = sub_239F075C4(&v91, &v70);
  std::string::operator=((v23 + 56), &v75);
  if (v71.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v70);
  }

  sub_239E552A0(&v70, "interpretation");
  sub_239E552A0(&v74, "vector");
  v66 = &v70;
  v24 = sub_239F075C4(&v91, &v70);
  std::string::operator=((v24 + 56), &v74);
  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  if (v71.__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v70);
  }

  v25 = v94;
  v26 = v96;
  if (*(&v96 + 1))
  {
    atomic_fetch_add_explicit((*(&v96 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  if (v26)
  {
    v27 = *a2;
    v28 = a2[1];
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v27 + 24))(&v74);
    (*(*v74.__r_.__value_.__l.__data_ + 24))(&v70);
    v29 = (*(*v70 + 48))(v70, v26);
    if (v71.__r_.__value_.__r.__words[0])
    {
      sub_239E9A9B4(v71.__r_.__value_.__l.__data_);
    }

    if (v74.__r_.__value_.__l.__size_)
    {
      sub_239E9A9B4(v74.__r_.__value_.__l.__size_);
    }

    if (v28)
    {
      sub_239E9A9B4(v28);
    }
  }

  else
  {
    v29 = v97;
  }

  if (__dst[120] == 1)
  {
    v30 = a2[1];
    v68 = *a2;
    v69 = v30;
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    LODWORD(v74.__r_.__value_.__l.__data_) = 3;
    v74.__r_.__value_.__l.__size_ = &v91;
    LODWORD(v66) = 1;
    LODWORD(v67) = v25;
    MEMORY[0x23EE7EFD0](&v70, &v68, a3, &v74, &v66);
    *(__dst + 32) = v70;
    std::string::operator=((__dst + 136), &v71);
    v32 = v72;
    v31 = v73;
    if (v73)
    {
      atomic_fetch_add_explicit((v73 + 8), 1uLL, memory_order_relaxed);
    }

    v33 = *(__dst + 21);
    *(__dst + 20) = v32;
    *(__dst + 21) = v31;
    if (v33)
    {
      sub_239E9A9B4(v33);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v70);
    if (v69)
    {
      sub_239E9A9B4(v69);
    }

    v61 = *(__dst + 32);
    if (__dst[159] < 0)
    {
      sub_239E5BAE0(&v62, *(__dst + 17), *(__dst + 18));
    }

    else
    {
      v62 = *(__dst + 136);
      v63 = *(__dst + 19);
    }

    v38 = *(__dst + 21);
    v64 = *(__dst + 20);
    v65 = v38;
    if (v38)
    {
      atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
    }

    sub_239E552A0(&v74, ".vals");
    LODWORD(v66) = 3;
    v67 = &v91;
    v59 = 1;
    v60 = v25;
    v57 = 2;
    v58 = v29;
    sub_239F0FB3C(&v70, &v61, &v74, &v66, &v59, &v57);
    *v49 = v70;
    std::string::operator=((__dst + 32), &v71);
    v40 = v72;
    v39 = v73;
    if (v73)
    {
      atomic_fetch_add_explicit((v73 + 8), 1uLL, memory_order_relaxed);
    }

    v41 = *(__dst + 8);
    *(__dst + 7) = v40;
    *(__dst + 8) = v39;
    if (v41)
    {
      sub_239E9A9B4(v41);
    }

    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v70);
    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v61);
    v52 = *(__dst + 32);
    if (__dst[159] < 0)
    {
      sub_239E5BAE0(&v53, *(__dst + 17), *(__dst + 18));
    }

    else
    {
      v53 = *(__dst + 136);
      v54 = *(__dst + 19);
    }

    v42 = *(__dst + 21);
    v55 = *(__dst + 20);
    v56 = v42;
    if (v42)
    {
      atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
    }

    sub_239E552A0(&v74, ".indices");
    LODWORD(v66) = 2;
    LODWORD(v67) = v29;
    v59 = 0;
    v60 = 0;
    v57 = 0;
    v58 = 0;
    sub_239F0CD74(&v70, &v52, &v74, &v66, &v59, &v57);
    *(__dst + 18) = v70;
    std::string::operator=((__dst + 80), &v71);
    v44 = v72;
    v43 = v73;
    if (v73)
    {
      atomic_fetch_add_explicit((v73 + 8), 1uLL, memory_order_relaxed);
    }

    v45 = *(__dst + 14);
    *(__dst + 13) = v44;
    *(__dst + 14) = v43;
    if (v45)
    {
      sub_239E9A9B4(v45);
    }

    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v70);
    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }

    Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v52);
  }

  else
  {
    v34 = a2[1];
    v50 = *a2;
    v51 = v34;
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    LODWORD(v74.__r_.__value_.__l.__data_) = 3;
    v74.__r_.__value_.__l.__size_ = &v91;
    LODWORD(v66) = 1;
    LODWORD(v67) = v25;
    v59 = 2;
    v60 = v29;
    v57 = 0;
    v58 = 0;
    sub_239F10120(&v70, &v50, a3, &v74, &v66, &v59, &v57);
    *v49 = v70;
    std::string::operator=((__dst + 32), &v71);
    v36 = v72;
    v35 = v73;
    if (v73)
    {
      atomic_fetch_add_explicit((v73 + 8), 1uLL, memory_order_relaxed);
    }

    v37 = *(__dst + 8);
    *(__dst + 7) = v36;
    *(__dst + 8) = v35;
    if (v37)
    {
      sub_239E9A9B4(v37);
    }

    Alembic::Abc::v12::OArrayProperty::~OArrayProperty(&v70);
    if (v51)
    {
      sub_239E9A9B4(v51);
    }
  }

  if (*(&v26 + 1))
  {
    sub_239E9A9B4(*(&v26 + 1));
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  *__str = *MEMORY[0x277D82828];
  v46 = *__str;
  v47 = *(MEMORY[0x277D82828] + 24);
  *&__str[*(*__str - 24)] = v47;
  *&__str[8] = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v78) < 0)
  {
    operator delete(v77[1]);
  }

  *&__str[8] = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&__str[16]);
  std::ostream::~ostream();
  MEMORY[0x23EE80250](v80);
  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
  }

  __p[0] = v46;
  *(__p + *(v46 - 3)) = v47;
  __p[1] = (MEMORY[0x277D82878] + 16);
  if (SHIBYTE(v86) < 0)
  {
    operator delete(v85[1]);
  }

  __p[1] = (MEMORY[0x277D82868] + 16);
  std::locale::~locale(&v84);
  std::ostream::~ostream();
  MEMORY[0x23EE80250](v88);
  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v90.__r_.__value_.__l.__data_);
  }

  sub_239E91CE0(&v91, v92);
  if (*(&v96 + 1))
  {
    sub_239E9A9B4(*(&v96 + 1));
  }

  sub_239E91CE0(&v94 + 8, v95);
  return __dst;
}

void sub_239F0F89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, Alembic::Abc::v12::OArrayProperty *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, char a48)
{
  if (v51)
  {
    sub_239E9A9B4(v51);
  }

  if (a47 < 0)
  {
    operator delete(__p);
  }

  sub_239F0C724(&a48);
  if (SLOBYTE(STACK[0x23F]) < 0)
  {
    operator delete(STACK[0x228]);
  }

  sub_239F0C724(&STACK[0x240]);
  if (*(v52 - 185) < 0)
  {
    operator delete(*(v52 - 208));
  }

  sub_239E91CE0(v52 - 184, *(v52 - 176));
  sub_239F06B8C(v52 - 160);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v50);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v49);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(a10);
  if (*(v48 + 23) < 0)
  {
    operator delete(*v48);
  }

  _Unwind_Resume(a1);
}

void sub_239F0FAE0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a50 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x239F0FA74);
}

void sub_239F0FAF8()
{
  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  JUMPOUT(0x239F0FA8CLL);
}

void sub_239F0FB10(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a50 < 0)
  {
    operator delete(__p);
  }

  if (SLOBYTE(STACK[0x257]) < 0)
  {
    v50 = STACK[0x240];
    JUMPOUT(0x239F0FA98);
  }

  JUMPOUT(0x239F0FA9CLL);
}

uint64_t sub_239F0FB3C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = 2;
  sub_239E552A0((a1 + 8), "");
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v12 = *(a2 + 5);
  v16 = *(a2 + 4);
  v17 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *a2;
  v15[0] = 1;
  v15[2] = v13;
  sub_239F0FC18(a1, &v16, a3, v15, a4, a5, a6);
  if (v17)
  {
    sub_239E9A9B4(v17);
  }

  return a1;
}

void sub_239F0FBF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_239E9A9B4(a12);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v12);
  _Unwind_Resume(a1);
}

void sub_239F0FC18(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  *&v23 = &v23 + 8;
  *(&v23 + 1) = 0;
  LODWORD(v28) = 2;
  *&v24[0] = 0;
  sub_239F07444(&v28 + 1, &v23);
  LODWORD(v31) = 0;
  v30 = 0u;
  *(&v31 + 4) = 1;
  sub_239E91CE0(&v23, *(&v23 + 1));
  sub_239F0669C(a4, &v28);
  sub_239F0669C(a5, &v28);
  sub_239F0669C(a6, &v28);
  sub_239F0669C(a7, &v28);
  *a1 = v28;
  v26 = a1;
  v27 = "OTypedArrayProperty::init()";
  if (!*a2)
  {
    v25 = 0;
    memset(v24, 0, sizeof(v24));
    v23 = 0u;
    sub_239EE76F8(&v23);
    sub_239E98B94(v24, "NULL CompoundPropertyWriterPtr", 30);
    *__p = 0u;
    v22 = 0u;
    std::stringbuf::str();
    sub_239F072EC(__p, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v19 = sub_239F073B0(exception, __p);
    __cxa_throw(v19, &unk_284D178C8, sub_239F06748);
  }

  v23 = 0uLL;
  *&v24[0] = 0;
  sub_239F07444(&v23, &v28 + 1);
  sub_239E552A0(__p, "interpretation");
  sub_239E552A0(&__str, "vector");
  v32 = __p;
  v13 = sub_239F075C4(&v23, __p);
  std::string::operator=((v13 + 56), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SBYTE7(v22) < 0)
  {
    operator delete(__p[0]);
  }

  v14 = v30;
  if (*(&v30 + 1))
  {
    atomic_fetch_add_explicit((*(&v30 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v15 = *a2;
  if (v14)
  {
    (*(*v15 + 24))(&__str);
    (*(*__str.__r_.__value_.__l.__data_ + 24))(__p);
    (*(*__p[0] + 48))(__p[0], v14);
    if (__p[1])
    {
      sub_239E9A9B4(__p[1]);
    }

    if (__str.__r_.__value_.__l.__size_)
    {
      sub_239E9A9B4(__str.__r_.__value_.__l.__size_);
    }

    v15 = *a2;
  }

  __str.__r_.__value_.__s.__data_[4] = 2;
  LODWORD(__str.__r_.__value_.__l.__data_) = 10;
  (*(*v15 + 104))(__p);
  v16 = *__p;
  __p[0] = 0;
  __p[1] = 0;
  v17 = *(a1 + 40);
  *(a1 + 32) = v16;
  if (v17)
  {
    sub_239E9A9B4(v17);
    if (__p[1])
    {
      sub_239E9A9B4(__p[1]);
    }
  }

  if (*(&v14 + 1))
  {
    sub_239E9A9B4(*(&v14 + 1));
  }

  sub_239E91CE0(&v23, *(&v23 + 1));
  if (*(&v30 + 1))
  {
    sub_239E9A9B4(*(&v30 + 1));
  }

  sub_239E91CE0(&v28 + 8, v29);
}

void sub_239F0FFB4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24)
{
  sub_239F0740C(&__p);
  sub_239EB746C(&a23);
  __cxa_begin_catch(a1);
  sub_239F07B88(v24);
  if (a2 == 2)
  {
    sub_239F06B1C((v25 - 176));
  }

  else
  {
    sub_239F06AAC((v25 - 176));
  }

  __cxa_end_catch();
  JUMPOUT(0x239F0FECCLL);
}

uint64_t sub_239F10120(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 2;
  sub_239E552A0((a1 + 8), "");
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v14 = a2[1];
  v16 = *a2;
  v17 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_239F0FC18(a1, &v16, a3, a4, a5, a6, a7);
  if (v17)
  {
    sub_239E9A9B4(v17);
  }

  return a1;
}

void sub_239F101D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_239E9A9B4(a10);
  }

  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_239F101F8(uint64_t a1)
{
  v2 = *(a1 + 544);
  if (v2)
  {
    *(a1 + 552) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 504);
  if (v3)
  {
    *(a1 + 512) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 464);
  if (v4)
  {
    *(a1 + 472) = v4;
    operator delete(v4);
  }

  if (*(a1 + 399) < 0)
  {
    operator delete(*(a1 + 376));
  }

  v5 = *(a1 + 352);
  if (v5)
  {
    *(a1 + 360) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 312);
  if (v6)
  {
    *(a1 + 320) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 272);
  if (v7)
  {
    *(a1 + 280) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 232);
  if (v8)
  {
    *(a1 + 240) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 192);
  if (v9)
  {
    *(a1 + 200) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 152);
  if (v10)
  {
    *(a1 + 160) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 96);
  if (v11)
  {
    *(a1 + 104) = v11;
    operator delete(v11);
  }

  v12 = *(a1 + 56);
  if (v12)
  {
    *(a1 + 64) = v12;
    operator delete(v12);
  }

  v13 = *(a1 + 16);
  if (v13)
  {
    *(a1 + 24) = v13;
    operator delete(v13);
  }

  return a1;
}

void sub_239F102EC(Alembic::Abc::v12::OObject *a1)
{
  *a1 = &unk_284D17488;
  sub_239F0A868(a1 + 56);

  Alembic::Abc::v12::OObject::~OObject(a1);
}

_BYTE *sub_239F10340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1 + 8;
  v22 = "OGeomBaseSchema::getArbGeomParams()";
  v4 = *(a1 + 183);
  if (v4 < 0)
  {
    if (!*(a1 + 168))
    {
      goto LABEL_5;
    }
  }

  else if (!*(a1 + 183))
  {
LABEL_5:
    if (*(a1 + 184))
    {
      goto LABEL_17;
    }
  }

  v5 = *(a1 + 48);
  v15 = *(a1 + 40);
  v16 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_239E552A0(__p, ".arbGeomParams");
  v12[0] = 0;
  v12[2] = 0;
  v11[0] = 0;
  v11[2] = 0;
  MEMORY[0x23EE7EFD0](&v17, &v15, __p, v12, v11);
  *(a1 + 152) = v17;
  std::string::operator=((a1 + 160), &v18);
  v7 = v19;
  v6 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(a1 + 192);
  *(a1 + 184) = v7;
  *(a1 + 192) = v6;
  if (v8)
  {
    sub_239E9A9B4(v8);
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(&v17);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (v16)
  {
    sub_239E9A9B4(v16);
  }

  LOBYTE(v4) = *(a1 + 183);
LABEL_17:
  *a2 = *(a1 + 152);
  result = (a2 + 8);
  if ((v4 & 0x80) != 0)
  {
    result = sub_239E5BAE0(result, *(a1 + 160), *(a1 + 168));
  }

  else
  {
    *result = *(a1 + 160);
    *(a2 + 24) = *(a1 + 176);
  }

  v10 = *(a1 + 192);
  *(a2 + 32) = *(a1 + 184);
  *(a2 + 40) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_239F1049C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, char a22)
{
  __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_239F06B1C((v23 - 48));
  }

  else
  {
    sub_239F06AAC((v23 - 48));
  }

  __cxa_end_catch();
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0u;
  *v22 = 0u;
  *v22 = 2;
  sub_239E552A0((v22 + 8), "");
  *(v22 + 32) = 0;
  *(v22 + 40) = 0;
  JUMPOUT(0x239F10488);
}

uint64_t sub_239F1056C(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a1 + 8) = 2;
  v12 = (a1 + 8);
  sub_239E552A0((a1 + 16), "");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_284D17428;
  sub_239F1101C(a1 + 56);
  v54 = 0u;
  v53 = 0u;
  v51 = 0u;
  v52 = 0u;
  v13 = *(a2 + 8);
  __p[1] = 0;
  *&v38[0] = 0;
  __p[0] = &__p[1];
  LODWORD(v51) = v13;
  sub_239F07444(&v51 + 1, __p);
  LODWORD(v54) = 0;
  v53 = 0u;
  *(&v54 + 4) = 1;
  sub_239E91CE0(__p, __p[1]);
  sub_239F0669C(a4, &v51);
  sub_239F0669C(a5, &v51);
  sub_239F0669C(a6, &v51);
  *v12 = v51;
  v49 = v12;
  v50 = "OSchemaObject::OSchemaObject( OObject)";
  v15 = *(a2 + 40);
  v14 = *(a2 + 48);
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v15)
  {
    v39 = 0;
    *__p = 0u;
    memset(v38, 0, sizeof(v38));
    sub_239EE76F8(__p);
    sub_239E98B94(v38, "NULL Parent ObjectWriter in OSchemaObject ctor", 46);
    __str = 0u;
    __str_16 = 0u;
    std::stringbuf::str();
    sub_239F072EC(&__str, &v47);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(v47);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v27 = sub_239F073B0(exception, &__str);
    __cxa_throw(v27, &unk_284D178C8, sub_239F06748);
  }

  v47 = 0uLL;
  v48 = 0;
  sub_239F07444(&v47, &v51 + 1);
  if (DWORD2(v54) == 1)
  {
    v16 = 1;
  }

  else
  {
    sub_239E552A0(__p, "schema");
    sub_239E552A0(&__str, "AbcGeom_PolyMesh_v1");
    v40 = __p;
    v17 = sub_239F075C4(&v47, __p);
    std::string::operator=((v17 + 56), &__str);
    if (SBYTE7(__str_16) < 0)
    {
      operator delete(__str);
    }

    if (SBYTE7(v38[0]) < 0)
    {
      operator delete(__p[0]);
    }

    sub_239E552A0(__p, "schemaObjTitle");
    sub_239F10D54(&__str);
    v40 = __p;
    v18 = sub_239F075C4(&v47, __p);
    std::string::operator=((v18 + 56), &__str);
    if (SBYTE7(__str_16) < 0)
    {
      operator delete(__str);
    }

    if (SBYTE7(v38[0]) < 0)
    {
      operator delete(__p[0]);
    }

    sub_239E552A0(__p, "schemaBaseType");
    sub_239E552A0(&__str, "AbcGeom_GeomBase_v1");
    v40 = __p;
    v19 = sub_239F075C4(&v47, __p);
    std::string::operator=((v19 + 56), &__str);
    if (SBYTE7(__str_16) < 0)
    {
      operator delete(__str);
    }

    if (SBYTE7(v38[0]) < 0)
    {
      operator delete(__p[0]);
    }

    v16 = 0;
  }

  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  __str = 0u;
  __str_16 = 0u;
  sub_239F0771C(&__str, a3, &v47);
  (*(*v15 + 80))(__p, v15, &__str);
  v20 = *__p;
  __p[0] = 0;
  __p[1] = 0;
  v21 = *(a1 + 48);
  *(a1 + 40) = v20;
  if (v21)
  {
    sub_239E9A9B4(v21);
    if (__p[1])
    {
      sub_239E9A9B4(__p[1]);
    }
  }

  v22 = v53;
  if (*(&v53 + 1))
  {
    atomic_fetch_add_explicit((*(&v53 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  if (v22)
  {
    (*(*v15 + 24))(__p, v15);
    v23 = (*(*__p[0] + 48))(__p[0], v22);
    if (__p[1])
    {
      sub_239E9A9B4(__p[1]);
    }
  }

  else
  {
    v23 = v54;
  }

  v41[1] = 0;
  v41[0] = 0;
  v40 = v41;
  (*(**(a1 + 40) + 40))(&v35);
  sub_239E552A0(v33, ".geom");
  v24 = *v12;
  v32[0] = 1;
  v32[2] = v24;
  v31[0] = 2;
  v31[2] = v23;
  v29 = 3;
  v30 = &v40;
  v28[0] = 6;
  v28[2] = v16;
  MEMORY[0x23EE7F0E0](__p, &v35, v33, v32, v31, &v29, v28);
  sub_239F10E34(a1 + 56, __p);
  sub_239F1169C(__p);
  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  if (v36)
  {
    sub_239E9A9B4(v36);
  }

  sub_239E91CE0(&v40, v41[0]);
  if (*(&v22 + 1))
  {
    sub_239E9A9B4(*(&v22 + 1));
  }

  sub_239E91CE0(&v45, *(&v45 + 1));
  if (SHIBYTE(v44) < 0)
  {
    operator delete(*(&__str_16 + 1));
  }

  if (SBYTE7(__str_16) < 0)
  {
    operator delete(__str);
  }

  sub_239E91CE0(&v47, *(&v47 + 1));
  if (v14)
  {
    sub_239E9A9B4(v14);
  }

  if (*(&v53 + 1))
  {
    sub_239E9A9B4(*(&v53 + 1));
  }

  sub_239E91CE0(&v51 + 8, v52);
  return a1;
}

void sub_239F10B38(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(__p, a16);
  sub_239F0740C(&STACK[0x3F0]);
  sub_239EB746C(__p);
  if (v17)
  {
    sub_239E9A9B4(v17);
  }

  __cxa_begin_catch(a1);
  sub_239F1133C(v16 + 56);
  sub_239F07B3C(v16);
  if (a2 == 2)
  {
    sub_239F06B1C((v18 - 176));
  }

  else
  {
    sub_239F06AAC((v18 - 176));
  }

  __cxa_end_catch();
  JUMPOUT(0x239F10A4CLL);
}

void sub_239F10D30(_Unwind_Exception *a1)
{
  sub_239F06B8C(v2 - 160);
  sub_239F1169C(v1 + 56);
  Alembic::Abc::v12::OObject::~OObject(v1);
  _Unwind_Resume(a1);
}

void sub_239F10D54(std::string *a1@<X8>)
{
  sub_239E552A0(&v5, ":");
  v2 = std::string::insert(&v5, 0, "AbcGeom_PolyMesh_v1");
  v3 = *&v2->__r_.__value_.__l.__data_;
  v6.__r_.__value_.__r.__words[2] = v2->__r_.__value_.__r.__words[2];
  *&v6.__r_.__value_.__l.__data_ = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  v4 = std::string::append(&v6, ".geom");
  *a1 = *v4;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_239F10E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_239F10E34(uint64_t a1, uint64_t a2)
{
  sub_239F0A5BC(a1, a2);
  *(a1 + 248) = *(a2 + 248);
  std::string::operator=((a1 + 256), (a2 + 256));
  v5 = *(a2 + 280);
  v4 = *(a2 + 288);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 288);
  *(a1 + 280) = v5;
  *(a1 + 288) = v4;
  if (v6)
  {
    sub_239E9A9B4(v6);
  }

  *(a1 + 296) = *(a2 + 296);
  std::string::operator=((a1 + 304), (a2 + 304));
  v8 = *(a2 + 328);
  v7 = *(a2 + 336);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 336);
  *(a1 + 328) = v8;
  *(a1 + 336) = v7;
  if (v9)
  {
    sub_239E9A9B4(v9);
  }

  *(a1 + 344) = *(a2 + 344);
  std::string::operator=((a1 + 352), (a2 + 352));
  v11 = *(a2 + 376);
  v10 = *(a2 + 384);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *(a1 + 384);
  *(a1 + 376) = v11;
  *(a1 + 384) = v10;
  if (v12)
  {
    sub_239E9A9B4(v12);
  }

  *(a1 + 392) = *(a2 + 392);
  std::string::operator=((a1 + 400), (a2 + 400));
  v14 = *(a2 + 424);
  v13 = *(a2 + 432);
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = *(a1 + 432);
  *(a1 + 424) = v14;
  *(a1 + 432) = v13;
  if (v15)
  {
    sub_239E9A9B4(v15);
  }

  sub_239F0A7FC(a1 + 440, (a2 + 440));
  sub_239F0A6FC(a1 + 464, (a2 + 464));
  sub_239F0A6FC(a1 + 640, (a2 + 640));
  v16 = (a1 + 816);
  if (*(a1 + 839) < 0)
  {
    operator delete(*v16);
  }

  v17 = *(a2 + 816);
  *(a1 + 832) = *(a2 + 832);
  *v16 = v17;
  *(a2 + 839) = 0;
  *(a2 + 816) = 0;
  v18 = *(a2 + 840);
  *(a1 + 856) = *(a2 + 856);
  *(a1 + 840) = v18;
  return a1;
}

void sub_239F10FB4(Alembic::Abc::v12::OObject *a1)
{
  *a1 = &unk_284D17428;
  sub_239F1169C(a1 + 56);
  Alembic::Abc::v12::OObject::~OObject(a1);

  JUMPOUT(0x23EE802C0);
}

uint64_t sub_239F1101C(uint64_t a1)
{
  v2 = sub_239F11174(a1);
  *v2 = &unk_284D172C0;
  *(v2 + 248) = 2;
  sub_239E552A0((v2 + 256), "");
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 2;
  sub_239E552A0((a1 + 304), "");
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 2;
  sub_239E552A0((a1 + 352), "");
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 2;
  sub_239E552A0((a1 + 400), "");
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 440) = a1 + 448;
  sub_239F09E5C(a1 + 464);
  sub_239F115C4(a1 + 640);
  *(a1 + 848) = 0;
  *(a1 + 856) = 0;
  *(a1 + 816) = 0;
  *(a1 + 832) = 0;
  *(a1 + 824) = 0;
  *(a1 + 840) = 0;
  return a1;
}

void sub_239F11104(_Unwind_Exception *a1)
{
  sub_239F08168((v1 + 58));
  sub_239F09F84((v1 + 55), *v3);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v1 + 49));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v1 + 43));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((v1 + 37));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v2);
  sub_239F11298(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_239F11174(uint64_t a1)
{
  *(a1 + 8) = 2;
  sub_239E552A0((a1 + 16), "");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_284D172F0;
  *(a1 + 56) = 2;
  sub_239E552A0((a1 + 64), "");
  *(a1 + 104) = 2;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  sub_239E552A0((a1 + 112), "");
  *(a1 + 152) = 2;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  sub_239E552A0((a1 + 160), "");
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 2;
  sub_239E552A0((a1 + 208), "");
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  return a1;
}

void sub_239F11254(_Unwind_Exception *a1)
{
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v4);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(v3);
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty(v2);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v1);
  _Unwind_Resume(a1);
}

void *sub_239F11298(void *a1)
{
  *a1 = &unk_284D172F0;
  v2 = (a1 + 1);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 25));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 19));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 13));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 7));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v2);
  return a1;
}

void sub_239F11304(uint64_t a1)
{
  sub_239F1169C(a1);

  JUMPOUT(0x23EE802C0);
}

void sub_239F1133C(uint64_t a1)
{
  sub_239F07B88(a1 + 248);
  sub_239F07B88(a1 + 296);
  sub_239F07B88(a1 + 344);
  sub_239F07B88(a1 + 392);
  sub_239F09F34(a1 + 464);
  sub_239F09F34(a1 + 640);
  sub_239F09F84(a1 + 440, *(a1 + 448));
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 440) = a1 + 448;

  sub_239F11544(a1);
}

uint64_t sub_239F113B8(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    if (*(a1 + 24))
    {
      goto LABEL_22;
    }
  }

  else if (*(a1 + 39))
  {
    goto LABEL_22;
  }

  if (!*(a1 + 40))
  {
    goto LABEL_22;
  }

  if (*(a1 + 279) < 0)
  {
    if (*(a1 + 264))
    {
      goto LABEL_22;
    }
  }

  else if (*(a1 + 279))
  {
    goto LABEL_22;
  }

  if (!*(a1 + 280))
  {
    goto LABEL_22;
  }

  if (*(a1 + 375) < 0)
  {
    if (*(a1 + 360))
    {
      goto LABEL_22;
    }
  }

  else if (*(a1 + 375))
  {
    goto LABEL_22;
  }

  if (!*(a1 + 376))
  {
    goto LABEL_22;
  }

  if (*(a1 + 423) < 0)
  {
    if (!*(a1 + 408))
    {
      goto LABEL_20;
    }

LABEL_22:
    v1 = *(a1 + 840);
    return v1 & 1;
  }

  if (*(a1 + 423))
  {
    goto LABEL_22;
  }

LABEL_20:
  if (!*(a1 + 424))
  {
    goto LABEL_22;
  }

  v1 = 1;
  return v1 & 1;
}

void *sub_239F1144C(void *a1)
{
  *a1 = &unk_284D172F0;
  v2 = (a1 + 1);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 25));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 19));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 13));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 7));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v2);
  return a1;
}

void sub_239F114B8(void *a1)
{
  *a1 = &unk_284D172F0;
  v2 = (a1 + 1);
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 25));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 19));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 13));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 7));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(v2);

  JUMPOUT(0x23EE802C0);
}

void sub_239F11544(uint64_t a1)
{
  sub_239F07B88(a1 + 56);
  sub_239F07B88(a1 + 104);
  sub_239F07B88(a1 + 152);
  sub_239F07B88(a1 + 200);

  sub_239F07B88(a1 + 8);
}

BOOL sub_239F11598(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    if (*(a1 + 24))
    {
      return 0;
    }
  }

  else if (*(a1 + 39))
  {
    return 0;
  }

  return *(a1 + 40) != 0;
}

uint64_t sub_239F115C4(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 2;
  sub_239E552A0((a1 + 32), "");
  *(a1 + 72) = 2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_239E552A0((a1 + 80), "");
  *(a1 + 120) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 124) = 0x20000007FLL;
  sub_239E552A0((a1 + 136), "");
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  return a1;
}

void sub_239F11660(_Unwind_Exception *a1)
{
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v3);
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty(v2);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_239F1169C(uint64_t a1)
{
  *a1 = &unk_284D172C0;
  if (*(a1 + 839) < 0)
  {
    operator delete(*(a1 + 816));
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 768));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 712));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 664));
  if (*(a1 + 663) < 0)
  {
    operator delete(*(a1 + 640));
  }

  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 592));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 536));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 488));
  if (*(a1 + 487) < 0)
  {
    operator delete(*(a1 + 464));
  }

  sub_239F09F84(a1 + 440, *(a1 + 448));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 392));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 344));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 296));
  Alembic::Abc::v12::OArrayProperty::~OArrayProperty((a1 + 248));
  *a1 = &unk_284D172F0;
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 200));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 152));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 104));
  Alembic::Abc::v12::OScalarProperty::~OScalarProperty((a1 + 56));
  Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty((a1 + 8));
  return a1;
}

uint64_t sub_239F117AC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t *a6)
{
  v11 = *a2;
  *(a1 + 5) = *(a2 + 5);
  *a1 = v11;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_239F0AB2C(a1 + 16, a2[2], a2[3], (a2[3] - a2[2]) >> 3);
  v12 = *a3;
  v13 = *(a3 + 5);
  *(a1 + 56) = 0;
  *(a1 + 45) = v13;
  *(a1 + 40) = v12;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_239F0AB2C(a1 + 56, a3[2], a3[3], (a3[3] - a3[2]) >> 3);
  v14 = *a4;
  v15 = *(a4 + 5);
  *(a1 + 96) = 0;
  *(a1 + 85) = v15;
  *(a1 + 80) = v14;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  sub_239F0AB2C(a1 + 96, a4[2], a4[3], (a4[3] - a4[2]) >> 3);
  *(a1 + 120) = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *(a1 + 136) = xmmword_239F9CD40;
  *(a1 + 152) = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  *(a1 + 184) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0x30000000ALL;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  v16 = *(a5 + 5);
  *(a1 + 208) = *a5;
  *(a1 + 213) = v16;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  sub_239F0AB2C(a1 + 224, *(a5 + 16), *(a5 + 24), (*(a5 + 24) - *(a5 + 16)) >> 3);
  v17 = *(a5 + 40);
  *(a1 + 253) = *(a5 + 45);
  *(a1 + 248) = v17;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0;
  sub_239F0AB2C(a1 + 264, *(a5 + 56), *(a5 + 64), (*(a5 + 64) - *(a5 + 56)) >> 3);
  *(a1 + 288) = *(a5 + 80);
  v18 = *a6;
  *(a1 + 301) = *(a6 + 5);
  *(a1 + 296) = v18;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 312) = 0;
  sub_239F0AB2C(a1 + 312, a6[2], a6[3], (a6[3] - a6[2]) >> 3);
  v19 = a6[5];
  *(a1 + 341) = *(a6 + 45);
  *(a1 + 336) = v19;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 352) = 0;
  sub_239F0AB2C(a1 + 352, a6[7], a6[8], (a6[8] - a6[7]) >> 3);
  *(a1 + 376) = *(a6 + 20);
  return a1;
}

void sub_239F119A0(_Unwind_Exception *a1)
{
  v8 = v1[39];
  if (v8)
  {
    v1[40] = v8;
    operator delete(v8);
  }

  sub_239F07BD4(v5);
  v9 = *v6;
  if (*v6)
  {
    v1[24] = v9;
    operator delete(v9);
  }

  v10 = *v4;
  if (*v4)
  {
    v1[13] = v10;
    operator delete(v10);
  }

  v11 = *v3;
  if (*v3)
  {
    v1[8] = v11;
    operator delete(v11);
  }

  v12 = *v2;
  if (*v2)
  {
    v1[3] = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_239F11A3C(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_239F08808(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 8) = *(a2 + 8);
    result = v3 + 12;
  }

  a1[1] = result;
  return result;
}

void *sub_239F11A8C(void *a1, uint64_t *a2)
{
  if (a2[1] == *a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *a2;
  }

  v5 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2);
  sub_239F0AA54(&__p, 1uLL);
  *a1 = v3;
  a1[1] = 0x30000000ALL;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  sub_239F0AB2C((a1 + 2), __p, v7, (v7 - __p) >> 3);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  return a1;
}

void sub_239F11B20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239F11B3C(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v7 = *a2;
  *(a1 + 5) = *(a2 + 5);
  *a1 = v7;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_239F0AB2C(a1 + 16, a2[2], a2[3], (a2[3] - a2[2]) >> 3);
  v8 = *a3;
  v9 = *(a3 + 5);
  *(a1 + 56) = 0;
  *(a1 + 45) = v9;
  *(a1 + 40) = v8;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_239F0AB2C(a1 + 56, a3[2], a3[3], (a3[3] - a3[2]) >> 3);
  *(a1 + 80) = a4;
  return a1;
}

void sub_239F11BD4(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *sub_239F11BF0(void *a1)
{
  v2 = a1[44];
  if (v2)
  {
    a1[45] = v2;
    operator delete(v2);
  }

  v3 = a1[39];
  if (v3)
  {
    a1[40] = v3;
    operator delete(v3);
  }

  v4 = a1[33];
  if (v4)
  {
    a1[34] = v4;
    operator delete(v4);
  }

  v5 = a1[28];
  if (v5)
  {
    a1[29] = v5;
    operator delete(v5);
  }

  v6 = a1[23];
  if (v6)
  {
    a1[24] = v6;
    operator delete(v6);
  }

  v7 = a1[12];
  if (v7)
  {
    a1[13] = v7;
    operator delete(v7);
  }

  v8 = a1[7];
  if (v8)
  {
    a1[8] = v8;
    operator delete(v8);
  }

  v9 = a1[2];
  if (v9)
  {
    a1[3] = v9;
    operator delete(v9);
  }

  return a1;
}

void sub_239F11C94(Alembic::Abc::v12::OObject *a1)
{
  *a1 = &unk_284D17428;
  sub_239F1169C(a1 + 56);

  Alembic::Abc::v12::OObject::~OObject(a1);
}

void sub_239F11CE8(void ***a1)
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
        v4 -= 56;
        sub_239F07994(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_239F11D70(Alembic::Abc::v12::OObject *a1)
{
  *a1 = &unk_284D17468;
  sub_239F079E8(a1 + 56);

  Alembic::Abc::v12::OObject::~OObject(a1);
}

uint64_t sub_239F11DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 2;
  sub_239E552A0((a1 + 8), "");
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v11[0] = 0;
  v11[1] = 0;
  v10 = v11;
  LODWORD(v12) = 2;
  sub_239F07444(&v12 + 1, &v10);
  LODWORD(v15) = 0;
  v14 = 0u;
  *(&v15 + 4) = 1;
  sub_239E91CE0(&v10, v11[0]);
  sub_239F0669C(a3, &v12);
  sub_239F0669C(a4, &v12);
  *a1 = v12;
  v10 = a1;
  v11[0] = "OArchive::OArchive( iFileName)";
  Alembic::AbcCoreOgawa::v12::WriteArchive::operator()();
  v7 = *(a1 + 40);
  *(a1 + 32) = v9;
  if (v7)
  {
    sub_239E9A9B4(v7);
  }

  if (*(&v14 + 1))
  {
    sub_239E9A9B4(*(&v14 + 1));
  }

  sub_239E91CE0(&v12 + 8, v13);
  return a1;
}

void sub_239F11EF8(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  __cxa_begin_catch(a1);
  sub_239F07B88(v5);
  if (a2 == 2)
  {
    sub_239F06B1C(va);
  }

  else
  {
    sub_239F06AAC(va);
  }

  __cxa_end_catch();
  JUMPOUT(0x239F11EC4);
}

void sub_239F11F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_239F06B8C(va);
  v9 = *(v7 + 40);
  if (v9)
  {
    sub_239E9A9B4(v9);
  }

  if (*(v7 + 31) < 0)
  {
    operator delete(*(v7 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_239F11FAC()
{
  v3 = *MEMORY[0x277D85DE8];
  v1[1] = 0;
  v1[2] = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v0 = 0x4000000000000000;
  v1[0] = MEMORY[0x277D866A0] + 16;
  pxrInternal__aapl__pxrReserved__::UsdGeomCube::GetSizeAttr(v2, v1);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<double>();
}

void sub_239F122EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_239E797CC(exception_object);
}

void sub_239F123BC()
{
  v3[12] = *MEMORY[0x277D85DE8];
  v2[1] = 0;
  v2[2] = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v2[0] = MEMORY[0x277D86698] + 16;
  v0 = atomic_load(MEMORY[0x277D86550]);
  if (v0)
  {
    v1 = *(v0 + 1360);
    if ((v1 & 7) != 0)
    {
      atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomCone::GetRadiusAttr(v3, v2);
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<double>();
  }

  sub_239E864C4();
}

void sub_239F12B10()
{
  v3[12] = *MEMORY[0x277D85DE8];
  v2[1] = 0;
  v2[2] = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v2[0] = MEMORY[0x277D86718] + 16;
  v0 = atomic_load(MEMORY[0x277D86550]);
  if (v0)
  {
    v1 = *(v0 + 1360);
    if ((v1 & 7) != 0)
    {
      atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomCylinder::GetRadiusAttr(v3, v2);
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<double>();
  }

  sub_239E864C4();
}

void sub_239F133CC()
{
  v3[12] = *MEMORY[0x277D85DE8];
  v2[1] = 0;
  v2[2] = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v2[0] = MEMORY[0x277D86700] + 16;
  v0 = atomic_load(MEMORY[0x277D86550]);
  if (v0)
  {
    v1 = *(v0 + 1360);
    if ((v1 & 7) != 0)
    {
      atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomCapsule::GetRadiusAttr(v3, v2);
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<double>();
  }

  sub_239E864C4();
}

void sub_239F13D44()
{
  __dst[138] = *MEMORY[0x277D85DE8];
  v1[1] = 0;
  v1[2] = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v0 = 0x3FF0000000000000;
  v1[0] = MEMORY[0x277D866F0] + 16;
  pxrInternal__aapl__pxrReserved__::UsdGeomSphere::GetRadiusAttr(__dst, v1);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<double>();
}

void sub_239F14058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_239E797CC(exception_object);
}

void *sub_239F1412C(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_239F141C8(result, a2);
  }

  return result;
}

void sub_239F141AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_239F141C8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    sub_239E95B5C(a1, a2);
  }

  sub_239E797B4();
}

void sub_239F14368(_Unwind_Exception *a1)
{
  v4 = v3;

  MEMORY[0x23EE802C0](v2, 0x10A1C40CD2B3A6BLL);
  _Unwind_Resume(a1);
}

void sub_239F159C8(uint64_t a1, void *a2)
{
  v3 = a2;
  *a1 = &unk_284D17028;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = v3;
  v4 = MEMORY[0x277D860B8];
  _Q0 = *MEMORY[0x277D860B8];
  v6 = *(MEMORY[0x277D860B8] + 16);
  *(a1 + 64) = *MEMORY[0x277D860B8];
  *(a1 + 80) = v6;
  v7 = *(v4 + 32);
  v8 = *(v4 + 48);
  *(a1 + 96) = v7;
  *(a1 + 112) = v8;
  *(a1 + 128) = _Q0;
  *(a1 + 144) = v6;
  *(a1 + 160) = v7;
  *(a1 + 176) = v8;
  *(a1 + 192) = 0;
  *(a1 + 200) = 1112010548;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 208) = _Q0;
  *(a1 + 216) = 0;
  *(a1 + 224) = xmmword_239F9DEF0;
  *(a1 + 240) = 1069547520;
  *(a1 + 248) = 0;
  *(a1 + 272) = 0x447A00003DCCCCCDLL;
  *(a1 + 280) = _Q0;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = _Q0;
  sub_239F15AE8(a1, 16);
}

void sub_239F15AE8(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  *(a1 + 32) = v3;
  v4 = *(a1 + 40);
  if (v4)
  {
    MEMORY[0x23EE802A0](v4, 0x1000C8052888210);
    v5 = *(a1 + 32);
  }

  operator new[]();
}

void sub_239F15BD0(simd_float4x4 *a1, float a2)
{
  a1[3].columns[2].f32[3] = a2;
  a1[3].columns[2].f32[0] = 0.5 / tanf(a2 * 0.017453);
  v4 = a1[3].columns[2].f32[2];
  v5 = tanf(a2 * 0.0087266);
  a1[3].columns[0].f32[2] = v4 / (v5 + v5);
  v6.columns[0].f32[0] = sub_239F16264(a1);
  a1[1] = v6;
  a1[2] = __invert_f4(v6);
}

void sub_239F15C58(simd_float4x4 *a1)
{
  v2.columns[0].f32[0] = sub_239F16264(a1);
  a1[1] = v2;
  a1[2] = __invert_f4(v2);
}

uint64_t sub_239F15C94(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_284D17028;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v4 = *(a2 + 112);
  v6 = *(a2 + 64);
  v5 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v4;
  *(a1 + 64) = v6;
  *(a1 + 80) = v5;
  v7 = *(a2 + 160);
  v8 = *(a2 + 176);
  v9 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v9;
  *(a1 + 160) = v7;
  *(a1 + 176) = v8;
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);
  v10 = *(a2 + 224);
  *(a1 + 224) = v10;
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = *(a2 + 288);
  sub_239F15BD0(a1, *(&v10 + 3));
  v12.columns[0].f32[0] = sub_239F16264(a1);
  *(a1 + 64) = v12;
  *(a1 + 128) = __invert_f4(v12);
  return a1;
}

uint64_t sub_239F15DA0(uint64_t a1)
{
  *a1 = &unk_284D17028;
  v2 = *(a1 + 40);
  if (v2)
  {
    MEMORY[0x23EE802A0](v2, 0x1000C8052888210);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    MEMORY[0x23EE802A0](v3, 0x80C80B8603338);
  }

  v4 = *(a1 + 192);
  if (v4)
  {
    MEMORY[0x23EE802A0](v4, 0x1000C800285BD98);
  }

  return a1;
}

void sub_239F15E40(uint64_t a1)
{
  sub_239F15DA0(a1);

  JUMPOUT(0x23EE802C0);
}

void sub_239F15E78(uint64_t a1, __n128 a2)
{
  sub_239F15ECC((*(a1 + 56) + 16), a2);
  v3.columns[0].f32[0] = sub_239F16264(a1);
  *(a1 + 64) = v3;
  *(a1 + 128) = __invert_f4(v3);
}

uint64_t sub_239F15ECC(__n128 **a1, __n128 a2)
{
  v2 = *a1;
  a1[1] = *a1;
  v3 = a1[2];
  if (v2 >= v3)
  {
    v4 = v3 - v2;
    v5 = v4 >> 4;
    if ((v4 >> 4) <= 1)
    {
      v5 = 1;
    }

    if (v4 >= 0x7FFFFFFFFFFFFFE0)
    {
      v6 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v6 = v5;
    }

    sub_239E6861C(a1, v6);
  }

  v2->n128_u64[0] = 0x7FEFFFFFFFFFFFFFLL;
  v2[1] = a2;
  a1[1] = v2 + 2;

  return sub_239ECAF44();
}

uint64_t sub_239F15FA8(__n128 *a1, float32x4_t a2, float a3, float a4, float a5)
{
  a1[15].n128_f32[1] = a5;
  a1[15].n128_f32[2] = a4;
  a1[16] = a2;
  v7 = __sincosf_stret(a4);
  v9 = __sincosf_stret(a5);
  v10.f32[0] = v9.__cosval * v7.__cosval;
  v11 = v10;
  v11.i32[1] = LODWORD(v7.__sinval);
  v11.f32[2] = v9.__sinval * v7.__cosval;
  v16 = vmlaq_n_f32(a2, v11, a3);
  v12 = -1.0;
  if (v7.__cosval > 0.0)
  {
    v12 = 1.0;
  }

  v18[2] = 0;
  *v19 = 1065353216;
  *&v19[4] = 0uLL;
  *&v19[20] = 1065353216;
  *&v19[24] = 0;
  *v20 = 0;
  *&v20[8] = 1065353216;
  *&v20[20] = 0;
  *&v20[12] = 0;
  *&v20[28] = 1065353216;
  *&v17[0] = __PAIR64__(LODWORD(v7.__sinval), v10.u32[0]);
  *(v17 + 2) = v9.__sinval * v7.__cosval;
  v18[0] = 0;
  *&v18[1] = v12;
  *&v8 = v9.__sinval * v7.__cosval;
  sub_239F747D0(v19, v17, v18, v8);
  v17[0] = *v19;
  v17[1] = *&v19[16];
  v17[2] = *v20;
  v17[3] = *&v20[16];
  sub_239ECB24C((a1[3].n128_u64[1] + 16), v17);
  return sub_239F15ECC((a1[3].n128_u64[1] + 16), v16);
}

__n128 sub_239F160BC(uint64_t a1, float a2)
{
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
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  *__p = 0u;
  v12 = 0u;
  v9 = 0u;
  *v10 = 0u;
  *v7 = 0u;
  *v8 = 0u;
  sub_239F163E4(v7, *(a1 + 56) + 16);
  v2 = 0uLL;
  v3 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v23, a2), 0, v24), 0, v25), 0, v26);
  if (v7[1] != v7[0])
  {
    v2 = *(v7[0] + 1);
  }

  sub_239F15ECC(v7, vaddq_f32(v2, v3));
  v6 = v15;
  if (__p[1])
  {
    *&v12 = __p[1];
    operator delete(__p[1]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  if (v8[1])
  {
    *&v9 = v8[1];
    operator delete(v8[1]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }

  return v6;
}

void sub_239F161CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_239F16698(va);
  _Unwind_Resume(a1);
}

double sub_239F161E0(uint64_t a1, float a2)
{
  if (fabsf(a2) >= 0.00000011921)
  {
    *&v2 = sub_239F160BC(a1, a2).n128_u64[0];
  }

  else
  {
    v2 = *(*(a1 + 56) + 144);
    v3 = *(*(a1 + 56) + 160);
    v4 = *(*(a1 + 56) + 176);
    v5 = *(*(a1 + 56) + 192);
  }

  return *&v2;
}

float sub_239F1622C(_OWORD *a1, float a2)
{
  if (fabsf(a2) >= 0.00000011921)
  {
    return sub_239F16264(a1);
  }

  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  return *&v2;
}

float sub_239F16264(uint64_t a1)
{
  v2 = *(a1 + 272);
  v3 = *(a1 + 276);
  v4 = *(a1 + 236) * 0.00872664626;
  v5 = 1.0 / tanf(v4);
  v6 = *(a1 + 240);
  v7 = COERCE_UNSIGNED_INT((v6 * COERCE_FLOAT(*(a1 + 216))) / *(a1 + 232));
  return (v5 * COERCE_FLOAT(*(a1 + 208))) / v6;
}

double sub_239F1633C(float32x4_t *a1, double a2, double a3)
{
  v3 = vmlaq_n_f32(vmlaq_n_f32(a1[11], a1[8], ((*&a2 + *&a2) / *&a3) + -1.0), a1[9], 1.0 - ((*(&a2 + 1) + *(&a2 + 1)) / *(&a3 + 1)));
  __asm { FMOV            V0.4S, #-1.0 }

  v9 = vmlaq_f32(v3, _Q0, a1[10]);
  v10 = vdivq_f32(v9, vdupq_laneq_s32(v9, 3));
  v11 = vmlaq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*(a1[3].i64[1] + 144), v10.f32[0]), *(a1[3].i64[1] + 160), *v10.f32, 1), *(a1[3].i64[1] + 176), v10, 2), 0, *(a1[3].i64[1] + 192));
  v12 = vmulq_f32(v11, v11);
  *&v13 = vaddv_f32(*v12.f32) + v12.f32[2];
  *v12.f32 = vrsqrte_f32(v13);
  *&result = vmulq_n_f32(v11, vmul_f32(vrsqrts_f32(v13, vmul_f32(*v12.f32, *v12.f32)), *v12.f32).f32[0]).u64[0];
  return result;
}

uint64_t sub_239F163E4(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0u;
  *(a1 + 113) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  sub_239F1647C(a1, a2);
  return a1;
}

void sub_239F16450(_Unwind_Exception *a1)
{
  v4 = *(v1 + 72);
  if (v4)
  {
    *(v1 + 80) = v4;
    operator delete(v4);
  }

  sub_239F74CA8(v2, (v1 + 24), v1);
  _Unwind_Resume(a1);
}

uint64_t sub_239F1647C(uint64_t a1, uint64_t a2)
{
  *(a1 + 96) = *(a2 + 96);
  if (a1 != a2)
  {
    sub_239F16514(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 5);
    sub_239F16514((a1 + 24), *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 5);
    sub_239F16514((a1 + 48), *(a2 + 48), *(a2 + 56), (*(a2 + 56) - *(a2 + 48)) >> 5);
    sub_239F16514((a1 + 72), *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 5);
  }

  *(a1 + 113) = *(a2 + 113);
  sub_239ECAF44();
  return a1;
}

char *sub_239F16514(char **a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 5)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 59))
    {
      v9 = v7 >> 4;
      if (v7 >> 4 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFE0)
      {
        v10 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_239F1665C(a1, v10);
    }

    sub_239E797B4();
  }

  v11 = a1[1];
  if (a4 <= (v11 - result) >> 5)
  {
    while (v5 != a3)
    {
      *result = *v5;
      *(result + 1) = v5[1];
      v5 += 2;
      result += 32;
    }

    a1[1] = result;
  }

  else
  {
    v12 = (a2 + v11 - result);
    if (v11 != result)
    {
      do
      {
        *result = *v5;
        *(result + 1) = v5[1];
        v5 += 2;
        result += 32;
      }

      while (v5 != v12);
      v11 = a1[1];
    }

    v13 = v11;
    if (v12 != a3)
    {
      v13 = v11;
      v14 = v11;
      do
      {
        v15 = *v12;
        v16 = v12[1];
        v12 += 2;
        *v14 = v15;
        *(v14 + 1) = v16;
        v14 += 32;
        v13 += 32;
      }

      while (v12 != a3);
    }

    a1[1] = v13;
  }

  return result;
}

void sub_239F1665C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_239E6861C(a1, a2);
  }

  sub_239E797B4();
}

uint64_t sub_239F16698(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    *(a1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v5;
    operator delete(v5);
  }

  return a1;
}

void sub_239F166FC(float32x4_t a1)
{
  v3 = vsubq_f32(a1, v1[16]);
  *(v2 - 80) = 1065353216;
  *(v2 - 68) = 0;
  *(v2 - 76) = 0;
}

double sub_239F16730@<D0>(uint64_t a1@<X8>)
{
  v3 = (a1 + *v1);

  return sub_239ECACEC(v3, 0.0);
}

uint64_t sub_239F1674C(uint64_t a1)
{
  *a1 = &unk_284D17538;
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_239E9A9B4(v2);
  }

  *a1 = &unk_284D17508;
  sub_239E91CE0(a1 + 8, *(a1 + 16));
  return a1;
}

void sub_239F167C4(uint64_t a1)
{
  sub_239F1674C(a1);

  JUMPOUT(0x23EE802C0);
}

uint64_t sub_239F167FC(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(a1 + 16);
  return a1;
}

void sub_239F16834(void *a1@<X1>, void *a2@<X2>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (v9)
  {
    sub_239E566C0();
    v10 = v8;
    v13 = objc_msgSend_bytes(v10, v11, v12);
    v16 = objc_msgSend_length(v8, v14, v15);
    v18 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, @"memory://%@?address=%lx&size=%ld", v7, v13, v16);
    v31[0] = 0;
    v31[1] = 0;
    v32 = 0;
    v29 = v18;
    v21 = objc_msgSend_UTF8String(v29, v19, v20);
    sub_239E552A0(v31, v21);
    v22 = [MDLArchiveAssetResolver alloc];
    v24 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v23, v7);
    v26 = objc_msgSend_initWithURL_(v22, v25, v24);

    objc_msgSend_setData_(v26, v27, v8);
    objc_msgSend_setResolver_(v9, v28, v26);
    v30 = 0;
    pxrInternal__aapl__pxrReserved__::UsdStage::Open();
    sub_239E552A0(a4, "Could not import USD file");
    sub_239F178C8(&v30);

    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31[0]);
    }
  }

  else
  {
    sub_239E552A0(a4, "Cannot import into nil asset");
  }
}

void sub_239F16CC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, atomic_uint *a30, __int16 a31, char a32, char a33, uint64_t a34)
{
  sub_239F178C8(&a30);
  sub_239F178F8(&a31);
  v39 = *(v37 - 144);
  if ((v39 & 7) != 0)
  {
    atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_239F178C8((v37 - 136));

  if (*(v37 - 105) < 0)
  {
    operator delete(*(v37 - 128));
  }

  _Unwind_Resume(a1);
}

id sub_239F16E98(id *a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v20 = 0u;
  v21 = 0u;
  v4 = sub_239E57038(a1);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPseudoRoot(&v20, v4);
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v5 = atomic_load(MEMORY[0x277D86550]);
  if (!v5)
  {
    sub_239E864C4();
  }

  v18 = sub_239F17980(&v17, (v5 + 232));
  v6 = [MDLAnimatedVector3Array alloc];
  v8 = objc_msgSend_initWithElementCount_(v6, v7, 2);
  v9 = sub_239E57038(a1);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v9);
  v11 = v10;
  v12 = sub_239E57038(a1);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetEndTimeCode(v12);
  v13 = v11;
  if (v14 >= v13)
  {
    operator new();
  }

  *&v22 = &v17;
  sub_239E878AC(&v22);
  if ((BYTE8(v21) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v21 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&v21);
  if (*(&v20 + 1))
  {
    sub_239E5E560(*(&v20 + 1));
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

void sub_239F1710C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19)
{
  a19 = &a12;
  sub_239E878AC(&a19);
  sub_239ED1984(&a15);

  _Unwind_Resume(a1);
}

uint64_t sub_239F171AC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 48), 1uLL, memory_order_relaxed);
  }

  sub_239E57FC0((a1 + 16), (a2 + 16));
  sub_239E5B49C((a1 + 20), (a2 + 20));
  v5 = *(a2 + 24);
  *(a1 + 24) = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  return a1;
}

uint64_t sub_239F17238(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 29) == 1)
  {
    sub_239F74E24(v5);
  }

  *a1 = *a2;
  sub_239E57F68(a1 + 16, (a2 + 16));
  result = sub_239E5B450(a1 + 20, (a2 + 20));
  *(a1 + 48) = *(a2 + 24);
  return result;
}

uint64_t sub_239F172A4(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(a1 + 16);
  return a1;
}

id *sub_239F172DC(id *a1)
{
  v2 = *a1;
  *a1 = 0;

  return a1;
}

uint64_t sub_239F17314(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 8);
  objc_storeStrong(a1, *a2);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  v5 = *v4;
  *(a1 + 24) = *(v4 + 2);
  *(a1 + 8) = v5;
  *(a2 + 31) = 0;
  *(a2 + 8) = 0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v6 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v6;
  *(a2 + 55) = 0;
  *(a2 + 32) = 0;
  return a1;
}

uint64_t sub_239F173A0(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  v2 = *a1;
  *a1 = 0;

  return a1;
}

void sub_239F173F8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    if (*(a2 + 111) < 0)
    {
      operator delete(*(a2 + 88));
    }

    if (*(a2 + 87) < 0)
    {
      operator delete(*(a2 + 64));
    }

    v3 = *(a2 + 56);
    *(a2 + 56) = 0;

    if (*(a2 + 55) < 0)
    {
      operator delete(*(a2 + 32));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t sub_239F17490(uint64_t a1)
{
  v2 = *(a1 + 48);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(a1 + 40);
  v3 = *(a1 + 32);
  if (v3)
  {
    sub_239E5E560(v3);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_239F174FC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *(a2 + 80);
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_239E5B574(a2 + 72);
    v4 = *(a2 + 64);
    if (v4)
    {
      sub_239E5E560(v4);
    }

    if (*(a2 + 55) < 0)
    {
      operator delete(*(a2 + 32));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void sub_239F17598(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_239F17598(a1, *a2);
    sub_239F17598(a1, *(a2 + 1));
    v4 = *(a2 + 10);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_239E5B574((a2 + 72));
    v5 = *(a2 + 8);
    if (v5)
    {
      sub_239E5E560(v5);
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

char *sub_239F1763C(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_239E5BAE0(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  *(__dst + 3) = *(a2 + 3);
  if (*(a2 + 55) < 0)
  {
    sub_239E5BAE0(__dst + 32, *(a2 + 4), *(a2 + 5));
  }

  else
  {
    v5 = a2[2];
    *(__dst + 6) = *(a2 + 6);
    *(__dst + 2) = v5;
  }

  if (*(a2 + 79) < 0)
  {
    sub_239E5BAE0(__dst + 56, *(a2 + 7), *(a2 + 8));
  }

  else
  {
    v6 = *(a2 + 56);
    *(__dst + 9) = *(a2 + 9);
    *(__dst + 56) = v6;
  }

  return __dst;
}

void sub_239F176F4(_Unwind_Exception *a1)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(v2[1]);
  }

  sub_239F172DC(v2);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_239F17730(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  *(a1 + 24) = 0;

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_239F17798(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_239F17798(a1, *a2);
    sub_239F17798(a1, *(a2 + 1));
    if (a2[111] < 0)
    {
      operator delete(*(a2 + 11));
    }

    if (a2[87] < 0)
    {
      operator delete(*(a2 + 8));
    }

    v4 = *(a2 + 7);
    *(a2 + 7) = 0;

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void sub_239F17834(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE802C0);
}

uint64_t sub_239F1786C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x23EE802C0);
  }

  return result;
}

uint64_t sub_239F17888(uint64_t a1, uint64_t a2)
{
  if (sub_239E7B3D0(a2, &unk_284D176B0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239F178F8(uint64_t a1)
{
  sub_239F17934(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_239F17934(int a1, void **__p)
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

uint64_t sub_239F17980(void *a1, uint64_t *a2)
{
  v2 = (a1[1] - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    sub_239E797B4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v15 = a1;
  if (v7)
  {
    sub_239F17B14(a1, v7);
  }

  v8 = (8 * v2);
  v12[0] = 0;
  v12[1] = v8;
  v13 = 0;
  v14 = 0;
  v9 = *a2;
  *v8 = *a2;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *v8 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = v8 + 1;
  sub_239F17A80(a1, v12);
  v10 = a1[1];
  sub_239F17B5C(v12);
  return v10;
}

void sub_239F17A6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_239F17B5C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_239F17A80(uint64_t result, void *a2)
{
  v3 = *result;
  v2 = *(result + 8);
  v4 = a2[1] + *result - v2;
  if (v2 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v2);
    do
    {
      *v6++ = *v5;
      *v5++ = 0;
    }

    while (v5 != v2);
    do
    {
      if ((*v3 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      ++v3;
    }

    while (v3 != v2);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  *(result + 8) = v7;
  a2[1] = v7;
  v8 = *(result + 8);
  *(result + 8) = a2[2];
  a2[2] = v8;
  v9 = *(result + 16);
  *(result + 16) = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

void sub_239F17B14(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_239E79870();
}

uint64_t sub_239F17B5C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  while (v3 != v2)
  {
    v5 = *(v3 - 8);
    v3 -= 8;
    v4 = v5;
    *(a1 + 16) = v3;
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      v3 = *(a1 + 16);
    }
  }

  v6 = *a1;
  if (*a1)
  {
    operator delete(v6);
  }

  return a1;
}

uint64_t sub_239F17BC0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_239F17C38(result, a4);
  }

  return result;
}

void sub_239F17C38(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_239F17B14(a1, a2);
  }

  sub_239E797B4();
}

uint64_t sub_239F17C74(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  for (i = *(result + 8); a2 != a3; ++i)
  {
    v4 = *a2;
    *i = *a2;
    if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *i &= 0xFFFFFFFFFFFFFFF8;
    }

    ++a2;
  }

  *(result + 8) = i;
  return result;
}

void *sub_239F17CD0(void *result, void *a2, uint64_t a3)
{
  if (*(a3 + 112))
  {
    v4 = result;
    v5 = 0;
    v6 = a3 + 48;
    do
    {
      if (*(v6 + v5))
      {
        result = sub_239F17CD0(v4, a2);
      }

      v5 += 8;
    }

    while (v5 != 64);
  }

  else
  {
    v7 = *(a3 + 196);
    v8 = *(a3 + 8);
    v9 = v7;
    return sub_239F1D34C(a2, &v8);
  }

  return result;
}

uint64_t sub_239F19240(uint64_t a1, int32x4_t a2)
{
  v2 = *a1;
  v3 = vmovn_s32(vcgtq_s32(*a1, a2));
  if (v3.i8[0] & 1) != 0 || (v4 = *(a1 + 16), (vmovn_s32(vcgtq_s32(a2, v4)).u8[0]) || (v5 = vcgt_s32(vzip2_s32(*a2.i8, *v2.i8), vzip2_s32(*v4.i8, *a2.i8)), ((v5.i32[1] | v5.i32[0])) || (v6 = vextq_s8(a2, a2, 8uLL).u64[0], v7 = vcgt_s32(vzip1_s32(v6, *&vextq_s8(v2, v2, 8uLL)), vzip1_s32(*&vextq_s8(v4, v4, 8uLL), v6)), ((v7.i32[1] | v7.i32[0])) || (v3.i8[6])
  {
    v8 = 0;
  }

  else
  {
    v8 = vmovn_s32(vcgeq_s32(v4, a2)).i8[6];
  }

  return v8 & 1;
}

void sub_239F199E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_239E7B644(va);

  _Unwind_Resume(a1);
}

void sub_239F19B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_239E7B644(va);

  _Unwind_Resume(a1);
}

void sub_239F19C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_239E7B644(va);

  _Unwind_Resume(a1);
}

void sub_239F1B754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v17 = *(v16 - 208);
  if (v17)
  {
    *(v16 - 200) = v17;
    operator delete(v17);
  }

  v18 = *(v16 - 184);
  if (v18)
  {
    *(v16 - 176) = v18;
    operator delete(v18);
  }

  v19 = *(v16 - 160);
  if (v19)
  {
    *(v16 - 152) = v19;
    operator delete(v19);
  }

  v20 = *(v16 - 136);
  if (v20)
  {
    *(v16 - 128) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(a1);
}

void sub_239F1C450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a36)
  {
    operator delete(a36);
  }

  if (a39)
  {
    operator delete(a39);
  }

  _Unwind_Resume(a1);
}

void sub_239F1D21C(uint64_t a1, uint64_t *a2)
{
  sub_239E7D264(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void *sub_239F1D2C0(void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[10];
    v2[10] = 0;
    if (v3)
    {
      v4 = sub_239E740E8(v3);
      MEMORY[0x23EE802C0](v4, 0x1020C40BD3C1984);
    }

    v5 = v2[6];
    if (v5)
    {
      v2[7] = v5;
      operator delete(v5);
    }

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

void *sub_239F1D34C(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *sub_239F1D584(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_239F1D7B4(void *a1, uint64_t *a2, uint64_t *a3)
{
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
      while (a2 != a3)
      {
        v9 = a2[2];
        v8[2] = v9;
        *(v8 + 6) = *(a2 + 6);
        v10 = *v8;
        v8[1] = v9;
        v11 = sub_239E7CD28(a1, v9, v8 + 2);
        sub_239E7CE88(a1, v8, v11);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    sub_239F1D8C8();
  }
}

void sub_239F1D894(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

const char *sub_239F1DDD8(uint64_t a1)
{
  if (a1 <= 458752)
  {
    if (a1 <= 196611)
    {
      if (a1 <= 131073)
      {
        if (a1 > 65538)
        {
          switch(a1)
          {
            case 65539:
              return "UChar3";
            case 65540:
              return "UChar4";
            case 131073:
              return "Char1";
          }
        }

        else
        {
          switch(a1)
          {
            case 0:
              return "Invalid";
            case 65537:
              return "UChar1";
            case 65538:
              return "UChar2";
          }
        }

        return 0;
      }

      if (a1 <= 196608)
      {
        switch(a1)
        {
          case 131074:
            return "Char2";
          case 131075:
            return "Char3";
          case 131076:
            return "Char4";
        }

        return 0;
      }

      if (a1 == 196609)
      {
        return "UChar1Norm";
      }

      else if (a1 == 196610)
      {
        return "UChar2Norm";
      }

      else
      {
        return "UChar3Norm";
      }
    }

    else
    {
      if (a1 <= 327681)
      {
        if (a1 > 262146)
        {
          if (a1 == 262147 || a1 == 262148)
          {
            return "Char3Norm";
          }

          if (a1 == 327681)
          {
            return "UShort1";
          }
        }

        else
        {
          switch(a1)
          {
            case 196612:
              return "UChar4Norm";
            case 262145:
              return "Char1Norm";
            case 262146:
              return "Char2Norm";
          }
        }

        return 0;
      }

      if (a1 <= 393216)
      {
        switch(a1)
        {
          case 327682:
            return "UShor2";
          case 327683:
            return "UShor3";
          case 327684:
            return "UShort4";
        }

        return 0;
      }

      if (a1 > 393218)
      {
        if (a1 == 393219)
        {
          return "Short3";
        }

        if (a1 == 393220)
        {
          return "Short4";
        }

        return 0;
      }

      if (a1 == 393217)
      {
        return "Short1";
      }

      else
      {
        return "Short2";
      }
    }
  }

  else if (a1 > 655360)
  {
    if (a1 <= 720897)
    {
      if (a1 > 655363)
      {
        switch(a1)
        {
          case 655364:
            return "Int4";
          case 659460:
            return "Int1010102Norm";
          case 720897:
            return "Half1";
        }

        return 0;
      }

      if (a1 == 655361)
      {
        return "Int1";
      }

      else if (a1 == 655362)
      {
        return "Int2";
      }

      else
      {
        return "Int3";
      }
    }

    else
    {
      if (a1 <= 786432)
      {
        switch(a1)
        {
          case 720898:
            return "Half2";
          case 720899:
            return "Half3";
          case 720900:
            return "Half4";
        }

        return 0;
      }

      if (a1 > 786434)
      {
        if (a1 == 786435)
        {
          return "Float3";
        }

        if (a1 == 786436)
        {
          return "Float4";
        }

        return 0;
      }

      if (a1 == 786433)
      {
        return "Float1";
      }

      else
      {
        return "Float2";
      }
    }
  }

  else
  {
    if (a1 > 524290)
    {
      if (a1 <= 589825)
      {
        switch(a1)
        {
          case 524291:
            return "Short34Norm";
          case 524292:
            return "Short4Norm";
          case 589825:
            return "UInt1";
        }
      }

      else
      {
        if (a1 <= 589827)
        {
          if (a1 == 589826)
          {
            return "UInt2";
          }

          else
          {
            return "UInt3";
          }
        }

        if (a1 == 589828)
        {
          return "UInt4";
        }

        if (a1 == 593924)
        {
          return "UInt1010102Norm";
        }
      }

      return 0;
    }

    if (a1 > 458755)
    {
      switch(a1)
      {
        case 458756:
          return "UShort4Norm";
        case 524289:
          return "Short1Norm";
        case 524290:
          return "Short2Norm";
      }

      return 0;
    }

    if (a1 == 458753)
    {
      return "UShort1Norm";
    }

    else if (a1 == 458754)
    {
      return "UShort2Norm";
    }

    else
    {
      return "UShort3Norm";
    }
  }
}

uint64_t sub_239F20504(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 26)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_284D17BD0);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239F2053C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 29)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_284D17BE8);
  }

  else
  {
    return 0;
  }
}

void sub_239F20620(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_239E56C80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_239F20650(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  memset(v5, 0, sizeof(v5));
  sub_239E5B364(a1);
  v6 = v5;
  sub_239F21208(a1, a2, &v6);
  return a1;
}

uint64_t sub_239F206C8(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  memset(v5, 0, sizeof(v5));
  sub_239E5B364(a1);
  v6 = v5;
  sub_239F21CC4(a1, a2, &v6);
  return a1;
}

void sub_239F207E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_239E5B240(va);
  _Unwind_Resume(a1);
}

void sub_239F20884(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_239E5B240(va);
  _Unwind_Resume(a1);
}

void sub_239F20A70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_239E797CC(exception_object);
}

void sub_239F20BF8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_239E797CC(exception_object);
}

void sub_239F20D88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_239E797CC(exception_object);
}

std::type_info *sub_239F20DD0(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_239F20504(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, &stru_284D17BD0, v1, v2);
    v1 = sub_239EC8B1C(v1, v5);
    sub_239E5B240(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_239F20E5C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_239F20504(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return MEMORY[0x282207DB0](a1, sub_239F22910, &stru_284D17BD0);
  }
}

void sub_239F21088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_239E797CC(exception_object);
}

std::type_info *sub_239F210D0(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_239F2053C(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, &stru_284D17BE8, v1, v2);
    v1 = sub_239EC8B1C(v1, v5);
    sub_239E5B240(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_239F2115C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_239F2053C(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return MEMORY[0x282207DB0](a1, sub_239F229CC, &stru_284D17BE8);
  }
}

void sub_239F21208(unint64_t *a1, unint64_t a2, __int128 **a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = a1[4];
            if (*(v9 - 8) < a2)
            {
              v10 = sub_239F21410(a1, a2);
              v7 = v10;
              if (v3)
              {
                v11 = 0;
                do
                {
                  v12 = &v10[v11 / 8];
                  v13 = *(v9 + v11);
                  v14 = *(v9 + v11 + 16);
                  v15 = *(v9 + v11 + 48);
                  *(v12 + 2) = *(v9 + v11 + 32);
                  *(v12 + 3) = v15;
                  *v12 = v13;
                  *(v12 + 1) = v14;
                  v11 += 64;
                }

                while (v3 << 6 != v11);
              }
            }

            v16 = *a3;
            v17 = v3 << 6;
            do
            {
              v18 = (v7 + v17);
              v19 = *v16;
              v20 = v16[1];
              v21 = v16[3];
              v18[2] = v16[2];
              v18[3] = v21;
              *v18 = v19;
              v18[1] = v20;
              v17 += 64;
            }

            while (a2 << 6 != v17);
          }

          v22 = v7;
          goto LABEL_31;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v31 = a2;
      }

      else
      {
        v31 = *a1;
      }

      v32 = sub_239F21410(a1, a2);
      v22 = v32;
      if (v3)
      {
        v33 = v31 << 6;
        v34 = v32;
        do
        {
          v35 = *v7;
          v36 = *(v7 + 1);
          v37 = *(v7 + 3);
          *(v34 + 2) = *(v7 + 2);
          *(v34 + 3) = v37;
          *v34 = v35;
          *(v34 + 1) = v36;
          v34 += 8;
          v7 += 8;
          v33 -= 64;
        }

        while (v33);
      }

      if (v3 < a2)
      {
        v38 = *a3;
        v39 = v3 << 6;
        do
        {
          v40 = (v32 + v39);
          v41 = *v38;
          v42 = v38[1];
          v43 = v38[3];
          v40[2] = v38[2];
          v40[3] = v43;
          *v40 = v41;
          v40[1] = v42;
          v39 += 64;
        }

        while (a2 << 6 != v39);
      }

      goto LABEL_31;
    }

    v23 = a2 << 6;
    if ((a2 << 6) / a2 == 64)
    {
      v24 = sub_239F21410(a1, a2);
      v22 = v24;
      v25 = 0;
      v26 = *a3;
      do
      {
        v27 = &v24[v25 / 8];
        v28 = *v26;
        v29 = v26[1];
        v30 = v26[3];
        *(v27 + 2) = v26[2];
        *(v27 + 3) = v30;
        *v27 = v28;
        *(v27 + 1) = v29;
        v25 += 64;
      }

      while (v23 != v25);
LABEL_31:
      if (v22 != a1[4])
      {
        sub_239E56C80(a1);
        a1[4] = v22;
      }

      *a1 = a2;
      return;
    }
  }

  sub_239E5B364(a1);
}

void *sub_239F21410(uint64_t a1, unint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_239E56D84(v6);
  if (a2 >> 57)
  {
    v3 = -1;
  }

  else
  {
    v3 = (a2 << 6) | 0x10;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6[0])
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

uint64_t *sub_239F214A4(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_239F214C4(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_239F216F0(result);
}

unint64_t sub_239F214DC(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = **a1;
    do
    {
      --v3;
      v7[0] = 0;
      v7[1] = 0;
      sub_239F21768(v7, v2, v2 + 1, v2 + 2, v2 + 3, v2 + 4, v2 + 5, v2 + 6, v2 + 7, v2 + 8, v2 + 9, v2 + 10, v2 + 11, v2 + 12, v2 + 13, v2 + 14, v2 + 15);
      v4 = bswap64(0x9E3779B97F4A7C55 * v7[0]);
      v1 = v4 + ((v4 + v1 + (v4 + v1) * (v4 + v1)) >> 1);
      v2 += 16;
    }

    while (v3);
    v5 = 0x9E3779B97F4A7C55 * v1;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

uint64_t sub_239F215E4(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void sub_239F216D8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_284D160D8;
  sub_239EB5D90();
}

uint64_t *sub_239F216F0(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    sub_239E56C80(v1);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

uint64_t sub_239F21768(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7, unsigned int *a8, unsigned int *a9, unsigned int *a10, unsigned int *a11, unsigned int *a12, unsigned int *a13, unsigned int *a14, unsigned int *a15, unsigned int *a16, unsigned int *a17)
{
  v17 = *a2;
  if (*(a1 + 8))
  {
    v17 += (*a1 + v17 + (*a1 + v17) * (*a1 + v17)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v17;
  return sub_239F217D8(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t sub_239F217D8(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7, unsigned int *a8, unsigned int *a9, unsigned int *a10, unsigned int *a11, unsigned int *a12, unsigned int *a13, unsigned int *a14, unsigned int *a15, unsigned int *a16)
{
  v16 = *a2;
  if (*(a1 + 8))
  {
    v16 += (*a1 + v16 + (*a1 + v16) * (*a1 + v16)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v16;
  return sub_239F21844(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_239F21844(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7, unsigned int *a8, unsigned int *a9, unsigned int *a10, unsigned int *a11, unsigned int *a12, unsigned int *a13, unsigned int *a14, unsigned int *a15)
{
  v15 = *a2;
  if (*(a1 + 8))
  {
    v15 += (*a1 + v15 + (*a1 + v15) * (*a1 + v15)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v15;
  return sub_239F218AC(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_239F218AC(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7, unsigned int *a8, unsigned int *a9, unsigned int *a10, unsigned int *a11, unsigned int *a12, unsigned int *a13, unsigned int *a14)
{
  v14 = *a2;
  if (*(a1 + 8))
  {
    v14 += (*a1 + v14 + (*a1 + v14) * (*a1 + v14)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v14;
  return sub_239F21910(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_239F21910(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7, unsigned int *a8, unsigned int *a9, unsigned int *a10, unsigned int *a11, unsigned int *a12, unsigned int *a13)
{
  v13 = *a2;
  if (*(a1 + 8))
  {
    v13 += (*a1 + v13 + (*a1 + v13) * (*a1 + v13)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v13;
  return sub_239F21970(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t sub_239F21970(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7, unsigned int *a8, unsigned int *a9, unsigned int *a10, unsigned int *a11, unsigned int *a12)
{
  v12 = *a2;
  if (*(a1 + 8))
  {
    v12 += (*a1 + v12 + (*a1 + v12) * (*a1 + v12)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v12;
  return sub_239F219CC(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t sub_239F219CC(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7, unsigned int *a8, unsigned int *a9, unsigned int *a10, unsigned int *a11)
{
  v11 = *a2;
  if (*(a1 + 8))
  {
    v11 += (*a1 + v11 + (*a1 + v11) * (*a1 + v11)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v11;
  return sub_239F21A24(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t sub_239F21A24(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7, unsigned int *a8, unsigned int *a9, unsigned int *a10)
{
  v10 = *a2;
  if (*(a1 + 8))
  {
    v10 += (*a1 + v10 + (*a1 + v10) * (*a1 + v10)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v10;
  return sub_239F21A78(a1, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_239F21A78(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7, unsigned int *a8, unsigned int *a9)
{
  v9 = *a2;
  if (*(a1 + 8))
  {
    v9 += (*a1 + v9 + (*a1 + v9) * (*a1 + v9)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v9;
  return sub_239F21AC8(a1, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_239F21AC8(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7, unsigned int *a8)
{
  v8 = *a2;
  if (*(a1 + 8))
  {
    v8 += (*a1 + v8 + (*a1 + v8) * (*a1 + v8)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v8;
  return sub_239F21B10(a1, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_239F21B10(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7)
{
  v7 = *a2;
  if (*(a1 + 8))
  {
    v7 += (*a1 + v7 + (*a1 + v7) * (*a1 + v7)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v7;
  return sub_239F21B54(a1, a3, a4, a5, a6, a7);
}

uint64_t sub_239F21B54(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6)
{
  v6 = *a2;
  if (*(a1 + 8))
  {
    v6 += (*a1 + v6 + (*a1 + v6) * (*a1 + v6)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v6;
  return sub_239EB619C(a1, a3, a4, a5, a6);
}

uint64_t sub_239F21B94(uint64_t *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && sub_239EB5C18(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_239EB5C18(a1, a2);
  if (!result)
  {
    return result;
  }

  v5 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v6 = a1[4];
  v7 = *(a2 + 32);
  v8 = (v5 << 6) - 64;
  do
  {
    result = pxrInternal__aapl__pxrReserved__::GfMatrix4f::operator==();
    if (!result)
    {
      break;
    }

    v6 += 64;
    v7 += 64;
    v9 = v8;
    v8 -= 64;
  }

  while (v9);
  return result;
}

uint64_t sub_239F21C44(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    sub_239EB5CFC();
  }

  return *a1;
}

void sub_239F21CC4(unint64_t *a1, unint64_t a2, __int128 **a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = a1[4];
            if (*(v9 - 8) < a2)
            {
              v10 = sub_239F21F20(a1, a2);
              v7 = v10;
              if (v3)
              {
                v11 = 0;
                do
                {
                  v12 = &v10[v11 / 8];
                  v13 = *(v9 + v11);
                  v14 = *(v9 + v11 + 16);
                  v15 = *(v9 + v11 + 48);
                  *(v12 + 2) = *(v9 + v11 + 32);
                  *(v12 + 3) = v15;
                  *v12 = v13;
                  *(v12 + 1) = v14;
                  v16 = *(v9 + v11 + 64);
                  v17 = *(v9 + v11 + 80);
                  v18 = *(v9 + v11 + 112);
                  *(v12 + 6) = *(v9 + v11 + 96);
                  *(v12 + 7) = v18;
                  *(v12 + 4) = v16;
                  *(v12 + 5) = v17;
                  v11 += 128;
                }

                while (v3 << 7 != v11);
              }
            }

            v19 = *a3;
            v20 = v3 << 7;
            do
            {
              v21 = (v7 + v20);
              v22 = *v19;
              v23 = v19[1];
              v24 = v19[3];
              v21[2] = v19[2];
              v21[3] = v24;
              *v21 = v22;
              v21[1] = v23;
              v25 = v19[4];
              v26 = v19[5];
              v27 = v19[7];
              v21[6] = v19[6];
              v21[7] = v27;
              v21[4] = v25;
              v21[5] = v26;
              v20 += 128;
            }

            while (a2 << 7 != v20);
          }

          v28 = v7;
          goto LABEL_31;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v40 = a2;
      }

      else
      {
        v40 = *a1;
      }

      v41 = sub_239F21F20(a1, a2);
      v28 = v41;
      if (v3)
      {
        v42 = v40 << 7;
        v43 = v41;
        do
        {
          v44 = *v7;
          v45 = *(v7 + 1);
          v46 = *(v7 + 3);
          *(v43 + 2) = *(v7 + 2);
          *(v43 + 3) = v46;
          *v43 = v44;
          *(v43 + 1) = v45;
          v47 = *(v7 + 4);
          v48 = *(v7 + 5);
          v49 = *(v7 + 7);
          *(v43 + 6) = *(v7 + 6);
          *(v43 + 7) = v49;
          *(v43 + 4) = v47;
          *(v43 + 5) = v48;
          v7 += 16;
          v43 += 16;
          v42 -= 128;
        }

        while (v42);
      }

      if (v3 < a2)
      {
        v50 = *a3;
        v51 = v3 << 7;
        do
        {
          v52 = (v41 + v51);
          v53 = *v50;
          v54 = v50[1];
          v55 = v50[3];
          v52[2] = v50[2];
          v52[3] = v55;
          *v52 = v53;
          v52[1] = v54;
          v56 = v50[4];
          v57 = v50[5];
          v58 = v50[7];
          v52[6] = v50[6];
          v52[7] = v58;
          v52[4] = v56;
          v52[5] = v57;
          v51 += 128;
        }

        while (a2 << 7 != v51);
      }

      goto LABEL_31;
    }

    v29 = a2 << 7;
    if ((a2 << 7) / a2 == 128)
    {
      v30 = sub_239F21F20(a1, a2);
      v28 = v30;
      v31 = 0;
      v32 = *a3;
      do
      {
        v33 = &v30[v31 / 8];
        v34 = *v32;
        v35 = v32[1];
        v36 = v32[3];
        *(v33 + 2) = v32[2];
        *(v33 + 3) = v36;
        *v33 = v34;
        *(v33 + 1) = v35;
        v37 = v32[4];
        v38 = v32[5];
        v39 = v32[7];
        *(v33 + 6) = v32[6];
        *(v33 + 7) = v39;
        *(v33 + 4) = v37;
        *(v33 + 5) = v38;
        v31 += 128;
      }

      while (v29 != v31);
LABEL_31:
      if (v28 != a1[4])
      {
        sub_239E56C80(a1);
        a1[4] = v28;
      }

      *a1 = a2;
      return;
    }
  }

  sub_239E5B364(a1);
}

void *sub_239F21F20(uint64_t a1, unint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_239E56D84(v6);
  if (HIBYTE(a2))
  {
    v3 = -1;
  }

  else
  {
    v3 = (a2 << 7) | 0x10;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6[0])
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

uint64_t *sub_239F21FB4(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_239F21FD4(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_239F22200(result);
}

unint64_t sub_239F21FEC(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = **a1;
    do
    {
      --v3;
      v7[0] = 0;
      v7[1] = 0;
      sub_239F22278(v7, v2, v2 + 1, v2 + 2, v2 + 3, v2 + 4, v2 + 5, v2 + 6, v2 + 7, v2 + 8, v2 + 9, v2 + 10, v2 + 11, v2 + 12, v2 + 13, v2 + 14, v2 + 15);
      v4 = bswap64(0x9E3779B97F4A7C55 * v7[0]);
      v1 = v4 + ((v4 + v1 + (v4 + v1) * (v4 + v1)) >> 1);
      v2 += 16;
    }

    while (v3);
    v5 = 0x9E3779B97F4A7C55 * v1;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

uint64_t sub_239F220F4(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void sub_239F221E8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_284D16190;
  sub_239EB5D90();
}

uint64_t *sub_239F22200(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    sub_239E56C80(v1);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

uint64_t sub_239F22278(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14, uint64_t *a15, uint64_t *a16, void *a17)
{
  v17 = *a2;
  if (*(a1 + 8))
  {
    v17 += (*a1 + v17 + (*a1 + v17) * (*a1 + v17)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v17;
  return sub_239F222E8(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t sub_239F222E8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14, uint64_t *a15, void *a16)
{
  v16 = *a2;
  if (*(a1 + 8))
  {
    v16 += (*a1 + v16 + (*a1 + v16) * (*a1 + v16)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v16;
  return sub_239F22354(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_239F22354(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14, void *a15)
{
  v15 = *a2;
  if (*(a1 + 8))
  {
    v15 += (*a1 + v15 + (*a1 + v15) * (*a1 + v15)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v15;
  return sub_239F223BC(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_239F223BC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, void *a14)
{
  v14 = *a2;
  if (*(a1 + 8))
  {
    v14 += (*a1 + v14 + (*a1 + v14) * (*a1 + v14)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v14;
  return sub_239F22420(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_239F22420(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10, uint64_t *a11, uint64_t *a12, void *a13)
{
  v13 = *a2;
  if (*(a1 + 8))
  {
    v13 += (*a1 + v13 + (*a1 + v13) * (*a1 + v13)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v13;
  return sub_239F22480(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t sub_239F22480(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10, uint64_t *a11, void *a12)
{
  v12 = *a2;
  if (*(a1 + 8))
  {
    v12 += (*a1 + v12 + (*a1 + v12) * (*a1 + v12)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v12;
  return sub_239F224DC(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t sub_239F224DC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10, void *a11)
{
  v11 = *a2;
  if (*(a1 + 8))
  {
    v11 += (*a1 + v11 + (*a1 + v11) * (*a1 + v11)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v11;
  return sub_239F22534(a1, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t sub_239F22534(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, void *a10)
{
  v10 = *a2;
  if (*(a1 + 8))
  {
    v10 += (*a1 + v10 + (*a1 + v10) * (*a1 + v10)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v10;
  return sub_239F22588(a1, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_239F22588(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v9 = *a2;
  if (*(a1 + 8))
  {
    v9 += (*a1 + v9 + (*a1 + v9) * (*a1 + v9)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v9;
  return sub_239F225D8(a1, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_239F225D8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, void *a8)
{
  v8 = *a2;
  if (*(a1 + 8))
  {
    v8 += (*a1 + v8 + (*a1 + v8) * (*a1 + v8)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v8;
  return sub_239F22620(a1, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_239F22620(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, void *a7)
{
  v7 = *a2;
  if (*(a1 + 8))
  {
    v7 += (*a1 + v7 + (*a1 + v7) * (*a1 + v7)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v7;
  return sub_239F22664(a1, a3, a4, a5, a6, a7);
}

uint64_t sub_239F22664(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, void *a6)
{
  v6 = *a2;
  if (*(a1 + 8))
  {
    v6 += (*a1 + v6 + (*a1 + v6) * (*a1 + v6)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v6;
  return sub_239F226A4(a1, a3, a4, a5, a6);
}

uint64_t sub_239F226A4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void *a5)
{
  v5 = *a2;
  if (*(a1 + 8))
  {
    v5 += (*a1 + v5 + (*a1 + v5) * (*a1 + v5)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v5;
  return sub_239F226E0(a1, a3, a4, a5);
}

uint64_t sub_239F226E0(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = *a2;
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  return sub_239F22718(a1, a3, a4);
}

uint64_t sub_239F22718(uint64_t result, uint64_t *a2, void *a3)
{
  v3 = *a2;
  if (*(result + 8))
  {
    v3 += (*result + v3 + (*result + v3) * (*result + v3)) >> 1;
  }

  else
  {
    *(result + 8) = 1;
  }

  *result = *a3 + ((*a3 + v3 + (*a3 + v3) * (*a3 + v3)) >> 1);
  return result;
}

uint64_t sub_239F22758(uint64_t *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && sub_239EB5C18(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_239EB5C18(a1, a2);
  if (!result)
  {
    return result;
  }

  v5 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v6 = a1[4];
  v7 = *(a2 + 32);
  v8 = (v5 << 7) - 128;
  do
  {
    result = pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator==();
    if (!result)
    {
      break;
    }

    v6 += 128;
    v7 += 128;
    v9 = v8;
    v8 -= 128;
  }

  while (v9);
  return result;
}

uint64_t sub_239F22808(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    sub_239EB5CFC();
  }

  return *a1;
}

void sub_239F22888(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(a1 + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_239F74F34(a1, (a1 + 32));
    }
  }
}

void sub_239F228CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(a1 + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_239F74FC0(a1, (a1 + 32));
    }
  }
}

uint64_t sub_239F22970(uint64_t result)
{
  if (result)
  {
    sub_239E56C80(result);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

uint64_t sub_239F22A2C(uint64_t result)
{
  if (result)
  {
    sub_239E56C80(result);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

char **sub_239F22B70(char **a1, char **a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    v3 = a2[1];
    v5 = v3 - *a2;
    v6 = a1[2];
    v7 = *a1;
    if (v6 - *a1 < v5)
    {
      v8 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
      if (v7)
      {
        v9 = a1[1];
        v10 = *a1;
        if (v9 != v7)
        {
          do
          {
            v11 = v9 - 24;
            sub_239E5B240((v9 - 16));
            v9 = v11;
          }

          while (v11 != v7);
          v10 = *a1;
        }

        a1[1] = v7;
        operator delete(v10);
        v6 = 0;
        *a1 = 0;
        a1[1] = 0;
        a1[2] = 0;
      }

      if (v8 <= 0xAAAAAAAAAAAAAAALL)
      {
        v12 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
        v13 = 2 * v12;
        if (2 * v12 <= v8)
        {
          v13 = v8;
        }

        if (v12 >= 0x555555555555555)
        {
          v14 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v14 = v13;
        }

        if (v14 <= 0xAAAAAAAAAAAAAAALL)
        {
          sub_239F309FC(v14);
        }
      }

      sub_239E797B4();
    }

    v15 = a1[1];
    if (v15 - v7 >= v5)
    {
      if (v4 != v3)
      {
        v20 = *a2;
        v21 = *a1;
        do
        {
          v22 = *v20;
          v20 += 24;
          *v21 = v22;
          v21 += 24;
          sub_239EF2160(v7 + 1, v4 + 1);
          v7 = v21;
          v4 = v20;
        }

        while (v20 != v3);
        v15 = a1[1];
        v7 = v21;
      }

      if (v15 != v7)
      {
        do
        {
          v23 = v15 - 24;
          sub_239E5B240((v15 - 16));
          v15 = v23;
        }

        while (v23 != v7);
      }

      a1[1] = v7;
    }

    else
    {
      v16 = &v4[v15 - v7];
      if (v15 != v7)
      {
        v17 = *a2;
        v18 = *a1;
        do
        {
          v19 = *v17;
          v17 += 24;
          *v18 = v19;
          v18 += 24;
          sub_239EF2160(v7 + 1, v4 + 1);
          v7 = v18;
          v4 = v17;
        }

        while (v17 != v16);
      }

      sub_239F30D2C(a1, v16, v3);
    }
  }

  return a1;
}

uint64_t sub_239F2320C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 58)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_284D17AE0);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239F23244(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 56)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_284D17AC8);
  }

  else
  {
    return 0;
  }
}

void sub_239F233B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    sub_239E797CC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239F23430(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5 = 0;
  sub_239E5B364(a1);
  v6 = &v5;
  sub_239F30DD0(a1, a2, &v6);
  return a1;
}

void sub_239F23694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_239E5B240(v16 + 8);
  sub_239E5B240(&a16);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_239F236EC(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_239F309FC(a2);
    }

    sub_239E797B4();
  }

  return result;
}

void sub_239F237B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_239F309A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_239F237C8(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_239E797B4();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    v19 = a1;
    if (v10)
    {
      sub_239F309FC(v10);
    }

    v16 = 0;
    v17 = 24 * v7;
    sub_239F30AF8((24 * v7), a2);
    v18 = 24 * v7 + 24;
    v11 = a1[1];
    v12 = 24 * v7 + *a1 - v11;
    sub_239F30A54(*a1, v11, v12);
    v13 = *a1;
    *a1 = v12;
    v14 = a1[2];
    v15 = v18;
    *(a1 + 1) = v18;
    *&v18 = v13;
    *(&v18 + 1) = v14;
    v16 = v13;
    v17 = v13;
    result = sub_239F309A8(&v16);
    v6 = v15;
  }

  else
  {
    result = sub_239F30AF8(a1[1], a2);
    v6 = v4 + 24;
    a1[1] = v4 + 24;
  }

  a1[1] = v6;
  return result;
}

void sub_239F239F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_239E5B240(v4 + 8);
  sub_239E5B240(va);
  _Unwind_Resume(a1);
}

void sub_239F23BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_239E5B240(va1);
  sub_239E5B240(v3 - 72);
  sub_239E56C80(va);
  _Unwind_Resume(a1);
}

void *sub_239F23C24(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
  if (v5 == *a1 || (v7 = *a2, *a2 > *(v5 - 3)))
  {
    v8 = a1[2];
    if (v5 < v8)
    {
      *v5 = *a2;
      result = sub_239E5F7D4(v5 + 1, a2 + 1);
      v10 = v5 + 3;
      a1[1] = (v5 + 3);
LABEL_41:
      a1[1] = v10;
      return result;
    }

    v11 = v6 + 1;
    if (v6 + 1 <= 0xAAAAAAAAAAAAAAALL)
    {
      v12 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v4) >> 3);
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0x555555555555555)
      {
        v13 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v13 = v11;
      }

      v51 = a1;
      if (v13)
      {
        sub_239F309FC(v13);
      }

      v48 = 0;
      v49 = 24 * v6;
      v50 = 24 * v6;
      *v49 = *a2;
      sub_239E5F7D4((24 * v6 + 8), a2 + 1);
      *&v50 = v50 + 24;
      v28 = a1[1];
      v29 = v49 + *a1 - v28;
      sub_239F30A54(*a1, v28, v29);
      v30 = *a1;
      *a1 = v29;
      v31 = a1[2];
      v43 = v50;
      *(a1 + 1) = v50;
      *&v50 = v30;
      *(&v50 + 1) = v31;
      v48 = v30;
      v49 = v30;
      result = sub_239F309A8(&v48);
      v10 = v43;
      goto LABEL_41;
    }

LABEL_60:
    sub_239E797B4();
  }

  v14 = *a1;
  v15 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
  do
  {
    v16 = v15 >> 1;
    v17 = &v14[3 * (v15 >> 1)];
    v19 = *v17;
    v18 = v17 + 3;
    v15 += ~(v15 >> 1);
    if (v19 < v7)
    {
      v14 = v18;
    }

    else
    {
      v15 = v16;
    }
  }

  while (v15);
  if (v5 != v14 && *v14 == v7)
  {
    *v14 = v7;
    v20 = v14 + 1;
    v21 = a2 + 1;
LABEL_37:

    return sub_239EF2160(v20, v21);
  }

  v22 = a1[2];
  if (v5 < v22)
  {
    if (v5 == v14)
    {
      *v5 = v7;
      result = sub_239E5F7D4(v5 + 1, a2 + 1);
      v10 = v5 + 3;
      goto LABEL_41;
    }

    v23 = v5 - 3;
    v24 = a1[1];
    if (v5 >= 0x18)
    {
      v24 = a1[1];
      do
      {
        sub_239F30AF8(v24, v23);
        v23 += 3;
        v24 += 3;
      }

      while (v23 < v5);
    }

    a1[1] = v24;
    if (v5 != v14 + 3)
    {
      v25 = 0;
      do
      {
        v5[v25 - 3] = v5[v25 - 6];
        sub_239EC8B1C(&v5[v25 - 2], &v5[v25 - 5]);
        v25 -= 3;
      }

      while (&v5[v25 - 3] != v14);
      v24 = a1[1];
    }

    v26 = v24 <= a2 || v14 > a2;
    v27 = 3;
    if (v26)
    {
      v27 = 0;
    }

    v21 = &a2[v27 + 1];
    *v14 = *&a2[v27];
    v20 = v14 + 1;
    goto LABEL_37;
  }

  v32 = v6 + 1;
  if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    goto LABEL_60;
  }

  v33 = v14 - v4;
  v34 = 0xAAAAAAAAAAAAAAABLL * ((v22 - v4) >> 3);
  if (2 * v34 > v32)
  {
    v32 = 2 * v34;
  }

  if (v34 >= 0x555555555555555)
  {
    v35 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v35 = v32;
  }

  v47 = a1;
  if (v35)
  {
    sub_239F309FC(v35);
  }

  v36 = (8 * (v33 >> 3));
  v44 = 0;
  v45 = v36;
  v46 = v36;
  if (!(0xAAAAAAAAAAAAAAABLL * (v33 >> 3)))
  {
    if (v33 < 1)
    {
      if (v14 == v4)
      {
        v37 = 1;
      }

      else
      {
        v37 = 0x5555555555555556 * (v33 >> 3);
      }

      v51 = a1;
      sub_239F309FC(v37);
    }

    v36 -= 3 * ((0xAAAAAAAAAAAAAAABLL * (v33 >> 3) + 1) >> 1);
    v45 = v36;
    *&v46 = v36;
  }

  *v36 = *a2;
  sub_239E5F7D4(v36 + 1, a2 + 1);
  *&v46 = v46 + 24;
  sub_239F30A54(v14, a1[1], v46);
  v38 = *a1;
  v39 = v45;
  *&v46 = v46 + a1[1] - v14;
  a1[1] = v14;
  v40 = v39 + v38 - v14;
  sub_239F30A54(v38, v14, v40);
  v41 = *a1;
  *a1 = v40;
  v42 = a1[2];
  *(a1 + 1) = v46;
  *&v46 = v41;
  *(&v46 + 1) = v42;
  v44 = v41;
  v45 = v41;
  return sub_239F309A8(&v44);
}

void sub_239F24290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_239E5B240(va1);
  sub_239E5B240(v3 - 72);
  sub_239E56C80(va);
  _Unwind_Resume(a1);
}

void sub_239F245A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_239E797CC(exception_object);
}

void *sub_239F24610(double **a1, uint64_t a2, void *a3, double a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v7 = a1[1];
  if (v7 == *a1)
  {
    goto LABEL_11;
  }

  v10 = *(v7 - 3);
  if (v10 <= a4)
  {
    *a2 = v10;
    sub_239EF2160((a2 + 8), v7 - 2);
    v18 = a1[1];
    *a3 = *(v18 - 3);
    v19 = a3 + 1;
    v20 = *MEMORY[0x277D85DE8];
    v21 = v18 - 2;
  }

  else
  {
    if (*v8 < a4)
    {
      v11 = 0xAAAAAAAAAAAAAAABLL * (v7 - *a1);
      v24 = 0;
      do
      {
        v12 = v11 >> 1;
        v13 = &v8[3 * (v11 >> 1)];
        v15 = *v13;
        v14 = v13 + 3;
        v11 += ~(v11 >> 1);
        if (v15 > a4)
        {
          v11 = v12;
        }

        else
        {
          v8 = v14;
        }
      }

      while (v11);
      sub_239E5B240(&v23);
      if (v8 != a1[1])
      {
        *a3 = *v8;
        sub_239EF2160(a3 + 1, v8 + 1);
        *a2 = *(v8 - 3);
        result = sub_239EF2160((a2 + 8), v8 - 2);
LABEL_12:
        v17 = *MEMORY[0x277D85DE8];
        return result;
      }

LABEL_11:
      v24 = 0;
      *a2 = a4;
      sub_239EC8B1C((a2 + 8), &v23);
      sub_239E5B240(&v23);
      v24 = 0;
      *a3 = a4;
      sub_239EC8B1C(a3 + 1, &v23);
      result = sub_239E5B240(&v23);
      goto LABEL_12;
    }

    *a2 = *v8;
    sub_239EF2160((a2 + 8), v8 + 1);
    v21 = *a1 + 1;
    *a3 = **a1;
    v19 = a3 + 1;
    v22 = *MEMORY[0x277D85DE8];
  }

  return sub_239EF2160(v19, v21);
}

std::type_info *sub_239F24810(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_239EC8434(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, &stru_284D17AB0, v1, v2);
    v1 = sub_239EC8B1C(v1, v5);
    sub_239E5B240(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_239F24B34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_239E797CC(exception_object);
}

std::type_info *sub_239F24B9C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_239F23244(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, &stru_284D17AC8, v1, v2);
    v1 = sub_239EC8B1C(v1, v5);
    sub_239E5B240(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_239F24C28(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_239F23244(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return MEMORY[0x282207DB0](a1, sub_239F319F4, &stru_284D17AC8);
  }
}

uint64_t sub_239F24CBC(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v3 = a2[1];
    v8 = *a2;
    v9 = v3;
    v4 = *(a2 + 4);
    v10 = v4;
    if (v4)
    {
      v5 = (v4 - 16);
      if (*(&v9 + 1))
      {
        v5 = *(&v9 + 1);
      }

      atomic_fetch_add_explicit(v5, 1uLL, memory_order_relaxed);
    }

    if (&v8 != a1)
    {
      sub_239E56C80(a1);
      v6 = v9;
      *a1 = v8;
      *(a1 + 16) = v6;
      v8 = 0u;
      v9 = 0u;
      *(a1 + 32) = v10;
      v10 = 0;
    }

    sub_239E56C80(&v8);
  }

  return a1;
}

uint64_t sub_239F24D70(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 9)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, MEMORY[0x277D827A8]);
  }

  else
  {
    return 0;
  }
}

void sub_239F24F3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_239E797CC(exception_object);
}

void sub_239F25118(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_239E797CC(exception_object);
}

uint64_t sub_239F2573C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 18)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_284D17B28);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239F25774(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 24)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_284D17B58);
  }

  else
  {
    return 0;
  }
}

void sub_239F258E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    sub_239E797CC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239F25960(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v6 = 0;
  v5 = 0;
  sub_239E5B364(a1);
  v7 = &v5;
  sub_239F31AB0(a1, a2, &v7);
  return a1;
}

uint64_t sub_239F259D8(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  memset(v5, 0, sizeof(v5));
  sub_239E5B364(a1);
  v6 = v5;
  sub_239F321FC(a1, a2, &v6);
  return a1;
}

void sub_239F25C40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_239E5B240(v16 + 8);
  sub_239E5B240(&a16);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_239F25D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_239E5B240(v4 + 8);
  sub_239E5B240(va);
  _Unwind_Resume(a1);
}

void sub_239F25F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_239E5B240(va1);
  sub_239E5B240(v5 - 72);
  sub_239E56C80(va);
  _Unwind_Resume(a1);
}

void sub_239F26154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  sub_239E5B240(va1);
  sub_239E5B240(v7 - 72);
  sub_239E56C80(va);
  _Unwind_Resume(a1);
}

void sub_239F264CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_239E797CC(exception_object);
}

void sub_239F26844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_239E797CC(exception_object);
}

std::type_info *sub_239F268B0(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_239F25774(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, &stru_284D17B58, v1, v2);
    v1 = sub_239EC8B1C(v1, v5);
    sub_239E5B240(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_239F2693C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_239F25774(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return MEMORY[0x282207DB0](a1, sub_239F328CC, &stru_284D17B58);
  }
}

uint64_t sub_239F269D0(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v3 = a2[1];
    v8 = *a2;
    v9 = v3;
    v4 = *(a2 + 4);
    v10 = v4;
    if (v4)
    {
      v5 = (v4 - 16);
      if (*(&v9 + 1))
      {
        v5 = *(&v9 + 1);
      }

      atomic_fetch_add_explicit(v5, 1uLL, memory_order_relaxed);
    }

    if (&v8 != a1)
    {
      sub_239E56C80(a1);
      v6 = v9;
      *a1 = v8;
      *(a1 + 16) = v6;
      v8 = 0u;
      v9 = 0u;
      *(a1 + 32) = v10;
      v10 = 0;
    }

    sub_239E56C80(&v8);
  }

  return a1;
}

uint64_t sub_239F26A84(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 71)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_284D17C60);
  }

  else
  {
    return 0;
  }
}

void sub_239F26C5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_239E797CC(exception_object);
}

void sub_239F26E48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_239E797CC(exception_object);
}

uint64_t sub_239F274A0(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 41)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_284D17BA0);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239F274D8(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 40)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_284D17B88);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239F27510(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 42)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_284D17BB8);
  }

  else
  {
    return 0;
  }
}

void sub_239F27680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    sub_239E797CC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239F276FC(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_239E5B364(a1);
  v6 = &v5;
  sub_239F32988(a1, a2, &v6);
  return a1;
}

uint64_t sub_239F2776C(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_239E5B364(a1);
  v6 = &v5;
  sub_239F33068(a1, a2, &v6);
  return a1;
}

uint64_t sub_239F277DC(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_239E5B364(a1);
  v6 = &v5;
  sub_239F33754(a1, a2, &v6);
  return a1;
}

void sub_239F27A3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_239E5B240(v16 + 8);
  sub_239E5B240(&a16);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_239F27B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_239E5B240(v4 + 8);
  sub_239E5B240(va);
  _Unwind_Resume(a1);
}

void sub_239F27D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_239E5B240(va1);
  sub_239E5B240(v5 - 72);
  sub_239E56C80(va);
  _Unwind_Resume(a1);
}

void sub_239F27F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  sub_239E5B240(va1);
  sub_239E5B240(v7 - 72);
  sub_239E56C80(va);
  _Unwind_Resume(a1);
}

void sub_239F2827C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_239E797CC(exception_object);
}

std::type_info *sub_239F282E8(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_239F274A0(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, &stru_284D17BA0, v1, v2);
    v1 = sub_239EC8B1C(v1, v5);
    sub_239E5B240(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_239F28374(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_239F274A0(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return MEMORY[0x282207DB0](a1, sub_239F33EDC, &stru_284D17BA0);
  }
}

uint64_t sub_239F28408(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v3 = a2[1];
    v8 = *a2;
    v9 = v3;
    v4 = *(a2 + 4);
    v10 = v4;
    if (v4)
    {
      v5 = (v4 - 16);
      if (*(&v9 + 1))
      {
        v5 = *(&v9 + 1);
      }

      atomic_fetch_add_explicit(v5, 1uLL, memory_order_relaxed);
    }

    if (&v8 != a1)
    {
      sub_239E56C80(a1);
      v6 = v9;
      *a1 = v8;
      *(a1 + 16) = v6;
      v8 = 0u;
      v9 = 0u;
      *(a1 + 32) = v10;
      v10 = 0;
    }

    sub_239E56C80(&v8);
  }

  return a1;
}

uint64_t sub_239F284BC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 88)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_284D17CB0);
  }

  else
  {
    return 0;
  }
}

void sub_239F28818(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_239E797CC(exception_object);
}

std::type_info *sub_239F28884(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_239F27510(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, &stru_284D17BB8, v1, v2);
    v1 = sub_239EC8B1C(v1, v5);
    sub_239E5B240(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_239F28910(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_239F27510(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return MEMORY[0x282207DB0](a1, sub_239F33F98, &stru_284D17BB8);
  }
}

uint64_t sub_239F289A4(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v3 = a2[1];
    v8 = *a2;
    v9 = v3;
    v4 = *(a2 + 4);
    v10 = v4;
    if (v4)
    {
      v5 = (v4 - 16);
      if (*(&v9 + 1))
      {
        v5 = *(&v9 + 1);
      }

      atomic_fetch_add_explicit(v5, 1uLL, memory_order_relaxed);
    }

    if (&v8 != a1)
    {
      sub_239E56C80(a1);
      v6 = v9;
      *a1 = v8;
      *(a1 + 16) = v6;
      v8 = 0u;
      v9 = 0u;
      *(a1 + 32) = v10;
      v10 = 0;
    }

    sub_239E56C80(&v8);
  }

  return a1;
}

uint64_t sub_239F28A58(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 89)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &unk_284D17CC0);
  }

  else
  {
    return 0;
  }
}

void sub_239F28A90(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>, double a4@<D0>)
{
  v4 = *a2;
  v5 = a2[1];
  if (vaddvq_f64(vmlaq_f64(vmulq_f64(v5, a1[1]), *a1, *a2)) >= 0.0)
  {
    v9 = a1[1];
    v11 = *a1;
    v12 = v9;
    v7 = *a2;
    v8 = a2[1];
  }

  else
  {
    v6 = a1[1];
    v11 = *a1;
    v12 = v6;
    v7 = vnegq_f64(v4);
    v8 = vnegq_f64(v5);
  }

  v10[0] = v7;
  v10[1] = v8;
  sub_239F30BD8(&v11, v10, a3, a4);
}

void sub_239F28C84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_239E797CC(exception_object);
}

void sub_239F28E70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_239E797CC(exception_object);
}

uint64_t sub_239F2940C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 11)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_284D17A40);
  }

  else
  {
    return 0;
  }
}

void sub_239F2973C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_239E5B240(v16 + 8);
  sub_239E5B240(&a16);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_239F29864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_239E5B240(v4 + 8);
  sub_239E5B240(va);
  _Unwind_Resume(a1);
}

void sub_239F29998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_239E5B240(&a9);
  sub_239E5B240(&a14);
  _Unwind_Resume(a1);
}

void sub_239F29AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_239E5B240(&a9);
  sub_239E5B240(&a14);
  _Unwind_Resume(a1);
}

void sub_239F29CB4(_Unwind_Exception *a1)
{
  sub_239E5B240(v2 + 8);
  sub_239E5B240(v1 + 8);
  _Unwind_Resume(a1);
}

std::type_info *sub_239F29CD0(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_239E6A084(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, MEMORY[0x277D827B0], v1, v2);
    v1 = sub_239EC8B1C(v1, v5);
    sub_239E5B240(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_239F29ED8(_Unwind_Exception *a1)
{
  sub_239E5B240(v2 + 8);
  sub_239E5B240(v1 + 8);
  _Unwind_Resume(a1);
}

std::type_info *sub_239F29EF4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_239F24D70(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, MEMORY[0x277D827A8], v1, v2);
    v1 = sub_239EC8B1C(v1, v5);
    sub_239E5B240(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_239F29F80(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_239F24D70(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v5(a1);
    }

    else
    {
      return a1;
    }
  }

  else
  {
    v4 = MEMORY[0x277D827A8];

    return MEMORY[0x282207DB0](a1, sub_239F34424, v4);
  }
}

uint64_t sub_239F2A554(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 69)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_284D17C80);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239F2A58C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 66)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_284D17C70);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239F2A5C4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 72)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_284D17C90);
  }

  else
  {
    return 0;
  }
}

void sub_239F2A714(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_239E5B240(va);
  _Unwind_Resume(a1);
}

void sub_239F2A924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_239E5B240(v16 + 8);
  sub_239E5B240(&a16);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_239F2AA4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_239E5B240(v4 + 8);
  sub_239E5B240(va);
  _Unwind_Resume(a1);
}

void sub_239F2AB80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_239E5B240(&a9);
  sub_239E5B240(&a14);
  _Unwind_Resume(a1);
}

void sub_239F2AD08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_239E5B240(va);
  sub_239E5B240(va1);
  _Unwind_Resume(a1);
}

void sub_239F2AED8(_Unwind_Exception *a1)
{
  sub_239E5B240(v2 + 8);
  sub_239E5B240(v1 + 8);
  _Unwind_Resume(a1);
}

std::type_info *sub_239F2AEF4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_239F2A554(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, &stru_284D17C80, v1, v2);
    v1 = sub_239EC8B1C(v1, v5);
    sub_239E5B240(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_239F2AF80(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_239F2A554(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v5(a1);
    }

    else
    {
      return a1;
    }
  }

  else
  {
    v4 = MEMORY[0x277D865F8];

    return MEMORY[0x282207DB0](a1, v4, &stru_284D17C80);
  }
}

void sub_239F2B19C(_Unwind_Exception *a1)
{
  sub_239E5B240(v2 + 8);
  sub_239E5B240(v1 + 8);
  _Unwind_Resume(a1);
}

std::type_info *sub_239F2B1B8(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_239F2A5C4(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, &stru_284D17C90, v1, v2);
    v1 = sub_239EC8B1C(v1, v5);
    sub_239E5B240(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_239F2B244(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_239F2A5C4(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v5(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {
    v4 = MEMORY[0x277D865F0];

    return MEMORY[0x282207DB0](a1, v4, &stru_284D17C90);
  }
}

uint64_t sub_239F2B858(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 65)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_284D17C40);
  }

  else
  {
    return 0;
  }
}

void sub_239F2B9D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_239E5B240(va);
  _Unwind_Resume(a1);
}

void sub_239F2BBE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_239E5B240(v16 + 8);
  sub_239E5B240(&a16);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_239F2BD10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_239E5B240(v4 + 8);
  sub_239E5B240(va);
  _Unwind_Resume(a1);
}

void sub_239F2BE80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_239E5B240(va);
  sub_239E5B240(va1);
  _Unwind_Resume(a1);
}

void sub_239F2C014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_239E5B240(va);
  sub_239E5B240(va1);
  _Unwind_Resume(a1);
}

void sub_239F2C1FC(_Unwind_Exception *a1)
{
  sub_239E5B240(v2 + 8);
  sub_239E5B240(v1 + 8);
  _Unwind_Resume(a1);
}

std::type_info *sub_239F2C218(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_239E6A188(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, &stru_284D17C50, v1, v2);
    v1 = sub_239EC8B1C(v1, v5);
    sub_239E5B240(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_239F2C450(_Unwind_Exception *a1)
{
  sub_239E5B240(v2 + 8);
  sub_239E5B240(v1 + 8);
  _Unwind_Resume(a1);
}

std::type_info *sub_239F2C46C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_239F26A84(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, &stru_284D17C60, v1, v2);
    v1 = sub_239EC8B1C(v1, v5);
    sub_239E5B240(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_239F2C4F8(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_239F26A84(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v5(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {
    v4 = MEMORY[0x277D86610];

    return MEMORY[0x282207DB0](a1, v4, &stru_284D17C60);
  }
}

uint64_t sub_239F2CB70(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 64)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_284D17C10);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239F2CBA8(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 70)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_284D17C30);
  }

  else
  {
    return 0;
  }
}

void sub_239F2CD18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_239E5B240(va);
  _Unwind_Resume(a1);
}

void sub_239F2CF2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_239E5B240(v16 + 8);
  sub_239E5B240(&a16);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_239F2D054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_239E5B240(v4 + 8);
  sub_239E5B240(va);
  _Unwind_Resume(a1);
}

void sub_239F2D1BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_239E5B240(va);
  sub_239E5B240(va1);
  _Unwind_Resume(a1);
}

void sub_239F2D348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_239E5B240(va);
  sub_239E5B240(v5 - 56);
  _Unwind_Resume(a1);
}

void sub_239F2D520(_Unwind_Exception *a1)
{
  sub_239E5B240(v2 + 8);
  sub_239E5B240(v1 + 8);
  _Unwind_Resume(a1);
}

std::type_info *sub_239F2D53C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_239E6A150(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, &stru_284D17C20, v1, v2);
    v1 = sub_239EC8B1C(v1, v5);
    sub_239E5B240(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_239F2D780(_Unwind_Exception *a1)
{
  sub_239E5B240(v2 + 8);
  sub_239E5B240(v1 + 8);
  _Unwind_Resume(a1);
}

std::type_info *sub_239F2D79C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_239F2CBA8(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, &stru_284D17C30, v1, v2);
    v1 = sub_239EC8B1C(v1, v5);
    sub_239E5B240(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_239F2D828(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_239F2CBA8(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v5(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {
    v4 = MEMORY[0x277D86630];

    return MEMORY[0x282207DB0](a1, v4, &stru_284D17C30);
  }
}

uint64_t sub_239F2DE8C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 87)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_284D17CA0);
  }

  else
  {
    return 0;
  }
}

void sub_239F2DFE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_239E5B240(va);
  _Unwind_Resume(a1);
}

void sub_239F2E1FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_239E5B240(v16 + 8);
  sub_239E5B240(&a16);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_239F2E324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_239E5B240(v4 + 8);
  sub_239E5B240(va);
  _Unwind_Resume(a1);
}

void sub_239F2E488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_239E5B240(va);
  sub_239E5B240(va1);
  _Unwind_Resume(a1);
}

void sub_239F2E610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_239E5B240(va);
  sub_239E5B240(v5 - 56);
  _Unwind_Resume(a1);
}

void sub_239F2E960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_239E5B240(va);
  sub_239E5B240(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_239F2E98C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_239F284BC(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v5(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {
    v4 = MEMORY[0x277D865E0];

    return MEMORY[0x282207DB0](a1, v4, &stru_284D17CB0);
  }
}

std::type_info *sub_239F2EA20(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_239F284BC(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, &stru_284D17CB0, v1, v2);
    v1 = sub_239EC8B1C(v1, v5);
    sub_239E5B240(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_239F2EC98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_239E5B240(va);
  sub_239E5B240(v15 - 72);
  _Unwind_Resume(a1);
}

uint64_t sub_239F2ECC4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_239F28A58(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v5(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {
    v4 = MEMORY[0x277D865D8];

    return MEMORY[0x282207DB0](a1, v4, &unk_284D17CC0);
  }
}

std::type_info *sub_239F2ED58(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_239F28A58(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, &unk_284D17CC0, v1, v2);
    v1 = sub_239EC8B1C(v1, v5);
    sub_239E5B240(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_239F2F3BC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 73)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_284D17D58);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239F2F3F4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 76)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &unk_284D17D68);
  }

  else
  {
    return 0;
  }
}

void sub_239F2F590(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_239E5B240(va);
  _Unwind_Resume(a1);
}

void sub_239F2F7A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_239E5B240(v16 + 8);
  sub_239E5B240(&a16);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_239F2F8D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_239E5B240(v4 + 8);
  sub_239E5B240(va);
  _Unwind_Resume(a1);
}

void sub_239F2FA44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_239E5B240(va);
  sub_239E5B240(v9 - 56);
  _Unwind_Resume(a1);
}

void sub_239F2FC0C(_Unwind_Exception *a1)
{
  sub_239E5B240(v1 - 96);
  sub_239E5B240(v1 - 56);
  _Unwind_Resume(a1);
}

void sub_239F2FE24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_239E5B240(va);
  sub_239E5B240(v11 - 56);
  _Unwind_Resume(a1);
}

std::type_info *sub_239F2FE50(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_239F2F3BC(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, &stru_284D17D58, v1, v2);
    v1 = sub_239EC8B1C(v1, v5);
    sub_239E5B240(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_239F2FEDC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_239F2F3BC(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v5(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {
    v4 = MEMORY[0x277D865D0];

    return MEMORY[0x282207DB0](a1, v4, &stru_284D17D58);
  }
}

void sub_239F3024C(_Unwind_Exception *a1)
{
  sub_239E5B240(v1 - 96);
  sub_239E5B240(v1 - 72);
  _Unwind_Resume(a1);
}

std::type_info *sub_239F30278(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_239F2F3F4(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, &unk_284D17D68, v1, v2);
    v1 = sub_239EC8B1C(v1, v5);
    sub_239E5B240(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_239F30304(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_239F2F3F4(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v5(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {
    v4 = MEMORY[0x277D865C8];

    return MEMORY[0x282207DB0](a1, v4, &unk_284D17D68);
  }
}

pxrInternal__aapl__pxrReserved__::VtValue *sub_239F3090C(pxrInternal__aapl__pxrReserved__::VtValue *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v8[2] = *MEMORY[0x277D85DE8];
  Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(a1);
  if (strcmp((*(Typeid + 8) & 0x7FFFFFFFFFFFFFFFLL), (*(a2 + 1) & 0x7FFFFFFFFFFFFFFFLL)))
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v8, a2, a1, v5);
    sub_239EC8B1C(a1, v8);
    sub_239E5B240(v8);
  }

  v6 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t sub_239F309A8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    sub_239E5B240(i - 16);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_239F309FC(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_239E79870();
}

uint64_t sub_239F30A54(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = 0;
    do
    {
      result = sub_239F30AF8((a3 + v6), (v5 + v6));
      v6 += 24;
    }

    while (v5 + v6 != a2);
    while (v5 != a2)
    {
      result = sub_239E5B240(v5 + 8);
      v5 += 24;
    }
  }

  return result;
}

void sub_239F30AD0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = -v2;
    v5 = v1 - 16;
    do
    {
      v5 = sub_239E5B240(v5) - 24;
      v4 += 24;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

void *sub_239F30AF8(void *result, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  *result = *a2;
  result[2] = 0;
  if (a2[2])
  {
    v3 = result;
    v7 = 0;
    v8 = 0;
    result = sub_239E5B3EC(&v7, (result + 1));
    v4 = a2[2];
    v5 = ~*(a2 + 4);
    v3[2] = v4;
    if ((v5 & 3) != 0)
    {
      result = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 40))(a2 + 1, v3 + 1);
    }

    else
    {
      v3[1] = a2[1];
    }

    a2[2] = 0;
    if (v8)
    {
      result = (*(v8 + 32))(&v7);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_239F30BC0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_239E797CC(a1);
  }

  _Unwind_Resume(a1);
}

void sub_239F30BD8(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>, double a4@<D0>)
{
  v6 = 1.0;
  v7 = 1.0 - a4;
  v8 = a1[1];
  v9 = a2[1];
  v10 = vsubq_f64(*a1, *a2);
  v11 = vsubq_f64(v8, v9);
  v10.f64[0] = sqrt(vaddvq_f64(vmlaq_f64(vmulq_f64(v11, v11), v10, v10)));
  v34 = *a1;
  v36 = *a2;
  v12 = vaddq_f64(*a2, *a1);
  v37 = v9;
  v32 = v8;
  v13 = vaddq_f64(v9, v8);
  v14 = atan2(v10.f64[0], sqrt(vaddvq_f64(vmlaq_f64(vmulq_f64(v13, v13), v12, v12))));
  v15 = v14 + v14;
  v16 = v14 + v14 == 0.0;
  v17 = 1.0;
  if (!v16)
  {
    v17 = sin(v15) / v15;
  }

  v18 = 1.0 / v17;
  if (v15 * v7 != 0.0)
  {
    v6 = sin(v15 * v7) / (v15 * v7);
  }

  v19 = v18 * v7 * v6;
  v20 = vmulq_n_f64(v32, v19);
  v21 = vmulq_n_f64(v34, v19);
  v22 = v15 * a4;
  v23 = 1.0;
  if (v22 != 0.0)
  {
    v33 = v20;
    v35 = v21;
    v24 = sin(v22);
    v20 = v33;
    v21 = v35;
    v23 = v24 / v22;
  }

  v25 = v18 * a4 * v23;
  v26 = vmlaq_n_f64(v21, v36, v25);
  v27 = vmlaq_n_f64(v20, v37, v25);
  v28 = vaddvq_f64(vmlaq_f64(vmulq_f64(v27, v27), v26, v26));
  if (v28 == 0.0)
  {
    v29 = xmmword_239F9C570;
    v30 = 0uLL;
  }

  else
  {
    v31 = 1.0 / sqrt(v28);
    v29 = vmulq_n_f64(v27, v31);
    v30 = vmulq_n_f64(v26, v31);
  }

  *a3 = v30;
  a3[1] = v29;
}

void *sub_239F30D2C(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = result[1];
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      *(v4 + v7) = *(a2 + v7);
      result = sub_239E5F7D4((v4 + v7 + 8), (a2 + v7 + 8));
      v7 += 24;
    }

    while (a2 + v7 != a3);
    v4 += v7;
  }

  v3[1] = v4;
  return result;
}

void sub_239F30DA4(_Unwind_Exception *exception_object)
{
  if (v3)
  {
    v6 = -v3;
    v7 = v4 - 16;
    do
    {
      v7 = sub_239E5B240(v7) - 24;
      v6 += 24;
    }

    while (v6);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

void sub_239F30DD0(unint64_t *a1, unint64_t a2, __int16 **a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 >= a2)
          {
            v13 = a1[4];
          }

          else
          {
            v9 = a1[4];
            if (*(v9 - 8) < a2)
            {
              v10 = sub_239F312D4(a1, a2);
              v7 = v10;
              if (v3)
              {
                v11 = 0;
                do
                {
                  *(v10 + v11) = *(v9 + v11);
                  v11 += 2;
                }

                while (2 * v3 != v11);
              }
            }

            v12 = 0;
            v13 = v7;
            v14 = **a3;
            v15 = (2 * a2 - 2 * v3 - 2) >> 1;
            v16 = vdupq_n_s64(v15);
            v17 = (v15 & 0x7FFFFFFFFFFFFFF8) + 8;
            v18 = v7 + v3 + 4;
            do
            {
              v19 = vdupq_n_s64(v12);
              v20 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v19, xmmword_239F9AD40)));
              if (vuzp1_s8(vuzp1_s16(v20, *v16.i8), *v16.i8).u8[0])
              {
                *(v18 - 4) = v14;
              }

              if (vuzp1_s8(vuzp1_s16(v20, *&v16), *&v16).i8[1])
              {
                *(v18 - 3) = v14;
              }

              if (vuzp1_s8(vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v19, xmmword_239F9AD30)))), *&v16).i8[2])
              {
                *(v18 - 2) = v14;
                *(v18 - 1) = v14;
              }

              v21 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v19, xmmword_239F9C330)));
              if (vuzp1_s8(*&v16, vuzp1_s16(v21, *&v16)).i32[1])
              {
                *v18 = v14;
              }

              if (vuzp1_s8(*&v16, vuzp1_s16(v21, *&v16)).i8[5])
              {
                v18[1] = v14;
              }

              if (vuzp1_s8(*&v16, vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v19, xmmword_239F9C320))))).i8[6])
              {
                v18[2] = v14;
                v18[3] = v14;
              }

              v12 += 8;
              v18 += 8;
            }

            while (v17 != v12);
          }

LABEL_69:
          if (v13 != a1[4])
          {
            sub_239E56C80(a1);
            a1[4] = v13;
          }

          *a1 = a2;
          return;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v31 = a2;
      }

      else
      {
        v31 = *a1;
      }

      v32 = sub_239F312D4(a1, a2);
      v13 = v32;
      if (v3)
      {
        v33 = 2 * v31;
        v34 = v32;
        do
        {
          v35 = *v7;
          v7 = (v7 + 2);
          *v34 = v35;
          v34 = (v34 + 2);
          v33 -= 2;
        }

        while (v33);
      }

      if (v3 < a2)
      {
        v36 = 0;
        v37 = **a3;
        v38 = (2 * a2 - 2 * v3 - 2) >> 1;
        v39 = vdupq_n_s64(v38);
        v40 = (v38 & 0x7FFFFFFFFFFFFFF8) + 8;
        v41 = v32 + v3 + 4;
        do
        {
          v42 = vdupq_n_s64(v36);
          v43 = vmovn_s64(vcgeq_u64(v39, vorrq_s8(v42, xmmword_239F9AD40)));
          if (vuzp1_s8(vuzp1_s16(v43, 6), 6).u8[0])
          {
            *(v41 - 4) = v37;
          }

          if (vuzp1_s8(vuzp1_s16(v43, 6), 6).i8[1])
          {
            *(v41 - 3) = v37;
          }

          if (vuzp1_s8(vuzp1_s16(6, vmovn_s64(vcgeq_u64(v39, vorrq_s8(v42, xmmword_239F9AD30)))), 6).i8[2])
          {
            *(v41 - 2) = v37;
            *(v41 - 1) = v37;
          }

          v44 = vmovn_s64(vcgeq_u64(v39, vorrq_s8(v42, xmmword_239F9C330)));
          if (vuzp1_s8(6, vuzp1_s16(v44, 6)).i32[1])
          {
            *v41 = v37;
          }

          if (vuzp1_s8(6, vuzp1_s16(v44, 6)).i8[5])
          {
            v41[1] = v37;
          }

          if (vuzp1_s8(6, vuzp1_s16(6, vmovn_s64(vcgeq_u64(v39, vorrq_s8(v42, xmmword_239F9C320))))).i8[6])
          {
            v41[2] = v37;
            v41[3] = v37;
          }

          v36 += 8;
          v41 += 8;
        }

        while (v40 != v36);
      }

      goto LABEL_69;
    }

    if (2 * a2 / a2 == 2)
    {
      v13 = sub_239F312D4(a1, a2);
      v22 = 0;
      v23 = **a3;
      v24 = (2 * a2 - 2) >> 1;
      v25 = vdupq_n_s64(v24);
      v26 = (v24 & 0x7FFFFFFFFFFFFFF8) + 8;
      v27 = v13 + 1;
      do
      {
        v28 = vdupq_n_s64(v22);
        v29 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_239F9AD40)));
        if (vuzp1_s8(vuzp1_s16(v29, *v25.i8), *v25.i8).u8[0])
        {
          *(v27 - 4) = v23;
        }

        if (vuzp1_s8(vuzp1_s16(v29, *&v25), *&v25).i8[1])
        {
          *(v27 - 3) = v23;
        }

        if (vuzp1_s8(vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_239F9AD30)))), *&v25).i8[2])
        {
          *(v27 - 2) = v23;
          *(v27 - 1) = v23;
        }

        v30 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_239F9C330)));
        if (vuzp1_s8(*&v25, vuzp1_s16(v30, *&v25)).i32[1])
        {
          *v27 = v23;
        }

        if (vuzp1_s8(*&v25, vuzp1_s16(v30, *&v25)).i8[5])
        {
          v27[1] = v23;
        }

        if (vuzp1_s8(*&v25, vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_239F9C320))))).i8[6])
        {
          v27[2] = v23;
          v27[3] = v23;
        }

        v22 += 8;
        v27 += 8;
      }

      while (v26 != v22);
      goto LABEL_69;
    }
  }

  sub_239E5B364(a1);
}

void *sub_239F312D4(uint64_t a1, unint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_239E56D84(v6);
  if (a2 > 0x3FFFFFFFFFFFFFF7)
  {
    v3 = -1;
  }

  else
  {
    v3 = 2 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6[0])
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

uint64_t *sub_239F3136C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_239F3138C(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_239F3151C(result);
}

unint64_t sub_239F313A4(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = **a1;
    do
    {
      v4 = *v2++;
      v1 = v4 + ((v1 + v4 + (v1 + v4) * (v1 + v4)) >> 1);
      --v3;
    }

    while (v3);
    v1 *= 0x9E3779B97F4A7C55;
  }

  return bswap64(v1);
}

uint64_t sub_239F31410(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void sub_239F31504(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_284D15A60;
  sub_239EB5D90();
}

uint64_t *sub_239F3151C(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    sub_239E56C80(v1);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

BOOL sub_239F31594(void *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && sub_239EB5C18(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_239EB5C18(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = *(a2 + 32);
  v7 = 2 * *a1 - 2;
  do
  {
    v8 = *v5++;
    v9 = *(MEMORY[0x277D86658] + 4 * v8);
    v10 = *v6++;
    v11 = *(MEMORY[0x277D86658] + 4 * v10);
    result = v9 == v11;
    v12 = v9 != v11 || v7 == 0;
    v7 -= 2;
  }

  while (!v12);
  return result;
}

uint64_t sub_239F31644(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    sub_239EB5CFC();
  }

  return *a1;
}

uint64_t sub_239F316AC(void *a1, uint64_t a2)
{
  v3 = **a1;
  *a1 += 2;
  return MEMORY[0x282206C28](a2, v3);
}

uint64_t *sub_239F316C4(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_239F316E4(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_239F31874(result);
}

unint64_t sub_239F316FC(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = **a1;
    do
    {
      v4 = *v2++;
      v1 = v4 + ((v4 + v1 + (v4 + v1) * (v4 + v1)) >> 1);
      --v3;
    }

    while (v3);
    v1 *= 0x9E3779B97F4A7C55;
  }

  return bswap64(v1);
}

uint64_t sub_239F31768(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void sub_239F3185C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_284D159A8;
  sub_239ECA11C();
}

uint64_t *sub_239F31874(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    sub_239E56C80(v1);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

BOOL sub_239F318EC(void *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && sub_239EB5C18(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_239EB5C18(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = *(a2 + 32);
  v7 = 8 * *a1 - 8;
  do
  {
    v8 = *v5++;
    v9 = v8;
    v10 = *v6++;
    result = v9 == v10;
    v11 = v9 != v10 || v7 == 0;
    v7 -= 8;
  }

  while (!v11);
  return result;
}

uint64_t sub_239F3198C(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    sub_239ECA0A0();
  }

  return *a1;
}

uint64_t sub_239F31A54(uint64_t result)
{
  if (result)
  {
    sub_239E56C80(result);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

void sub_239F31AB0(unint64_t *a1, unint64_t a2, int **a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = a1[4];
            if (*(v9 - 8) < a2)
            {
              v10 = sub_239F31CD8(a1, a2);
              v7 = v10;
              if (v3)
              {
                v11 = 0;
                do
                {
                  v12 = v10 + v11;
                  v13 = *(v9 + v11);
                  *(v12 + 2) = *(v9 + v11 + 4);
                  *v12 = v13;
                  v11 += 6;
                }

                while (6 * v3 != v11);
              }
            }

            v14 = *a3;
            v15 = 6 * v3;
            do
            {
              v16 = v7 + v15;
              v17 = *v14;
              *(v16 + 2) = *(v14 + 2);
              *v16 = v17;
              v15 += 6;
            }

            while (6 * a2 != v15);
          }

          v18 = v7;
          goto LABEL_31;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v24 = a2;
      }

      else
      {
        v24 = *a1;
      }

      v25 = sub_239F31CD8(a1, a2);
      v18 = v25;
      if (v3)
      {
        v26 = 6 * v24;
        v27 = v25;
        do
        {
          v28 = *v7;
          *(v27 + 2) = *(v7 + 2);
          *v27 = v28;
          v27 = (v27 + 6);
          v7 = (v7 + 6);
          v26 -= 6;
        }

        while (v26);
      }

      if (v3 < a2)
      {
        v29 = *a3;
        v30 = 6 * v3;
        do
        {
          v31 = v25 + v30;
          v32 = *v29;
          *(v31 + 2) = *(v29 + 2);
          *v31 = v32;
          v30 += 6;
        }

        while (6 * a2 != v30);
      }

      goto LABEL_31;
    }

    if (a2 < 0x2AAAAAAAAAAAAAABLL)
    {
      v19 = sub_239F31CD8(a1, a2);
      v18 = v19;
      v20 = 0;
      v21 = *a3;
      do
      {
        v22 = v19 + v20;
        v23 = *v21;
        *(v22 + 2) = *(v21 + 2);
        *v22 = v23;
        v20 += 6;
      }

      while (6 * a2 != v20);
LABEL_31:
      if (v18 != a1[4])
      {
        sub_239E56C80(a1);
        a1[4] = v18;
      }

      *a1 = a2;
      return;
    }
  }

  sub_239E5B364(a1);
}

void *sub_239F31CD8(uint64_t a1, unint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_239E56D84(v6);
  if (a2 > 0x1555555555555552)
  {
    v3 = -1;
  }

  else
  {
    v3 = 6 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6[0])
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

uint64_t *sub_239F31D78(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_239F31D98(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_239F31F7C(result);
}

unint64_t sub_239F31DB0(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = **a1;
    do
    {
      --v3;
      v7[0] = 0;
      v7[1] = 0;
      sub_239F31FF4(v7, v2, v2 + 1, v2 + 2);
      v4 = bswap64(0x9E3779B97F4A7C55 * v7[0]);
      v1 = v4 + ((v4 + v1 + (v4 + v1) * (v4 + v1)) >> 1);
      v2 += 3;
    }

    while (v3);
    v5 = 0x9E3779B97F4A7C55 * v1;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

uint64_t sub_239F31E70(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void sub_239F31F64(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_284D15BD0;
  sub_239EB5D90();
}

uint64_t *sub_239F31F7C(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    sub_239E56C80(v1);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

uint64_t sub_239F31FF4(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4)
{
  v4 = *a2;
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  return sub_239F3202C(a1, a3, a4);
}

uint64_t sub_239F3202C(uint64_t result, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v3 = *a2;
  if (*(result + 8))
  {
    v3 += (*result + v3 + (*result + v3) * (*result + v3)) >> 1;
  }

  else
  {
    *(result + 8) = 1;
  }

  *result = *a3 + ((v3 + *a3 + (v3 + *a3) * (v3 + *a3)) >> 1);
  return result;
}

BOOL sub_239F3206C(uint64_t *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && sub_239EB5C18(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_239EB5C18(a1, a2);
  if (!result)
  {
    return result;
  }

  v5 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v6 = a1[4];
  v7 = *(a2 + 32);
  v8 = 6 * v5 - 6;
  do
  {
    result = sub_239F32120(v6, v7);
    if (!result)
    {
      break;
    }

    v6 += 3;
    v7 += 3;
    v9 = v8;
    v8 -= 6;
  }

  while (v9);
  return result;
}

uint64_t sub_239F3217C(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    sub_239EB5CFC();
  }

  return *a1;
}

void sub_239F321FC(unint64_t *a1, unint64_t a2, __int128 **a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = a1[4];
            if (*(v9 - 8) < a2)
            {
              v10 = sub_239F32428(a1, a2);
              v7 = v10;
              if (v3)
              {
                v11 = 0;
                do
                {
                  v12 = &v10[v11];
                  v13 = *(v9 + v11 * 8);
                  v12[2] = *(v9 + v11 * 8 + 16);
                  *v12 = v13;
                  v11 += 3;
                }

                while (3 * v3 != v11);
              }
            }

            v14 = *a3;
            v15 = 3 * v3;
            do
            {
              v16 = &v7[v15];
              v17 = *v14;
              v16[2] = *(v14 + 2);
              *v16 = v17;
              v15 += 3;
            }

            while (3 * a2 != v15);
          }

          v18 = v7;
          goto LABEL_31;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v24 = a2;
      }

      else
      {
        v24 = *a1;
      }

      v25 = sub_239F32428(a1, a2);
      v18 = v25;
      if (v3)
      {
        v26 = 24 * v24;
        v27 = v25;
        do
        {
          v28 = *v7;
          v27[2] = v7[2];
          *v27 = v28;
          v27 += 3;
          v7 += 3;
          v26 -= 24;
        }

        while (v26);
      }

      if (v3 < a2)
      {
        v29 = *a3;
        v30 = 3 * v3;
        do
        {
          v31 = &v25[v30];
          v32 = *v29;
          v31[2] = *(v29 + 2);
          *v31 = v32;
          v30 += 3;
        }

        while (3 * a2 != v30);
      }

      goto LABEL_31;
    }

    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v19 = sub_239F32428(a1, a2);
      v18 = v19;
      v20 = 0;
      v21 = *a3;
      do
      {
        v22 = &v19[v20];
        v23 = *v21;
        v22[2] = *(v21 + 2);
        *v22 = v23;
        v20 += 3;
      }

      while (3 * a2 != v20);
LABEL_31:
      if (v18 != a1[4])
      {
        sub_239E56C80(a1);
        a1[4] = v18;
      }

      *a1 = a2;
      return;
    }
  }

  sub_239E5B364(a1);
}

void *sub_239F32428(uint64_t a1, unint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_239E56D84(v6);
  if (a2 > 0x555555555555554)
  {
    v3 = -1;
  }

  else
  {
    v3 = 24 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6[0])
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

uint64_t *sub_239F324C4(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_239F324E4(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_239F326C8(result);
}

unint64_t sub_239F324FC(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = **a1;
    do
    {
      --v3;
      v7[0] = 0;
      v7[1] = 0;
      sub_239F226E0(v7, v2, v2 + 1, v2 + 2);
      v4 = bswap64(0x9E3779B97F4A7C55 * v7[0]);
      v1 = v4 + ((v4 + v1 + (v4 + v1) * (v4 + v1)) >> 1);
      v2 += 3;
    }

    while (v3);
    v5 = 0x9E3779B97F4A7C55 * v1;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

uint64_t sub_239F325BC(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void sub_239F326B0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_284D15D40;
  sub_239EB5D90();
}

uint64_t *sub_239F326C8(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    sub_239E56C80(v1);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

BOOL sub_239F32740(void *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && sub_239EB5C18(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_239EB5C18(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = &v5[3 * *a1];
  for (i = *(a2 + 32); *v5 == *i && v5[1] == i[1] && v5[2] == i[2]; i += 3)
  {
    v5 += 3;
    if (v5 == v6)
    {
      return 1;
    }
  }

  return 0;
}