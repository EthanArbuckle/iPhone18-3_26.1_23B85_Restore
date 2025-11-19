void sub_233730E7C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284902C38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_233730EF8(uint64_t result, int a2, int a3, int a4, float64x2_t a5, float64_t a6, double a7, float64x2_t a8, float64_t a9, double a10)
{
  *result = &unk_284902C88;
  *(result + 8) = a2;
  *(result + 32) = a7;
  *(result + 40) = a3;
  *(result + 64) = a10;
  *(result + 72) = a4;
  a5.f64[1] = a6;
  if (a2)
  {
    v10 = vminnmq_f64(vmaxnmq_f64(a5, xmmword_233903E00), xmmword_233903E10);
    *(result + 32) = fmin(fmax(a7, -0.5), 1.5);
  }

  else
  {
    v10 = vminnmq_f64(vmaxnmq_f64(a5, xmmword_233903E20), xmmword_233903E30);
  }

  *(result + 16) = v10;
  a8.f64[1] = a9;
  if (a3)
  {
    v11 = vminnmq_f64(vmaxnmq_f64(a8, xmmword_233903E40), xmmword_233903E50);
    *(result + 64) = fmin(fmax(a10, -1000.0), 1000.0);
  }

  else
  {
    v11 = vminnmq_f64(vmaxnmq_f64(a8, xmmword_233903E60), xmmword_233903E70);
  }

  *(result + 48) = v11;
  return result;
}

double sub_233731008(uint64_t a1)
{
  result = 0.0;
  if (*(a1 + 8) == 1)
  {
    return *(a1 + 32);
  }

  return result;
}

double sub_233731038(uint64_t a1)
{
  result = 0.0;
  if (*(a1 + 40) == 1)
  {
    return *(a1 + 64);
  }

  return result;
}

void *sub_23373118C(void *a1, int *a2, unint64_t *a3, double *a4, double *a5, int *a6, unint64_t *a7, double *a8, float64x2_t a9, int *a10, double *a11, double *a12, double *a13, float64x2_t a14, double *a15, double *a16, double *a17, int *a18, double *a19, double *a20, double *a21, int *a22, double *a23, double *a24, double *a25)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284902DC0;
  sub_2337312C4((a1 + 3), a2, a3, a4, a5, a6, a7, a8, a9, *&a10, *&a12, a14, *&a9.f64[0], *&a9.f64[1], a10, a11, a12, a13, *&a14.f64[0], *&a14.f64[1], a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
  return a1;
}

void sub_233731248(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284902DC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2337312C4(uint64_t a1, int *a2, unint64_t *a3, double *a4, double *a5, int *a6, unint64_t *a7, double *a8, float64x2_t a9, double a10, double a11, float64x2_t a12, double *a13, int *a14, int *a15, double *a16, double *a17, double *a18, double *a19, int *a20, double *a21, double *a22, double *a23, int *a24, double *a25, double *a26, double *a27, int *a28, double *a29, double *a30, double *a31)
{
  v32 = *a2;
  *&a9.f64[0] = *a3;
  v33 = *a4;
  v34 = *a5;
  v35 = *a6;
  *&a12.f64[0] = *a7;
  v36 = *a8;
  v37 = *a13;
  v38 = *a14;
  v39 = *a15;
  v40 = *a16;
  v41 = *a17;
  v42 = *a18;
  v43 = *a20;
  v44 = *a24;
  v45 = *a28;
  v47 = *a19;
  v48 = *a21;
  v49 = *a22;
  v50 = *a23;
  v51 = *a25;
  v52 = *a26;
  v55 = *a30;
  v56 = *a31;
  v53 = *a27;
  v54 = *a29;

  return sub_2337313A4(a1, v32, v35, v38, v39, v43, v44, v45, a9, v33, v34, a12, v36, v37, v40, v41, v42, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);
}

uint64_t sub_2337313A4(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, float64x2_t a9, float64_t a10, double a11, float64x2_t a12, float64_t a13, double a14, double a15, float64_t a16, float64_t a17, double a18, float64_t a19, float64_t a20, double a21, float64_t a22, float64_t a23, double a24, float64_t a25, float64_t a26, double a27)
{
  result = sub_233730EF8(a1, a2, a3, a4, a9, a10, a11, a12, a13, a14);
  v33.f64[0] = a19;
  v34.f64[0] = a22;
  v35.f64[0] = a25;
  *result = &unk_284902E10;
  *(result + 76) = a5;
  *(result + 104) = a18;
  *(result + 112) = a6;
  *(result + 120) = a19;
  *(result + 128) = a20;
  *(result + 136) = a21;
  *(result + 144) = a7;
  *(result + 152) = a22;
  *(result + 160) = a23;
  *(result + 168) = a24;
  *(result + 176) = a8;
  *(result + 184) = a25;
  *(result + 192) = a26;
  *(result + 200) = a27;
  v36.f64[0] = a16;
  *(result + 80) = fmin(fmax(a15, 0.0), 1.0);
  v36.f64[1] = a17;
  if (a5)
  {
    v37 = vminnmq_f64(vmaxnmq_f64(v36, xmmword_233903E00), xmmword_233903E10);
    *(result + 104) = fmin(fmax(a18, -0.5), 1.5);
  }

  else
  {
    v37 = vminnmq_f64(vmaxnmq_f64(v36, xmmword_233903E20), xmmword_233903E30);
  }

  *(result + 88) = v37;
  v33.f64[1] = a20;
  if (a6)
  {
    v38 = vminnmq_f64(vmaxnmq_f64(v33, xmmword_233903E40), xmmword_233903E50);
    *(result + 136) = fmin(fmax(a21, -1000.0), 1000.0);
  }

  else
  {
    v38 = vminnmq_f64(vmaxnmq_f64(v33, xmmword_233903E60), xmmword_233903E70);
  }

  *(result + 120) = v38;
  v34.f64[1] = a23;
  if (a7)
  {
    v39 = vminnmq_f64(vmaxnmq_f64(v34, xmmword_233903E00), xmmword_233903E10);
    *(result + 168) = fmin(fmax(a24, -0.5), 1.5);
  }

  else
  {
    v39 = vminnmq_f64(vmaxnmq_f64(v34, xmmword_233903E20), xmmword_233903E30);
  }

  *(result + 152) = v39;
  v35.f64[1] = a26;
  if (a8)
  {
    v40 = vminnmq_f64(vmaxnmq_f64(v35, xmmword_233903E40), xmmword_233903E50);
    *(result + 200) = fmin(fmax(a27, -1000.0), 1000.0);
  }

  else
  {
    v40 = vminnmq_f64(vmaxnmq_f64(v35, xmmword_233903E60), xmmword_233903E70);
  }

  *(result + 184) = v40;
  return result;
}

void *sub_233731694(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_23372375C(result, a2);
  }

  return result;
}

void sub_233731750(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_23373176C(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_23372375C(v6, v10);
    }

    sub_2337235BC();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void *sub_233731904(void *a1, void **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284902F48;
  sub_23372A01C(a1 + 3, *a2);
  return a1;
}

void sub_233731984(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284902F48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_233731A00(uint64_t a1, const char *a2, const void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  *sub_2337251D0(a1, a3) = &unk_284902F98;
  *(a1 + 48) = fopen(a2, "r");
  v5 = strlen(a2);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2337304FC();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  *(a1 + 79) = v5;
  v7 = (a1 + 56);
  if (v5)
  {
    memmove(v7, a2, v5);
  }

  *(v7 + v6) = 0;
  *(a1 + 80) = 0;
  v8 = *(a1 + 48);
  if (!v8)
  {
    v9 = __error();
    snprintf(__str, 0x80uLL, "Failed to open file[%d]: %s\n", *v9, __str);
    v8 = *(a1 + 48);
    if (!v8)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](exception, "RawCameraException");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  setvbuf(v8, 0, 0, 0x4000uLL);
  return a1;
}

void *sub_233731BF0(uint64_t a1)
{
  *a1 = &unk_284902F98;
  v2 = *(a1 + 48);
  if (v2)
  {
    fclose(v2);
    *(a1 + 48) = 0;
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  return sub_23372525C(a1);
}

void sub_233731C64(uint64_t a1)
{
  sub_233731BF0(a1);

  JUMPOUT(0x2383ABF10);
}

char *sub_233731C9C@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[79] < 0)
  {
    return sub_233731FB8(a2, *(result + 7), *(result + 8));
  }

  *a2 = *(result + 56);
  *(a2 + 16) = *(result + 9);
  return result;
}

uint64_t sub_233731CC4(uint64_t a1)
{
  v2 = fileno(*(a1 + 48));
  if (v2 < 1 || !fstat(v2, &v4))
  {
    return sub_2337252E0(a1);
  }

  sub_233723C18(&v5, &v4.st_size);
  return v5;
}

uint64_t sub_233731D28(uint64_t a1, void *__ptr, size_t a3)
{
  v8 = fread(__ptr, 1uLL, a3, *(a1 + 48));
  sub_233723C18(&v9, &v8);
  v5 = v9;
  if (a3 != v9)
  {
    v6 = *(a1 + 48);
    if (!ferror(v6))
    {
      feof(v6);
      return v9;
    }
  }

  return v5;
}

uint64_t sub_233731DA8(uint64_t a1, int *a2, int a3)
{
  v9 = 0;
  if (!a3)
  {
    v9 = sub_233725414(a1);
  }

  v6 = *(a1 + 48);
  v10 = *a2;
  v7 = sub_233725A80(&v10, &v9);
  result = fseeko(v6, *v7, a3);
  if (result)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

uint64_t sub_233731E54(uint64_t a1)
{
  v3 = ftello(*(a1 + 48));
  sub_2337268D8(&v4, &v3);
  LODWORD(v3) = sub_233725414(a1);
  sub_233731EB0(&v4, &v3);
  return v4;
}

_DWORD *sub_233731EB0(_DWORD *result, _DWORD *a2)
{
  v2 = __OFSUB__(*result, *a2);
  *result -= *a2;
  if (v2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

void sub_233731F14(uint64_t a1)
{
  v1 = *(a1 + 80);
  *(a1 + 80) = v1 + 1;
  if (!v1)
  {
    flockfile(*(a1 + 48));
  }
}

void sub_233731F30(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 <= 0)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v2 = v1 - 1;
  *(a1 + 80) = v2;
  if (!v2)
  {
    v3 = *(a1 + 48);

    funlockfile(v3);
  }
}

void *sub_233731FB8(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_2337304FC();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

uint64_t sub_23373205C(uint64_t a1, uint64_t a2, _DWORD *a3, char a4)
{
  v8 = sub_2337251D0(a1, 0);
  *v8 = &unk_284903018;
  *(v8 + 48) = a2;
  *(v8 + 56) = *a3;
  *(v8 + 64) = a2;
  *(v8 + 72) = a4;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return a1;
}

void *sub_233732134(uint64_t a1)
{
  *a1 = &unk_284903018;
  if (*(a1 + 72) == 1)
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      MEMORY[0x2383ABEF0](v2, 0x1000C8077774924);
    }
  }

  return sub_23372525C(a1);
}

void sub_2337321B0(uint64_t a1)
{
  sub_233732134(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2337321F0(uint64_t a1, void *a2, unint64_t a3)
{
  v3 = *(a1 + 64);
  v4 = *(a1 + 48);
  v5 = v3 >= v4;
  v6 = v3 - v4;
  if (v5 && ((v10 = *(a1 + 56), v6 < 0) || v6 < v10))
  {
    v15 = v6;
    v16[0] = v10;
    *v16 = *sub_2337323F0(v16, &v15);
    v14 = a3;
    if (a3 >= *v16)
    {
      v11 = v16;
    }

    else
    {
      v11 = &v14;
    }

    sub_233723C18(&__len, v11);
    v12 = __len;
    memmove(a2, *(a1 + 64), __len);
    *(a1 + 64) += v12;
  }

  else
  {
    v16[0] = 0;
    sub_233726998(&__len, v16);
    return __len;
  }

  return v12;
}

uint64_t sub_2337322BC(uint64_t a1, int *a2, int a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = *(a1 + 64) + *a2;
    }

    else
    {
      if (a3 != 2)
      {
        v4 = *(a1 + 64);
        goto LABEL_9;
      }

      v4 = *(a1 + 48) + *(a1 + 56) + *a2;
    }
  }

  else
  {
    v5 = *(a1 + 48) + *a2;
    v4 = v5 + sub_233725414(a1);
  }

  *(a1 + 64) = v4;
LABEL_9:
  v6 = *(a1 + 48);
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (!v7 || v8 >= 0 && v8 > *(a1 + 56))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return 0;
}

uint64_t sub_233732390(uint64_t a1)
{
  v3 = *(a1 + 64) - *(a1 + 48);
  sub_2337268D8(&v4, &v3);
  LODWORD(v3) = sub_233725414(a1);
  sub_233731EB0(&v4, &v3);
  return v4;
}

_DWORD *sub_2337323F0(_DWORD *result, void *a2)
{
  v2 = *result;
  v3 = __OFSUB__(v2, *a2);
  v4 = v2 - *a2;
  *result = v4;
  if (v3 || HIDWORD(v4))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

uint64_t sub_23373245C(uint64_t a1, void *a2, char a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_284903098;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = -1;
  v11 = a2[1];
  *(a1 + 80) = *a2;
  *(a1 + 88) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 96) = a3;
  *(a1 + 97) = 0;
  *(a1 + 104) = 0;
  v12 = v10;
  *(a1 + 112) = v12;
  *(a1 + 128) = 0;
  *(a1 + 120) = a1 + 128;
  v23 = v12;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = a1 + 152;
  *(a1 + 160) = 0;
  *(a1 + 176) = 0;
  *(a1 + 168) = a1 + 176;
  *(a1 + 184) = 0;
  *(a1 + 200) = 0;
  *(a1 + 192) = a1 + 200;
  *(a1 + 224) = 0;
  *(a1 + 216) = a1 + 224;
  *(a1 + 208) = 0;
  *(a1 + 232) = 0;
  *(a1 + 248) = 0;
  *(a1 + 240) = a1 + 248;
  *(a1 + 264) = a1 + 272;
  *(a1 + 256) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 296) = 0;
  *(a1 + 288) = a1 + 296;
  *(a1 + 320) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = a1 + 320;
  *(a1 + 328) = 0;
  *(a1 + 344) = 0;
  *(a1 + 336) = a1 + 344;
  *(a1 + 352) = 0;
  *(a1 + 368) = 0;
  *(a1 + 360) = a1 + 368;
  *(a1 + 392) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = a1 + 392;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = a1 + 416;
  *(a1 + 432) = a1 + 440;
  *(a1 + 440) = 0;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = a1 + 464;
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 480) = a1 + 488;
  v18 = *a2;
  v17 = a2[1];
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  v19 = *(a1 + 88);
  *(a1 + 80) = v18;
  *(a1 + 88) = v17;
  if (v19)
  {
    sub_2337239E8(v19);
  }

  if (v9)
  {
    v20 = v9;
  }

  else
  {
    v20 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v13, v14, v15, v16);
  }

  v21 = *(a1 + 104);
  *(a1 + 104) = v20;

  return a1;
}

void sub_233732694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  sub_233735DD8(v20 + 240, *(v14 + 488));
  sub_233735DD8(v20 + 216, *(v14 + 464));
  sub_233735DD8(v20 + 192, *(v14 + 440));
  sub_233735DD8(v20 + 168, *(v14 + 416));
  sub_233735DD8(v20 + 144, *(v14 + 392));
  sub_233735DD8(v18, *(v14 + 368));
  sub_233735DD8(v17, *(v14 + 344));
  sub_233735DD8(v16, *(v14 + 320));
  sub_233735DD8(v15, *(v14 + 296));
  sub_233735D24(v21, *(v14 + 272));
  sub_233735D24(v20, *(v14 + 248));
  sub_233735D24(v19, *(v14 + 224));
  sub_233735D24(a10, *(v14 + 200));
  sub_233735D24(a11, *(v14 + 176));
  sub_233735D24(a12, *(v14 + 152));
  sub_233735D24(a13, *(v14 + 128));

  v23 = *(v14 + 88);
  if (v23)
  {
    sub_2337239E8(v23);
  }

  sub_2338F8444(v14);

  _Unwind_Resume(a1);
}

uint64_t sub_23373279C(void *a1)
{
  if (a1[6])
  {
    return a1[6];
  }

  else
  {
    return (*(*a1 + 88))();
  }
}

uint64_t sub_2337327D8(void *a1)
{
  if (a1[7])
  {
    return a1[7];
  }

  else
  {
    return (*(*a1 + 88))();
  }
}

uint64_t sub_23373288C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a1 + 240;
  (*(*a1 + 392))(__p);
  v6 = sub_233735E3C(v5, __p);
  if (a1 + 248 == v6 || (v7 = *(v6 + 56), *(v6 + 64) == v7))
  {
    v8 = 0;
  }

  else
  {
    *a3 = *v7;
    v8 = 1;
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

void sub_233732940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23373295C(uint64_t a1, uint64_t a2, const void **a3, unint64_t a4)
{
  if (a4)
  {
    v7 = a4;
    v8 = a1 + 272;
    v9 = 0;
    v10 = 4;
    do
    {
      (*(*a1 + 392))(__p, a1, a2);
      v11 = sub_233735E3C(a1 + 264, __p);
      if (v8 == v11 || (v12 = *(v11 + 56), v7 >= (*(v11 + 64) - v12) >> 3))
      {
        v13 = 0;
      }

      else
      {
        v9 = *(v12 + 8 * v7);
        v13 = 1;
      }

      if (v28 < 0)
      {
        operator delete(__p[0]);
      }

      if (!v13)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v15 = a3[1];
      v14 = a3[2];
      if (v15 >= v14)
      {
        v17 = *a3;
        v18 = v15 - *a3;
        v19 = v18 >> 3;
        v20 = (v18 >> 3) + 1;
        if (v20 >> 61)
        {
          sub_2337235BC();
        }

        v21 = v14 - v17;
        if (v21 >> 2 > v20)
        {
          v20 = v21 >> 2;
        }

        if (v21 >= 0x7FFFFFFFFFFFFFF8)
        {
          v22 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v20;
        }

        if (v22)
        {
          sub_233723798(a3, v22);
        }

        *(8 * v19) = v9;
        v16 = 8 * v19 + 8;
        memcpy(0, v17, v18);
        v23 = *a3;
        *a3 = 0;
        a3[1] = v16;
        a3[2] = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        *v15 = v9;
        v16 = (v15 + 8);
      }

      a3[1] = v16;
      ++v7;
      --v10;
    }

    while (v10);
    return 1;
  }

  else
  {
    (*(*a1 + 392))(__p, a1, a2);
    v24 = sub_233732BD0(a1 + 264, __p, a3);
    if (v28 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v24;
}

void sub_233732BA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_233732BD0(uint64_t a1, void **a2, void *a3)
{
  v5 = sub_233735E3C(a1, a2);
  v6 = v5;
  v7 = a1 + 8;
  if (v7 != v5 && (v5 + 56) != a3)
  {
    sub_23373176C(a3, *(v5 + 56), *(v5 + 64), (*(v5 + 64) - *(v5 + 56)) >> 3);
  }

  return v7 != v6;
}

void sub_233732C38(uint64_t a1@<X0>, int a2@<W1>, void **a3@<X8>)
{
  sub_233731694(a3, 4uLL);
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  sub_23372A488(&__p, "IFD0:SUBIFD0");
  v6 = (*(*a1 + 248))(a1, &__p, &v41, 0);
  v7 = v6;
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p);
    if (v7)
    {
      goto LABEL_7;
    }
  }

  else if (v6)
  {
    goto LABEL_7;
  }

  sub_23372A488(&__p, "IFD0");
  (*(*a1 + 248))(a1, &__p, &v41, 0);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p);
  }

LABEL_7:
  sub_23372A488(&__p, "IFD0:SUBIFD0:DeltaH");
  v8 = (*(*a1 + 248))(a1, &__p, &v38, 0);
  v9 = v8;
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p);
    if (v9)
    {
      goto LABEL_13;
    }
  }

  else if (v8)
  {
    goto LABEL_13;
  }

  sub_23372A488(&__p, "IFD0:DeltaH");
  (*(*a1 + 248))(a1, &__p, &v38, 0);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p);
  }

LABEL_13:
  sub_23372A488(&__p, "IFD0:SUBIFD0:DeltaV");
  v10 = (*(*a1 + 248))(a1, &__p, &v35, 0);
  v11 = v10;
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p);
    if (v11)
    {
      goto LABEL_18;
    }
  }

  else if (v10)
  {
    goto LABEL_18;
  }

  sub_23372A488(&__p, "IFD0:DeltaV");
  (*(*a1 + 248))(a1, &__p, &v35, 0);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p);
    if (a2)
    {
      goto LABEL_19;
    }

    goto LABEL_35;
  }

LABEL_18:
  if (a2)
  {
LABEL_19:
    v12 = v41;
    if (v42 == v41)
    {
      v15 = 0.0;
    }

    else
    {
      v13 = 0.0;
      do
      {
        v14 = *v12++;
        v13 = v13 + v14;
      }

      while (v12 != v42);
      v15 = round(v13 / (v42 - v41));
    }

    v16 = v38;
    if (v39 != v38)
    {
      v17 = 0.0;
      do
      {
        v18 = *v16++;
        v17 = v17 + v18;
      }

      while (v16 != v39);
      v15 = v15 + round(v17 / ((v39 - v38) >> 3));
    }

    v19 = v35;
    if (v36 != v35)
    {
      v20 = 0.0;
      v21 = v35;
      do
      {
        v22 = *v21++;
        v20 = v20 + v22;
      }

      while (v21 != v36);
      v15 = v15 + floor(v20 / ((v36 - v35) >> 3));
    }

    v23 = *a3;
    if ((a3[1] - *a3) <= 0x18)
    {
      sub_2337306B0();
    }

    v23[2] = v15;
    v23[3] = v15;
    *v23 = v15;
    v23[1] = v15;
    goto LABEL_46;
  }

LABEL_35:
  sub_233731694(&__p, 4uLL);
  v24 = *a3;
  if (*a3)
  {
    a3[1] = v24;
    operator delete(v24);
  }

  v25 = __p;
  *a3 = __p;
  v26 = v34;
  *(a3 + 1) = v34;
  v19 = v35;
  if (v26 != v25)
  {
    v27 = 0;
    v28 = v41;
    v29 = v42 - v41;
    v30 = v38;
    v31 = (v39 - v38) >> 3;
    v32 = (v36 - v35) >> 3;
    do
    {
      if (v29 > v27)
      {
        v25[v27] = v28[v27] + v25[v27];
      }

      if (v31 > v27)
      {
        v25[v27] = v30[v27] + v25[v27];
      }

      if (v32 > v27)
      {
        v25[v27] = v19[v27] + v25[v27];
      }

      ++v27;
    }

    while (v26 - v25 > v27);
  }

LABEL_46:
  if (v19)
  {
    v36 = v19;
    operator delete(v19);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }
}

void sub_233733084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  v24 = *(v22 - 56);
  if (v24)
  {
    *(v22 - 48) = v24;
    operator delete(v24);
  }

  v25 = *v21;
  if (*v21)
  {
    *(v21 + 8) = v25;
    operator delete(v25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233733118(uint64_t a1)
{
  v2 = a1 + 192;
  (*(*a1 + 392))(__p);
  v3 = sub_233735E3C(v2, __p);
  if (a1 + 200 == v3 || (v4 = *(v3 + 56), *(v3 + 64) == v4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_2337331B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337331D4(uint64_t a1)
{
  v2 = a1 + 216;
  (*(*a1 + 392))(__p);
  v3 = sub_233735E3C(v2, __p);
  if (a1 + 224 == v3 || (v4 = *(v3 + 56), *(v3 + 64) == v4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_233733274(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_233733290(uint64_t a1, uint64_t a2, char a3)
{
  (*(*a1 + 392))(__p);
  v6 = sub_233735E3C(a1 + 288, __p);
  v7 = v6;
  if (a1 + 296 == v6)
  {
    v8 = -1.0;
  }

  else
  {
    v8 = *(v6 + 56);
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 296 == v7 && (a3 & 1) != 0)
  {
    (*(*a1 + 392))(__p, a1, a2);
    v9 = (*(*a1 + 288))(a1, __p);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = -1.0;
    if (v9 > -100.0)
    {
      return exp2(-v9);
    }
  }

  return v8;
}

void sub_2337333FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_233733424(uint64_t a1)
{
  (*(*a1 + 392))(__p);
  v2 = sub_233735E3C(a1 + 312, __p);
  if (a1 + 320 == v2)
  {
    v3 = -101.0;
  }

  else
  {
    v3 = *(v2 + 56);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_2337334C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_2337334DC(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 392))(__p);
  v4 = sub_233735E3C(a1 + 336, __p);
  v5 = v4;
  if (a1 + 344 == v4)
  {
    v6 = -1.0;
  }

  else
  {
    v6 = *(v4 + 56);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 344 == v5)
  {
    (*(*a1 + 392))(__p, a1, a2);
    v7 = sub_233735E3C(a1 + 360, __p);
    if (a1 + 368 == v7)
    {
      v8 = -0.5;
    }

    else
    {
      v8 = *(v7 + 56) * 0.5;
    }

    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    return exp2(v8);
  }

  return v6;
}

void sub_23373360C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373362C(uint64_t a1)
{
  (*(*a1 + 392))(__p);
  v2 = sub_233735E3C(a1 + 384, __p);
  if (a1 + 392 == v2)
  {
    v3 = -1.0;
  }

  else
  {
    v3 = *(v2 + 56);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_2337336C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337336E0(uint64_t a1)
{
  (*(*a1 + 392))(__p);
  v2 = sub_233735E3C(a1 + 456, __p);
  if (a1 + 464 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 56);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_233733770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23373378C(uint64_t a1)
{
  (*(*a1 + 392))(__p);
  v2 = sub_233735E3C(a1 + 480, __p);
  if (a1 + 488 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 56);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_23373381C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_233733860(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

double sub_23373386C()
{
  if ((atomic_load_explicit(&qword_280C04DA0, memory_order_acquire) & 1) == 0)
  {
    sub_2338F8494();
  }

  return *&qword_280C04DA8;
}

uint64_t sub_2337338AC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 80);
  if (!v2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v3 = *(result + 88);
  *a2 = v2;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_23373391C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    return sub_233731FB8(a2, *a1, *(a1 + 8));
  }

  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  return result;
}

id sub_233733948(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (!v1)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return v1;
}

void sub_233733AD4(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_233733AE0(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_233733B24(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_233733B30(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  (*(*a1 + 584))(v5);
  sub_233733BCC(v5, a2, a3);
  v6 = v5;
  sub_233723948(&v6);
}

void sub_233733BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_233723948(va);
  _Unwind_Resume(a1);
}

void sub_233733BCC(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  if (*(a1 + 8) == *a1)
  {
    *a3 = 0;
    a3[1] = 0;
    return;
  }

  v8 = *v4;
  v7 = v4[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v8)
  {
    goto LABEL_25;
  }

  v9 = *(v8 + 16);
  v10 = *a1;
  if (*(a1 + 8) != *a1)
  {
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = v10[v11];
      if (!v13)
      {
        break;
      }

      if (a2 > 0xA0)
      {
        v14 = sub_2337DE858(v8);
        v15 = sub_2337DE858(*(*a1 + v11 * 8));
      }

      else
      {
        v14 = sub_2337DE858(v13);
        v15 = sub_2337DE858(v8);
      }

      if (v14 <= v15 && SHIDWORD(v14) <= SHIDWORD(v15))
      {
        v17 = (*a1 + v11 * 8);
        v8 = *v17;
        v18 = v17[1];
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v7)
        {
          sub_2337239E8(v7);
        }

        v7 = v18;
        if (!v9)
        {
          v9 = *(v8 + 16);
          v7 = v18;
        }
      }

      ++v12;
      v10 = *a1;
      v11 += 2;
      if (v12 >= (*(a1 + 8) - *a1) >> 4)
      {
        v19 = *(v8 + 16);
        goto LABEL_30;
      }
    }

LABEL_25:
    *a3 = 0;
    a3[1] = 0;
    if (v7)
    {

      sub_2337239E8(v7);
    }

    return;
  }

  v19 = *(v8 + 16);
LABEL_30:
  if (v19)
  {
    v20 = 1;
  }

  else
  {
    v20 = v9 == 0;
  }

  if (!v20)
  {
    *(v8 + 16) = v9;
  }

  *a3 = v8;
  a3[1] = v7;
}

void sub_233733D50(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_2337239E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233733D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  v4 = a1 + 168;
  (*(*a1 + 392))(__p);
  v5 = (*(*a3 + 16))(a3, v4, __p, &v9);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

void sub_233733E28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_233733E44(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void **a5@<X8>)
{
  v23 = 0;
  v24 = 0;
  v25 = 0;
  (*(*a1 + 392))(&__p);
  v10 = (*(*a3 + 24))(a3, a1 + 120, &__p, a4, &v23);
  v11 = v10;
  if ((SHIBYTE(v22) & 0x80000000) == 0)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_9:
    __p = 0;
    v21 = 0;
    v22 = 0;
    v17 = sub_233732BD0(a1 + 144, a2, &__p);
    v18 = __p;
    if (v17 && (v19 = v21, v21 - __p == 24))
    {
      *a5 = __p;
      a5[1] = v19;
      a5[2] = v22;
    }

    else
    {
      *a5 = 0;
      a5[1] = 0;
      a5[2] = 0;
      if (v18)
      {
        v21 = v18;
        operator delete(v18);
      }
    }

    v13 = v23;
LABEL_15:
    if (!v13)
    {
      return;
    }

    goto LABEL_16;
  }

  operator delete(__p);
  if (!v11)
  {
    goto LABEL_9;
  }

LABEL_3:
  sub_233730758(a5, (v24 - v23) >> 2);
  v13 = v23;
  if (v24 == v23)
  {
    goto LABEL_15;
  }

  v14 = 0;
  v15 = (v24 - v23) >> 2;
  v16 = *a5;
  if (v15 <= 1)
  {
    v15 = 1;
  }

  do
  {
    LODWORD(v12) = v13[v14];
    v12 = *&v12;
    v16[v14++] = v12;
  }

  while (v15 != v14);
LABEL_16:
  v24 = v13;
  operator delete(v13);
}

void sub_233733FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_23373401C(uint64_t a1@<X0>, int *a2@<X1>, unsigned int *a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v17 = a4;
  sub_2337338AC(a1, &v15);
  v9 = (**v15)(v15);
  if (v16)
  {
    sub_2337239E8(v16);
  }

  if (!v9)
  {
    goto LABEL_13;
  }

  LODWORD(v15) = *a2;
  v10 = *sub_233723874(&v15, a3);
  sub_2337338AC(a1, &v15);
  v11 = (*(*v15 + 16))(v15);
  v12 = v10 < 0 || v11 >= v10;
  v13 = v12;
  if (v16)
  {
    sub_2337239E8(v16);
  }

  if (!v13)
  {
    *a5 = 0;
    a5[1] = 0;
  }

  else
  {
LABEL_13:
    *a5 = 0;
    a5[1] = 0;
    v14 = *a3;
    if (v14)
    {
      sub_233734180(a1, *a2, v14);
      sub_233735F54();
    }
  }
}

void sub_233734158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_233734180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  if (a3)
  {
    v3 = a3;
    sub_2337338AC(a1, &v22);
    sub_2337268D8(&v20, &v25);
    sub_233725F08(v24, &v22, &v20, 0);
    if (v23)
    {
      sub_2337239E8(v23);
    }

    sub_2337338AC(a1, &v20);
    sub_233735A18(&v22, &v20, 2);
    if (v21)
    {
      sub_2337239E8(v21);
    }

    sub_2337338AC(a1, &v20);
    v5 = sub_2337255C0(v20);
    if (v21)
    {
      sub_2337239E8(v21);
    }

    v6 = 0;
    v7 = 0;
    if ((*(*a1 + 616))(a1, v5))
    {
      do
      {
        sub_2337338AC(a1, &v20);
        v8 = sub_2337255C0(v20);
        if (v21)
        {
          sub_2337239E8(v21);
        }

        sub_2337338AC(a1, &v20);
        v9 = sub_2337255C0(v20);
        if (v21)
        {
          sub_2337239E8(v21);
        }

        sub_2337338AC(a1, &v20);
        v10 = (*(*v20 + 48))(v20);
        if (v21)
        {
          sub_2337239E8(v21);
        }

        if (v8 < 0xFF01)
        {
          break;
        }

        if (v8 == 65472)
        {
          sub_2337338AC(a1, &v20);
          sub_233725510(v20);
          if (v21)
          {
            sub_2337239E8(v21);
          }

          sub_2337338AC(a1, &v20);
          v11 = sub_2337255C0(v20);
          if (v21)
          {
            sub_2337239E8(v21);
          }

          sub_2337338AC(a1, &v20);
          v12 = sub_2337255C0(v20);
          if (v21)
          {
            sub_2337239E8(v21);
          }

          v6 = v12;
          v7 = v11;
        }

        v13 = v9 - 2;
        v3 = v3 - 4 - (v9 - 2);
        if (v3 >= 0)
        {
          sub_2337338AC(a1, &v20);
          v14 = v20;
          v18 = v10 + v13;
          sub_2337268D8(&v19, &v18);
          (*(*v14 + 40))(v14, &v19, 0);
          if (v21)
          {
            sub_2337239E8(v21);
          }
        }

        v15 = !v6 || v7 == 0;
        v16 = v15;
      }

      while (v3 >= 5 && v16 && v8 != 65498);
    }

    sub_233735A90(&v22);
    sub_233725FD4(v24);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  return v6 | (v7 << 32);
}

void sub_233734468(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x233734440);
}

void sub_23373455C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*a1 + 8))(&v21);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = v21;
  if (v22 != v21)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(a2 + 23);
      if ((v6 & 0x80u) != 0)
      {
        v6 = *(a2 + 8);
      }

      if (v6)
      {
        sub_23372A488(&v18, ".");
        v7 = *(v21 + v4 + 23);
        if (v7 >= 0)
        {
          v8 = (v21 + v4);
        }

        else
        {
          v8 = *(v21 + v4);
        }

        if (v7 >= 0)
        {
          v9 = *(v21 + v4 + 23);
        }

        else
        {
          v9 = *(v21 + v4 + 8);
        }

        v10 = std::string::append(&v18, v8, v9);
        v11 = *&v10->__r_.__value_.__l.__data_;
        v20 = v10->__r_.__value_.__r.__words[2];
        *__p = v11;
        v10->__r_.__value_.__l.__size_ = 0;
        v10->__r_.__value_.__r.__words[2] = 0;
        v10->__r_.__value_.__r.__words[0] = 0;
        if (v20 >= 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }

        if (v20 >= 0)
        {
          v13 = HIBYTE(v20);
        }

        else
        {
          v13 = __p[1];
        }

        std::string::append(a2, v12, v13);
        if (SHIBYTE(v20) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v18.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v14 = v3 + v4;
        v15 = *(v14 + 23);
        if (v15 >= 0)
        {
          v16 = v14;
        }

        else
        {
          v16 = *v14;
        }

        if (v15 >= 0)
        {
          v17 = *(v14 + 23);
        }

        else
        {
          v17 = *(v14 + 8);
        }

        std::string::append(a2, v16, v17);
      }

      ++v5;
      v3 = v21;
      v4 += 24;
    }

    while (v5 < 0xAAAAAAAAAAAAAAABLL * ((v22 - v21) >> 3));
  }

  __p[0] = &v21;
  sub_233735AD4(__p);
}

void sub_2337346F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (*(v22 + 23) < 0)
  {
    operator delete(*v22);
  }

  a16 = &a22;
  sub_233735AD4(&a16);
  _Unwind_Resume(a1);
}

void sub_233734750(void *a1@<X1>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_23373476C(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  if (((*(*a1 + 64))(a1) & 1) == 0)
  {
    *a3 = 0;
    a3[1] = 0;
    return;
  }

  (**a1)(&v59, a1);
  v10 = sub_233729FBC(&v59, v6, v7, v8, v9);
  if (v60 < 0)
  {
    operator delete(v59);
  }

  if (!v10)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  sub_2338E9198(v10, &v58);
  if (objc_msgSend_hasPrefix_(v10, v11, @"dng.", v12, v13))
  {
    (*(*a1 + 624))(&v59, a1, &v58, v10);
    v14 = v59;
    v59 = 0uLL;
    v15 = *(&v58 + 1);
    v58 = v14;
    if (v15)
    {
      sub_2337239E8(v15);
      if (*(&v59 + 1))
      {
        sub_2337239E8(*(&v59 + 1));
      }
    }
  }

  *a3 = 0;
  a3[1] = 0;
  v16 = (*(*a1 + 408))(a1);
  v17 = (*(*a1 + 72))(a1);
  if (!v58 || !sub_23386DA24(v58))
  {
    if (!v16)
    {
      *a3 = 0;
      a3[1] = 0;
LABEL_82:
      sub_2338E9198(@"unsupported", &v59);
      v40 = v59;
      v59 = 0uLL;
      v41 = *(&v58 + 1);
      v58 = v40;
      if (v41)
      {
        sub_2337239E8(v41);
        if (*(&v59 + 1))
        {
          sub_2337239E8(*(&v59 + 1));
        }

        v42 = v58;
        if (v58)
        {
LABEL_86:
          v43 = *(&v58 + 1);
          if (*(&v58 + 1))
          {
            atomic_fetch_add_explicit((*(&v58 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v44 = a1[4];
          a1[3] = v42;
          a1[4] = v43;
          if (v44)
          {
            sub_2337239E8(v44);
          }

          sub_2337269FC(v53, a1 + 1);
          sub_233736260();
        }
      }

      else
      {
        v42 = v40;
        if (v40)
        {
          goto LABEL_86;
        }
      }

      v26 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v26, "RawCameraException");
LABEL_96:
      __cxa_throw(v26, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    sub_2338E9198(@"dng.adobe.generic", &v59);
    v21 = v59;
    v59 = 0uLL;
    v22 = *(&v58 + 1);
    v58 = v21;
    if (v22)
    {
      sub_2337239E8(v22);
      if (*(&v59 + 1))
      {
        sub_2337239E8(*(&v59 + 1));
      }

      v23 = v58;
      if (v58)
      {
LABEL_32:
        v24 = *(&v58 + 1);
        if (*(&v58 + 1))
        {
          atomic_fetch_add_explicit((*(&v58 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v25 = a1[4];
        a1[3] = v23;
        a1[4] = v24;
        if (v25)
        {
          sub_2337239E8(v25);
        }

        sub_2337269FC(v53, a1 + 1);
        sub_2337360E4();
      }
    }

    else
    {
      v23 = v21;
      if (v21)
      {
        goto LABEL_32;
      }
    }

    v26 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v26, "RawCameraException");
    goto LABEL_96;
  }

  v18 = v58;
  if (*(&v58 + 1))
  {
    atomic_fetch_add_explicit((*(&v58 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v19 = a1[4];
  *(a1 + 3) = v18;
  if (v19)
  {
    sub_2337239E8(v19);
  }

  sub_2337269FC(v53, a1 + 1);
  sub_23386FAAC(v53, &v59);
  v20 = v59;
  v59 = 0uLL;
  *a3 = v20;
  if (v53[1])
  {
    sub_2337239E8(v53[1]);
  }

  if (v20 && *a2)
  {
    (*(*v20 + 144))(&v59, v20);
    if (*(&v59 + 1) == v59 || (*(*v20 + 176))(v20) && (*(*v20 + 2152))(v20) && (*(*a1 + 528))(a1) != 3 && (*(*a1 + 528))(a1) != 1)
    {
      v46 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v46, "RawCameraException");
      __cxa_throw(v46, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    if (sub_233758BC4(*a2))
    {
      v54 = 0;
      v55 = 0;
      sub_2337583B4();
    }

    v27 = a2[1];
    v56 = *a2;
    v57 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v20 + 136))(v20, &v56);
    if (sub_233758B00(v56))
    {
      sub_2338E9198(@"dng.adobe.generic", v53);
      v29 = v53[0];
      v28 = v53[1];
      if (v53[1])
      {
        atomic_fetch_add_explicit(v53[1] + 1, 1uLL, memory_order_relaxed);
      }

      v30 = a1[4];
      a1[3] = v29;
      a1[4] = v28;
      if (v30)
      {
        sub_2337239E8(v30);
      }

      sub_2337269FC(&__p, a1 + 1);
      sub_2337360E4();
    }

    if (v16)
    {
      (*(*v20 + 1016))(v53, v20);
      (*(*a1 + 256))(&v51, a1, 0);
      v31 = (*(*v20 + 896))(v20);
      v50 = 0.0;
      sub_23372A488(&__p, "IFD0:SUBIFD0");
      v32 = (*(*a1 + 240))(a1, &__p, &v50);
      if (v49 < 0)
      {
        operator delete(__p);
      }

      if (v32)
      {
        if (vabdd_f64(v50, v31) > 5.0)
        {
          if (v51)
          {
            v52 = v51;
            operator delete(v51);
          }

          if (v53[0])
          {
            v53[1] = v53[0];
            operator delete(v53[0]);
          }

          goto LABEL_68;
        }

        v33 = vabdd_f64(*v51, *v53[0]);
        v52 = v51;
        operator delete(v51);
        if (v53[0])
        {
          v53[1] = v53[0];
          operator delete(v53[0]);
        }

        if (v33 > 5.0)
        {
          goto LABEL_68;
        }
      }

      else
      {
        if (v51)
        {
          v52 = v51;
          operator delete(v51);
        }

        if (v53[0])
        {
          v53[1] = v53[0];
          operator delete(v53[0]);
        }
      }
    }

    if ((v17 & v16) != 0)
    {
      if (((*(*v20 + 192))(v20) & 1) == 0)
      {
LABEL_68:
        sub_2338E9198(@"dng.adobe.generic", v53);
        v34 = *v53;
        v53[0] = 0;
        v53[1] = 0;
        v35 = *(&v58 + 1);
        v58 = v34;
        if (v35)
        {
          sub_2337239E8(v35);
          if (v53[1])
          {
            sub_2337239E8(v53[1]);
          }

          v36 = v58;
        }

        else
        {
          v36 = v34;
        }

        if (v36)
        {
          v37 = *(&v58 + 1);
          if (*(&v58 + 1))
          {
            atomic_fetch_add_explicit((*(&v58 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v38 = a1[4];
          a1[3] = v36;
          a1[4] = v37;
          if (v38)
          {
            sub_2337239E8(v38);
          }

          sub_2337269FC(&v51, a1 + 1);
          sub_2337360E4();
        }

LABEL_99:
        v47 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](v47, "RawCameraException");
        __cxa_throw(v47, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      if (((*(*v20 + 192))(v20) & 1) == 0)
      {
        goto LABEL_99;
      }
    }

    if (v57)
    {
      sub_2337239E8(v57);
    }

    v53[0] = &v59;
    sub_233735AD4(v53);
    (*(*v20 + 144))(&v59, v20);
    v39 = v59;
    v53[0] = &v59;
    sub_233735AD4(v53);
    if (*(&v39 + 1) == v39)
    {
      goto LABEL_82;
    }
  }

  if (*(&v58 + 1))
  {
    sub_2337239E8(*(&v58 + 1));
  }
}

void sub_2337351C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, uint64_t a30, std::__shared_weak_count *a31)
{
  if (a23)
  {
    sub_2337239E8(a23);
  }

  if (a29)
  {
    sub_2337239E8(a29);
  }

  a22 = (v33 - 128);
  sub_233735AD4(&a22);
  v35 = *(v32 + 8);
  if (v35)
  {
    sub_2337239E8(v35);
  }

  if (a31)
  {
    sub_2337239E8(a31);
  }

  _Unwind_Resume(a1);
}

void sub_233735380(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 216))(__p);
  sub_233735478(a2, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  (*(*a1 + 224))(__p, a1);
  sub_233735478(a2, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_233735440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_233735AD4(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_233735478(uint64_t result, __int128 *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_2337235BC();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      sub_233735B78(result, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = 24 * v8 + 24;
    v14 = *(result + 8) - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = sub_233735BD0(v18);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = v4 + 24;
  }

  v3[1] = v7;
  return result;
}

std::string *sub_2337355A8@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  (*(*a1 + 224))(a1);
  size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v5 = sub_2337356E8(v4, &v4[size], sub_233735774);
  v6 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  v7 = v6;
  v8 = a2 + v6;
  if (v7 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v8 = a2->__r_.__value_.__r.__words[0] + a2->__r_.__value_.__l.__size_;
    v9 = a2->__r_.__value_.__r.__words[0];
  }

  result = std::string::erase(a2, &v5[-v9], v8 - v5);
  v11 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  v12 = v11;
  v13 = a2->__r_.__value_.__r.__words[0];
  v14 = a2->__r_.__value_.__l.__size_;
  if ((v11 & 0x80u) == 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = a2->__r_.__value_.__r.__words[0];
  }

  if ((v11 & 0x80u) == 0)
  {
    v16 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = a2->__r_.__value_.__l.__size_;
  }

  if (v16)
  {
    do
    {
      if (v15->__r_.__value_.__s.__data_[0] == 47)
      {
        v15->__r_.__value_.__s.__data_[0] = 95;
      }

      v15 = (v15 + 1);
      --v16;
    }

    while (v16);
    v11 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
    v13 = a2->__r_.__value_.__r.__words[0];
    v14 = a2->__r_.__value_.__l.__size_;
    v12 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  if (v12 < 0)
  {
    v11 = v14;
  }

  else
  {
    v13 = a2;
  }

  for (; v11; --v11)
  {
    if (v13->__r_.__value_.__s.__data_[0] == 58)
    {
      v13->__r_.__value_.__s.__data_[0] = 95;
    }

    v13 = (v13 + 1);
  }

  return result;
}

void sub_2337356C8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_2337356E8(char *a1, char *a2, unsigned int (*a3)(void))
{
  v3 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while (!a3(*v3))
    {
      if (++v3 == a2)
      {
        v3 = a2;
        break;
      }
    }

    if (v3 != a2)
    {
      for (i = v3 + 1; i != a2; ++i)
      {
        if (!a3(*i))
        {
          *v3++ = *i;
        }
      }
    }
  }

  return v3;
}

BOOL sub_233735774(unsigned int a1)
{
  if (a1 <= 0x7F)
  {
    v1 = *(MEMORY[0x277D85DE0] + 4 * a1 + 60) & 0x4000;
  }

  else
  {
    v1 = __maskrune(a1, 0x4000uLL);
  }

  return v1 != 0;
}

std::string *sub_2337357BC@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  (*(*a1 + 232))(a1);
  size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v5 = sub_2337356E8(v4, &v4[size], sub_233735774);
  v6 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  v7 = v6;
  v8 = a2 + v6;
  if (v7 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v8 = a2->__r_.__value_.__r.__words[0] + a2->__r_.__value_.__l.__size_;
    v9 = a2->__r_.__value_.__r.__words[0];
  }

  result = std::string::erase(a2, &v5[-v9], v8 - v5);
  v11 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  v12 = v11;
  v13 = a2->__r_.__value_.__r.__words[0];
  v14 = a2->__r_.__value_.__l.__size_;
  if ((v11 & 0x80u) == 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = a2->__r_.__value_.__r.__words[0];
  }

  if ((v11 & 0x80u) == 0)
  {
    v16 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = a2->__r_.__value_.__l.__size_;
  }

  if (v16)
  {
    do
    {
      if (v15->__r_.__value_.__s.__data_[0] == 47)
      {
        v15->__r_.__value_.__s.__data_[0] = 95;
      }

      v15 = (v15 + 1);
      --v16;
    }

    while (v16);
    v11 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
    v13 = a2->__r_.__value_.__r.__words[0];
    v14 = a2->__r_.__value_.__l.__size_;
    v12 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  if (v12 < 0)
  {
    v11 = v14;
  }

  else
  {
    v13 = a2;
  }

  for (; v11; --v11)
  {
    if (v13->__r_.__value_.__s.__data_[0] == 58)
    {
      v13->__r_.__value_.__s.__data_[0] = 95;
    }

    v13 = (v13 + 1);
  }

  return result;
}

void sub_2337358DC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337358FC(void *a1@<X8>)
{
  memset(v3, 0, sizeof(v3));
  memset(v2, 0, sizeof(v2));
  memset(v1, 0, sizeof(v1));
  sub_233735C64(a1, v3, v2, v1);
  v4 = v1;
  sub_233723948(&v4);
  v1[0] = v2;
  sub_233723948(v1);
  v2[0] = v3;
  sub_233723948(v2);
}

void sub_233735984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v16 - 40) = v15;
  sub_233723948((v16 - 40));
  a9 = &a12;
  sub_233723948(&a9);
  a12 = &a15;
  sub_233723948(&a12);
  _Unwind_Resume(a1);
}

uint64_t *sub_233735A18(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v5 = *a1;
  }

  a1[2] = 0;
  if (v5)
  {
    a1[2] = sub_233725404(v5);
    sub_23372540C(*a1, a3);
  }

  return a1;
}

void sub_233735A78(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_233735A90(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    sub_23372540C(v2, a1[2]);
  }

  v3 = a1[1];
  if (v3)
  {
    sub_2337239E8(v3);
  }

  return a1;
}

void sub_233735AD4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_233735B28(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_233735B28(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void sub_233735B78(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_2337236AC();
}

uint64_t sub_233735BD0(uint64_t a1)
{
  sub_233735C08(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_233735C08(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
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

    while (v5 != a2);
  }
}

void *sub_233735C64(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_233724E88(a1, *a2, a2[1], (a2[1] - *a2) >> 4);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_233724E88((a1 + 3), *a3, a3[1], (a3[1] - *a3) >> 4);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  sub_233724E88((a1 + 6), *a4, a4[1], (a4[1] - *a4) >> 4);
  return a1;
}

void sub_233735CF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_233723948(va);
  sub_233723948(va);
  _Unwind_Resume(a1);
}

void sub_233735D24(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_233735D24(a1, *a2);
    sub_233735D24(a1, a2[1]);
    sub_233735D80((a2 + 4));

    operator delete(a2);
  }
}

void sub_233735D80(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void sub_233735DD8(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_233735DD8(a1, *a2);
    sub_233735DD8(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t sub_233735E3C(uint64_t a1, void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = sub_233735EBC((v3 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (sub_233735EBC(a2, (v5 + 32)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

uint64_t sub_233735EBC(void *a1, void **a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  return sub_233735EF4(a1, v2, v5, v6);
}

uint64_t sub_233735EF4(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

void *sub_233735FE0(void *a1, void *a2, int *a3, int *a4, unsigned int *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284903358;
  sub_2337DEB40((a1 + 3), a2, *a3, *a4, *a5);
  return a1;
}

void sub_233736068(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284903358;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_233736168(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2849033A8;
  sub_2337E326C((a1 + 3), a2);
}

void sub_2337361E4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2849033A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337362E4(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2849033F8;
  sub_233737534((a1 + 3), a2);
}

void sub_2337363A4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2849033F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_233736424(uint64_t a1)
{
  sub_233736628(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_23373645C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 48);
  if (!v2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v3 = *(result + 56);
  *a2 = v2;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_2337364CC(uint64_t a1)
{
  (*(*a1 + 112))(&v3);
  v1 = sub_233758A0C(v3);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_233736534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23373654C(uint64_t a1)
{
  (*(*a1 + 112))(&v3);
  v1 = sub_233758B00(v3);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_2337365B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337365CC()
{
  exception = __cxa_allocate_exception(0x10uLL);
  MEMORY[0x2383ABCE0](exception, "RawCameraException");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t sub_233736628(uint64_t a1)
{
  *a1 = &unk_284935460;
  sub_233736790(a1 + 376, *(a1 + 384));
  sub_233736790(a1 + 352, *(a1 + 360));
  sub_233736790(a1 + 328, *(a1 + 336));
  sub_233736790(a1 + 304, *(a1 + 312));

  return sub_2337366A8(a1);
}

uint64_t sub_2337366A8(uint64_t a1)
{
  *a1 = &unk_284904018;

  v2 = *(a1 + 272);
  if (v2)
  {
    sub_2337239E8(v2);
  }

  v3 = *(a1 + 256);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  v4 = *(a1 + 224);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  v5 = *(a1 + 192);
  if (v5)
  {
    sub_2337239E8(v5);
  }

  v6 = *(a1 + 176);
  if (v6)
  {
    sub_2337239E8(v6);
  }

  v7 = *(a1 + 144);
  if (v7)
  {
    *(a1 + 152) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 120);
  if (v8)
  {
    *(a1 + 128) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 104);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  v10 = *(a1 + 88);
  if (v10)
  {
    sub_2337239E8(v10);
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    sub_2337239E8(v11);
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    sub_2337239E8(v12);
  }

  v13 = *(a1 + 16);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  return a1;
}

void sub_233736790(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_233736790(a1, *a2);
    sub_233736790(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      sub_2337239E8(v4);
    }

    operator delete(a2);
  }
}

void sub_233737288(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_233721B78(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2337372A4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = objc_msgSend_kernelsWithString_messageLog_(MEMORY[0x277CBF760], a2, @"kernel vec4 apply1DLumaLUT (sampler src, sampler lut, float lutSize) __attribute__ ((preserves_opacity)) { \n vec4 c = sample(src, samplerCoord(src)) float luma = 0.299*c.r + 0.587*c.g + 0.114*c.b; float u = (c.b - luma)*0.565; float v = (c.r - luma)*0.713; luma = clamp(luma, 0.0, 1.0); float f = sample(lut, vec2(luma*lutSize, 0.5)).r; luma = f*luma; c.r = luma + 1.403*v; c.g = luma - 0.344*u - 0.714*v; c.b = luma + 1.770*u; return c; } \n vec4 highlightAndShadowFunc (vec4 c, vec4 param1, vec4 param2) __attribute__ ((preserves_opacity)) { \n float luma = 0.299*c.r + 0.587*c.g + 0.114*c.b; float u = (c.b - luma)*0.565; float v = (c.r - luma)*0.713; luma = clamp(luma, 0.0, 1.0); float highlightAmount = param1.x; float highlightCutoff = param1.y; float shadowAmount = param1.z; float shadowCutoff = param1.w; float gain = param2.x; gain = gain * (luma < shadowCutoff ? shadowAmount : (luma > highlightCutoff ? highlightAmount : 1.0)); luma = luma * gain; c.rgb *= gain; return c; } \n kernel vec4 highlightAndShadow (sampler src, vec4 param1, vec4 param2) __attribute__ ((preserves_opacity)) { \n vec4 c = sample(src, samplerCoord(src)); return highlightAndShadowFunc(c, param1, param2); } \n kernel vec4 localHighlightAndShadow (sampler src, sampler control, vec4 param1, vec4 param2) __attribute__ ((preserves_opacity)) { \n vec4 c = sample(src, samplerCoord(src)); vec4 m = sample(control, samplerCoord(control)); float highlightMultiplier = m.r + 1.0; float shadowMultiplier = m.g + 1.0; param2.x /= highlightMultiplier; param2.x *= shadowMultiplier; return param2.y < 1.0 ? highlightAndShadowFunc(c, param1, param2) : m; } \n kernel vec4 processControl (sampler control, vec4 param1, vec4 param2) __attribute__ ((preserves_opacity)) { \n vec4 m = sample(control, samplerCoord(control)); float luma = 0.299*m.r + 0.587*m.g + 0.114*m.b; float highlightCutoff = param1.y; float shadowCutoff = param1.w; float highlightMultiplier = luma > highlightCutoff ? 1.0 + (luma-highlightCutoff)/(1.0-highlightCutoff) : 1.0; float shadowMultiplier = luma < shadowCutoff ? 1.0 + (shadowCutoff - luma)/(shadowCutoff) : 1.0; return vec4(highlightMultiplier - 1.0, shadowMultiplier - 1.0, 0.0, 1.0); } \n", 0, a5);;
  v8 = objc_msgSend_objectAtIndex_(v15, v5, 2, v6, v7);
  v9 = qword_27DE37D88;
  qword_27DE37D88 = v8;

  v13 = objc_msgSend_objectAtIndex_(v15, v10, 3, v11, v12);
  v14 = qword_27DE37D90;
  qword_27DE37D90 = v13;
}

void sub_23373734C(uint64_t a1)
{
  v2 = sub_23378E104();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RAWLocalToneMap", &unk_233945DBE, v5, 2u);
  }
}

void sub_2337374B4(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  sub_2337E560C();
  (*(**a1 + 168))();
  v6 = *a1;

  sub_23373476C(v6, a2, a3);
}

void sub_233737534(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_284904018;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v2 = *(*a2 + 32);
  *(a1 + 48) = *(*a2 + 24);
  *(a1 + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 120) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  v3 = 0;
  v4 = 0;
  sub_233758338();
}

void sub_2337376DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  v19 = v16[22];
  if (v19)
  {
    sub_2337239E8(v19);
  }

  v20 = v16[18];
  if (v20)
  {
    v16[19] = v20;
    operator delete(v20);
  }

  v21 = *v17;
  if (*v17)
  {
    v16[16] = v21;
    operator delete(v21);
  }

  v22 = v16[13];
  if (v22)
  {
    sub_2337239E8(v22);
  }

  v23 = v16[11];
  if (v23)
  {
    sub_2337239E8(v23);
  }

  v24 = v16[7];
  if (v24)
  {
    sub_2337239E8(v24);
  }

  v25 = v16[4];
  if (v25)
  {
    sub_2337239E8(v25);
  }

  v26 = v16[2];
  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  _Unwind_Resume(exception_object);
}

id sub_2337377B0(uint64_t a1)
{
  v1 = (*(**(a1 + 32) + 88))(*(a1 + 32));

  return v1;
}

id sub_233737800(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*a1 + 160))(&v41, a1);
  v4 = (v41->__vftable[1].~__shared_weak_count)(v41, v3);
  if (v42)
  {
    sub_2337239E8(v42);
  }

  if (!v4)
  {
    auxiliaryImageDataType = v3;
    (*(*a1 + 288))(&v41, a1);
    v6 = v41;
    v5 = v42;
    if (v41 != v42)
    {
      v4 = 0;
      while (1)
      {
        v7 = *v6;
        v8 = v6[1];
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v7)
        {
          v7 = __dynamic_cast(v7, &unk_284911100, &unk_284911168, 0);
          if (v7)
          {
            break;
          }
        }

LABEL_22:
        v32 = 0;
LABEL_23:
        if (v7)
        {
          sub_2337239E8(v7);
        }

        if (v8)
        {
          sub_2337239E8(v8);
        }

        if (!v32)
        {
          v6 += 2;
          if (v6 != v5)
          {
            continue;
          }
        }

        goto LABEL_31;
      }

      v9 = v7;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*a1 + 160))(&v37, a1);
      sub_2337338AC(v37, &v39);
      if (v38)
      {
        sub_2337239E8(v38);
      }

      v35 = (v9->__on_zero_shared)(v9);
      sub_2337268D8(&v36, &v35);
      sub_233725F08(&v37, &v39, &v36, 0);
      v10 = MEMORY[0x277CBEB28];
      v11 = (v9->__get_deleter)(v9);
      v15 = objc_msgSend_dataWithLength_(v10, v12, v11, v13, v14);
      v16 = v39;
      v17 = v15;
      v22 = objc_msgSend_mutableBytes(v17, v18, v19, v20, v21);
      v27 = objc_msgSend_length(v15, v23, v24, v25, v26);
      sub_233725540(v16, v22, v27);
      v28 = CGImageSourceCreateWithData(v15, 0);
      v29 = v28;
      if (v28)
      {
        v30 = CGImageSourceCopyAuxiliaryDataInfoAtIndex(v28, 0, auxiliaryImageDataType);

        CFRelease(v29);
        if (v30)
        {
          v31 = 0;
          v32 = 2;
          v4 = v30;
          goto LABEL_19;
        }

        v4 = 0;
      }

      v32 = 0;
      v31 = 1;
LABEL_19:

      sub_233725FD4(&v37);
      if (v40)
      {
        sub_2337239E8(v40);
      }

      v7 = v8;
      if ((v31 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v4 = 0;
LABEL_31:
    v37 = &v41;
    sub_233723948(&v37);
    v3 = auxiliaryImageDataType;
  }

  return v4;
}

id sub_233737BF4(uint64_t a1)
{
  (*(*a1 + 160))(&v3);
  v1 = (*(*v3 + 48))(v3);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_233737C90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233737CA8(uint64_t a1)
{
  (*(*a1 + 160))(&v3);
  v1 = (*(*v3 + 176))(v3);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_233737D30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_233737D48(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_2337595BC();
  v5 = *v4;
  v6 = v4[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v5)
  {
    *a2 = v5;
    a2[1] = v6;
    return;
  }

  v7 = a1[10];
  if (!v7)
  {
    (*(*a1 + 144))(&v14, a1);
    v8 = v14;
    v9 = v15;
    if (v15 == v14)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](exception, "RawCameraException");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    if (a1[23])
    {
      if (!sub_233758BC4(a1[23]))
      {
LABEL_12:
        if (!a1[10] && a1[23] && v14 != v15)
        {
          sub_2337583B4();
        }

        *&v13 = &v14;
        sub_233735AD4(&v13);
        v7 = a1[10];
        if (!v7)
        {
          v11 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](v11, "RawCameraException");
          __cxa_throw(v11, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        goto LABEL_14;
      }

      v8 = v14;
      v9 = v15;
    }

    if (v9 != v8)
    {
      sub_2337583B4();
    }

    goto LABEL_12;
  }

LABEL_14:
  v10 = a1[11];
  *a2 = v7;
  a2[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  if (v6)
  {
    sub_2337239E8(v6);
  }
}

void sub_233737F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void **a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  a13 = &a16;
  sub_233735AD4(&a13);
  if (v16)
  {
    sub_2337239E8(v16);
  }

  _Unwind_Resume(a1);
}

void sub_233738020(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 192);
  *(a1 + 184) = v3;
  *(a1 + 192) = v2;
  if (v4)
  {
    sub_2337239E8(v4);
  }
}

void sub_23373804C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*a1 + 72))(__p);
  sub_23386DE80(__p[0], a2);
  if (__p[1])
  {
    sub_2337239E8(__p[1]);
  }

  if ((*(*a1 + 176))(a1))
  {
    if ((*(*a1 + 200))(a1, 9))
    {
      sub_23372A488(__p, "8.dng");
      sub_233735478(a2, __p);
      if (SHIBYTE(v28) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if ((*(*a1 + 200))(a1, 8))
    {
      sub_23372A488(__p, "7.dng");
      sub_233735478(a2, __p);
      if (SHIBYTE(v28) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if ((*(*a1 + 200))(a1, 7))
    {
      sub_23372A488(__p, "6.dng");
      sub_233735478(a2, __p);
      if (SHIBYTE(v28) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v4 = *a2;
    v5 = *(a2 + 8);
    v6 = v5 - *a2;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
    if (v6 < 1)
    {
      v13 = 0;
      v9 = 0;
    }

    else
    {
      v8 = MEMORY[0x277D826F0];
      v9 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
      while (1)
      {
        v10 = operator new(24 * v9, v8);
        if (v10)
        {
          break;
        }

        v11 = v9 >> 1;
        v12 = v9 > 1;
        v9 >>= 1;
        if (!v12)
        {
          v13 = 0;
          v9 = v11;
          goto LABEL_20;
        }
      }

      v13 = v10;
    }

LABEL_20:
    sub_233741088(v4, v5, v7, v13, v9);
    if (v13)
    {
      operator delete(v13);
    }

    v14 = *a2;
    if (*a2 != *(a2 + 8))
    {
LABEL_23:
      if (*(v14 + 23) < 0)
      {
        sub_233731FB8(__p, *v14, *(v14 + 8));
      }

      else
      {
        v15 = *v14;
        v28 = *(v14 + 16);
        *__p = v15;
      }

      v16 = SHIBYTE(v28);
      v18 = __p[0];
      v17 = __p[1];
      if (v28 >= 0)
      {
        v19 = __p;
      }

      else
      {
        v19 = __p[0];
      }

      if (v28 >= 0)
      {
        v17 = SHIBYTE(v28);
      }

      if (v17 >= 4)
      {
        v20 = v19 + v17;
        v21 = v19;
        do
        {
          v22 = memchr(v21, 46, v17 - 3);
          if (!v22)
          {
            break;
          }

          if (*v22 == 1735287854)
          {
            if (v22 == v20 || v22 - v19 == -1)
            {
              break;
            }

            if (v16 < 0)
            {
              operator delete(v18);
            }

            v14 += 24;
            if (v14 != *(a2 + 8))
            {
              goto LABEL_23;
            }

            return;
          }

          v21 = (v22 + 1);
          v17 = v20 - v21;
        }

        while (v20 - v21 >= 4);
      }

      if (v14 != *a2)
      {
        sub_233740C80(&v29, (v14 + 24), *(a2 + 8), v14);
        v24 = v23;
        v25 = *(a2 + 8);
        while (v25 != v24)
        {
          v26 = *(v25 - 1);
          v25 -= 3;
          if (v26 < 0)
          {
            operator delete(*v25);
          }
        }

        *(a2 + 8) = v24;
        sub_23373844C(a2, *a2, __p);
        LOBYTE(v16) = HIBYTE(v28);
      }

      if ((v16 & 0x80) != 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

std::string *sub_23373844C(void *a1, uint64_t a2, __int128 *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) + 1;
    if (v11 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_2337235BC();
    }

    v12 = a2 - v10;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v10) >> 3);
    v14 = 2 * v13;
    if (2 * v13 <= v11)
    {
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) + 1;
    }

    if (v13 >= 0x555555555555555)
    {
      v15 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v14;
    }

    v27 = a1;
    if (v15)
    {
      sub_233735B78(a1, v15);
    }

    v24 = 0;
    v25 = 8 * (v12 >> 3);
    v26 = v25;
    sub_233740DC4(&v24, a3);
    v16 = v25;
    memcpy(v26, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v25;
    *&v26 = v26 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v26;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v24 = v21;
    v25 = v21;
    sub_233735BD0(&v24);
    return v16;
  }

  else if (a2 == v6)
  {
    sub_233740CF4(a1, a3);
  }

  else
  {
    sub_233740D54(a1, a2, v6, a2 + 24);
    v8 = a1[1] <= a3 || v4 > a3;
    v9 = 24;
    if (v8)
    {
      v9 = 0;
    }

    std::string::operator=(v4, (a3 + v9));
  }

  return v4;
}

void sub_2337385E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_233735BD0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2337385F4(uint64_t a1)
{
  (*(*a1 + 160))(&v3);
  v1 = (*(*v3 + 88))(v3);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_23373867C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233738694(uint64_t a1)
{
  (*(*a1 + 160))(&v3);
  v1 = (*(*v3 + 104))(v3);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_23373871C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233738734(uint64_t a1)
{
  (*(*a1 + 160))(&v3);
  v1 = (*(*v3 + 120))(v3);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_2337387BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2337387D4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = a1[23];
  if (v4 && (sub_233758B00(v4) & 1) == 0)
  {
    v6 = *(*a1 + 104);

    return v6(a1);
  }

  else
  {

    return sub_23372A488(a2, "");
  }
}

void *sub_23373888C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result;
  v4 = result[12];
  if (!v4)
  {
    v5 = result[23];
    if (v5)
    {
      if ((sub_233758B00(v5) & 1) == 0)
      {
        (*(*v2 + 72))(&v7, v2);
        sub_23386D980(v7);
      }
    }

    sub_2338E9198(@"dng.adobe.generic", &v8);
    sub_23386D980(v8);
  }

  v6 = result[13];
  *a2 = v4;
  a2[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_233738A30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    sub_2337239E8(a17);
  }

  _Unwind_Resume(exception_object);
}

id sub_233738A88(uint64_t a1)
{
  v1 = (*(**(a1 + 32) + 88))(*(a1 + 32));

  return v1;
}

uint64_t sub_233738AD8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 216);
  if (!v2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v3 = *(result + 224);
  *a2 = v2;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_233738B50(uint64_t a1)
{
  (*(*a1 + 160))(&v3);
  v1 = (*(*v3 + 408))();
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_233738BEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233738C04(uint64_t a1)
{
  (*(*a1 + 160))(&v3);
  v1 = (*(*v3 + 416))();
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_233738CA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_233738CD8(uint64_t a1)
{
  (*(*a1 + 160))(&v1);
  (*(*v1 + 216))(v1);
  if (v2)
  {
    sub_2337239E8(v2);
  }
}

void sub_233738D60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_233738D78(uint64_t a1)
{
  (*(*a1 + 160))(&v1);
  (*(*v1 + 224))(v1);
  if (v2)
  {
    sub_2337239E8(v2);
  }
}

void sub_233738E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_233738E18(uint64_t a1)
{
  (*(*a1 + 160))(&v1);
  (*(*v1 + 232))(v1);
  if (v2)
  {
    sub_2337239E8(v2);
  }
}

void sub_233738EA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (***sub_233738EB8(uint64_t a1))(void)
{
  result = *(a1 + 24);
  if (result)
  {
    return sub_2337AF4B8(result);
  }

  return result;
}

uint64_t sub_233738EC8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 && (sub_2337AF508(v2) & 1) == 0)
  {
    v3 = *(a1 + 32);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    if (v3)
    {
      sub_2337239E8(v3);
    }

    *(a1 + 40) = 0;
  }

  return 1;
}

void sub_233738F10(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  if (v2)
  {
    sub_2337239E8(v2);
  }

  *(a1 + 40) = 0;
}

void sub_233738F44(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 256);
  *(a1 + 248) = v3;
  *(a1 + 256) = v2;
  if (v4)
  {
    sub_2337239E8(v4);
  }
}

uint64_t sub_233738F70(uint64_t a1)
{
  (*(*a1 + 160))(&v3);
  v1 = (*(*v3 + 568))();
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_23373900C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233739024(uint64_t a1)
{
  (*(*a1 + 160))(&v6);
  v1 = v6;
  sub_23372A488(__p, "IFD0:EXIF");
  v2 = (*(*v1 + 264))(v1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7)
  {
    sub_2337239E8(v7);
  }

  return v2;
}

void sub_2337390DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_2337239E8(a17);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373910C(uint64_t a1)
{
  (*(*a1 + 160))(&v6);
  v1 = v6;
  sub_23372A488(__p, "IFD0:EXIF");
  v2 = (*(*v1 + 280))(v1, __p, 1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7)
  {
    sub_2337239E8(v7);
  }

  return v2;
}

void sub_2337391D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_2337239E8(a17);
  }

  _Unwind_Resume(exception_object);
}

double sub_233739200(uint64_t a1)
{
  (*(*a1 + 160))(&v6);
  v1 = v6;
  sub_23372A488(__p, "IFD0:EXIF");
  v2 = (*(*v1 + 296))(v1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7)
  {
    sub_2337239E8(v7);
  }

  return v2;
}

void sub_2337392C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_2337239E8(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337392F0(uint64_t a1)
{
  (*(*a1 + 160))(&v1);
  (*(*v1 + 584))();
  if (v2)
  {
    sub_2337239E8(v2);
  }
}

void sub_23373938C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337393A4(uint64_t a1)
{
  (*(*a1 + 160))(&v1);
  (*(*v1 + 592))();
  if (v2)
  {
    sub_2337239E8(v2);
  }
}

void sub_233739448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233739460(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (!*(a1 + 184))
  {
    sub_233758808(v3, &v54);
  }

  *(a1 + 200) = sub_2337397B0(v3, @"kCGImageSourceDisableVendorLensCACorrection", v4, v5, v6) & 1;
  *(a1 + 201) = (sub_2337397B0(v7, @"kCGImageSourceDisableVendorLensDistortionCorrection", v8, v9, v10) & 4) != 0;
  *(a1 + 202) = (sub_2337397B0(v7, @"kCGImageSourceDisableVendorLensVignettingCorrection", v11, v12, v13) & 2) != 0;
  *(a1 + 203) = sub_2337397F8(v7, @"kCGImageSourceAltMode", v14, v15, v16);
  v20 = objc_msgSend_objectForKeyedSubscript_(v7, v17, *MEMORY[0x277CD3628], v18, v19);
  v21 = sub_233818DA4(v20);
  sub_233739840(a1, v21);

  *(a1 + 212) = sub_2337397F8(v7, *MEMORY[0x277CD35D8], v22, v23, v24);
  *(a1 + 213) = sub_2337397F8(v7, @"kCGImageSourceAddThumbnailInformation", v25, v26, v27);
  v28 = sub_233739994(v7, *MEMORY[0x277CD35E8], 0);
  (*(*a1 + 2880))(a1, v28);

  v32 = sub_233739A60(v7, @"kCGImageSourceRawPropertiesHint", v29, v30, v31);
  v36 = v32;
  if (v32)
  {
    isEqualToString = objc_msgSend_isEqualToString_(v32, v33, @"ImportOnly", v34, v35);
  }

  else
  {
    isEqualToString = 0;
  }

  *(a1 + 214) = isEqualToString;
  v38 = *MEMORY[0x277CD3650];
  if (sub_233739ACC(v7, *MEMORY[0x277CD3650]))
  {
    v42 = sub_2337397B0(v7, v38, v39, v40, v41);
    (*(*a1 + 552))(a1, v42);
  }

  v43 = sub_233739A60(v7, *MEMORY[0x277CD3580], v39, v40, v41);
  v44 = sub_233739994(v7, *MEMORY[0x277CD3588], 0);
  if (objc_msgSend_isEqualToString_(v43, v45, *MEMORY[0x277CD3590], v46, v47))
  {
    v51 = 1;
  }

  else
  {
    if (!objc_msgSend_isEqualToString_(v43, v48, *MEMORY[0x277CD3598], v49, v50))
    {
      goto LABEL_13;
    }

    v51 = 2;
  }

  *(a1 + 280) = v51;
LABEL_13:
  v52 = objc_msgSend_objectForKeyedSubscript_(v44, v48, *MEMORY[0x277CD3680], v49, v50);
  if (v52)
  {
    objc_storeStrong((a1 + 288), v52);
  }

  return 1;
}

void sub_233739750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2337397B0(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_233740FAC(a1, a2, a3, a4, a5);
  v10 = objc_msgSend_intValue(v5, v6, v7, v8, v9);

  return v10;
}

uint64_t sub_2337397F8(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_233740FAC(a1, a2, a3, a4, a5);
  v10 = objc_msgSend_BOOLValue(v5, v6, v7, v8, v9);

  return v10;
}

void sub_233739840(_DWORD *a1, int a2)
{
  v14 = sub_2338191A8(a2);
  v4 = (*(*a1 + 2760))(a1);
  if (!objc_msgSend_containsObject_(v4, v5, v14, v6, v7))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  a1[51] = a2;
  a1[52] = a2;
  v8 = sub_2338191A8(3);
  v12 = objc_msgSend_containsObject_(v4, v9, v8, v10, v11);

  if (v12)
  {
    a1[51] = 3;
  }
}

void sub_233739950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  __cxa_free_exception(v11);

  _Unwind_Resume(a1);
}

id sub_233739994(void *a1, void *a2, int a3)
{
  v5 = a1;
  v9 = a2;
  if (v9 || !a3)
  {
    v11 = objc_msgSend_objectForKeyedSubscript_(v5, v6, v9, v7, v8);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v10 = v12;
  }

  else
  {
    v10 = v5;
  }

  return v10;
}

void *sub_233739A60(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_objectForKeyedSubscript_(a1, a2, a2, a4, a5);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

BOOL sub_233739ACC(void *a1, void *a2)
{
  v3 = a1;
  v7 = a2;
  if (v3)
  {
    v8 = objc_msgSend_objectForKeyedSubscript_(v3, v4, v7, v5, v6);
    v9 = v8 != 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

CFTypeRef sub_233739BB4(uint64_t a1)
{
  if ((*(*a1 + 120))(a1) < 8)
  {
    v6 = sub_2338F2CEC();
    goto LABEL_10;
  }

  v2 = *(a1 + 280);
  if (v2 == 2)
  {
    v3 = *(a1 + 288);
    v4 = v3;
    if (v3)
    {
      goto LABEL_5;
    }

    v5 = sub_2338F2D84();
    goto LABEL_14;
  }

  if (v2 != 1)
  {
    v6 = sub_2338F2D84();
LABEL_10:
    v7 = v6;
    if (!v6)
    {
      goto LABEL_15;
    }

    return v7;
  }

  v3 = *(a1 + 288);
  v4 = v3;
  if (v3)
  {
LABEL_5:
    v5 = sub_2338F2F4C(v3);
    goto LABEL_14;
  }

  v5 = sub_2338F2E1C();
LABEL_14:
  v7 = v5;

  if (!v7)
  {
LABEL_15:
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return v7;
}

uint64_t sub_233739CD8(uint64_t a1)
{
  (*(*a1 + 160))(&v3);
  v1 = (*(*v3 + 424))();
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_233739D74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233739D8C(uint64_t a1)
{
  (*(*a1 + 160))(&v3);
  v1 = (*(*v3 + 432))();
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_233739E28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_233739E48(uint64_t a1)
{
  if ((*(*a1 + 120))(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return (*(*a1 + 816))(a1) - 4 < 0xFFFFFFFD;
}

void sub_233739F04(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  if (!a2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (*a3 < 0 || (v5 = a3[1], (v5 & 0x80000000) != 0))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v6 = a3[2];
  if ((v6 & 0x80000000) != 0 || (v7 = a3[3], (v7 & 0x80000000) != 0))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (v6 > 0x40000 || v7 > 0x40000)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if ((a4 - 16777217) <= 0xFFFFFFFFFEFFFFFFLL)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (*a3 > (v6 ^ 0x7FFFFFFF))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (v5 > (v7 ^ 0x7FFFFFFF))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if ((*(*a1 + 360))(a1) && ((*(*a1 + 352))(a1) & 1) == 0)
  {
    (*(*a1 + 2872))(&v45, a1);
    (*(*v45 + 80))(v45, a2, a3, a4);
    v30 = v46;
    if (v46)
    {
LABEL_37:
      sub_2337239E8(v30);
    }
  }

  else
  {
    v45 = (*(*a1 + 432))(a1);
    v46 = v11;
    (*(*a1 + 392))(&v43, a1);
    if (!v43 || !sub_2337B0628(v43))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](exception, "RawCameraException");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v41 = 2 * *(v43 + 56);
    v42 = 2;
    v12 = sub_2337B0628(v43);
    v14 = *a3;
    v13 = a3[1];
    v15 = a3[3];
    v16 = a3[2] + *a3;
    v17 = v15 + v13;
    if (v13 <= SHIDWORD(v45))
    {
      v13 = HIDWORD(v45);
    }

    if (HIDWORD(v46) + HIDWORD(v45) >= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = HIDWORD(v46) + HIDWORD(v45);
    }

    if (v14 <= v45)
    {
      v14 = v45;
    }

    v39 = v14;
    v40 = a4;
    if (v46 + v45 < v16)
    {
      v16 = v46 + v45;
    }

    v38 = v16;
    if (v13 < 0 || v18 < v13 || v14 < 0 || (v19 = __OFSUB__(v16, v14), v20 = v16 - v14, (v20 < 0) ^ v19) || v18 - v13 > 0x10000 || v20 > 0x10000)
    {
      v33 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v33, "RawCameraException");
      __cxa_throw(v33, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v21 = *(v43 + 48);
    v22 = *(v43 + 56);
    v37 = v13;
    if (v18 > v13)
    {
      v23 = v12;
      v24 = 2 * v21 * v22;
      v25 = v15 * a4;
      do
      {
        sub_23374340C(&__n, &v37);
        v47 = __n;
        v47 = *sub_23374346C(&v47, &v45 + 1);
        v26 = *sub_2337434E4(&v47, &v41);
        sub_23374340C(&v34, &v39);
        v47 = v34;
        v47 = *sub_23374346C(&v47, &v45);
        v35 = *sub_2337434E4(&v47, &v42);
        v47 = v26;
        v27 = *sub_233743570(&v47, &v35);
        sub_23374340C(&__n, &v37);
        v47 = __n;
        v47 = *sub_23374346C(&v47, a3 + 1);
        v28 = *sub_2337434E4(&v47, &v40);
        sub_23374340C(&v34, &v39);
        v47 = v34;
        v47 = *sub_23374346C(&v47, a3);
        v35 = *sub_2337434E4(&v47, &v42);
        v47 = v28;
        v29 = *sub_233743570(&v47, &v35);
        sub_23374340C(&v35, &v38);
        v47 = v35;
        v47 = *sub_23374346C(&v47, &v39);
        __n = *sub_2337434E4(&v47, &v42);
        if (__n > 0x80000 || (v47 = v27, v24 < *sub_233743570(&v47, &__n)) || (v47 = v29, v25 < *sub_233743570(&v47, &__n)))
        {
          v31 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](v31, "RawCameraException");
          __cxa_throw(v31, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        memcpy((a2 + v29), (v23 + v27), __n);
        ++v37;
      }

      while (v37 < v18);
    }

    v30 = v44;
    if (v44)
    {
      goto LABEL_37;
    }
  }
}

void sub_23373A5C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    sub_2337239E8(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23373A66C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = (*(*a1 + 360))(a1);
  v5 = *a1;
  if (v4)
  {
    (*(v5 + 384))(a1);
    v6 = *a2;
    v10[0] = (*(*a1 + 432))(a1);
    v10[1] = v7;
    sub_2337B0658(v6, v10, &v11);
  }

  v8 = *(v5 + 392);

  return v8(a1);
}

void sub_23373A7C4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_23373A7DC(_DWORD *a1)
{
  v2 = a1[10];
  if (!v2)
  {
    (*(*a1 + 2920))(a1);
    v2 = a1[10];
  }

  if (v2 != 1)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  (*(*a1 + 2872))(&v3, a1);
  (*(*v3 + 24))(v3);
  if (v4)
  {
    sub_2337239E8(v4);
  }
}

void sub_23373A8D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_23373A900(uint64_t a1)
{
  (*(*a1 + 2928))(a1);
  (*(*a1 + 2872))(&v3, a1);
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  (*(*v3 + 16))(v3);
  if (v4)
  {
    sub_2337239E8(v4);
  }
}

void sub_23373AA04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  __cxa_free_exception(v10);
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(a1);
}

void sub_23373AA2C(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 376))(&v9);
  v4 = (*(*a1 + 456))(a1);
  v6 = v5;
  v7 = v4;
  v8 = v5;
  if (fabs((*(*a1 + 2640))(a1) + -1.0) > 0.00001 || fabs((*(*a1 + 2648))(a1) + -1.0) > 0.00001)
  {
    LODWORD(v8) = vcvtmd_s64_f64((*(*a1 + 2640))(a1) * v6);
    HIDWORD(v8) = vcvtmd_s64_f64((*(*a1 + 2648))(a1) * SHIDWORD(v6));
  }

  sub_2337B0658(v9, &v7, a2);
}

void sub_23373AC0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23373AC24(uint64_t *a1)
{
  v2 = (*(*a1 + 176))(a1);
  v3 = *a1;
  if (v2)
  {
    v4 = *(v3 + 416);
    v5 = a1;
  }

  else
  {
    v4 = *(v3 + 424);
    v5 = a1;
  }

  return v4(v5);
}

uint64_t sub_23373ACE4(uint64_t a1)
{
  (*(*a1 + 160))(&v3);
  v1 = (*(*v3 + 440))();
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_23373AD80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23373AD98(uint64_t a1)
{
  (*(*a1 + 160))(&v3);
  v1 = (*(*v3 + 440))();
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_23373AE34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23373AE4C(uint64_t *a1)
{
  v2 = (*(*a1 + 176))(a1);
  v3 = *a1;
  if (v2)
  {
    v4 = *(v3 + 440);
    v5 = a1;
  }

  else
  {
    v4 = *(v3 + 448);
    v5 = a1;
  }

  return v4(v5);
}

uint64_t sub_23373AF0C(uint64_t a1)
{
  (*(*a1 + 160))(&v3);
  v1 = (*(*v3 + 448))();
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_23373AFB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23373AFC8(uint64_t a1)
{
  (*(*a1 + 160))(&v3);
  v1 = (*(*v3 + 448))();
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_23373B06C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_23373B084(uint64_t *a1)
{
  v2 = (*(*a1 + 176))(a1);
  v3 = *a1;
  if (v2)
  {
    v4 = (*(v3 + 464))(a1);
    v5 = v4;
    v6 = HIDWORD(v4);
    (*(*a1 + 440))(a1);
    (*(*a1 + 560))(a1);
  }

  else
  {
    v7 = (*(v3 + 472))(a1);
    v5 = v7;
    v6 = HIDWORD(v7);
  }

  return v5 | (v6 << 32);
}

uint64_t sub_23373B204(uint64_t a1)
{
  (*(*a1 + 160))(&v3);
  v1 = (*(*v3 + 456))();
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_23373B2A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_23373B2C0(uint64_t a1)
{
  if ((*(*a1 + 120))(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v2 = (*(*a1 + 432))(a1);
  (*(*a1 + 160))(&v7, a1);
  v3 = (*(*v7 + 464))();
  v5 = v4;
  if (v8)
  {
    sub_2337239E8(v8);
  }

  if (v5 <= v3 - v2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (HIDWORD(v3) - HIDWORD(v2) >= SHIDWORD(v5))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return (v3 - v2) | ((HIDWORD(v3) - HIDWORD(v2)) << 32);
}

void sub_23373B458(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373B488(uint64_t a1)
{
  if (!(*(*a1 + 488))(a1))
  {
    return *MEMORY[0x277CBF3A0];
  }

  (*(*a1 + 160))(&v4, a1);
  v2 = (*(*v4 + 472))();
  if (v5)
  {
    sub_2337239E8(v5);
  }

  return v2;
}

void sub_23373B598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23373B5B0(uint64_t a1)
{
  if ((*(*a1 + 120))(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v2 = *(*a1 + 456);

  return v2(a1);
}

unint64_t sub_23373B6E0(unsigned int *a1)
{
  if ((*(*a1 + 120))(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v2 = sub_2338191DC(a1[52]);
  v3 = *a1;
  if (v2)
  {
    (*(v3 + 432))(a1);
    v5 = HIDWORD(v4);
  }

  else
  {
    v6 = (*(v3 + 544))(a1);
    (*(*a1 + 496))(a1);
    v5 = HIDWORD(v4);
    if (v6)
    {
      LODWORD(v4) = v4 / v6;
      v5 = (v5 / v6);
    }
  }

  return v4 | (v5 << 32);
}

uint64_t sub_23373B814(uint64_t a1)
{
  (*(*a1 + 160))(&v10);
  v2 = (*(*v10 + 480))();
  if (v11)
  {
    sub_2337239E8(v11);
  }

  if ((v2 - 20000) <= 0xFFFFB1E0)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v3 = HIDWORD(v2);
  if ((HIDWORD(v2) - 20000) <= 0xFFFFB1E0)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (v2 > 0x3FF)
  {
    v4 = v2;
  }

  else
  {
    v4 = ((v2 >> 1) | 0x400) + ((v2 >> 1) | 0x400u) / v2 * v2 - ((v2 >> 1) | 0x400);
  }

  if (!(v2 >> 42))
  {
    LODWORD(v3) = ((v2 >> 33) | 0x400) + ((v2 >> 33) | 0x400u) / WORD2(v2) * WORD2(v2) - ((v2 >> 33) | 0x400);
  }

  v5 = (*(*a1 + 408))(a1);
  if (v4 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = (*(*a1 + 408))(a1);
  if (v3 >= SHIDWORD(v7))
  {
    v8 = HIDWORD(v7);
  }

  else
  {
    v8 = v3;
  }

  return v6 | (v8 << 32);
}

void sub_23373B9E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_23373BA14(uint64_t a1)
{
  (*(*a1 + 160))(&v1);
  (*(*v1 + 488))();
  if (v2)
  {
    sub_2337239E8(v2);
  }
}

void sub_23373BAB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_23373BAC8(uint64_t a1)
{
  (*(*a1 + 160))(&v1);
  (*(*v1 + 496))();
  if (v2)
  {
    sub_2337239E8(v2);
  }
}

void sub_23373BB64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373BB7C(uint64_t a1)
{
  v2 = (*(*a1 + 544))(a1);
  v3 = 1.0;
  if (v2 >= 2)
  {
    v3 = (*(*a1 + 544))(a1, 1.0);
  }

  return (1.0 / v3);
}

uint64_t sub_23373BC1C(uint64_t a1)
{
  v2 = (*(*a1 + 544))(a1);
  (*(*a1 + 432))(a1);
  if (v2 >= 2)
  {
    v5 = v3 / v2;
  }

  else
  {
    v5 = v3;
  }

  if (v2 >= 2)
  {
    v6 = v4 / v2;
  }

  else
  {
    v6 = v4;
  }

  v7 = (*(*a1 + 432))(a1);
  v8 = v7;
  v9 = SHIDWORD(v7);
  v11 = v10;
  v13 = v12;
  v14 = (*(*a1 + 528))(a1);
  memset(&v17, 0, sizeof(v17));
  CGAffineTransformMakeScale(&v17, v14, v14);
  v22.origin.x = v8;
  v22.origin.y = v9;
  v22.size.width = v11;
  v22.size.height = v13;
  v23 = CGRectInset(v22, 0.00100000005, 0.00100000005);
  v16 = v17;
  v24 = CGRectApplyAffineTransform(v23, &v16);
  v25 = CGRectIntegral(v24);
  v18[0] = v25.origin.x;
  v18[1] = v25.origin.y;
  v19[0] = (*(*a1 + 2640))(a1) * v5;
  v19[1] = (*(*a1 + 2648))(a1) * v6;
  sub_233741018(&v20, v18);
  sub_233741018(&v21, v19);
  return v20;
}

uint64_t sub_23373BE58(uint64_t a1)
{
  v2 = (*(*a1 + 544))(a1);
  (*(*a1 + 496))(a1);
  if (v2 >= 2)
  {
    v5 = v3 / v2;
  }

  else
  {
    v5 = v3;
  }

  if (v2 >= 2)
  {
    v6 = v4 / v2;
  }

  else
  {
    v6 = v4;
  }

  v7 = (*(*a1 + 456))(a1);
  v8 = v7;
  v9 = SHIDWORD(v7);
  v11 = v10;
  v13 = v12;
  v14 = (*(*a1 + 528))(a1);
  memset(&v17, 0, sizeof(v17));
  CGAffineTransformMakeScale(&v17, v14, v14);
  v22.origin.x = v8;
  v22.origin.y = v9;
  v22.size.width = v11;
  v22.size.height = v13;
  v23 = CGRectInset(v22, 0.00100000005, 0.00100000005);
  v16 = v17;
  v24 = CGRectApplyAffineTransform(v23, &v16);
  v25 = CGRectIntegral(v24);
  v18[0] = v25.origin.x;
  v18[1] = v25.origin.y;
  v19[0] = v5;
  v19[1] = v6;
  sub_233741018(&v20, v18);
  sub_233741018(&v21, v19);
  return v20;
}

uint64_t sub_23373C010(unsigned int *a1)
{
  if ((*(*a1 + 120))(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return a1[58];
}

uint64_t sub_23373C094(unsigned int a1)
{
  if (a1 <= 3)
  {
    v1 = 2 * (a1 > 1);
  }

  else
  {
    v1 = 4;
  }

  if (a1 <= 7)
  {
    return v1;
  }

  else
  {
    return 8;
  }
}

uint64_t sub_23373C0BC(uint64_t result, unsigned int a2)
{
  if (a2 <= 3)
  {
    v2 = 2 * (a2 > 1);
  }

  else
  {
    v2 = 4;
  }

  if (a2 <= 7)
  {
    v3 = v2;
  }

  else
  {
    v3 = 8;
  }

  *(result + 232) = v3;
  return result;
}

uint64_t sub_23373C0FC(uint64_t a1)
{
  (*(*a1 + 160))(&v3);
  v1 = (*(*v3 + 520))();
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_23373C198(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23373C1B0(uint64_t a1)
{
  (*(*a1 + 160))(&v3);
  v1 = (*(*v3 + 528))();
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_23373C24C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23373C264(uint64_t a1)
{
  (*(*a1 + 160))(&v3);
  v1 = (*(*v3 + 536))();
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_23373C300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23373C328@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 168);
  if (!v3)
  {
    sub_23381DFB0(0);
  }

  v4 = *(result + 176);
  *a2 = v3;
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_23373C400@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(*a1 + 120))(a1);
  if (result <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v5 = a1[3];
  if (!v5)
  {
    (*(*a1 + 2896))(a1);
    if (!a1[3] || (v6 = (*(*a1 + 864))(a1), result = sub_2337AED08(a1[3], v6 - 5), (v5 = a1[3]) == 0))
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }
  }

  v7 = a1[4];
  *a2 = v5;
  a2[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_23373C548(void *a1)
{
  v2 = (*(*a1 + 176))(a1);
  v3 = *a1;
  if (v2)
  {
    result = (*(v3 + 2904))(a1);
  }

  else
  {
    result = (*(v3 + 2912))(a1);
  }

  v5 = a1[3];
  if (v5)
  {
    v8 = (*(*a1 + 344))(a1);
    sub_233723C18(&v9, &v8);
    (*(*v5 + 32))(v5, &v9);
    v6 = a1[3];
    v7 = (*(*a1 + 56))(a1);
    return sub_2337AF4B0(v6, v7);
  }

  return result;
}

void sub_23373C69C(uint64_t a1)
{
  (*(*a1 + 160))(&v8);
  v2 = v8;
  v7 = (*(*a1 + 408))(a1);
  v6[0] = (*(*a1 + 432))(a1);
  v6[1] = v3;
  (*(*v2 + 552))(&v10, v2, &v7, v6);
  v4 = v10;
  v10 = 0uLL;
  v5 = *(a1 + 32);
  *(a1 + 24) = v4;
  if (v5)
  {
    sub_2337239E8(v5);
    if (*(&v10 + 1))
    {
      sub_2337239E8(*(&v10 + 1));
    }
  }

  if (v9)
  {
    sub_2337239E8(v9);
  }
}

void sub_23373C7D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_2337239E8(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_23373C7EC(uint64_t a1)
{
  (*(*a1 + 160))(&v8);
  v2 = v8;
  v7 = (*(*a1 + 408))(a1);
  v6[0] = (*(*a1 + 432))(a1);
  v6[1] = v3;
  (*(*v2 + 552))(&v10, v2, &v7, v6);
  v4 = v10;
  v10 = 0uLL;
  v5 = *(a1 + 32);
  *(a1 + 24) = v4;
  if (v5)
  {
    sub_2337239E8(v5);
    if (*(&v10 + 1))
    {
      sub_2337239E8(*(&v10 + 1));
    }
  }

  if (v9)
  {
    sub_2337239E8(v9);
  }
}

void sub_23373C920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_2337239E8(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_23373C93C(_DWORD *a1)
{
  v1 = a1 + 10;
  if (!a1[10])
  {
    (*(*a1 + 2872))(&v5);
    v3 = v5;
    if (v6)
    {
      sub_2337239E8(v6);
    }

    if (v3)
    {
      (*(*a1 + 2872))(&v5, a1);
      (*(*v5 + 24))(v4);
      sub_2338F858C(v4, &v5, v1);
    }
  }
}

void sub_23373CA28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_23373CA40(_DWORD *a1)
{
  v3 = a1 + 10;
  v2 = a1[10];
  if (!v2)
  {
    (*(*a1 + 2920))(a1);
    v2 = a1[10];
  }

  if (v2 == 1)
  {
    (*(*a1 + 2872))(&v8, a1);
    v4 = v8;
    if (v9)
    {
      sub_2337239E8(v9);
    }

    if (v4)
    {
      (*(*a1 + 2144))(a1);
      (*(*a1 + 2872))(&v8, a1);
      v6 = 0;
      v7 = 0;
      sub_2337AF554(v8, &v7, &v6);
      if (v9)
      {
        sub_2337239E8(v9);
      }

      (*(*a1 + 2872))(&v8, a1);
      (*(*v8 + 16))(v5);
      sub_2338F85D0(v5, &v8, v3);
    }
  }
}

void sub_23373CC00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_2337239E8(a14);
  }

  _Unwind_Resume(exception_object);
}

id sub_23373CC1C(uint64_t a1)
{
  (*(*a1 + 160))(&v3);
  v1 = (*(*v3 + 560))();
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_23373CCCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_23373CCE4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*a1 + 72))(&v4);
  v3 = sub_23386D7FC(v4);
  sub_23373CD80(v3, a2);

  if (v5)
  {
    sub_2337239E8(v5);
  }
}

void sub_23373CD5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(a1);
}

void sub_23373CD80(void *a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a1;
  if (objc_msgSend_UTF8String(v13, v3, v4, v5, v6))
  {
    v7 = v13;
    v12 = objc_msgSend_UTF8String(v7, v8, v9, v10, v11);
    sub_23372A488(a2, v12);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }
}

void sub_23373CE08(uint64_t a1@<X0>, _WORD **a2@<X8>)
{
  (*(*a1 + 152))(&v7);
  sub_23372A208(v7, v3, v4, v5, v6, a2);
  if (v8)
  {
    sub_2337239E8(v8);
  }
}

void sub_23373CE70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23373CE88(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372A540(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373CEF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373CF08(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372A5C8(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373CF78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_23373CF90(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 152))(&v7);
  sub_23372A6C8(v7, v3, v4, v5, v6, a2);
  if (v8)
  {
    sub_2337239E8(v8);
  }
}

void sub_23373CFF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23373D010(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372A8A8(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373D078(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_23373D090(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  (*(*a1 + 152))(&v3);
  sub_23372A9A4(v3, a2);
  if (v4)
  {
    sub_2337239E8(v4);
  }
}

void sub_23373D0F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_23373D110(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  (*(*a1 + 152))(&v3);
  sub_23372AC2C(v3, a2);
  if (v4)
  {
    sub_2337239E8(v4);
  }
}

void sub_23373D178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_23373D190(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 152))(&v7);
  sub_23372ADD8(v7, v3, v4, v5, v6, a2);
  if (v8)
  {
    sub_2337239E8(v8);
  }
}

void sub_23373D1F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_23373D210(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 152))(&v7);
  sub_23372AEA0(v7, v3, v4, v5, v6, a2);
  if (v8)
  {
    sub_2337239E8(v8);
  }
}

void sub_23373D278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_23373D290(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 152))(&v7);
  sub_23372AF68(v7, v3, v4, v5, v6, a2);
  if (v8)
  {
    sub_2337239E8(v8);
  }
}

void sub_23373D2F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23373D310(uint64_t a1)
{
  (*(*a1 + 152))(&v3);
  v1 = sub_23372B13C(v3);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_23373D378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23373D390(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372B1DC(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373D3F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_23373D410(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372B260(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373D478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23373D490(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372B2EC(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373D4F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23373D510(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372B370(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373D578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23373D590(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372B3F8(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373D5F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23373D610(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372B480(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373D678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_23373D690(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372B508(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373D6F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373D710(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372B598(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373D780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373D798(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372B640(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373D808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373D820(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372B6E8(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373D890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373D8A8(uint64_t a1)
{
  (*(*a1 + 152))(&v3);
  v1 = sub_23372B76C(v3);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_23373D918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373D930(uint64_t a1)
{
  (*(*a1 + 152))(&v3);
  v1 = sub_23372B838(v3);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_23373D9A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373D9B8(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372B8F8(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373DA28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373DA40(uint64_t a1)
{
  (*(*a1 + 152))(&v3);
  v1 = sub_23372B980(v3);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_23373DAB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373DAC8(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372BA40(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373DB38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373DB50(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372BAD4(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373DBC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373DBD8(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372BB68(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373DC48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373DC60(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372BBFC(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373DCD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373DCE8(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372BC90(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373DD58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23373DD70(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372BD24(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373DDD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23373DDF0(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372BDAC(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373DE58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373DE70(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372BE34(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373DEE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373DEF8(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372BEC8(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373DF68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373DF80(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372BF5C(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373DFF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23373E008(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372BFF0(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373E070(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373E088(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372C108(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373E0F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373E110(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372C190(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373E180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373E198(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372C218(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373E208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373E220(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372C2BC(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373E290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373E2A8(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372C364(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373E318(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373E330(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372C40C(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373E3A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373E3B8(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372C490(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373E428(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373E440(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372C518(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373E4B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373E4C8(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372C59C(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373E538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373E550(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372C630(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373E5C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373E5D8(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372C6C8(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373E648(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373E660(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372C760(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373E6D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373E6E8(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372C7E8(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373E758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373E770(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372C87C(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373E7E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373E7F8(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372C910(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373E868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373E880(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372C9A4(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373E8F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373E908(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372CA38(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373E978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373E990(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372CAC0(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373EA00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373EA18(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372CB58(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373EA88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373EAA0(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372CBE0(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373EB10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373EB28(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372CC84(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373EB98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373EBB0(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372CD28(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373EC20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373EC38(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372CDD0(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373ECA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373ECC0(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372CE78(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373ED30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373ED48(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372CEFC(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373EDB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373EDD0(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372CF88(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373EE40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373EE58(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372D01C(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373EEC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373EEE0(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372D0B0(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373EF50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373EF68(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372D144(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373EFD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373EFF0(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372D1D8(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373F060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373F078(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372D26C(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373F0E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373F100(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372D300(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373F170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373F188(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372D394(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373F1F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373F210(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372D41C(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373F280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373F298(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372D4A4(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373F308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23373F320(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372D528(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373F388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_23373F3A0(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372D5CC(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373F408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373F420(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372D658(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373F490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_23373F510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_23373F528(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*a1 + 152))(&v7);
  sub_23372DA58(v7, v3, v4, v5, v6, a2);
  if (v8)
  {
    sub_2337239E8(v8);
  }
}

void sub_23373F590(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_23373F5A8(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  (*(*a1 + 152))(&v7);
  sub_23372DCD0(v7, v3, v4, v5, v6, a2);
  if (v8)
  {
    sub_2337239E8(v8);
  }
}

void sub_23373F610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_23373F628(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*a1 + 152))(&v7);
  sub_23372DE48(v7, v3, v4, v5, v6, a2);
  if (v8)
  {
    sub_2337239E8(v8);
  }
}

void sub_23373F690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373F6A8(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372DF20(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373F718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373F730(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372DFA4(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373F7A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373F7B8(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372E02C(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373F828(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373F840(uint64_t a1)
{
  (*(*a1 + 152))(&v3);
  v1 = sub_23372E0C0(v3);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_23373F8B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373F8C8(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372E16C(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373F938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373F950(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372E204(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373F9C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23373F9D8(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372E29C(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373FA40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373FA58(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372E320(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373FAC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373FAE0(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372E3B8(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373FB50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373FB68(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372E44C(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373FBD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_23373FBF0(uint64_t a1)
{
  if ((*(*a1 + 120))(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  (*(*a1 + 152))(&v6, a1);
  sub_23372E4E0(v6, v2, v3, v4, v5);
  if (v7)
  {
    sub_2337239E8(v7);
  }

  (*(*a1 + 2664))(a1, 0, 0);
}

void sub_23373FCF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_23373FD20(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*a1 + 152))(&v3);
  sub_23372E574(v3, a2);
  if (v4)
  {
    sub_2337239E8(v4);
  }
}

void sub_23373FD88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23373FDA0(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372E644(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373FE08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373FE20(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372E6C8(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373FE90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373FEA8(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372E75C(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373FF18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_23373FF30(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372E7F0(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_23373FFA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23373FFB8(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372E874(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_233740020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_233740038(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372E8FC(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_2337400A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_2337400C0(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372E990(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_233740130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_233740148(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372EA24(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_2337401B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337401D0(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372EAB8(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_233740238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233740250(uint64_t a1)
{
  (*(*a1 + 152))(&v3);
  v1 = sub_23372EB3C(v3);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_2337402B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_2337402D0(uint64_t a1)
{
  (*(*a1 + 152))(&v3);
  v1 = sub_23372EBB8(v3);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_233740340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_233740358(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372EC34(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_2337403C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_2337403E0(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372ECB8(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_233740450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_233740468(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372ED3C(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_2337404D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337404F0(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372EDC0(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_233740558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_233740570(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372EE44(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_2337405E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_2337405F8(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372EEC8(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_233740668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_233740680(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372EF4C(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_2337406F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233740708(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372EFD0(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_233740770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_233740788(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372F054(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_2337407F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_233740810(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372F0D8(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_233740880(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_233740898(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372F15C(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_233740908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233740920(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372F1E0(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_233740988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_2337409A0(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372F264(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_233740A10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_233740A28(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372F2E8(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_233740A98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_233740AB0(uint64_t a1)
{
  (*(*a1 + 152))(&v7);
  v5 = sub_23372F36C(v7, v1, v2, v3, v4);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v5;
}

void sub_233740B20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_233740B38(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 152))(&v3);
  sub_23372F3F0(v3, a2);
  if (v4)
  {
    sub_2337239E8(v4);
  }
}

void sub_233740BA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

float sub_233740BB8(uint64_t a1)
{
  (*(*a1 + 160))(&v3);
  v1 = (*(*v3 + 576))();
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_233740C5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_233740C74(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

__int128 *sub_233740C80(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v7 = *v5;
      *(a4 + 16) = *(v5 + 2);
      *a4 = v7;
      a4 += 24;
      *(v5 + 23) = 0;
      *v5 = 0;
      v5 = (v5 + 24);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void *sub_233740CF4(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_233731FB8(result[1], *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  v2[1] = v3 + 24;
  return result;
}

uint64_t sub_233740D54(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      v10 = *v9;
      *(v8 + 16) = *(v9 + 16);
      *v8 = v10;
      v8 += 24;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 0;
      v9 += 24;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_233740F2C(&v12, a2, v7, v6);
}

void *sub_233740DC4(void *result, __int128 *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    if (v5 <= *result)
    {
      v10 = v4 - *result;
      v9 = v10 == 0;
      v11 = 0x5555555555555556 * (v10 >> 3);
      if (v9)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      v13 = result[4];
      v15[4] = v3[4];
      sub_233735B78(v13, v12);
    }

    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3) + 1 + ((0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3) + 1) >> 63);
    v7 = -3 * (v6 >> 1);
    result = sub_233740C80(v15, v5, v4, v5 - 24 * (v6 >> 1));
    v4 = v8;
    v3[1] += 8 * v7;
    v3[2] = v8;
  }

  if (*(a2 + 23) < 0)
  {
    result = sub_233731FB8(v4, *a2, *(a2 + 1));
  }

  else
  {
    v14 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v14;
  }

  v3[2] += 24;
  return result;
}

uint64_t sub_233740F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(a4 - 1);
      a4 -= 24;
      if (v8 < 0)
      {
        operator delete(*a4);
      }

      v9 = *(v7 - 24);
      *(a4 + 16) = *(v7 - 8);
      *a4 = v9;
      *(v7 - 1) = 0;
      *(v7 - 24) = 0;
      v7 -= 24;
    }

    while (v7 != a2);
  }

  return a3;
}

void *sub_233740FAC(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_objectForKeyedSubscript_(a1, a2, a2, a4, a5);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

_DWORD *sub_233741018(_DWORD *a1, double *a2)
{
  v5 = llround(*a2);
  sub_2337268D8(&v6, &v5);
  *a1 = v6;
  v5 = llround(a2[1]);
  sub_2337268D8(&v6, &v5);
  a1[1] = v6;
  return a1;
}

void sub_233741088(__n128 *a1, __int128 *a2, unint64_t a3, __int128 *a4, uint64_t a5)
{
  if (a3 < 2)
  {
    return;
  }

  v6 = a1;
  if (a3 == 2)
  {
    v7 = (a2 - 24);
    if (*(a2 - 1) < 0)
    {
      sub_233731FB8(__dst, *(a2 - 3), *(a2 - 2));
    }

    else
    {
      v8 = *v7;
      v137 = *(a2 - 1);
      *__dst = v8;
    }

    if (*(v6 + 23) < 0)
    {
      sub_233731FB8(&v134, *v6, *(v6 + 8));
    }

    else
    {
      v15 = *v6;
      v135 = *(v6 + 16);
      v134 = v15;
    }

    v69 = SHIBYTE(v137);
    if (v137 >= 0)
    {
      v70 = __dst;
    }

    else
    {
      v70 = __dst[0];
    }

    v71 = atoi(v70);
    v72 = HIBYTE(v135);
    v73 = v134;
    if (v135 >= 0)
    {
      v74 = &v134;
    }

    else
    {
      v74 = v134;
    }

    v75 = atoi(v74);
    v76 = __dst[1];
    if (v69 >= 0)
    {
      v76 = v69;
    }

    v77 = v70 + v76;
    if (v76 >= 4)
    {
      v78 = v70;
      do
      {
        v79 = memchr(v78, 46, v76 - 3);
        if (!v79)
        {
          break;
        }

        if (*v79 == 1735287854)
        {
          goto LABEL_140;
        }

        v78 = (v79 + 1);
        v76 = v77 - v78;
      }

      while (v77 - v78 > 3);
    }

    v79 = v77;
LABEL_140:
    v81 = v79 == v77 || v79 - v70 == -1;
    if ((v72 & 0x80u) == 0)
    {
      v82 = v72;
    }

    else
    {
      v82 = *(&v134 + 1);
    }

    v83 = &v74[v82];
    if (v82 >= 4)
    {
      v84 = v74;
      do
      {
        v85 = memchr(v84, 46, v82 - 3);
        if (!v85)
        {
          break;
        }

        if (*v85 == 1735287854)
        {
          goto LABEL_155;
        }

        v84 = v85 + 1;
        v82 = v83 - v84;
      }

      while (v83 - v84 > 3);
    }

    v85 = v83;
LABEL_155:
    v86 = v85 != v83 && v81;
    v87 = v85 - v74 != -1 && v86;
    if (v71 == v75)
    {
      v88 = v87;
    }

    else
    {
      v88 = v71 > v75;
    }

    if ((v72 & 0x80) != 0)
    {
      operator delete(v73);
      LOBYTE(v69) = HIBYTE(v137);
    }

    if ((v69 & 0x80) != 0)
    {
      operator delete(__dst[0]);
    }

    if (v88)
    {
      v89 = a1[1].n128_u64[0];
      v90 = *a1;
      v91 = v7[1].n128_u64[0];
      *a1 = *v7;
      a1[1].n128_u64[0] = v91;
      *v7 = v90;
      v7[1].n128_u64[0] = v89;
    }

    return;
  }

  if (a3 <= 0)
  {
    if (a1 == a2)
    {
      return;
    }

    v16 = &a1[1].n128_i8[8];
    if (&a1[1].n128_i8[8] == a2)
    {
      return;
    }

    v121 = &a1[1].n128_u8[7];
    v17 = a1;
    while (1)
    {
      v18 = v16;
      if (v17[2].n128_i8[15] < 0)
      {
        sub_233731FB8(&v147, *v16, v17[2].n128_u64[0]);
      }

      else
      {
        v19 = *v16;
        v148 = *(v16 + 2);
        v147 = v19;
      }

      v123 = v17;
      v124 = v18;
      if (v17[1].n128_i8[7] < 0)
      {
        sub_233731FB8(&v145, v17->n128_u64[0], v17->n128_u64[1]);
      }

      else
      {
        v20 = *v17;
        v146 = v17[1].n128_i64[0];
        v145 = v20;
      }

      v21 = SHIBYTE(v148);
      if (v148 >= 0)
      {
        v22 = &v147;
      }

      else
      {
        v22 = v147;
      }

      v23 = atoi(v22);
      v24 = HIBYTE(v146);
      v25 = v145;
      if (v146 >= 0)
      {
        v26 = &v145;
      }

      else
      {
        v26 = v145;
      }

      v27 = atoi(v26);
      v28 = *(&v147 + 1);
      if (v21 >= 0)
      {
        v28 = v21;
      }

      v29 = &v22[v28];
      if (v28 >= 4)
      {
        v30 = v22;
        do
        {
          v31 = memchr(v30, 46, v28 - 3);
          if (!v31)
          {
            break;
          }

          if (*v31 == 1735287854)
          {
            goto LABEL_37;
          }

          v30 = v31 + 1;
          v28 = v29 - v30;
        }

        while (v29 - v30 > 3);
      }

      v31 = v29;
LABEL_37:
      v33 = v31 == v29 || v31 - v22 == -1;
      if ((v24 & 0x80u) == 0)
      {
        v34 = v24;
      }

      else
      {
        v34 = *(&v145 + 1);
      }

      v35 = &v26[v34];
      if (v34 >= 4)
      {
        v36 = v26;
        do
        {
          v37 = memchr(v36, 46, v34 - 3);
          if (!v37)
          {
            break;
          }

          if (*v37 == 1735287854)
          {
            goto LABEL_52;
          }

          v36 = v37 + 1;
          v34 = v35 - v36;
        }

        while (v35 - v36 > 3);
      }

      v37 = v35;
LABEL_52:
      v38 = v37 != v35 && v33;
      v39 = v37 - v26 != -1 && v38;
      if (v23 == v27)
      {
        v40 = v39;
      }

      else
      {
        v40 = v23 > v27;
      }

      if ((v24 & 0x80) != 0)
      {
        operator delete(v25);
        if ((v148 & 0x8000000000000000) == 0)
        {
          goto LABEL_63;
        }
      }

      else if ((v21 & 0x80) == 0)
      {
        goto LABEL_63;
      }

      operator delete(v147);
LABEL_63:
      v41 = v124;
      if (v40)
      {
        v42 = v123;
        v128 = v123[2].n128_u64[0];
        v130 = *v124;
        v144[0] = v123[2].n128_u32[2];
        *(v144 + 3) = *(&v123[2].n128_u32[2] + 3);
        v43 = v123[2].n128_i8[15];
        *(v124 + 1) = 0;
        *(v124 + 2) = 0;
        *v124 = 0;
        v126 = v43;
        do
        {
          v44 = v42;
          if (*(v41 + 23) < 0)
          {
            operator delete(*v41);
          }

          v45 = *v42;
          *(v41 + 16) = *(v42 + 16);
          *v41 = v45;
          *(v42 + 23) = 0;
          *v42 = 0;
          if (v42 == v6)
          {
            v44 = v6;
            v68 = v121;
            goto LABEL_122;
          }

          if (v43 < 0)
          {
            sub_233731FB8(&__p, v130, v128);
          }

          else
          {
            __p = v130;
            v141 = v128;
            *v142 = v144[0];
            *&v142[3] = *(v144 + 3);
            v143 = v43;
          }

          if (*(v42 - 1) < 0)
          {
            v47 = v42 - 24;
            sub_233731FB8(&v138, *(v42 - 24), *(v42 - 16));
          }

          else
          {
            v46 = *(v42 - 24);
            v47 = v42 - 24;
            v139 = *(v42 - 8);
            v138 = v46;
          }

          v48 = v143;
          if (v143 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          v50 = atoi(p_p);
          v51 = HIBYTE(v139);
          v52 = v138;
          if (v139 >= 0)
          {
            v53 = &v138;
          }

          else
          {
            v53 = v138;
          }

          v54 = atoi(v53);
          v55 = v141;
          if (v48 >= 0)
          {
            v55 = v48;
          }

          v56 = &p_p[v55];
          if (v55 >= 4)
          {
            v57 = p_p;
            do
            {
              v58 = memchr(v57, 46, v55 - 3);
              if (!v58)
              {
                break;
              }

              if (*v58 == 1735287854)
              {
                goto LABEL_88;
              }

              v57 = v58 + 1;
              v55 = v56 - v57;
            }

            while (v56 - v57 > 3);
          }

          v58 = v56;
LABEL_88:
          v60 = v58 == v56 || v58 - p_p == -1;
          if ((v51 & 0x80u) == 0)
          {
            v61 = v51;
          }

          else
          {
            v61 = *(&v138 + 1);
          }

          v62 = &v53[v61];
          if (v61 >= 4)
          {
            v63 = v53;
            do
            {
              v64 = memchr(v63, 46, v61 - 3);
              if (!v64)
              {
                break;
              }

              if (*v64 == 1735287854)
              {
                goto LABEL_103;
              }

              v63 = v64 + 1;
              v61 = v62 - v63;
            }

            while (v62 - v63 > 3);
          }

          v64 = v62;
LABEL_103:
          v65 = v64 != v62 && v60;
          v66 = v64 - v53 != -1 && v65;
          if (v50 == v54)
          {
            v67 = v66;
          }

          else
          {
            v67 = v50 > v54;
          }

          if ((v51 & 0x80) != 0)
          {
            operator delete(v52);
            LOBYTE(v48) = v143;
          }

          v6 = a1;
          v42 = v47;
          if ((v48 & 0x80) != 0)
          {
            operator delete(__p);
          }

          v41 = v44;
          v43 = v126;
        }

        while (v67);
        v68 = (v44 + 23);
        if (*(v44 + 23) < 0)
        {
          operator delete(*v44);
        }

LABEL_122:
        *v44 = v130;
        *(v44 + 8) = v128;
        *(v44 + 16) = v144[0];
        *(v44 + 19) = *(v144 + 3);
        *v68 = v43;
        v41 = v124;
      }

      v16 = (v41 + 24);
      v17 = v41;
      if ((v41 + 24) == a2)
      {
        return;
      }
    }
  }

  v12 = a3 >> 1;
  v13 = a1 + 24 * (a3 >> 1);
  if (a3 > a5)
  {
    sub_233741088(a1, a1 + 24 * (a3 >> 1), a3 >> 1, a4, a5);
    v14 = a3 - v12;
    sub_233741088(v13, a2, v14, a4, a5);

    sub_233742540(v6, v13, a2, v12, v14, a4, a5);
    return;
  }

  sub_233741AF8(a1, (a1 + 24 * (a3 >> 1)), a3 >> 1, a4);
  v92 = a4 + 24 * v12;
  sub_233741AF8((v6 + 24 * (a3 >> 1)), a2, a3 - v12, v92);
  v127 = v92;
  v129 = a4 + 24 * a3;
  __p = a3;
  v93 = v92;
  v94 = a4;
  while (v93 != v129)
  {
    if (*(v93 + 23) < 0)
    {
      sub_233731FB8(&v147, *v93, *(v93 + 8));
    }

    else
    {
      v95 = *v93;
      v148 = *(v93 + 16);
      v147 = v95;
    }

    v133 = v6;
    if (*(v94 + 23) < 0)
    {
      sub_233731FB8(&v145, *v94, *(v94 + 1));
    }

    else
    {
      v96 = *v94;
      v146 = *(v94 + 2);
      v145 = v96;
    }

    v97 = SHIBYTE(v148);
    if (v148 >= 0)
    {
      v98 = &v147;
    }

    else
    {
      v98 = v147;
    }

    v131 = atoi(v98);
    v99 = HIBYTE(v146);
    v100 = v145;
    if (v146 >= 0)
    {
      v101 = &v145;
    }

    else
    {
      v101 = v145;
    }

    v102 = atoi(v101);
    v103 = *(&v147 + 1);
    if (v97 >= 0)
    {
      v103 = v97;
    }

    v104 = &v98[v103];
    if (v103 >= 4)
    {
      v105 = v98;
      do
      {
        v106 = memchr(v105, 46, v103 - 3);
        if (!v106)
        {
          break;
        }

        if (*v106 == 1735287854)
        {
          goto LABEL_192;
        }

        v105 = v106 + 1;
        v103 = v104 - v105;
      }

      while (v104 - v105 > 3);
    }

    v106 = v104;
LABEL_192:
    v108 = v106 == v104 || v106 - v98 == -1;
    if ((v99 & 0x80u) == 0)
    {
      v109 = v99;
    }

    else
    {
      v109 = *(&v145 + 1);
    }

    v110 = &v101[v109];
    if (v109 >= 4)
    {
      v111 = v101;
      do
      {
        v112 = memchr(v111, 46, v109 - 3);
        if (!v112)
        {
          break;
        }

        if (*v112 == 1735287854)
        {
          goto LABEL_207;
        }

        v111 = v112 + 1;
        v109 = v110 - v111;
      }

      while (v110 - v111 > 3);
    }

    v112 = v110;
LABEL_207:
    v113 = v112 != v110 && v108;
    v114 = v112 - v101 != -1 && v113;
    if (v131 == v102)
    {
      v115 = v114;
    }

    else
    {
      v115 = v131 > v102;
    }

    if ((v99 & 0x80) != 0)
    {
      operator delete(v100);
      if (v148 < 0)
      {
LABEL_228:
        operator delete(v147);
      }
    }

    else if ((v97 & 0x80) != 0)
    {
      goto LABEL_228;
    }

    v116 = *(v133 + 23);
    v92 = v127;
    if (v115)
    {
      if (v116 < 0)
      {
        operator delete(*v133);
      }

      v117 = *v93;
      *(v133 + 16) = *(v93 + 16);
      *v133 = v117;
      *(v93 + 23) = 0;
      *v93 = 0;
      v93 += 24;
    }

    else
    {
      if (v116 < 0)
      {
        operator delete(*v133);
      }

      v118 = *v94;
      *(v133 + 16) = *(v94 + 2);
      *v133 = v118;
      *(v94 + 23) = 0;
      *v94 = 0;
      v94 = (v94 + 24);
    }

    v6 = v133 + 24;
    if (v94 == v127)
    {
      while (v93 != v129)
      {
        if (*(v6 + 23) < 0)
        {
          operator delete(*v6);
        }

        v120 = *v93;
        *(v6 + 16) = *(v93 + 16);
        *v6 = v120;
        v6 += 24;
        *(v93 + 23) = 0;
        *v93 = 0;
        v93 += 24;
      }

      goto LABEL_238;
    }
  }

  while (v94 != v92)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    v119 = *v94;
    *(v6 + 16) = *(v94 + 2);
    *v6 = v119;
    v6 += 24;
    *(v94 + 23) = 0;
    *v94 = 0;
    v94 = (v94 + 24);
  }

LABEL_238:
  if (a4)
  {
    sub_2337432D8(&__p, a4);
  }
}

void sub_233741A64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_233741AF8(__n128 *a1, __n128 *a2, unint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return result;
  }

  v4 = a4;
  v6 = a2;
  v7 = a1;
  if (a3 == 2)
  {
    __dst.n128_u64[0] = 0;
    v9 = (a2 - 24);
    if (a2[-1].n128_i8[15] < 0)
    {
      sub_233731FB8(v122, a2[-2].n128_u64[1], a2[-1].n128_u64[0]);
    }

    else
    {
      v10 = *v9;
      v123 = a2[-1].n128_i64[1];
      *v122 = v10;
    }

    v119 = v7;
    if (v7[1].n128_i8[7] < 0)
    {
      sub_233731FB8(&v120, v7->n128_u64[0], v7->n128_u64[1]);
    }

    else
    {
      v85 = *v7;
      v121 = v7[1].n128_i64[0];
      v120 = v85;
    }

    v86 = SHIBYTE(v123);
    if (v123 >= 0)
    {
      v87 = v122;
    }

    else
    {
      v87 = v122[0];
    }

    v88 = atoi(v87);
    v89 = HIBYTE(v121);
    v90 = v120.n128_u64[0];
    if (v121 >= 0)
    {
      v91 = &v120;
    }

    else
    {
      v91 = v120.n128_u64[0];
    }

    v92 = atoi(v91);
    v93 = v122[1];
    if (v86 >= 0)
    {
      v93 = v86;
    }

    v94 = v87 + v93;
    if (v93 >= 4)
    {
      v95 = v87;
      do
      {
        v96 = memchr(v95, 46, v93 - 3);
        if (!v96)
        {
          break;
        }

        if (*v96 == 1735287854)
        {
          goto LABEL_201;
        }

        v95 = (v96 + 1);
        v93 = v94 - v95;
      }

      while (v94 - v95 > 3);
    }

    v96 = v94;
LABEL_201:
    v98 = v96 == v94 || v96 - v87 == -1;
    if ((v89 & 0x80u) == 0)
    {
      v99 = v89;
    }

    else
    {
      v99 = v120.n128_i64[1];
    }

    v100 = &v91[v99];
    if (v99 >= 4)
    {
      v101 = v91;
      do
      {
        v102 = memchr(v101, 46, v99 - 3);
        if (!v102)
        {
          break;
        }

        if (*v102 == 1735287854)
        {
          goto LABEL_216;
        }

        v101 = v102 + 1;
        v99 = v100 - v101;
      }

      while (v100 - v101 > 3);
    }

    v102 = v100;
LABEL_216:
    v103 = v102 != v100 && v98;
    v104 = v102 - v91 != -1 && v103;
    if (v88 == v92)
    {
      v105 = v104;
    }

    else
    {
      v105 = v88 > v92;
    }

    if ((v89 & 0x80) != 0)
    {
      operator delete(v90);
      LOBYTE(v86) = HIBYTE(v123);
    }

    if ((v86 & 0x80) != 0)
    {
      operator delete(v122[0]);
    }

    v106 = v119;
    if (v105)
    {
      v107 = v9;
    }

    else
    {
      v107 = v119;
    }

    if (!v105)
    {
      v106 = v9;
    }

    v108 = *v107;
    *(a4 + 16) = v107[1].n128_u64[0];
    *a4 = v108;
    v107->n128_u64[1] = 0;
    v107[1].n128_u64[0] = 0;
    v107->n128_u64[0] = 0;
    result = *v106;
    *(a4 + 40) = v106[1].n128_u64[0];
    *(a4 + 24) = result;
    v106->n128_u64[1] = 0;
    v106[1].n128_u64[0] = 0;
    v106->n128_u64[0] = 0;
    return result;
  }

  if (a3 == 1)
  {
    result = *a1;
    *(a4 + 16) = a1[1].n128_u64[0];
    *a4 = result;
    a1->n128_u64[1] = 0;
    a1[1].n128_u64[0] = 0;
    a1->n128_u64[0] = 0;
    return result;
  }

  if (a3 > 8)
  {
    v61 = a4;
    v62 = (a1 + 24 * (a3 >> 1));
    sub_233741088(a1, v62, a3 >> 1, a4, a3 >> 1);
    sub_233741088(v7 + 24 * (a3 >> 1), v6, a3 - (a3 >> 1), v61 + 24 * (a3 >> 1), a3 - (a3 >> 1));
    v63 = 0;
    v64 = (v7 + 24 * (a3 >> 1));
    v110 = v64;
    while (1)
    {
      if (v64 == v6)
      {
        while (v7 != v62)
        {
          result = *v7;
          v61[1].n128_u64[0] = v7[1].n128_u64[0];
          *v61 = result;
          v61 = (v61 + 24);
          v7->n128_u64[1] = 0;
          v7[1].n128_u64[0] = 0;
          v7->n128_u64[0] = 0;
          v7 = (v7 + 24);
        }

        return result;
      }

      if (v64[1].n128_i8[7] < 0)
      {
        sub_233731FB8(&__dst, v64->n128_u64[0], v64->n128_u64[1]);
      }

      else
      {
        v65 = *v64;
        v131 = v64[1].n128_i64[0];
        __dst = v65;
      }

      v118 = v7;
      if (v7[1].n128_i8[7] < 0)
      {
        sub_233731FB8(&v128, v7->n128_u64[0], v7->n128_u64[1]);
      }

      else
      {
        v66 = *v7;
        v129 = v7[1].n128_i64[0];
        v128 = v66;
      }

      v67 = SHIBYTE(v131);
      if (v131 >= 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst.n128_u64[0];
      }

      v116 = atoi(p_dst);
      v69 = HIBYTE(v129);
      v70 = v128.n128_u64[0];
      if (v129 >= 0)
      {
        v71 = &v128;
      }

      else
      {
        v71 = v128.n128_u64[0];
      }

      v113 = atoi(v71);
      v72 = __dst.n128_i64[1];
      if (v67 >= 0)
      {
        v72 = v67;
      }

      v73 = &p_dst[v72];
      if (v72 >= 4)
      {
        v74 = p_dst;
        do
        {
          v75 = memchr(v74, 46, v72 - 3);
          if (!v75)
          {
            break;
          }

          if (*v75 == 1735287854)
          {
            goto LABEL_144;
          }

          v74 = v75 + 1;
          v72 = v73 - v74;
        }

        while (v73 - v74 > 3);
      }

      v75 = v73;
LABEL_144:
      v77 = v75 == v73 || v75 - p_dst == -1;
      if ((v69 & 0x80u) == 0)
      {
        v78 = v69;
      }

      else
      {
        v78 = v128.n128_i64[1];
      }

      v79 = &v71[v78];
      if (v78 >= 4)
      {
        v80 = v71;
        do
        {
          v81 = memchr(v80, 46, v78 - 3);
          if (!v81)
          {
            break;
          }

          if (*v81 == 1735287854)
          {
            goto LABEL_159;
          }

          v80 = v81 + 1;
          v78 = v79 - v80;
        }

        while (v79 - v80 > 3);
      }

      v81 = v79;
LABEL_159:
      v82 = v81 != v79 && v77;
      v83 = v81 - v71 != -1 && v82;
      if (v116 == v113)
      {
        v84 = v83;
      }

      else
      {
        v84 = v116 > v113;
      }

      if ((v69 & 0x80) != 0)
      {
        operator delete(v70);
        LOBYTE(v67) = HIBYTE(v131);
      }

      v6 = a2;
      if ((v67 & 0x80) != 0)
      {
        operator delete(__dst.n128_u64[0]);
      }

      v7 = v118;
      if (v84)
      {
        result = *v64;
        v61[1].n128_u64[0] = v64[1].n128_u64[0];
        *v61 = result;
        v64->n128_u64[1] = 0;
        v64[1].n128_u64[0] = 0;
        v64->n128_u64[0] = 0;
        v64 = (v64 + 24);
      }

      else
      {
        result = *v118;
        v61[1].n128_u64[0] = v118[1].n128_u64[0];
        *v61 = result;
        v118->n128_u64[1] = 0;
        v118[1].n128_u64[0] = 0;
        v118->n128_u64[0] = 0;
        v7 = (v118 + 24);
      }

      v62 = v110;
      ++v63;
      v61 = (v61 + 24);
      if (v7 == v110)
      {
        while (v64 != a2)
        {
          result = *v64;
          v61[1].n128_u64[0] = v64[1].n128_u64[0];
          *v61 = result;
          v61 = (v61 + 24);
          v64->n128_u64[1] = 0;
          v64[1].n128_u64[0] = 0;
          v64->n128_u64[0] = 0;
          v64 = (v64 + 24);
        }

        return result;
      }
    }
  }

  if (a1 == a2)
  {
    return result;
  }

  result = *a1;
  *(a4 + 16) = a1[1].n128_u64[0];
  *a4 = result;
  a1->n128_u64[1] = 0;
  a1[1].n128_u64[0] = 0;
  a1->n128_u64[0] = 0;
  v11 = (a1 + 24);
  if (&a1[1].n128_i8[8] == a2)
  {
    return result;
  }

  v112 = 1;
  v12 = a4;
  do
  {
    v13 = v11;
    if (v7[2].n128_i8[15] < 0)
    {
      sub_233731FB8(&__dst, v11->n128_u64[0], v7[2].n128_u64[0]);
    }

    else
    {
      v14 = *v11;
      v131 = v11[1].n128_i64[0];
      __dst = v14;
    }

    v115 = v13;
    v117 = v7;
    if (v12[1].n128_i8[7] < 0)
    {
      sub_233731FB8(&v128, v12->n128_u64[0], v12->n128_u64[1]);
    }

    else
    {
      v128 = *v12;
      v129 = v12[1].n128_i64[0];
    }

    v15 = SHIBYTE(v131);
    if (v131 >= 0)
    {
      v16 = &__dst;
    }

    else
    {
      v16 = __dst.n128_u64[0];
    }

    v17 = atoi(v16);
    v18 = HIBYTE(v129);
    v19 = v128.n128_u64[0];
    if (v129 >= 0)
    {
      v20 = &v128;
    }

    else
    {
      v20 = v128.n128_u64[0];
    }

    v21 = atoi(v20);
    v22 = __dst.n128_i64[1];
    if (v15 >= 0)
    {
      v22 = v15;
    }

    v23 = &v16[v22];
    if (v22 >= 4)
    {
      v24 = v16;
      do
      {
        v25 = memchr(v24, 46, v22 - 3);
        if (!v25)
        {
          break;
        }

        if (*v25 == 1735287854)
        {
          goto LABEL_31;
        }

        v24 = v25 + 1;
        v22 = v23 - v24;
      }

      while (v23 - v24 > 3);
    }

    v25 = v23;
LABEL_31:
    v27 = v25 == v23 || v25 - v16 == -1;
    if ((v18 & 0x80u) == 0)
    {
      v28 = v18;
    }

    else
    {
      v28 = v128.n128_i64[1];
    }

    v29 = &v20[v28];
    if (v28 >= 4)
    {
      v30 = v20;
      do
      {
        v31 = memchr(v30, 46, v28 - 3);
        if (!v31)
        {
          break;
        }

        if (*v31 == 1735287854)
        {
          goto LABEL_46;
        }

        v30 = v31 + 1;
        v28 = v29 - v30;
      }

      while (v29 - v30 > 3);
    }

    v31 = v29;
LABEL_46:
    v32 = v31 != v29 && v27;
    v33 = v31 - v20 != -1 && v32;
    if (v17 == v21)
    {
      v34 = v33;
    }

    else
    {
      v34 = v17 > v21;
    }

    if ((v18 & 0x80) != 0)
    {
      operator delete(v19);
      if (v131 < 0)
      {
LABEL_115:
        operator delete(__dst.n128_u64[0]);
      }
    }

    else if ((v15 & 0x80) != 0)
    {
      goto LABEL_115;
    }

    v35 = (v12 + 24);
    ++v112;
    v36 = v115;
    if (!v34)
    {
      result = *v115;
      v12[2].n128_u64[1] = v115[1].n128_u64[0];
      *v35 = result;
      v115->n128_u64[1] = 0;
      v115[1].n128_u64[0] = 0;
      v115->n128_u64[0] = 0;
      goto LABEL_120;
    }

    *v35 = *v12;
    v109 = (v12 + 24);
    v12[2].n128_u64[1] = v12[1].n128_u64[0];
    v12->n128_u64[1] = 0;
    v12[1].n128_u64[0] = 0;
    v12->n128_u64[0] = 0;
    v37 = v4;
    v38 = v117;
    if (v12 == v4)
    {
      goto LABEL_117;
    }

    while (1)
    {
      if (v38[2].n128_i8[15] < 0)
      {
        sub_233731FB8(__p, v36->n128_u64[0], v38[2].n128_u64[0]);
      }

      else
      {
        v39 = *v36;
        v127 = v36[1].n128_i64[0];
        *__p = v39;
      }

      v40 = (v12 - 24);
      if (v12[-1].n128_i8[15] < 0)
      {
        sub_233731FB8(&v124, v12[-2].n128_u64[1], v12[-1].n128_u64[0]);
      }

      else
      {
        v124 = *v40;
        v125 = v12[-1].n128_i64[1];
      }

      v41 = SHIBYTE(v127);
      if (v127 >= 0)
      {
        v42 = __p;
      }

      else
      {
        v42 = __p[0];
      }

      v43 = atoi(v42);
      v44 = HIBYTE(v125);
      v45 = v124.n128_u64[0];
      if (v125 >= 0)
      {
        v46 = &v124;
      }

      else
      {
        v46 = v124.n128_u64[0];
      }

      v47 = atoi(v46);
      v48 = __p[1];
      if (v41 >= 0)
      {
        v48 = v41;
      }

      v49 = v42 + v48;
      if (v48 >= 4)
      {
        v50 = v42;
        do
        {
          v51 = memchr(v50, 46, v48 - 3);
          if (!v51)
          {
            break;
          }

          if (*v51 == 1735287854)
          {
            goto LABEL_79;
          }

          v50 = (v51 + 1);
          v48 = v49 - v50;
        }

        while (v49 - v50 > 3);
      }

      v51 = v49;
LABEL_79:
      v53 = v51 == v49 || v51 - v42 == -1;
      if ((v44 & 0x80u) == 0)
      {
        v54 = v44;
      }

      else
      {
        v54 = v124.n128_i64[1];
      }

      v55 = &v46[v54];
      if (v54 >= 4)
      {
        v56 = v46;
        do
        {
          v57 = memchr(v56, 46, v54 - 3);
          if (!v57)
          {
            break;
          }

          if (*v57 == 1735287854)
          {
            goto LABEL_94;
          }

          v56 = v57 + 1;
          v54 = v55 - v56;
        }

        while (v55 - v56 > 3);
      }

      v57 = v55;
LABEL_94:
      v58 = v57 != v55 && v53;
      v59 = v57 - v46 != -1 && v58;
      if (v43 == v47)
      {
        v60 = v59;
      }

      else
      {
        v60 = v43 > v47;
      }

      if ((v44 & 0x80) != 0)
      {
        operator delete(v45);
        LOBYTE(v41) = HIBYTE(v127);
      }

      v4 = a4;
      if ((v41 & 0x80) != 0)
      {
        break;
      }

      v36 = v115;
      v38 = v117;
      if (!v60)
      {
        goto LABEL_116;
      }

LABEL_109:
      if (v12[1].n128_i8[7] < 0)
      {
        operator delete(v12->n128_u64[0]);
      }

      *v12 = *v40;
      v12[1].n128_u64[0] = v12[-1].n128_u64[1];
      v12[-1].n128_u8[15] = 0;
      v12[-2].n128_u8[8] = 0;
      v12 = (v12 - 24);
      if (v40 == a4)
      {
        v37 = a4;
        goto LABEL_117;
      }
    }

    operator delete(__p[0]);
    v36 = v115;
    v38 = v117;
    if (v60)
    {
      goto LABEL_109;
    }

LABEL_116:
    v37 = v12;
LABEL_117:
    if (v37[1].n128_i8[7] < 0)
    {
      operator delete(v37->n128_u64[0]);
    }

    result = *v36;
    v37[1].n128_u64[0] = v36[1].n128_u64[0];
    *v37 = result;
    v38[2].n128_u8[15] = 0;
    v36->n128_u8[0] = 0;
    v35 = v109;
LABEL_120:
    v11 = (v36 + 24);
    v12 = v35;
    v7 = v36;
  }

  while (&v36[1].n128_i8[8] != a2);
  return result;
}