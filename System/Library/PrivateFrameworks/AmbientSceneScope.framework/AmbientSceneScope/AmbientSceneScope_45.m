uint64_t sub_23F2BA87C(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5, char *a6, uint64_t a7, _BYTE *a8, signed int a9)
{
  v9 = a6;
  v12 = a3;
  if (a5)
  {
    v13 = 45;
LABEL_7:
    *a6 = v13;
    v15 = a6 + 1;
    goto LABEL_8;
  }

  v14 = (a3 >> 3) & 3;
  if (v14 == 2)
  {
    v13 = 43;
    goto LABEL_7;
  }

  v15 = a6;
  if (v14 == 3)
  {
    v13 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v16 = *a8;
      if (*a8)
      {
        v17 = a8 + 1;
        do
        {
          *v15 = v16;
          v15 = (v15 + 1);
          v18 = *v17++;
          v16 = v18;
        }

        while (v18);
      }
    }
  }

  v19 = sub_23F2B3F48(v15, a7, a1, a9);
  v73 = v19;
  if ((v12 & 0x40) == 0)
  {
    goto LABEL_50;
  }

  v20 = v19;
  if ((*(a2 + 40) & 1) == 0)
  {
    MEMORY[0x245CACAF0](&v78);
    v21 = (a2 + 32);
    if (*(a2 + 40) == 1)
    {
      std::locale::operator=(v21, &v78);
    }

    else
    {
      std::locale::locale(v21, &v78);
      *(a2 + 40) = 1;
    }

    std::locale::~locale(&v78);
  }

  std::locale::locale(&v75, (a2 + 32));
  v22 = std::locale::use_facet(&v75, MEMORY[0x277D826C0]);
  v23 = v20 - v15;
  std::locale::~locale(&v75);
  (v22->__vftable[1].__on_zero_shared)(&v78, v22);
  if ((v80 & 0x8000000000000000) != 0)
  {
    locale = v78.__locale_;
    v25 = v79;
    if (v79 && v23 > *v78.__locale_)
    {
      v72 = v22;
      v26 = v78.__locale_;
      goto LABEL_26;
    }

    operator delete(v78.__locale_);
LABEL_50:
    v42 = HIDWORD(a3);
    v43 = *a2;
    if ((v12 & 7) == 4)
    {
      v44 = v15 - v9;
      v45 = *(v43 + 32);
      v46 = v15 - v9;
      if (!v45 || ((v48 = *v45, v47 = v45[1], *v45 - v47 >= v44) ? (v46 = v15 - v9) : (v46 = *v45 - v47), (v45[1] = v47 + v44, v48 > v47) ? (v49 = v46 == 0) : (v49 = 1), !v49))
      {
        v57 = *(v43 + 16);
        do
        {
          v59 = *(v43 + 8) - v57;
          if (v59 < v46 + 1)
          {
            (*(v43 + 24))(v43, v46 + 2);
            v57 = *(v43 + 16);
            v59 = *(v43 + 8) - v57;
          }

          if (v59 >= v46)
          {
            v60 = v46;
          }

          else
          {
            v60 = v59;
          }

          if (v60)
          {
            memmove((*v43 + v57), v9, v60);
            v57 = *(v43 + 16);
          }

          v57 += v60;
          *(v43 + 16) = v57;
          v9 += v60;
          v58 = v46 > v59;
          v46 -= v60;
        }

        while (v58);
      }

      v50 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v44)
      {
        v51 = v44;
      }

      else
      {
        v51 = HIDWORD(a3);
      }

      v42 = (HIDWORD(a3) - v51);
      v43 = *a2;
      v52 = 48;
      v53 = a4;
    }

    else
    {
      v53 = a4;
      v52 = BYTE4(a4);
      v50 = a3;
      v15 = v9;
    }

    v54 = v42 << 32;
    v55 = v53 & 0xFFFFFF00FFFFFFFFLL | (v52 << 32);
    if ((a3 & 0xFF00) == 0x700)
    {
      return sub_23F2B1A78(v15, v73, v43, a3 & 0xFFFF0700 | v54 | v50, v55, sub_23F2B1CF8);
    }

    else
    {
      return sub_23F2AF788(v15, v73 - v15, v43, v54 | a3 & 0xFFFFFF00 | v50, v55, v73 - v15);
    }
  }

  if (!v80 || v23 <= SLOBYTE(v78.__locale_))
  {
    goto LABEL_50;
  }

  v72 = v22;
  locale = &v78;
  v26 = v78.__locale_;
  v25 = v79;
LABEL_26:
  v71 = *a2;
  v75.__locale_ = 0;
  v76 = 0;
  v77 = 0;
  v27 = v26 + v25;
  if (v80 >= 0)
  {
    v28 = &v78 + v80;
  }

  else
  {
    v28 = v27;
  }

  v29 = *locale;
  v30 = *locale;
  v31 = v23 - v29;
  if (v23 <= v29)
  {
    v62 = 0;
    v61 = v30 + v31;
    v63 = v72;
    goto LABEL_82;
  }

  v32 = v28 - 1;
  do
  {
    while (1)
    {
      v33 = HIBYTE(v77);
      if ((SHIBYTE(v77) & 0x80000000) == 0)
      {
        break;
      }

      v34 = (v77 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v76 == v34)
      {
        if ((v77 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
        {
          sub_23EF2F8F4();
        }

LABEL_37:
        operator new();
      }

      v36 = v76++;
      v37 = v75.__locale_ + v36;
      *v37 = v30;
      v37[1] = 0;
      if (locale != v32)
      {
        goto LABEL_41;
      }

LABEL_31:
      v30 = *locale;
      v31 -= *locale;
      if (v31 <= 0)
      {
        goto LABEL_78;
      }
    }

    if (HIBYTE(v77) == 22)
    {
      goto LABEL_37;
    }

    HIBYTE(v77) = (HIBYTE(v77) + 1) & 0x7F;
    v35 = &v75 + v33;
    *v35 = v30;
    v35[1] = 0;
    if (locale == v32)
    {
      goto LABEL_31;
    }

LABEL_41:
    v38 = (locale + 1);
    v39 = (locale + 1);
    do
    {
      v40 = *v39++;
      v30 = v40;
      if (v40)
      {
        v41 = 1;
      }

      else
      {
        v41 = v38 == v32;
      }

      v38 = v39;
    }

    while (!v41);
    locale = (v39 - 1);
    v31 -= v30;
  }

  while (v31 > 0);
LABEL_78:
  v61 = v30 + v31;
  if (SHIBYTE(v77) < 0)
  {
    v66 = (v77 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    LODWORD(v20) = v73;
    v63 = v72;
    if (v76 == v66)
    {
      if ((v77 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        sub_23EF2F8F4();
      }

LABEL_85:
      operator new();
    }

    v65 = v75.__locale_;
    v64 = v76++;
  }

  else
  {
    v62 = HIBYTE(v77);
    LODWORD(v20) = v73;
    v63 = v72;
    if (HIBYTE(v77) == 22)
    {
      goto LABEL_85;
    }

LABEL_82:
    v64 = v62;
    HIBYTE(v77) = (v62 + 1) & 0x7F;
    v65 = &v75;
  }

  v67 = &v65[v64];
  *v67 = v61;
  v67[1] = 0;
  v68 = (v63->__vftable[1].~facet_0)(v63);
  result = sub_23F2B14EC(v71, v9, v15, v20, &v75, v68, a3, a4);
  if (SHIBYTE(v77) < 0)
  {
    v69 = result;
    operator delete(v75.__locale_);
    result = v69;
  }

  if (v80 < 0)
  {
    v70 = result;
    operator delete(v78.__locale_);
    return v70;
  }

  return result;
}

void sub_23F2BAF2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2BAF78(int a1, unint64_t a2, unint64_t a3)
{
  v6 = &unk_23F3091D6;
  if (a1 == 12)
  {
    v6 = " (ENOMEM)";
  }

  v9 = v6;
  v12 = 0;
  v15 = v11;
  v16 = "posix_memalign failed to allocate ";
  v17 = v11;
  v18 = "posix_memalign failed to allocate ";
  v19 = "posix_memalign failed to allocate ";
  v13.__r_.__value_.__r.__words[0] = &v15;
  sub_23F07F79C(&v13);
  std::to_string(&v13, a2);
  v15 = v11;
  v16 = &v13;
  v17 = v11;
  v18 = &v13;
  v19 = &v13;
  if (v12 == -1)
  {
    sub_23EF41D6C();
  }

  v14 = &v15;
  (off_28518CC78[v12])(&v14, v11);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v15 = v11;
  v16 = " bytes with alignment ";
  v17 = v11;
  v18 = " bytes with alignment ";
  v19 = " bytes with alignment ";
  if (v12 == -1)
  {
    sub_23EF41D6C();
  }

  v13.__r_.__value_.__r.__words[0] = &v15;
  (*(&off_28518CC90 + v12))(&v13, v11);
  std::to_string(&v13, a3);
  v15 = v11;
  v16 = &v13;
  v17 = v11;
  v18 = &v13;
  v19 = &v13;
  if (v12 == -1)
  {
    sub_23EF41D6C();
  }

  v14 = &v15;
  (off_28518CC78[v12])(&v14, v11);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v15 = v11;
  v16 = ": error code ";
  v17 = v11;
  v18 = ": error code ";
  v19 = ": error code ";
  if (v12 == -1)
  {
    sub_23EF41D6C();
  }

  v13.__r_.__value_.__r.__words[0] = &v15;
  (off_28518CCA8[v12])(&v13, v11);
  std::to_string(&v13, a1);
  v15 = v11;
  v16 = &v13;
  v17 = v11;
  v18 = &v13;
  v19 = &v13;
  if (v12 == -1)
  {
    sub_23EF41D6C();
  }

  v14 = &v15;
  (off_28518CC78[v12])(&v14, v11);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v15 = v11;
  v16 = &v9;
  v17 = v11;
  v18 = &v9;
  v19 = &v9;
  if (v12 == -1)
  {
    sub_23EF41D6C();
  }

  v13.__r_.__value_.__r.__words[0] = &v15;
  (off_28518CCC0[v12])(&v13, v11);
  if (v12 == -1)
  {
    sub_23EF41D6C();
  }

  v15 = &v13;
  (off_28518CCD8[v12])(&v10, &v15, v11);
  if (v12 != -1)
  {
    (off_28518CC60[v12])(&v15, v11);
  }

  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v10;
  }

  else
  {
    v7 = v10.__r_.__value_.__r.__words[0];
  }

  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v10.__r_.__value_.__l.__size_;
  }

  sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Essentials/Array/src/ArrayBuffer.cpp", 37, &unk_23F3091D6, 0, v7, size, sub_23F303DA4);
  std::string::~string(&v10);
  abort();
}

void sub_23F2BB298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2BB2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_23F04B948(va);
  _Unwind_Resume(a1);
}

void sub_23F2BB2C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_23F04B948(va);
  _Unwind_Resume(a1);
}

void sub_23F2BB2DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_23F04B948(&a14);
  _Unwind_Resume(a1);
}

void sub_23F2BB358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_23F04B948(va);
  _Unwind_Resume(a1);
}

void sub_23F2BB36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_23F04B948(va);
  _Unwind_Resume(a1);
}

void sub_23F2BB5C8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_23EF2F99C(exception_object);
}

void *sub_23F2BB5FC(void *a1, void (**a2)(uint64_t))
{
  v5[8] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v5[1] = 0;
  if (*a2)
  {
    (*a2)(2);
  }

  if (v5 != a1 && *a1 != 0)
  {
    (*a1)(2, a1, v5, 0, 0);
  }

  if (v5[0])
  {
    (v5[0])(0, v5, 0, 0, 0);
  }

  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_23F2BB758(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_23EF2F99C(a1);
  }

  _Unwind_Resume(a1);
}

void *sub_23F2BB778(void *a1, uint64_t a2)
{
  LOBYTE(__p[0]) = 123;
  v3 = sub_23EF2F9B0(a1, __p, 1);
  v9 = *(a2 + 16);
  sub_23F2BB858(&v9, __p);
  if ((v11 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v11 & 0x80u) == 0)
  {
    v5 = v11;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = sub_23EF2F9B0(v3, v4, v5);
  v12 = 125;
  result = sub_23EF2F9B0(v6, &v12, 1);
  if (v11 < 0)
  {
    v8 = result;
    operator delete(__p[0]);
    return v8;
  }

  return result;
}

void sub_23F2BB83C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2BB858@<X0>(unsigned __int8 **a1@<X0>, _BYTE *a2@<X8>)
{
  v32[6] = 0;
  v4 = MEMORY[0x277D828A0] + 64;
  v32[0] = MEMORY[0x277D828A0] + 64;
  v5 = *(MEMORY[0x277D82828] + 16);
  v23 = *(MEMORY[0x277D82828] + 8);
  *(&v23 + *(v23 - 24)) = v5;
  v6 = (&v23 + *(v23 - 24));
  std::ios_base::init(v6, &v24);
  v7 = MEMORY[0x277D828A0] + 24;
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  v23 = v7;
  v32[0] = v4;
  v8 = MEMORY[0x277D82868] + 16;
  v24 = MEMORY[0x277D82868] + 16;
  MEMORY[0x245CACAF0](&v25);
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  v9 = MEMORY[0x277D82878] + 16;
  v24 = MEMORY[0x277D82878] + 16;
  *__p = 0u;
  v30 = 0u;
  v31 = 16;
  sub_23EF36F98(&v24);
  v10 = v23;
  *(&v23 + *(v23 - 24) + 8) = *(&v23 + *(v23 - 24) + 8) & 0xFFFFFFB5 | 8;
  v11 = (&v23 + *(v10 - 24));
  if (v11[1].__fmtflags_ == -1)
  {
    std::ios_base::getloc(v11);
    v12 = std::locale::use_facet(&v33, MEMORY[0x277D82680]);
    (v12->__vftable[2].~facet_0)(v12, 32);
    std::locale::~locale(&v33);
  }

  v22 = v9;
  v11[1].__fmtflags_ = 48;
  v13 = a1[1];
  if (v13)
  {
    v14 = *a1;
    v15 = &v13[v14];
    v16 = v14 + 1;
    do
    {
      *(&v26 + *(v23 - 24)) = 2;
      MEMORY[0x245CAC900](&v23, *v14);
      if (v15 != v16)
      {
        *(&v26 + *(v23 - 24)) = 1;
        LOBYTE(v33.__locale_) = 32;
        sub_23EF2F9B0(&v23, &v33, 1);
      }

      ++v14;
      ++v16;
      --v13;
    }

    while (v13);
  }

  if ((v31 & 0x10) != 0)
  {
    v19 = *(&v30 + 1);
    v17 = MEMORY[0x277D82828];
    if (*(&v30 + 1) < v28)
    {
      *(&v30 + 1) = v28;
      v19 = v28;
    }

    v20 = *(&v27 + 1);
    v18 = v19 - *(&v27 + 1);
    if ((v19 - *(&v27 + 1)) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v17 = MEMORY[0x277D82828];
    if ((v31 & 8) == 0)
    {
      v18 = 0;
      a2[23] = 0;
      goto LABEL_19;
    }

    v20 = v26;
    v18 = v27 - v26;
    if (v27 - v26 >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_23:
      sub_23EF2F8F4();
    }
  }

  if (v18 >= 0x17)
  {
    operator new();
  }

  a2[23] = v18;
  if (v18)
  {
    memmove(a2, v20, v18);
  }

LABEL_19:
  a2[v18] = 0;
  v23 = *v17;
  *(&v23 + *(v23 - 24)) = v17[3];
  v24 = v22;
  if (SBYTE7(v30) < 0)
  {
    operator delete(__p[0]);
  }

  v24 = v8;
  std::locale::~locale(&v25);
  std::ostream::~ostream();
  return MEMORY[0x245CACBF0](v32);
}

void sub_23F2BBD38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_23F2BD534(&a12);
  MEMORY[0x245CACBF0](a11);
  _Unwind_Resume(a1);
}

void sub_23F2BBDFC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518CD00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F2BBE50(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    return v1(0, result + 24, 0, 0, 0);
  }

  return result;
}

void sub_23F2BBEAC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518CD50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2BBF00(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void *sub_23F2BBF1C(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_23F2BBF1C;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_23F2BBF1C;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28518CD90;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != 0x800000023F34767ALL)
      {
        if (((v5 & 0x800000023F34767ALL & 0x8000000000000000) != 0) == __OFSUB__(v5, 0x800000023F34767ALL))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023F34767ALL & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_23F3476B0)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void sub_23F2BC0F0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518CDB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2BC144(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void *sub_23F2BC160(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_23F2BC160;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_23F2BC160;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28518CDF0;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != 0x800000023F3476FELL)
      {
        if (((v5 & 0x800000023F3476FELL & 0x8000000000000000) != 0) == __OFSUB__(v5, 0x800000023F3476FELL))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023F3476FELL & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_23F347734)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void sub_23F2BC334(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518CE10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2BC388(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void *sub_23F2BC3A4(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_23F2BC3A4;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_23F2BC3A4;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28518CE50;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != 0x800000023F347782)
      {
        if (((v5 & 0x800000023F347782 & 0x8000000000000000) != 0) == __OFSUB__(v5, 0x800000023F347782))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023F347782 & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_23F3477B8)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void sub_23F2BC578(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518CE70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2BC5CC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void *sub_23F2BC5E8(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_23F2BC5E8;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_23F2BC5E8;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28518CEB0;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != 0x800000023F347806)
      {
        if (((v5 & 0x800000023F347806 & 0x8000000000000000) != 0) == __OFSUB__(v5, 0x800000023F347806))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023F347806 & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_23F34783C)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void sub_23F2BC7BC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518CED0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2BC810(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void *sub_23F2BC82C(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_23F2BC82C;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_23F2BC82C;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28518CF10;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != 0x800000023F34788ALL)
      {
        if (((v5 & 0x800000023F34788ALL & 0x8000000000000000) != 0) == __OFSUB__(v5, 0x800000023F34788ALL))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023F34788ALL & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_23F3478C0)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void sub_23F2BCA00(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518CF30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2BCA54(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void *sub_23F2BCA70(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_23F2BCA70;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_23F2BCA70;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28518CF70;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != 0x800000023F34790ELL)
      {
        if (((v5 & 0x800000023F34790ELL & 0x8000000000000000) != 0) == __OFSUB__(v5, 0x800000023F34790ELL))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023F34790ELL & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_23F347944)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void sub_23F2BCC44(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518CF90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2BCC98(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void *sub_23F2BCCB4(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_23F2BCCB4;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_23F2BCCB4;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28518CFD0;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != 0x800000023F347992)
      {
        if (((v5 & 0x800000023F347992 & 0x8000000000000000) != 0) == __OFSUB__(v5, 0x800000023F347992))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023F347992 & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_23F3479C8)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void sub_23F2BCE88(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518CFF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2BCEDC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void *sub_23F2BCEF8(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_23F2BCEF8;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_23F2BCEF8;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28518D030;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != 0x800000023F347A16)
      {
        if (((v5 & 0x800000023F347A16 & 0x8000000000000000) != 0) == __OFSUB__(v5, 0x800000023F347A16))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023F347A16 & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_23F347A4C)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void sub_23F2BD0CC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518D050;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2BD120(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void *sub_23F2BD13C(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_23F2BD13C;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_23F2BD13C;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28518D090;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != 0x800000023F347A9ALL)
      {
        if (((v5 & 0x800000023F347A9ALL & 0x8000000000000000) != 0) == __OFSUB__(v5, 0x800000023F347A9ALL))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023F347A9ALL & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_23F347AD0)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void sub_23F2BD310(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518D0B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2BD364(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void *sub_23F2BD380(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_23F2BD380;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_23F2BD380;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28518D0F0;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != 0x800000023F347B1ELL)
      {
        if (((v5 & 0x800000023F347B1ELL & 0x8000000000000000) != 0) == __OFSUB__(v5, 0x800000023F347B1ELL))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023F347B1ELL & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_23F347B54)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

uint64_t sub_23F2BD534(uint64_t a1)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *a1 = *MEMORY[0x277D82828];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t sub_23F2BD654(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  if ((*(*a1 + 56) & 3) != 0)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Container/src/Lines.cpp", 42, "this->numbers.Size() % (N * 2) == 0", 0x23uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v3 = qword_27E396178, v4 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_9:
        qword_27E396190(*algn_27E396198, "this->numbers.Size() % (N * 2) == 0", 35, &unk_23F3091D6, 0);
        return a1;
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
      (*v3)(*(v3 + 8), "this->numbers.Size() % (N * 2) == 0", 35, &unk_23F3091D6, 0);
      v3 += 16;
    }

    while (v3 != v4);
    if (byte_27E3961A0)
    {
      goto LABEL_9;
    }

LABEL_11:
    abort();
  }

  return a1;
}

uint64_t sub_23F2BD7B8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  if (__ROR8__(0xAAAAAAAAAAAAAAABLL * *(*a1 + 56), 1) >= 0x2AAAAAAAAAAAAAABuLL)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Container/src/Lines.cpp", 42, "this->numbers.Size() % (N * 2) == 0", 0x23uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v3 = qword_27E396178, v4 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_9:
        qword_27E396190(*algn_27E396198, "this->numbers.Size() % (N * 2) == 0", 35, &unk_23F3091D6, 0);
        return a1;
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
      (*v3)(*(v3 + 8), "this->numbers.Size() % (N * 2) == 0", 35, &unk_23F3091D6, 0);
      v3 += 16;
    }

    while (v3 != v4);
    if (byte_27E3961A0)
    {
      goto LABEL_9;
    }

LABEL_11:
    abort();
  }

  return a1;
}

void sub_23F2BDBD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_23F2BDC38(void *result)
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

    MEMORY[0x245CACD00](v1, 0x20C40960023A9);
    return v2;
  }

  return result;
}

void sub_23F2BDC94(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F2BDCCC(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F2BDD30(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteINS_6vectorINS_5arrayIN4cv3d3esn4math6VectorIiLj2EEELm2EEENS_9allocatorIS8_EEEEEE")
  {
    if (((v2 & "NSt3__114default_deleteINS_6vectorINS_5arrayIN4cv3d3esn4math6VectorIiLj2EEELm2EEENS_9allocatorIS8_EEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteINS_6vectorINS_5arrayIN4cv3d3esn4math6VectorIiLj2EEELm2EEENS_9allocatorIS8_EEEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteINS_6vectorINS_5arrayIN4cv3d3esn4math6VectorIiLj2EEELm2EEENS_9allocatorIS8_EEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_23F2BDD90(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_23F2BDD90;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_23F2BDD90;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28518D150;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "NSt3__110shared_ptrINS_6vectorINS_5arrayIN4cv3d3esn4math6VectorIiLj2EEELm2EEENS_9allocatorIS8_EEEEEE")
      {
        if (((v5 & "NSt3__110shared_ptrINS_6vectorINS_5arrayIN4cv3d3esn4math6VectorIiLj2EEELm2EEENS_9allocatorIS8_EEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "NSt3__110shared_ptrINS_6vectorINS_5arrayIN4cv3d3esn4math6VectorIiLj2EEELm2EEENS_9allocatorIS8_EEEEEE"))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrINS_6vectorINS_5arrayIN4cv3d3esn4math6VectorIiLj2EEELm2EEENS_9allocatorIS8_EEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_23F347CBC)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void sub_23F2BE1F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2BE254(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F2BE28C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F2BE2F0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteINS_6vectorINS_5arrayIN4cv3d3esn4math6VectorIiLj3EEELm2EEENS_9allocatorIS8_EEEEEE")
  {
    if (((v2 & "NSt3__114default_deleteINS_6vectorINS_5arrayIN4cv3d3esn4math6VectorIiLj3EEELm2EEENS_9allocatorIS8_EEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteINS_6vectorINS_5arrayIN4cv3d3esn4math6VectorIiLj3EEELm2EEENS_9allocatorIS8_EEEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteINS_6vectorINS_5arrayIN4cv3d3esn4math6VectorIiLj3EEELm2EEENS_9allocatorIS8_EEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_23F2BE350(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_23F2BE350;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_23F2BE350;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28518D1B0;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "NSt3__110shared_ptrINS_6vectorINS_5arrayIN4cv3d3esn4math6VectorIiLj3EEELm2EEENS_9allocatorIS8_EEEEEE")
      {
        if (((v5 & "NSt3__110shared_ptrINS_6vectorINS_5arrayIN4cv3d3esn4math6VectorIiLj3EEELm2EEENS_9allocatorIS8_EEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "NSt3__110shared_ptrINS_6vectorINS_5arrayIN4cv3d3esn4math6VectorIiLj3EEELm2EEENS_9allocatorIS8_EEEEEE"))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrINS_6vectorINS_5arrayIN4cv3d3esn4math6VectorIiLj3EEELm2EEENS_9allocatorIS8_EEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_23F347E24)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void *sub_23F2BE4F4(int a1, unsigned __int8 **a2, void **a3)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        sub_23F2C6BA0(a2, 6);
        v16 = *a2;
        v17 = *(*a2 + 5);
        v7 = *a3;
        if (*(v16 + 6) > 7uLL)
        {
          sub_23EF2F9B0(v7, "{", 1);
          sub_23EF2F9B0(v7, "{", 1);
          sub_23F2C07D4();
        }
      }

      else
      {
        sub_23F2C6BA0(a2, 7);
        v12 = *a2;
        v13 = *(*a2 + 5);
        v7 = *a3;
        if (*(v12 + 6) > 0xFuLL)
        {
          sub_23EF2F9B0(v7, "{", 1);
          sub_23EF2F9B0(v7, "{", 1);
          sub_23F2C0C98();
        }
      }
    }

    else
    {
      switch(a1)
      {
        case 8:
          sub_23F2C6BA0(a2, 8);
          v20 = *a2;
          v21 = *(*a2 + 5);
          v7 = *a3;
          if (*(v20 + 6) > 0x1FuLL)
          {
            sub_23EF2F9B0(v7, "{", 1);
            sub_23EF2F9B0(v7, "{", 1);
            sub_23F2C115C();
          }

          break;
        case 11:
          sub_23F2C6BA0(a2, 11);
          v24 = *a2;
          v25 = *(*a2 + 5);
          v7 = *a3;
          if (*(v24 + 6) > 0xFuLL)
          {
            sub_23EF2F9B0(v7, "{", 1);
            sub_23EF2F9B0(v7, "{", 1);
            sub_23F29F608();
          }

          break;
        case 12:
          sub_23F2C6BA0(a2, 12);
          v8 = *a2;
          v9 = *(*a2 + 5);
          v7 = *a3;
          if (*(v8 + 6) > 0x1FuLL)
          {
            sub_23EF2F9B0(v7, "{", 1);
            sub_23EF2F9B0(v7, "{", 1);
            sub_23F2A00DC();
          }

          break;
        default:
          goto LABEL_33;
      }
    }
  }

  else if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_33;
      }

      sub_23F2C6BA0(a2, 1);
      v10 = *a2;
      v11 = *(*a2 + 5);
      v7 = *a3;
      if (*(v10 + 6) > 7uLL)
      {
        sub_23EF2F9B0(v7, "{", 1);
        sub_23EF2F9B0(v7, "{", 1);
        sub_23F2BF684();
      }
    }

    else
    {
      sub_23F2C6BA0(a2, 0);
      v14 = *a2;
      v15 = *(*a2 + 5);
      v7 = *a3;
      if (*(v14 + 6) > 3uLL)
      {
        sub_23EF2F9B0(v7, "{", 1);
        sub_23EF2F9B0(v7, "{", 1);
        sub_23F2BF1C0();
      }
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_23F2C6BA0(a2, 2);
        v18 = *a2;
        v19 = *(*a2 + 5);
        v7 = *a3;
        if (*(v18 + 6) > 0xFuLL)
        {
          sub_23EF2F9B0(v7, "{", 1);
          sub_23EF2F9B0(v7, "{", 1);
          sub_23F2BFB48();
        }

        break;
      case 3:
        sub_23F2C6BA0(a2, 3);
        v22 = *a2;
        v23 = *(*a2 + 5);
        v7 = *a3;
        if (*(v22 + 6) > 0x1FuLL)
        {
          sub_23EF2F9B0(v7, "{", 1);
          sub_23EF2F9B0(v7, "{", 1);
          sub_23F2BFE4C();
        }

        break;
      case 5:
        sub_23F2C6BA0(a2, 5);
        v5 = *a2;
        v6 = *(*a2 + 5);
        v7 = *a3;
        if (*(v5 + 6) > 3uLL)
        {
          sub_23EF2F9B0(v7, "{", 1);
          sub_23EF2F9B0(v7, "{", 1);
          sub_23F2C0310();
        }

        return sub_23EF2F9B0(v7, "{}", 2);
      default:
LABEL_33:

        sub_23F2F1304(a1);
    }
  }

  return sub_23EF2F9B0(v7, "{}", 2);
}

void sub_23F2BF43C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2BF4C4(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v12 = a2;
  v13 = "{";
  v14 = a2;
  v15 = "{";
  v16 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_11;
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  (*(&off_28518D1D8 + v3))(&v11);
  std::to_string(&v11, *a3);
  v12 = a2;
  v13 = &v11;
  v14 = a2;
  v15 = &v11;
  v16 = &v11;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v12;
  (off_28518D1F0[v6])(&v17, a2);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  v12 = a2;
  v13 = ",";
  v14 = a2;
  v15 = ",";
  v16 = ",";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_11;
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  (*(&off_28518D1D8 + v7))(&v11, a2);
  std::to_string(&v11, a3[1]);
  v12 = a2;
  v13 = &v11;
  v14 = a2;
  v15 = &v11;
  v16 = &v11;
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v12;
  (off_28518D1F0[v8])(&v17, a2);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  v12 = a2;
  v13 = "}";
  v14 = a2;
  v15 = "}";
  v16 = "}";
  v9 = *(a2 + 24);
  if (v9 == -1)
  {
LABEL_11:
    sub_23EF41D6C();
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  return (*(&off_28518D1D8 + v9))(&v11, a2);
}

void sub_23F2BF660(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2BF900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2BF988(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v12 = a2;
  v13 = "{";
  v14 = a2;
  v15 = "{";
  v16 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_11;
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  (*(&off_28518D1D8 + v3))(&v11);
  std::to_string(&v11, *a3);
  v12 = a2;
  v13 = &v11;
  v14 = a2;
  v15 = &v11;
  v16 = &v11;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v12;
  (off_28518D1F0[v6])(&v17, a2);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  v12 = a2;
  v13 = ",";
  v14 = a2;
  v15 = ",";
  v16 = ",";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_11;
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  (*(&off_28518D1D8 + v7))(&v11, a2);
  std::to_string(&v11, a3[1]);
  v12 = a2;
  v13 = &v11;
  v14 = a2;
  v15 = &v11;
  v16 = &v11;
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v12;
  (off_28518D1F0[v8])(&v17, a2);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  v12 = a2;
  v13 = "}";
  v14 = a2;
  v15 = "}";
  v16 = "}";
  v9 = *(a2 + 24);
  if (v9 == -1)
  {
LABEL_11:
    sub_23EF41D6C();
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  return (*(&off_28518D1D8 + v9))(&v11, a2);
}

void sub_23F2BFB24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2BFDC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2C00C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2C0150(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v12 = a2;
  v13 = "{";
  v14 = a2;
  v15 = "{";
  v16 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_11;
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  (*(&off_28518D1D8 + v3))(&v11);
  std::to_string(&v11, *a3);
  v12 = a2;
  v13 = &v11;
  v14 = a2;
  v15 = &v11;
  v16 = &v11;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v12;
  (off_28518D1F0[v6])(&v17, a2);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  v12 = a2;
  v13 = ",";
  v14 = a2;
  v15 = ",";
  v16 = ",";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_11;
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  (*(&off_28518D1D8 + v7))(&v11, a2);
  std::to_string(&v11, a3[1]);
  v12 = a2;
  v13 = &v11;
  v14 = a2;
  v15 = &v11;
  v16 = &v11;
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v12;
  (off_28518D1F0[v8])(&v17, a2);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  v12 = a2;
  v13 = "}";
  v14 = a2;
  v15 = "}";
  v16 = "}";
  v9 = *(a2 + 24);
  if (v9 == -1)
  {
LABEL_11:
    sub_23EF41D6C();
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  return (*(&off_28518D1D8 + v9))(&v11, a2);
}

void sub_23F2C02EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2C058C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2C0614(uint64_t a1, uint64_t a2, char *a3)
{
  v12 = a2;
  v13 = "{";
  v14 = a2;
  v15 = "{";
  v16 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_11;
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  (*(&off_28518D1D8 + v3))(&v11);
  std::to_string(&v11, *a3);
  v12 = a2;
  v13 = &v11;
  v14 = a2;
  v15 = &v11;
  v16 = &v11;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v12;
  (off_28518D1F0[v6])(&v17, a2);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  v12 = a2;
  v13 = ",";
  v14 = a2;
  v15 = ",";
  v16 = ",";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_11;
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  (*(&off_28518D1D8 + v7))(&v11, a2);
  std::to_string(&v11, a3[1]);
  v12 = a2;
  v13 = &v11;
  v14 = a2;
  v15 = &v11;
  v16 = &v11;
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v12;
  (off_28518D1F0[v8])(&v17, a2);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  v12 = a2;
  v13 = "}";
  v14 = a2;
  v15 = "}";
  v16 = "}";
  v9 = *(a2 + 24);
  if (v9 == -1)
  {
LABEL_11:
    sub_23EF41D6C();
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  return (*(&off_28518D1D8 + v9))(&v11, a2);
}

void sub_23F2C07B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2C0A50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2C0AD8(uint64_t a1, uint64_t a2, __int16 *a3)
{
  v12 = a2;
  v13 = "{";
  v14 = a2;
  v15 = "{";
  v16 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_11;
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  (*(&off_28518D1D8 + v3))(&v11);
  std::to_string(&v11, *a3);
  v12 = a2;
  v13 = &v11;
  v14 = a2;
  v15 = &v11;
  v16 = &v11;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v12;
  (off_28518D1F0[v6])(&v17, a2);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  v12 = a2;
  v13 = ",";
  v14 = a2;
  v15 = ",";
  v16 = ",";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_11;
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  (*(&off_28518D1D8 + v7))(&v11, a2);
  std::to_string(&v11, a3[1]);
  v12 = a2;
  v13 = &v11;
  v14 = a2;
  v15 = &v11;
  v16 = &v11;
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v12;
  (off_28518D1F0[v8])(&v17, a2);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  v12 = a2;
  v13 = "}";
  v14 = a2;
  v15 = "}";
  v16 = "}";
  v9 = *(a2 + 24);
  if (v9 == -1)
  {
LABEL_11:
    sub_23EF41D6C();
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  return (*(&off_28518D1D8 + v9))(&v11, a2);
}

void sub_23F2C0C74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2C0F14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2C0F9C(uint64_t a1, uint64_t a2, int *a3)
{
  v12 = a2;
  v13 = "{";
  v14 = a2;
  v15 = "{";
  v16 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_11;
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  (*(&off_28518D1D8 + v3))(&v11);
  std::to_string(&v11, *a3);
  v12 = a2;
  v13 = &v11;
  v14 = a2;
  v15 = &v11;
  v16 = &v11;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v12;
  (off_28518D1F0[v6])(&v17, a2);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  v12 = a2;
  v13 = ",";
  v14 = a2;
  v15 = ",";
  v16 = ",";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_11;
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  (*(&off_28518D1D8 + v7))(&v11, a2);
  std::to_string(&v11, a3[1]);
  v12 = a2;
  v13 = &v11;
  v14 = a2;
  v15 = &v11;
  v16 = &v11;
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v12;
  (off_28518D1F0[v8])(&v17, a2);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  v12 = a2;
  v13 = "}";
  v14 = a2;
  v15 = "}";
  v16 = "}";
  v9 = *(a2 + 24);
  if (v9 == -1)
  {
LABEL_11:
    sub_23EF41D6C();
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  return (*(&off_28518D1D8 + v9))(&v11, a2);
}

void sub_23F2C1138(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2C13D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2C1460(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v12 = a2;
  v13 = "{";
  v14 = a2;
  v15 = "{";
  v16 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_11;
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  (*(&off_28518D1D8 + v3))(&v11);
  std::to_string(&v11, *a3);
  v12 = a2;
  v13 = &v11;
  v14 = a2;
  v15 = &v11;
  v16 = &v11;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v12;
  (off_28518D1F0[v6])(&v17, a2);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  v12 = a2;
  v13 = ",";
  v14 = a2;
  v15 = ",";
  v16 = ",";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_11;
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  (*(&off_28518D1D8 + v7))(&v11, a2);
  std::to_string(&v11, a3[1]);
  v12 = a2;
  v13 = &v11;
  v14 = a2;
  v15 = &v11;
  v16 = &v11;
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v12;
  (off_28518D1F0[v8])(&v17, a2);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  v12 = a2;
  v13 = "}";
  v14 = a2;
  v15 = "}";
  v16 = "}";
  v9 = *(a2 + 24);
  if (v9 == -1)
  {
LABEL_11:
    sub_23EF41D6C();
  }

  v11.__r_.__value_.__r.__words[0] = &v12;
  return (*(&off_28518D1D8 + v9))(&v11, a2);
}

void sub_23F2C15FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_23F2C1620(int a1, unsigned __int8 **a2, void **a3)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        sub_23F2C6BA0(a2, 6);
        v16 = *a2;
        v17 = *(*a2 + 5);
        v7 = *a3;
        if (*(v16 + 6) > 0xBuLL)
        {
          sub_23EF2F9B0(v7, "{", 1);
          sub_23EF2F9B0(v7, "{", 1);
          sub_23F2C3BD8();
        }
      }

      else
      {
        sub_23F2C6BA0(a2, 7);
        v12 = *a2;
        v13 = *(*a2 + 5);
        v7 = *a3;
        if (*(v12 + 6) > 0x17uLL)
        {
          sub_23EF2F9B0(v7, "{", 1);
          sub_23EF2F9B0(v7, "{", 1);
          sub_23F2C4120();
        }
      }
    }

    else
    {
      switch(a1)
      {
        case 8:
          sub_23F2C6BA0(a2, 8);
          v20 = *a2;
          v21 = *(*a2 + 5);
          v7 = *a3;
          if (*(v20 + 6) > 0x2FuLL)
          {
            sub_23EF2F9B0(v7, "{", 1);
            sub_23EF2F9B0(v7, "{", 1);
            sub_23F2C4668();
          }

          break;
        case 11:
          sub_23F2C6BA0(a2, 11);
          v24 = *a2;
          v25 = *(*a2 + 5);
          v7 = *a3;
          if (*(v24 + 6) > 0x17uLL)
          {
            sub_23EF2F9B0(v7, "{", 1);
            sub_23EF2F9B0(v7, "{", 1);
            sub_23F2C4BB0();
          }

          break;
        case 12:
          sub_23F2C6BA0(a2, 12);
          v8 = *a2;
          v9 = *(*a2 + 5);
          v7 = *a3;
          if (*(v8 + 6) > 0x2FuLL)
          {
            sub_23EF2F9B0(v7, "{", 1);
            sub_23EF2F9B0(v7, "{", 1);
            sub_23F2C4EB4();
          }

          break;
        default:
          goto LABEL_33;
      }
    }
  }

  else if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_33;
      }

      sub_23F2C6BA0(a2, 1);
      v10 = *a2;
      v11 = *(*a2 + 5);
      v7 = *a3;
      if (*(v10 + 6) > 0xBuLL)
      {
        sub_23EF2F9B0(v7, "{", 1);
        sub_23EF2F9B0(v7, "{", 1);
        sub_23F2C28FC();
      }
    }

    else
    {
      sub_23F2C6BA0(a2, 0);
      v14 = *a2;
      v15 = *(*a2 + 5);
      v7 = *a3;
      if (*(v14 + 6) > 5uLL)
      {
        sub_23EF2F9B0(v7, "{", 1);
        sub_23EF2F9B0(v7, "{", 1);
        sub_23F2C23B4();
      }
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_23F2C6BA0(a2, 2);
        v18 = *a2;
        v19 = *(*a2 + 5);
        v7 = *a3;
        if (*(v18 + 6) > 0x17uLL)
        {
          sub_23EF2F9B0(v7, "{", 1);
          sub_23EF2F9B0(v7, "{", 1);
          sub_23F2C2E44();
        }

        break;
      case 3:
        sub_23F2C6BA0(a2, 3);
        v22 = *a2;
        v23 = *(*a2 + 5);
        v7 = *a3;
        if (*(v22 + 6) > 0x2FuLL)
        {
          sub_23EF2F9B0(v7, "{", 1);
          sub_23EF2F9B0(v7, "{", 1);
          sub_23F2C3148();
        }

        break;
      case 5:
        sub_23F2C6BA0(a2, 5);
        v5 = *a2;
        v6 = *(*a2 + 5);
        v7 = *a3;
        if (*(v5 + 6) > 5uLL)
        {
          sub_23EF2F9B0(v7, "{", 1);
          sub_23EF2F9B0(v7, "{", 1);
          sub_23F2C3690();
        }

        return sub_23EF2F9B0(v7, "{}", 2);
      default:
LABEL_33:

        sub_23F2F1304(a1);
    }
  }

  return sub_23EF2F9B0(v7, "{}", 2);
}

void sub_23F2C2630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2C26B8(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v14 = a2;
  v15 = "{";
  v16 = a2;
  v17 = "{";
  v18 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_28518D1D8 + v3))(&v13);
  std::to_string(&v13, *a3);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_23EF41D6C();
  }

  v19 = &v14;
  (off_28518D1F0[v6])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = ",";
  v16 = a2;
  v17 = ",";
  v18 = ",";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_28518D1D8 + v7))(&v13, a2);
  std::to_string(&v13, a3[1]);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    goto LABEL_16;
  }

  v19 = &v14;
  (off_28518D1F0[v8])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = ",";
  v16 = a2;
  v17 = ",";
  v18 = ",";
  v9 = *(a2 + 24);
  if (v9 == -1)
  {
LABEL_15:
    sub_23EF41D6C();
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_28518D1D8 + v9))(&v13, a2);
  std::to_string(&v13, a3[2]);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v10 = *(a2 + 24);
  if (v10 == -1)
  {
LABEL_16:
    sub_23EF41D6C();
  }

  v19 = &v14;
  (off_28518D1F0[v10])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = "}";
  v16 = a2;
  v17 = "}";
  v18 = "}";
  v11 = *(a2 + 24);
  if (v11 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  return (*(&off_28518D1D8 + v11))(&v13, a2);
}

void sub_23F2C28D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2C2B78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2C2C00(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v14 = a2;
  v15 = "{";
  v16 = a2;
  v17 = "{";
  v18 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_28518D1D8 + v3))(&v13);
  std::to_string(&v13, *a3);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_23EF41D6C();
  }

  v19 = &v14;
  (off_28518D1F0[v6])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = ",";
  v16 = a2;
  v17 = ",";
  v18 = ",";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_28518D1D8 + v7))(&v13, a2);
  std::to_string(&v13, a3[1]);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    goto LABEL_16;
  }

  v19 = &v14;
  (off_28518D1F0[v8])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = ",";
  v16 = a2;
  v17 = ",";
  v18 = ",";
  v9 = *(a2 + 24);
  if (v9 == -1)
  {
LABEL_15:
    sub_23EF41D6C();
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_28518D1D8 + v9))(&v13, a2);
  std::to_string(&v13, a3[2]);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v10 = *(a2 + 24);
  if (v10 == -1)
  {
LABEL_16:
    sub_23EF41D6C();
  }

  v19 = &v14;
  (off_28518D1F0[v10])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = "}";
  v16 = a2;
  v17 = "}";
  v18 = "}";
  v11 = *(a2 + 24);
  if (v11 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  return (*(&off_28518D1D8 + v11))(&v13, a2);
}

void sub_23F2C2E20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2C30C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2C33C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2C344C(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v14 = a2;
  v15 = "{";
  v16 = a2;
  v17 = "{";
  v18 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_28518D1D8 + v3))(&v13);
  std::to_string(&v13, *a3);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_23EF41D6C();
  }

  v19 = &v14;
  (off_28518D1F0[v6])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = ",";
  v16 = a2;
  v17 = ",";
  v18 = ",";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_28518D1D8 + v7))(&v13, a2);
  std::to_string(&v13, a3[1]);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    goto LABEL_16;
  }

  v19 = &v14;
  (off_28518D1F0[v8])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = ",";
  v16 = a2;
  v17 = ",";
  v18 = ",";
  v9 = *(a2 + 24);
  if (v9 == -1)
  {
LABEL_15:
    sub_23EF41D6C();
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_28518D1D8 + v9))(&v13, a2);
  std::to_string(&v13, a3[2]);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v10 = *(a2 + 24);
  if (v10 == -1)
  {
LABEL_16:
    sub_23EF41D6C();
  }

  v19 = &v14;
  (off_28518D1F0[v10])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = "}";
  v16 = a2;
  v17 = "}";
  v18 = "}";
  v11 = *(a2 + 24);
  if (v11 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  return (*(&off_28518D1D8 + v11))(&v13, a2);
}

void sub_23F2C366C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2C390C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2C3994(uint64_t a1, uint64_t a2, char *a3)
{
  v14 = a2;
  v15 = "{";
  v16 = a2;
  v17 = "{";
  v18 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_28518D1D8 + v3))(&v13);
  std::to_string(&v13, *a3);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_23EF41D6C();
  }

  v19 = &v14;
  (off_28518D1F0[v6])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = ",";
  v16 = a2;
  v17 = ",";
  v18 = ",";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_28518D1D8 + v7))(&v13, a2);
  std::to_string(&v13, a3[1]);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    goto LABEL_16;
  }

  v19 = &v14;
  (off_28518D1F0[v8])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = ",";
  v16 = a2;
  v17 = ",";
  v18 = ",";
  v9 = *(a2 + 24);
  if (v9 == -1)
  {
LABEL_15:
    sub_23EF41D6C();
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_28518D1D8 + v9))(&v13, a2);
  std::to_string(&v13, a3[2]);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v10 = *(a2 + 24);
  if (v10 == -1)
  {
LABEL_16:
    sub_23EF41D6C();
  }

  v19 = &v14;
  (off_28518D1F0[v10])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = "}";
  v16 = a2;
  v17 = "}";
  v18 = "}";
  v11 = *(a2 + 24);
  if (v11 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  return (*(&off_28518D1D8 + v11))(&v13, a2);
}

void sub_23F2C3BB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2C3E54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2C3EDC(uint64_t a1, uint64_t a2, __int16 *a3)
{
  v14 = a2;
  v15 = "{";
  v16 = a2;
  v17 = "{";
  v18 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_28518D1D8 + v3))(&v13);
  std::to_string(&v13, *a3);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_23EF41D6C();
  }

  v19 = &v14;
  (off_28518D1F0[v6])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = ",";
  v16 = a2;
  v17 = ",";
  v18 = ",";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_28518D1D8 + v7))(&v13, a2);
  std::to_string(&v13, a3[1]);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    goto LABEL_16;
  }

  v19 = &v14;
  (off_28518D1F0[v8])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = ",";
  v16 = a2;
  v17 = ",";
  v18 = ",";
  v9 = *(a2 + 24);
  if (v9 == -1)
  {
LABEL_15:
    sub_23EF41D6C();
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_28518D1D8 + v9))(&v13, a2);
  std::to_string(&v13, a3[2]);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v10 = *(a2 + 24);
  if (v10 == -1)
  {
LABEL_16:
    sub_23EF41D6C();
  }

  v19 = &v14;
  (off_28518D1F0[v10])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = "}";
  v16 = a2;
  v17 = "}";
  v18 = "}";
  v11 = *(a2 + 24);
  if (v11 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  return (*(&off_28518D1D8 + v11))(&v13, a2);
}

void sub_23F2C40FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2C439C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2C4424(uint64_t a1, uint64_t a2, int *a3)
{
  v14 = a2;
  v15 = "{";
  v16 = a2;
  v17 = "{";
  v18 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_28518D1D8 + v3))(&v13);
  std::to_string(&v13, *a3);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_23EF41D6C();
  }

  v19 = &v14;
  (off_28518D1F0[v6])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = ",";
  v16 = a2;
  v17 = ",";
  v18 = ",";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_28518D1D8 + v7))(&v13, a2);
  std::to_string(&v13, a3[1]);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    goto LABEL_16;
  }

  v19 = &v14;
  (off_28518D1F0[v8])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = ",";
  v16 = a2;
  v17 = ",";
  v18 = ",";
  v9 = *(a2 + 24);
  if (v9 == -1)
  {
LABEL_15:
    sub_23EF41D6C();
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_28518D1D8 + v9))(&v13, a2);
  std::to_string(&v13, a3[2]);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v10 = *(a2 + 24);
  if (v10 == -1)
  {
LABEL_16:
    sub_23EF41D6C();
  }

  v19 = &v14;
  (off_28518D1F0[v10])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = "}";
  v16 = a2;
  v17 = "}";
  v18 = "}";
  v11 = *(a2 + 24);
  if (v11 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  return (*(&off_28518D1D8 + v11))(&v13, a2);
}

void sub_23F2C4644(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2C48E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2C496C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v14 = a2;
  v15 = "{";
  v16 = a2;
  v17 = "{";
  v18 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_28518D1D8 + v3))(&v13);
  std::to_string(&v13, *a3);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    sub_23EF41D6C();
  }

  v19 = &v14;
  (off_28518D1F0[v6])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = ",";
  v16 = a2;
  v17 = ",";
  v18 = ",";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_28518D1D8 + v7))(&v13, a2);
  std::to_string(&v13, a3[1]);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    goto LABEL_16;
  }

  v19 = &v14;
  (off_28518D1F0[v8])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = ",";
  v16 = a2;
  v17 = ",";
  v18 = ",";
  v9 = *(a2 + 24);
  if (v9 == -1)
  {
LABEL_15:
    sub_23EF41D6C();
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_28518D1D8 + v9))(&v13, a2);
  std::to_string(&v13, a3[2]);
  v14 = a2;
  v15 = &v13;
  v16 = a2;
  v17 = &v13;
  v18 = &v13;
  v10 = *(a2 + 24);
  if (v10 == -1)
  {
LABEL_16:
    sub_23EF41D6C();
  }

  v19 = &v14;
  (off_28518D1F0[v10])(&v19, a2);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v14 = a2;
  v15 = "}";
  v16 = a2;
  v17 = "}";
  v18 = "}";
  v11 = *(a2 + 24);
  if (v11 == -1)
  {
    goto LABEL_15;
  }

  v13.__r_.__value_.__r.__words[0] = &v14;
  return (*(&off_28518D1D8 + v11))(&v13, a2);
}

void sub_23F2C4B8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2C4E2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2C5130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2C5418(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_23EF2F99C(exception_object);
}

void sub_23F2C56AC(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_23EF2F99C(exception_object);
}

void sub_23F2C5944(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_23EF2F99C(exception_object);
}

void sub_23F2C5BDC(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_23EF2F99C(exception_object);
}

void sub_23F2C5E74(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_23EF2F99C(exception_object);
}

void sub_23F2C610C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_23EF2F99C(exception_object);
}

void sub_23F2C63A4(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_23EF2F99C(exception_object);
}

void sub_23F2C663C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_23EF2F99C(exception_object);
}

void sub_23F2C68D4(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_23EF2F99C(exception_object);
}

void sub_23F2C6B6C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_23EF2F99C(exception_object);
}

unsigned __int8 **sub_23F2C6BA0(unsigned __int8 **result, int a2)
{
  v4 = a2;
  if (**result != a2)
  {
    v2 = result;
    __cxa_allocate_exception(0x10uLL);
    v3 = *v2;
    sub_23F2C6C8C();
  }

  return result;
}

void sub_23F2C6C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

void sub_23F2C6C8C()
{
  v1 = 0;
  v2[0] = v0;
  v2[1] = "Span of value type ";
  v2[2] = v0;
  v2[3] = "Span of value type ";
  v2[4] = "Span of value type ";
  v3 = v2;
  sub_23F05AE98(&v3);
  sub_23EF848B8();
}

void sub_23F2C6DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F04B948(va);
  _Unwind_Resume(a1);
}

void sub_23F2C6DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F04B948(va);
  _Unwind_Resume(a1);
}

void sub_23F2C6DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F04B948(va);
  _Unwind_Resume(a1);
}

void sub_23F2C6DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F04B948(va);
  _Unwind_Resume(a1);
}

void sub_23F2C6E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23F04B948(va);
  _Unwind_Resume(a1);
}

void *sub_23F2C6E24(void *a1, unsigned __int8 **a2)
{
  v4 = sub_23EF2F9B0(a1, "{", 1);
  v89.__r_.__value_.__s.__data_[0] = **a2;
  v5 = sub_23F2F1524(v4, &v89);
  sub_23EF2F9B0(v5, ",", 1);
  v6 = **a2;
  if (v6 > 5)
  {
    if (**a2 > 7u)
    {
      switch(v6)
      {
        case 8u:
          sub_23F2C6BA0(a2, 8);
          v59 = *(*a2 + 6);
          if (v59 > 7)
          {
            v60 = *(*a2 + 5);
            sub_23EF2F9B0(a1, "{", 1);
            std::to_string(&v89, *v60);
            if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v61 = &v89;
            }

            else
            {
              v61 = v89.__r_.__value_.__r.__words[0];
            }

            if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v89.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v89.__r_.__value_.__l.__size_;
            }

            sub_23EF2F9B0(a1, v61, size);
            v63 = v59 & 0xFFFFFFFFFFFFFFF8;
            if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v89.__r_.__value_.__l.__data_);
            }

            v64 = v63 - 8;
            if (v64)
            {
              v65 = v60 + 1;
              do
              {
                sub_23EF2F9B0(a1, ",", 1);
                std::to_string(&v89, *v65);
                if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v66 = &v89;
                }

                else
                {
                  v66 = v89.__r_.__value_.__r.__words[0];
                }

                if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v67 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v67 = v89.__r_.__value_.__l.__size_;
                }

                sub_23EF2F9B0(a1, v66, v67);
                if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v89.__r_.__value_.__l.__data_);
                }

                ++v65;
                v64 -= 8;
              }

              while (v64);
            }

            goto LABEL_149;
          }

          goto LABEL_151;
        case 0xBu:
          sub_23F2C6BA0(a2, 11);
          v76 = *a2;
          v78 = *(*a2 + 5);
          v77 = *(v76 + 6);
          v89.__r_.__value_.__r.__words[0] = a1;
          if (v77 <= 3)
          {
            goto LABEL_151;
          }

          v80 = v77 & 0xFFFFFFFFFFFFFFFCLL;
          sub_23EF2F9B0(a1, "{", 1);
          sub_23EF821A4(&v87, &v89, v78);
          v81 = v80 - 4;
          if (v80 != 4)
          {
            v82 = v78 + 1;
            do
            {
              sub_23EF2F9B0(v89.__r_.__value_.__l.__data_, ",", 1);
              sub_23EF821A4(&v87, &v89, v82++);
              v81 -= 4;
            }

            while (v81);
          }

          break;
        case 0xCu:
          sub_23F2C6BA0(a2, 12);
          v16 = *a2;
          v18 = *(*a2 + 5);
          v17 = *(v16 + 6);
          v89.__r_.__value_.__r.__words[0] = a1;
          if (v17 <= 7)
          {
            goto LABEL_151;
          }

          v19 = v17 & 0xFFFFFFFFFFFFFFF8;
          sub_23EF2F9B0(a1, "{", 1);
          sub_23F2C8228(&v87, &v89, v18);
          v20 = v19 - 8;
          if (v19 != 8)
          {
            v21 = v18 + 1;
            do
            {
              sub_23EF2F9B0(v89.__r_.__value_.__l.__data_, ",", 1);
              sub_23F2C8228(&v87, &v89, v21++);
              v20 -= 8;
            }

            while (v20);
          }

          break;
        default:
          goto LABEL_152;
      }

      v75 = v89.__r_.__value_.__r.__words[0];
      v74 = "}";
      goto LABEL_157;
    }

    if (v6 == 6)
    {
      sub_23F2C6BA0(a2, 6);
      v41 = *(*a2 + 6);
      if (v41 > 1)
      {
        v42 = *(*a2 + 5);
        sub_23EF2F9B0(a1, "{", 1);
        std::to_string(&v89, *v42);
        if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v43 = &v89;
        }

        else
        {
          v43 = v89.__r_.__value_.__r.__words[0];
        }

        if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v44 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v44 = v89.__r_.__value_.__l.__size_;
        }

        sub_23EF2F9B0(a1, v43, v44);
        v45 = v41 & 0xFFFFFFFFFFFFFFFELL;
        if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v89.__r_.__value_.__l.__data_);
        }

        v46 = v45 - 2;
        if (v46)
        {
          v47 = v42 + 1;
          do
          {
            sub_23EF2F9B0(a1, ",", 1);
            std::to_string(&v89, *v47);
            if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v48 = &v89;
            }

            else
            {
              v48 = v89.__r_.__value_.__r.__words[0];
            }

            if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v49 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v49 = v89.__r_.__value_.__l.__size_;
            }

            sub_23EF2F9B0(a1, v48, v49);
            if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v89.__r_.__value_.__l.__data_);
            }

            ++v47;
            v46 -= 2;
          }

          while (v46);
        }

        goto LABEL_149;
      }

      goto LABEL_151;
    }

    if (v6 == 7)
    {
      sub_23F2C6BA0(a2, 7);
      v31 = *(*a2 + 6);
      if (v31 > 3)
      {
        v32 = *(*a2 + 5);
        sub_23EF2F9B0(a1, "{", 1);
        std::to_string(&v89, *v32);
        if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v33 = &v89;
        }

        else
        {
          v33 = v89.__r_.__value_.__r.__words[0];
        }

        if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v34 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v34 = v89.__r_.__value_.__l.__size_;
        }

        sub_23EF2F9B0(a1, v33, v34);
        v35 = v31 & 0xFFFFFFFFFFFFFFFCLL;
        if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v89.__r_.__value_.__l.__data_);
        }

        v36 = v35 - 4;
        if (v36)
        {
          v37 = v32 + 1;
          do
          {
            sub_23EF2F9B0(a1, ",", 1);
            std::to_string(&v89, *v37);
            if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v38 = &v89;
            }

            else
            {
              v38 = v89.__r_.__value_.__r.__words[0];
            }

            if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v39 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v39 = v89.__r_.__value_.__l.__size_;
            }

            sub_23EF2F9B0(a1, v38, v39);
            if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v89.__r_.__value_.__l.__data_);
            }

            ++v37;
            v36 -= 4;
          }

          while (v36);
        }

        goto LABEL_149;
      }

      goto LABEL_151;
    }

LABEL_152:
    sub_23F2F1304(v6);
  }

  if (**a2 > 1u)
  {
    switch(v6)
    {
      case 2u:
        sub_23F2C6BA0(a2, 2);
        v50 = *(*a2 + 6);
        if (v50 > 3)
        {
          v51 = *(*a2 + 5);
          sub_23EF2F9B0(a1, "{", 1);
          std::to_string(&v89, *v51);
          if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v52 = &v89;
          }

          else
          {
            v52 = v89.__r_.__value_.__r.__words[0];
          }

          if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v53 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v53 = v89.__r_.__value_.__l.__size_;
          }

          sub_23EF2F9B0(a1, v52, v53);
          v54 = v50 & 0xFFFFFFFFFFFFFFFCLL;
          if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v89.__r_.__value_.__l.__data_);
          }

          v55 = v54 - 4;
          if (v55)
          {
            v56 = v51 + 1;
            do
            {
              sub_23EF2F9B0(a1, ",", 1);
              std::to_string(&v89, *v56);
              if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v57 = &v89;
              }

              else
              {
                v57 = v89.__r_.__value_.__r.__words[0];
              }

              if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v58 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v58 = v89.__r_.__value_.__l.__size_;
              }

              sub_23EF2F9B0(a1, v57, v58);
              if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v89.__r_.__value_.__l.__data_);
              }

              ++v56;
              v55 -= 4;
            }

            while (v55);
          }

          goto LABEL_149;
        }

        goto LABEL_151;
      case 3u:
        sub_23F2C6BA0(a2, 3);
        v68 = *(*a2 + 6);
        if (v68 > 7)
        {
          v69 = *(*a2 + 5);
          sub_23EF2F9B0(a1, "{", 1);
          std::to_string(&v89, *v69);
          if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v70 = &v89;
          }

          else
          {
            v70 = v89.__r_.__value_.__r.__words[0];
          }

          if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v71 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v71 = v89.__r_.__value_.__l.__size_;
          }

          sub_23EF2F9B0(a1, v70, v71);
          v72 = v68 & 0xFFFFFFFFFFFFFFF8;
          if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v89.__r_.__value_.__l.__data_);
          }

          v73 = v72 - 8;
          if (v73)
          {
            v84 = v69 + 1;
            do
            {
              sub_23EF2F9B0(a1, ",", 1);
              std::to_string(&v89, *v84);
              if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v85 = &v89;
              }

              else
              {
                v85 = v89.__r_.__value_.__r.__words[0];
              }

              if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v86 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v86 = v89.__r_.__value_.__l.__size_;
              }

              sub_23EF2F9B0(a1, v85, v86);
              if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v89.__r_.__value_.__l.__data_);
              }

              ++v84;
              v73 -= 8;
            }

            while (v73);
          }

          goto LABEL_149;
        }

LABEL_151:
        v74 = "{}";
        v75 = a1;
        v79 = 2;
LABEL_158:
        sub_23EF2F9B0(v75, v74, v79);
        return sub_23EF2F9B0(a1, "}", 1);
      case 5u:
        sub_23F2C6BA0(a2, 5);
        v7 = *a2;
        v8 = *(*a2 + 6);
        if (v8 > 0)
        {
          v9 = *(v7 + 5);
          sub_23EF2F9B0(a1, "{", 1);
          std::to_string(&v89, *v9);
          if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v10 = &v89;
          }

          else
          {
            v10 = v89.__r_.__value_.__r.__words[0];
          }

          if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v11 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v11 = v89.__r_.__value_.__l.__size_;
          }

          sub_23EF2F9B0(a1, v10, v11);
          if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v89.__r_.__value_.__l.__data_);
          }

          v12 = v8 - 1;
          if (v8 != 1)
          {
            v13 = v9 + 1;
            do
            {
              sub_23EF2F9B0(a1, ",", 1);
              std::to_string(&v89, *v13);
              if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v14 = &v89;
              }

              else
              {
                v14 = v89.__r_.__value_.__r.__words[0];
              }

              if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v15 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v15 = v89.__r_.__value_.__l.__size_;
              }

              sub_23EF2F9B0(a1, v14, v15);
              if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v89.__r_.__value_.__l.__data_);
              }

              ++v13;
              --v12;
            }

            while (v12);
          }

LABEL_149:
          v74 = "}";
          v75 = a1;
LABEL_157:
          v79 = 1;
          goto LABEL_158;
        }

        goto LABEL_151;
    }

    goto LABEL_152;
  }

  if (**a2)
  {
    sub_23F2C6BA0(a2, 1);
    v22 = *(*a2 + 6);
    if (v22 > 1)
    {
      v23 = *(*a2 + 5);
      sub_23EF2F9B0(a1, "{", 1);
      std::to_string(&v89, *v23);
      if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &v89;
      }

      else
      {
        v24 = v89.__r_.__value_.__r.__words[0];
      }

      if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v25 = v89.__r_.__value_.__l.__size_;
      }

      sub_23EF2F9B0(a1, v24, v25);
      v26 = v22 & 0xFFFFFFFFFFFFFFFELL;
      if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v89.__r_.__value_.__l.__data_);
      }

      v27 = v26 - 2;
      if (v27)
      {
        v28 = v23 + 1;
        do
        {
          sub_23EF2F9B0(a1, ",", 1);
          std::to_string(&v89, *v28);
          if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v29 = &v89;
          }

          else
          {
            v29 = v89.__r_.__value_.__r.__words[0];
          }

          if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v30 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v30 = v89.__r_.__value_.__l.__size_;
          }

          sub_23EF2F9B0(a1, v29, v30);
          if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v89.__r_.__value_.__l.__data_);
          }

          ++v28;
          v27 -= 2;
        }

        while (v27);
      }

      goto LABEL_149;
    }

    goto LABEL_151;
  }

  sub_23F2C6BA0(a2, 0);
  v40 = *(*a2 + 6);
  v89.__r_.__value_.__r.__words[0] = *(*a2 + 5);
  v89.__r_.__value_.__l.__size_ = v40;
  v87 = a1;
  sub_23F295760(&v88, &v87, &v89);
  return sub_23EF2F9B0(a1, "}", 1);
}

void sub_23F2C7724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2C7774(int a1, uint64_t a2)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        v33 = *(a2 + 8);
        v34 = *(a2 + 16);
        v35 = *(v33 + 48);
        if (v35 >> 1 == *(v34 + 48) >> 1)
        {
          v36 = *(v33 + 40);
          v37 = *(v34 + 40);
          if (v35 < 2 || v36 == v37)
          {
            return 1;
          }

          v68 = 2 * (v35 >> 1);
          while (*v36 == *v37)
          {
            ++v36;
            ++v37;
            v68 -= 2;
            if (!v68)
            {
              return 1;
            }
          }
        }
      }

      else
      {
        v21 = *(a2 + 8);
        v22 = *(a2 + 16);
        v23 = *(v21 + 48);
        if (v23 >> 2 == *(v22 + 48) >> 2)
        {
          v24 = *(v21 + 40);
          v25 = *(v22 + 40);
          if (v23 < 4 || v24 == v25)
          {
            return 1;
          }

          v64 = 4 * (v23 >> 2);
          while (*v24 == *v25)
          {
            ++v24;
            ++v25;
            v64 -= 4;
            if (!v64)
            {
              return 1;
            }
          }
        }
      }

      return 0;
    }

    switch(a1)
    {
      case 8:
        v45 = *(a2 + 8);
        v46 = *(a2 + 16);
        v47 = *(v45 + 48);
        if (v47 >> 3 == *(v46 + 48) >> 3)
        {
          v48 = *(v45 + 40);
          v49 = *(v46 + 40);
          if (v47 < 8 || v48 == v49)
          {
            return 1;
          }

          v70 = 8 * (v47 >> 3);
          while (*v48 == *v49)
          {
            ++v48;
            ++v49;
            v70 -= 8;
            if (!v70)
            {
              return 1;
            }
          }
        }

        return 0;
      case 11:
        v57 = *(a2 + 8);
        v58 = *(a2 + 16);
        v59 = *(v57 + 48);
        if (v59 >> 2 == *(v58 + 48) >> 2)
        {
          v60 = *(v57 + 40);
          v61 = *(v58 + 40);
          if (v59 < 4 || v60 == v61)
          {
            return 1;
          }

          v75 = 4 * (v59 >> 2);
          while (*v60 == *v61)
          {
            ++v60;
            ++v61;
            v75 -= 4;
            if (!v75)
            {
              return 1;
            }
          }
        }

        return 0;
      case 12:
        v9 = *(a2 + 8);
        v10 = *(a2 + 16);
        v11 = *(v9 + 48);
        if (v11 >> 3 == *(v10 + 48) >> 3)
        {
          v12 = *(v9 + 40);
          v13 = *(v10 + 40);
          if (v11 < 8 || v12 == v13)
          {
            return 1;
          }

          v73 = 8 * (v11 >> 3);
          while (*v12 == *v13)
          {
            ++v12;
            ++v13;
            v73 -= 8;
            if (!v73)
            {
              return 1;
            }
          }
        }

        return 0;
    }

    goto LABEL_83;
  }

  if (a1 > 1)
  {
    switch(a1)
    {
      case 2:
        v39 = *(a2 + 8);
        v40 = *(a2 + 16);
        v41 = *(v39 + 48);
        if (v41 >> 2 == *(v40 + 48) >> 2)
        {
          v42 = *(v39 + 40);
          v43 = *(v40 + 40);
          if (v41 < 4 || v42 == v43)
          {
            return 1;
          }

          v69 = 4 * (v41 >> 2);
          while (*v42 == *v43)
          {
            ++v42;
            ++v43;
            v69 -= 4;
            if (!v69)
            {
              return 1;
            }
          }
        }

        return 0;
      case 3:
        v51 = *(a2 + 8);
        v52 = *(a2 + 16);
        v53 = *(v51 + 48);
        if (v53 >> 3 == *(v52 + 48) >> 3)
        {
          v54 = *(v51 + 40);
          v55 = *(v52 + 40);
          if (v53 < 8 || v54 == v55)
          {
            return 1;
          }

          v74 = 8 * (v53 >> 3);
          while (*v54 == *v55)
          {
            ++v54;
            ++v55;
            v74 -= 8;
            if (!v74)
            {
              return 1;
            }
          }
        }

        return 0;
      case 5:
        v2 = *(a2 + 8);
        v3 = *(a2 + 16);
        v4 = *(v2 + 48);
        if (v4 == *(v3 + 48))
        {
          v5 = *(v2 + 40);
          v6 = *(v3 + 40);
          if (v4)
          {
            v7 = v5 == v6;
          }

          else
          {
            v7 = 1;
          }

          if (v7)
          {
            return 1;
          }

          v71 = v4 - 1;
          do
          {
            v72 = v71;
            v67 = *v5 == *v6;
            if (*v5 != *v6)
            {
              break;
            }

            ++v5;
            ++v6;
            --v71;
          }

          while (v72);
          return v67;
        }

        return 0;
    }

LABEL_83:
    sub_23F2F1304(a1);
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v15 = *(a2 + 8);
      v16 = *(a2 + 16);
      v17 = *(v15 + 48);
      if (v17 >> 1 == *(v16 + 48) >> 1)
      {
        v18 = *(v15 + 40);
        v19 = *(v16 + 40);
        if (v17 < 2 || v18 == v19)
        {
          return 1;
        }

        v63 = 2 * (v17 >> 1);
        while (*v18 == *v19)
        {
          ++v18;
          ++v19;
          v63 -= 2;
          if (!v63)
          {
            return 1;
          }
        }
      }

      return 0;
    }

    goto LABEL_83;
  }

  v27 = *(a2 + 8);
  v28 = *(a2 + 16);
  v29 = *(v27 + 48);
  if (v29 == *(v28 + 48))
  {
    v30 = *(v27 + 40);
    v31 = *(v28 + 40);
    if (v29)
    {
      v32 = v30 == v31;
    }

    else
    {
      v32 = 1;
    }

    if (v32)
    {
      return 1;
    }

    v65 = v29 - 1;
    do
    {
      v66 = v65;
      v67 = *v30 == *v31;
      if (*v30 != *v31)
      {
        break;
      }

      ++v30;
      ++v31;
      --v65;
    }

    while (v66);
    return v67;
  }

  return 0;
}

void sub_23F2C7C2C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518D230;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F2C7C80(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    return v1(0, result + 32, 0, 0, 0);
  }

  return result;
}

size_t sub_23F2C7CBC(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28518D270[v3])(&v6, v1);
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

void sub_23F2C7DB0(uint64_t *a1, uint64_t a2)
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
    (off_28518D270[v10])(&v13, v3);
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

void sub_23F2C7F74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2C7FCC(uint64_t a1, uint64_t a2)
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

void sub_23F2C820C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3522C(va);
  _Unwind_Resume(a1);
}

void sub_23F2C8228(uint64_t a1, void **a2, double *a3)
{
  std::to_string(&v19, *a3);
  v5 = v19.__r_.__value_.__r.__words[0];
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v19;
  }

  else
  {
    v6 = v19.__r_.__value_.__r.__words[0];
  }

  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v19.__r_.__value_.__l.__size_;
  }

  v8 = size;
  do
  {
    if (!v8)
    {
      v8 = -1;
      if ((*(&v19.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        goto LABEL_14;
      }

LABEL_11:
      if (v8 != HIBYTE(v19.__r_.__value_.__r.__words[2]) - 1)
      {
        v5 = &v19;
        goto LABEL_16;
      }

LABEL_15:
      sub_23EF2F9B0(*a2, v6, size);
LABEL_46:
      if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_49;
    }

    v9 = v6->__r_.__value_.__s.__data_[--v8];
  }

  while (v9 == 48);
  if ((*(&v19.__r_.__value_.__s + 23) & 0x80) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  if (v8 == v19.__r_.__value_.__l.__size_ - 1)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (strtod(v5, 0) != *a3)
  {
    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v19;
    }

    else
    {
      v6 = v19.__r_.__value_.__r.__words[0];
    }

    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v19.__r_.__value_.__l.__size_;
    }

    goto LABEL_15;
  }

  v10 = SHIBYTE(v19.__r_.__value_.__r.__words[2]);
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v19;
  }

  else
  {
    v11 = v19.__r_.__value_.__r.__words[0];
  }

  v12 = 1;
  if (v11->__r_.__value_.__s.__data_[v8] == 46)
  {
    v12 = 2;
  }

  v13 = v12 + v8;
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v10 = v19.__r_.__value_.__l.__size_;
  }

  if (v10 >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v10;
  }

  if (v14 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  if (v14 >= 0x17)
  {
    operator new();
  }

  v18 = v14;
  if (v14)
  {
    memmove(__p, v11, v14);
  }

  *(__p + v14) = 0;
  if ((v18 & 0x80u) == 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v16 = v18;
  }

  else
  {
    v16 = __p[1];
  }

  sub_23EF2F9B0(*a2, v15, v16);
  if ((v18 & 0x80000000) == 0)
  {
    goto LABEL_46;
  }

  operator delete(__p[0]);
  if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return;
  }

LABEL_49:
  operator delete(v19.__r_.__value_.__l.__data_);
}

void sub_23F2C8430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2C849C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  if (*(*a1 + 56))
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Container/src/Points.cpp", 42, "this->numbers.Size() % N == 0", 0x1DuLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v3 = qword_27E396178, v4 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_9:
        qword_27E396190(*algn_27E396198, "this->numbers.Size() % N == 0", 29, &unk_23F3091D6, 0);
        return a1;
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
      (*v3)(*(v3 + 8), "this->numbers.Size() % N == 0", 29, &unk_23F3091D6, 0);
      v3 += 16;
    }

    while (v3 != v4);
    if (byte_27E3961A0)
    {
      goto LABEL_9;
    }

LABEL_11:
    abort();
  }

  return a1;
}

uint64_t sub_23F2C85FC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  if (0xAAAAAAAAAAAAAAABLL * *(*a1 + 56) >= 0x5555555555555556)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Container/src/Points.cpp", 42, "this->numbers.Size() % N == 0", 0x1DuLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v3 = qword_27E396178, v4 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_9:
        qword_27E396190(*algn_27E396198, "this->numbers.Size() % N == 0", 29, &unk_23F3091D6, 0);
        return a1;
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
      (*v3)(*(v3 + 8), "this->numbers.Size() % N == 0", 29, &unk_23F3091D6, 0);
      v3 += 16;
    }

    while (v3 != v4);
    if (byte_27E3961A0)
    {
      goto LABEL_9;
    }

LABEL_11:
    abort();
  }

  return a1;
}

void sub_23F2C8A14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2C8A78(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F2C8AB0(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F2C8B14(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteINS_6vectorIN4cv3d3esn4math6VectorIiLj2EEENS_9allocatorIS6_EEEEEE")
  {
    if (((v2 & "NSt3__114default_deleteINS_6vectorIN4cv3d3esn4math6VectorIiLj2EEENS_9allocatorIS6_EEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteINS_6vectorIN4cv3d3esn4math6VectorIiLj2EEENS_9allocatorIS6_EEEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteINS_6vectorIN4cv3d3esn4math6VectorIiLj2EEENS_9allocatorIS6_EEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_23F2C8B74(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_23F2C8B74;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_23F2C8B74;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28518D308;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "NSt3__110shared_ptrINS_6vectorIN4cv3d3esn4math6VectorIiLj2EEENS_9allocatorIS6_EEEEEE")
      {
        if (((v5 & "NSt3__110shared_ptrINS_6vectorIN4cv3d3esn4math6VectorIiLj2EEENS_9allocatorIS6_EEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "NSt3__110shared_ptrINS_6vectorIN4cv3d3esn4math6VectorIiLj2EEENS_9allocatorIS6_EEEEEE"))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrINS_6vectorIN4cv3d3esn4math6VectorIiLj2EEENS_9allocatorIS6_EEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_23F347FB0)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void sub_23F2C8FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2C9034(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F2C906C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F2C90D0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteINS_6vectorIN4cv3d3esn4math6VectorIiLj3EEENS_9allocatorIS6_EEEEEE")
  {
    if (((v2 & "NSt3__114default_deleteINS_6vectorIN4cv3d3esn4math6VectorIiLj3EEENS_9allocatorIS6_EEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteINS_6vectorIN4cv3d3esn4math6VectorIiLj3EEENS_9allocatorIS6_EEEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteINS_6vectorIN4cv3d3esn4math6VectorIiLj3EEENS_9allocatorIS6_EEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_23F2C9130(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_23F2C9130;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_23F2C9130;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28518D368;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "NSt3__110shared_ptrINS_6vectorIN4cv3d3esn4math6VectorIiLj3EEENS_9allocatorIS6_EEEEEE")
      {
        if (((v5 & "NSt3__110shared_ptrINS_6vectorIN4cv3d3esn4math6VectorIiLj3EEENS_9allocatorIS6_EEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "NSt3__110shared_ptrINS_6vectorIN4cv3d3esn4math6VectorIiLj3EEENS_9allocatorIS6_EEEEEE"))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrINS_6vectorIN4cv3d3esn4math6VectorIiLj3EEENS_9allocatorIS6_EEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_23F3480E8)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void *sub_23F2C92D4(int a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        return sub_23F2C996C(v4);
      }

      else
      {
        return sub_23F2C9A70(v4);
      }
    }

    else
    {
      switch(a1)
      {
        case 8:
          return sub_23F2C9B74(v4);
        case 11:
          return sub_23F2C9C78(v4);
        case 12:
          return sub_23F2C9D7C(v4);
        default:
          goto LABEL_23;
      }
    }
  }

  else if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_23;
      }

      return sub_23F2C955C(v4);
    }

    else
    {
      return sub_23F2C9458(v4);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return sub_23F2C9660(v4);
      case 3:
        return sub_23F2C9764(v4);
      case 5:
        return sub_23F2C9868(v4);
      default:
LABEL_23:

        sub_23F2F1304(a1);
    }
  }
}

void *sub_23F2C9458(uint64_t a1)
{
  v2 = *a1;
  sub_23F2C6BA0(*a1, 0);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = **(a1 + 8);
  if (*(v3 + 6) > 1uLL)
  {
    sub_23EF2F9B0(v5, "{", 1);
    sub_23F2BF1C0();
  }

  return sub_23EF2F9B0(v5, "{}", 2);
}

void *sub_23F2C955C(uint64_t a1)
{
  v2 = *a1;
  sub_23F2C6BA0(*a1, 1);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = **(a1 + 8);
  if (*(v3 + 6) > 3uLL)
  {
    sub_23EF2F9B0(v5, "{", 1);
    sub_23F2BF684();
  }

  return sub_23EF2F9B0(v5, "{}", 2);
}

void *sub_23F2C9660(uint64_t a1)
{
  v2 = *a1;
  sub_23F2C6BA0(*a1, 2);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = **(a1 + 8);
  if (*(v3 + 6) > 7uLL)
  {
    sub_23EF2F9B0(v5, "{", 1);
    sub_23F2BFB48();
  }

  return sub_23EF2F9B0(v5, "{}", 2);
}

void *sub_23F2C9764(uint64_t a1)
{
  v2 = *a1;
  sub_23F2C6BA0(*a1, 3);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = **(a1 + 8);
  if (*(v3 + 6) > 0xFuLL)
  {
    sub_23EF2F9B0(v5, "{", 1);
    sub_23F2BFE4C();
  }

  return sub_23EF2F9B0(v5, "{}", 2);
}

void *sub_23F2C9868(uint64_t a1)
{
  v2 = *a1;
  sub_23F2C6BA0(*a1, 5);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = **(a1 + 8);
  if (*(v3 + 6) > 1uLL)
  {
    sub_23EF2F9B0(v5, "{", 1);
    sub_23F2C0310();
  }

  return sub_23EF2F9B0(v5, "{}", 2);
}

void *sub_23F2C996C(uint64_t a1)
{
  v2 = *a1;
  sub_23F2C6BA0(*a1, 6);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = **(a1 + 8);
  if (*(v3 + 6) > 3uLL)
  {
    sub_23EF2F9B0(v5, "{", 1);
    sub_23F2C07D4();
  }

  return sub_23EF2F9B0(v5, "{}", 2);
}

void *sub_23F2C9A70(uint64_t a1)
{
  v2 = *a1;
  sub_23F2C6BA0(*a1, 7);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = **(a1 + 8);
  if (*(v3 + 6) > 7uLL)
  {
    sub_23EF2F9B0(v5, "{", 1);
    sub_23F2C0C98();
  }

  return sub_23EF2F9B0(v5, "{}", 2);
}

void *sub_23F2C9B74(uint64_t a1)
{
  v2 = *a1;
  sub_23F2C6BA0(*a1, 8);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = **(a1 + 8);
  if (*(v3 + 6) > 0xFuLL)
  {
    sub_23EF2F9B0(v5, "{", 1);
    sub_23F2C115C();
  }

  return sub_23EF2F9B0(v5, "{}", 2);
}

void *sub_23F2C9C78(uint64_t a1)
{
  v2 = *a1;
  sub_23F2C6BA0(*a1, 11);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = **(a1 + 8);
  if (*(v3 + 6) > 7uLL)
  {
    sub_23EF2F9B0(v5, "{", 1);
    sub_23F29F608();
  }

  return sub_23EF2F9B0(v5, "{}", 2);
}

void *sub_23F2C9D7C(uint64_t a1)
{
  v2 = *a1;
  sub_23F2C6BA0(*a1, 12);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = **(a1 + 8);
  if (*(v3 + 6) > 0xFuLL)
  {
    sub_23EF2F9B0(v5, "{", 1);
    sub_23F2A00DC();
  }

  return sub_23EF2F9B0(v5, "{}", 2);
}

void *sub_23F2C9E80(int a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        return sub_23F2CA598(v4);
      }

      else
      {
        return sub_23F2CA6BC(v4);
      }
    }

    else
    {
      switch(a1)
      {
        case 8:
          return sub_23F2CA7E0(v4);
        case 11:
          return sub_23F2CA904(v4);
        case 12:
          return sub_23F2CAA28(v4);
        default:
          goto LABEL_23;
      }
    }
  }

  else if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_23;
      }

      return sub_23F2CA118(v4);
    }

    else
    {
      return sub_23F2CA004(v4);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return sub_23F2CA23C(v4);
      case 3:
        return sub_23F2CA360(v4);
      case 5:
        return sub_23F2CA484(v4);
      default:
LABEL_23:

        sub_23F2F1304(a1);
    }
  }
}

void *sub_23F2CA004(uint64_t a1)
{
  v2 = *a1;
  sub_23F2C6BA0(*a1, 0);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = **(a1 + 8);
  if (*(v3 + 6) > 2uLL)
  {
    sub_23EF2F9B0(v5, "{", 1);
    sub_23F2C23B4();
  }

  return sub_23EF2F9B0(v5, "{}", 2);
}

void *sub_23F2CA118(uint64_t a1)
{
  v2 = *a1;
  sub_23F2C6BA0(*a1, 1);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = **(a1 + 8);
  if (*(v3 + 6) > 5uLL)
  {
    sub_23EF2F9B0(v5, "{", 1);
    sub_23F2C28FC();
  }

  return sub_23EF2F9B0(v5, "{}", 2);
}

void *sub_23F2CA23C(uint64_t a1)
{
  v2 = *a1;
  sub_23F2C6BA0(*a1, 2);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = **(a1 + 8);
  if (*(v3 + 6) > 0xBuLL)
  {
    sub_23EF2F9B0(v5, "{", 1);
    sub_23F2C2E44();
  }

  return sub_23EF2F9B0(v5, "{}", 2);
}

void *sub_23F2CA360(uint64_t a1)
{
  v2 = *a1;
  sub_23F2C6BA0(*a1, 3);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = **(a1 + 8);
  if (*(v3 + 6) > 0x17uLL)
  {
    sub_23EF2F9B0(v5, "{", 1);
    sub_23F2C3148();
  }

  return sub_23EF2F9B0(v5, "{}", 2);
}

void *sub_23F2CA484(uint64_t a1)
{
  v2 = *a1;
  sub_23F2C6BA0(*a1, 5);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = **(a1 + 8);
  if (*(v3 + 6) > 2uLL)
  {
    sub_23EF2F9B0(v5, "{", 1);
    sub_23F2C3690();
  }

  return sub_23EF2F9B0(v5, "{}", 2);
}

void *sub_23F2CA598(uint64_t a1)
{
  v2 = *a1;
  sub_23F2C6BA0(*a1, 6);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = **(a1 + 8);
  if (*(v3 + 6) > 5uLL)
  {
    sub_23EF2F9B0(v5, "{", 1);
    sub_23F2C3BD8();
  }

  return sub_23EF2F9B0(v5, "{}", 2);
}

void *sub_23F2CA6BC(uint64_t a1)
{
  v2 = *a1;
  sub_23F2C6BA0(*a1, 7);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = **(a1 + 8);
  if (*(v3 + 6) > 0xBuLL)
  {
    sub_23EF2F9B0(v5, "{", 1);
    sub_23F2C4120();
  }

  return sub_23EF2F9B0(v5, "{}", 2);
}

void *sub_23F2CA7E0(uint64_t a1)
{
  v2 = *a1;
  sub_23F2C6BA0(*a1, 8);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = **(a1 + 8);
  if (*(v3 + 6) > 0x17uLL)
  {
    sub_23EF2F9B0(v5, "{", 1);
    sub_23F2C4668();
  }

  return sub_23EF2F9B0(v5, "{}", 2);
}

void *sub_23F2CA904(uint64_t a1)
{
  v2 = *a1;
  sub_23F2C6BA0(*a1, 11);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = **(a1 + 8);
  if (*(v3 + 6) > 0xBuLL)
  {
    sub_23EF2F9B0(v5, "{", 1);
    sub_23F2C4BB0();
  }

  return sub_23EF2F9B0(v5, "{}", 2);
}

void *sub_23F2CAA28(uint64_t a1)
{
  v2 = *a1;
  sub_23F2C6BA0(*a1, 12);
  v3 = *v2;
  v4 = *(*v2 + 5);
  v5 = **(a1 + 8);
  if (*(v3 + 6) > 0x17uLL)
  {
    sub_23EF2F9B0(v5, "{", 1);
    sub_23F2C4EB4();
  }

  return sub_23EF2F9B0(v5, "{}", 2);
}

void sub_23F2CAB4C(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  if (v2 && (atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    if (v3)
    {
      goto LABEL_14;
    }
  }

  else if (v3)
  {
    goto LABEL_14;
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Foundation/src/BundleRef.cpp", 49, "IsValid()", 9uLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1 || (v4 = qword_27E396178, v5 = unk_27E396180, qword_27E396178 == unk_27E396180))
    {
LABEL_13:
      qword_27E396190(*algn_27E396198, "IsValid()", 9, &unk_23F3091D6, 0);
LABEL_14:
      v8 = CFBundleCopyExecutableURL(*a1);
      sub_23F083784(&v9, v8);
    }
  }

  else
  {
    v4 = qword_27E396178;
    v5 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_15;
    }
  }

  do
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    v4 += 16;
    v7(v6, "IsValid()", 9, &unk_23F3091D6, 0);
  }

  while (v4 != v5);
  if (byte_27E3961A0)
  {
    goto LABEL_13;
  }

LABEL_15:
  abort();
}

void sub_23F2CAD48(void *a1@<X8>)
{
  sub_23F2D59FC(__p);
  if (v4)
  {
    sub_23F2D51F8(&bundleURL, __p);
  }

  *a1 = 0;
  a1[1] = 0;
}

void sub_23F2CAE84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2CB0C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_23EF3AE8C(v15);
  _Unwind_Resume(a1);
}

void sub_23F2CB140(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2CB178(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_23F2CB19C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIP10__CFBundleEC1ES4_EUlS4_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIP10__CFBundleEC1ES4_EUlS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIP10__CFBundleEC1ES4_EUlS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIP10__CFBundleEC1ES4_EUlS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

CFIndex sub_23F2CB1FC@<X0>(CFIndex result@<X0>, std::string *a2@<X8>)
{
  if (!result)
  {
    goto LABEL_9;
  }

  v3 = result;
  TypeID = CFStringGetTypeID();
  result = CFGetTypeID(v3);
  if (result != TypeID)
  {
    goto LABEL_9;
  }

  result = CFStringGetLength(v3);
  if (result)
  {
    v5 = result;
    usedBufLen = 0;
    v10.location = 0;
    v10.length = result;
    result = CFStringGetBytes(v3, v10, 0x8000100u, 0, 0, 0, 0, &usedBufLen);
    if (result > 0)
    {
      memset(&v8, 0, sizeof(v8));
      if (usedBufLen)
      {
        std::string::append(&v8, usedBufLen, 0);
        v6 = usedBufLen;
        if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v7 = &v8;
        }

        else
        {
          v7 = v8.__r_.__value_.__r.__words[0];
        }
      }

      else
      {
        v6 = 0;
        v7 = &v8;
      }

      v11.location = 0;
      v11.length = v5;
      result = CFStringGetBytes(v3, v11, 0x8000100u, 0, 0, v7, v6, 0);
      *a2 = v8;
      goto LABEL_13;
    }

LABEL_9:
    a2->__r_.__value_.__s.__data_[0] = 0;
    a2[1].__r_.__value_.__s.__data_[0] = 0;
    return result;
  }

  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
LABEL_13:
  a2[1].__r_.__value_.__s.__data_[0] = 1;
  return result;
}

void sub_23F2CB33C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2CB55C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_23EF3AE8C(v15);
  _Unwind_Resume(a1);
}

void sub_23F2CB5DC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2CB614(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_23F2CB638(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIPK8__CFDataEC1ES5_EUlS5_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIPK8__CFDataEC1ES5_EUlS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIPK8__CFDataEC1ES5_EUlS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIPK8__CFDataEC1ES5_EUlS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_23F2CB89C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_23EF3AE8C(v15);
  _Unwind_Resume(a1);
}

void sub_23F2CB91C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2CB954(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_23F2CB978(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIPK11__CFBooleanEC1ES5_EUlS5_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIPK11__CFBooleanEC1ES5_EUlS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIPK11__CFBooleanEC1ES5_EUlS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIPK11__CFBooleanEC1ES5_EUlS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_23F2CBBDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_23EF3AE8C(v15);
  _Unwind_Resume(a1);
}

void sub_23F2CBC5C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F2CBC94(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_23F2CBCB8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIP9__CFArrayEC1ES4_EUlS4_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIP9__CFArrayEC1ES4_EUlS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIP9__CFArrayEC1ES4_EUlS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIP9__CFArrayEC1ES4_EUlS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_23F2CBD18(uint64_t a1, uint64_t a2)
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

  sub_23F2CB358(&v4, v3);
}

uint64_t sub_23F2CBE44(CFDataRef *a1)
{
  Length = CFDataGetLength(*a1);
  if (Length < 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_28518DEE8;
    __cxa_throw(exception, &unk_28518DF00, std::exception::~exception);
  }

  return Length & 0x7FFFFFFF;
}

void sub_23F2CBEA8(const UInt8 *a1, CFIndex a2)
{
  Default = CFAllocatorGetDefault();
  v5 = CFDataCreateWithBytesNoCopy(Default, a1, a2, *MEMORY[0x277CBED00]);
  sub_23F2CB358(&v6, v5);
}

void sub_23F2CBFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_23EF3AE8C(&a11);
  sub_23EF3AE8C(&a9);
  _Unwind_Resume(a1);
}

void sub_23F2CBFEC(int a1, CFTypeRef cf, int a3)
{
  if (cf)
  {
    if (a3)
    {
      v3 = cf;
      CFRetain(cf);
      cf = v3;
    }
  }

  sub_23EF44AC4(&v4, cf);
}

void sub_23F2CC144(unint64_t a1@<X1>, unint64_t a2@<X3>, const __CFAllocator *a3@<X4>, const CFDictionaryKeyCallBacks *a4@<X5>, const CFDictionaryValueCallBacks *a5@<X6>, int a6@<W8>)
{
  if (a1 == a2)
  {
LABEL_10:
    if (a1)
    {
      if (!(a1 >> 61))
      {
        operator new();
      }

      sub_23EF3AE74();
    }

    if (!a2)
    {
      v13 = CFDictionaryCreate(a3, 0, 0, 0, a4, a5);
      sub_23F2CBFEC(a6, v13, 0);
    }

    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_23EF3AE74();
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Foundation/src/DictionaryRef.cpp", 94, "keys.size() == values.size()", 0x1CuLL, "Number of keys must match number of values", 0x2AuLL, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1 || (v9 = qword_27E396178, v10 = unk_27E396180, qword_27E396178 == unk_27E396180))
    {
LABEL_9:
      qword_27E396190(*algn_27E396198, "keys.size() == values.size()", 28, "Number of keys must match number of values", 42);
      goto LABEL_10;
    }
  }

  else
  {
    v9 = qword_27E396178;
    v10 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_19;
    }
  }

  do
  {
    v12 = *v9;
    v11 = *(v9 + 8);
    v9 += 16;
    v12(v11, "keys.size() == values.size()", 28, "Number of keys must match number of values", 42);
  }

  while (v9 != v10);
  if (byte_27E3961A0)
  {
    goto LABEL_9;
  }

LABEL_19:
  abort();
}

void sub_23F2CC534(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void ***sub_23F2CC580(void ***a1)
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
        while (1)
        {
          v6 = *(v3 - 1);
          if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v6->__on_zero_shared)(v6);
            std::__shared_weak_count::__release_weak(v6);
          }

          v5 = v3 - 5;
          if (*(v3 - 17) < 0)
          {
            break;
          }

          v3 -= 5;
          if (v5 == v2)
          {
            goto LABEL_10;
          }
        }

        operator delete(*v5);
        v3 -= 5;
      }

      while (v5 != v2);
LABEL_10:
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_23F2CC654(uint64_t a1, void **a2, char a3, void **a4, char a5)
{
  v11 = *a1;
  v10 = *(a1 + 8);
  if (v10 && (atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (!v11)
    {
      return;
    }
  }

  else if (!v11)
  {
    return;
  }

  v41 = 0;
  v42 = 0;
  v43 = 0;
  __p = 0;
  v39 = 0;
  v40 = 0;
  v13 = *a1;
  v12 = *(a1 + 8);
  if (v12 && (atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
    if (v13)
    {
      goto LABEL_7;
    }
  }

  else if (v13)
  {
LABEL_7:
    Count = *a1;
    v14 = *(a1 + 8);
    if (v14 && (atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
      if (!Count)
      {
        goto LABEL_11;
      }
    }

    else if (!Count)
    {
LABEL_11:
      if (a3)
      {
        v16 = v41;
        v17 = (v42 - v41) >> 3;
        if (Count <= v17)
        {
          if (Count < v17)
          {
            v42 = (v41 + 8 * Count);
          }
        }

        else
        {
          sub_23F2D14D4(&v41, Count - v17);
          v16 = v41;
        }
      }

      else
      {
        v16 = 0;
      }

      if (a5)
      {
        v18 = __p;
        v19 = (v39 - __p) >> 3;
        if (Count <= v19)
        {
          if (Count < v19)
          {
            v39 = (__p + 8 * Count);
          }
        }

        else
        {
          sub_23F2D14D4(&__p, Count - v19);
          v18 = __p;
        }
      }

      else
      {
        v18 = 0;
      }

      CFDictionaryGetKeysAndValues(*a1, v16, v18);
      goto LABEL_22;
    }

    Count = CFDictionaryGetCount(*a1);
    goto LABEL_11;
  }

LABEL_22:
  if (a3)
  {
    v21 = v41;
    v20 = v42;
    v45 = 0;
    v44 = 0uLL;
    sub_23F06C5A0(&v44, (v42 - v41) >> 3);
    if (v21 != v20)
    {
      sub_23EFEB0A4(&v46, *v21);
    }

    v22 = v44;
    v23 = v45;
    v24 = *a2;
    if (*a2)
    {
      v36 = v44;
      v25 = a2[1];
      v26 = *a2;
      if (v25 != v24)
      {
        do
        {
          v27 = *(v25 - 1);
          if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v27->__on_zero_shared)(v27, v22);
            std::__shared_weak_count::__release_weak(v27);
          }

          v25 -= 16;
        }

        while (v25 != v24);
        v26 = *a2;
      }

      a2[1] = v24;
      operator delete(v26);
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      v22 = v36;
    }

    *a2 = v22;
    a2[2] = v23;
  }

  v28 = __p;
  if (a5)
  {
    v29 = v39;
    v45 = 0;
    v44 = 0uLL;
    sub_23F06C5A0(&v44, (v39 - __p) >> 3);
    if (v28 != v29)
    {
      sub_23EFEB0A4(&v46, *v28);
    }

    v30 = v44;
    v31 = v45;
    v32 = *a4;
    if (*a4)
    {
      v37 = v44;
      v33 = a4[1];
      v34 = *a4;
      if (v33 != v32)
      {
        do
        {
          v35 = *(v33 - 1);
          if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v35->__on_zero_shared)(v35, v30);
            std::__shared_weak_count::__release_weak(v35);
          }

          v33 -= 16;
        }

        while (v33 != v32);
        v34 = *a4;
      }

      a4[1] = v32;
      operator delete(v34);
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v30 = v37;
    }

    *a4 = v30;
    a4[2] = v31;
    v28 = __p;
  }

  if (v28)
  {
    operator delete(v28);
  }

  if (v41)
  {
    operator delete(v41);
  }
}

void sub_23F2CCB28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17)
{
  sub_23EFF0CC0(&a17);
  if (__p)
  {
    operator delete(__p);
    v18 = a14;
    if (!a14)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v18 = a14;
    if (!a14)
    {
      goto LABEL_3;
    }
  }

  operator delete(v18);
  _Unwind_Resume(a1);
}

void sub_23F2CCB8C(uint64_t a1)
{
  v2 = **(a1 + 24) + 24 * *(a1 + 8);
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v4 = *(v2 + 23);
    if (*(v3 + 23) < 0)
    {
      if (v4 >= 0)
      {
        v6 = v2;
      }

      else
      {
        v6 = *v2;
      }

      if (v4 >= 0)
      {
        v7 = *(v2 + 23);
      }

      else
      {
        v7 = *(v2 + 8);
      }

      sub_23EF36678(v3, v6, v7);
    }

    else if ((*(v2 + 23) & 0x80) != 0)
    {
      sub_23EF365A8(v3, *v2, *(v2 + 8));
    }

    else
    {
      v5 = *v2;
      *(v3 + 16) = *(v2 + 16);
      *v3 = v5;
    }
  }

  v8 = *(a1 + 40);
  sub_23EFF1164(&v9, *(*(a1 + 24) + 24) + 16 * *(a1 + 8));
}

uint64_t sub_23F2CCCF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[0] = a2;
  v14[1] = a3;
  __p = 0;
  v12 = 0;
  v13 = 0;
  sub_23F2CC654(a1, 0, 0, &__p, 1);
  v3 = __p;
  v4 = v12;
  if (__p == v12)
  {
    v5 = 1;
    v6 = __p;
    if (!__p)
    {
      return v5;
    }
  }

  else
  {
    v5 = 1;
    while (1)
    {
      v15 = v14;
      if ((sub_23F2D1628(&v15, v3, v14) & 1) == 0)
      {
        break;
      }

      v3 += 16;
      if (v3 == v4)
      {
        v6 = __p;
        if (__p)
        {
          goto LABEL_10;
        }

        return v5;
      }
    }

    v5 = 0;
    v6 = __p;
    if (!__p)
    {
      return v5;
    }
  }

LABEL_10:
  v7 = v12;
  v8 = v6;
  if (v12 != v6)
  {
    do
    {
      v9 = *(v7 - 1);
      if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }

      v7 -= 16;
    }

    while (v7 != v6);
    v8 = __p;
  }

  v12 = v6;
  operator delete(v8);
  return v5;
}

void sub_23F2CCE60(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = a1;
  if (a1)
  {
    v4 = *a1;
    v5 = *(a1 + 8);
    if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      if (v4)
      {
LABEL_5:
        if (CFDictionaryGetCount(*a1))
        {
          operator new();
        }
      }
    }

    else if (v4)
    {
      goto LABEL_5;
    }

    *&v10 = 0;
  }

  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      if (v6)
      {
        goto LABEL_12;
      }

LABEL_15:
      Count = 0;
      goto LABEL_13;
    }
  }

  if (!v6)
  {
    goto LABEL_15;
  }

LABEL_12:
  Count = CFDictionaryGetCount(*a1);
LABEL_13:
  *a2 = v10;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0;
  *(a2 + 64) = Count;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  v9 = *MEMORY[0x277D85DE8];
}

void sub_23F2CDD28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_23F2CC580((v12 - 144));
  sub_23F067058(va);
  _Unwind_Resume(a1);
}

void sub_23F2CDE6C(int a1, CFTypeRef cf, int a3)
{
  if (cf)
  {
    if (a3)
    {
      v3 = cf;
      CFRetain(cf);
      cf = v3;
    }
  }

  sub_23F1FE738(&v4, cf);
}

uint64_t sub_23F2CDFC4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      do
      {
        while (1)
        {
          v7 = *(v4 - 1);
          if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          v6 = v4 - 5;
          if (*(v4 - 17) < 0)
          {
            break;
          }

          v4 -= 5;
          if (v6 == v5)
          {
            return a1;
          }
        }

        operator delete(*v6);
        v4 -= 5;
      }

      while (v6 != v5);
    }
  }

  return a1;
}

void ****sub_23F2CE090(void ****a1)
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
          while (1)
          {
            v7 = *(v4 - 1);
            if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v7->__on_zero_shared)(v7);
              std::__shared_weak_count::__release_weak(v7);
            }

            v6 = v4 - 5;
            if (*(v4 - 17) < 0)
            {
              break;
            }

            v4 -= 5;
            if (v6 == v3)
            {
              goto LABEL_11;
            }
          }

          operator delete(*v6);
          v4 -= 5;
        }

        while (v6 != v3);
LABEL_11:
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void sub_23F2CE174(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v369 = *MEMORY[0x277D85DE8];
LABEL_2:
  v354 = (a2 - 40);
  m = a1;
  while (1)
  {
    a1 = m;
    v7 = a2 - m;
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - m) >> 3);
    if (v8 > 2)
    {
      switch(v8)
      {
        case 3:
          v150 = *MEMORY[0x277D85DE8];

          sub_23F2D009C(a1, (a1 + 40), v354);
          return;
        case 4:
          v151 = *MEMORY[0x277D85DE8];

          sub_23F2D0668(a1, (a1 + 40), (a1 + 80), v354);
          return;
        case 5:
          v140 = *MEMORY[0x277D85DE8];

          sub_23F2D0A6C(a1, a1 + 40, a1 + 80, (a1 + 120), v354);
          return;
      }

      goto LABEL_10;
    }

    if (v8 < 2)
    {
      goto LABEL_709;
    }

    if (v8 == 2)
    {
      break;
    }

LABEL_10:
    if (v7 <= 959)
    {
      if ((a4 & 1) == 0)
      {
        if (a1 == a2)
        {
          goto LABEL_709;
        }

        v308 = a1 + 40;
        if (a1 + 40 == a2)
        {
          goto LABEL_709;
        }

        v309 = (a1 + 72);
        while (1)
        {
          v310 = a1;
          a1 = v308;
          v311 = *(v310 + 63);
          v312 = v311 >= 0 ? v308 : *(v310 + 40);
          v313 = v311 >= 0 ? *(v310 + 63) : *(v310 + 48);
          v314 = *(v310 + 23);
          v315 = v314 >= 0 ? v310 : *v310;
          v316 = v314 >= 0 ? *(v310 + 23) : *(v310 + 8);
          v317 = v316 >= v313 ? v313 : v316;
          v318 = memcmp(v312, v315, v317);
          if (!v318)
          {
            break;
          }

          v319 = a2;
          if (v318 < 0)
          {
            goto LABEL_665;
          }

LABEL_643:
          v308 = a1 + 40;
          v309 += 5;
          if (a1 + 40 == v319)
          {
            goto LABEL_709;
          }
        }

        v320 = v313 >= v316;
        v319 = a2;
        if (v313 == v316)
        {
          v320 = *(v310 + 64) >= *(v310 + 24);
        }

        if (v320)
        {
          goto LABEL_643;
        }

LABEL_665:
        v321 = *a1;
        v365 = *(a1 + 16);
        *__p = v321;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = 0;
        v366 = *(v310 + 64);
        *(v310 + 64) = 0;
        *(v310 + 72) = 0;
        for (i = v309; ; i -= 5)
        {
          v323 = (i - 4);
          if (*(i - 9) < 0)
          {
            operator delete(*v323);
          }

          v324 = (i - 9);
          *v323 = *(i - 9);
          *(i - 2) = *(i - 7);
          *(i - 49) = 0;
          *(i - 72) = 0;
          v325 = *(i - 3);
          *(i - 6) = 0;
          *(i - 5) = 0;
          v326 = *i;
          *(i - 1) = v325;
          if (v326 && !atomic_fetch_add(&v326->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v326->__on_zero_shared)(v326);
            std::__shared_weak_count::__release_weak(v326);
          }

          if (SHIBYTE(v365) >= 0)
          {
            v327 = __p;
          }

          else
          {
            v327 = __p[0];
          }

          if (SHIBYTE(v365) >= 0)
          {
            v328 = HIBYTE(v365);
          }

          else
          {
            v328 = __p[1];
          }

          v329 = *(i - 89);
          if (v329 >= 0)
          {
            v330 = i - 14;
          }

          else
          {
            v330 = *(i - 14);
          }

          if (v329 >= 0)
          {
            v331 = *(i - 89);
          }

          else
          {
            v331 = *(i - 13);
          }

          if (v331 >= v328)
          {
            v332 = v328;
          }

          else
          {
            v332 = v331;
          }

          v333 = memcmp(v327, v330, v332);
          if (v333)
          {
            if ((v333 & 0x80000000) == 0)
            {
              goto LABEL_693;
            }
          }

          else
          {
            v334 = v328 >= v331;
            if (v328 == v331)
            {
              v334 = v366 >= *(i - 11);
            }

            if (v334)
            {
LABEL_693:
              if (*(i - 49) < 0)
              {
                operator delete(*v324);
              }

              v335 = *__p;
              *(i - 7) = v365;
              *v324 = v335;
              HIBYTE(v365) = 0;
              LOBYTE(__p[0]) = 0;
              v336 = v366;
              v366 = 0uLL;
              v337 = *(i - 5);
              *(i - 3) = v336;
              if (v337 && !atomic_fetch_add(&v337->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v337->__on_zero_shared)(v337);
                std::__shared_weak_count::__release_weak(v337);
              }

              v338 = *(&v366 + 1);
              if (*(&v366 + 1) && !atomic_fetch_add((*(&v366 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
              {
                (v338->__on_zero_shared)(v338);
                std::__shared_weak_count::__release_weak(v338);
              }

              if (SHIBYTE(v365) < 0)
              {
                operator delete(__p[0]);
              }

              goto LABEL_643;
            }
          }
        }
      }

      if (a1 == a2)
      {
        goto LABEL_709;
      }

      v152 = (a1 + 40);
      if (a1 + 40 == a2)
      {
        goto LABEL_709;
      }

      v153 = 0;
      v154 = a1;
LABEL_349:
      v155 = v154;
      v154 = v152;
      v156 = *(v155 + 63);
      if (v156 >= 0)
      {
        v157 = v152;
      }

      else
      {
        v157 = v155[5];
      }

      if (v156 >= 0)
      {
        v158 = *(v155 + 63);
      }

      else
      {
        v158 = v155[6];
      }

      v159 = *(v155 + 23);
      if (v159 >= 0)
      {
        v160 = v155;
      }

      else
      {
        v160 = *v155;
      }

      if (v159 >= 0)
      {
        v161 = *(v155 + 23);
      }

      else
      {
        v161 = v155[1];
      }

      if (v161 >= v158)
      {
        v162 = v158;
      }

      else
      {
        v162 = v161;
      }

      v163 = memcmp(v157, v160, v162);
      if (v163)
      {
        v164 = a2;
        if ((v163 & 0x80000000) == 0)
        {
          goto LABEL_348;
        }
      }

      else
      {
        v165 = v158 >= v161;
        v164 = a2;
        if (v158 == v161)
        {
          v165 = v155[8] >= v155[3];
        }

        if (v165)
        {
          goto LABEL_348;
        }
      }

      v166 = *v154;
      v365 = *(v154 + 16);
      *__p = v166;
      *(v154 + 8) = 0;
      *(v154 + 16) = 0;
      *v154 = 0;
      v366 = *(v155 + 4);
      v155[8] = 0;
      v155[9] = 0;
      for (j = v153; ; j -= 40)
      {
        v168 = a1 + j;
        if (*(a1 + j + 63) < 0)
        {
          operator delete(*(v168 + 40));
        }

        *(v168 + 40) = *v168;
        *(v168 + 56) = *(v168 + 16);
        *(v168 + 23) = 0;
        *v168 = 0;
        v169 = *(v168 + 24);
        *(v168 + 24) = 0;
        *(v168 + 32) = 0;
        v170 = *(v168 + 72);
        *(v168 + 64) = v169;
        if (v170 && !atomic_fetch_add(&v170->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v170->__on_zero_shared)(v170);
          std::__shared_weak_count::__release_weak(v170);
        }

        if (!j)
        {
          v183 = a1;
          if (*(a1 + 23) < 0)
          {
            goto LABEL_400;
          }

          goto LABEL_401;
        }

        v171 = a1 + j;
        if (SHIBYTE(v365) >= 0)
        {
          v172 = __p;
        }

        else
        {
          v172 = __p[0];
        }

        if (SHIBYTE(v365) >= 0)
        {
          v173 = HIBYTE(v365);
        }

        else
        {
          v173 = __p[1];
        }

        v176 = *(v171 - 40);
        v174 = v171 - 40;
        v175 = v176;
        v177 = *(v174 + 23);
        if (v177 >= 0)
        {
          v178 = v174;
        }

        else
        {
          v178 = v175;
        }

        if (v177 >= 0)
        {
          v179 = *(v174 + 23);
        }

        else
        {
          v179 = *(v174 + 8);
        }

        if (v179 >= v173)
        {
          v180 = v173;
        }

        else
        {
          v180 = v179;
        }

        v181 = memcmp(v172, v178, v180);
        if (v181)
        {
          if ((v181 & 0x80000000) == 0)
          {
            goto LABEL_407;
          }
        }

        else
        {
          v182 = v173 >= v179;
          if (v173 == v179)
          {
            v182 = v366 >= *(a1 + j - 16);
          }

          if (v182)
          {
LABEL_407:
            v183 = a1 + j;
            if (*(a1 + j + 23) < 0)
            {
LABEL_400:
              operator delete(*v183);
            }

LABEL_401:
            v184 = *__p;
            *(v183 + 16) = v365;
            *v183 = v184;
            HIBYTE(v365) = 0;
            LOBYTE(__p[0]) = 0;
            v185 = v366;
            v366 = 0uLL;
            *(a1 + j + 24) = v185;
            v186 = *(v183 + 32);
            *(v183 + 32) = *(&v185 + 1);
            if (v186 && !atomic_fetch_add(&v186->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v186->__on_zero_shared)(v186);
              std::__shared_weak_count::__release_weak(v186);
            }

            v187 = *(&v366 + 1);
            if (*(&v366 + 1) && !atomic_fetch_add((*(&v366 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
            {
              (v187->__on_zero_shared)(v187);
              std::__shared_weak_count::__release_weak(v187);
            }

            if (SHIBYTE(v365) < 0)
            {
              operator delete(__p[0]);
            }

LABEL_348:
            v152 = (v154 + 40);
            v153 += 40;
            if (v154 + 40 == v164)
            {
              goto LABEL_709;
            }

            goto LABEL_349;
          }
        }
      }
    }

    if (!a3)
    {
      if (a1 == a2)
      {
        goto LABEL_709;
      }

      v188 = (v8 - 2) >> 1;
      v189 = v188;
      while (1)
      {
        v190 = v189;
        if (v188 < v189)
        {
          goto LABEL_414;
        }

        v355 = v189;
        v191 = (2 * v189) | 1;
        v192 = a1 + 40 * v191;
        v193 = 2 * v189 + 2;
        if (v193 >= v8)
        {
          goto LABEL_435;
        }

        v194 = *(v192 + 40);
        v195 = *(v192 + 23);
        v196 = v195 >= 0 ? (a1 + 40 * v191) : *v192;
        v197 = v195 >= 0 ? *(v192 + 23) : *(v192 + 8);
        v198 = *(v192 + 63);
        v199 = v198 >= 0 ? (v192 + 40) : *(v192 + 40);
        v200 = v198 >= 0 ? *(v192 + 63) : *(v192 + 48);
        v201 = v200 >= v197 ? v197 : v200;
        v202 = memcmp(v196, v199, v201);
        if (!v202)
        {
          break;
        }

        v188 = (v8 - 2) >> 1;
        if (v202 < 0)
        {
          goto LABEL_434;
        }

LABEL_435:
        v203 = a1 + 40 * v355;
        v204 = *(v192 + 23);
        if (v204 >= 0)
        {
          v205 = v192;
        }

        else
        {
          v205 = *v192;
        }

        if (v204 >= 0)
        {
          v206 = *(v192 + 23);
        }

        else
        {
          v206 = *(v192 + 8);
        }

        v207 = *(v203 + 23);
        if (v207 >= 0)
        {
          v208 = (a1 + 40 * v355);
        }

        else
        {
          v208 = *v203;
        }

        if (v207 >= 0)
        {
          v209 = *(v203 + 23);
        }

        else
        {
          v209 = *(v203 + 8);
        }

        if (v209 >= v206)
        {
          v210 = v206;
        }

        else
        {
          v210 = v209;
        }

        v211 = memcmp(v205, v208, v210);
        if (v211)
        {
          v190 = v355;
          if (v211 < 0)
          {
            goto LABEL_414;
          }

LABEL_457:
          v213 = 0;
          v214 = *v203;
          v365 = *(v203 + 16);
          *__p = v214;
          *(v203 + 8) = 0;
          *(v203 + 16) = 0;
          *v203 = 0;
          v366 = *(v203 + 24);
          *(v203 + 24) = 0;
          *(v203 + 32) = 0;
          while (1)
          {
            if (v213 < 0)
            {
              operator delete(*v203);
            }

            v223 = *v192;
            *(v203 + 16) = *(v192 + 16);
            *v203 = v223;
            *(v192 + 23) = 0;
            *v192 = 0;
            v224 = *(v192 + 24);
            *(v192 + 24) = 0;
            *(v192 + 32) = 0;
            v225 = *(v203 + 32);
            *(v203 + 24) = v224;
            if (v225 && !atomic_fetch_add(&v225->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v225->__on_zero_shared)(v225);
              std::__shared_weak_count::__release_weak(v225);
            }

            if (v188 < v191)
            {
LABEL_511:
              if (*(v192 + 23) < 0)
              {
                operator delete(*v192);
              }

              v238 = *__p;
              *(v192 + 16) = v365;
              *v192 = v238;
              HIBYTE(v365) = 0;
              LOBYTE(__p[0]) = 0;
              v239 = v366;
              v366 = 0uLL;
              v240 = *(v192 + 32);
              *(v192 + 24) = v239;
              if (v240 && !atomic_fetch_add(&v240->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v240->__on_zero_shared)(v240);
                std::__shared_weak_count::__release_weak(v240);
              }

              v241 = *(&v366 + 1);
              if (*(&v366 + 1) && !atomic_fetch_add((*(&v366 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
              {
                (v241->__on_zero_shared)(v241);
                std::__shared_weak_count::__release_weak(v241);
              }

              if (SHIBYTE(v365) < 0)
              {
                operator delete(__p[0]);
              }

              v190 = v355;
              goto LABEL_414;
            }

            v226 = 2 * v191;
            v191 = (2 * v191) | 1;
            v215 = a1 + 40 * v191;
            v227 = v226 + 2;
            if (v226 + 2 < v8)
            {
              v228 = *(v215 + 40);
              v229 = *(v215 + 23);
              if (v229 >= 0)
              {
                v230 = (a1 + 40 * v191);
              }

              else
              {
                v230 = *v215;
              }

              if (v229 >= 0)
              {
                v231 = *(v215 + 23);
              }

              else
              {
                v231 = *(v215 + 8);
              }

              v232 = *(v215 + 63);
              if (v232 >= 0)
              {
                v233 = (v215 + 40);
              }

              else
              {
                v233 = *(v215 + 40);
              }

              if (v232 >= 0)
              {
                v234 = *(v215 + 63);
              }

              else
              {
                v234 = *(v215 + 48);
              }

              if (v234 >= v231)
              {
                v235 = v231;
              }

              else
              {
                v235 = v234;
              }

              v236 = memcmp(v230, v233, v235);
              if (v236)
              {
                v188 = (v8 - 2) >> 1;
                if (v236 < 0)
                {
                  goto LABEL_458;
                }
              }

              else
              {
                v237 = v231 >= v234;
                if (v231 == v234)
                {
                  v237 = *(v215 + 24) >= *(v215 + 64);
                }

                v188 = (v8 - 2) >> 1;
                if (!v237)
                {
LABEL_458:
                  v215 += 40;
                  v191 = v227;
                }
              }
            }

            v216 = *(v215 + 23);
            if (v216 >= 0)
            {
              v217 = v215;
            }

            else
            {
              v217 = *v215;
            }

            if (v216 >= 0)
            {
              v218 = *(v215 + 23);
            }

            else
            {
              v218 = *(v215 + 8);
            }

            if (SHIBYTE(v365) >= 0)
            {
              v219 = __p;
            }

            else
            {
              v219 = __p[0];
            }

            if (SHIBYTE(v365) >= 0)
            {
              v220 = HIBYTE(v365);
            }

            else
            {
              v220 = __p[1];
            }

            if (v220 >= v218)
            {
              v221 = v218;
            }

            else
            {
              v221 = v220;
            }

            v222 = memcmp(v217, v219, v221);
            if (v222)
            {
              if (v222 < 0)
              {
                goto LABEL_511;
              }
            }

            else if (v218 == v220)
            {
              if (*(v215 + 24) < v366)
              {
                goto LABEL_511;
              }
            }

            else if (v218 < v220)
            {
              goto LABEL_511;
            }

            v213 = *(v192 + 23);
            v203 = v192;
            v192 = v215;
          }
        }

        v212 = v206 >= v209;
        if (v206 == v209)
        {
          v212 = *(v192 + 24) >= *(v203 + 24);
        }

        v190 = v355;
        if (v212)
        {
          goto LABEL_457;
        }

LABEL_414:
        v189 = v190 - 1;
        if (!v190)
        {
          v243 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 3);
          while (1)
          {
            v245 = v243 - 2;
            if (v243 < 2)
            {
              goto LABEL_527;
            }

            v246 = 0;
            v247 = *a1;
            *&v367 = *(a1 + 8);
            *(&v367 + 7) = *(a1 + 15);
            v356 = *(a1 + 23);
            *a1 = 0;
            *(a1 + 8) = 0;
            v353 = *(a1 + 24);
            v349 = v247;
            v351 = *(a1 + 32);
            *(a1 + 24) = 0;
            *(a1 + 32) = 0;
            v248 = v245 >> 1;
            v249 = a1;
            *(a1 + 16) = 0;
            v362 = v245 >> 1;
            do
            {
              v250 = v249;
              v251 = v249 + 40 * v246;
              v249 = v251 + 40;
              v252 = 2 * v246;
              v246 = (2 * v246) | 1;
              v253 = v252 + 2;
              if (v252 + 2 >= v243)
              {
                goto LABEL_551;
              }

              v254 = a1;
              v255 = v243;
              v256 = *(v251 + 80);
              v257 = *(v251 + 63);
              if (v257 >= 0)
              {
                v258 = (v251 + 40);
              }

              else
              {
                v258 = *(v251 + 40);
              }

              if (v257 >= 0)
              {
                v259 = *(v251 + 63);
              }

              else
              {
                v259 = *(v251 + 48);
              }

              v260 = *(v251 + 103);
              if (v260 >= 0)
              {
                v261 = (v251 + 80);
              }

              else
              {
                v261 = *(v251 + 80);
              }

              if (v260 >= 0)
              {
                v262 = *(v251 + 103);
              }

              else
              {
                v262 = *(v251 + 88);
              }

              if (v262 >= v259)
              {
                v263 = v259;
              }

              else
              {
                v263 = v262;
              }

              v264 = memcmp(v258, v261, v263);
              if (v264)
              {
                v243 = v255;
                a1 = v254;
                v248 = v362;
                if ((v264 & 0x80000000) == 0)
                {
                  goto LABEL_551;
                }

LABEL_550:
                v249 = v251 + 80;
                v246 = v253;
                goto LABEL_551;
              }

              v269 = v259 >= v262;
              if (v259 == v262)
              {
                v269 = *(v251 + 64) >= *(v251 + 104);
              }

              v243 = v255;
              a1 = v254;
              v248 = v362;
              if (!v269)
              {
                goto LABEL_550;
              }

LABEL_551:
              if (*(v250 + 23) < 0)
              {
                operator delete(*v250);
              }

              v265 = *v249;
              *(v250 + 16) = *(v249 + 16);
              *v250 = v265;
              *(v249 + 23) = 0;
              *v249 = 0;
              v266 = (v249 + 24);
              v267 = *(v249 + 24);
              *(v249 + 24) = 0;
              *(v249 + 32) = 0;
              v268 = *(v250 + 32);
              *(v250 + 24) = v267;
              if (v268 && !atomic_fetch_add(&v268->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v268->__on_zero_shared)(v268);
                std::__shared_weak_count::__release_weak(v268);
              }
            }

            while (v246 <= v248);
            v270 = (a2 - 40);
            v271 = *(v249 + 23);
            if (v249 == a2 - 40)
            {
              if (v271 < 0)
              {
                operator delete(*v249);
              }

              *v249 = v349;
              v288 = *(&v367 + 7);
              *(v249 + 8) = v367;
              *(v249 + 15) = v288;
              *(v249 + 23) = v356;
              v289 = *(v249 + 32);
              *(v249 + 24) = v353;
              *(v249 + 32) = v351;
              if (v289 && !atomic_fetch_add(&v289->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v289->__on_zero_shared)(v289);
                std::__shared_weak_count::__release_weak(v289);
              }
            }

            else
            {
              if (v271 < 0)
              {
                operator delete(*v249);
              }

              v272 = *v270;
              *(v249 + 16) = *(a2 - 24);
              *v249 = v272;
              *(a2 - 17) = 0;
              *(a2 - 40) = 0;
              v273 = *(a2 - 16);
              *(a2 - 16) = 0;
              *(a2 - 8) = 0;
              v274 = *(v249 + 32);
              *(v249 + 24) = v273;
              if (v274 && !atomic_fetch_add(&v274->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v274->__on_zero_shared)(v274);
                std::__shared_weak_count::__release_weak(v274);
                if (*(a2 - 17) < 0)
                {
LABEL_567:
                  operator delete(*v270);
                }
              }

              else if (*(a2 - 17) < 0)
              {
                goto LABEL_567;
              }

              *(a2 - 40) = v349;
              v275 = v367;
              *(a2 - 25) = *(&v367 + 7);
              *(a2 - 32) = v275;
              *(a2 - 17) = v356;
              v276 = *(a2 - 8);
              *(a2 - 16) = v353;
              *(a2 - 8) = v351;
              if (v276 && !atomic_fetch_add(&v276->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v276->__on_zero_shared)(v276);
                std::__shared_weak_count::__release_weak(v276);
                v277 = v249 + 40 - a1;
                if (v277 < 41)
                {
                  goto LABEL_527;
                }

LABEL_571:
                v278 = (-2 - 0x3333333333333333 * (v277 >> 3)) >> 1;
                v279 = a1 + 40 * v278;
                v280 = *(v279 + 23);
                if (v280 >= 0)
                {
                  v281 = (a1 + 40 * v278);
                }

                else
                {
                  v281 = *v279;
                }

                if (v280 >= 0)
                {
                  v282 = *(v279 + 23);
                }

                else
                {
                  v282 = *(v279 + 8);
                }

                v283 = *(v249 + 23);
                if (v283 >= 0)
                {
                  v284 = v249;
                }

                else
                {
                  v284 = *v249;
                }

                if (v283 >= 0)
                {
                  v285 = *(v249 + 23);
                }

                else
                {
                  v285 = *(v249 + 8);
                }

                if (v285 >= v282)
                {
                  v286 = v282;
                }

                else
                {
                  v286 = v285;
                }

                v287 = memcmp(v281, v284, v286);
                if (v287)
                {
                  if ((v287 & 0x80000000) == 0)
                  {
                    goto LABEL_527;
                  }
                }

                else
                {
                  v290 = v282 >= v285;
                  if (v282 == v285)
                  {
                    v290 = *(v279 + 24) >= *v266;
                  }

                  if (v290)
                  {
                    goto LABEL_527;
                  }
                }

                v291 = *v249;
                v365 = *(v249 + 16);
                *__p = v291;
                *(v249 + 8) = 0;
                *(v249 + 16) = 0;
                *v249 = 0;
                v366 = *(v249 + 24);
                *v266 = 0;
                *(v249 + 32) = 0;
                while (1)
                {
                  v292 = v279;
                  if (*(v249 + 23) < 0)
                  {
                    operator delete(*v249);
                  }

                  v293 = *v279;
                  *(v249 + 16) = *(v279 + 16);
                  *v249 = v293;
                  *(v279 + 23) = 0;
                  *v279 = 0;
                  v294 = *(v279 + 24);
                  *(v279 + 24) = 0;
                  *(v279 + 32) = 0;
                  v295 = *(v249 + 32);
                  *(v249 + 24) = v294;
                  if (v295 && !atomic_fetch_add(&v295->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                  {
                    (v295->__on_zero_shared)(v295);
                    std::__shared_weak_count::__release_weak(v295);
                  }

                  if (!v278)
                  {
                    break;
                  }

                  v278 = (v278 - 1) >> 1;
                  v279 = a1 + 40 * v278;
                  v296 = *(v279 + 23);
                  if (v296 >= 0)
                  {
                    v297 = (a1 + 40 * v278);
                  }

                  else
                  {
                    v297 = *v279;
                  }

                  if (v296 >= 0)
                  {
                    v298 = *(v279 + 23);
                  }

                  else
                  {
                    v298 = *(v279 + 8);
                  }

                  if (SHIBYTE(v365) >= 0)
                  {
                    v299 = __p;
                  }

                  else
                  {
                    v299 = __p[0];
                  }

                  if (SHIBYTE(v365) >= 0)
                  {
                    v300 = HIBYTE(v365);
                  }

                  else
                  {
                    v300 = __p[1];
                  }

                  if (v300 >= v298)
                  {
                    v301 = v298;
                  }

                  else
                  {
                    v301 = v300;
                  }

                  v302 = memcmp(v297, v299, v301);
                  if (v302)
                  {
                    v249 = v292;
                    if ((v302 & 0x80000000) == 0)
                    {
                      break;
                    }
                  }

                  else
                  {
                    v303 = v298 >= v300;
                    if (v298 == v300)
                    {
                      v249 = v292;
                      if (*(v279 + 24) >= v366)
                      {
                        break;
                      }
                    }

                    else
                    {
                      v249 = v292;
                      if (v303)
                      {
                        break;
                      }
                    }
                  }
                }

                if (*(v292 + 23) < 0)
                {
                  operator delete(*v292);
                }

                v304 = *__p;
                *(v292 + 16) = v365;
                *v292 = v304;
                HIBYTE(v365) = 0;
                LOBYTE(__p[0]) = 0;
                v305 = v366;
                v366 = 0uLL;
                v306 = *(v292 + 32);
                *(v292 + 24) = v305;
                if (v306 && !atomic_fetch_add(&v306->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v306->__on_zero_shared)(v306);
                  std::__shared_weak_count::__release_weak(v306);
                }

                v307 = *(&v366 + 1);
                if (*(&v366 + 1) && !atomic_fetch_add((*(&v366 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v307->__on_zero_shared)(v307);
                  std::__shared_weak_count::__release_weak(v307);
                }

                if (SHIBYTE(v365) < 0)
                {
                  operator delete(__p[0]);
                }
              }

              else
              {
                v277 = v249 + 40 - a1;
                if (v277 >= 41)
                {
                  goto LABEL_571;
                }
              }
            }

LABEL_527:
            a2 -= 40;
            if (v243-- <= 2)
            {
LABEL_709:
              v347 = *MEMORY[0x277D85DE8];
              return;
            }
          }
        }
      }

      v242 = v197 >= v200;
      if (v197 == v200)
      {
        v242 = *(v192 + 24) >= *(v192 + 64);
      }

      v188 = (v8 - 2) >> 1;
      if (v242)
      {
        goto LABEL_435;
      }

LABEL_434:
      v192 += 40;
      v191 = v193;
      goto LABEL_435;
    }

    v9 = v8 >> 1;
    v10 = a1 + 40 * (v8 >> 1);
    if (v7 < 0x1401)
    {
      sub_23F2D009C(v10, a1, v354);
      v352 = a3 - 1;
      if (a4)
      {
        goto LABEL_45;
      }
    }

    else
    {
      sub_23F2D009C(a1, v10, v354);
      v11 = 40 * v9;
      sub_23F2D009C((a1 + 40), (v11 + a1 - 40), (a2 - 80));
      sub_23F2D009C((a1 + 80), (a1 + 40 + v11), (a2 - 120));
      sub_23F2D009C((v11 + a1 - 40), v10, (a1 + 40 + v11));
      v12 = *a1;
      v365 = *(a1 + 16);
      *__p = v12;
      v13 = *(v10 + 16);
      *a1 = *v10;
      v14 = *(a1 + 24);
      *(a1 + 16) = v13;
      *(a1 + 24) = 0;
      v15 = v365;
      *v10 = *__p;
      *(a1 + 32) = 0;
      v16 = *(v10 + 24);
      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 16) = v15;
      v17 = *(a1 + 32);
      *(a1 + 24) = v16;
      if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v358 = v14;
        (v17->__on_zero_shared)(v17);
        std::__shared_weak_count::__release_weak(v17);
        v14 = v358;
      }

      v18 = *(v10 + 32);
      *(v10 + 24) = v14;
      if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v18->__on_zero_shared)(v18);
        std::__shared_weak_count::__release_weak(v18);
        v352 = a3 - 1;
        if (a4)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v352 = a3 - 1;
        if (a4)
        {
          goto LABEL_45;
        }
      }
    }

    v19 = *(a1 - 17);
    if (v19 >= 0)
    {
      v20 = (a1 - 40);
    }

    else
    {
      v20 = *(a1 - 40);
    }

    if (v19 >= 0)
    {
      v21 = *(a1 - 17);
    }

    else
    {
      v21 = *(a1 - 32);
    }

    v22 = *(a1 + 23);
    if (v22 >= 0)
    {
      v23 = a1;
    }

    else
    {
      v23 = *a1;
    }

    if (v22 >= 0)
    {
      v24 = *(a1 + 23);
    }

    else
    {
      v24 = *(a1 + 8);
    }

    if (v24 >= v21)
    {
      v25 = v21;
    }

    else
    {
      v25 = v24;
    }

    v26 = memcmp(v20, v23, v25);
    if (v26)
    {
      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_177;
      }

LABEL_45:
      v27 = 0;
      v28 = *a1;
      v365 = *(a1 + 16);
      *__p = v28;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      v29 = *(a1 + 24);
      v366 = v29;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      if (SHIBYTE(v365) >= 0)
      {
        v30 = __p;
      }

      else
      {
        v30 = __p[0];
      }

      if (SHIBYTE(v365) >= 0)
      {
        v31 = HIBYTE(v365);
      }

      else
      {
        v31 = __p[1];
      }

      v32 = v29;
      while (1)
      {
        v33 = *(a1 + v27 + 63);
        v34 = v33 >= 0 ? (a1 + v27 + 40) : *(a1 + v27 + 40);
        v35 = v33 >= 0 ? *(a1 + v27 + 63) : *(a1 + v27 + 48);
        v36 = (v31 >= v35 ? v35 : v31);
        v37 = memcmp(v34, v30, v36);
        if (!v37)
        {
          break;
        }

        if ((v37 & 0x80000000) == 0)
        {
          goto LABEL_68;
        }

LABEL_53:
        v27 += 40;
      }

      v38 = v35 >= v31;
      if (v35 == v31)
      {
        v38 = *(a1 + v27 + 64) >= v32;
      }

      if (!v38)
      {
        goto LABEL_53;
      }

LABEL_68:
      v39 = a1 + v27 + 40;
      k = (a2 - 40);
      if (v27)
      {
        while (1)
        {
          v41 = *(k + 23);
          if (v41 >= 0)
          {
            v42 = k;
          }

          else
          {
            v42 = *k;
          }

          if (v41 >= 0)
          {
            v43 = *(k + 23);
          }

          else
          {
            v43 = k[1];
          }

          if (v31 >= v43)
          {
            v44 = v43;
          }

          else
          {
            v44 = v31;
          }

          v45 = memcmp(v42, v30, v44);
          if (v45)
          {
            if (v45 < 0)
            {
              goto LABEL_108;
            }
          }

          else
          {
            v46 = v43 >= v31;
            if (v43 == v31)
            {
              v46 = k[3] >= v32;
            }

            if (!v46)
            {
              goto LABEL_108;
            }
          }

          k -= 5;
        }
      }

      k = a2;
      if (v39 < a2)
      {
        for (k = (a2 - 40); ; k -= 5)
        {
          v47 = *(k + 23);
          if (v47 >= 0)
          {
            v48 = k;
          }

          else
          {
            v48 = *k;
          }

          if (v47 >= 0)
          {
            v49 = *(k + 23);
          }

          else
          {
            v49 = k[1];
          }

          if (v31 >= v49)
          {
            v50 = v49;
          }

          else
          {
            v50 = v31;
          }

          v51 = memcmp(v48, v30, v50);
          if (v51)
          {
            if (v39 >= k || v51 < 0)
            {
              break;
            }
          }

          else if (v49 == v31)
          {
            if (v39 >= k || k[3] < v32)
            {
              break;
            }
          }

          else if (v39 >= k || v49 < v31)
          {
            break;
          }
        }
      }

LABEL_108:
      m = v39;
      if (v39 < k)
      {
        v52 = k;
        do
        {
          v53 = *m;
          v368 = *(m + 16);
          v367 = v53;
          v54 = *v52;
          *(m + 16) = *(v52 + 16);
          *m = v54;
          v55 = v367;
          *(v52 + 16) = v368;
          *v52 = v55;
          v56 = *(m + 24);
          *(m + 24) = 0;
          *(m + 32) = 0;
          v57 = *(v52 + 24);
          *(v52 + 24) = 0;
          *(v52 + 32) = 0;
          v58 = *(m + 32);
          *(m + 24) = v57;
          if (v58 && !atomic_fetch_add(&v58->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v359 = v56;
            (v58->__on_zero_shared)(v58);
            std::__shared_weak_count::__release_weak(v58);
            v59 = *(v52 + 32);
            *(v52 + 24) = v359;
            if (v59)
            {
LABEL_114:
              if (!atomic_fetch_add(&v59->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v59->__on_zero_shared)(v59);
                std::__shared_weak_count::__release_weak(v59);
              }
            }
          }

          else
          {
            v59 = *(v52 + 32);
            *(v52 + 24) = v56;
            if (v59)
            {
              goto LABEL_114;
            }
          }

          if (SHIBYTE(v365) >= 0)
          {
            v60 = __p;
          }

          else
          {
            v60 = __p[0];
          }

          if (SHIBYTE(v365) >= 0)
          {
            v61 = HIBYTE(v365);
          }

          else
          {
            v61 = __p[1];
          }

          v62 = v366;
          do
          {
            while (1)
            {
              while (1)
              {
                m += 40;
                v63 = *(m + 23);
                v64 = v63 >= 0 ? m : *m;
                v65 = v63 >= 0 ? *(m + 23) : *(m + 8);
                v66 = (v61 >= v65 ? v65 : v61);
                v67 = memcmp(v64, v60, v66);
                if (!v67)
                {
                  break;
                }

                if ((v67 & 0x80000000) == 0)
                {
                  goto LABEL_141;
                }
              }

              if (v65 != v61)
              {
                break;
              }

              if (*(m + 24) >= v62)
              {
                goto LABEL_141;
              }
            }
          }

          while (v65 < v61);
          do
          {
            while (1)
            {
LABEL_141:
              while (1)
              {
                v52 -= 40;
                v68 = *(v52 + 23);
                v69 = v68 >= 0 ? v52 : *v52;
                v70 = v68 >= 0 ? *(v52 + 23) : *(v52 + 8);
                v71 = (v61 >= v70 ? v70 : v61);
                v72 = memcmp(v69, v60, v71);
                if (!v72)
                {
                  break;
                }

                if (v72 < 0)
                {
                  goto LABEL_110;
                }
              }

              if (v70 != v61)
              {
                break;
              }

              if (*(v52 + 24) < v62)
              {
                goto LABEL_110;
              }
            }
          }

          while (v70 >= v61);
LABEL_110:
          ;
        }

        while (m < v52);
      }

      v73 = (m - 40);
      if (m - 40 != a1)
      {
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        v74 = *v73;
        *(a1 + 16) = *(m - 24);
        *a1 = v74;
        *(m - 17) = 0;
        *(m - 40) = 0;
        v75 = *(m - 16);
        *(m - 16) = 0;
        *(m - 8) = 0;
        v76 = *(a1 + 32);
        *(a1 + 24) = v75;
        if (v76)
        {
          if (!atomic_fetch_add(&v76->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v76->__on_zero_shared)(v76);
            std::__shared_weak_count::__release_weak(v76);
            if ((*(m - 17) & 0x80000000) == 0)
            {
              goto LABEL_163;
            }

LABEL_162:
            operator delete(*v73);
            goto LABEL_163;
          }
        }
      }

      if (*(m - 17) < 0)
      {
        goto LABEL_162;
      }

LABEL_163:
      v77 = *__p;
      *(m - 24) = v365;
      *v73 = v77;
      HIBYTE(v365) = 0;
      LOBYTE(__p[0]) = 0;
      v78 = v366;
      v366 = 0uLL;
      v79 = *(m - 8);
      *(m - 16) = v78;
      if (v79 && !atomic_fetch_add(&v79->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v79->__on_zero_shared)(v79);
        std::__shared_weak_count::__release_weak(v79);
        v80 = *(&v366 + 1);
        if (!*(&v366 + 1))
        {
          goto LABEL_169;
        }
      }

      else
      {
        v80 = *(&v366 + 1);
        if (!*(&v366 + 1))
        {
          goto LABEL_169;
        }
      }

      if (!atomic_fetch_add(&v80->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v80->__on_zero_shared)(v80);
        std::__shared_weak_count::__release_weak(v80);
      }

LABEL_169:
      if (SHIBYTE(v365) < 0)
      {
        operator delete(__p[0]);
      }

      a3 = v352;
      if (v39 < k)
      {
LABEL_174:
        sub_23F2CE174(a1, m - 40, v352, a4 & 1);
        a4 = 0;
      }

      else
      {
        v81 = sub_23F2D0FB4(a1, m - 40);
        if (sub_23F2D0FB4(m, a2))
        {
          a2 = m - 40;
          if (v81)
          {
            goto LABEL_709;
          }

          goto LABEL_2;
        }

        if (!v81)
        {
          goto LABEL_174;
        }
      }
    }

    else
    {
      if (v21 != v24)
      {
        if (v21 >= v24)
        {
          goto LABEL_177;
        }

        goto LABEL_45;
      }

      if (*(a1 - 16) < *(a1 + 24))
      {
        goto LABEL_45;
      }

LABEL_177:
      v82 = *a1;
      v365 = *(a1 + 16);
      *__p = v82;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      v360 = *(a1 + 24);
      v366 = v360;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      if (SHIBYTE(v365) >= 0)
      {
        v83 = __p;
      }

      else
      {
        v83 = __p[0];
      }

      if (SHIBYTE(v365) >= 0)
      {
        v84 = HIBYTE(v365);
      }

      else
      {
        v84 = __p[1];
      }

      v85 = *(a2 - 17);
      v87 = *(a2 - 40);
      v86 = *(a2 - 32);
      if (v85 >= 0)
      {
        v88 = (a2 - 40);
      }

      else
      {
        v88 = *(a2 - 40);
      }

      if (v85 >= 0)
      {
        v89 = *(a2 - 17);
      }

      else
      {
        v89 = *(a2 - 32);
      }

      if (v89 >= v84)
      {
        v90 = v84;
      }

      else
      {
        v90 = v89;
      }

      v91 = v83;
      v92 = memcmp(v83, v88, v90);
      if (v92)
      {
        if (v92 < 0)
        {
          goto LABEL_216;
        }
      }

      else
      {
        v99 = v84 >= v89;
        if (v84 == v89)
        {
          v99 = v360 >= *(a2 - 16);
        }

        if (!v99)
        {
LABEL_216:
          for (m = a1 + 40; ; m += 40)
          {
            v100 = *(m + 23);
            if (v100 >= 0)
            {
              v101 = m;
            }

            else
            {
              v101 = *m;
            }

            if (v100 >= 0)
            {
              v102 = *(m + 23);
            }

            else
            {
              v102 = *(m + 8);
            }

            if (v102 >= v84)
            {
              v103 = v84;
            }

            else
            {
              v103 = v102;
            }

            v104 = memcmp(v91, v101, v103);
            if (v104)
            {
              if (v104 < 0)
              {
                goto LABEL_234;
              }
            }

            else
            {
              v105 = v84 >= v102;
              if (v84 == v102)
              {
                v105 = v360 >= *(m + 24);
              }

              if (!v105)
              {
                goto LABEL_234;
              }
            }
          }
        }
      }

      for (m = a1 + 40; m < a2; m += 40)
      {
        v93 = *(m + 23);
        if (v93 >= 0)
        {
          v94 = m;
        }

        else
        {
          v94 = *m;
        }

        if (v93 >= 0)
        {
          v95 = *(m + 23);
        }

        else
        {
          v95 = *(m + 8);
        }

        if (v95 >= v84)
        {
          v96 = v84;
        }

        else
        {
          v96 = v95;
        }

        v97 = memcmp(v91, v94, v96);
        if (v97)
        {
          if (v97 < 0)
          {
            break;
          }
        }

        else
        {
          v98 = v84 >= v95;
          if (v84 == v95)
          {
            v98 = v360 >= *(m + 24);
          }

          if (!v98)
          {
            break;
          }
        }
      }

LABEL_234:
      n = a2;
      if (m < a2)
      {
        for (n = (a2 - 40); ; v86 = *(n + 1))
        {
          if (v85 >= 0)
          {
            v108 = n;
          }

          else
          {
            v108 = v87;
          }

          if (v85 >= 0)
          {
            v86 = v85;
          }

          if (v86 >= v84)
          {
            v109 = v84;
          }

          else
          {
            v109 = v86;
          }

          v110 = memcmp(v91, v108, v109);
          if (v110)
          {
            if ((v110 & 0x80000000) == 0)
            {
              break;
            }
          }

          else
          {
            v111 = v84 >= v86;
            if (v84 == v86)
            {
              v111 = v360 >= *(n + 3);
            }

            if (v111)
            {
              break;
            }
          }

          v107 = *(n - 5);
          n = (n - 40);
          v87 = v107;
          v85 = *(n + 23);
        }
      }

LABEL_295:
      while (m < n)
      {
        v112 = *m;
        v368 = *(m + 16);
        v367 = v112;
        v113 = *n;
        *(m + 16) = *(n + 2);
        *m = v113;
        v114 = v367;
        *(n + 2) = v368;
        *n = v114;
        v115 = *(m + 24);
        *(m + 24) = 0;
        *(m + 32) = 0;
        v116 = *(n + 24);
        *(n + 3) = 0;
        *(n + 4) = 0;
        v117 = *(m + 32);
        *(m + 24) = v116;
        if (v117 && !atomic_fetch_add(&v117->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v361 = v115;
          (v117->__on_zero_shared)(v117);
          std::__shared_weak_count::__release_weak(v117);
          v115 = v361;
        }

        v118 = *(n + 4);
        *(n + 24) = v115;
        if (v118 && !atomic_fetch_add(&v118->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v118->__on_zero_shared)(v118);
          std::__shared_weak_count::__release_weak(v118);
        }

        if (SHIBYTE(v365) >= 0)
        {
          v119 = __p;
        }

        else
        {
          v119 = __p[0];
        }

        if (SHIBYTE(v365) >= 0)
        {
          v120 = HIBYTE(v365);
        }

        else
        {
          v120 = __p[1];
        }

        v121 = v366;
        do
        {
          while (1)
          {
            while (1)
            {
              m += 40;
              v122 = *(m + 23);
              v123 = v122 >= 0 ? m : *m;
              v124 = v122 >= 0 ? *(m + 23) : *(m + 8);
              v125 = (v124 >= v120 ? v120 : v124);
              v126 = memcmp(v119, v123, v125);
              if (!v126)
              {
                break;
              }

              if (v126 < 0)
              {
                goto LABEL_281;
              }
            }

            if (v120 != v124)
            {
              break;
            }

            if (v121 < *(m + 24))
            {
              goto LABEL_281;
            }
          }
        }

        while (v120 >= v124);
        do
        {
          while (1)
          {
LABEL_281:
            while (1)
            {
              n = (n - 40);
              v127 = *(n + 23);
              v128 = v127 >= 0 ? n : *n;
              v129 = v127 >= 0 ? *(n + 23) : *(n + 1);
              v130 = (v129 >= v120 ? v120 : v129);
              v131 = memcmp(v119, v128, v130);
              if (!v131)
              {
                break;
              }

              if ((v131 & 0x80000000) == 0)
              {
                goto LABEL_295;
              }
            }

            if (v120 != v129)
            {
              break;
            }

            if (v121 >= *(n + 3))
            {
              goto LABEL_295;
            }
          }
        }

        while (v120 < v129);
      }

      v132 = (m - 40);
      if (m - 40 != a1)
      {
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        v133 = *v132;
        *(a1 + 16) = *(m - 24);
        *a1 = v133;
        *(m - 17) = 0;
        *(m - 40) = 0;
        v134 = *(m - 16);
        *(m - 16) = 0;
        *(m - 8) = 0;
        v135 = *(a1 + 32);
        *(a1 + 24) = v134;
        if (v135 && !atomic_fetch_add(&v135->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v135->__on_zero_shared)(v135);
          std::__shared_weak_count::__release_weak(v135);
        }
      }

      if (*(m - 17) < 0)
      {
        operator delete(*v132);
      }

      v136 = *__p;
      *(m - 24) = v365;
      *v132 = v136;
      HIBYTE(v365) = 0;
      LOBYTE(__p[0]) = 0;
      v137 = v366;
      v366 = 0uLL;
      v138 = *(m - 8);
      *(m - 16) = v137;
      a3 = v352;
      if (v138 && !atomic_fetch_add(&v138->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v138->__on_zero_shared)(v138);
        std::__shared_weak_count::__release_weak(v138);
      }

      v139 = *(&v366 + 1);
      if (*(&v366 + 1) && !atomic_fetch_add((*(&v366 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v139->__on_zero_shared)(v139);
        std::__shared_weak_count::__release_weak(v139);
      }

      if (SHIBYTE(v365) < 0)
      {
        operator delete(__p[0]);
      }

      a4 = 0;
    }
  }

  v141 = (a2 - 40);
  v142 = *(a2 - 17);
  if (v142 >= 0)
  {
    v143 = (a2 - 40);
  }

  else
  {
    v143 = *(a2 - 40);
  }

  if (v142 >= 0)
  {
    v144 = *(a2 - 17);
  }

  else
  {
    v144 = *(a2 - 32);
  }

  v145 = *(a1 + 23);
  if (v145 >= 0)
  {
    v146 = a1;
  }

  else
  {
    v146 = *a1;
  }

  if (v145 >= 0)
  {
    v147 = *(a1 + 23);
  }

  else
  {
    v147 = *(a1 + 8);
  }

  if (v147 >= v144)
  {
    v148 = v144;
  }

  else
  {
    v148 = v147;
  }

  v149 = memcmp(v143, v146, v148);
  if (v149)
  {
    if ((v149 & 0x80000000) == 0)
    {
      goto LABEL_709;
    }
  }

  else
  {
    v339 = v144 >= v147;
    if (v144 == v147)
    {
      v339 = *(a2 - 16) >= *(a1 + 24);
    }

    if (v339)
    {
      goto LABEL_709;
    }
  }

  v340 = *a1;
  v365 = *(a1 + 16);
  *__p = v340;
  v341 = *v141;
  *(a1 + 16) = *(a2 - 24);
  *a1 = v341;
  v342 = *__p;
  *(a2 - 24) = v365;
  *v141 = v342;
  v343 = *(a1 + 24);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v344 = *(a2 - 16);
  *(a2 - 16) = 0;
  *(a2 - 8) = 0;
  v345 = *(a1 + 32);
  *(a1 + 24) = v344;
  if (v345 && !atomic_fetch_add(&v345->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v363 = v343;
    (v345->__on_zero_shared)(v345);
    std::__shared_weak_count::__release_weak(v345);
    v343 = v363;
  }

  v346 = *(a2 - 8);
  *(a2 - 16) = v343;
  if (!v346 || atomic_fetch_add(&v346->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_709;
  }

  (v346->__on_zero_shared)(v346);
  v348 = *MEMORY[0x277D85DE8];

  std::__shared_weak_count::__release_weak(v346);
}