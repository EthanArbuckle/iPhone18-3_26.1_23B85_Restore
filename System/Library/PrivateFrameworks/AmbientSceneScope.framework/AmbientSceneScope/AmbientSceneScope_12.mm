void sub_23F037F94(void *a1)
{
  *a1 = &unk_28517B360;
  sub_23F038FAC(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F037FF8(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E394558, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E394558))
    {
      sub_23F039858();
    }
  }

  (*(*(a1 + 8) + 24))(__p, a1 + 8);
  sub_23EF44334(&xmmword_27E394540, "{", __p, ",");
}

void sub_23F0380F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F038114(uint64_t a1@<X8>)
{
  *(a1 + 23) = 8;
  strcpy(a1, "cv3d.viz");
  *(a1 + 24) = 10;
}

uint64_t sub_23F038190(uint64_t a1)
{
  *a1 = &unk_28517B420;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
    if ((*(a1 + 95) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 63) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      operator delete(*(a1 + 40));
      if ((*(a1 + 31) & 0x80000000) == 0)
      {
        return a1;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 95) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 72));
  if (*(a1 + 63) < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_9:
  operator delete(*(a1 + 8));
  return a1;
}

void sub_23F03823C(uint64_t a1)
{
  sub_23F038FAC(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F038274()
{
  if ((atomic_load_explicit(&qword_27E394538, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E394538))
    {
      sub_23F0395C4();
    }
  }

  sub_23F039078(&xmmword_27E394520, "{");
}

void sub_23F038328(uint64_t a1@<X8>)
{
  *(a1 + 23) = 15;
  strcpy(a1, "unknown_package");
  *(a1 + 24) = 0;
}

void sub_23F038354(uint64_t a1)
{
  *a1 = &unk_28517B420;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
    if ((*(a1 + 95) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 63) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(a1 + 95) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 72));
  if ((*(a1 + 63) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    operator delete(*(a1 + 8));
LABEL_5:

    JUMPOUT(0x245CACD00);
  }

LABEL_10:
  operator delete(*(a1 + 40));
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_11;
}

uint64_t sub_23F038410(char *a1, char *lpsrc)
{
  v4 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28517BF90, &unk_28517B440, 0);
  if (result)
  {
    if (a1 == lpsrc)
    {
      return 1;
    }

    else
    {
      v7[0] = a1 + 8;
      v7[1] = a1 + 32;
      v7[2] = a1 + 40;
      v7[3] = a1 + 64;
      v7[4] = a1 + 72;
      v7[5] = a1 + 96;
      v6[0] = result + 8;
      v6[1] = result + 32;
      v6[2] = result + 40;
      v6[3] = result + 64;
      v6[4] = result + 72;
      v6[5] = result + 96;
      return sub_23F0385B0(v7, v6);
    }
  }

  return result;
}

void sub_23F0384FC(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E394518, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394518))
  {
    sub_23F302BD0("cv3d::kit::viz::TextLog]", 0x17uLL, &xmmword_27E394500);
    __cxa_guard_release(&qword_27E394518);
  }

  sub_23F038778(&xmmword_27E394500, "{", (a1 + 8));
}

BOOL sub_23F0385B0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(*a1 + 23);
  }

  else
  {
    v4 = *(*a1 + 8);
  }

  v5 = *(v2 + 23);
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(v2 + 8);
  }

  if (v4 != v5)
  {
    return 0;
  }

  v9 = v3 >= 0 ? *a1 : **a1;
  v10 = v6 >= 0 ? *a2 : *v2;
  if (memcmp(v9, v10, v4) || **(a1 + 8) != *a2[1])
  {
    return 0;
  }

  v11 = *(a1 + 16);
  v12 = a2[2];
  v13 = *(v11 + 23);
  if (v13 >= 0)
  {
    v14 = *(v11 + 23);
  }

  else
  {
    v14 = *(v11 + 8);
  }

  v15 = *(v12 + 23);
  v16 = v15;
  if ((v15 & 0x80u) != 0)
  {
    v15 = *(v12 + 8);
  }

  if (v14 != v15)
  {
    return 0;
  }

  v17 = v13 >= 0 ? *(a1 + 16) : *v11;
  v18 = v16 >= 0 ? a2[2] : *v12;
  if (memcmp(v17, v18, v14) || **(a1 + 24) != *a2[3])
  {
    return 0;
  }

  v19 = *(a1 + 32);
  v20 = a2[4];
  v21 = *(v19 + 23);
  if (v21 >= 0)
  {
    v22 = *(v19 + 23);
  }

  else
  {
    v22 = *(v19 + 8);
  }

  v23 = *(v20 + 23);
  v24 = v23;
  if ((v23 & 0x80u) != 0)
  {
    v23 = *(v20 + 8);
  }

  if (v22 != v23)
  {
    return 0;
  }

  v25 = v21 >= 0 ? *(a1 + 32) : *v19;
  v26 = v24 >= 0 ? a2[4] : *v20;
  if (memcmp(v25, v26, v22))
  {
    return 0;
  }

  v27 = *(a1 + 40);
  v28 = a2[5];
  v29 = *(v27 + 23);
  if (v29 >= 0)
  {
    v30 = *(v27 + 23);
  }

  else
  {
    v30 = *(v27 + 8);
  }

  v31 = *(v28 + 23);
  v32 = v31;
  if ((v31 & 0x80u) != 0)
  {
    v31 = *(v28 + 8);
  }

  if (v30 != v31)
  {
    return 0;
  }

  if (v29 >= 0)
  {
    v33 = *(a1 + 40);
  }

  else
  {
    v33 = *v27;
  }

  if (v32 >= 0)
  {
    v34 = a2[5];
  }

  else
  {
    v34 = *v28;
  }

  return memcmp(v33, v34, v30) == 0;
}

void sub_23F038778(__int128 *a1, const char *a2, const char *a3)
{
  v7 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_23EF34EA4(&v5, *a1, *(a1 + 1));
  }

  else
  {
    v5 = *a1;
    v6 = *(a1 + 2);
  }

  v7 = 1;
  v8 = &v5;
  v9 = a2;
  v10 = &v5;
  v11 = a2;
  v12 = a2;
  sub_23EF4248C(&v10, &v5);
  v8 = a3;
  v9 = a3 + 24;
  v10 = (a3 + 32);
  v11 = a3 + 56;
  v12 = a3 + 64;
  v13 = a3 + 88;
  v15 = &v5;
  v16 = "{";
  v17 = &v5;
  v18 = "{";
  v19 = "{";
  if (v7 != -1)
  {
    v20 = &v15;
    (*(&off_2851790B0 + v7))(&v20, &v5);
    LOBYTE(v15) = 1;
    v16 = &v5;
    v17 = &v14;
    sub_23F0389D8(&v8, &v15);
  }

  sub_23EF41D6C();
}

void sub_23F0389D8(const char **a1, uint64_t a2)
{
  v4 = *a1;
  if ((*a2 & 1) == 0)
  {
    v11 = *(a2 + 8);
    v12 = ",";
    v13 = v11;
    v14 = ",";
    v15 = ",";
    v5 = *(v11 + 24);
    if (v5 == -1)
    {
      goto LABEL_9;
    }

    v10.__r_.__value_.__r.__words[0] = &v11;
    (*(&off_2851790B0 + v5))(&v10);
  }

  *a2 = 0;
  v11 = *(a2 + 8);
  v12 = v4;
  v13 = v11;
  v14 = v4;
  v15 = v4;
  v6 = *(v11 + 24);
  if (v6 != -1)
  {
    v10.__r_.__value_.__r.__words[0] = &v11;
    (off_285179098[v6])(&v10);
    v7 = a1[1];
    if (*a2)
    {
      goto LABEL_8;
    }

    v11 = *(a2 + 8);
    v12 = ",";
    v13 = v11;
    v14 = ",";
    v15 = ",";
    v8 = *(v11 + 24);
    if (v8 != -1)
    {
      v10.__r_.__value_.__r.__words[0] = &v11;
      (*(&off_2851790B0 + v8))(&v10);
LABEL_8:
      *a2 = 0;
      v9 = *(a2 + 8);
      sub_23F038D60();
    }
  }

LABEL_9:
  sub_23EF41D6C();
}

void sub_23F038D44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F038F68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F038FAC(uint64_t a1)
{
  *a1 = &unk_28517B3D8;
  sub_23EF44860(a1 + 144);
  *(a1 + 8) = &unk_28517B420;
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
    if ((*(a1 + 103) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 71) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      operator delete(*(a1 + 48));
      if ((*(a1 + 39) & 0x80000000) == 0)
      {
        return a1;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 103) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 80));
  if (*(a1 + 71) < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((*(a1 + 39) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_9:
  operator delete(*(a1 + 16));
  return a1;
}

void sub_23F039078(__int128 *a1, uint64_t a2)
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
  sub_23F0392A8();
}

void sub_23F039218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F039230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F039244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F039258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F03926C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F039280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F039294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F03953C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  __cxa_guard_abort(&qword_27E394518);
  v23 = *(v21 - 56);
  *(v21 - 56) = 0;
  if (!v23)
  {
    _Unwind_Resume(a1);
  }

  sub_23F302A54(v21 - 56, v23);
  _Unwind_Resume(a1);
}

void sub_23F039698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F039818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_23EF3291C(&a9);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23F039858()
{
  v1 = *MEMORY[0x277D85DE8];
  v0[23] = 16;
  strcpy(v0, "viz::PackageData");
  operator new();
}

void sub_23F039A90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
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

__n128 sub_23F039B44(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_28517B3D8;
  *(a1 + 8) = &unk_28517B420;
  v2 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = v2;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *(a1 + 40) = *(a2 + 40);
  v3 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v3;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = 0;
  *(a1 + 72) = *(a2 + 72);
  v4 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 80) = v4;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 80) = 0;
  v5 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v5;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 104) = 0;
  v6 = *(a2 + 128);
  *(a1 + 144) = 0;
  *(a1 + 128) = v6;
  *(a1 + 168) = 0;
  if (*(a2 + 168) == 1)
  {
    v7 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 144) = v7;
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
    *(a2 + 144) = 0;
    *(a1 + 168) = 1;
  }

  result = *(a2 + 176);
  v9 = *(a2 + 192);
  *(a1 + 200) = 0;
  *(a1 + 192) = v9;
  *(a1 + 176) = result;
  *(a1 + 224) = 0;
  if (*(a2 + 224) == 1)
  {
    result = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 200) = result;
    *(a2 + 208) = 0;
    *(a2 + 216) = 0;
    *(a2 + 200) = 0;
    *(a1 + 224) = 1;
    *(a1 + 240) = 0;
    v10 = (a1 + 240);
    *(a1 + 288) = 0;
    if (*(a2 + 288) != 1)
    {
LABEL_5:
      *(a1 + 304) = 0;
      *(a1 + 328) = 0;
      if (*(a2 + 328) != 1)
      {
        return result;
      }

LABEL_9:
      *(a1 + 304) = 0;
      *(a1 + 312) = 0;
      *(a1 + 320) = 0;
      result = *(a2 + 304);
      *(a1 + 304) = result;
      *(a1 + 320) = *(a2 + 320);
      *(a2 + 304) = 0;
      *(a2 + 312) = 0;
      *(a2 + 320) = 0;
      *(a1 + 328) = 1;
      return result;
    }
  }

  else
  {
    *(a1 + 240) = 0;
    v10 = (a1 + 240);
    *(a1 + 288) = 0;
    if (*(a2 + 288) != 1)
    {
      goto LABEL_5;
    }
  }

  _X2 = 0;
  _X3 = 0;
  result = *(a2 + 240);
  v10[1].n128_u64[0] = *(a2 + 256);
  *v10 = result;
  *(a2 + 248) = 0;
  *(a2 + 256) = 0;
  *(a2 + 240) = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  *(a1 + 272) = _X2;
  *(a1 + 280) = 0;
  *(a1 + 288) = 1;
  *(a1 + 304) = 0;
  *(a1 + 328) = 0;
  if (*(a2 + 328) == 1)
  {
    goto LABEL_9;
  }

  return result;
}

BOOL sub_23F039D38(uint64_t a1, uint64_t a2)
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
    goto LABEL_18;
  }

  if (v35 != v20)
  {
    goto LABEL_18;
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
  if (sub_23F04C458(v18, v17))
  {
    v6 = sub_23F03A0E8((a1 + 200), (a2 + 200));
    if (v33 != 1)
    {
      goto LABEL_32;
    }
  }

  else
  {
LABEL_18:
    v6 = 0;
    if (v33 != 1)
    {
      goto LABEL_32;
    }
  }

  v7 = __p;
  if (__p)
  {
    v8 = v32;
    v9 = __p;
    if (v32 == __p)
    {
LABEL_31:
      v32 = v7;
      operator delete(v9);
      goto LABEL_32;
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
LABEL_26:
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
          goto LABEL_26;
        }
      }

      if (v8 == v7)
      {
        v9 = __p;
        goto LABEL_31;
      }
    }
  }

LABEL_32:
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
LABEL_54:
        v47 = v11;
        operator delete(v13);
        goto LABEL_55;
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
LABEL_49:
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
            goto LABEL_49;
          }
        }

        if (v12 == v11)
        {
          v13 = v46;
          goto LABEL_54;
        }
      }
    }
  }

LABEL_55:
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

void sub_23F03A0AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  sub_23EF44860(v47);
  sub_23EF44860(&a47);
  _Unwind_Resume(a1);
}

BOOL sub_23F03A0E8(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  v8 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v3) || *(v7 + 24) != *(v6 + 24))
  {
    return 0;
  }

  v9 = *(v7 + 55);
  if (v9 >= 0)
  {
    v10 = *(v7 + 55);
  }

  else
  {
    v10 = v7[5];
  }

  v11 = *(v6 + 55);
  v12 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v11 = v6[5];
  }

  if (v10 != v11)
  {
    return 0;
  }

  v13 = v6 + 4;
  v14 = v9 >= 0 ? v7 + 4 : v7[4];
  v15 = *v13;
  v16 = v12 >= 0 ? v6 + 4 : *v13;
  if (memcmp(v14, v16, v10) || *(v7 + 14) != *(v6 + 14))
  {
    return 0;
  }

  v17 = *(v7 + 87);
  if (v17 >= 0)
  {
    v18 = *(v7 + 87);
  }

  else
  {
    v18 = v7[9];
  }

  v19 = *(v6 + 87);
  v20 = v19;
  if ((v19 & 0x80u) != 0)
  {
    v19 = v6[9];
  }

  if (v18 != v19)
  {
    return 0;
  }

  v21 = v6 + 8;
  v22 = v17 >= 0 ? v7 + 8 : v7[8];
  v23 = *v21;
  v24 = v20 >= 0 ? v6 + 8 : *v21;
  if (memcmp(v22, v24, v18))
  {
    return 0;
  }

  v25 = *(v7 + 111);
  if (v25 >= 0)
  {
    v26 = *(v7 + 111);
  }

  else
  {
    v26 = v7[12];
  }

  v27 = *(v6 + 111);
  v28 = v27;
  if ((v27 & 0x80u) != 0)
  {
    v27 = v6[12];
  }

  if (v26 != v27)
  {
    return 0;
  }

  v29 = (v6 + 11);
  if (v25 >= 0)
  {
    v30 = v7 + 11;
  }

  else
  {
    v30 = v7[11];
  }

  v31 = *v29;
  if (v28 >= 0)
  {
    v32 = v6 + 11;
  }

  else
  {
    v32 = *v29;
  }

  return memcmp(v30, v32, v26) == 0;
}

void sub_23F03A2A8(char **a1, uint64_t a2)
{
  v15 = a2;
  v16 = a2;
  v4 = *a1;
  v5 = **a1;
  v6 = __dynamic_cast(a1, &unk_28518D908, &unk_2851798D0, 0);
  if (v6)
  {
    sub_23F03A7B4(&v16, v6);
  }

  v16 = a2;
  v7 = *v4;
  v8 = __dynamic_cast(a1, &unk_28518D908, &unk_285179918, 0);
  if (v8)
  {
    sub_23F03B078(&v16, v8);
  }

  else
  {
    v16 = a2;
    v9 = *v4;
    v10 = __dynamic_cast(a1, &unk_28518D908, &unk_2851799A0, 0);
    if (v10)
    {
      sub_23F03B4B4(&v16, v10);
    }

    v16 = a2;
    v11 = *v4;
    v12 = __dynamic_cast(a1, &unk_28518D908, &unk_2851799E8, 0);
    if (v12)
    {
      sub_23F03BC14(&v16, v12);
    }

    else
    {
      v16 = a2;
      v13 = *v4;
      v14 = __dynamic_cast(a1, &unk_28518D908, &unk_28518B990, 0);
      if (v14)
      {
        sub_23F03BF20(&v16, v14);
      }

      else
      {
        sub_23F03A474(&v15, a1);
      }
    }
  }
}

void sub_23F03A474(uint64_t *a1, _DWORD *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    v9 = a2[2];
    v11 = 4;
    (*(*a2 + 104))(a2, &v11);
    v10 = v11;
    if (v9 < 1)
    {
      sub_23EF886A8(a2, v3 + 16, v11);
      goto LABEL_17;
    }

    if (v9 == 2)
    {
      v11 = 3;
      (*(*a2 + 104))(a2, &v11);
    }

    (*(*a2 + 16))(a2);
    sub_23EF886A8(a2, v3 + 16, v10);
  }

  else if (v4 == 1)
  {
    v7 = a2[2];
    v11 = 5;
    (*(*a2 + 104))(a2, &v11);
    v8 = v11;
    if (v7 < 1)
    {
      sub_23EF87D4C(a2, v3 + 16, v11);
      goto LABEL_17;
    }

    if (v7 == 2)
    {
      v11 = 3;
      (*(*a2 + 104))(a2, &v11);
    }

    (*(*a2 + 16))(a2);
    sub_23EF87D4C(a2, v3 + 16, v8);
  }

  else
  {
    if (v4)
    {
      sub_23EF41D6C();
    }

    v5 = a2[2];
    v11 = 6;
    (*(*a2 + 104))(a2, &v11);
    v6 = v11;
    if (v5 < 1)
    {
      sub_23EF5C460(a2, v3 + 16, v11);
      goto LABEL_17;
    }

    if (v5 == 2)
    {
      v11 = 3;
      (*(*a2 + 104))(a2, &v11);
    }

    (*(*a2 + 16))(a2);
    sub_23EF5C460(a2, v3 + 16, v6);
  }

  (*(*a2 + 24))(a2);
LABEL_17:
  v11 = 1;
  (*(*a2 + 104))(a2, &v11);
  sub_23F03C310(a2, (v3 + 200));
}

void sub_23F03A7B4(uint64_t *a1, uint64_t a2)
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

void sub_23F03ACE8(uint64_t a1)
{
  v1 = *a1;
  sub_23F03AF14(&v16, *(a1 + 8));
  sub_23F2E9AF4(v1);
  if (*(v1 + 88) != 1 || *(v1 + 80) != 7 || ((v2 = *(v1 + 72), v3 = *v2, v4 = *(v2 + 3), v3 == *"version") ? (v5 = v4 == *"sion") : (v5 = 0), !v5))
  {
    v26 = 6;
    v27 = v18;
    v6 = sub_23F2E72C0(v1);
    v7 = *v6;
    *v6 = 6;
    v26 = v7;
    v8 = v6[1];
    v6[1] = v27;
    v27 = v8;
    sub_23F0655DC(&v27, v7);
  }

  sub_23F2E9AF4(v1);
  if (*(v1 + 88) == 1 && *(v1 + 80) == 7 && ((v9 = *(v1 + 72), v10 = *v9, v11 = *(v9 + 3), v10 == *"version") ? (v12 = v11 == *"sion") : (v12 = 0), v12))
  {
    *(v1 + 96) = v21;
    *(v1 + 100) = 1;
    *(v1 + 88) = 0;
  }

  else
  {
    v26 = 6;
    v27 = v21;
    v13 = sub_23F2E72C0(v1);
    v14 = *v13;
    *v13 = 6;
    v26 = v14;
    v15 = v13[1];
    v13[1] = v27;
    v27 = v15;
    sub_23F0655DC(&v27, v14);
  }

  sub_23F2E9AF4(v1);
  sub_23F2E9AF4(v1);
  if (v25 < 0)
  {
    operator delete(__p);
    if ((v23 & 0x80000000) == 0)
    {
LABEL_17:
      if ((v20 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_22;
    }
  }

  else if ((v23 & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

  operator delete(v22);
  if ((v20 & 0x80000000) == 0)
  {
LABEL_18:
    if ((v17 & 0x80000000) == 0)
    {
      return;
    }

LABEL_23:
    operator delete(v16);
    return;
  }

LABEL_22:
  operator delete(v19);
  if (v17 < 0)
  {
    goto LABEL_23;
  }
}

void sub_23F03AEDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23F0655DC((v9 + 8), 6);
  sub_23EF531B0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_23F03AF14(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_23EF34EA4(a1, *a2, *(a2 + 1));
    *(a1 + 24) = *(a2 + 24);
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    *(a1 + 24) = *(a2 + 24);
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = a2[2];
      *(a1 + 48) = *(a2 + 6);
      *(a1 + 32) = v5;
      goto LABEL_6;
    }
  }

  sub_23EF34EA4((a1 + 32), *(a2 + 4), *(a2 + 5));
LABEL_6:
  *(a1 + 56) = *(a2 + 14);
  if (*(a2 + 87) < 0)
  {
    sub_23EF34EA4((a1 + 64), *(a2 + 8), *(a2 + 9));
  }

  else
  {
    v6 = a2[4];
    *(a1 + 80) = *(a2 + 10);
    *(a1 + 64) = v6;
  }

  if (*(a2 + 111) < 0)
  {
    sub_23EF34EA4((a1 + 88), *(a2 + 11), *(a2 + 12));
  }

  else
  {
    v7 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 13);
    *(a1 + 88) = v7;
  }

  return a1;
}

void sub_23F03B004(_Unwind_Exception *exception_object)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
    if ((*(v1 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v1 + 23) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v1 + 55) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 32));
  if ((*(v1 + 23) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

void sub_23F03B078(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    v7 = a2[3];
    if (*(v7 + 40) == 1)
    {
      v17[0] = (v7 + 16);
      sub_23F2FD25C(v17, 4u);
    }

    else
    {
      sub_23F2FD4DC(v17, (v7 + 8));
    }

    sub_23F2F887C(a2[3]);
    sub_23EF84C34(a2, v3 + 16, 4u);
  }

  else if (v4 == 1)
  {
    v6 = a2[3];
    if (*(v6 + 40) == 1)
    {
      v17[0] = (v6 + 16);
      sub_23F2FD25C(v17, 5u);
    }

    else
    {
      sub_23F2FD4DC(v17, (v6 + 8));
    }

    sub_23F2F887C(a2[3]);
    sub_23EF84B04(a2, v3 + 16, 5u);
  }

  else
  {
    if (v4)
    {
      sub_23EF41D6C();
    }

    v5 = a2[3];
    if (*(v5 + 40) == 1)
    {
      v17[0] = (v5 + 16);
      sub_23F2FD25C(v17, 6u);
    }

    else
    {
      sub_23F2FD4DC(v17, (v5 + 8));
    }

    sub_23F2F887C(a2[3]);
    sub_23EF57C0C(a2, v3 + 16, 6u);
  }

  v8 = a2[3];
  v9 = *(*(v8 + 88) - 8);
  sub_23F2F866C((v8 + 48), *(v8 + 16) - v9 - 9);
  v10 = *(v8 + 48);
  if (v10)
  {
    memmove((*(v8 + 24) + v9), *(v8 + 56), v10);
  }

  *(v8 + 48) = 0;
  v11 = *(v8 + 80);
  v12 = *(v8 + 88) - 8;
  *(v8 + 88) = v12;
  if (v11 == v12)
  {
    v13 = *v8;
    v15 = *(v8 + 16);
    v14 = *(v8 + 24);
    std::ostream::write();
    if (*(v8 + 40) == 1)
    {
      free(*(v8 + 24));
      *(v8 + 40) = 0;
    }
  }

  v16 = a2[3];
  if (*(v16 + 40) == 1)
  {
    v17[0] = (v16 + 16);
    sub_23F2FD25C(v17, 1u);
  }

  else
  {
    sub_23F2FD4DC(v17, (v16 + 8));
  }

  v18 = 1;
  v17[0] = a2;
  v17[1] = (v3 + 200);
  v17[2] = &v18;
  sub_23F03B28C(v17);
}

void sub_23F03B28C(uint64_t *a1)
{
  v1 = *a1;
  sub_23F03AF14(v9, a1[1]);
  v2 = *(v1 + 24);
  if (*(v2 + 40) == 1)
  {
    v19 = (v2 + 16);
    sub_23F2FE3A8(&v19, v9);
  }

  else
  {
    sub_23F2FE7C4((v2 + 8), v9);
  }

  v3 = *(v1 + 24);
  if (*(v3 + 40) == 1)
  {
    v19 = (v3 + 16);
    sub_23F2FC63C(&v19, v11);
  }

  else
  {
    if (v11[0] < 0)
    {
      LOBYTE(v19) = -52;
      BYTE1(v19) = v11[0];
    }

    else
    {
      LOBYTE(v19) = v11[0];
    }

    v4 = *(v3 + 8);
    std::ostream::write();
  }

  v5 = *(v1 + 24);
  if (*(v5 + 40) == 1)
  {
    v19 = (v5 + 16);
    sub_23F2FE3A8(&v19, v12);
  }

  else
  {
    sub_23F2FE7C4((v5 + 8), v12);
  }

  v6 = *(v1 + 24);
  if (*(v6 + 40) == 1)
  {
    v19 = (v6 + 16);
    sub_23F2FD25C(&v19, v14);
  }

  else
  {
    sub_23F2FD4DC(&v19, (v6 + 8));
  }

  v7 = *(v1 + 24);
  if (*(v7 + 40) == 1)
  {
    v19 = (v7 + 16);
    sub_23F2FE3A8(&v19, v15);
  }

  else
  {
    sub_23F2FE7C4((v7 + 8), v15);
  }

  v8 = *(v1 + 24);
  if (*(v8 + 40) == 1)
  {
    v19 = (v8 + 16);
    sub_23F2FE3A8(&v19, __p);
  }

  else
  {
    sub_23F2FE7C4((v8 + 8), __p);
  }

  if (v18 < 0)
  {
    operator delete(__p[0]);
    if ((v16 & 0x80000000) == 0)
    {
LABEL_24:
      if ((v13 & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_29;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  operator delete(v15[0]);
  if ((v13 & 0x80000000) == 0)
  {
LABEL_25:
    if ((v10 & 0x80000000) == 0)
    {
      return;
    }

LABEL_30:
    operator delete(v9[0]);
    return;
  }

LABEL_29:
  operator delete(v12[0]);
  if (v10 < 0)
  {
    goto LABEL_30;
  }
}

void sub_23F03B4A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF531B0(va);
  _Unwind_Resume(a1);
}

void sub_23F03B4B4(uint64_t *a1, uint64_t a2)
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

void sub_23F03B9E8(uint64_t a1)
{
  v1 = *a1;
  sub_23F03AF14(&v16, *(a1 + 8));
  sub_23F2E7C64(v1);
  if (*(v1 + 88) != 1 || *(v1 + 80) != 7 || ((v2 = *(v1 + 72), v3 = *v2, v4 = *(v2 + 3), v3 == *"version") ? (v5 = v4 == *"sion") : (v5 = 0), !v5))
  {
    v26 = 6;
    v27 = v18;
    v6 = sub_23F2E6C78(v1);
    v7 = *v6;
    *v6 = 6;
    v26 = v7;
    v8 = v6[1];
    v6[1] = v27;
    v27 = v8;
    sub_23F06357C(&v27, v7);
  }

  sub_23F2E7C64(v1);
  if (*(v1 + 88) == 1 && *(v1 + 80) == 7 && ((v9 = *(v1 + 72), v10 = *v9, v11 = *(v9 + 3), v10 == *"version") ? (v12 = v11 == *"sion") : (v12 = 0), v12))
  {
    *(v1 + 96) = v21;
    *(v1 + 100) = 1;
    *(v1 + 88) = 0;
  }

  else
  {
    v26 = 6;
    v27 = v21;
    v13 = sub_23F2E6C78(v1);
    v14 = *v13;
    *v13 = 6;
    v26 = v14;
    v15 = v13[1];
    v13[1] = v27;
    v27 = v15;
    sub_23F06357C(&v27, v14);
  }

  sub_23F2E7C64(v1);
  sub_23F2E7C64(v1);
  if (v25 < 0)
  {
    operator delete(__p);
    if ((v23 & 0x80000000) == 0)
    {
LABEL_17:
      if ((v20 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_22;
    }
  }

  else if ((v23 & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

  operator delete(v22);
  if ((v20 & 0x80000000) == 0)
  {
LABEL_18:
    if ((v17 & 0x80000000) == 0)
    {
      return;
    }

LABEL_23:
    operator delete(v16);
    return;
  }

LABEL_22:
  operator delete(v19);
  if (v17 < 0)
  {
    goto LABEL_23;
  }
}

void sub_23F03BBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23F06357C((v9 + 8), 6);
  sub_23EF531B0(&a9);
  _Unwind_Resume(a1);
}

void sub_23F03BC14(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    if (*(a2 + 40))
    {
      v12 = *(a2 + 24);
      LOBYTE(v13[0]) = *(a2 + 32);
      sub_23EF2F9B0(v12, v13, 1);
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
        LOBYTE(v13[0]) = *(a2 + 32);
        sub_23EF2F9B0(v5, v13, 1);
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
      LOBYTE(v13[0]) = *(a2 + 32);
      sub_23EF2F9B0(v8, v13, 1);
      goto LABEL_12;
    }

    if (*(a2 + 40))
    {
      v7 = *(a2 + 24);
      LOBYTE(v13[0]) = *(a2 + 32);
      sub_23EF2F9B0(v7, v13, 1);
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
  LOBYTE(v13[0]) = v6;
  sub_23EF2F9B0(v9, v13, 1);
  v10 = *(a2 + 40);
  *(a2 + 40) = v10 + 1;
  if (v10 != -1)
  {
    v11 = *(a2 + 24);
    LOBYTE(v13[0]) = *(a2 + 32);
    sub_23EF2F9B0(v11, v13, 1);
  }

  MEMORY[0x245CAC910](*(a2 + 24), 1);
  ++*(a2 + 40);
  v14 = 1;
  v13[0] = a2;
  v13[1] = v3 + 200;
  v13[2] = &v14;
  sub_23F03BDF4(v13);
}

void sub_23F03BDF4(uint64_t a1)
{
  v1 = *a1;
  sub_23F03AF14(v3, *(a1 + 8));
  sub_23F2F45C4(v1, v3);
  sub_23F2F3D94(v1, v5);
  sub_23F2F45C4(v1, &v6);
  if (*(v1 + 40))
  {
    v2 = *(v1 + 24);
    v13 = *(v1 + 32);
    sub_23EF2F9B0(v2, &v13, 1);
  }

  MEMORY[0x245CAC910](*(v1 + 24), v8);
  ++*(v1 + 40);
  sub_23F2F45C4(v1, &v9);
  sub_23F2F45C4(v1, &__p);
  if (v12 < 0)
  {
    operator delete(__p);
    if ((v10 & 0x80000000) == 0)
    {
LABEL_5:
      if ((v7 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((v10 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(v9);
  if ((v7 & 0x80000000) == 0)
  {
LABEL_6:
    if ((v4 & 0x80000000) == 0)
    {
      return;
    }

LABEL_11:
    operator delete(v3[0]);
    return;
  }

LABEL_10:
  operator delete(v6);
  if (v4 < 0)
  {
    goto LABEL_11;
  }
}

void sub_23F03BF0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF531B0(va);
  _Unwind_Resume(a1);
}

void sub_23F03BF20(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    LODWORD(v9[0]) = 4;
    sub_23F295368(a2 + 24, *(a2 + 32), v9, v9 + 4, 4uLL);
    v7 = v9[0];
    sub_23F294D84(a2);
    sub_23EF87798(a2, v3 + 16, v7);
  }

  else if (v4 == 1)
  {
    LODWORD(v9[0]) = 5;
    sub_23F295368(a2 + 24, *(a2 + 32), v9, v9 + 4, 4uLL);
    v6 = v9[0];
    sub_23F294D84(a2);
    sub_23EF87668(a2, v3 + 16, v6);
  }

  else
  {
    if (v4)
    {
      sub_23EF41D6C();
    }

    LODWORD(v9[0]) = 6;
    sub_23F295368(a2 + 24, *(a2 + 32), v9, v9 + 4, 4uLL);
    v5 = v9[0];
    sub_23F294D84(a2);
    sub_23EF5B8BC(a2, v3 + 16, v5);
  }

  v8 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v8 + 10) = *(a2 + 32) - v8 - 18;
  *(a2 + 56) -= 8;
  LODWORD(v9[0]) = 1;
  sub_23F295368(a2 + 24, *(a2 + 32), v9, v9 + 4, 4uLL);
  v10 = v9[0];
  v9[0] = a2;
  v9[1] = v3 + 200;
  v9[2] = &v10;
  sub_23F03C0A8(v9);
}

void sub_23F03C0A8(uint64_t *a1)
{
  v1 = *a1;
  sub_23F03AF14(&v14, a1[1]);
  v2 = v16;
  if ((v16 & 0x80u) != 0)
  {
    v2 = v15;
  }

  __src = v2;
  sub_23F295368(v1 + 24, *(v1 + 32), &__src, &v31, 8uLL);
  if ((v16 & 0x80u) == 0)
  {
    v3 = &v14;
  }

  else
  {
    v3 = v14;
  }

  if ((v16 & 0x80u) == 0)
  {
    v4 = v16;
  }

  else
  {
    v4 = v15;
  }

  sub_23F295368(v1 + 24, *(v1 + 32), v3, &v3[v4], v4);
  sub_23F295368(v1 + 24, *(v1 + 32), &v17, v18, 1uLL);
  v5 = v21;
  if ((v21 & 0x80u) != 0)
  {
    v5 = v20;
  }

  __src = v5;
  sub_23F295368(v1 + 24, *(v1 + 32), &__src, &v31, 8uLL);
  if ((v21 & 0x80u) == 0)
  {
    v6 = &v19;
  }

  else
  {
    v6 = v19;
  }

  if ((v21 & 0x80u) == 0)
  {
    v7 = v21;
  }

  else
  {
    v7 = v20;
  }

  sub_23F295368(v1 + 24, *(v1 + 32), v6, &v6[v7], v7);
  sub_23F295368(v1 + 24, *(v1 + 32), v22, v23, 4uLL);
  v8 = v26;
  if ((v26 & 0x80u) != 0)
  {
    v8 = v25;
  }

  __src = v8;
  sub_23F295368(v1 + 24, *(v1 + 32), &__src, &v31, 8uLL);
  if ((v26 & 0x80u) == 0)
  {
    v9 = &v24;
  }

  else
  {
    v9 = v24;
  }

  if ((v26 & 0x80u) == 0)
  {
    v10 = v26;
  }

  else
  {
    v10 = v25;
  }

  sub_23F295368(v1 + 24, *(v1 + 32), v9, &v9[v10], v10);
  v11 = v29;
  if ((v29 & 0x80u) != 0)
  {
    v11 = v28;
  }

  __src = v11;
  sub_23F295368(v1 + 24, *(v1 + 32), &__src, &v31, 8uLL);
  if ((v29 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v29 & 0x80u) == 0)
  {
    v13 = v29;
  }

  else
  {
    v13 = v28;
  }

  sub_23F295368(v1 + 24, *(v1 + 32), p_p, &p_p[v13], v13);
  if (v29 < 0)
  {
    operator delete(__p);
    if ((v26 & 0x80000000) == 0)
    {
LABEL_35:
      if ((v21 & 0x80000000) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_40;
    }
  }

  else if ((v26 & 0x80000000) == 0)
  {
    goto LABEL_35;
  }

  operator delete(v24);
  if ((v21 & 0x80000000) == 0)
  {
LABEL_36:
    if ((v16 & 0x80000000) == 0)
    {
      return;
    }

LABEL_41:
    operator delete(v14);
    return;
  }

LABEL_40:
  operator delete(v19);
  if (v16 < 0)
  {
    goto LABEL_41;
  }
}

void sub_23F03C2FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF531B0(va);
  _Unwind_Resume(a1);
}

void sub_23F03C310(uint64_t a1, __int128 *a2)
{
  sub_23F03AF14(v3, a2);
  (*(*a1 + 144))(a1, v3);
  (*(*a1 + 80))(a1, &v5);
  (*(*a1 + 144))(a1, &v6);
  (*(*a1 + 104))(a1, &v8);
  (*(*a1 + 144))(a1, &v9);
  (*(*a1 + 144))(a1, &__p);
  if (v12 < 0)
  {
    operator delete(__p);
    if ((v10 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v7 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v10 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v9);
  if ((v7 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v4 & 0x80000000) == 0)
    {
      return;
    }

LABEL_9:
    operator delete(v3[0]);
    return;
  }

LABEL_8:
  operator delete(v6);
  if (v4 < 0)
  {
    goto LABEL_9;
  }
}

void sub_23F03C4D0(char **a1, uint64_t a2)
{
  v15 = a2;
  v16 = a2;
  v4 = *a1;
  v5 = **a1;
  v6 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285179A70, 0);
  if (v6)
  {
    sub_23F03CC2C(&v16, v6);
  }

  v16 = a2;
  v7 = *v4;
  v8 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285179AA8, 0);
  if (v8)
  {
    sub_23F03D248(&v16, v8);
  }

  else
  {
    v16 = a2;
    v9 = *v4;
    v10 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285179B30, 0);
    if (v10)
    {
      sub_23F03D6A0(&v16, v10);
    }

    v16 = a2;
    v11 = *v4;
    v12 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285179B68, 0);
    if (v12)
    {
      sub_23F03DCBC(&v16, v12);
    }

    else
    {
      v16 = a2;
      v13 = *v4;
      v14 = __dynamic_cast(a1, &unk_28518D8F0, &unk_28518B930, 0);
      if (v14)
      {
        sub_23F03E348(&v16, v14);
      }

      else
      {
        sub_23F03C69C(&v15, a1);
      }
    }
  }
}

uint64_t sub_23F03C69C(uint64_t *a1, void **a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 != 1)
  {
    if (v4 != 2)
    {
      sub_23EF41D6C();
    }

    sub_23EF82E08(v3 + 16, v23);
    sub_23EF53784(v35, v23);
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

  sub_23EF82B6C(v3 + 16, v23);
  sub_23EF53784(v35, v23);
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
  if (v33 != v32)
  {
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
    operator delete(v23[2]);
  }

  if (*(v3 + 192))
  {
    sub_23EF41D6C();
  }

LABEL_76:
  v19 = *a2;
  v23[0] = a2[1];
  v20 = v23[0];
  v35[0] = 6;
  v19[13](a2, v35);
  if (v20 < 1)
  {
    if (v35[0] < 3)
    {
      sub_23EF69318(v35, a2, v3 + 16, v35[0]);
    }

    else
    {
      sub_23EF69524(a2, v3 + 16, v35[0]);
    }
  }

  else
  {
    sub_23EF68F0C(v23, a2, v3 + 16, v35[0]);
  }

  LODWORD(v23[0]) = 1;
  (*(*a2 + 13))(a2, v23);
  (*(*a2 + 18))(a2, v3 + 200);
  (*(*a2 + 10))(a2, v3 + 224);
  (*(*a2 + 18))(a2, v3 + 232);
  (*(*a2 + 13))(a2, v3 + 256);
  (*(*a2 + 18))(a2, v3 + 264);
  result = (*(*a2 + 18))(a2, v3 + 288);
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23F03CC2C(uint64_t *a1, uint64_t a2)
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
    sub_23EF82B6C(v3 + 16, &v20);
    sub_23EF53784(v33, &v20);
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
        operator delete(v21);
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

  sub_23EF82E08(v3 + 16, &v20);
  sub_23EF53784(v33, &v20);
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

void sub_23F03D214(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F03D248(uint64_t *a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 != 1)
  {
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
  if (v30 != v29)
  {
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
  LODWORD(v20[0]) = 6;
  sub_23F2F7EFC(*(a2 + 48), v20);
  sub_23EF62320(v20, a2, v3 + 16, v20[0]);
  LODWORD(v20[0]) = 1;
  sub_23F2F7EFC(*(a2 + 48), v20);
  sub_23F2F856C(*(a2 + 48), (v3 + 200));
  sub_23F2F7BA4(*(a2 + 48), (v3 + 224));
  sub_23F2F856C(*(a2 + 48), (v3 + 232));
  sub_23F2F7EFC(*(a2 + 48), (v3 + 256));
  sub_23F2F856C(*(a2 + 48), (v3 + 264));
  sub_23F2F856C(*(a2 + 48), (v3 + 288));
  v19 = *MEMORY[0x277D85DE8];
}

void sub_23F03D6A0(uint64_t *a1, uint64_t a2)
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
    sub_23EF82B6C(v3 + 16, &v20);
    sub_23EF53784(v33, &v20);
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
        operator delete(v21);
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

  sub_23EF82E08(v3 + 16, &v20);
  sub_23EF53784(v33, &v20);
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

void sub_23F03DC88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F03DCBC(uint64_t *a1, uint64_t a2)
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 != 1)
  {
    if (v4 != 2)
    {
      sub_23EF41D6C();
    }

    sub_23EF82E08(v3 + 16, v27);
    sub_23EF53784(v40, v27);
    sub_23EF88F40(v3 + 16, v40);
    if (v52 == 1)
    {
      v9 = __p;
      if (__p)
      {
        v10 = v51;
        v11 = __p;
        if (v51 != __p)
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

        v51 = v9;
        operator delete(v11);
      }
    }

    if (v49 == 1 && v48 < 0)
    {
      operator delete(v47);
    }

    if (v46 == 1 && v45 < 0)
    {
      operator delete(v44);
    }

    if (v43 == 1 && v42 < 0)
    {
      operator delete(v41);
    }

    if (v39 != 1)
    {
      goto LABEL_66;
    }

    v13 = v37;
    if (!v37)
    {
      goto LABEL_66;
    }

    v17 = v38;
    v15 = v37;
    if (v38 == v37)
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
        v15 = v37;
        goto LABEL_65;
      }
    }
  }

  sub_23EF82B6C(v3 + 16, v27);
  sub_23EF53784(v40, v27);
  sub_23EF88F40(v3 + 16, v40);
  if (v52 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v51;
      v7 = __p;
      if (v51 != __p)
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

      v51 = v5;
      operator delete(v7);
    }
  }

  if (v49 == 1 && v48 < 0)
  {
    operator delete(v47);
  }

  if (v46 == 1 && v45 < 0)
  {
    operator delete(v44);
  }

  if (v43 == 1 && v42 < 0)
  {
    operator delete(v41);
  }

  if (v39 != 1)
  {
    goto LABEL_66;
  }

  v13 = v37;
  if (!v37)
  {
    goto LABEL_66;
  }

  v14 = v38;
  v15 = v37;
  if (v38 != v37)
  {
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

LABEL_65:
  v38 = v13;
  operator delete(v15);
LABEL_66:
  if (v36 == 1 && v35 < 0)
  {
    operator delete(v34);
  }

  if (v33 == 1 && v32 < 0)
  {
    operator delete(v31);
  }

  if (v30 == 1 && v29 < 0)
  {
    operator delete(v28);
  }

  if (*(v3 + 192))
  {
    sub_23EF41D6C();
  }

LABEL_76:
  LODWORD(v27[0]) = 6;
  sub_23F2F5830(a2, v27);
  if (LODWORD(v27[0]) >= 6)
  {
    v19 = 6;
  }

  else
  {
    v19 = v27[0];
  }

  if (LODWORD(v27[0]) > 2)
  {
    sub_23EF65EFC(a2, v3 + 16, v19);
    while (1)
    {
      if ((*(a2 + 131) & 1) != 0 || (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_95;
      }

      sub_23F2F7390(a2, v27);
      if (SHIBYTE(v28) < 0)
      {
        if (v27[1] == 1 && *(a2 + 72) == *v27[0])
        {
LABEL_90:
          v20 = 0;
          if (SHIBYTE(v28) < 0)
          {
            goto LABEL_93;
          }

          goto LABEL_81;
        }
      }

      else if (SHIBYTE(v28) == 1 && *(a2 + 72) == LOBYTE(v27[0]))
      {
        goto LABEL_90;
      }

      v20 = 1;
      if (SHIBYTE(v28) < 0)
      {
LABEL_93:
        operator delete(v27[0]);
      }

LABEL_81:
      if ((v20 & 1) == 0)
      {
        goto LABEL_95;
      }
    }
  }

  sub_23EF65CF0(v27, a2, v3 + 16, v19);
LABEL_95:
  LODWORD(v27[0]) = 1;
  sub_23F2F5830(a2, v27);
  ++*(a2 + 80);
  if (*(a2 + 128) == 1 && *(a2 + 131) == 1)
  {
    *(a2 + 132) = 1;
  }

  else
  {
    sub_23F2F7390(a2, v27);
    if (*(v3 + 223) < 0)
    {
      operator delete(*(v3 + 200));
    }

    *(v3 + 200) = *v27;
    *(v3 + 216) = v28;
    ++*(a2 + 104);
  }

  sub_23F2F4C14(a2, (v3 + 224));
  ++*(a2 + 80);
  if (*(a2 + 128) == 1 && *(a2 + 131) == 1)
  {
    *(a2 + 132) = 1;
  }

  else
  {
    sub_23F2F7390(a2, v27);
    if (*(v3 + 255) < 0)
    {
      operator delete(*(v3 + 232));
    }

    *(v3 + 232) = *v27;
    *(v3 + 248) = v28;
    ++*(a2 + 104);
  }

  sub_23F2F5830(a2, (v3 + 256));
  v21 = *(a2 + 80);
  *(a2 + 80) = v21 + 1;
  if (*(a2 + 128) == 1 && *(a2 + 131) == 1)
  {
    *(a2 + 132) = 1;
    v22 = v3 + 288;
    *(a2 + 80) = v21 + 2;
  }

  else
  {
    sub_23F2F7390(a2, v27);
    v23 = (v3 + 264);
    if (*(v3 + 287) < 0)
    {
      operator delete(*v23);
    }

    *v23 = *v27;
    *(v3 + 280) = v28;
    ++*(a2 + 104);
    v24 = *(a2 + 128);
    v22 = v3 + 288;
    ++*(a2 + 80);
    if ((v24 & 1) == 0)
    {
      goto LABEL_115;
    }
  }

  if (*(a2 + 131) == 1)
  {
    *(a2 + 132) = 1;
    goto LABEL_118;
  }

LABEL_115:
  sub_23F2F7390(a2, v27);
  if (*(v3 + 311) < 0)
  {
    operator delete(*v22);
  }

  v25 = *v27;
  *(v22 + 16) = v28;
  *v22 = v25;
  ++*(a2 + 104);
LABEL_118:
  v26 = *MEMORY[0x277D85DE8];
}

void sub_23F03E348(uint64_t *a1, void *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 != 1)
  {
    if (v4 != 2)
    {
      sub_23EF41D6C();
    }

    sub_23EF82E08(v3 + 16, v26);
    sub_23EF53784(v39, v26);
    sub_23EF88F40(v3 + 16, v39);
    if (v51 == 1)
    {
      v9 = __p;
      if (__p)
      {
        v10 = v50;
        v11 = __p;
        if (v50 != __p)
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

        v50 = v9;
        operator delete(v11);
      }
    }

    if (v48 == 1 && v47 < 0)
    {
      operator delete(v46);
    }

    if (v45 == 1 && v44 < 0)
    {
      operator delete(v43);
    }

    if (v42 == 1 && v41 < 0)
    {
      operator delete(v40);
    }

    if (v38 != 1)
    {
      goto LABEL_66;
    }

    v13 = v36;
    if (!v36)
    {
      goto LABEL_66;
    }

    v17 = v37;
    v15 = v36;
    if (v37 == v36)
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
        v15 = v36;
        goto LABEL_65;
      }
    }
  }

  sub_23EF82B6C(v3 + 16, v26);
  sub_23EF53784(v39, v26);
  sub_23EF88F40(v3 + 16, v39);
  if (v51 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v50;
      v7 = __p;
      if (v50 != __p)
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

      v50 = v5;
      operator delete(v7);
    }
  }

  if (v48 == 1 && v47 < 0)
  {
    operator delete(v46);
  }

  if (v45 == 1 && v44 < 0)
  {
    operator delete(v43);
  }

  if (v42 == 1 && v41 < 0)
  {
    operator delete(v40);
  }

  if (v38 != 1)
  {
    goto LABEL_66;
  }

  v13 = v36;
  if (!v36)
  {
    goto LABEL_66;
  }

  v14 = v37;
  v15 = v36;
  if (v37 != v36)
  {
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

LABEL_65:
  v37 = v13;
  operator delete(v15);
LABEL_66:
  if (v35 == 1 && v34 < 0)
  {
    operator delete(v33);
  }

  if (v32 == 1 && v31 < 0)
  {
    operator delete(v30);
  }

  if (v29 == 1 && v28 < 0)
  {
    operator delete(v27);
  }

  if (*(v3 + 192))
  {
    sub_23EF41D6C();
  }

LABEL_76:
  sub_23EF67614(v26, a2, v3 + 16);
  v19 = a2[6];
  v20 = a2[7];
  v21 = v20 >= v19;
  v22 = v20 - v19;
  if (!v21)
  {
    v22 = 0;
  }

  if (v22 <= 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read");
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  v23 = *(a2[3] + v19);
  a2[6] = v19 + 4;
  v39[0] = v23;
  v26[0] = a2;
  v26[1] = v3 + 200;
  v27 = v39;
  sub_23F03E7B8(v26);
  v24 = *MEMORY[0x277D85DE8];
}

double sub_23F03E7B8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  sub_23F295150(*a1, v2);
  v3 = v1[6];
  if (v1[7] <= v3)
  {
    goto LABEL_8;
  }

  *(v2 + 24) = *(v1[3] + v3);
  ++v1[6];
  sub_23F295150(v1, v2 + 32);
  v4 = v1[6];
  v5 = v1[7];
  v6 = v5 >= v4;
  v7 = v5 - v4;
  if (!v6)
  {
    v7 = 0;
  }

  if (v7 <= 3)
  {
LABEL_8:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read");
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  *(v2 + 56) = *(v1[3] + v4);
  v1[6] += 4;
  sub_23F295150(v1, v2 + 64);

  return sub_23F295150(v1, v2 + 88);
}

uint64_t sub_23F03E8E0(uint64_t a1)
{
  *a1 = &unk_28517B698;
  sub_23EF44860(a1 + 112);
  *(a1 + 8) = &unk_28517B6E0;
  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
    if (*(a1 + 48) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 48) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

LABEL_7:
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    MEMORY[0x245CACD00](v2, 0x1000C4072FAA15ELL);
  }

  return a1;
}

void sub_23F03E9AC(uint64_t a1)
{
  *a1 = &unk_28517B698;
  sub_23EF44860(a1 + 112);
  *(a1 + 8) = &unk_28517B6E0;
  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
    if (*(a1 + 48) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 48) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

LABEL_7:
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    MEMORY[0x245CACD00](v2, 0x1000C4072FAA15ELL);
  }

  JUMPOUT(0x245CACD00);
}

void sub_23F03EAA8(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E3945B8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3945B8))
    {
      sub_23F03FE40();
    }
  }

  (*(*(a1 + 8) + 24))(__p, a1 + 8);
  sub_23EF44334(&xmmword_27E3945A0, "{", __p, ",");
}

void sub_23F03EBA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F03EBC4(uint64_t a1@<X8>)
{
  *(a1 + 23) = 8;
  strcpy(a1, "cv3d.viz");
  *(a1 + 24) = 11;
}

uint64_t sub_23F03EC40(uint64_t a1)
{
  *a1 = &unk_28517B6E0;
  if (*(a1 + 72) == 1 && *(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
    if (*(a1 + 40) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 40) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

LABEL_7:
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    MEMORY[0x245CACD00](v2, 0x1000C4072FAA15ELL);
  }

  return a1;
}

uint64_t sub_23F03ECE8(uint64_t a1)
{
  *a1 = &unk_28517B698;
  sub_23EF44860(a1 + 112);
  *(a1 + 8) = &unk_28517B6E0;
  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
    if (*(a1 + 48) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 48) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

LABEL_7:
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    MEMORY[0x245CACD00](v2, 0x1000C4072FAA15ELL);
  }

  return a1;
}

void sub_23F03EDB4(uint64_t a1)
{
  *a1 = &unk_28517B698;
  sub_23EF44860(a1 + 112);
  *(a1 + 8) = &unk_28517B6E0;
  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
    if (*(a1 + 48) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 48) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

LABEL_7:
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    MEMORY[0x245CACD00](v2, 0x1000C4072FAA15ELL);
  }

  JUMPOUT(0x245CACD00);
}

void sub_23F03EEA0()
{
  if ((atomic_load_explicit(&qword_27E394598, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E394598))
    {
      sub_23F03FBAC();
    }
  }

  sub_23F03F660(&xmmword_27E394580, "{");
}

void sub_23F03EF54(uint64_t a1@<X8>)
{
  *(a1 + 23) = 15;
  strcpy(a1, "unknown_package");
  *(a1 + 24) = 0;
}

void sub_23F03EF80(uint64_t a1)
{
  *a1 = &unk_28517B6E0;
  if (*(a1 + 72) == 1 && *(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
    if (*(a1 + 40) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 40) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

LABEL_7:
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    MEMORY[0x245CACD00](v2, 0x1000C4072FAA15ELL);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F03F048(char **a1, char **lpsrc)
{
  v4 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28517BF90, &unk_28517B700, 0);
  if (result)
  {
    if (a1 == lpsrc)
    {
      return 1;
    }

    else
    {

      return sub_23F05A7EC((a1 + 1), result + 8);
    }
  }

  return result;
}

void sub_23F03F0E8()
{
  if ((atomic_load_explicit(&qword_27E394578, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394578))
  {
    sub_23F302BD0("cv3d::kit::viz::Transform3]", 0x1AuLL, &xmmword_27E394560);
    __cxa_guard_release(&qword_27E394578);
  }

  sub_23F03F19C(&xmmword_27E394560, "{");
}

void sub_23F03F19C(__int128 *a1, uint64_t a2)
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
  sub_23F03F348();
}

void sub_23F03F2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F03F2F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F03F30C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F03F320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F03F334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F03F550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F03F594(uint64_t a1)
{
  *a1 = &unk_28517B698;
  sub_23EF44860(a1 + 112);
  *(a1 + 8) = &unk_28517B6E0;
  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
    if (*(a1 + 48) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 48) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

LABEL_7:
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    MEMORY[0x245CACD00](v2, 0x1000C4072FAA15ELL);
  }

  return a1;
}

void sub_23F03F660(__int128 *a1, uint64_t a2)
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
  sub_23F03F890();
}

void sub_23F03F800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F03F818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F03F82C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F03F840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F03F854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F03F868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F03F87C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F03FB24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  __cxa_guard_abort(&qword_27E394578);
  v23 = *(v21 - 56);
  *(v21 - 56) = 0;
  if (!v23)
  {
    _Unwind_Resume(a1);
  }

  sub_23F302A54(v21 - 56, v23);
  _Unwind_Resume(a1);
}

void sub_23F03FC80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F03FE00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_23EF3291C(&a9);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23F03FE40()
{
  v1 = *MEMORY[0x277D85DE8];
  v0[23] = 16;
  strcpy(v0, "viz::PackageData");
  operator new();
}

void sub_23F040078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
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

__n128 sub_23F04012C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_28517B698;
  v2 = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a1 + 8) = &unk_28517B6E0;
  *(a1 + 16) = v2;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    v3 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v3;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 24) = 0;
    *(a1 + 48) = 1;
  }

  *(a1 + 56) = 0;
  *(a1 + 80) = 0;
  if (*(a2 + 80) == 1)
  {
    v4 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v4;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 56) = 0;
    *(a1 + 80) = 1;
  }

  v5 = *(a2 + 96);
  *(a1 + 112) = 0;
  *(a1 + 96) = v5;
  *(a1 + 136) = 0;
  if (*(a2 + 136) == 1)
  {
    v6 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 112) = v6;
    *(a2 + 120) = 0;
    *(a2 + 128) = 0;
    *(a2 + 112) = 0;
    *(a1 + 136) = 1;
  }

  result = *(a2 + 144);
  v8 = *(a2 + 160);
  *(a1 + 168) = 0;
  *(a1 + 160) = v8;
  *(a1 + 144) = result;
  *(a1 + 192) = 0;
  if (*(a2 + 192) == 1)
  {
    result = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 168) = result;
    *(a2 + 176) = 0;
    *(a2 + 184) = 0;
    *(a2 + 168) = 0;
    *(a1 + 192) = 1;
    *(a1 + 208) = 0;
    v9 = (a1 + 208);
    *(a1 + 256) = 0;
    if (*(a2 + 256) != 1)
    {
LABEL_9:
      *(a1 + 272) = 0;
      *(a1 + 296) = 0;
      if (*(a2 + 296) != 1)
      {
        return result;
      }

LABEL_13:
      *(a1 + 272) = 0;
      *(a1 + 280) = 0;
      *(a1 + 288) = 0;
      result = *(a2 + 272);
      *(a1 + 272) = result;
      *(a1 + 288) = *(a2 + 288);
      *(a2 + 272) = 0;
      *(a2 + 280) = 0;
      *(a2 + 288) = 0;
      *(a1 + 296) = 1;
      return result;
    }
  }

  else
  {
    *(a1 + 208) = 0;
    v9 = (a1 + 208);
    *(a1 + 256) = 0;
    if (*(a2 + 256) != 1)
    {
      goto LABEL_9;
    }
  }

  _X2 = 0;
  _X3 = 0;
  result = *(a2 + 208);
  v9[1].n128_u64[0] = *(a2 + 224);
  *v9 = result;
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(a2 + 208) = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  *(a1 + 240) = _X2;
  *(a1 + 248) = 0;
  *(a1 + 256) = 1;
  *(a1 + 272) = 0;
  *(a1 + 296) = 0;
  if (*(a2 + 296) == 1)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t *sub_23F040328(uint64_t *a1)
{
  if (*(a1 + 64) == 1 && *(a1 + 63) < 0)
  {
    operator delete(a1[5]);
    if (*(a1 + 32) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 32) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(a1[1]);
  }

LABEL_7:
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MEMORY[0x245CACD00](v2, 0x1000C4072FAA15ELL);
  }

  return a1;
}

BOOL sub_23F0403B4(uint64_t a1, uint64_t a2)
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
    goto LABEL_18;
  }

  if (v35 != v20)
  {
    goto LABEL_18;
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
  if (sub_23F04C458(v18, v17))
  {
    v6 = sub_23F05C498(a1 + 200, a2 + 200);
    if (v33 != 1)
    {
      goto LABEL_32;
    }
  }

  else
  {
LABEL_18:
    v6 = 0;
    if (v33 != 1)
    {
      goto LABEL_32;
    }
  }

  v7 = __p;
  if (__p)
  {
    v8 = v32;
    v9 = __p;
    if (v32 == __p)
    {
LABEL_31:
      v32 = v7;
      operator delete(v9);
      goto LABEL_32;
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
LABEL_26:
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
          goto LABEL_26;
        }
      }

      if (v8 == v7)
      {
        v9 = __p;
        goto LABEL_31;
      }
    }
  }

LABEL_32:
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
LABEL_54:
        v47 = v11;
        operator delete(v13);
        goto LABEL_55;
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
LABEL_49:
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
            goto LABEL_49;
          }
        }

        if (v12 == v11)
        {
          v13 = v46;
          goto LABEL_54;
        }
      }
    }
  }

LABEL_55:
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

void sub_23F040728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  sub_23EF44860(v47);
  sub_23EF44860(&a47);
  _Unwind_Resume(a1);
}

void sub_23F040764(char **a1, uint64_t a2)
{
  v15 = a2;
  v16 = a2;
  v4 = *a1;
  v5 = **a1;
  v6 = __dynamic_cast(a1, &unk_28518D908, &unk_2851798D0, 0);
  if (v6)
  {
    sub_23F040D78(&v16, v6);
  }

  v16 = a2;
  v7 = *v4;
  v8 = __dynamic_cast(a1, &unk_28518D908, &unk_285179918, 0);
  if (v8)
  {
    sub_23F041E30(&v16, v8);
  }

  else
  {
    v16 = a2;
    v9 = *v4;
    v10 = __dynamic_cast(a1, &unk_28518D908, &unk_2851799A0, 0);
    if (v10)
    {
      sub_23F042DF4(&v16, v10);
    }

    v16 = a2;
    v11 = *v4;
    v12 = __dynamic_cast(a1, &unk_28518D908, &unk_2851799E8, 0);
    if (v12)
    {
      sub_23F043AF8(&v16, v12);
    }

    else
    {
      v16 = a2;
      v13 = *v4;
      v14 = __dynamic_cast(a1, &unk_28518D908, &unk_28518B990, 0);
      if (v14)
      {
        sub_23F04418C(&v16, v14);
      }

      else
      {
        sub_23F040930(&v15, a1);
      }
    }
  }
}

void sub_23F040930(uint64_t *a1, _DWORD *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    v9 = a2[2];
    v16[0] = 4;
    (*(*a2 + 104))(a2, v16);
    v10 = v16[0];
    if (v9 < 1)
    {
      sub_23EF886A8(a2, v3 + 16, v16[0]);
    }

    else
    {
      if (v9 == 2)
      {
        v16[0] = 3;
        (*(*a2 + 104))(a2, v16);
      }

      (*(*a2 + 16))(a2);
      sub_23EF886A8(a2, v3 + 16, v10);
      (*(*a2 + 24))(a2);
    }
  }

  else if (v4 == 1)
  {
    v7 = a2[2];
    v16[0] = 5;
    (*(*a2 + 104))(a2, v16);
    v8 = v16[0];
    if (v7 < 1)
    {
      sub_23EF87D4C(a2, v3 + 16, v16[0]);
    }

    else
    {
      if (v7 == 2)
      {
        v16[0] = 3;
        (*(*a2 + 104))(a2, v16);
      }

      (*(*a2 + 16))(a2);
      sub_23EF87D4C(a2, v3 + 16, v8);
      (*(*a2 + 24))(a2);
    }
  }

  else
  {
    if (v4)
    {
      sub_23EF41D6C();
    }

    v5 = a2[2];
    v16[0] = 6;
    (*(*a2 + 104))(a2, v16);
    v6 = v16[0];
    if (v5 < 1)
    {
      sub_23EF5C460(a2, v3 + 16, v16[0]);
    }

    else
    {
      if (v5 == 2)
      {
        v16[0] = 3;
        (*(*a2 + 104))(a2, v16);
      }

      (*(*a2 + 16))(a2);
      sub_23EF5C460(a2, v3 + 16, v6);
      (*(*a2 + 24))(a2);
    }
  }

  v11 = *a2;
  v13 = *(a2 + 1);
  v16[0] = 1;
  (*(v11 + 104))(a2, v16);
  v15 = v16[0];
  v14[0] = a2;
  v14[1] = v3 + 200;
  v14[2] = &v13;
  v14[3] = &v15;
  if (v13 < 1)
  {
    sub_23F04163C(v16, v3 + 200);
    sub_23F04491C(a2, v16);
    if (v22 == 1 && v21 < 0)
    {
      operator delete(__p);
    }

    if (v19 == 1 && v18 < 0)
    {
      operator delete(v17);
    }
  }

  else
  {
    sub_23F044744(v14);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_23F040D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_23EF532BC(va);
  _Unwind_Resume(a1);
}

void sub_23F040D78(uint64_t *a1, uint64_t a2)
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

void sub_23F04117C(uint64_t a1, uint64_t a2)
{
  v11[22] = *MEMORY[0x277D85DE8];
  if (**(a1 + 40) <= 1u)
  {
    v3 = *(a1 + 88);
    *(a1 + 72) = *a2;
    if ((v3 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v4 = *(a2 + 16);
  sub_23F2E6438(a1 + 48, (a1 + 40));
  v5 = sub_23F2E72C0(a1);
  *(a1 + 40) = v5;
  if (*(a1 + 88))
  {
    *(a1 + 88) = 0;
  }

  if (*v5 < 2u && ((*(a1 + 72) = "version", *(a1 + 80) = 7, *(a1 + 88) = 1, *"version" == 1936876918) ? (v6 = *"sion" == 1852795251) : (v6 = 0), v6))
  {
    *(a1 + 96) = 1;
    *(a1 + 100) = 1;
    *(a1 + 88) = 0;
  }

  else
  {
    v10[0] = 6;
    v11[0] = 1;
    v7 = sub_23F2E72C0(a1);
    v8 = *v7;
    *v7 = 6;
    v10[0] = v8;
    v9 = v7[1];
    v7[1] = v11[0];
    v11[0] = v9;
    sub_23F0655DC(v11, v8);
  }

  sub_23F04163C(v10, v4);
  sub_23F041370(a1);
}

void sub_23F041370(uint64_t a1)
{
  if (**(a1 + 40) <= 1u)
  {
    v2 = *(a1 + 88);
    *(a1 + 72) = "src_to_dst";
    *(a1 + 80) = 10;
    if ((v2 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_23F2E6438(a1 + 48, (a1 + 40));
  v3 = sub_23F2E72C0(a1);
  *(a1 + 40) = v3;
  if (*(a1 + 88))
  {
    *(a1 + 88) = 0;
  }

  if (*v3 < 2u && ((*(a1 + 72) = "version", *(a1 + 80) = 7, *(a1 + 88) = 1, v4 = *(a1 + 72), v5 = *v4, v6 = *(v4 + 3), v5 == *"version") ? (v7 = v6 == *"sion") : (v7 = 0), v7))
  {
    *(a1 + 96) = 1;
    *(a1 + 100) = 1;
    *(a1 + 88) = 0;
  }

  else
  {
    v11 = 1;
    v8 = sub_23F2E72C0(a1);
    v9 = *v8;
    *v8 = 6;
    v10 = v8[1];
    v8[1] = v11;
    v11 = v10;
    sub_23F0655DC(&v11, v9);
  }

  sub_23F041780(a1);
}

uint64_t sub_23F04163C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  v4 = *(a2 + 72);
  v5 = *(a2 + 88);
  v6 = *(a2 + 104);
  v7 = *(a2 + 8);
  v8 = *(a2 + 24);
  v9 = *(a2 + 40);
  *(a1 + 120) = 0;
  *(a1 + 8) = v7;
  *(a1 + 24) = v8;
  *(a1 + 88) = v5;
  *(a1 + 104) = v6;
  *(a1 + 56) = v3;
  *(a1 + 72) = v4;
  *(a1 + 40) = v9;
  *(a1 + 144) = 0;
  if (*(a2 + 144) == 1)
  {
    if (*(a2 + 143) < 0)
    {
      v11 = a2;
      sub_23EF34EA4((a1 + 120), *(a2 + 120), *(a2 + 128));
      a2 = v11;
    }

    else
    {
      v10 = *(a2 + 120);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 120) = v10;
    }

    *(a1 + 144) = 1;
  }

  *(a1 + 152) = 0;
  *(a1 + 176) = 0;
  if (*(a2 + 176) == 1)
  {
    if (*(a2 + 175) < 0)
    {
      sub_23EF34EA4((a1 + 152), *(a2 + 152), *(a2 + 160));
    }

    else
    {
      v12 = *(a2 + 152);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 152) = v12;
    }

    *(a1 + 176) = 1;
  }

  return a1;
}

void sub_23F041734(_Unwind_Exception *exception_object)
{
  if (v1[176] == 1 && v1[175] < 0)
  {
    operator delete(*v3);
  }

  if (v1[144] == 1 && v1[143] < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F041780(uint64_t a1)
{
  if (**(a1 + 40) <= 1u)
  {
    v1 = *(a1 + 88);
    *(a1 + 72) = "se3_type";
    *(a1 + 80) = 8;
    if ((v1 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v2 = 0;
  sub_23F041BC0();
}

void sub_23F041B7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F041B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F041BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F041DEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F041E30(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    v7 = *(a2 + 24);
    if (*(v7 + 40) == 1)
    {
      v16 = (v7 + 16);
      sub_23F2FD25C(&v16, 4u);
    }

    else
    {
      sub_23F2FD4DC(&v16, (v7 + 8));
    }

    sub_23F2F887C(*(a2 + 24));
    sub_23EF84C34(a2, v3 + 16, 4u);
  }

  else if (v4 == 1)
  {
    v6 = *(a2 + 24);
    if (*(v6 + 40) == 1)
    {
      v16 = (v6 + 16);
      sub_23F2FD25C(&v16, 5u);
    }

    else
    {
      sub_23F2FD4DC(&v16, (v6 + 8));
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
      v16 = (v5 + 16);
      sub_23F2FD25C(&v16, 6u);
    }

    else
    {
      sub_23F2FD4DC(&v16, (v5 + 8));
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

  sub_23F041FFC(&v16, a2, v3 + 200);
}

void sub_23F041FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 24);
  if (*(v5 + 40) == 1)
  {
    v15[0] = (v5 + 16);
    sub_23F2FD25C(v15, 1u);
  }

  else
  {
    sub_23F2FD4DC(v15, (v5 + 8));
  }

  sub_23F2F887C(*(a2 + 24));
  sub_23F04163C(v15, a3);
  sub_23F042174(a2, v15);
  if (v20 == 1 && v19 < 0)
  {
    operator delete(__p);
  }

  if (v17 == 1 && v16 < 0)
  {
    operator delete(v15[15]);
  }

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

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t *sub_23F042174(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  if (*(v4 + 40) == 1)
  {
    v25 = (v4 + 16);
    sub_23F2FD25C(&v25, 1u);
  }

  else
  {
    sub_23F2FD4DC(&v25, (v4 + 8));
  }

  sub_23F2F887C(*(a1 + 24));
  sub_23F042464(a1, (a2 + 8));
  v5 = *(a1 + 24);
  v6 = *(v5[11] - 8);
  sub_23F2F866C(v5 + 6, v5[2] - v6 - 9);
  v7 = v5[6];
  if (v7)
  {
    memmove((v5[3] + v6), v5[7], v7);
  }

  v5[6] = 0;
  v8 = v5[10];
  v9 = v5[11] - 8;
  v5[11] = v9;
  if (v8 == v9)
  {
    v10 = *v5;
    v12 = v5[2];
    v11 = v5[3];
    std::ostream::write();
    if (*(v5 + 40) == 1)
    {
      free(v5[3]);
      *(v5 + 40) = 0;
    }
  }

  if (*(a2 + 144) == 1)
  {
    v24 = 1;
    v13 = *(a1 + 24);
    if (*(v13 + 40) == 1)
    {
      v25 = (v13 + 16);
      sub_23F2FC63C(&v25, &v24);
      v14 = *(a1 + 24);
      if (*(v14 + 40) != 1)
      {
        goto LABEL_12;
      }
    }

    else
    {
      LOBYTE(v25) = 1;
      v16 = *(v13 + 8);
      std::ostream::write();
      v14 = *(a1 + 24);
      if (*(v14 + 40) != 1)
      {
LABEL_12:
        sub_23F2FE7C4((v14 + 8), (a2 + 120));
        if (*(a2 + 176) == 1)
        {
          goto LABEL_22;
        }

LABEL_19:
        v24 = 0;
        v17 = *(a1 + 24);
        if (*(v17 + 40) == 1)
        {
          v25 = (v17 + 16);
          return sub_23F2FC63C(&v25, &v24);
        }

        else
        {
          LOBYTE(v25) = 0;
          v22 = *(v17 + 8);
          return std::ostream::write();
        }
      }
    }

    v25 = (v14 + 16);
    sub_23F2FE3A8(&v25, (a2 + 120));
    if (*(a2 + 176) != 1)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v24 = 0;
    v15 = *(a1 + 24);
    if (*(v15 + 40) == 1)
    {
      v25 = (v15 + 16);
      sub_23F2FC63C(&v25, &v24);
      if (*(a2 + 176) == 1)
      {
        goto LABEL_22;
      }

      goto LABEL_19;
    }

    LOBYTE(v25) = 0;
    v19 = *(v15 + 8);
    std::ostream::write();
    if (*(a2 + 176) != 1)
    {
      goto LABEL_19;
    }
  }

LABEL_22:
  v24 = 1;
  v20 = *(a1 + 24);
  if (*(v20 + 40) == 1)
  {
    v25 = (v20 + 16);
    sub_23F2FC63C(&v25, &v24);
    v21 = *(a1 + 24);
    if (*(v21 + 40) != 1)
    {
      return sub_23F2FE7C4((v21 + 8), (a2 + 152));
    }
  }

  else
  {
    LOBYTE(v25) = 1;
    v23 = *(v20 + 8);
    std::ostream::write();
    v21 = *(a1 + 24);
    if (*(v21 + 40) != 1)
    {
      return sub_23F2FE7C4((v21 + 8), (a2 + 152));
    }
  }

  v25 = (v21 + 16);
  return sub_23F2FE3A8(&v25, (a2 + 152));
}

uint64_t sub_23F042464(uint64_t a1, char *a2)
{
  v99 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v97 = *a2;
  v5 = *(a1 + 24);
  if (*(v5 + 40) == 1)
  {
    *v98 = v5 + 16;
    result = sub_23F2FC63C(v98, &v97);
  }

  else
  {
    if (v4 < 0)
    {
      v98[0] = -52;
      v98[1] = v4;
    }

    else
    {
      v98[0] = v4;
    }

    v7 = *(v5 + 8);
    result = std::ostream::write();
  }

  v8 = *a2;
  if (v8 > 3)
  {
    if (v8 == 4)
    {
      if (*(a2 + 26))
      {
        sub_23EF41D6C();
      }

      v12 = *(a1 + 24);
      if (*(v12 + 40) == 1)
      {
        *v98 = v12 + 16;
        sub_23F2FE06C(&v97, v98, a2 + 2);
        sub_23F2FE06C(&v97, v98, a2 + 3);
        sub_23F2FE06C(&v97, v98, a2 + 4);
        sub_23F2FE06C(&v97, v98, a2 + 5);
      }

      else
      {
        v38 = *(v12 + 8);
        v37 = (v12 + 8);
        v39 = *(a2 + 2);
        v98[0] = -54;
        *&v98[1] = bswap32(v39);
        std::ostream::write();
        v40 = *(a2 + 3);
        v98[0] = -54;
        *&v98[1] = bswap32(v40);
        v41 = *v37;
        std::ostream::write();
        v42 = *(a2 + 4);
        v98[0] = -54;
        *&v98[1] = bswap32(v42);
        v43 = *v37;
        std::ostream::write();
        v44 = *(a2 + 5);
        v98[0] = -54;
        *&v98[1] = bswap32(v44);
        v45 = *v37;
        std::ostream::write();
      }

      v46 = *(a1 + 24);
      if (*(v46 + 40) == 1)
      {
        *v98 = v46 + 16;
        sub_23F2FE06C(&v97, v98, a2 + 6);
        sub_23F2FE06C(&v97, v98, a2 + 7);
        sub_23F2FE06C(&v97, v98, a2 + 8);
        sub_23F2FE06C(&v97, v98, a2 + 9);
      }

      else
      {
        v70 = *(v46 + 8);
        v69 = (v46 + 8);
        v71 = *(a2 + 6);
        v98[0] = -54;
        *&v98[1] = bswap32(v71);
        std::ostream::write();
        v72 = *(a2 + 7);
        v98[0] = -54;
        *&v98[1] = bswap32(v72);
        v73 = *v69;
        std::ostream::write();
        v74 = *(a2 + 8);
        v98[0] = -54;
        *&v98[1] = bswap32(v74);
        v75 = *v69;
        std::ostream::write();
        v76 = *(a2 + 9);
        v98[0] = -54;
        *&v98[1] = bswap32(v76);
        v77 = *v69;
        std::ostream::write();
      }

      v78 = *(a1 + 24);
      if (*(v78 + 40) == 1)
      {
        *v98 = v78 + 16;
        sub_23F2FE06C(&v97, v98, a2 + 10);
        sub_23F2FE06C(&v97, v98, a2 + 11);
        sub_23F2FE06C(&v97, v98, a2 + 12);
        result = sub_23F2FE06C(&v97, v98, a2 + 13);
      }

      else
      {
        v88 = *(v78 + 8);
        v87 = (v78 + 8);
        v89 = *(a2 + 10);
        v98[0] = -54;
        *&v98[1] = bswap32(v89);
        std::ostream::write();
        v90 = *(a2 + 11);
        v98[0] = -54;
        *&v98[1] = bswap32(v90);
        v91 = *v87;
        std::ostream::write();
        v92 = *(a2 + 12);
        v98[0] = -54;
        *&v98[1] = bswap32(v92);
        v93 = *v87;
        std::ostream::write();
        v94 = *(a2 + 13);
        v98[0] = -54;
        *&v98[1] = bswap32(v94);
        v95 = *v87;
        result = std::ostream::write();
      }
    }

    else if (v8 == 5)
    {
      if (*(a2 + 26) != 1)
      {
        sub_23EF41D6C();
      }

      v10 = *(a1 + 24);
      if (*(v10 + 40) == 1)
      {
        *v98 = v10 + 16;
        sub_23F2FE154(&v97, v98, a2 + 1);
        sub_23F2FE154(&v97, v98, a2 + 2);
        sub_23F2FE154(&v97, v98, a2 + 3);
        sub_23F2FE154(&v97, v98, a2 + 4);
      }

      else
      {
        *&v98[1] = bswap64(*(a2 + 1));
        v21 = *(v10 + 8);
        v20 = (v10 + 8);
        v98[0] = -53;
        std::ostream::write();
        v22 = *(a2 + 2);
        v98[0] = -53;
        *&v98[1] = bswap64(v22);
        v23 = *v20;
        std::ostream::write();
        v24 = *(a2 + 3);
        v98[0] = -53;
        *&v98[1] = bswap64(v24);
        v25 = *v20;
        std::ostream::write();
        v26 = *(a2 + 4);
        v98[0] = -53;
        *&v98[1] = bswap64(v26);
        v27 = *v20;
        std::ostream::write();
      }

      v28 = *(a1 + 24);
      if (*(v28 + 40) == 1)
      {
        *v98 = v28 + 16;
        sub_23F2FE154(&v97, v98, a2 + 5);
        sub_23F2FE154(&v97, v98, a2 + 6);
        sub_23F2FE154(&v97, v98, a2 + 7);
        sub_23F2FE154(&v97, v98, a2 + 8);
      }

      else
      {
        *&v98[1] = bswap64(*(a2 + 5));
        v61 = *(v28 + 8);
        v60 = (v28 + 8);
        v98[0] = -53;
        std::ostream::write();
        v62 = *(a2 + 6);
        v98[0] = -53;
        *&v98[1] = bswap64(v62);
        v63 = *v60;
        std::ostream::write();
        v64 = *(a2 + 7);
        v98[0] = -53;
        *&v98[1] = bswap64(v64);
        v65 = *v60;
        std::ostream::write();
        v66 = *(a2 + 8);
        v98[0] = -53;
        *&v98[1] = bswap64(v66);
        v67 = *v60;
        std::ostream::write();
      }

      v68 = *(a1 + 24);
      if (*(v68 + 40) == 1)
      {
        *v98 = v68 + 16;
        sub_23F2FE154(&v97, v98, a2 + 9);
        sub_23F2FE154(&v97, v98, a2 + 10);
        sub_23F2FE154(&v97, v98, a2 + 11);
        result = sub_23F2FE154(&v97, v98, a2 + 12);
      }

      else
      {
        *&v98[1] = bswap64(*(a2 + 9));
        v80 = *(v68 + 8);
        v79 = (v68 + 8);
        v98[0] = -53;
        std::ostream::write();
        v81 = *(a2 + 10);
        v98[0] = -53;
        *&v98[1] = bswap64(v81);
        v82 = *v79;
        std::ostream::write();
        v83 = *(a2 + 11);
        v98[0] = -53;
        *&v98[1] = bswap64(v83);
        v84 = *v79;
        std::ostream::write();
        v85 = *(a2 + 12);
        v98[0] = -53;
        *&v98[1] = bswap64(v85);
        v86 = *v79;
        result = std::ostream::write();
      }
    }
  }

  else if (v8 == 1)
  {
    if (*(a2 + 26) != 2)
    {
      sub_23EF41D6C();
    }

    v11 = *(a1 + 24);
    if (*(v11 + 40) == 1)
    {
      *v98 = v11 + 16;
      sub_23F2FE06C(&v97, v98, a2 + 2);
      sub_23F2FE06C(&v97, v98, a2 + 3);
      sub_23F2FE06C(&v97, v98, a2 + 4);
    }

    else
    {
      v30 = *(v11 + 8);
      v29 = (v11 + 8);
      v31 = *(a2 + 2);
      v98[0] = -54;
      *&v98[1] = bswap32(v31);
      std::ostream::write();
      v32 = *(a2 + 3);
      v98[0] = -54;
      *&v98[1] = bswap32(v32);
      v33 = *v29;
      std::ostream::write();
      v34 = *(a2 + 4);
      v98[0] = -54;
      *&v98[1] = bswap32(v34);
      v35 = *v29;
      std::ostream::write();
    }

    v36 = *(a1 + 24);
    if (*(v36 + 40) == 1)
    {
      *v98 = v36 + 16;
      sub_23F2FE06C(&v97, v98, a2 + 5);
      sub_23F2FE06C(&v97, v98, a2 + 6);
      result = sub_23F2FE06C(&v97, v98, a2 + 7);
    }

    else
    {
      v54 = *(v36 + 8);
      v53 = (v36 + 8);
      v55 = *(a2 + 5);
      v98[0] = -54;
      *&v98[1] = bswap32(v55);
      std::ostream::write();
      v56 = *(a2 + 6);
      v98[0] = -54;
      *&v98[1] = bswap32(v56);
      v57 = *v53;
      std::ostream::write();
      v58 = *(a2 + 7);
      v98[0] = -54;
      *&v98[1] = bswap32(v58);
      v59 = *v53;
      result = std::ostream::write();
    }
  }

  else if (v8 == 2)
  {
    if (*(a2 + 26) != 3)
    {
      sub_23EF41D6C();
    }

    v9 = *(a1 + 24);
    if (*(v9 + 40) == 1)
    {
      *v98 = v9 + 16;
      sub_23F2FE154(&v97, v98, a2 + 1);
      sub_23F2FE154(&v97, v98, a2 + 2);
      sub_23F2FE154(&v97, v98, a2 + 3);
    }

    else
    {
      *&v98[1] = bswap64(*(a2 + 1));
      v14 = *(v9 + 8);
      v13 = (v9 + 8);
      v98[0] = -53;
      std::ostream::write();
      v15 = *(a2 + 2);
      v98[0] = -53;
      *&v98[1] = bswap64(v15);
      v16 = *v13;
      std::ostream::write();
      v17 = *(a2 + 3);
      v98[0] = -53;
      *&v98[1] = bswap64(v17);
      v18 = *v13;
      std::ostream::write();
    }

    v19 = *(a1 + 24);
    if (*(v19 + 40) == 1)
    {
      *v98 = v19 + 16;
      sub_23F2FE154(&v97, v98, a2 + 4);
      sub_23F2FE154(&v97, v98, a2 + 5);
      result = sub_23F2FE154(&v97, v98, a2 + 6);
    }

    else
    {
      *&v98[1] = bswap64(*(a2 + 4));
      v48 = *(v19 + 8);
      v47 = (v19 + 8);
      v98[0] = -53;
      std::ostream::write();
      v49 = *(a2 + 5);
      v98[0] = -53;
      *&v98[1] = bswap64(v49);
      v50 = *v47;
      std::ostream::write();
      v51 = *(a2 + 6);
      v98[0] = -53;
      *&v98[1] = bswap64(v51);
      v52 = *v47;
      result = std::ostream::write();
    }
  }

  v96 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23F042DF4(uint64_t *a1, uint64_t a2)
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

void sub_23F0431F8(uint64_t a1, uint64_t a2)
{
  v11[22] = *MEMORY[0x277D85DE8];
  if (**(a1 + 40) <= 1u)
  {
    v3 = *(a1 + 88);
    *(a1 + 72) = *a2;
    if ((v3 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v4 = *(a2 + 16);
  sub_23F07903C(a1 + 48, (a1 + 40));
  v5 = sub_23F2E6C78(a1);
  *(a1 + 40) = v5;
  if (*(a1 + 88))
  {
    *(a1 + 88) = 0;
  }

  if (*v5 < 2u && ((*(a1 + 72) = "version", *(a1 + 80) = 7, *(a1 + 88) = 1, *"version" == 1936876918) ? (v6 = *"sion" == 1852795251) : (v6 = 0), v6))
  {
    *(a1 + 96) = 1;
    *(a1 + 100) = 1;
    *(a1 + 88) = 0;
  }

  else
  {
    v10[0] = 6;
    v11[0] = 1;
    v7 = sub_23F2E6C78(a1);
    v8 = *v7;
    *v7 = 6;
    v10[0] = v8;
    v9 = v7[1];
    v7[1] = v11[0];
    v11[0] = v9;
    sub_23F06357C(v11, v8);
  }

  sub_23F04163C(v10, v4);
  sub_23F0433EC(a1);
}

void sub_23F0433EC(uint64_t a1)
{
  if (**(a1 + 40) <= 1u)
  {
    v2 = *(a1 + 88);
    *(a1 + 72) = "src_to_dst";
    *(a1 + 80) = 10;
    if ((v2 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_23F07903C(a1 + 48, (a1 + 40));
  v3 = sub_23F2E6C78(a1);
  *(a1 + 40) = v3;
  if (*(a1 + 88))
  {
    *(a1 + 88) = 0;
  }

  if (*v3 < 2u && ((*(a1 + 72) = "version", *(a1 + 80) = 7, *(a1 + 88) = 1, v4 = *(a1 + 72), v5 = *v4, v6 = *(v4 + 3), v5 == *"version") ? (v7 = v6 == *"sion") : (v7 = 0), v7))
  {
    *(a1 + 96) = 1;
    *(a1 + 100) = 1;
    *(a1 + 88) = 0;
  }

  else
  {
    v11 = 1;
    v8 = sub_23F2E6C78(a1);
    v9 = *v8;
    *v8 = 6;
    v10 = v8[1];
    v8[1] = v11;
    v11 = v10;
    sub_23F06357C(&v11, v9);
  }

  sub_23F0436B8(a1);
}

void sub_23F0436B8(uint64_t a1)
{
  if (**(a1 + 40) <= 1u)
  {
    v1 = *(a1 + 88);
    *(a1 + 72) = "se3_type";
    *(a1 + 80) = 8;
    if ((v1 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v2 = 0;
  sub_23F041BC0();
}

void sub_23F043AB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F043AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F043AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void *sub_23F043AF8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    if (*(a2 + 40))
    {
      v11 = *(a2 + 24);
      v15 = *(a2 + 32);
      sub_23EF2F9B0(v11, &v15, 1);
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
        v13 = *(a2 + 32);
        sub_23EF2F9B0(v5, &v13, 1);
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
      v16 = *(a2 + 32);
      sub_23EF2F9B0(v8, &v16, 1);
      goto LABEL_12;
    }

    if (*(a2 + 40))
    {
      v7 = *(a2 + 24);
      v14 = *(a2 + 32);
      sub_23EF2F9B0(v7, &v14, 1);
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
  v17 = v6;
  sub_23EF2F9B0(v9, &v17, 1);
  ++*(a2 + 40);
  return sub_23F043C94(&v12, a2, v3 + 200);
}

void *sub_23F043C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(a2 + 40))
  {
    v5 = *(a2 + 24);
    v11[0] = *(a2 + 32);
    sub_23EF2F9B0(v5, v11, 1);
  }

  MEMORY[0x245CAC910](*(a2 + 24), 1);
  ++*(a2 + 40);
  sub_23F04163C(v11, a3);
  sub_23F043DD4(a2, v11);
  if (v17 == 1 && v16 < 0)
  {
    operator delete(__p);
  }

  if (v14 == 1 && v13 < 0)
  {
    operator delete(v12);
  }

  v6 = *(a2 + 34);
  if (*(a2 + 40))
  {
    v7 = *(a2 + 24);
    v11[0] = *(a2 + 32);
    sub_23EF2F9B0(v7, v11, 1);
  }

  v8 = *(a2 + 24);
  v11[0] = v6;
  result = sub_23EF2F9B0(v8, v11, 1);
  ++*(a2 + 40);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23F043DD4(uint64_t a1, unsigned __int8 *a2)
{
  if (*(a1 + 40))
  {
    v4 = *(a1 + 24);
    v13 = *(a1 + 32);
    sub_23EF2F9B0(v4, &v13, 1);
  }

  MEMORY[0x245CAC910](*(a1 + 24), 1);
  ++*(a1 + 40);
  sub_23F043F28(a1, a2 + 8);
  v5 = *(a1 + 34);
  if (*(a1 + 40))
  {
    v6 = *(a1 + 24);
    v14 = *(a1 + 32);
    sub_23EF2F9B0(v6, &v14, 1);
  }

  v7 = *(a1 + 24);
  v15 = v5;
  sub_23EF2F9B0(v7, &v15, 1);
  ++*(a1 + 40);
  if (a2[144] == 1)
  {
    v10 = 1;
    sub_23F2F3D94(a1, &v10);
    sub_23F2F45C4(a1, (a2 + 120));
    v8 = a2[176];
    if (v8 != 1)
    {
LABEL_7:
      v11 = 0;
      sub_23F2F3D94(a1, &v11);
      return;
    }
  }

  else
  {
    v9 = 0;
    sub_23F2F3D94(a1, &v9);
    v8 = a2[176];
    if (v8 != 1)
    {
      goto LABEL_7;
    }
  }

  v12 = v8;
  sub_23F2F3D94(a1, &v12);
  sub_23F2F45C4(a1, (a2 + 152));
}

void sub_23F043F28(uint64_t a1, unsigned __int8 *a2)
{
  v6 = *a2;
  sub_23F2F3D94(a1, &v6);
  v4 = *a2;
  if (v4 > 3)
  {
    if (v4 == 4)
    {
      if (!*(a2 + 26))
      {
        sub_23F2F40F0(a1, a2 + 2);
        sub_23F2F40F0(a1, a2 + 3);
        sub_23F2F40F0(a1, a2 + 4);
        sub_23F2F40F0(a1, a2 + 5);
        sub_23F2F40F0(a1, a2 + 6);
        sub_23F2F40F0(a1, a2 + 7);
        sub_23F2F40F0(a1, a2 + 8);
        sub_23F2F40F0(a1, a2 + 9);
        sub_23F2F40F0(a1, a2 + 10);
        sub_23F2F40F0(a1, a2 + 11);
        sub_23F2F40F0(a1, a2 + 12);
        sub_23F2F40F0(a1, a2 + 13);
        return;
      }
    }

    else
    {
      if (v4 != 5)
      {
        return;
      }

      if (*(a2 + 26) == 1)
      {
        sub_23F2F435C(a1, a2 + 1);
        sub_23F2F435C(a1, a2 + 2);
        sub_23F2F435C(a1, a2 + 3);
        sub_23F2F435C(a1, a2 + 4);
        sub_23F2F435C(a1, a2 + 5);
        sub_23F2F435C(a1, a2 + 6);
        sub_23F2F435C(a1, a2 + 7);
        sub_23F2F435C(a1, a2 + 8);
        sub_23F2F435C(a1, a2 + 9);
        sub_23F2F435C(a1, a2 + 10);
        sub_23F2F435C(a1, a2 + 11);
        v5 = (a2 + 96);
        goto LABEL_10;
      }
    }

    goto LABEL_16;
  }

  if (v4 == 1)
  {
    if (*(a2 + 26) == 2)
    {
      sub_23F2F40F0(a1, a2 + 2);
      sub_23F2F40F0(a1, a2 + 3);
      sub_23F2F40F0(a1, a2 + 4);
      sub_23F2F40F0(a1, a2 + 5);
      sub_23F2F40F0(a1, a2 + 6);
      sub_23F2F40F0(a1, a2 + 7);
      return;
    }

    goto LABEL_16;
  }

  if (v4 != 2)
  {
    return;
  }

  if (*(a2 + 26) != 3)
  {
LABEL_16:
    sub_23EF41D6C();
  }

  sub_23F2F435C(a1, a2 + 1);
  sub_23F2F435C(a1, a2 + 2);
  sub_23F2F435C(a1, a2 + 3);
  sub_23F2F435C(a1, a2 + 4);
  sub_23F2F435C(a1, a2 + 5);
  v5 = (a2 + 48);
LABEL_10:
  sub_23F2F435C(a1, v5);
}

void sub_23F04418C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    v11 = 4;
    sub_23F295368(a2 + 24, *(a2 + 32), &v11, v12, 4uLL);
    v7 = v11;
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

    v9 = 6;
    sub_23F295368(a2 + 24, *(a2 + 32), &v9, &__src, 4uLL);
    v5 = v9;
    sub_23F294D84(a2);
    sub_23EF5B8BC(a2, v3 + 16, v5);
  }

  v8 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v8 + 10) = *(a2 + 32) - v8 - 18;
  *(a2 + 56) -= 8;
  sub_23F0442DC(&v13, a2, v3 + 200);
}

void sub_23F0442DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = 1;
  sub_23F295368(a2 + 24, *(a2 + 32), &v6, v7, 4uLL);
  sub_23F294D84(a2);
  sub_23F04163C(&v6, a3);
  sub_23F044400(a2, &v6);
  if (v13 == 1 && v12 < 0)
  {
    operator delete(__p);
  }

  if (v10 == 1 && v9 < 0)
  {
    operator delete(v8);
  }

  *(*(*(a2 + 56) - 8) + *(a2 + 24) + 10) = *(a2 + 32) - (*(*(a2 + 56) - 8) + *(a2 + 24)) - 18;
  *(a2 + 56) -= 8;
  v5 = *MEMORY[0x277D85DE8];
}

char *sub_23F044400(uint64_t a1, uint64_t a2)
{
  LODWORD(__src) = 1;
  sub_23F295368(a1 + 24, *(a1 + 32), &__src, &__src + 4, 4uLL);
  sub_23F294D84(a1);
  sub_23F044604(a1, (a2 + 8));
  v4 = *(*(a1 + 56) - 8) + *(a1 + 24);
  *(v4 + 10) = *(a1 + 32) - v4 - 18;
  *(a1 + 56) -= 8;
  if (*(a2 + 144) == 1)
  {
    LOBYTE(__src) = 1;
    sub_23F295368(a1 + 24, *(a1 + 32), &__src, &__src + 1, 1uLL);
    v5 = *(a2 + 143);
    if ((v5 & 0x80u) != 0)
    {
      v5 = *(a2 + 128);
    }

    __src = v5;
    sub_23F295368(a1 + 24, *(a1 + 32), &__src, &v18, 8uLL);
    v6 = *(a2 + 143);
    if (v6 >= 0)
    {
      v7 = (a2 + 120);
    }

    else
    {
      v7 = *(a2 + 120);
    }

    if (v6 >= 0)
    {
      v8 = *(a2 + 143);
    }

    else
    {
      v8 = *(a2 + 128);
    }

    sub_23F295368(a1 + 24, *(a1 + 32), v7, &v7[v8], v8);
    if (*(a2 + 176) != 1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    LOBYTE(__src) = 0;
    sub_23F295368(a1 + 24, *(a1 + 32), &__src, &__src + 1, 1uLL);
    if (*(a2 + 176) != 1)
    {
LABEL_11:
      LOBYTE(__src) = 0;
      v9 = *(a1 + 32);
      v10 = a1 + 24;
      p_src = &__src;
      v12 = &__src + 1;
      v13 = 1;
      return sub_23F295368(v10, v9, p_src, v12, v13);
    }
  }

  LOBYTE(__src) = 1;
  sub_23F295368(a1 + 24, *(a1 + 32), &__src, &__src + 1, 1uLL);
  v14 = *(a2 + 175);
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a2 + 160);
  }

  __src = v14;
  sub_23F295368(a1 + 24, *(a1 + 32), &__src, &v18, 8uLL);
  v15 = *(a2 + 175);
  if (v15 >= 0)
  {
    p_src = (a2 + 152);
  }

  else
  {
    p_src = *(a2 + 152);
  }

  if (v15 >= 0)
  {
    v13 = *(a2 + 175);
  }

  else
  {
    v13 = *(a2 + 160);
  }

  v9 = *(a1 + 32);
  v10 = a1 + 24;
  v12 = p_src + v13;
  return sub_23F295368(v10, v9, p_src, v12, v13);
}

char *sub_23F044604(uint64_t a1, unsigned __int8 *a2)
{
  __src = *a2;
  result = sub_23F295368(a1 + 24, *(a1 + 32), &__src, &v10, 1uLL);
  v5 = *a2;
  if (v5 > 3)
  {
    if (v5 == 4)
    {
      if (*(a2 + 26))
      {
        goto LABEL_17;
      }

      v6 = 40;
      v8 = 24;
      v7 = 16;
    }

    else
    {
      if (v5 != 5)
      {
        return result;
      }

      if (*(a2 + 26) != 1)
      {
        goto LABEL_17;
      }

      v6 = 72;
      v8 = 40;
      v7 = 32;
    }

    sub_23F295368(a1 + 24, *(a1 + 32), a2 + 8, &a2[v7 + 8], v7);
    goto LABEL_15;
  }

  if (v5 == 1)
  {
    if (*(a2 + 26) == 2)
    {
      v6 = 20;
      v7 = 12;
      v8 = 8;
      goto LABEL_15;
    }

LABEL_17:
    sub_23EF41D6C();
  }

  if (v5 != 2)
  {
    return result;
  }

  if (*(a2 + 26) != 3)
  {
    goto LABEL_17;
  }

  v6 = 32;
  v7 = 24;
  v8 = 8;
LABEL_15:
  sub_23F295368(a1 + 24, *(a1 + 32), &a2[v8], &a2[v8 + v7], v7);
  return sub_23F295368(a1 + 24, *(a1 + 32), &a2[v6], &a2[v6 + v7], v7);
}

void sub_23F044744(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = **(a1 + 24);
  v5 = *v3;
  if (*v3 == 2)
  {
    *v7 = 1;
    (*(*v1 + 104))(v1, v7);
    v5 = *v3;
  }

  if (v5 <= 0)
  {
    sub_23F04163C(v7, v2);
    sub_23F04491C(v1, v7);
    if (v13 == 1 && v12 < 0)
    {
      operator delete(__p);
    }

    if (v10 == 1 && v9 < 0)
    {
      operator delete(v8);
    }
  }

  else
  {
    (*(*v1 + 16))(v1);
    sub_23F04163C(v7, v2);
    sub_23F04491C(v1, v7);
    if (v13 == 1 && v12 < 0)
    {
      operator delete(__p);
    }

    if (v10 == 1 && v9 < 0)
    {
      operator delete(v8);
    }

    (*(*v1 + 24))(v1);
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t sub_23F04491C(_DWORD *a1, unsigned __int8 *a2)
{
  v4 = a1[2];
  v8 = 1;
  (*(*a1 + 104))(a1, &v8);
  if (v4 < 1)
  {
    sub_23F044B98(a1, a2 + 8);
    v5 = a2[144];
    if (v5 == 1)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = 0;
    (*(*a1 + 80))(a1, &v9);
    v6 = a2[176];
    if (v6 != 1)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  if (v4 == 2)
  {
    v13 = 1;
    (*(*a1 + 104))(a1, &v13);
  }

  (*(*a1 + 16))(a1);
  sub_23F044B98(a1, a2 + 8);
  (*(*a1 + 24))(a1);
  v5 = a2[144];
  if (v5 != 1)
  {
    goto LABEL_8;
  }

LABEL_5:
  v10 = v5;
  (*(*a1 + 80))(a1, &v10);
  (*(*a1 + 144))(a1, a2 + 120);
  v6 = a2[176];
  if (v6 != 1)
  {
LABEL_6:
    v11 = 0;
    return (*(*a1 + 80))(a1, &v11);
  }

LABEL_9:
  v12 = v6;
  (*(*a1 + 80))(a1, &v12);
  return (*(*a1 + 144))(a1, a2 + 152);
}

uint64_t sub_23F044B98(_BYTE *a1, unsigned __int8 *a2)
{
  result = sub_23F044EA4(a1, a2);
  v5 = *a2;
  if (v5 > 3)
  {
    if (v5 == 4)
    {
      if (*(a2 + 26))
      {
        goto LABEL_19;
      }

      v9 = a2 + 8;
      return sub_23F04500C(a1, &v9);
    }

    else if (v5 == 5)
    {
      if (*(a2 + 26) != 1)
      {
        goto LABEL_19;
      }

      v9 = a2 + 8;
      return sub_23F045248(a1, &v9);
    }
  }

  else
  {
    if (v5 == 1)
    {
      if (*(a2 + 26) == 2)
      {
        (*(*a1 + 128))(a1, a2 + 8);
        (*(*a1 + 128))(a1, a2 + 12);
        (*(*a1 + 128))(a1, a2 + 16);
        (*(*a1 + 128))(a1, a2 + 20);
        (*(*a1 + 128))(a1, a2 + 24);
        v6 = *(*a1 + 128);
        v7 = a2 + 28;
        v8 = a1;

        return v6(v8, v7);
      }

LABEL_19:
      sub_23EF41D6C();
    }

    if (v5 == 2)
    {
      if (*(a2 + 26) == 3)
      {
        (*(*a1 + 136))(a1, a2 + 8);
        (*(*a1 + 136))(a1, a2 + 16);
        (*(*a1 + 136))(a1, a2 + 24);
        (*(*a1 + 136))(a1, a2 + 32);
        (*(*a1 + 136))(a1, a2 + 40);
        v6 = *(*a1 + 136);
        v7 = a2 + 48;
        v8 = a1;

        return v6(v8, v7);
      }

      goto LABEL_19;
    }
  }

  return result;
}

uint64_t sub_23F044EA4(_BYTE *a1, _BYTE *a2)
{
  if ((a1[12] & 2) != 0)
  {
    v4 = 0;
    sub_23F041BC0();
  }

  v3[0] = *a2;
  return (*(*a1 + 80))(a1, v3);
}

void sub_23F044FC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F044FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F044FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23F04500C(uint64_t a1, void *a2)
{
  v3 = *a2;
  (*(*a1 + 128))(a1, *a2);
  (*(*a1 + 128))(a1, v3 + 4);
  (*(*a1 + 128))(a1, v3 + 8);
  (*(*a1 + 128))(a1, v3 + 12);
  (*(*a1 + 128))(a1, v3 + 16);
  (*(*a1 + 128))(a1, v3 + 20);
  (*(*a1 + 128))(a1, v3 + 24);
  (*(*a1 + 128))(a1, v3 + 28);
  (*(*a1 + 128))(a1, v3 + 32);
  (*(*a1 + 128))(a1, v3 + 36);
  (*(*a1 + 128))(a1, v3 + 40);
  v4 = *(*a1 + 128);

  return v4(a1, v3 + 44);
}

uint64_t sub_23F045248(uint64_t a1, void *a2)
{
  v3 = *a2;
  (*(*a1 + 136))(a1, *a2);
  (*(*a1 + 136))(a1, v3 + 8);
  (*(*a1 + 136))(a1, v3 + 16);
  (*(*a1 + 136))(a1, v3 + 24);
  (*(*a1 + 136))(a1, v3 + 32);
  (*(*a1 + 136))(a1, v3 + 40);
  (*(*a1 + 136))(a1, v3 + 48);
  (*(*a1 + 136))(a1, v3 + 56);
  (*(*a1 + 136))(a1, v3 + 64);
  (*(*a1 + 136))(a1, v3 + 72);
  (*(*a1 + 136))(a1, v3 + 80);
  v4 = *(*a1 + 136);

  return v4(a1, v3 + 88);
}

void sub_23F045484(char **a1, uint64_t a2)
{
  v15 = a2;
  v16 = a2;
  v4 = *a1;
  v5 = **a1;
  v6 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285179A70, 0);
  if (v6)
  {
    sub_23F045B0C(&v16, v6);
  }

  v16 = a2;
  v7 = *v4;
  v8 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285179AA8, 0);
  if (v8)
  {
    sub_23F0466F4(&v16, v8);
  }

  else
  {
    v16 = a2;
    v9 = *v4;
    v10 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285179B30, 0);
    if (v10)
    {
      sub_23F047138(&v16, v10);
    }

    v16 = a2;
    v11 = *v4;
    v12 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285179B68, 0);
    if (v12)
    {
      sub_23F047D20(&v16, v12);
    }

    else
    {
      v16 = a2;
      v13 = *v4;
      v14 = __dynamic_cast(a1, &unk_28518D8F0, &unk_28518B930, 0);
      if (v14)
      {
        sub_23F048810(&v16, v14);
      }

      else
      {
        sub_23F045650(&v15, a1);
      }
    }
  }
}

void sub_23F045650(uint64_t *a1, void **a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 != 1)
  {
    if (v4 != 2)
    {
      sub_23EF41D6C();
    }

    sub_23EF82E08(v3 + 16, v24);
    sub_23EF53784(v36, v24);
    sub_23EF88F40(v3 + 16, v36);
    if (v48 == 1)
    {
      v9 = __p;
      if (__p)
      {
        v10 = v47;
        v11 = __p;
        if (v47 != __p)
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

        v47 = v9;
        operator delete(v11);
      }
    }

    if (v45 == 1 && v44 < 0)
    {
      operator delete(v43);
    }

    if (v42 == 1 && v41 < 0)
    {
      operator delete(v40);
    }

    if (v39 == 1 && v38 < 0)
    {
      operator delete(v37);
    }

    if (v35 != 1)
    {
      goto LABEL_66;
    }

    v13 = v33;
    if (!v33)
    {
      goto LABEL_66;
    }

    v17 = v34;
    v15 = v33;
    if (v34 == v33)
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
        v15 = v33;
        goto LABEL_65;
      }
    }
  }

  sub_23EF82B6C(v3 + 16, v24);
  sub_23EF53784(v36, v24);
  sub_23EF88F40(v3 + 16, v36);
  if (v48 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v47;
      v7 = __p;
      if (v47 != __p)
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

      v47 = v5;
      operator delete(v7);
    }
  }

  if (v45 == 1 && v44 < 0)
  {
    operator delete(v43);
  }

  if (v42 == 1 && v41 < 0)
  {
    operator delete(v40);
  }

  if (v39 == 1 && v38 < 0)
  {
    operator delete(v37);
  }

  if (v35 != 1)
  {
    goto LABEL_66;
  }

  v13 = v33;
  if (!v33)
  {
    goto LABEL_66;
  }

  v14 = v34;
  v15 = v33;
  if (v34 != v33)
  {
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

LABEL_65:
  v34 = v13;
  operator delete(v15);
LABEL_66:
  if (v32 == 1 && v31 < 0)
  {
    operator delete(v30);
  }

  if (v29 == 1 && v28 < 0)
  {
    operator delete(v27);
  }

  if (v26 == 1 && v25 < 0)
  {
    operator delete(v24[2]);
  }

  if (*(v3 + 192))
  {
    sub_23EF41D6C();
  }

LABEL_76:
  v19 = *a2;
  v24[0] = a2[1];
  v20 = v24[0];
  v36[0] = 6;
  v19[13](a2, v36);
  if (v20 < 1)
  {
    if (v36[0] < 3)
    {
      sub_23EF69318(v36, a2, v3 + 16, v36[0]);
    }

    else
    {
      sub_23EF69524(a2, v3 + 16, v36[0]);
    }
  }

  else
  {
    sub_23EF68F0C(v24, a2, v3 + 16, v36[0]);
  }

  v21 = *a2;
  v24[0] = a2[1];
  v22 = v24[0];
  v36[0] = 1;
  v21[13](a2, v36);
  if (v22 < 1)
  {
    sub_23F0495F0(a2, v3 + 200);
  }

  else
  {
    sub_23F049448(v24, a2, v3 + 200);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_23F045B0C(uint64_t *a1, uint64_t a2)
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

void sub_23F045FE4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 104);
  *(a1 + 88) = "src_to_dst";
  *(a1 + 96) = 10;
  if ((v4 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v6[0] = *(a1 + 32);
  v5 = sub_23F2EB9A4(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v5;
  sub_23F2EB5F4(a1 + 40, v6);
  sub_23F294EB4(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  v6[0] = "version";
  v6[1] = 7;
  v7 = 1;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_23F2ECE4C(a1, &v7);
  sub_23F04613C(a1, a2 + 8);
}

void sub_23F04613C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 104);
  *(a1 + 88) = "se3_type";
  *(a1 + 96) = 8;
  if ((v2 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v3 = a2;
  sub_23F046570(a1);
}

void sub_23F046570(void *a1)
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

void sub_23F046660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

uint64_t sub_23F0466F4(uint64_t *a1, uint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 != 1)
  {
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
  if (v31 != v30)
  {
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
  LODWORD(v21[0]) = 6;
  sub_23F2F7EFC(*(a2 + 48), v21);
  sub_23EF62320(v21, a2, v3 + 16, v21[0]);
  LODWORD(v21[0]) = 1;
  sub_23F2F7EFC(*(a2 + 48), v21);
  result = sub_23F046B18(v21, a2, v3 + 200);
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23F046B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  sub_23F2F80F8(*(a2 + 48), &v9);
  *&v8 = (*(*(a2 + 16) + 32))(a2 + 16);
  *(&v8 + 1) = v9;
  sub_23EF62458(a2 + 24, &v8);
  sub_23F046C24(a2, a3);
  v5 = *(a2 + 32);
  result = (*(*(a2 + 16) + 32))(a2 + 16);
  v7 = *(v5 - 16) - result + *(v5 - 8);
  if (v7)
  {
    result = (*(*(a2 + 16) + 40))(a2 + 16, v7);
  }

  *(a2 + 32) -= 16;
  return result;
}

void sub_23F046C24(uint64_t a1, uint64_t a2)
{
  v5 = 1;
  sub_23F2F7EFC(*(a1 + 48), &v5);
  sub_23F046D48(&v4, a1, a2 + 8);
  v6 = 0;
  sub_23F2F7BA4(*(a1 + 48), &v6);
  if (v6)
  {
    if ((*(a2 + 144) & 1) == 0)
    {
      *(a2 + 120) = 0;
      *(a2 + 128) = 0;
      *(a2 + 136) = 0;
      *(a2 + 144) = 1;
    }

    sub_23F2F856C(*(a1 + 48), (a2 + 120));
  }

  else if (*(a2 + 144))
  {
    if (*(a2 + 143) < 0)
    {
      operator delete(*(a2 + 120));
    }

    *(a2 + 144) = 0;
  }

  v7 = 0;
  sub_23F2F7BA4(*(a1 + 48), &v7);
  if (v7)
  {
    if ((*(a2 + 176) & 1) == 0)
    {
      *(a2 + 152) = 0;
      *(a2 + 160) = 0;
      *(a2 + 168) = 0;
      *(a2 + 176) = 1;
    }

    sub_23F2F856C(*(a1 + 48), (a2 + 152));
  }

  else if (*(a2 + 176))
  {
    if (*(a2 + 175) < 0)
    {
      operator delete(*(a2 + 152));
    }

    *(a2 + 176) = 0;
  }
}

uint64_t sub_23F046D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  sub_23F2F80F8(*(a2 + 48), &v9);
  *&v8 = (*(*(a2 + 16) + 32))(a2 + 16);
  *(&v8 + 1) = v9;
  sub_23EF62458(a2 + 24, &v8);
  sub_23F046E54(a2, a3);
  v5 = *(a2 + 32);
  result = (*(*(a2 + 16) + 32))(a2 + 16);
  v7 = *(v5 - 16) - result + *(v5 - 8);
  if (v7)
  {
    result = (*(*(a2 + 16) + 40))(a2 + 16, v7);
  }

  *(a2 + 32) -= 16;
  return result;
}

void sub_23F046E54(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  sub_23F2F7BA4(*(a1 + 48), &v15);
  v4 = v15;
  *a2 = v15;
  if (v4 <= 3)
  {
    if (v4 != 1)
    {
      if (v4 != 2)
      {
        return;
      }

      if (*(a2 + 104) != 3)
      {
        *(a2 + 40) = 0u;
        *(a2 + 24) = 0u;
        *(a2 + 8) = 0u;
        *(a2 + 104) = 3;
      }

      v5 = *(a1 + 48);
      sub_23F2F8334(v5, (a2 + 8));
      sub_23F2F8334(v5, (a2 + 16));
      sub_23F2F8334(v5, (a2 + 24));
      v6 = *(a1 + 48);
      sub_23F2F8334(v6, (a2 + 32));
      sub_23F2F8334(v6, (a2 + 40));
      v7 = (a2 + 48);
      goto LABEL_12;
    }

    if (*(a2 + 104) != 2)
    {
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 104) = 2;
    }

    v10 = *(a1 + 48);
    sub_23F2F81EC(v10, (a2 + 8));
    sub_23F2F81EC(v10, (a2 + 12));
    sub_23F2F81EC(v10, (a2 + 16));
    v11 = *(a1 + 48);
    sub_23F2F81EC(v11, (a2 + 20));
    sub_23F2F81EC(v11, (a2 + 24));
    v12 = (a2 + 28);
LABEL_20:
    sub_23F2F81EC(v11, v12);
    return;
  }

  if (v4 == 4)
  {
    if (*(a2 + 104))
    {
      *(a2 + 40) = 0u;
      *(a2 + 24) = 0u;
      *(a2 + 8) = 0u;
      *(a2 + 104) = 0;
    }

    v13 = *(a1 + 48);
    sub_23F2F81EC(v13, (a2 + 8));
    sub_23F2F81EC(v13, (a2 + 12));
    sub_23F2F81EC(v13, (a2 + 16));
    sub_23F2F81EC(v13, (a2 + 20));
    v14 = *(a1 + 48);
    sub_23F2F81EC(v14, (a2 + 24));
    sub_23F2F81EC(v14, (a2 + 28));
    sub_23F2F81EC(v14, (a2 + 32));
    sub_23F2F81EC(v14, (a2 + 36));
    v11 = *(a1 + 48);
    sub_23F2F81EC(v11, (a2 + 40));
    sub_23F2F81EC(v11, (a2 + 44));
    sub_23F2F81EC(v11, (a2 + 48));
    v12 = (a2 + 52);
    goto LABEL_20;
  }

  if (v4 != 5)
  {
    return;
  }

  if (*(a2 + 104) != 1)
  {
    *(a2 + 88) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 8) = 0u;
    *(a2 + 104) = 1;
  }

  v8 = *(a1 + 48);
  sub_23F2F8334(v8, (a2 + 8));
  sub_23F2F8334(v8, (a2 + 16));
  sub_23F2F8334(v8, (a2 + 24));
  sub_23F2F8334(v8, (a2 + 32));
  v9 = *(a1 + 48);
  sub_23F2F8334(v9, (a2 + 40));
  sub_23F2F8334(v9, (a2 + 48));
  sub_23F2F8334(v9, (a2 + 56));
  sub_23F2F8334(v9, (a2 + 64));
  v6 = *(a1 + 48);
  sub_23F2F8334(v6, (a2 + 72));
  sub_23F2F8334(v6, (a2 + 80));
  sub_23F2F8334(v6, (a2 + 88));
  v7 = (a2 + 96);
LABEL_12:
  sub_23F2F8334(v6, v7);
}

void sub_23F047138(uint64_t *a1, uint64_t a2)
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

void sub_23F047610(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 104);
  *(a1 + 88) = "src_to_dst";
  *(a1 + 96) = 10;
  if ((v4 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v6[0] = *(a1 + 32);
  v5 = sub_23F2EB70C(a1);
  ++*(a1 + 112);
  *(a1 + 32) = v5;
  sub_23F2EB5F4(a1 + 40, v6);
  sub_23F294EB4(a1 + 64, (a1 + 112));
  *(a1 + 112) = 0;
  v6[0] = "version";
  v6[1] = 7;
  v7 = 1;
  *(a1 + 88) = "version";
  *(a1 + 96) = 7;
  *(a1 + 104) = 1;
  sub_23F2EBEC0(a1, &v7);
  sub_23F047768(a1, a2 + 8);
}

void sub_23F047768(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 104);
  *(a1 + 88) = "se3_type";
  *(a1 + 96) = 8;
  if ((v2 & 1) == 0)
  {
    *(a1 + 104) = 1;
  }

  v3 = a2;
  sub_23F047B9C(a1);
}

void sub_23F047B9C(void *a1)
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

void sub_23F047C8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void sub_23F047D20(uint64_t *a1, uint64_t a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4)
  {
    if (v4 == 1)
    {
      sub_23EF82B6C(v3 + 16, &v23);
      sub_23EF53784(v37, &v23);
      sub_23EF88F40(v3 + 16, v37);
      if (v49 == 1)
      {
        v5 = __p;
        if (__p)
        {
          v6 = v48;
          v7 = __p;
          if (v48 != __p)
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

          v48 = v5;
          operator delete(v7);
        }
      }

      if (v46 == 1 && v45 < 0)
      {
        operator delete(v44);
      }

      if (v43 == 1 && v42 < 0)
      {
        operator delete(v41);
      }

      if (v40 == 1 && v39 < 0)
      {
        operator delete(v38);
      }

      if (v36 != 1)
      {
        goto LABEL_66;
      }

      v13 = v34;
      if (!v34)
      {
        goto LABEL_66;
      }

      v14 = v35;
      v15 = v34;
      if (v35 == v34)
      {
LABEL_65:
        v35 = v13;
        operator delete(v15);
LABEL_66:
        if (v33 == 1 && v32 < 0)
        {
          operator delete(v31);
        }

        if (v30 == 1 && v29 < 0)
        {
          operator delete(v28);
        }

        if (v27 == 1 && v26 < 0)
        {
          operator delete(v25);
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

    sub_23EF82E08(v3 + 16, &v23);
    sub_23EF53784(v37, &v23);
    sub_23EF88F40(v3 + 16, v37);
    if (v49 == 1)
    {
      v9 = __p;
      if (__p)
      {
        v10 = v48;
        v11 = __p;
        if (v48 != __p)
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

        v48 = v9;
        operator delete(v11);
      }
    }

    if (v46 == 1 && v45 < 0)
    {
      operator delete(v44);
    }

    if (v43 == 1 && v42 < 0)
    {
      operator delete(v41);
    }

    if (v40 == 1 && v39 < 0)
    {
      operator delete(v38);
    }

    if (v36 != 1)
    {
      goto LABEL_66;
    }

    v13 = v34;
    if (!v34)
    {
      goto LABEL_66;
    }

    v17 = v35;
    v15 = v34;
    if (v35 == v34)
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
        v15 = v34;
        goto LABEL_65;
      }
    }
  }

LABEL_76:
  LODWORD(v23) = 6;
  sub_23F2F5830(a2, &v23);
  if (v23 >= 6)
  {
    v19 = 6;
  }

  else
  {
    v19 = v23;
  }

  if (v23 > 2)
  {
    sub_23EF65EFC(a2, v3 + 16, v19);
    while (1)
    {
      if ((*(a2 + 131) & 1) != 0 || (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_95;
      }

      sub_23F2F7390(a2, &v23);
      if (SHIBYTE(v25) < 0)
      {
        if (v24 == 1 && *(a2 + 72) == *v23)
        {
LABEL_90:
          v20 = 0;
          if (SHIBYTE(v25) < 0)
          {
            goto LABEL_93;
          }

          goto LABEL_81;
        }
      }

      else if (SHIBYTE(v25) == 1 && *(a2 + 72) == v23)
      {
        goto LABEL_90;
      }

      v20 = 1;
      if (SHIBYTE(v25) < 0)
      {
LABEL_93:
        operator delete(v23);
      }

LABEL_81:
      if ((v20 & 1) == 0)
      {
        goto LABEL_95;
      }
    }
  }

  sub_23EF65CF0(&v23, a2, v3 + 16, v19);
LABEL_95:
  LODWORD(v23) = 1;
  sub_23F2F5830(a2, &v23);
  sub_23F0482B4(a2, v3 + 200);
  while ((*(a2 + 131) & 1) == 0 && (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) == 0)
  {
    sub_23F2F7390(a2, &v23);
    if (SHIBYTE(v25) < 0)
    {
      if (v24 == 1 && *(a2 + 72) == *v23)
      {
LABEL_105:
        v21 = 0;
        if (SHIBYTE(v25) < 0)
        {
          goto LABEL_108;
        }

        goto LABEL_96;
      }
    }

    else if (SHIBYTE(v25) == 1 && *(a2 + 72) == v23)
    {
      goto LABEL_105;
    }

    v21 = 1;
    if (SHIBYTE(v25) < 0)
    {
LABEL_108:
      operator delete(v23);
    }

LABEL_96:
    if ((v21 & 1) == 0)
    {
      break;
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_23F0482B4(uint64_t a1, uint64_t a2)
{
  LODWORD(__p[0]) = 1;
  sub_23F2F5830(a1, __p);
  sub_23F048550(a1, a2 + 8);
  while ((*(a1 + 131) & 1) == 0 && (*(*(a1 + 16) + *(**(a1 + 16) - 24) + 32) & 2) == 0)
  {
    sub_23F2F7390(a1, __p);
    if (SHIBYTE(v7) < 0)
    {
      if (__p[1] == 1 && *(a1 + 72) == *__p[0])
      {
LABEL_11:
        v4 = 0;
        if (SHIBYTE(v7) < 0)
        {
          goto LABEL_14;
        }

        goto LABEL_2;
      }
    }

    else if (SHIBYTE(v7) == 1 && *(a1 + 72) == LOBYTE(__p[0]))
    {
      goto LABEL_11;
    }

    v4 = 1;
    if (SHIBYTE(v7) < 0)
    {
LABEL_14:
      operator delete(__p[0]);
    }

LABEL_2:
    if ((v4 & 1) == 0)
    {
      break;
    }
  }

  v5 = 0;
  sub_23F2F4C14(a1, &v5);
  if (v5)
  {
    if ((*(a2 + 144) & 1) == 0)
    {
      *(a2 + 120) = 0;
      *(a2 + 128) = 0;
      *(a2 + 136) = 0;
      *(a2 + 144) = 1;
    }

    ++*(a1 + 80);
    if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
    {
      *(a1 + 132) = 1;
    }

    else
    {
      sub_23F2F7390(a1, __p);
      if (*(a2 + 143) < 0)
      {
        operator delete(*(a2 + 120));
      }

      *(a2 + 120) = *__p;
      *(a2 + 136) = v7;
      ++*(a1 + 104);
    }
  }

  else if (*(a2 + 144))
  {
    if (*(a2 + 143) < 0)
    {
      operator delete(*(a2 + 120));
    }

    *(a2 + 144) = 0;
  }

  v5 = 0;
  sub_23F2F4C14(a1, &v5);
  if (v5)
  {
    if ((*(a2 + 176) & 1) == 0)
    {
      *(a2 + 152) = 0;
      *(a2 + 160) = 0;
      *(a2 + 168) = 0;
      *(a2 + 176) = 1;
    }

    ++*(a1 + 80);
    if (*(a1 + 128) == 1 && *(a1 + 131) == 1)
    {
      *(a1 + 132) = 1;
    }

    else
    {
      sub_23F2F7390(a1, __p);
      if (*(a2 + 175) < 0)
      {
        operator delete(*(a2 + 152));
      }

      *(a2 + 152) = *__p;
      *(a2 + 168) = v7;
      ++*(a1 + 104);
    }
  }

  else if (*(a2 + 176))
  {
    if (*(a2 + 175) < 0)
    {
      operator delete(*(a2 + 152));
    }

    *(a2 + 176) = 0;
  }
}

void sub_23F048550(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  sub_23F2F4C14(a1, &v6);
  v4 = v6;
  *a2 = v6;
  if (v4 > 3)
  {
    if (v4 != 4)
    {
      if (v4 != 5)
      {
        return;
      }

      if (*(a2 + 104) != 1)
      {
        *(a2 + 88) = 0u;
        *(a2 + 72) = 0u;
        *(a2 + 56) = 0u;
        *(a2 + 40) = 0u;
        *(a2 + 24) = 0u;
        *(a2 + 8) = 0u;
        *(a2 + 104) = 1;
      }

      sub_23F2F68A4(a1, (a2 + 8));
      sub_23F2F68A4(a1, (a2 + 16));
      sub_23F2F68A4(a1, (a2 + 24));
      sub_23F2F68A4(a1, (a2 + 32));
      sub_23F2F68A4(a1, (a2 + 40));
      sub_23F2F68A4(a1, (a2 + 48));
      sub_23F2F68A4(a1, (a2 + 56));
      sub_23F2F68A4(a1, (a2 + 64));
      sub_23F2F68A4(a1, (a2 + 72));
      sub_23F2F68A4(a1, (a2 + 80));
      sub_23F2F68A4(a1, (a2 + 88));
      v5 = (a2 + 96);
      goto LABEL_12;
    }

    if (*(a2 + 104))
    {
      *(a2 + 40) = 0u;
      *(a2 + 24) = 0u;
      *(a2 + 8) = 0u;
      *(a2 + 104) = 0;
    }

    sub_23F2F6564(a1, (a2 + 8));
    sub_23F2F6564(a1, (a2 + 12));
    sub_23F2F6564(a1, (a2 + 16));
    sub_23F2F6564(a1, (a2 + 20));
    sub_23F2F6564(a1, (a2 + 24));
    sub_23F2F6564(a1, (a2 + 28));
    sub_23F2F6564(a1, (a2 + 32));
    sub_23F2F6564(a1, (a2 + 36));
    sub_23F2F6564(a1, (a2 + 40));
    sub_23F2F6564(a1, (a2 + 44));
    sub_23F2F6564(a1, (a2 + 48));
    sub_23F2F6564(a1, (a2 + 52));
  }

  else
  {
    if (v4 != 1)
    {
      if (v4 != 2)
      {
        return;
      }

      if (*(a2 + 104) != 3)
      {
        *(a2 + 40) = 0u;
        *(a2 + 24) = 0u;
        *(a2 + 8) = 0u;
        *(a2 + 104) = 3;
      }

      sub_23F2F68A4(a1, (a2 + 8));
      sub_23F2F68A4(a1, (a2 + 16));
      sub_23F2F68A4(a1, (a2 + 24));
      sub_23F2F68A4(a1, (a2 + 32));
      sub_23F2F68A4(a1, (a2 + 40));
      v5 = (a2 + 48);
LABEL_12:
      sub_23F2F68A4(a1, v5);
      return;
    }

    if (*(a2 + 104) != 2)
    {
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 104) = 2;
    }

    sub_23F2F6564(a1, (a2 + 8));
    sub_23F2F6564(a1, (a2 + 12));
    sub_23F2F6564(a1, (a2 + 16));
    sub_23F2F6564(a1, (a2 + 20));
    sub_23F2F6564(a1, (a2 + 24));
    sub_23F2F6564(a1, (a2 + 28));
  }
}

void *sub_23F048810(uint64_t *a1, void *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 != 1)
  {
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
  if (v31 != v30)
  {
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
  sub_23EF67614(v21, a2, v3 + 16);
  result = sub_23F048C00(v21, a2, v3 + 200);
  v20 = *MEMORY[0x277D85DE8];
  return result;
}