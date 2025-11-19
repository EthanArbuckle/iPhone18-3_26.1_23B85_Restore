void sub_23EF42834(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3522C(va);
  _Unwind_Resume(a1);
}

__n128 sub_23EF42848(__n128 ***a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = v1[1].n128_u32[2];
  if (v3 != -1)
  {
    (off_2851788F8[v3])(&v5, v1);
  }

  v1[1].n128_u32[2] = -1;
  result = *v2;
  v1[1].n128_u64[0] = v2[1].n128_u64[0];
  *v1 = result;
  v2->n128_u64[1] = 0;
  v2[1].n128_u64[0] = 0;
  v2->n128_u64[0] = 0;
  v1[1].n128_u32[2] = 1;
  return result;
}

void sub_23EF428D4(uint64_t *a1, uint64_t a2)
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
  v6 = *(v5 + 16);
  *__p = *v5;
  v15 = v6;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
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
    operator delete(__p[0]);
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    operator delete(v11);
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v13 < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_23EF42A00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF42A3C(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v4 < v5)
  {
    v6 = *v3;
    *(v4 + 16) = *(v3 + 2);
    *v4 = v6;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    *v3 = 0;
    v7 = v4 + 24;
LABEL_3:
    *(a2 + 8) = v7;
    return;
  }

  v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
  v9 = v8 + 1;
  if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_23EF3AE74();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a2) >> 3);
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

  if (v11)
  {
    if (v11 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_23EF34E18();
  }

  v12 = 24 * v8;
  v13 = *v3;
  *(v12 + 16) = *(v3 + 2);
  *v12 = v13;
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = 0;
  v7 = 24 * v8 + 24;
  v14 = *a2;
  v15 = *(a2 + 8) - *a2;
  v16 = 24 * v8 - v15;
  memcpy((v12 - v15), *a2, v15);
  *a2 = v16;
  *(a2 + 8) = v7;
  *(a2 + 16) = 0;
  if (!v14)
  {
    goto LABEL_3;
  }

  operator delete(v14);
  *(a2 + 8) = v7;
}

void sub_23EF42B98(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

__n128 sub_23EF42BA4@<Q0>(__n128 *a1@<X1>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  a1->n128_u64[1] = 0;
  a1[1].n128_u64[0] = 0;
  a1->n128_u64[0] = 0;
  return result;
}

void sub_23EF42BD0(uint64_t a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string::size_type a4@<X3>, std::string *a5@<X8>)
{
  v10 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v10 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  }

  v12 = (v11 - 1) * a4;
  v13 = a2 - a1;
  if (a2 == a1)
  {
    v14 = 0;
    goto LABEL_26;
  }

  v15 = v13 - 24;
  if ((v13 - 24) < 0x60)
  {
    v14 = 0;
    v16 = a1;
    goto LABEL_23;
  }

  v17 = v15 / 0x18;
  v18 = v15 / 0x18 + 1;
  if (v15 < 0x180)
  {
    v14 = 0;
    v19 = 0;
LABEL_18:
    v79 = v18 & 3;
    if ((v18 & 3) == 0)
    {
      v79 = 4;
    }

    v16 = a1 + 24 * (v18 - v79);
    v80 = 0uLL;
    v81 = v14;
    v82 = ~v17 + v19 + v79;
    v83 = (a1 + 24 * v19 + 47);
    v84.i64[0] = 255;
    v84.i64[1] = 255;
    do
    {
      v85 = (v83 - 39);
      v86 = (v83 + 9);
      v87 = vld3q_f64(v85);
      v88 = vld3q_f64(v86);
      v89.i16[0] = *(v83 - 24);
      v89.i16[1] = *v83;
      v89.i16[2] = v83[24];
      v89.i16[3] = v83[48];
      v90 = vmovl_u16(vcltz_s16(vshr_n_s16(vshl_n_s16(v89, 8uLL), 8uLL)));
      v91.i64[0] = v90.u32[0];
      v91.i64[1] = v90.u32[1];
      v92 = vshrq_n_s64(vshlq_n_s64(v91, 0x38uLL), 0x38uLL);
      v91.i64[0] = v90.u32[2];
      v91.i64[1] = v90.u32[3];
      v93 = vshrq_n_s64(vshlq_n_s64(v91, 0x38uLL), 0x38uLL);
      v91.i64[0] = v83[24];
      v91.i64[1] = v83[48];
      v94 = vbicq_s8(v91, v93);
      v91.i64[0] = *(v83 - 24);
      v91.i64[1] = *v83;
      v80 = vaddq_s64(vorrq_s8(vandq_s8(v88, v93), vandq_s8(v94, v84)), v80);
      v81 = vaddq_s64(vorrq_s8(vandq_s8(v87, v92), vandq_s8(vbicq_s8(v91, v92), v84)), v81);
      v83 += 96;
      v82 += 4;
    }

    while (v82);
    v14 = vaddvq_s64(vaddq_s64(v81, v80));
    goto LABEL_23;
  }

  v106 = v17 + 1;
  v107 = v15 / 0x18;
  v20 = 0uLL;
  v21 = 0uLL;
  if ((v18 & 0xF) != 0)
  {
    v22 = v18 & 0xF;
  }

  else
  {
    v22 = 16;
  }

  v108 = v22;
  v23 = v18 - v22;
  v24 = (a1 + 191);
  v109 = v18 - v22;
  v25 = 0uLL;
  v26 = 0uLL;
  v27 = 0uLL;
  v28 = 0uLL;
  v29 = 0uLL;
  v30 = 0uLL;
  do
  {
    v31.i8[0] = *(v24 - 168);
    v32.i8[0] = v31.i8[0];
    v32.i8[1] = *(v24 - 144);
    v32.i8[2] = *(v24 - 120);
    v32.i8[3] = *(v24 - 96);
    v32.i8[4] = *(v24 - 72);
    v32.i8[5] = *(v24 - 48);
    v32.i8[6] = *(v24 - 24);
    v32.i8[7] = *v24;
    v33 = (v24 - 183);
    v34 = (v24 - 135);
    v35 = (v24 - 87);
    v36 = (v24 - 39);
    v37 = (v24 + 9);
    v38 = (v24 + 57);
    v39 = vld3q_f64(v33);
    v40 = vld3q_f64(v34);
    v41 = vld3q_f64(v35);
    v42 = vld3q_f64(v36);
    v110 = v42;
    v43 = vld3q_f64(v37);
    v44 = vld3q_f64(v38);
    v32.i8[8] = v24[24];
    v32.i8[9] = v24[48];
    v32.i8[10] = v24[72];
    v32.i8[11] = v24[96];
    v45.i32[0] = v32.i32[2];
    v32.i8[12] = v24[120];
    v32.i8[13] = v24[144];
    v45.i16[2] = v32.i16[6];
    v32.i8[14] = v24[168];
    v45.i8[6] = v32.i8[14];
    v32.i8[15] = v24[192];
    v31.i8[1] = v32.i8[1];
    v31.i8[2] = v32.i8[2];
    v46 = vcltzq_s8(v32);
    v47 = vmovl_high_s8(v46);
    v31.i8[3] = *(v24 - 96);
    v31.i8[4] = *(v24 - 72);
    v48 = vmovl_s8(*v46.i8);
    v49 = vmovl_s16(*v48.i8);
    v31.i8[5] = *(v24 - 48);
    v31.i8[6] = *(v24 - 24);
    v50.i64[0] = v49.i32[0];
    v50.i64[1] = v49.i32[1];
    v51 = v50;
    v31.i8[7] = *v24;
    v52 = vmovl_u8(v31);
    v53 = vmovl_u16(*v52.i8);
    v50.i64[0] = v53.u32[0];
    v50.i64[1] = v53.u32[1];
    v54 = vbslq_s8(v51, v39, v50);
    v55 = vmovl_s16(*v47.i8);
    v45.i8[7] = v24[192];
    v56 = vmovl_u8(v45);
    v57 = vmovl_u16(*v56.i8);
    v50.i64[0] = v55.i32[0];
    v50.i64[1] = v55.i32[1];
    v58 = v50;
    v50.i64[0] = v57.u32[0];
    v50.i64[1] = v57.u32[1];
    v59 = vbslq_s8(v58, v43, v50);
    v60 = vmovl_high_s16(v48);
    v50.i64[0] = v49.i32[2];
    v50.i64[1] = v49.i32[3];
    v61 = v50;
    v50.i64[0] = v53.u32[2];
    v50.i64[1] = v53.u32[3];
    v62 = vbslq_s8(v61, v40, v50);
    v50.i64[0] = v60.i32[0];
    v50.i64[1] = v60.i32[1];
    v63 = v50;
    v64 = (v24 + 105);
    v65 = (v24 + 153);
    v66 = vmovl_high_u16(v52);
    v50.i64[0] = v66.u32[0];
    v50.i64[1] = v66.u32[1];
    v67 = vbslq_s8(v63, v41, v50);
    v68 = vld3q_f64(v64);
    v69 = vld3q_f64(v65);
    v50.i64[0] = v55.i32[2];
    v50.i64[1] = v55.i32[3];
    v70 = v50;
    v50.i64[0] = v57.u32[2];
    v50.i64[1] = v57.u32[3];
    v71 = vbslq_s8(v70, v44, v50);
    v72 = vmovl_high_s16(v47);
    v73 = vmovl_high_u16(v56);
    v50.i64[0] = v72.i32[0];
    v50.i64[1] = v72.i32[1];
    v74 = v50;
    v50.i64[0] = v73.u32[0];
    v50.i64[1] = v73.u32[1];
    v75 = vbslq_s8(v74, v68, v50);
    v50.i64[0] = v60.i32[2];
    v50.i64[1] = v60.i32[3];
    v76 = v50;
    v50.i64[0] = v66.u32[2];
    v50.i64[1] = v66.u32[3];
    v77 = vbslq_s8(v76, v110, v50);
    v50.i64[0] = v72.i32[2];
    v50.i64[1] = v72.i32[3];
    v78 = v50;
    v50.i64[0] = v73.u32[2];
    v50.i64[1] = v73.u32[3];
    v30 = vaddq_s64(vbslq_s8(v78, v69, v50), v30);
    v26 = vaddq_s64(v77, v26);
    v29 = vaddq_s64(v75, v29);
    v28 = vaddq_s64(v71, v28);
    v25 = vaddq_s64(v67, v25);
    v21 = vaddq_s64(v62, v21);
    v27 = vaddq_s64(v59, v27);
    v20 = vaddq_s64(v54, v20);
    v24 += 384;
    v23 -= 16;
  }

  while (v23);
  v14 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v20, v27), vaddq_s64(v25, v29)), vaddq_s64(vaddq_s64(v21, v28), vaddq_s64(v26, v30))));
  if (v108 >= 5)
  {
    v19 = v109;
    v18 = v106;
    v17 = v107;
    goto LABEL_18;
  }

  v16 = a1 + 24 * v109;
  do
  {
LABEL_23:
    v95 = *(v16 + 23);
    if ((v95 & 0x80u) != 0)
    {
      v95 = *(v16 + 8);
    }

    v14 += v95;
    v16 += 24;
  }

  while (v16 != a2);
LABEL_26:
  v96 = v14 + v12;
  a5->__r_.__value_.__r.__words[0] = 0;
  a5->__r_.__value_.__l.__size_ = 0;
  a5->__r_.__value_.__r.__words[2] = 0;
  if ((v14 + v12) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  if (v96 >= 0x17)
  {
    v97 = v96 | 7;
    if (v97 == 23)
    {
      v98 = 24;
    }

    else
    {
      v98 = v97;
    }

    sub_23EF430F4(a5, v98);
  }

  if (v13 >= 1)
  {
    v99 = *(a1 + 23);
    v100 = v99 >= 0 ? a1 : *a1;
    v101 = v99 >= 0 ? *(a1 + 23) : *(a1 + 8);
    std::string::append(a5, v100, v101);
    if (v10 >= 2)
    {
      for (i = a1 + 24; i != a2; i += 24)
      {
        std::string::append(a5, a3, a4);
        v103 = *(i + 23);
        if (v103 >= 0)
        {
          v104 = i;
        }

        else
        {
          v104 = *i;
        }

        if (v103 >= 0)
        {
          v105 = *(i + 23);
        }

        else
        {
          v105 = *(i + 8);
        }

        std::string::append(a5, v104, v105);
      }
    }
  }
}

void sub_23EF430D0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF430F4(_BYTE *__dst, unint64_t a2)
{
  v3 = __dst[23];
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = 22;
    LOBYTE(v5) = __dst[23];
    v6 = a2 < 0x17;
    if (a2 < 0x17)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (v4 < a2)
    {
      operator new();
    }

    operator new();
  }

  v3 = *(__dst + 1);
  v8 = *(__dst + 2);
  v4 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v5 = HIBYTE(v8);
  v6 = a2 < 0x17;
  if (a2 >= 0x17)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = *__dst;
  if ((v5 & 0x80) == 0)
  {
    v9 = v5 + 1;
LABEL_9:
    memmove(__dst, v7, v9);
    goto LABEL_10;
  }

  v10 = *(__dst + 1);
  v6 = 1;
  v9 = v10 + 1;
  if (v10 != -1)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (v6)
  {
    operator delete(v7);
  }

  __dst[23] = v3 & 0x7F;
}

void sub_23EF43280(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t sub_23EF432A8(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      sub_23EF34EA4(a1, *a2, *(a2 + 1));
    }

    else
    {
      v4 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v4;
    }

    *(a1 + 24) = 1;
  }

  v5 = a2[2];
  v6 = *(a2 + 6);
  *(a1 + 56) = 0;
  *(a1 + 48) = v6;
  *(a1 + 32) = v5;
  *(a1 + 80) = 0;
  if (*(a2 + 80) == 1)
  {
    if (*(a2 + 79) < 0)
    {
      sub_23EF34EA4((a1 + 56), *(a2 + 7), *(a2 + 8));
    }

    else
    {
      v7 = *(a2 + 56);
      *(a1 + 72) = *(a2 + 9);
      *(a1 + 56) = v7;
    }

    *(a1 + 80) = 1;
  }

  *(a1 + 96) = 0;
  *(a1 + 144) = 0;
  if (*(a2 + 144) == 1)
  {
    if (*(a2 + 119) < 0)
    {
      sub_23EF34EA4((a1 + 96), *(a2 + 12), *(a2 + 13));
    }

    else
    {
      v8 = a2[6];
      *(a1 + 112) = *(a2 + 14);
      *(a1 + 96) = v8;
    }

    _X0 = 0;
    _X1 = 0;
    __asm { CASPAL          X0, X1, X0, X1, [X8] }

    *(a1 + 128) = _X0;
    *(a1 + 136) = 0;
    *(a1 + 144) = 1;
  }

  *(a1 + 160) = 0;
  *(a1 + 184) = 0;
  if (*(a2 + 184) == 1)
  {
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    sub_23EF434AC(a1 + 160, *(a2 + 20), *(a2 + 21), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 21) - *(a2 + 20)) >> 5));
    *(a1 + 184) = 1;
  }

  return a1;
}

void sub_23EF43424(_Unwind_Exception *exception_object)
{
  if (*(v1 + 144) == 1 && *(v1 + 119) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 80) == 1 && *(v1 + 79) < 0)
  {
    operator delete(*v2);
  }

  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF434AC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x2AAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_23EF3AE74();
  }
}

void sub_23EF435AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  sub_23EF43700(&a11);
  *(v11 + 8) = v12;
  sub_23EF437A0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_23EF435CC(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      v4 = a2;
      sub_23EF34EA4(a1, *a2, *(a2 + 1));
      a2 = v4;
    }

    else
    {
      v3 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v3;
    }

    *(a1 + 24) = 1;
  }

  *(a1 + 32) = 0;
  *(a1 + 80) = 0;
  if (*(a2 + 80) == 1)
  {
    if (*(a2 + 55) < 0)
    {
      sub_23EF34EA4((a1 + 32), *(a2 + 4), *(a2 + 5));
    }

    else
    {
      v5 = a2[2];
      *(a1 + 48) = *(a2 + 6);
      *(a1 + 32) = v5;
    }

    _X2 = 0;
    _X3 = 0;
    __asm { CASPAL          X2, X3, X2, X3, [X8] }

    *(a1 + 64) = _X2;
    *(a1 + 72) = 0;
    *(a1 + 80) = 1;
  }

  return a1;
}

void sub_23EF436B4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 80) == 1 && *(v1 + 55) < 0)
  {
    operator delete(*v2);
  }

  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EF43700(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (1)
    {
      while (1)
      {
        if (v3 == v4)
        {
          return a1;
        }

        v5 = v3;
        if (*(v3 - 16) != 1 || (*(v3 - 41) & 0x80000000) == 0)
        {
          break;
        }

        operator delete(*(v3 - 8));
        v3 -= 12;
        if (*(v5 - 72) == 1)
        {
          goto LABEL_8;
        }
      }

      v3 -= 12;
      if (*(v5 - 72) == 1)
      {
LABEL_8:
        if (*(v5 - 73) < 0)
        {
          operator delete(*v3);
        }
      }
    }
  }

  return a1;
}

void ****sub_23EF437A0(void ****a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 == v3)
      {
LABEL_14:
        v2[1] = v3;
        operator delete(v5);
        return a1;
      }

      while (1)
      {
        v6 = v4;
        if (*(v4 - 16) == 1 && *(v4 - 41) < 0)
        {
          operator delete(*(v4 - 8));
          v4 -= 12;
          if (*(v6 - 72) == 1)
          {
LABEL_9:
            if (*(v6 - 73) < 0)
            {
              operator delete(*v4);
            }
          }
        }

        else
        {
          v4 -= 12;
          if (*(v6 - 72) == 1)
          {
            goto LABEL_9;
          }
        }

        if (v4 == v3)
        {
          v5 = **a1;
          goto LABEL_14;
        }
      }
    }
  }

  return a1;
}

uint64_t sub_23EF4386C(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = *(a1 + 8);
      v4 = *a1;
      if (v3 == v2)
      {
LABEL_14:
        *(a1 + 8) = v2;
        operator delete(v4);
        return a1;
      }

      while (1)
      {
        v5 = v3;
        if (*(v3 - 16) == 1 && *(v3 - 41) < 0)
        {
          operator delete(*(v3 - 8));
          v3 -= 12;
          if (*(v5 - 72) == 1)
          {
LABEL_9:
            if (*(v5 - 73) < 0)
            {
              operator delete(*v3);
            }
          }
        }

        else
        {
          v3 -= 12;
          if (*(v5 - 72) == 1)
          {
            goto LABEL_9;
          }
        }

        if (v3 == v2)
        {
          v4 = *a1;
          goto LABEL_14;
        }
      }
    }
  }

  return a1;
}

void sub_23EF4392C(__int128 *a1, uint64_t a2)
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
  sub_23EF43B5C();
}

void sub_23EF43ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF43AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF43AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF43B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF43B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF43B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF43B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF43DF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  __cxa_guard_abort(&qword_27E393F78);
  v23 = *(v21 - 56);
  *(v21 - 56) = 0;
  if (!v23)
  {
    _Unwind_Resume(a1);
  }

  sub_23F302A54(v21 - 56, v23);
  _Unwind_Resume(a1);
}

void sub_23EF44080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF44198(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF441C8(const void **a1@<X0>, std::string *a2@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  *(&__p.__r_.__value_.__s + 23) = 17;
  strcpy(&__p, "cv3d::kit::Number");
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

void sub_23EF442F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3291C(va);
  if (*(v2 - 25) < 0)
  {
    operator delete(*(v2 - 48));
  }

  _Unwind_Resume(a1);
}

void sub_23EF44334(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_23EF34EA4(&v7, *a1, *(a1 + 1));
  }

  else
  {
    v7 = *a1;
    v8 = *(a1 + 2);
  }

  v9 = 1;
  v10 = &v7;
  v11 = a2;
  v12 = &v7;
  v13 = a2;
  v14 = a2;
  sub_23EF4248C(&v12, &v7);
  v10 = &v7;
  v11 = a3;
  v12 = &v7;
  v13 = a3;
  v14 = a3;
  if (v9 != -1)
  {
    v15 = &v10;
    (off_2851788E0[v9])(&v15, &v7);
    v10 = &v7;
    v11 = a4;
    v12 = &v7;
    v13 = a4;
    v14 = a4;
    if (v9 != -1)
    {
      v15 = &v10;
      (*(&off_285178910 + v9))(&v15, &v7);
      sub_23EF43E78();
    }

    sub_23EF41D6C();
  }

  sub_23EF41D6C();
}

void sub_23EF4450C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF44524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF44538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF4454C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF44560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF44574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF44588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF4459C(std::string *a1@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  HIBYTE(v9[2]) = 16;
  strcpy(v9, "viz::PackageData");
  *(&__p.__r_.__value_.__s + 23) = 17;
  strcpy(&__p, "cv3d::kit::Number");
  sub_23F301470(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v14 = 12;
  strcpy(v13, "viz::Package");
  sub_23F302E84("8U]", 2, &v15);
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

void sub_23EF447B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
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

uint64_t sub_23EF44860(uint64_t a1)
{
  if (*(a1 + 184) == 1)
  {
    v2 = *(a1 + 160);
    if (v2)
    {
      v3 = *(a1 + 168);
      v4 = *(a1 + 160);
      if (v3 == v2)
      {
LABEL_14:
        *(a1 + 168) = v2;
        operator delete(v4);
        goto LABEL_15;
      }

      while (1)
      {
        v5 = v3;
        if (*(v3 - 16) == 1 && *(v3 - 41) < 0)
        {
          operator delete(*(v3 - 8));
          v3 -= 12;
          if (*(v5 - 72) == 1)
          {
LABEL_9:
            if (*(v5 - 73) < 0)
            {
              operator delete(*v3);
            }
          }
        }

        else
        {
          v3 -= 12;
          if (*(v5 - 72) == 1)
          {
            goto LABEL_9;
          }
        }

        if (v3 == v2)
        {
          v4 = *(a1 + 160);
          goto LABEL_14;
        }
      }
    }
  }

LABEL_15:
  if (*(a1 + 144) == 1 && *(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
    if (*(a1 + 80) != 1)
    {
      goto LABEL_21;
    }
  }

  else if (*(a1 + 80) != 1)
  {
    goto LABEL_21;
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

LABEL_21:
  if (*(a1 + 24) != 1 || (*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*a1);
  return a1;
}

void sub_23EF44998(uint64_t a1, uint64_t a2)
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

  sub_23EF44AC4(&v4, v3);
}

void sub_23EF44CC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_23EF3AE8C(v15);
  _Unwind_Resume(a1);
}

void sub_23EF44D48(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23EF44D80(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_23EF44DA4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIPK14__CFDictionaryEC1ES5_EUlS5_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIPK14__CFDictionaryEC1ES5_EUlS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIPK14__CFDictionaryEC1ES5_EUlS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIPK14__CFDictionaryEC1ES5_EUlS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void **sub_23EF44E04(void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_285178C88;
    sub_23EF44860((v1 + 6));
    v1[1] = &unk_285178CD0;
    v3 = v1[3];
    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
      }
    }

    MEMORY[0x245CACD00](v1, 0x10B3C406BFE9A7DLL);
    return v2;
  }

  return result;
}

void sub_23EF44EE0(uint64_t *a1, uint64_t a2, const void *a3)
{
  v4 = *a1;
  v3 = a1[1];
  if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v6 = a3;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    a3 = v6;
    if (v4)
    {
LABEL_4:
      v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberFloatType, a3);
      sub_23EFEA754(&v7, v5);
    }
  }

  else if (v4)
  {
    goto LABEL_4;
  }
}

uint64_t *sub_23EF450E0(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_22;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_22:
    operator new();
  }

  if (v3.u32[0] < 2uLL)
  {
    while (1)
    {
      v7 = v6[1];
      if (v7 == a2)
      {
        if (*(v6 + 4) == a2)
        {
          return v6;
        }
      }

      else if ((v7 & (v2 - 1)) != v4)
      {
        goto LABEL_22;
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v8 = v6[1];
    if (v8 == a2)
    {
      break;
    }

    if (v8 >= v2)
    {
      v8 %= v2;
    }

    if (v8 != v4)
    {
      goto LABEL_22;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_22;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_23EF4557C(uint64_t a1@<X8>)
{
  sub_23F2D70B4(&v6);
  if (v12 == 1)
  {
    v3 = v6;
    v13[0] = v7;
    LOWORD(v13[1]) = v8;
    v4 = v9;
    v2 = v10;
    v5 = v11;
  }

  else
  {
    v4 = 0;
    qmemcpy(v13, "e.cv3d", 6);
    v5 = 14;
    v3 = 0x6C7070612E6D6F63;
  }

  *a1 = v3;
  *(a1 + 8) = v13[0];
  *(a1 + 12) = v13[1];
  *(a1 + 14) = v4;
  *(a1 + 15) = v2;
  *(a1 + 23) = v5;
  *(a1 + 24) = 1;
}

uint64_t sub_23EF45630(uint64_t result)
{
  v1 = *(result + 32);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = result;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    result = v2;
  }

  v3 = *(result + 16);
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

uint64_t sub_23EF456F8(uint64_t result)
{
  if (*(result + 31) < 0)
  {
    v1 = result;
    operator delete(*(result + 8));
    return v1;
  }

  return result;
}

void sub_23EF4573C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23EF45774(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23EF45794(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__110shared_ptrIvE27__shared_ptr_default_deleteIv13os_log_pack_sEE")
  {
    if (((v2 & "NSt3__110shared_ptrIvE27__shared_ptr_default_deleteIv13os_log_pack_sEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__110shared_ptrIvE27__shared_ptr_default_deleteIv13os_log_pack_sEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIvE27__shared_ptr_default_deleteIv13os_log_pack_sEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_23EF45814(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2851789B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23EF45868(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

void sub_23EF45880(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x245CACD00);
}

uint64_t *sub_23EF458F8(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 32);
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = *(v2 + 16);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    MEMORY[0x245CACD00](v2, 0x10F0C40B62ED6C6);
  }

  return a1;
}

uint64_t sub_23EF459D8(uint64_t result)
{
  v1 = *(result + 32);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = result;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    result = v2;
  }

  v3 = *(result + 8);
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

void sub_23EF45AA0(uint64_t a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string::size_type a4@<X3>, std::string *a5@<X8>)
{
  v10 = (a2 - a1) >> 4;
  if (v10 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = (a2 - a1) >> 4;
  }

  v12 = (v11 - 1) * a4;
  v13 = a2 - a1;
  if (a2 == a1)
  {
    v14 = 0;
  }

  else
  {
    if ((v13 - 16) >= 0x40)
    {
      v16 = ((v13 - 16) >> 4) + 1;
      v17 = v16 & 3;
      if ((v16 & 3) == 0)
      {
        v17 = 4;
      }

      v18 = v16 - v17;
      v15 = a1 + 16 * v18;
      v19 = (a1 + 40);
      v20 = 0uLL;
      v21 = 0uLL;
      do
      {
        v22 = v19 - 4;
        v23 = vld2q_f64(v22);
        v24 = vld2q_f64(v19);
        v20 = vaddq_s64(v23, v20);
        v21 = vaddq_s64(v24, v21);
        v19 += 8;
        v18 -= 4;
      }

      while (v18);
      v14 = vaddvq_s64(vaddq_s64(v21, v20));
    }

    else
    {
      v14 = 0;
      v15 = a1;
    }

    do
    {
      v14 += *(v15 + 8);
      v15 += 16;
    }

    while (v15 != a2);
  }

  v25 = v14 + v12;
  a5->__r_.__value_.__r.__words[0] = 0;
  a5->__r_.__value_.__l.__size_ = 0;
  a5->__r_.__value_.__r.__words[2] = 0;
  if (v25 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  if (v25 >= 0x17)
  {
    v26 = v25 | 7;
    if (v26 == 23)
    {
      v27 = 24;
    }

    else
    {
      v27 = v26;
    }

    sub_23EF430F4(a5, v27);
  }

  if (v10 >= 1)
  {
    std::string::append(a5, *a1, *(a1 + 8));
    if (v13 != 16)
    {
      for (i = a1 + 16; i != a2; i += 16)
      {
        std::string::append(a5, a3, a4);
        v29 = *i;
        v30 = *(i + 8);
        std::string::append(a5, v29, v30);
      }
    }
  }
}

void sub_23EF45C18(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_23EF45C4C(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_23EF4604C(a2, v3);
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

size_t sub_23EF45D4C(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_285178B88[v3])(&v6, v1);
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

void sub_23EF45E40(uint64_t *a1, uint64_t a2)
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
    (off_285178B88[v9])(&v12, v2);
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

void sub_23EF46000(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_23EF4604C(uint64_t a1, const char *a2)
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

void sub_23EF461E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3522C(va);
  _Unwind_Resume(a1);
}

void *sub_23EF461FC(void *a1)
{
  *a1 = &unk_285178C88;
  sub_23EF44860((a1 + 6));
  result = a1;
  a1[1] = &unk_285178CD0;
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

void sub_23EF462BC(void *a1)
{
  *a1 = &unk_285178C88;
  sub_23EF44860((a1 + 6));
  a1[1] = &unk_285178CD0;
  v2 = a1[3];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x245CACD00);
}

void sub_23EF463A0(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E395A70, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395A70))
    {
      sub_23EF477C8();
    }
  }

  (*(*(a1 + 8) + 24))(__p, a1 + 8);
  sub_23EF44334(&xmmword_27E395A78, "{", __p, ",");
}

void sub_23EF46494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF464B0(uint64_t a1@<X8>)
{
  *(a1 + 23) = 8;
  strcpy(a1, "cv3d.viz");
  *(a1 + 24) = 6;
}

void sub_23EF4652C(uint64_t a1, uint64_t a2)
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

  sub_23EF44AC4(&v4, v3);
}

void *sub_23EF46658(void *result)
{
  *result = &unk_285178CD0;
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

void *sub_23EF466EC(void *a1)
{
  *a1 = &unk_285178C88;
  sub_23EF44860((a1 + 6));
  result = a1;
  a1[1] = &unk_285178CD0;
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

void sub_23EF467AC(void *a1)
{
  *a1 = &unk_285178C88;
  sub_23EF44860((a1 + 6));
  a1[1] = &unk_285178CD0;
  v2 = a1[3];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x245CACD00);
}

void sub_23EF46880()
{
  if ((atomic_load_explicit(&qword_27E393FF8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E393FF8))
    {
      sub_23EF47534();
    }
  }

  sub_23EF46FE8(&xmmword_27E393FE0, "{");
}

void sub_23EF46934(uint64_t a1@<X8>)
{
  *(a1 + 23) = 15;
  strcpy(a1, "unknown_package");
  *(a1 + 24) = 0;
}

void sub_23EF46960(void *a1)
{
  *a1 = &unk_285178CD0;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23EF46A08(char **a1, char **lpsrc)
{
  v4 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28517BF90, &unk_285178CF0, 0);
  if (result)
  {
    if (a1 == lpsrc)
    {
      return 1;
    }

    else
    {
      v6 = *(result + 8);
      v7 = a1[1];

      return sub_23F062774(v7, v6);
    }
  }

  return result;
}

void sub_23EF46AA8()
{
  if ((atomic_load_explicit(&qword_27E393FD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E393FD8))
  {
    sub_23F302BD0("cv3d::kit::dict::Dictionary]", 0x1BuLL, &xmmword_27E393FC0);
    __cxa_guard_release(&qword_27E393FD8);
  }

  sub_23EF46B5C(&xmmword_27E393FC0, "{");
}

void sub_23EF46B5C(__int128 *a1, uint64_t a2)
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
  sub_23EF46D08();
}

void sub_23EF46CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF46CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF46CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF46CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF46CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF46F10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_23EF46F54(void *result)
{
  *result = &unk_285178CD0;
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

void sub_23EF46FE8(__int128 *a1, uint64_t a2)
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
  sub_23EF47218();
}

void sub_23EF47188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF471A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF471B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF471C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF471DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF471F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF47204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF474AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  __cxa_guard_abort(&qword_27E393FD8);
  v23 = *(v21 - 56);
  *(v21 - 56) = 0;
  if (!v23)
  {
    _Unwind_Resume(a1);
  }

  sub_23F302A54(v21 - 56, v23);
  _Unwind_Resume(a1);
}

void sub_23EF47608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF47788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_23EF3291C(&a9);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23EF477C8()
{
  v1 = *MEMORY[0x277D85DE8];
  v0[23] = 16;
  strcpy(v0, "viz::PackageData");
  operator new();
}

void sub_23EF47A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
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

uint64_t sub_23EF47ABC(uint64_t result)
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

uint64_t sub_23EF47B34(uint64_t a1)
{
  if (*(a1 + 168) == 1)
  {
    v2 = *(a1 + 144);
    if (v2)
    {
      v3 = *(a1 + 152);
      v4 = *(a1 + 144);
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
        v4 = *(a1 + 144);
      }

      *(a1 + 152) = v2;
      operator delete(v4);
    }
  }

  if (*(a1 + 136) == 1 && *(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
    if (*(a1 + 104) != 1)
    {
      goto LABEL_16;
    }
  }

  else if (*(a1 + 104) != 1)
  {
    goto LABEL_16;
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

LABEL_16:
  if (*(a1 + 48) != 1 || (*(a1 + 47) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 24));
  return a1;
}

uint64_t sub_23EF47C2C(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2 != -1)
  {
    (off_285178E58[v2])(&v4, a1 + 32);
  }

  *(a1 + 96) = -1;
  return a1;
}

uint64_t sub_23EF47C88@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(result + 16);
  *a2 = *(result + 8);
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  v5 = (a2 + 16);
  *(a2 + 40) = 0;
  if (*(result + 48) == 1)
  {
    if (*(result + 47) < 0)
    {
      result = sub_23EF34EA4(v5, *(result + 24), *(result + 32));
    }

    else
    {
      *v5 = *(result + 24);
      *(a2 + 32) = *(result + 40);
    }

    *(a2 + 40) = 1;
  }

  if (*(v2 + 72) == 1)
  {
    v6 = *(v2 + 64);
    *(a2 + 48) = *(v2 + 56);
    *(a2 + 56) = v6;
    v7 = 1;
  }

  else
  {
    v7 = 0;
    *(a2 + 48) = 0;
  }

  *(a2 + 72) = 0;
  *(a2 + 64) = v7;
  *(a2 + 96) = 0;
  if (*(v2 + 104) == 1)
  {
    if (*(v2 + 103) < 0)
    {
      result = sub_23EF34EA4((a2 + 72), *(v2 + 80), *(v2 + 88));
    }

    else
    {
      *(a2 + 72) = *(v2 + 80);
      *(a2 + 88) = *(v2 + 96);
    }

    *(a2 + 96) = 1;
  }

  if (*(v2 + 136))
  {
    if (*(v2 + 135) < 0)
    {
      result = sub_23EF34EA4(v14, *(v2 + 112), *(v2 + 120));
    }

    else
    {
      *v14 = *(v2 + 112);
      *&v14[16] = *(v2 + 128);
    }

    *&v15[7] = *&v14[15];
    *v15 = *&v14[8];
    v11 = v14[23];
    v12 = *&v14[8];
    *(a2 + 112) = *v14;
    *(a2 + 120) = v12;
    *(a2 + 127) = *&v15[7];
    *(a2 + 135) = v11;
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    *(a2 + 160) = 1;
    if (*(v2 + 168) != 1)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(a2 + 112) = 0;
    *(a2 + 160) = 0;
    if (*(v2 + 168) != 1)
    {
LABEL_21:
      v10 = 0;
      *(a2 + 176) = 0;
      goto LABEL_22;
    }
  }

  v8 = 0xAAAAAAAAAAAAAAABLL * ((*(v2 + 152) - *(v2 + 144)) >> 3);
  memset(v14, 0, sizeof(v14));
  sub_23EF540BC(v14, v8);
  result = sub_23EF54330(*(v2 + 144), *(v2 + 152), v14, sub_23F04BCA0);
  v9 = *&v14[16];
  *(a2 + 176) = *v14;
  *(a2 + 192) = v9;
  v10 = 1;
LABEL_22:
  *(a2 + 200) = v10;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23EF47EA4(_Unwind_Exception *exception_object)
{
  if (v1[96] == 1 && v1[95] < 0)
  {
    operator delete(*v3);
  }

  if (v1[40] == 1 && v1[39] < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EF47F24(uint64_t result)
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

void *sub_23EF47F9C(void *a1, uint64_t a2)
{
  *a1 = &unk_285178D30;
  a1[1] = &unk_285178DA8;
  sub_23EF53784((a1 + 2), (a2 + 80));
  v11[0] = &unk_285179588;
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *(a2 + 56);
    v7 = *(a2 + 64);
    v8 = *(a2 + 68);
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v6 = *(a2 + 56);
    v7 = *(a2 + 64);
    v8 = *(a2 + 68);
  }

  v11[1] = v4;
  v12 = v5;
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  v15 = v6;
  v16 = v7;
  v17 = v8;
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  sub_23F0945D0((a1 + 24), v11, 0);
  v9 = v12;
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  return a1;
}

void sub_23EF48144(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF47ABC(va);
  sub_23EF47B34(v2 + 16);
  _Unwind_Resume(a1);
}

void sub_23EF48160(uint64_t a1)
{
  *a1 = &unk_285178D30;
  *(a1 + 8) = &unk_285178DA8;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  v1 = &unk_285179288;
  sub_23EF60D90();
}

void sub_23EF48278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23EF47F24(&a9);
  sub_23EF47B34(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_23EF482A8(uint64_t a1)
{
  *a1 = &unk_285178D30;
  *(a1 + 8) = &unk_285178DA8;
  v2 = *(a1 + 288);
  if (v2 != -1)
  {
    (off_285178E58[v2])(&v8, a1 + 224);
  }

  *(a1 + 288) = -1;
  if (*(a1 + 184) == 1)
  {
    v3 = *(a1 + 160);
    if (v3)
    {
      v4 = *(a1 + 168);
      v5 = *(a1 + 160);
      if (v4 != v3)
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

        while (v4 != v3);
        v5 = *(a1 + 160);
      }

      *(a1 + 168) = v3;
      operator delete(v5);
    }
  }

  if (*(a1 + 152) == 1 && *(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
    if (*(a1 + 120) != 1)
    {
      goto LABEL_18;
    }
  }

  else if (*(a1 + 120) != 1)
  {
    goto LABEL_18;
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

LABEL_18:
  if (*(a1 + 64) != 1 || (*(a1 + 63) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 40));
  return a1;
}

void sub_23EF48424(uint64_t a1)
{
  sub_23EF482A8(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23EF4845C(uint64_t a1)
{
  sub_23EF482A8(a1 - 8);

  JUMPOUT(0x245CACD00);
}

void sub_23EF484A8(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = **a1;
  v6 = __dynamic_cast(a1, &unk_28518D908, &unk_2851798D0, 0);
  if (v6)
  {
    v7 = v6;
    if (**(v6 + 5) <= 1u)
    {
      v8 = v6[88];
      *(v6 + 9) = "info";
      *(v6 + 10) = 4;
      if ((v8 & 1) == 0)
      {
        v6[88] = 1;
      }
    }

    sub_23F2E6438((v6 + 48), v6 + 5);
    v9 = sub_23F2E72C0(v7);
    *(v7 + 40) = v9;
    if (*(v7 + 88))
    {
      *(v7 + 88) = 0;
    }

    if (*v9 < 2u && ((*(v7 + 72) = "version", *(v7 + 80) = 7, *(v7 + 88) = 1, v10 = *(v7 + 72), v11 = *v10, v12 = *(v10 + 3), v11 == *"version") ? (v13 = v12 == *"sion") : (v13 = 0), v13))
    {
      *(v7 + 96) = 6;
      *(v7 + 100) = 1;
      *(v7 + 88) = 0;
    }

    else
    {
      LOBYTE(__src) = 6;
      v56 = 6;
      v14 = sub_23F2E72C0(v7);
      v15 = *v14;
      *v14 = 6;
      LOBYTE(__src) = v15;
      v16 = v14[1];
      v14[1] = v56;
      v56 = v16;
      sub_23F0655DC(&v56, v15);
    }

    sub_23EF54B14(v7, a2 + 16);
  }

  v17 = *v4;
  v18 = __dynamic_cast(a1, &unk_28518D908, &unk_285179918, 0);
  if (v18)
  {
    v19 = v18;
    v20 = v18[3];
    if (*(v20 + 40) == 1)
    {
      __src = (v20 + 16);
      sub_23F2FD25C(&__src, 6u);
    }

    else
    {
      sub_23F2FD4DC(&__src, (v20 + 8));
    }

    sub_23F2F887C(*(v19 + 24));
    sub_23EF57C0C(v19, a2 + 16, 6u);
    v33 = *(v19 + 24);
    v34 = *(v33[11] - 8);
    sub_23F2F866C(v33 + 6, v33[2] - v34 - 9);
    v35 = v33[6];
    if (v35)
    {
      memmove((v33[3] + v34), v33[7], v35);
    }

    v33[6] = 0;
    v36 = v33[10];
    v37 = v33[11] - 8;
    v33[11] = v37;
    if (v36 == v37)
    {
      v38 = *v33;
      v40 = v33[2];
      v39 = v33[3];
      std::ostream::write();
      if (*(v33 + 40) == 1)
      {
        free(v33[3]);
        *(v33 + 40) = 0;
      }
    }

    sub_23EF586A0(v19, a2 + 192);
  }

  else
  {
    v21 = *v4;
    v22 = __dynamic_cast(a1, &unk_28518D908, &unk_2851799A0, 0);
    if (v22)
    {
      v23 = v22;
      if (**(v22 + 5) <= 1u)
      {
        v24 = v22[88];
        *(v22 + 9) = "info";
        *(v22 + 10) = 4;
        if ((v24 & 1) == 0)
        {
          v22[88] = 1;
        }
      }

      sub_23F07903C((v22 + 48), v22 + 5);
      v25 = sub_23F2E6C78(v23);
      *(v23 + 40) = v25;
      if (*(v23 + 88))
      {
        *(v23 + 88) = 0;
      }

      if (*v25 < 2u && ((*(v23 + 72) = "version", *(v23 + 80) = 7, *(v23 + 88) = 1, v26 = *(v23 + 72), v27 = *v26, v28 = *(v26 + 3), v27 == *"version") ? (v29 = v28 == *"sion") : (v29 = 0), v29))
      {
        *(v23 + 96) = 6;
        *(v23 + 100) = 1;
        *(v23 + 88) = 0;
      }

      else
      {
        LOBYTE(__src) = 6;
        v56 = 6;
        v30 = sub_23F2E6C78(v23);
        v31 = *v30;
        *v30 = 6;
        LOBYTE(__src) = v31;
        v32 = v30[1];
        v30[1] = v56;
        v56 = v32;
        sub_23F06357C(&v56, v31);
      }

      sub_23EF58E64(v23, a2 + 16);
    }

    v41 = *v4;
    v42 = __dynamic_cast(a1, &unk_28518D908, &unk_2851799E8, 0);
    if (v42)
    {
      v43 = v42;
      if (v42[5])
      {
        v44 = v42[3];
        LOBYTE(__src) = *(v43 + 32);
        sub_23EF2F9B0(v44, &__src, 1);
      }

      MEMORY[0x245CAC910](*(v43 + 24), 6);
      ++*(v43 + 40);
      sub_23EF5A720(v43, a2 + 16, 6u);
      v45 = *(v43 + 34);
      if (*(v43 + 40))
      {
        v46 = *(v43 + 24);
        LOBYTE(__src) = *(v43 + 32);
        sub_23EF2F9B0(v46, &__src, 1);
      }

      v47 = *(v43 + 24);
      LOBYTE(__src) = v45;
      sub_23EF2F9B0(v47, &__src, 1);
      ++*(v43 + 40);
      sub_23EF5ADF8(v43, a2 + 192);
    }

    else
    {
      v48 = *v4;
      v49 = __dynamic_cast(a1, &unk_28518D908, &unk_28518B990, 0);
      if (v49)
      {
        LODWORD(__src) = 6;
        v50 = v49;
        sub_23F295368(v49 + 24, *(v49 + 4), &__src, &__src + 4, 4uLL);
        v51 = __src;
        sub_23F294D84(v50);
        sub_23EF5B8BC(v50, a2 + 16, v51);
        v52 = *(v50[7] - 8) + v50[3];
        *(v52 + 10) = v50[4] - v52 - 18;
        v50[7] -= 8;
        sub_23EF5B4CC(v50, a2 + 192);
      }

      else
      {
        v53 = a1[2];
        LODWORD(__src) = 6;
        (*(v4 + 13))(a1, &__src);
        v54 = __src;
        if (v53 < 1)
        {
          sub_23EF5C460(a1, a2 + 16, __src);
        }

        else
        {
          if (v53 == 2)
          {
            LODWORD(__src) = 3;
            (*(*a1 + 104))(a1, &__src);
          }

          (*(*a1 + 16))(a1);
          sub_23EF5C460(a1, a2 + 16, v54);
          (*(*a1 + 24))(a1);
        }

        sub_23EF5C1F0(a1, a2 + 192);
      }
    }
  }
}

void sub_23EF48BD8(char **a1, uint64_t a2)
{
  v4 = *a1;
  v5 = **a1;
  v6 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285179A70, 0);
  if (v6)
  {
    v7 = v6[104];
    *(v6 + 11) = "info";
    *(v6 + 12) = 4;
    if ((v7 & 1) == 0)
    {
      v6[104] = 1;
    }

    sub_23EF5D92C(v6, a2 + 16);
  }

  v8 = *v4;
  v9 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285179AA8, 0);
  if (v9)
  {
    LODWORD(__p[0]) = 6;
    v10 = v9;
    sub_23F2F7EFC(v9[6], __p);
    sub_23EF62320(__p, v10, a2 + 16, __p[0]);
    LODWORD(__p[0]) = 2;
    sub_23F2F7EFC(*(v10 + 48), __p);
    sub_23EF62F94(v10, (a2 + 192), __p[0]);
  }

  v11 = *v4;
  v12 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285179B30, 0);
  if (v12)
  {
    v13 = v12[104];
    *(v12 + 11) = "info";
    *(v12 + 12) = 4;
    if ((v13 & 1) == 0)
    {
      v12[104] = 1;
    }

    sub_23EF63AE0(v12, a2 + 16);
  }

  v14 = *v4;
  v15 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285179B68, 0);
  if (!v15)
  {
    v19 = *v4;
    v20 = __dynamic_cast(a1, &unk_28518D8F0, &unk_28518B930, 0);
    if (v20)
    {
      v21 = v20;
      sub_23EF67614(__p, v20, a2 + 16);
      sub_23EF68144(v21, (a2 + 192));
    }

    sub_23EF6F024(a2, a1);
  }

  v16 = v15;
  LODWORD(__p[0]) = 6;
  sub_23F2F5830(v15, __p);
  if (LODWORD(__p[0]) >= 6)
  {
    v17 = 6;
  }

  else
  {
    v17 = __p[0];
  }

  if (LODWORD(__p[0]) <= 2)
  {
    sub_23EF65CF0(__p, v16, a2 + 16, v17);
LABEL_33:
    LODWORD(__p[0]) = 2;
    sub_23F2F5830(v16, __p);
    if (LODWORD(__p[0]) > 1)
    {
      sub_23EF67040(v16, (a2 + 192));
    }

    sub_23EF66B84();
  }

  sub_23EF65EFC(v16, a2 + 16, v17);
  while (1)
  {
    if ((*(v16 + 131) & 1) != 0 || (*(*(v16 + 16) + *(**(v16 + 16) - 24) + 32) & 2) != 0)
    {
      goto LABEL_33;
    }

    sub_23F2F7390(v16, __p);
    if (v23 < 0)
    {
      if (__p[1] == 1 && *(v16 + 72) == *__p[0])
      {
LABEL_26:
        v18 = 0;
        if (v23 < 0)
        {
          goto LABEL_29;
        }

        goto LABEL_17;
      }
    }

    else if (v23 == 1 && *(v16 + 72) == LOBYTE(__p[0]))
    {
      goto LABEL_26;
    }

    v18 = 1;
    if (v23 < 0)
    {
LABEL_29:
      operator delete(__p[0]);
    }

LABEL_17:
    if ((v18 & 1) == 0)
    {
      goto LABEL_33;
    }
  }
}

void sub_23EF49090(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  sub_23F094AA4(a1 + 192, &v2);
  sub_23EF47C88(a1 + 16, v3);
  sub_23EF6BBFC();
}

void sub_23EF4924C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23EF44860(v9 + 16);
  sub_23EF47F24(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_23EF49288(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28517BFD8, &unk_285178E20, 8);
  if (result)
  {
    v5 = result;
    v7[0] = a1 + 24;
    v7[1] = a1 + 40;
    v7[2] = a1 + 72;
    v7[3] = a1 + 96;
    v7[4] = a1 + 128;
    v7[5] = a1 + 160;
    v6[0] = result + 24;
    v6[1] = result + 40;
    v6[2] = result + 72;
    v6[3] = result + 96;
    v6[4] = result + 128;
    v6[5] = result + 160;
    result = sub_23EF547F4(v7, v6);
    if (result)
    {
      return sub_23F094FD0((a1 + 192), (v5 + 192));
    }
  }

  return result;
}

uint64_t sub_23EF49364(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28517BFD8, &unk_285178E20, 8);
  if (result)
  {
    v5 = result;
    v7[0] = a1 + 16;
    v7[1] = a1 + 32;
    v7[2] = a1 + 64;
    v7[3] = a1 + 88;
    v7[4] = a1 + 120;
    v7[5] = a1 + 152;
    v6[0] = result + 24;
    v6[1] = result + 40;
    v6[2] = result + 72;
    v6[3] = result + 96;
    v6[4] = result + 128;
    v6[5] = result + 160;
    result = sub_23EF547F4(v7, v6);
    if (result)
    {
      return sub_23F094FD0((a1 + 184), (v5 + 192));
    }
  }

  return result;
}

uint64_t sub_23EF49488(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_28517ACF0;
  *(a1 + 8) = &unk_28517AD68;
  sub_23EF53784(a1 + 16, (a2 + 32));
  sub_23F292CE0(a1 + 192, *(a2 + 16));
  *(a1 + 592) = 0;
  *(a1 + 576) = 0u;
  v4 = *(a2 + 16);
  if (*(v4 + 408) == 1)
  {
    *(a1 + 584) = sub_23EF350D8(a1 + 576, v4 + 384);
  }

  return a1;
}

void sub_23EF49530(_Unwind_Exception *a1)
{
  sub_23EF3291C((v1 + 576));
  sub_23EF4FC00((v1 + 192));
  sub_23EF47B34(v1 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_23EF49568(uint64_t a1)
{
  *a1 = &unk_28517ACF0;
  *(a1 + 8) = &unk_28517AD68;
  v2 = *(a1 + 576);
  if (v2)
  {
    v3 = *(a1 + 584);
    v4 = *(a1 + 576);
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
      v4 = *(a1 + 576);
    }

    *(a1 + 584) = v2;
    operator delete(v4);
  }

  sub_23EF4FC00((a1 + 192));
  if (*(a1 + 184) == 1)
  {
    v6 = *(a1 + 160);
    if (v6)
    {
      v7 = *(a1 + 168);
      v8 = *(a1 + 160);
      if (v7 != v6)
      {
        do
        {
          v9 = *(v7 - 1);
          v7 -= 3;
          if (v9 < 0)
          {
            operator delete(*v7);
          }
        }

        while (v7 != v6);
        v8 = *(a1 + 160);
      }

      *(a1 + 168) = v6;
      operator delete(v8);
    }
  }

  if (*(a1 + 152) == 1 && *(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
    if (*(a1 + 120) != 1)
    {
      goto LABEL_24;
    }
  }

  else if (*(a1 + 120) != 1)
  {
    goto LABEL_24;
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

LABEL_24:
  if (*(a1 + 64) != 1 || (*(a1 + 63) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 40));
  return a1;
}

void sub_23EF496F8(uint64_t a1)
{
  sub_23EF49568(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23EF49730(uint64_t a1)
{
  sub_23EF49568(a1 - 8);

  JUMPOUT(0x245CACD00);
}

void sub_23EF497A0(char **a1, uint64_t a2, unsigned int *a3)
{
  v6 = *a1;
  v7 = **a1;
  v8 = __dynamic_cast(a1, &unk_28518D908, &unk_2851798D0, 0);
  if (v8)
  {
    v9 = *a3;

    sub_23EF80774(v8, a2);
  }

  v10 = *v6;
  v11 = __dynamic_cast(a1, &unk_28518D908, &unk_285179918, 0);
  if (v11)
  {
    v12 = *a3;

    sub_23EF80998(v11, a2, v12);
  }

  else
  {
    v13 = *v6;
    v14 = __dynamic_cast(a1, &unk_28518D908, &unk_2851799A0, 0);
    if (v14)
    {
      v15 = *a3;

      sub_23EF80B74(v14, a2);
    }

    v16 = *v6;
    v17 = __dynamic_cast(a1, &unk_28518D908, &unk_2851799E8, 0);
    if (v17)
    {
      v18 = *a3;

      sub_23EF80D98(v17, a2, v18);
    }

    else
    {
      v19 = *v6;
      v20 = __dynamic_cast(a1, &unk_28518D908, &unk_28518B990, 0);
      v21 = *a3;
      if (v20)
      {

        sub_23EF80F94(v20, a2, v21);
      }

      else
      {

        sub_23EF81100(a1, a2, v21);
      }
    }
  }
}

void sub_23EF499BC(char **a1, uint64_t a2, unsigned int *a3)
{
  v6 = *a1;
  v7 = **a1;
  v8 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285179A70, 0);
  if (v8)
  {
    v9 = *a3;
    v10 = v8[104];
    *(v8 + 11) = "info";
    *(v8 + 12) = 4;
    if ((v10 & 1) == 0)
    {
      v8[104] = 1;
    }

    sub_23EF5D92C(v8, a2 + 16);
  }

  v11 = *v6;
  v12 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285179AA8, 0);
  if (v12)
  {
    v13 = v12;
    v14 = *a3;
    LODWORD(__p) = 6;
    sub_23F2F7EFC(v12[6], &__p);
    sub_23EF62320(&__p, v13, a2 + 16, __p);
    LODWORD(__p) = 4;
    sub_23F2F7EFC(*(v13 + 48), &__p);
    sub_23EF78604(v13, a2 + 192, __p);
    if (v14 >= 3)
    {
      sub_23EF62C04(v13, (a2 + 576));
    }

    return;
  }

  v15 = *v6;
  v16 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285179B30, 0);
  if (v16)
  {
    v17 = *a3;
    v18 = v16[104];
    *(v16 + 11) = "info";
    *(v16 + 12) = 4;
    if ((v18 & 1) == 0)
    {
      v16[104] = 1;
    }

    sub_23EF63AE0(v16, a2 + 16);
  }

  v19 = *v6;
  v20 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285179B68, 0);
  if (v20)
  {
    v21 = v20;
    v22 = *a3;
    LODWORD(__p) = 6;
    sub_23F2F5830(v20, &__p);
    if (__p >= 6)
    {
      v23 = 6;
    }

    else
    {
      v23 = __p;
    }

    if (__p > 2)
    {
      sub_23EF65EFC(v21, a2 + 16, v23);
      while (1)
      {
        if ((*(v21 + 131) & 1) != 0 || (*(*(v21 + 16) + *(**(v21 + 16) - 24) + 32) & 2) != 0)
        {
          goto LABEL_36;
        }

        sub_23F2F7390(v21, &__p);
        if (v34 < 0)
        {
          if (v33 == 1 && *(v21 + 72) == *__p)
          {
LABEL_28:
            v24 = 0;
            if (v34 < 0)
            {
              goto LABEL_31;
            }

            goto LABEL_19;
          }
        }

        else if (v34 == 1 && *(v21 + 72) == __p)
        {
          goto LABEL_28;
        }

        v24 = 1;
        if (v34 < 0)
        {
LABEL_31:
          operator delete(__p);
        }

LABEL_19:
        if ((v24 & 1) == 0)
        {
          goto LABEL_36;
        }
      }
    }

    sub_23EF65CF0(&__p, v21, a2 + 16, v23);
LABEL_36:
    LODWORD(__p) = 4;
    sub_23F2F5830(v21, &__p);
    if (__p >= 4)
    {
      v29 = 4;
    }

    else
    {
      v29 = __p;
    }

    v30 = (a2 + 192);
    if (__p > 2)
    {
      sub_23EF7B790(v21, v30, v29);
      while (1)
      {
        if ((*(v21 + 131) & 1) != 0 || (*(*(v21 + 16) + *(**(v21 + 16) - 24) + 32) & 2) != 0)
        {
          goto LABEL_55;
        }

        sub_23F2F7390(v21, &__p);
        if (v34 < 0)
        {
          if (v33 == 1 && *(v21 + 72) == *__p)
          {
LABEL_50:
            v31 = 0;
            if (v34 < 0)
            {
              goto LABEL_53;
            }

            goto LABEL_41;
          }
        }

        else if (v34 == 1 && *(v21 + 72) == __p)
        {
          goto LABEL_50;
        }

        v31 = 1;
        if (v34 < 0)
        {
LABEL_53:
          operator delete(__p);
        }

LABEL_41:
        if ((v31 & 1) == 0)
        {
          goto LABEL_55;
        }
      }
    }

    sub_23EF7AF40(v21, v30, v29);
LABEL_55:
    if (v22 >= 3)
    {
      sub_23EF667E0(v21, (a2 + 576));
    }
  }

  else
  {
    v25 = *v6;
    v26 = __dynamic_cast(a1, &unk_28518D8F0, &unk_28518B930, 0);
    v27 = *a3;
    if (v26)
    {
      v28 = v26;
      sub_23EF67614(&__p, v26, a2 + 16);
      sub_23EF7BF7C(v28, a2 + 192);
      if (v27 >= 3)
      {
        sub_23EF68008(v28, (a2 + 576));
      }
    }

    else
    {

      sub_23EF812EC(a1, a2, v27);
    }
  }
}

void sub_23EF49F50(uint64_t *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = sub_23F292C8C(1uLL);
  v5 = a1[72];
  v6 = a1[73];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v5;
    v1 = *(v5 + 8);
    v13[0] = *(v5 + 16);
    *(v13 + 3) = *(v5 + 19);
    v2 = *(v5 + 23);
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *v5 = 0;
  }

  sub_23F293728(a1 + 24, v4, v12);
  LOBYTE(v8[0]) = 0;
  v11 = 0;
  if (v5 != v6)
  {
    if (v2 < 0)
    {
      sub_23EF34EA4(v8, v7, v1);
    }

    else
    {
      v8[0] = v7;
      v8[1] = v1;
      *v9 = v13[0];
      *&v9[3] = *(v13 + 3);
      v10 = v2;
    }

    v11 = 1;
  }

  sub_23F05CD2C();
}

void sub_23EF4A1FC(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, char a9, ...)
{
  va_start(va, a9);
  if (a9 == 1 && a8 < 0)
  {
    operator delete(__p);
  }

  sub_23EF505F8(va);
  if (v10 != v11 && v12 < 0)
  {
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_23EF4A274(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28517BFD8, &unk_28517AE30, 8);
  if (result)
  {
    v5 = result;
    result = sub_23EF80124((a1 + 192), (result + 192));
    if (result)
    {
      v7[0] = a1 + 24;
      v7[1] = a1 + 40;
      v7[2] = a1 + 72;
      v7[3] = a1 + 96;
      v7[4] = a1 + 128;
      v7[5] = a1 + 160;
      v6[0] = v5 + 24;
      v6[1] = v5 + 40;
      v6[2] = v5 + 72;
      v6[3] = v5 + 96;
      v6[4] = v5 + 128;
      v6[5] = v5 + 160;
      return sub_23EF547F4(v7, v6);
    }
  }

  return result;
}

uint64_t sub_23EF4A350(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28517BFD8, &unk_28517AE30, 8);
  if (result)
  {
    v5 = result;
    result = sub_23EF80124((a1 + 184), (result + 192));
    if (result)
    {
      v7[0] = a1 + 16;
      v7[1] = a1 + 32;
      v7[2] = a1 + 64;
      v7[3] = a1 + 88;
      v7[4] = a1 + 120;
      v7[5] = a1 + 152;
      v6[0] = v5 + 24;
      v6[1] = v5 + 40;
      v6[2] = v5 + 72;
      v6[3] = v5 + 96;
      v6[4] = v5 + 128;
      v6[5] = v5 + 160;
      return sub_23EF547F4(v7, v6);
    }
  }

  return result;
}

uint64_t sub_23EF4A4FC(uint64_t a1)
{
  *a1 = &unk_2851796A0;
  *(a1 + 8) = &unk_285179700;
  v2 = *(a1 + 216);
  if (v2)
  {
    *(a1 + 224) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
    (off_285178F08[v3])(&v5, a1 + 16);
  }

  *(a1 + 192) = -1;
  return a1;
}

void sub_23EF4A5A4(uint64_t a1)
{
  *(a1 - 8) = &unk_2851796A0;
  *a1 = &unk_285179700;
  v2 = *(a1 + 208);
  if (v2)
  {
    *(a1 + 216) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 184);
  if (v3 != -1)
  {
    (off_285178F08[v3])(&v4, a1 + 8);
  }

  *(a1 + 184) = -1;
}

uint64_t sub_23EF4A648(uint64_t a1)
{
  *a1 = &unk_2851796A0;
  *(a1 + 8) = &unk_285179700;
  v2 = *(a1 + 216);
  if (v2)
  {
    *(a1 + 224) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
    (off_285178F08[v3])(&v5, a1 + 16);
  }

  *(a1 + 192) = -1;
  return MEMORY[0x245CACD00](a1, 0x10B3C40B4DE50DDLL);
}

uint64_t sub_23EF4A704(uint64_t a1)
{
  v2 = a1 - 8;
  *(a1 - 8) = &unk_2851796A0;
  *a1 = &unk_285179700;
  v3 = *(a1 + 208);
  if (v3)
  {
    *(a1 + 216) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 184);
  if (v4 != -1)
  {
    (off_285178F08[v4])(&v6, a1 + 8);
  }

  *(a1 + 184) = -1;
  return MEMORY[0x245CACD00](v2, 0x10B3C40B4DE50DDLL);
}

uint64_t sub_23EF4A7C0(uint64_t a1)
{
  *a1 = &unk_285179C58;
  *(a1 + 8) = &unk_285179CB8;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
LABEL_4:
    (off_285178F08[v3])(&v5, a1 + 16);
  }

LABEL_5:
  *(a1 + 192) = -1;
  return a1;
}

void sub_23EF4A8B0(uint64_t a1)
{
  *(a1 - 8) = &unk_285179C58;
  *a1 = &unk_285179CB8;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 184);
  if (v3 != -1)
  {
LABEL_4:
    (off_285178F08[v3])(&v4, a1 + 8);
  }

LABEL_5:
  *(a1 + 184) = -1;
}

void sub_23EF4A99C(uint64_t a1)
{
  *a1 = &unk_285179C58;
  *(a1 + 8) = &unk_285179CB8;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 192) = -1;

      JUMPOUT(0x245CACD00);
    }
  }

  else
  {
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_285178F08[v3])(&v4, a1 + 16);
  goto LABEL_5;
}

void sub_23EF4AAAC(uint64_t a1)
{
  *(a1 - 8) = &unk_285179C58;
  *a1 = &unk_285179CB8;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 184) = -1;

      JUMPOUT(0x245CACD00);
    }
  }

  else
  {
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_285178F08[v3])(&v4, a1 + 8);
  goto LABEL_5;
}

uint64_t sub_23EF4ABC4(uint64_t a1)
{
  *a1 = &unk_285179F50;
  *(a1 + 8) = &unk_285179FB0;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
LABEL_4:
    (off_285178F08[v3])(&v5, a1 + 16);
  }

LABEL_5:
  *(a1 + 192) = -1;
  return a1;
}

void sub_23EF4ACB4(uint64_t a1)
{
  *(a1 - 8) = &unk_285179F50;
  *a1 = &unk_285179FB0;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 184);
  if (v3 != -1)
  {
LABEL_4:
    (off_285178F08[v3])(&v4, a1 + 8);
  }

LABEL_5:
  *(a1 + 184) = -1;
}

void sub_23EF4ADA0(uint64_t a1)
{
  *a1 = &unk_285179F50;
  *(a1 + 8) = &unk_285179FB0;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 192) = -1;

      JUMPOUT(0x245CACD00);
    }
  }

  else
  {
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_285178F08[v3])(&v4, a1 + 16);
  goto LABEL_5;
}

void sub_23EF4AEB0(uint64_t a1)
{
  *(a1 - 8) = &unk_285179F50;
  *a1 = &unk_285179FB0;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 184) = -1;

      JUMPOUT(0x245CACD00);
    }
  }

  else
  {
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_285178F08[v3])(&v4, a1 + 8);
  goto LABEL_5;
}

uint64_t sub_23EF4AFC8(uint64_t a1)
{
  *a1 = &unk_28517A248;
  *(a1 + 8) = &unk_28517A2A8;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
LABEL_4:
    (off_285178F08[v3])(&v5, a1 + 16);
  }

LABEL_5:
  *(a1 + 192) = -1;
  return a1;
}

void sub_23EF4B0B8(uint64_t a1)
{
  *(a1 - 8) = &unk_28517A248;
  *a1 = &unk_28517A2A8;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 184);
  if (v3 != -1)
  {
LABEL_4:
    (off_285178F08[v3])(&v4, a1 + 8);
  }

LABEL_5:
  *(a1 + 184) = -1;
}

void sub_23EF4B1A4(uint64_t a1)
{
  *a1 = &unk_28517A248;
  *(a1 + 8) = &unk_28517A2A8;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 192) = -1;

      JUMPOUT(0x245CACD00);
    }
  }

  else
  {
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_285178F08[v3])(&v4, a1 + 16);
  goto LABEL_5;
}

void sub_23EF4B2B4(uint64_t a1)
{
  *(a1 - 8) = &unk_28517A248;
  *a1 = &unk_28517A2A8;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 184) = -1;

      JUMPOUT(0x245CACD00);
    }
  }

  else
  {
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_285178F08[v3])(&v4, a1 + 8);
  goto LABEL_5;
}

uint64_t sub_23EF4B3CC(uint64_t a1)
{
  *a1 = &unk_28517B7E8;
  *(a1 + 8) = &unk_28517B848;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
LABEL_4:
    (off_285178F08[v3])(&v5, a1 + 16);
  }

LABEL_5:
  *(a1 + 192) = -1;
  return a1;
}

void sub_23EF4B4BC(uint64_t a1)
{
  *(a1 - 8) = &unk_28517B7E8;
  *a1 = &unk_28517B848;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 184);
  if (v3 != -1)
  {
LABEL_4:
    (off_285178F08[v3])(&v4, a1 + 8);
  }

LABEL_5:
  *(a1 + 184) = -1;
}

void sub_23EF4B5A8(uint64_t a1)
{
  *a1 = &unk_28517B7E8;
  *(a1 + 8) = &unk_28517B848;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 192) = -1;

      JUMPOUT(0x245CACD00);
    }
  }

  else
  {
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_285178F08[v3])(&v4, a1 + 16);
  goto LABEL_5;
}

void sub_23EF4B6B8(uint64_t a1)
{
  *(a1 - 8) = &unk_28517B7E8;
  *a1 = &unk_28517B848;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 184) = -1;

      JUMPOUT(0x245CACD00);
    }
  }

  else
  {
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_285178F08[v3])(&v4, a1 + 8);
  goto LABEL_5;
}

uint64_t sub_23EF4B7D0(uint64_t a1)
{
  *a1 = &unk_28517BAA8;
  *(a1 + 8) = &unk_28517BB08;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
LABEL_4:
    (off_285178F08[v3])(&v5, a1 + 16);
  }

LABEL_5:
  *(a1 + 192) = -1;
  return a1;
}

void sub_23EF4B8C0(uint64_t a1)
{
  *(a1 - 8) = &unk_28517BAA8;
  *a1 = &unk_28517BB08;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 184);
  if (v3 != -1)
  {
LABEL_4:
    (off_285178F08[v3])(&v4, a1 + 8);
  }

LABEL_5:
  *(a1 + 184) = -1;
}

void sub_23EF4B9AC(uint64_t a1)
{
  *a1 = &unk_28517BAA8;
  *(a1 + 8) = &unk_28517BB08;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 192) = -1;

      JUMPOUT(0x245CACD00);
    }
  }

  else
  {
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_285178F08[v3])(&v4, a1 + 16);
  goto LABEL_5;
}

void sub_23EF4BABC(uint64_t a1)
{
  *(a1 - 8) = &unk_28517BAA8;
  *a1 = &unk_28517BB08;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 184) = -1;

      JUMPOUT(0x245CACD00);
    }
  }

  else
  {
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_285178F08[v3])(&v4, a1 + 8);
  goto LABEL_5;
}

uint64_t sub_23EF4BBD4(uint64_t a1)
{
  *a1 = &unk_28517A540;
  *(a1 + 8) = &unk_28517A5A0;
  v2 = *(a1 + 208);
  if (v2)
  {
    v2(0, a1 + 208, 0, 0, 0);
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
    (off_285178F08[v3])(&v5, a1 + 16);
  }

  *(a1 + 192) = -1;
  return a1;
}

void *sub_23EF4BC90(void *result)
{
  v1 = result;
  *(result - 1) = &unk_28517A540;
  *result = &unk_28517A5A0;
  v2 = result[25];
  if (v2)
  {
    result = v2(0, result + 25, 0, 0, 0);
  }

  v3 = *(v1 + 46);
  if (v3 != -1)
  {
    result = (off_285178F08[v3])(&v4, v1 + 1);
  }

  *(v1 + 46) = -1;
  return result;
}

uint64_t sub_23EF4BD48(uint64_t a1)
{
  *a1 = &unk_28517A540;
  *(a1 + 8) = &unk_28517A5A0;
  v2 = *(a1 + 208);
  if (v2)
  {
    v2(0, a1 + 208, 0, 0, 0);
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
    (off_285178F08[v3])(&v5, a1 + 16);
  }

  *(a1 + 192) = -1;
  return MEMORY[0x245CACD00](a1, 0x10B3C40294CF2FDLL);
}

uint64_t sub_23EF4BE18(uint64_t a1)
{
  v2 = a1 - 8;
  *(a1 - 8) = &unk_28517A540;
  *a1 = &unk_28517A5A0;
  v3 = *(a1 + 200);
  if (v3)
  {
    v3(0, a1 + 200, 0, 0, 0);
  }

  v4 = *(a1 + 184);
  if (v4 != -1)
  {
    (off_285178F08[v4])(&v6, a1 + 8);
  }

  *(a1 + 184) = -1;
  return MEMORY[0x245CACD00](v2, 0x10B3C40294CF2FDLL);
}

uint64_t sub_23EF4BEE8(uint64_t a1)
{
  *a1 = &unk_28517AAB8;
  *(a1 + 8) = &unk_28517AB18;
  v2 = *(a1 + 208);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
LABEL_4:
    (off_285178F08[v3])(&v5, a1 + 16);
  }

LABEL_5:
  *(a1 + 192) = -1;
  return a1;
}

void sub_23EF4BFD8(uint64_t a1)
{
  *(a1 - 8) = &unk_28517AAB8;
  *a1 = &unk_28517AB18;
  v2 = *(a1 + 200);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 184);
  if (v3 != -1)
  {
LABEL_4:
    (off_285178F08[v3])(&v4, a1 + 8);
  }

LABEL_5:
  *(a1 + 184) = -1;
}

void sub_23EF4C0C4(uint64_t a1)
{
  *a1 = &unk_28517AAB8;
  *(a1 + 8) = &unk_28517AB18;
  v2 = *(a1 + 208);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 192) = -1;

      JUMPOUT(0x245CACD00);
    }
  }

  else
  {
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_285178F08[v3])(&v4, a1 + 16);
  goto LABEL_5;
}

void sub_23EF4C1D4(uint64_t a1)
{
  *(a1 - 8) = &unk_28517AAB8;
  *a1 = &unk_28517AB18;
  v2 = *(a1 + 200);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 184) = -1;

      JUMPOUT(0x245CACD00);
    }
  }

  else
  {
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_285178F08[v3])(&v4, a1 + 8);
  goto LABEL_5;
}

uint64_t sub_23EF4C2EC(uint64_t a1)
{
  *a1 = &unk_28517AF20;
  *(a1 + 8) = &unk_28517AF80;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
LABEL_4:
    (off_285178F08[v3])(&v5, a1 + 16);
  }

LABEL_5:
  *(a1 + 192) = -1;
  return a1;
}

void sub_23EF4C3DC(uint64_t a1)
{
  *(a1 - 8) = &unk_28517AF20;
  *a1 = &unk_28517AF80;
  v2 = *(a1 + 208);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 184);
  if (v3 != -1)
  {
LABEL_4:
    (off_285178F08[v3])(&v4, a1 + 8);
  }

LABEL_5:
  *(a1 + 184) = -1;
}

void sub_23EF4C4C8(uint64_t a1)
{
  *a1 = &unk_28517AF20;
  *(a1 + 8) = &unk_28517AF80;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 192) = -1;

      JUMPOUT(0x245CACD00);
    }
  }

  else
  {
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_285178F08[v3])(&v4, a1 + 16);
  goto LABEL_5;
}

void sub_23EF4C5D8(uint64_t a1)
{
  *(a1 - 8) = &unk_28517AF20;
  *a1 = &unk_28517AF80;
  v2 = *(a1 + 208);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 184) = -1;

      JUMPOUT(0x245CACD00);
    }
  }

  else
  {
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_285178F08[v3])(&v4, a1 + 8);
  goto LABEL_5;
}

unsigned __int8 *sub_23EF4C6F0@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  if (result[23] < 0)
  {
    result = sub_23EF34EA4(a2, *result, *(result + 1));
    *(a2 + 24) = v2[24];
    if ((v2[55] & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *a2 = *result;
    *(a2 + 16) = *(result + 2);
    *(a2 + 24) = result[24];
    if ((result[55] & 0x80000000) == 0)
    {
LABEL_3:
      *(a2 + 32) = *(v2 + 2);
      *(a2 + 48) = *(v2 + 6);
      goto LABEL_6;
    }
  }

  result = sub_23EF34EA4((a2 + 32), *(v2 + 4), *(v2 + 5));
LABEL_6:
  *(a2 + 56) = *(v2 + 14);
  if (v2[87] < 0)
  {
    result = sub_23EF34EA4((a2 + 64), *(v2 + 8), *(v2 + 9));
  }

  else
  {
    *(a2 + 64) = *(v2 + 4);
    *(a2 + 80) = *(v2 + 10);
  }

  if (v2[111] < 0)
  {
    return sub_23EF34EA4((a2 + 88), *(v2 + 11), *(v2 + 12));
  }

  *(a2 + 88) = *(v2 + 88);
  *(a2 + 104) = *(v2 + 13);
  return result;
}

void sub_23EF4C7D8(_Unwind_Exception *exception_object)
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

uint64_t sub_23EF4C84C(uint64_t a1)
{
  *a1 = &unk_28517B218;
  *(a1 + 8) = &unk_28517B278;
  if (*(a1 + 311) < 0)
  {
    operator delete(*(a1 + 288));
    if ((*(a1 + 287) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 255) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 287) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 264));
  if ((*(a1 + 255) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(a1 + 223) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(*(a1 + 232));
  if ((*(a1 + 223) & 0x80000000) == 0)
  {
LABEL_5:
    v2 = *(a1 + 192);
    if (v2 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(*(a1 + 200));
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
LABEL_11:
    (off_285178F08[v2])(&v4, a1 + 16);
  }

LABEL_12:
  *(a1 + 192) = -1;
  return a1;
}

void sub_23EF4C958(uint64_t a1)
{
  sub_23EF4C84C(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23EF4C990(uint64_t a1)
{
  sub_23EF4C84C(a1 - 8);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23EF4C9CC(uint64_t a1)
{
  *a1 = &unk_28517B528;
  *(a1 + 8) = &unk_28517B588;
  if (*(a1 + 376) == 1 && *(a1 + 375) < 0)
  {
    operator delete(*(a1 + 352));
    if (*(a1 + 344) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 344) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 343) < 0)
  {
    operator delete(*(a1 + 320));
  }

LABEL_7:
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
    (off_285178F08[v2])(&v4, a1 + 16);
  }

  *(a1 + 192) = -1;
  return a1;
}

void sub_23EF4CAAC(uint64_t a1)
{
  *(a1 - 8) = &unk_28517B528;
  *a1 = &unk_28517B588;
  if (*(a1 + 368) == 1 && *(a1 + 367) < 0)
  {
    operator delete(*(a1 + 344));
    if (*(a1 + 336) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 336) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

LABEL_7:
  v2 = *(a1 + 184);
  if (v2 != -1)
  {
    (off_285178F08[v2])(&v3, a1 + 8);
  }

  *(a1 + 184) = -1;
}

void sub_23EF4CB88(uint64_t a1)
{
  *a1 = &unk_28517B528;
  *(a1 + 8) = &unk_28517B588;
  if (*(a1 + 376) == 1 && *(a1 + 375) < 0)
  {
    operator delete(*(a1 + 352));
    if (*(a1 + 344) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 344) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 343) < 0)
  {
    operator delete(*(a1 + 320));
  }

LABEL_7:
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
    (off_285178F08[v2])(&v3, a1 + 16);
  }

  *(a1 + 192) = -1;

  JUMPOUT(0x245CACD00);
}

void sub_23EF4CC88(uint64_t a1)
{
  *(a1 - 8) = &unk_28517B528;
  *a1 = &unk_28517B588;
  if (*(a1 + 368) == 1 && *(a1 + 367) < 0)
  {
    operator delete(*(a1 + 344));
    if (*(a1 + 336) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 336) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

LABEL_7:
  v2 = *(a1 + 184);
  if (v2 != -1)
  {
    (off_285178F08[v2])(&v3, a1 + 8);
  }

  *(a1 + 184) = -1;

  JUMPOUT(0x245CACD00);
}

void sub_23EF4CDE0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 192);
  if (v4 == 2)
  {
    sub_23EF82E08(a1 + 16, &v5);
  }

  else if (v4 == 1)
  {
    sub_23EF82B6C(a1 + 16, &v5);
  }

  else
  {
    if (v4)
    {
      sub_23EF41D6C();
    }

    sub_23EF47C88(a1 + 16, &v5);
  }

  sub_23EF82534(a2, (a1 + 208), &v5);
}

void *sub_23EF4CF9C(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28517BFD8, &unk_285179848, 0);
  if (result)
  {

    return sub_23F000C24(a1, result);
  }

  return result;
}

void sub_23EF4D0DC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 192);
  if (v4 == 2)
  {
    sub_23EF82E08(a1 + 16, &v5);
  }

  else if (v4 == 1)
  {
    sub_23EF82B6C(a1 + 16, &v5);
  }

  else
  {
    if (v4)
    {
      sub_23EF41D6C();
    }

    sub_23EF47C88(a1 + 16, &v5);
  }

  sub_23EF8D058(a2, *(a1 + 216), *(a1 + 224), &v5);
}

void *sub_23EF4D298(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28517BFD8, &unk_285179E80, 0);
  if (result)
  {

    return sub_23F0042AC(a1, result);
  }

  return result;
}

void sub_23EF4D3C0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 192);
  if (v4 == 2)
  {
    sub_23EF82E08(a1 + 16, &v5);
  }

  else if (v4 == 1)
  {
    sub_23EF82B6C(a1 + 16, &v5);
  }

  else
  {
    if (v4)
    {
      sub_23EF41D6C();
    }

    sub_23EF47C88(a1 + 16, &v5);
  }

  sub_23EF9ED74(a2, *(a1 + 216), *(a1 + 224), &v5);
}

void *sub_23EF4D57C(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28517BFD8, &unk_28517A178, 0);
  if (result)
  {

    return sub_23F007864(a1, result);
  }

  return result;
}

void sub_23EF4D6A4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 192);
  if (v4 == 2)
  {
    sub_23EF82E08(a1 + 16, &v5);
  }

  else if (v4 == 1)
  {
    sub_23EF82B6C(a1 + 16, &v5);
  }

  else
  {
    if (v4)
    {
      sub_23EF41D6C();
    }

    sub_23EF47C88(a1 + 16, &v5);
  }

  sub_23EFB396C(a2, *(a1 + 216), *(a1 + 224), &v5);
}

void *sub_23EF4D860(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28517BFD8, &unk_28517A470, 0);
  if (result)
  {

    return sub_23F00AF88(a1, result);
  }

  return result;
}

void sub_23EF4D988(uint64_t a1)
{
  v12[25] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 192);
  if (v2 == 2)
  {
    sub_23EF82E08(a1 + 16, &v5);
  }

  else if (v2 == 1)
  {
    sub_23EF82B6C(a1 + 16, &v5);
  }

  else
  {
    if (v2)
    {
      sub_23EF41D6C();
    }

    sub_23EF47C88(a1 + 16, &v5);
  }

  v7 = &unk_28517B958;
  v4 = *(a1 + 216);
  v3 = *(a1 + 224);
  v8 = &unk_28517B9A0;
  v9 = v4;
  v10 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = v5;
  sub_23EF432A8(v12, &v6);
  v7 = &unk_28517B8E0;
  sub_23F00E6AC();
}

void sub_23EF4DD0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  sub_23F01019C(&a35);
  sub_23EF44860(v35 + 16);
  _Unwind_Resume(a1);
}

void sub_23EF4DD28(_Unwind_Exception *a1)
{
  sub_23F00EC58(v2);
  sub_23EF44860(v1 + 16);
  _Unwind_Resume(a1);
}

void *sub_23EF4DD48(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28517BFD8, &unk_28517B9D8, 0);
  if (result)
  {

    return sub_23F01025C(a1, result);
  }

  return result;
}

void sub_23EF4DE88(uint64_t a1)
{
  v12[25] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 192);
  if (v2 == 2)
  {
    sub_23EF82E08(a1 + 16, &v5);
  }

  else if (v2 == 1)
  {
    sub_23EF82B6C(a1 + 16, &v5);
  }

  else
  {
    if (v2)
    {
      sub_23EF41D6C();
    }

    sub_23EF47C88(a1 + 16, &v5);
  }

  v7 = &unk_28517BC18;
  v4 = *(a1 + 216);
  v3 = *(a1 + 224);
  v8 = &unk_28517BC60;
  v9 = v4;
  v10 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = v5;
  sub_23EF432A8(v12, &v6);
  v7 = &unk_28517BBA0;
  sub_23F01E360();
}

void sub_23EF4E20C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  sub_23F01FE50(&a35);
  sub_23EF44860(v35 + 16);
  _Unwind_Resume(a1);
}

void sub_23EF4E228(_Unwind_Exception *a1)
{
  sub_23F01E90C(v2);
  sub_23EF44860(v1 + 16);
  _Unwind_Resume(a1);
}

void *sub_23EF4E248(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28517BFD8, &unk_28517BC98, 0);
  if (result)
  {

    return sub_23F01FF10(a1, result);
  }

  return result;
}

void sub_23EF4E58C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF44860(v2 + 16);
  sub_23F2A1D40(va);
  _Unwind_Resume(a1);
}

void sub_23EF4E5AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23F2A1D40(va);
  _Unwind_Resume(a1);
}

void *sub_23EF4E5C0(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28517BFD8, &unk_28517A768, 0);
  if (result)
  {

    return sub_23F02E0F4(a1, result);
  }

  return result;
}

void sub_23EF4E6E8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 208);
  *&v5 = *(a1 + 200);
  *(&v5 + 1) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 192);
  if (v4 == 2)
  {
    sub_23EF82E08(a1 + 16, &v6);
  }

  else if (v4 == 1)
  {
    sub_23EF82B6C(a1 + 16, &v6);
  }

  else
  {
    if (v4)
    {
      sub_23EF41D6C();
    }

    sub_23EF47C88(a1 + 16, &v6);
  }

  sub_23EFE85D4(a2, &v5, &v6);
}

void sub_23EF4E8EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23EF44860(v9 + 16);
  sub_23EF3AE8C(&a9);
  _Unwind_Resume(a1);
}

void *sub_23EF4E91C(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28517BFD8, &unk_28517ABD8, 0);
  if (result)
  {

    return sub_23F031360(a1, result);
  }

  return result;
}

void sub_23EF4EA44(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 192);
  if (v4 == 2)
  {
    sub_23EF82E08(a1 + 16, &v5);
  }

  else if (v4 == 1)
  {
    sub_23EF82B6C(a1 + 16, &v5);
  }

  else
  {
    if (v4)
    {
      sub_23EF41D6C();
    }

    sub_23EF47C88(a1 + 16, &v5);
  }

  sub_23EFFC460(a2, (a1 + 208), &v5);
}

void *sub_23EF4EC00(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28517BFD8, &unk_28517B148, 0);
  if (result)
  {

    return sub_23F034844(a1, result);
  }

  return result;
}

void sub_23EF4ED28(uint64_t a1)
{
  v28[25] = *MEMORY[0x277D85DE8];
  sub_23EF4C6F0((a1 + 200), v3);
  v2 = *(a1 + 192);
  if (v2 == 2)
  {
    sub_23EF82E08(a1 + 16, &v13);
  }

  else if (v2 == 1)
  {
    sub_23EF82B6C(a1 + 16, &v13);
  }

  else
  {
    if (v2)
    {
      sub_23EF41D6C();
    }

    sub_23EF47C88(a1 + 16, &v13);
  }

  v15 = &unk_28517B3D8;
  v16 = &unk_28517B420;
  v17 = *v3;
  v18 = v4;
  v3[0] = 0;
  v3[1] = 0;
  v19 = v5;
  v20 = *v6;
  v21 = v7;
  v4 = 0;
  v6[0] = 0;
  v6[1] = 0;
  v7 = 0;
  v22 = v8;
  v24 = v10;
  v23 = *v9;
  v9[0] = 0;
  v9[1] = 0;
  v26 = v12;
  v25 = *v11;
  v10 = 0;
  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  v27 = v13;
  sub_23EF432A8(v28, &v14);
  v15 = &unk_28517B360;
  operator new();
}

void sub_23EF4F0CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  (*(*v49 + 8))(v49);
  sub_23F038FAC(&a49);
  sub_23EF44860(v50 + 16);
  sub_23EF531B0(&a9);
  _Unwind_Resume(a1);
}

void *sub_23EF4F16C(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28517BFD8, &unk_28517B458, 0);
  if (result)
  {

    return sub_23F039D38(a1, result);
  }

  return result;
}

void sub_23EF4F768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  (*(*v45 + 8))(v45);
  sub_23F03F594(&a45);
  sub_23EF44860(v46 + 16);
  sub_23F040328(&a10);
  _Unwind_Resume(a1);
}

void sub_23EF4F7F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23F040328(va);
  _Unwind_Resume(a1);
}

void *sub_23EF4F808(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28517BFD8, &unk_28517B718, 0);
  if (result)
  {

    return sub_23F0403B4(a1, result);
  }

  return result;
}

uint64_t sub_23EF4F8F0(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = *(a1 + 8);
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

      *(a1 + 8) = v2;
      operator delete(v4);
    }
  }

  return a1;
}

uint64_t sub_23EF4F970(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2 != -1)
  {
    (off_285178E58[v2])(&v4, a1);
  }

  *(a1 + 64) = -1;
  return a1;
}

void sub_23EF4F9CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_23EF4FA48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void ***sub_23EF4FAC4(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
LABEL_13:
      a1[1] = v2;
      operator delete(v4);
      return a1;
    }

    while (1)
    {
      v5 = v3;
      if (*(v3 - 16) == 1 && *(v3 - 41) < 0)
      {
        operator delete(*(v3 - 8));
        v3 -= 12;
        if (*(v5 - 72) == 1)
        {
LABEL_8:
          if (*(v5 - 73) < 0)
          {
            operator delete(*v3);
          }
        }
      }

      else
      {
        v3 -= 12;
        if (*(v5 - 72) == 1)
        {
          goto LABEL_8;
        }
      }

      if (v3 == v2)
      {
        v4 = *a1;
        goto LABEL_13;
      }
    }
  }

  return a1;
}

uint64_t sub_23EF4FB78(uint64_t result)
{
  if (*(result + 80) == 1 && *(result + 55) < 0)
  {
    v1 = result;
    operator delete(*(result + 32));
    result = v1;
    if (*(v1 + 24) != 1)
    {
      return result;
    }
  }

  else if (*(result + 24) != 1)
  {
    return result;
  }

  if (*(result + 23) < 0)
  {
    v2 = result;
    operator delete(*result);
    return v2;
  }

  return result;
}

uint64_t *sub_23EF4FC00(uint64_t *a1)
{
  v2 = a1[44];
  if (v2)
  {
    a1[45] = v2;
    v3 = (a1[46] - v2) >> 2;
    v33 = v2;
    v34 = v3;
    v4 = *(a1 + 95);
    if (v4 == -1)
    {
      sub_23EF41D6C();
    }

    v35 = &v33;
    (off_285178E68[v4])(&v35, a1 + 47);
  }

  v5 = a1[36];
  if (v5)
  {
    a1[37] = v5;
    v6 = -1431655765 * ((a1[38] - v5) >> 2);
    v33 = v5;
    v34 = v6;
    v7 = *(a1 + 79);
    if (v7 == -1)
    {
      sub_23EF41D6C();
    }

    v35 = &v33;
    (off_285178E78[v7])(&v35, a1 + 39);
  }

  v8 = a1[32];
  if (v8)
  {
    a1[33] = v8;
    v9 = (a1[34] - v8) >> 3;
    v33 = v8;
    v34 = v9;
    v10 = *(a1 + 71);
    if (v10 == -1)
    {
      sub_23EF41D6C();
    }

    v35 = &v33;
    (off_285178E88[v10])(&v35, a1 + 35);
  }

  v11 = a1[28];
  if (v11)
  {
    a1[29] = v11;
    v12 = (a1[30] - v11) >> 3;
    v33 = v11;
    v34 = v12;
    v13 = *(a1 + 63);
    if (v13 == -1)
    {
      sub_23EF41D6C();
    }

    v35 = &v33;
    (off_285178E98[v13])(&v35, a1 + 31);
  }

  v14 = a1[24];
  if (v14)
  {
    a1[25] = v14;
    v15 = -1431655765 * ((a1[26] - v14) >> 2);
    v33 = v14;
    v34 = v15;
    v16 = *(a1 + 55);
    if (v16 == -1)
    {
      sub_23EF41D6C();
    }

    v35 = &v33;
    (off_285178E78[v16])(&v35, a1 + 27);
  }

  v17 = a1[20];
  if (v17)
  {
    a1[21] = v17;
    v18 = *(a1 + 44) - v17;
    v33 = v17;
    v34 = v18;
    v19 = *(a1 + 47);
    if (v19 == -1)
    {
      sub_23EF41D6C();
    }

    v35 = &v33;
    (off_285178EA8[v19])(&v35, a1 + 23);
  }

  v20 = a1[15];
  if (v20)
  {
    a1[16] = v20;
    v21 = *(a1 + 34) - v20;
    v33 = v20;
    v34 = v21;
    v22 = *(a1 + 37);
    if (v22 == -1)
    {
      sub_23EF41D6C();
    }

    v35 = &v33;
    (off_285178EA8[v22])(&v35, a1 + 18);
  }

  v23 = a1[10];
  if (v23)
  {
    a1[11] = v23;
    v24 = -1431655765 * ((a1[12] - v23) >> 2);
    v33 = v23;
    v34 = v24;
    v25 = *(a1 + 27);
    if (v25 == -1)
    {
      sub_23EF41D6C();
    }

    v35 = &v33;
    (off_285178EB8[v25])(&v35, a1 + 13);
  }

  v26 = a1[5];
  if (v26)
  {
    a1[6] = v26;
    v27 = -1431655765 * ((a1[7] - v26) >> 2);
    v33 = v26;
    v34 = v27;
    v28 = *(a1 + 17);
    if (v28 == -1)
    {
      sub_23EF41D6C();
    }

    v35 = &v33;
    (off_285178EB8[v28])(&v35, a1 + 8);
  }

  v29 = *a1;
  if (*a1)
  {
    a1[1] = v29;
    v30 = -1431655765 * ((a1[2] - v29) >> 2);
    v33 = v29;
    v34 = v30;
    v31 = *(a1 + 7);
    if (v31 == -1)
    {
      sub_23EF41D6C();
    }

    v35 = &v33;
    (off_285178EB8[v31])(&v35, a1 + 3);
  }

  return a1;
}

uint64_t *sub_23EF4FFB0(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    a1[1] = v2;
    v3 = -1431655765 * ((a1[2] - v2) >> 2);
    v6 = v2;
    v7 = v3;
    v4 = *(a1 + 7);
    if (v4 == -1)
    {
      sub_23EF41D6C();
    }

    v8 = &v6;
    (off_285178E78[v4])(&v8, a1 + 3);
  }

  return a1;
}

uint64_t *sub_23EF50040(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    a1[1] = v2;
    v3 = (a1[2] - v2) >> 3;
    v6 = v2;
    v7 = v3;
    v4 = *(a1 + 7);
    if (v4 == -1)
    {
      sub_23EF41D6C();
    }

    v8 = &v6;
    (off_285178E88[v4])(&v8, a1 + 3);
  }

  return a1;
}

uint64_t *sub_23EF500C4(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    a1[1] = v2;
    v3 = (a1[2] - v2) >> 3;
    v6 = v2;
    v7 = v3;
    v4 = *(a1 + 7);
    if (v4 == -1)
    {
      sub_23EF41D6C();
    }

    v8 = &v6;
    (off_285178E98[v4])(&v8, a1 + 3);
  }

  return a1;
}

uint64_t *sub_23EF50148(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    a1[1] = v2;
    v3 = *(a1 + 4) - v2;
    v6 = v2;
    v7 = v3;
    v4 = *(a1 + 7);
    if (v4 == -1)
    {
      sub_23EF41D6C();
    }

    v8 = &v6;
    (off_285178EA8[v4])(&v8, a1 + 3);
  }

  return a1;
}

uint64_t *sub_23EF501C8(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    a1[1] = v2;
    v3 = -1431655765 * ((a1[2] - v2) >> 2);
    v6 = v2;
    v7 = v3;
    v4 = *(a1 + 7);
    if (v4 == -1)
    {
      sub_23EF41D6C();
    }

    v8 = &v6;
    (off_285178EB8[v4])(&v8, a1 + 3);
  }

  return a1;
}

uint64_t *sub_23EF50258(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    a1[1] = v2;
    v3 = (a1[2] - v2) >> 2;
    v6 = v2;
    v7 = v3;
    v4 = *(a1 + 7);
    if (v4 == -1)
    {
      sub_23EF41D6C();
    }

    v8 = &v6;
    (off_285178E68[v4])(&v8, a1 + 3);
  }

  return a1;
}

uint64_t sub_23EF502E8(void **a1)
{
  result = MEMORY[0x245CAD0B0](*MEMORY[0x277D85F48], **a1, 4 * *(*a1 + 2));
  if (result)
  {
    sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Memory/include/Kit/Memory/VMAllocator.hpp", 110, &unk_23F3091D6, 0, "Illegal or non-allocated address specified.", 0x2BuLL, sub_23F303DA4);
    abort();
  }

  return result;
}

uint64_t sub_23EF5036C(void **a1)
{
  result = MEMORY[0x245CAD0B0](*MEMORY[0x277D85F48], **a1, 12 * *(*a1 + 2));
  if (result)
  {
    sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Memory/include/Kit/Memory/VMAllocator.hpp", 110, &unk_23F3091D6, 0, "Illegal or non-allocated address specified.", 0x2BuLL, sub_23F303DA4);
    abort();
  }

  return result;
}

uint64_t sub_23EF503F4(void **a1)
{
  result = MEMORY[0x245CAD0B0](*MEMORY[0x277D85F48], **a1, 8 * *(*a1 + 2));
  if (result)
  {
    sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Memory/include/Kit/Memory/VMAllocator.hpp", 110, &unk_23F3091D6, 0, "Illegal or non-allocated address specified.", 0x2BuLL, sub_23F303DA4);
    abort();
  }

  return result;
}

uint64_t sub_23EF50478(void **a1)
{
  result = MEMORY[0x245CAD0B0](*MEMORY[0x277D85F48], **a1, 8 * *(*a1 + 2));
  if (result)
  {
    sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Memory/include/Kit/Memory/VMAllocator.hpp", 110, &unk_23F3091D6, 0, "Illegal or non-allocated address specified.", 0x2BuLL, sub_23F303DA4);
    abort();
  }

  return result;
}

uint64_t sub_23EF504FC(void **a1)
{
  result = MEMORY[0x245CAD0B0](*MEMORY[0x277D85F48], **a1, *(*a1 + 2));
  if (result)
  {
    sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Memory/include/Kit/Memory/VMAllocator.hpp", 110, &unk_23F3091D6, 0, "Illegal or non-allocated address specified.", 0x2BuLL, sub_23F303DA4);
    abort();
  }

  return result;
}

uint64_t sub_23EF5057C(void **a1)
{
  result = MEMORY[0x245CAD0B0](*MEMORY[0x277D85F48], **a1, 12 * *(*a1 + 2));
  if (result)
  {
    sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Memory/include/Kit/Memory/VMAllocator.hpp", 110, &unk_23F3091D6, 0, "Illegal or non-allocated address specified.", 0x2BuLL, sub_23F303DA4);
    abort();
  }

  return result;
}

uint64_t *sub_23EF505F8(uint64_t *a1)
{
  v2 = a1[40];
  if (v2)
  {
    a1[41] = v2;
    v3 = (a1[42] - v2) >> 2;
    v33 = v2;
    v34 = v3;
    v4 = *(a1 + 87);
    if (v4 == -1)
    {
      sub_23EF41D6C();
    }

    v35 = &v33;
    (off_285178E68[v4])(&v35, a1 + 43);
  }

  v5 = a1[35];
  if (v5)
  {
    a1[36] = v5;
    v6 = *(a1 + 74) - v5;
    v33 = v5;
    v34 = v6;
    v7 = *(a1 + 77);
    if (v7 == -1)
    {
      sub_23EF41D6C();
    }

    v35 = &v33;
    (off_285178EA8[v7])(&v35, a1 + 38);
  }

  v8 = a1[30];
  if (v8)
  {
    a1[31] = v8;
    v9 = *(a1 + 64) - v8;
    v33 = v8;
    v34 = v9;
    v10 = *(a1 + 67);
    if (v10 == -1)
    {
      sub_23EF41D6C();
    }

    v35 = &v33;
    (off_285178EA8[v10])(&v35, a1 + 33);
  }

  v11 = a1[26];
  if (v11)
  {
    a1[27] = v11;
    v12 = -1431655765 * ((a1[28] - v11) >> 2);
    v33 = v11;
    v34 = v12;
    v13 = *(a1 + 59);
    if (v13 == -1)
    {
      sub_23EF41D6C();
    }

    v35 = &v33;
    (off_285178EC8[v13])(&v35, a1 + 29);
  }

  v14 = a1[22];
  if (v14)
  {
    a1[23] = v14;
    v15 = (a1[24] - v14) >> 3;
    v33 = v14;
    v34 = v15;
    v16 = *(a1 + 51);
    if (v16 == -1)
    {
      sub_23EF41D6C();
    }

    v35 = &v33;
    (off_285178ED8[v16])(&v35, a1 + 25);
  }

  v17 = a1[18];
  if (v17)
  {
    a1[19] = v17;
    v18 = (a1[20] - v17) >> 3;
    v33 = v17;
    v34 = v18;
    v19 = *(a1 + 43);
    if (v19 == -1)
    {
      sub_23EF41D6C();
    }

    v35 = &v33;
    (off_285178EE8[v19])(&v35, a1 + 21);
  }

  v20 = a1[14];
  if (v20)
  {
    a1[15] = v20;
    v21 = -1431655765 * ((a1[16] - v20) >> 2);
    v33 = v20;
    v34 = v21;
    v22 = *(a1 + 35);
    if (v22 == -1)
    {
      sub_23EF41D6C();
    }

    v35 = &v33;
    (off_285178EC8[v22])(&v35, a1 + 17);
  }

  v23 = a1[9];
  if (v23)
  {
    a1[10] = v23;
    v24 = -1431655765 * ((a1[11] - v23) >> 2);
    v33 = v23;
    v34 = v24;
    v25 = *(a1 + 25);
    if (v25 == -1)
    {
      sub_23EF41D6C();
    }

    v35 = &v33;
    (off_285178EF8[v25])(&v35, a1 + 12);
  }

  v26 = a1[4];
  if (v26)
  {
    a1[5] = v26;
    v27 = -1431655765 * ((a1[6] - v26) >> 2);
    v33 = v26;
    v34 = v27;
    v28 = *(a1 + 15);
    if (v28 == -1)
    {
      sub_23EF41D6C();
    }

    v35 = &v33;
    (off_285178EF8[v28])(&v35, a1 + 7);
  }

  v29 = *a1;
  if (*a1)
  {
    a1[1] = v29;
    v30 = -1431655765 * ((a1[2] - v29) >> 2);
    v33 = v29;
    v34 = v30;
    v31 = *(a1 + 7);
    if (v31 == -1)
    {
      sub_23EF41D6C();
    }

    v35 = &v33;
    (off_285178EF8[v31])(&v35, a1 + 3);
  }

  return a1;
}

uint64_t sub_23EF509B4(void **a1)
{
  result = MEMORY[0x245CAD0B0](*MEMORY[0x277D85F48], **a1, 12 * *(*a1 + 2));
  if (result)
  {
    sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Memory/include/Kit/Memory/VMAllocator.hpp", 110, &unk_23F3091D6, 0, "Illegal or non-allocated address specified.", 0x2BuLL, sub_23F303DA4);
    abort();
  }

  return result;
}

uint64_t sub_23EF50A3C(void **a1)
{
  result = MEMORY[0x245CAD0B0](*MEMORY[0x277D85F48], **a1, 8 * *(*a1 + 2));
  if (result)
  {
    sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Memory/include/Kit/Memory/VMAllocator.hpp", 110, &unk_23F3091D6, 0, "Illegal or non-allocated address specified.", 0x2BuLL, sub_23F303DA4);
    abort();
  }

  return result;
}

uint64_t sub_23EF50AC0(void **a1)
{
  result = MEMORY[0x245CAD0B0](*MEMORY[0x277D85F48], **a1, 8 * *(*a1 + 2));
  if (result)
  {
    sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Memory/include/Kit/Memory/VMAllocator.hpp", 110, &unk_23F3091D6, 0, "Illegal or non-allocated address specified.", 0x2BuLL, sub_23F303DA4);
    abort();
  }

  return result;
}

uint64_t sub_23EF50B44(void **a1)
{
  result = MEMORY[0x245CAD0B0](*MEMORY[0x277D85F48], **a1, 12 * *(*a1 + 2));
  if (result)
  {
    sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Memory/include/Kit/Memory/VMAllocator.hpp", 110, &unk_23F3091D6, 0, "Illegal or non-allocated address specified.", 0x2BuLL, sub_23F303DA4);
    abort();
  }

  return result;
}

void sub_23EF50BC0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 168) == 1)
  {
    v3 = *(a2 + 144);
    if (v3)
    {
      v4 = *(a2 + 152);
      v5 = *(a2 + 144);
      if (v4 != v3)
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

        while (v4 != v3);
        v5 = *(a2 + 144);
      }

      *(a2 + 152) = v3;
      operator delete(v5);
    }
  }

  if (*(a2 + 136) == 1 && *(a2 + 135) < 0)
  {
    operator delete(*(a2 + 112));
  }

  if (*(a2 + 104) == 1 && *(a2 + 103) < 0)
  {
    operator delete(*(a2 + 80));
  }

  if (*(a2 + 48) == 1 && *(a2 + 47) < 0)
  {
    v7 = *(a2 + 24);

    operator delete(v7);
  }
}

void sub_23EF50CAC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 168) == 1)
  {
    v3 = *(a2 + 144);
    if (v3)
    {
      v4 = *(a2 + 152);
      v5 = *(a2 + 144);
      if (v4 != v3)
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

        while (v4 != v3);
        v5 = *(a2 + 144);
      }

      *(a2 + 152) = v3;
      operator delete(v5);
    }
  }

  if (*(a2 + 136) == 1 && *(a2 + 135) < 0)
  {
    operator delete(*(a2 + 112));
  }

  if (*(a2 + 104) == 1 && *(a2 + 103) < 0)
  {
    operator delete(*(a2 + 80));
  }

  if (*(a2 + 48) == 1 && *(a2 + 47) < 0)
  {
    v7 = *(a2 + 24);

    operator delete(v7);
  }
}

void sub_23EF50D98(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 168) == 1)
  {
    v3 = *(a2 + 144);
    if (v3)
    {
      v4 = *(a2 + 152);
      v5 = *(a2 + 144);
      if (v4 != v3)
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

        while (v4 != v3);
        v5 = *(a2 + 144);
      }

      *(a2 + 152) = v3;
      operator delete(v5);
    }
  }

  if (*(a2 + 136) == 1 && *(a2 + 135) < 0)
  {
    operator delete(*(a2 + 112));
  }

  if (*(a2 + 104) == 1 && *(a2 + 103) < 0)
  {
    operator delete(*(a2 + 80));
  }

  if (*(a2 + 48) == 1 && *(a2 + 47) < 0)
  {
    v7 = *(a2 + 24);

    operator delete(v7);
  }
}

uint64_t sub_23EF50E84(uint64_t result)
{
  v1 = *(result + 24);
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

uint64_t sub_23EF50EFC(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v2(0, a1 + 8, 0, 0, 0);
  }

  return a1;
}

uint64_t sub_23EF50F44(uint64_t result)
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

uint64_t sub_23EF50FBC(uint64_t a1)
{
  *a1 = &unk_2851796A0;
  *(a1 + 8) = &unk_285179700;
  v2 = *(a1 + 216);
  if (v2)
  {
    *(a1 + 224) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
    (off_285178F08[v3])(&v5, a1 + 16);
  }

  *(a1 + 192) = -1;
  return a1;
}

uint64_t sub_23EF51064(uint64_t a1)
{
  *a1 = &unk_2851796A0;
  *(a1 + 8) = &unk_285179700;
  v2 = *(a1 + 216);
  if (v2)
  {
    *(a1 + 224) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
    (off_285178F08[v3])(&v5, a1 + 16);
  }

  *(a1 + 192) = -1;
  return MEMORY[0x245CACD00](a1, 0x10B3C40B4DE50DDLL);
}

void sub_23EF51120(uint64_t a1)
{
  *(a1 - 8) = &unk_2851796A0;
  *a1 = &unk_285179700;
  v2 = *(a1 + 208);
  if (v2)
  {
    *(a1 + 216) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 184);
  if (v3 != -1)
  {
    (off_285178F08[v3])(&v4, a1 + 8);
  }

  *(a1 + 184) = -1;
}

uint64_t sub_23EF511C4(uint64_t a1)
{
  v2 = a1 - 8;
  *(a1 - 8) = &unk_2851796A0;
  *a1 = &unk_285179700;
  v3 = *(a1 + 208);
  if (v3)
  {
    *(a1 + 216) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 184);
  if (v4 != -1)
  {
    (off_285178F08[v4])(&v6, a1 + 8);
  }

  *(a1 + 184) = -1;
  return MEMORY[0x245CACD00](v2, 0x10B3C40B4DE50DDLL);
}

uint64_t sub_23EF51280(uint64_t a1)
{
  *a1 = &unk_285179C58;
  *(a1 + 8) = &unk_285179CB8;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
LABEL_4:
    (off_285178F08[v3])(&v5, a1 + 16);
  }

LABEL_5:
  *(a1 + 192) = -1;
  return a1;
}

void sub_23EF51370(uint64_t a1)
{
  *a1 = &unk_285179C58;
  *(a1 + 8) = &unk_285179CB8;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 192) = -1;

      JUMPOUT(0x245CACD00);
    }
  }

  else
  {
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_285178F08[v3])(&v4, a1 + 16);
  goto LABEL_5;
}

void sub_23EF51480(uint64_t a1)
{
  *(a1 - 8) = &unk_285179C58;
  *a1 = &unk_285179CB8;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 184);
  if (v3 != -1)
  {
LABEL_4:
    (off_285178F08[v3])(&v4, a1 + 8);
  }

LABEL_5:
  *(a1 + 184) = -1;
}

void sub_23EF5156C(uint64_t a1)
{
  *(a1 - 8) = &unk_285179C58;
  *a1 = &unk_285179CB8;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 184) = -1;

      JUMPOUT(0x245CACD00);
    }
  }

  else
  {
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_285178F08[v3])(&v4, a1 + 8);
  goto LABEL_5;
}

uint64_t sub_23EF51684(uint64_t a1)
{
  *a1 = &unk_285179F50;
  *(a1 + 8) = &unk_285179FB0;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
LABEL_4:
    (off_285178F08[v3])(&v5, a1 + 16);
  }

LABEL_5:
  *(a1 + 192) = -1;
  return a1;
}

void sub_23EF51774(uint64_t a1)
{
  *a1 = &unk_285179F50;
  *(a1 + 8) = &unk_285179FB0;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 192) = -1;

      JUMPOUT(0x245CACD00);
    }
  }

  else
  {
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_285178F08[v3])(&v4, a1 + 16);
  goto LABEL_5;
}

void sub_23EF51884(uint64_t a1)
{
  *(a1 - 8) = &unk_285179F50;
  *a1 = &unk_285179FB0;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 184);
  if (v3 != -1)
  {
LABEL_4:
    (off_285178F08[v3])(&v4, a1 + 8);
  }

LABEL_5:
  *(a1 + 184) = -1;
}

void sub_23EF51970(uint64_t a1)
{
  *(a1 - 8) = &unk_285179F50;
  *a1 = &unk_285179FB0;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 184) = -1;

      JUMPOUT(0x245CACD00);
    }
  }

  else
  {
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_285178F08[v3])(&v4, a1 + 8);
  goto LABEL_5;
}

uint64_t sub_23EF51A88(uint64_t a1)
{
  *a1 = &unk_28517A248;
  *(a1 + 8) = &unk_28517A2A8;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
LABEL_4:
    (off_285178F08[v3])(&v5, a1 + 16);
  }

LABEL_5:
  *(a1 + 192) = -1;
  return a1;
}

void sub_23EF51B78(uint64_t a1)
{
  *a1 = &unk_28517A248;
  *(a1 + 8) = &unk_28517A2A8;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 192) = -1;

      JUMPOUT(0x245CACD00);
    }
  }

  else
  {
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_285178F08[v3])(&v4, a1 + 16);
  goto LABEL_5;
}

void sub_23EF51C88(uint64_t a1)
{
  *(a1 - 8) = &unk_28517A248;
  *a1 = &unk_28517A2A8;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 184);
  if (v3 != -1)
  {
LABEL_4:
    (off_285178F08[v3])(&v4, a1 + 8);
  }

LABEL_5:
  *(a1 + 184) = -1;
}

void sub_23EF51D74(uint64_t a1)
{
  *(a1 - 8) = &unk_28517A248;
  *a1 = &unk_28517A2A8;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 184) = -1;

      JUMPOUT(0x245CACD00);
    }
  }

  else
  {
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_285178F08[v3])(&v4, a1 + 8);
  goto LABEL_5;
}

uint64_t sub_23EF51E8C(uint64_t a1)
{
  *a1 = &unk_28517B7E8;
  *(a1 + 8) = &unk_28517B848;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
LABEL_4:
    (off_285178F08[v3])(&v5, a1 + 16);
  }

LABEL_5:
  *(a1 + 192) = -1;
  return a1;
}

void sub_23EF51F7C(uint64_t a1)
{
  *a1 = &unk_28517B7E8;
  *(a1 + 8) = &unk_28517B848;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 192) = -1;

      JUMPOUT(0x245CACD00);
    }
  }

  else
  {
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_285178F08[v3])(&v4, a1 + 16);
  goto LABEL_5;
}

void sub_23EF5208C(uint64_t a1)
{
  *(a1 - 8) = &unk_28517B7E8;
  *a1 = &unk_28517B848;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 184);
  if (v3 != -1)
  {
LABEL_4:
    (off_285178F08[v3])(&v4, a1 + 8);
  }

LABEL_5:
  *(a1 + 184) = -1;
}

void sub_23EF52178(uint64_t a1)
{
  *(a1 - 8) = &unk_28517B7E8;
  *a1 = &unk_28517B848;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 184) = -1;

      JUMPOUT(0x245CACD00);
    }
  }

  else
  {
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_285178F08[v3])(&v4, a1 + 8);
  goto LABEL_5;
}

uint64_t sub_23EF52290(uint64_t a1)
{
  *a1 = &unk_28517BAA8;
  *(a1 + 8) = &unk_28517BB08;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
LABEL_4:
    (off_285178F08[v3])(&v5, a1 + 16);
  }

LABEL_5:
  *(a1 + 192) = -1;
  return a1;
}

void sub_23EF52380(uint64_t a1)
{
  *a1 = &unk_28517BAA8;
  *(a1 + 8) = &unk_28517BB08;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 192) = -1;

      JUMPOUT(0x245CACD00);
    }
  }

  else
  {
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_285178F08[v3])(&v4, a1 + 16);
  goto LABEL_5;
}

void sub_23EF52490(uint64_t a1)
{
  *(a1 - 8) = &unk_28517BAA8;
  *a1 = &unk_28517BB08;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 184);
  if (v3 != -1)
  {
LABEL_4:
    (off_285178F08[v3])(&v4, a1 + 8);
  }

LABEL_5:
  *(a1 + 184) = -1;
}

void sub_23EF5257C(uint64_t a1)
{
  *(a1 - 8) = &unk_28517BAA8;
  *a1 = &unk_28517BB08;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 184) = -1;

      JUMPOUT(0x245CACD00);
    }
  }

  else
  {
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_285178F08[v3])(&v4, a1 + 8);
  goto LABEL_5;
}

uint64_t sub_23EF52694(uint64_t a1)
{
  *a1 = &unk_28517A540;
  *(a1 + 8) = &unk_28517A5A0;
  v2 = *(a1 + 208);
  if (v2)
  {
    v2(0, a1 + 208, 0, 0, 0);
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
    (off_285178F08[v3])(&v5, a1 + 16);
  }

  *(a1 + 192) = -1;
  return a1;
}

uint64_t sub_23EF52750(uint64_t a1)
{
  *a1 = &unk_28517A540;
  *(a1 + 8) = &unk_28517A5A0;
  v2 = *(a1 + 208);
  if (v2)
  {
    v2(0, a1 + 208, 0, 0, 0);
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
    (off_285178F08[v3])(&v5, a1 + 16);
  }

  *(a1 + 192) = -1;
  return MEMORY[0x245CACD00](a1, 0x10B3C40294CF2FDLL);
}

void *sub_23EF52820(void *result)
{
  v1 = result;
  *(result - 1) = &unk_28517A540;
  *result = &unk_28517A5A0;
  v2 = result[25];
  if (v2)
  {
    result = v2(0, result + 25, 0, 0, 0);
  }

  v3 = *(v1 + 46);
  if (v3 != -1)
  {
    result = (off_285178F08[v3])(&v4, v1 + 1);
  }

  *(v1 + 46) = -1;
  return result;
}

uint64_t sub_23EF528D8(uint64_t a1)
{
  v2 = a1 - 8;
  *(a1 - 8) = &unk_28517A540;
  *a1 = &unk_28517A5A0;
  v3 = *(a1 + 200);
  if (v3)
  {
    v3(0, a1 + 200, 0, 0, 0);
  }

  v4 = *(a1 + 184);
  if (v4 != -1)
  {
    (off_285178F08[v4])(&v6, a1 + 8);
  }

  *(a1 + 184) = -1;
  return MEMORY[0x245CACD00](v2, 0x10B3C40294CF2FDLL);
}

uint64_t sub_23EF529A8(uint64_t a1)
{
  *a1 = &unk_28517AAB8;
  *(a1 + 8) = &unk_28517AB18;
  v2 = *(a1 + 208);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
LABEL_4:
    (off_285178F08[v3])(&v5, a1 + 16);
  }

LABEL_5:
  *(a1 + 192) = -1;
  return a1;
}

void sub_23EF52A98(uint64_t a1)
{
  *a1 = &unk_28517AAB8;
  *(a1 + 8) = &unk_28517AB18;
  v2 = *(a1 + 208);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 192) = -1;

      JUMPOUT(0x245CACD00);
    }
  }

  else
  {
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_285178F08[v3])(&v4, a1 + 16);
  goto LABEL_5;
}

void sub_23EF52BA8(uint64_t a1)
{
  *(a1 - 8) = &unk_28517AAB8;
  *a1 = &unk_28517AB18;
  v2 = *(a1 + 200);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 184);
  if (v3 != -1)
  {
LABEL_4:
    (off_285178F08[v3])(&v4, a1 + 8);
  }

LABEL_5:
  *(a1 + 184) = -1;
}

void sub_23EF52C94(uint64_t a1)
{
  *(a1 - 8) = &unk_28517AAB8;
  *a1 = &unk_28517AB18;
  v2 = *(a1 + 200);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 184) = -1;

      JUMPOUT(0x245CACD00);
    }
  }

  else
  {
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_285178F08[v3])(&v4, a1 + 8);
  goto LABEL_5;
}

uint64_t sub_23EF52DAC(uint64_t a1)
{
  *a1 = &unk_28517AF20;
  *(a1 + 8) = &unk_28517AF80;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
LABEL_4:
    (off_285178F08[v3])(&v5, a1 + 16);
  }

LABEL_5:
  *(a1 + 192) = -1;
  return a1;
}

void sub_23EF52E9C(uint64_t a1)
{
  *a1 = &unk_28517AF20;
  *(a1 + 8) = &unk_28517AF80;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 192) = -1;

      JUMPOUT(0x245CACD00);
    }
  }

  else
  {
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_285178F08[v3])(&v4, a1 + 16);
  goto LABEL_5;
}

void sub_23EF52FAC(uint64_t a1)
{
  *(a1 - 8) = &unk_28517AF20;
  *a1 = &unk_28517AF80;
  v2 = *(a1 + 208);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 184);
  if (v3 != -1)
  {
LABEL_4:
    (off_285178F08[v3])(&v4, a1 + 8);
  }

LABEL_5:
  *(a1 + 184) = -1;
}

void sub_23EF53098(uint64_t a1)
{
  *(a1 - 8) = &unk_28517AF20;
  *a1 = &unk_28517AF80;
  v2 = *(a1 + 208);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 184) = -1;

      JUMPOUT(0x245CACD00);
    }
  }

  else
  {
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_285178F08[v3])(&v4, a1 + 8);
  goto LABEL_5;
}

uint64_t sub_23EF531B0(uint64_t a1)
{
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
    if ((*(a1 + 87) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 55) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      operator delete(*(a1 + 32));
      if ((*(a1 + 23) & 0x80000000) == 0)
      {
        return a1;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 87) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 64));
  if (*(a1 + 55) < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_9:
  operator delete(*a1);
  return a1;
}

void sub_23EF53240(uint64_t a1)
{
  sub_23EF4C84C(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23EF53280(uint64_t a1)
{
  sub_23EF4C84C(a1 - 8);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23EF532BC(uint64_t result)
{
  if (*(result + 176) == 1 && *(result + 175) < 0)
  {
    v1 = result;
    operator delete(*(result + 152));
    result = v1;
    if (*(v1 + 144) != 1)
    {
      return result;
    }
  }

  else if (*(result + 144) != 1)
  {
    return result;
  }

  if (*(result + 143) < 0)
  {
    v2 = result;
    operator delete(*(result + 120));
    return v2;
  }

  return result;
}

uint64_t sub_23EF53344(uint64_t a1)
{
  *a1 = &unk_28517B528;
  *(a1 + 8) = &unk_28517B588;
  if (*(a1 + 376) == 1 && *(a1 + 375) < 0)
  {
    operator delete(*(a1 + 352));
    if (*(a1 + 344) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 344) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 343) < 0)
  {
    operator delete(*(a1 + 320));
  }

LABEL_7:
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
    (off_285178F08[v2])(&v4, a1 + 16);
  }

  *(a1 + 192) = -1;
  return a1;
}

void sub_23EF53424(uint64_t a1)
{
  *a1 = &unk_28517B528;
  *(a1 + 8) = &unk_28517B588;
  if (*(a1 + 376) == 1 && *(a1 + 375) < 0)
  {
    operator delete(*(a1 + 352));
    if (*(a1 + 344) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 344) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 343) < 0)
  {
    operator delete(*(a1 + 320));
  }

LABEL_7:
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
    (off_285178F08[v2])(&v3, a1 + 16);
  }

  *(a1 + 192) = -1;

  JUMPOUT(0x245CACD00);
}

void sub_23EF53524(uint64_t a1)
{
  *(a1 - 8) = &unk_28517B528;
  *a1 = &unk_28517B588;
  if (*(a1 + 368) == 1 && *(a1 + 367) < 0)
  {
    operator delete(*(a1 + 344));
    if (*(a1 + 336) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 336) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

LABEL_7:
  v2 = *(a1 + 184);
  if (v2 != -1)
  {
    (off_285178F08[v2])(&v3, a1 + 8);
  }

  *(a1 + 184) = -1;
}

void sub_23EF53600(uint64_t a1)
{
  *(a1 - 8) = &unk_28517B528;
  *a1 = &unk_28517B588;
  if (*(a1 + 368) == 1 && *(a1 + 367) < 0)
  {
    operator delete(*(a1 + 344));
    if (*(a1 + 336) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 336) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

LABEL_7:
  v2 = *(a1 + 184);
  if (v2 != -1)
  {
    (off_285178F08[v2])(&v3, a1 + 8);
  }

  *(a1 + 184) = -1;

  JUMPOUT(0x245CACD00);
}

void sub_23EF53700(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_23EF53700(a1, *a2);
    sub_23EF53700(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
      v4 = a2;
    }

    else
    {
      v4 = a2;
    }

    operator delete(v4);
  }
}

uint64_t sub_23EF53784(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *(a1 + 24) = 0;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 48) = 0;
  if (*(a2 + 40) == 1)
  {
    if (*(a2 + 39) < 0)
    {
      sub_23EF34EA4((a1 + 24), a2[2], a2[3]);
    }

    else
    {
      v6 = *(a2 + 1);
      *(a1 + 40) = a2[4];
      *(a1 + 24) = v6;
    }

    *(a1 + 48) = 1;
  }

  if (*(a2 + 64) == 1)
  {
    v7 = *(a2 + 56);
    *(a1 + 56) = a2[6];
    *(a1 + 64) = v7;
    v8 = 1;
  }

  else
  {
    v8 = 0;
    *(a1 + 56) = 0;
  }

  *(a1 + 80) = 0;
  *(a1 + 72) = v8;
  *(a1 + 104) = 0;
  if (*(a2 + 96) == 1)
  {
    if (*(a2 + 95) < 0)
    {
      sub_23EF34EA4((a1 + 80), a2[9], a2[10]);
    }

    else
    {
      v9 = *(a2 + 9);
      *(a1 + 96) = a2[11];
      *(a1 + 80) = v9;
    }

    *(a1 + 104) = 1;
  }

  if (*(a2 + 160) == 1)
  {
    if (*(a2 + 135) < 0)
    {
      sub_23EF34EA4(&v12, a2[14], a2[15]);
    }

    else
    {
      v12 = *(a2 + 7);
      v13 = a2[16];
    }

    *(a1 + 112) = v12;
    *(a1 + 128) = v13;
    *(a1 + 136) = 1;
    if ((a2[25] & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(a1 + 112) = 0;
    *(a1 + 136) = 0;
    if ((a2[25] & 1) == 0)
    {
LABEL_21:
      v10 = 0;
      *(a1 + 144) = 0;
      goto LABEL_22;
    }
  }

  sub_23EF53998(a2 + 22, &v12);
  *(a1 + 144) = v12;
  *(a1 + 160) = v13;
  v10 = 1;
LABEL_22:
  *(a1 + 168) = v10;
  return a1;
}

void sub_23EF53920(_Unwind_Exception *exception_object)
{
  if (v1[104] == 1 && v1[103] < 0)
  {
    operator delete(*v3);
  }

  if (v1[48] == 1 && v1[47] < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

double sub_23EF53998@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a1;
  v8 = 0;
  v7 = 0uLL;
  if (v4 != v5)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 5) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_23EF3AE74();
  }

  sub_23EF53A84(v5, v4, &v7);
  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  return result;
}

uint64_t sub_23EF53A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_23EF53BCC();
  }

  return a3;
}

void sub_23EF53B74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF53B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF53BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF53BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF53E38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ****sub_23EF53E7C(void ****a1)
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
          v4 -= 3;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
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

uint64_t sub_23EF53F00(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void sub_23EF53F60(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = v3 + 24;
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v8 = v7 + 1;
  if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_23EF3AE74();
  }

  v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  if (2 * v9 > v8)
  {
    v8 = 2 * v9;
  }

  if (v9 >= 0x555555555555555)
  {
    v10 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    if (v10 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_23EF34E18();
  }

  v11 = 24 * v7;
  *v11 = *a2;
  *(v11 + 16) = *(a2 + 2);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v6 = 24 * v7 + 24;
  v12 = *a1;
  v13 = *(a1 + 8) - *a1;
  v14 = v11 - v13;
  memcpy((v11 - v13), *a1, v13);
  *a1 = v14;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v12)
  {
    goto LABEL_3;
  }

  operator delete(v12);
  *(a1 + 8) = v6;
}

void *sub_23EF540BC(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 5) < a2)
  {
    if (a2 < 0x2AAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      operator new();
    }

    sub_23EF3AE74();
  }

  return result;
}

void sub_23EF54190(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF541A4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23EF541A4(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 96;
    if (*(i - 16) == 1 && *(i - 41) < 0)
    {
      operator delete(*(i - 64));
      if (*(i - 72) != 1)
      {
        continue;
      }
    }

    else if (*(i - 72) != 1)
    {
      continue;
    }

    if (*(i - 73) < 0)
    {
      operator delete(*(i - 96));
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_23EF54244(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v7 = a4;
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      sub_23EF435CC(a4, v6);
      v6 += 6;
      a4 = v7 + 96;
      v7 += 96;
    }

    while (v6 != a3);
    do
    {
      if (*(v5 + 80) == 1 && *(v5 + 55) < 0)
      {
        operator delete(*(v5 + 4));
        if (*(v5 + 24) == 1)
        {
LABEL_9:
          if (*(v5 + 23) < 0)
          {
            operator delete(*v5);
          }
        }
      }

      else if (*(v5 + 24) == 1)
      {
        goto LABEL_9;
      }

      v5 += 6;
    }

    while (v5 != a3);
  }
}

uint64_t sub_23EF54330(uint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void **__return_ptr, uint64_t *, uint64_t))
{
  v29 = *MEMORY[0x277D85DE8];
  if (a1 != a2)
  {
    v9 = a1;
    do
    {
      v10 = *(v9 + 23);
      if (v10 < 0)
      {
        v11 = *v9;
        v10 = v9[1];
      }

      else
      {
        v11 = v9;
      }

      a4(v23, v11, v10);
      v12 = *(a3 + 8);
      if (v12 >= *(a3 + 16))
      {
        sub_23EF544D4(a3, v23);
      }

      else
      {
        *v12 = 0;
        *(v12 + 24) = 0;
        if (v25 == 1)
        {
          v13 = *v23;
          *(v12 + 16) = v24;
          *v12 = v13;
          v23[1] = 0;
          v24 = 0;
          v23[0] = 0;
          *(v12 + 24) = 1;
        }

        *(v12 + 32) = 0;
        *(v12 + 80) = 0;
        if (v28 == 1)
        {
          _X0 = 0;
          _X1 = 0;
          v16 = __p;
          *(v12 + 48) = v27;
          *(v12 + 32) = v16;
          v27 = 0;
          __p = 0uLL;
          __asm { CASPAL          X0, X1, X0, X1, [X9] }

          *(v12 + 64) = _X0;
          *(v12 + 72) = 0;
          *(v12 + 80) = 1;
        }

        v22 = v12 + 96;
      }

      *(a3 + 8) = v22;
      if (v28 == 1 && SHIBYTE(v27) < 0)
      {
        operator delete(__p);
      }

      if (v25 == 1 && SHIBYTE(v24) < 0)
      {
        operator delete(v23[0]);
      }

      v9 += 3;
    }

    while (v9 != a2);
  }

  v5 = *MEMORY[0x277D85DE8];
  return a3;
}

double sub_23EF544D4(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_23EF3AE74();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (v6 <= 0x2AAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_23EF34E18();
  }

  v7 = (32 * ((*(a1 + 8) - *a1) >> 5));
  *(&v19 + 1) = 0;
  *v7 = 0;
  v7[24] = 0;
  if (*(a2 + 24) == 1)
  {
    *v7 = *a2;
    *(96 * v2 + 0x10) = *(a2 + 16);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    *(96 * v2 + 0x18) = 1;
  }

  *(96 * v2 + 0x20) = 0;
  *(96 * v2 + 0x50) = 0;
  if (*(a2 + 80) == 1)
  {
    _X0 = 0;
    _X1 = 0;
    *(96 * v2 + 0x30) = *(a2 + 48);
    *(96 * v2 + 0x20) = *(a2 + 32);
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 32) = 0;
    __asm { CASPAL          X0, X1, X0, X1, [X9] }

    *(96 * v2 + 0x40) = _X0;
    *(96 * v2 + 0x48) = 0;
    *(96 * v2 + 0x50) = 1;
  }

  *&v19 = 96 * v2 + 96;
  v15 = *(a1 + 8);
  v16 = &v7[*a1 - v15];
  sub_23EF54244(a1, *a1, v15, v16);
  v17 = *a1;
  *a1 = v16;
  result = *&v19;
  *(a1 + 8) = v19;
  if (v17)
  {
    operator delete(v17);
    *&result = 96 * v2 + 96;
  }

  return result;
}

void sub_23EF54684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23EF541A4(va);
  _Unwind_Resume(a1);
}

void sub_23EF54698(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23EF54734@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(result + 24);
  *(a2 + 8) = *(result + 32);
  return result;
}

uint64_t sub_23EF54748(uint64_t a1)
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

BOOL sub_23EF547F4(void *a1, void *a2)
{
  if (**a1 != **a2 || *(*a1 + 8) != *(*a2 + 8))
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a2[1];
  v4 = *(v2 + 24);
  v5 = *(v3 + 24);
  if (v4 != v5 || v4 == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }
  }

  else
  {
    v8 = *(v2 + 23);
    if (v8 >= 0)
    {
      v9 = *(v2 + 23);
    }

    else
    {
      v9 = v2[1];
    }

    v10 = *(v3 + 23);
    v11 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v10 = v3[1];
    }

    if (v9 != v10)
    {
      return 0;
    }

    if (v8 < 0)
    {
      v2 = *v2;
    }

    if (v11 < 0)
    {
      v3 = *v3;
    }

    v12 = a1;
    v13 = a2;
    v14 = memcmp(v2, v3, v9);
    a2 = v13;
    v15 = v14;
    a1 = v12;
    if (v15)
    {
      return 0;
    }
  }

  v16 = a1[2];
  v17 = a2[2];
  v18 = *(v16 + 16);
  v19 = *(v17 + 16);
  if (v18 != v19 || v18 == 0)
  {
    if (v18 != v19)
    {
      return 0;
    }
  }

  else if (*v16 != *v17 || *(v16 + 8) != *(v17 + 8))
  {
    return 0;
  }

  v21 = a1[3];
  v22 = a2[3];
  v23 = *(v21 + 24);
  v24 = *(v22 + 24);
  if (v23 != v24 || v23 == 0)
  {
    if (v23 != v24)
    {
      return 0;
    }
  }

  else
  {
    v26 = *(v21 + 23);
    if (v26 >= 0)
    {
      v27 = *(v21 + 23);
    }

    else
    {
      v27 = v21[1];
    }

    v28 = *(v22 + 23);
    v29 = v28;
    if ((v28 & 0x80u) != 0)
    {
      v28 = v22[1];
    }

    if (v27 != v28)
    {
      return 0;
    }

    if (v26 < 0)
    {
      v21 = *v21;
    }

    if (v29 < 0)
    {
      v22 = *v22;
    }

    v30 = a1;
    v31 = a2;
    v32 = memcmp(v21, v22, v27);
    a2 = v31;
    v33 = v32;
    a1 = v30;
    if (v33)
    {
      return 0;
    }
  }

  v34 = a1[4];
  v35 = a2[4];
  v36 = v34[24];
  v37 = *(v35 + 24);
  if (v36 == v37 && v34[24])
  {
    v38 = v34[23];
    if (v38 >= 0)
    {
      v39 = v34[23];
    }

    else
    {
      v39 = *(v34 + 1);
    }

    v40 = *(v35 + 23);
    v41 = v40;
    if ((v40 & 0x80u) != 0)
    {
      v40 = v35[1];
    }

    if (v39 != v40)
    {
      return 0;
    }

    if (v38 < 0)
    {
      v34 = *v34;
    }

    if (v41 < 0)
    {
      v35 = *v35;
    }

    v42 = a1;
    v43 = a2;
    v44 = memcmp(v34, v35, v39);
    a2 = v43;
    v45 = v44;
    a1 = v42;
    if (v45)
    {
      return 0;
    }
  }

  else if (v36 != v37)
  {
    return 0;
  }

  v46 = a1[5];
  v47 = a2[5];
  v48 = *(v47 + 24);
  v49 = *(v46 + 24);
  result = v49 == v48;
  if (v49 != v48 || !*(v46 + 24))
  {
    return result;
  }

  v51 = *v46;
  v50 = v46[1];
  v52 = *v47;
  if (v50 - *v46 != v47[1] - *v47)
  {
    return 0;
  }

  if (v51 != v50)
  {
    while (1)
    {
      v53 = *(v51 + 23);
      if (v53 >= 0)
      {
        v54 = *(v51 + 23);
      }

      else
      {
        v54 = *(v51 + 8);
      }

      v55 = *(v52 + 23);
      v56 = v55;
      if ((v55 & 0x80u) != 0)
      {
        v55 = v52[1];
      }

      if (v54 != v55)
      {
        break;
      }

      v57 = v53 >= 0 ? v51 : *v51;
      v58 = *v52;
      v59 = v56 >= 0 ? v52 : *v52;
      if (memcmp(v57, v59, v54))
      {
        break;
      }

      v51 += 24;
      v52 += 3;
      result = 1;
      if (v51 == v50)
      {
        return result;
      }
    }

    return 0;
  }

  return 1;
}

void sub_23EF54B14(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  sub_23EF551A0(v3, a2);
  sub_23EF54C44(a1, v3);
}

void sub_23EF54C2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF47B34(va);
  _Unwind_Resume(a1);
}

void sub_23EF54C44(uint64_t a1, uint64_t a2)
{
  if (**(a1 + 40) <= 1u)
  {
    v4 = *(a1 + 88);
    *(a1 + 72) = "auto_timestamp";
    *(a1 + 80) = 14;
    if ((v4 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_23F2E6438(a1 + 48, (a1 + 40));
  v5 = sub_23F2E72C0(a1);
  *(a1 + 40) = v5;
  if (*(a1 + 88))
  {
    *(a1 + 88) = 0;
  }

  if (*v5 < 2u && ((*(a1 + 72) = "version", *(a1 + 80) = 7, *(a1 + 88) = 1, v6 = *(a1 + 72), v7 = *v6, v8 = *(v6 + 3), v7 == *"version") ? (v9 = v8 == *"sion") : (v9 = 0), v9))
  {
    *(a1 + 96) = 2;
    *(a1 + 100) = 1;
    *(a1 + 88) = 0;
  }

  else
  {
    v13 = 2;
    v10 = sub_23F2E72C0(a1);
    v11 = *v10;
    *v10 = 6;
    v12 = v10[1];
    v10[1] = v13;
    v13 = v12;
    sub_23F0655DC(&v13, v11);
  }

  sub_23EF554C4(a1, (a2 + 8));
}

uint64_t sub_23EF551A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *(a1 + 24) = 0;
  *(a1 + 8) = v4;
  *(a1 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    if (*(a2 + 47) < 0)
    {
      sub_23EF34EA4((a1 + 24), *(a2 + 24), *(a2 + 32));
    }

    else
    {
      v5 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 24) = v5;
    }

    *(a1 + 48) = 1;
  }

  v6 = *(a2 + 56);
  v7 = *(a2 + 72);
  *(a1 + 80) = 0;
  *(a1 + 72) = v7;
  *(a1 + 56) = v6;
  *(a1 + 104) = 0;
  if (*(a2 + 104) == 1)
  {
    if (*(a2 + 103) < 0)
    {
      sub_23EF34EA4((a1 + 80), *(a2 + 80), *(a2 + 88));
    }

    else
    {
      v8 = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 80) = v8;
    }

    *(a1 + 104) = 1;
  }

  *(a1 + 112) = 0;
  *(a1 + 136) = 0;
  if (*(a2 + 136) == 1)
  {
    if (*(a2 + 135) < 0)
    {
      sub_23EF34EA4((a1 + 112), *(a2 + 112), *(a2 + 120));
    }

    else
    {
      v9 = *(a2 + 112);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 112) = v9;
    }

    *(a1 + 136) = 1;
  }

  *(a1 + 144) = 0;
  *(a1 + 168) = 0;
  if (*(a2 + 168) == 1)
  {
    sub_23EF5537C((a1 + 144), (a2 + 144));
    *(a1 + 168) = 1;
  }

  return a1;
}

void sub_23EF552F4(_Unwind_Exception *exception_object)
{
  if (v2[136] == 1 && v2[135] < 0)
  {
    operator delete(*v4);
  }

  if (v2[104] == 1 && v2[103] < 0)
  {
    operator delete(*v3);
  }

  if (v2[48] == 1 && v2[47] < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_23EF5537C(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_23EF3AE74();
  }

  return result;
}

void sub_23EF554A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  sub_23EF53F00(&a11);
  *(v11 + 8) = v12;
  sub_23EF53E7C(&a9);
  _Unwind_Resume(a1);
}

void sub_23EF554C4(uint64_t a1, uint64_t **a2)
{
  v3 = *(a1 + 40);
  if (*v3 > 1u)
  {
    v6 = (a1 + 88);
    v4 = a1 + 72;
    v7 = (a1 + 80);
    if ((*(a1 + 88) & 1) != 0 && *(a1 + 80) == 7 && **v4 == *"version" && *(*v4 + 3) == *"sion")
    {
      goto LABEL_11;
    }
  }

  else
  {
    *(a1 + 72) = "ns";
    v4 = a1 + 72;
    v6 = (a1 + 88);
    v5 = *(a1 + 88);
    *(a1 + 80) = 2;
    v7 = (a1 + 80);
    if ((v5 & 1) == 0)
    {
      *v6 = 1;
    }
  }

  v13 = *a2;
  v9 = sub_23F2E72C0(a1);
  v10 = *v9;
  *v9 = 5;
  v11 = v9[1];
  v9[1] = v13;
  v13 = v11;
  sub_23F0655DC(&v13, v10);
  v3 = *(a1 + 40);
LABEL_11:
  if (*v3 <= 1u)
  {
    v12 = *v6;
    *v4 = "clock_type";
    *v7 = 10;
    if ((v12 & 1) == 0)
    {
      *v6 = 1;
    }
  }

  v14 = 0;
  sub_23EF556F4();
}

void sub_23EF556B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF556CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF556E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF55918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF5595C(int *a1, uint64_t a2, __int128 *a3)
{
  sub_23F2E6438(a2 + 48, (a2 + 40));
  v6 = sub_23F2E72C0(a2);
  *(a2 + 40) = v6;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v6 >= 2u)
  {
    v7 = (a2 + 80);
    v9 = a2 + 72;
  }

  else
  {
    *(a2 + 72) = "version";
    *(a2 + 80) = 7;
    v7 = (a2 + 80);
    *(a2 + 88) = 1;
    v9 = a2 + 72;
    v8 = *(a2 + 72);
    v10 = *v8;
    v11 = *(v8 + 3);
    if (v10 == *"version" && v11 == *"sion")
    {
      *(a2 + 96) = 2;
      *(a2 + 100) = 1;
      *(a2 + 88) = 0;
      v13 = *a1;
      if (*a1 >= 1)
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }
  }

  v32 = 6;
  v33 = 2;
  v16 = sub_23F2E72C0(a2);
  v17 = *v16;
  *v16 = 6;
  v32 = v17;
  v18 = v16[1];
  v16[1] = v33;
  v33 = v18;
  sub_23F0655DC(&v33, v17);
  v13 = *a1;
  if (*a1 >= 1)
  {
LABEL_15:
    v14 = *(a2 + 40);
    v19 = *(a2 + 88);
    if (v13 == 2)
    {
      if (*v14 > 1u)
      {
        if ((*(a2 + 88) & 1) != 0 && *v7 == 7 && **v9 == *"version" && *(*v9 + 3) == *"sion")
        {
          v19 = 0;
          *(a2 + 96) = 2;
          *(a2 + 100) = 1;
          *(a2 + 88) = 0;
          v31 = *a3;
          if (*v14 <= 1u)
          {
LABEL_34:
            *v9 = "ns";
            *v7 = 2;
            if ((v19 & 1) == 0)
            {
              *(a2 + 88) = 1;
            }

            goto LABEL_42;
          }

LABEL_37:
          if ((v19 & (*v7 == 7)) != 1)
          {
            goto LABEL_42;
          }

          if (**v9 != *"version" || *(*v9 + 3) != *"sion")
          {
            goto LABEL_42;
          }

          goto LABEL_43;
        }
      }

      else
      {
        *v9 = "min_version";
        *v7 = 11;
        if ((v19 & 1) == 0)
        {
          *(a2 + 88) = 1;
        }
      }

      v32 = 6;
      v33 = 2;
      v22 = sub_23F2E72C0(a2);
      v23 = *v22;
      *v22 = 6;
      v32 = v23;
      v24 = v22[1];
      v22[1] = v33;
      v33 = v24;
      sub_23F0655DC(&v33, v23);
      v14 = *(a2 + 40);
      v19 = *(a2 + 88);
    }

    v31 = *a3;
    if (*v14 <= 1u)
    {
      goto LABEL_34;
    }

    goto LABEL_37;
  }

LABEL_10:
  v31 = *a3;
  v14 = *(a2 + 40);
  v15 = *(a2 + 88);
  if (*v14 <= 1u)
  {
    *v9 = "ns";
    *v7 = 2;
    if ((v15 & 1) == 0)
    {
      *(a2 + 88) = 1;
    }

    goto LABEL_42;
  }

  if ((*(a2 + 88) & 1) == 0 || *v7 != 7 || (**v9 == *"version" ? (v20 = *(*v9 + 3) == *"sion") : (v20 = 0), !v20))
  {
LABEL_42:
    v32 = 5;
    v33 = v31;
    v26 = sub_23F2E72C0(a2);
    v27 = *v26;
    *v26 = 5;
    v32 = v27;
    v28 = v26[1];
    v26[1] = v33;
    v33 = v28;
    sub_23F0655DC(&v33, v27);
    v14 = *(a2 + 40);
  }

LABEL_43:
  if (*v14 <= 1u)
  {
    v29 = *(a2 + 88);
    *(a2 + 72) = "clock_type";
    *(a2 + 80) = 10;
    if ((v29 & 1) == 0)
    {
      *(a2 + 88) = 1;
    }
  }

  sub_23EF55D78(a2, &v31 + 8);
  v30 = *(a2 + 56);
  *(a2 + 40) = *(v30 - 8);
  *(a2 + 56) = v30 - 8;
  if (*(a2 + 88) == 1)
  {
    *(a2 + 88) = 0;
  }
}

void sub_23EF55D78(uint64_t a1, unsigned __int8 *a2)
{
  if ((*(a1 + 12) & 2) != 0)
  {
    v11 = 0;
    sub_23EF556F4();
  }

  v2 = *(a1 + 88) == 1 && *(a1 + 80) == 7;
  if (!v2 || ((v3 = *(a1 + 72), v4 = *v3, v5 = *(v3 + 3), v4 == *"version") ? (v6 = v5 == *"sion") : (v6 = 0), !v6))
  {
    v10 = *a2;
    v7 = sub_23F2E72C0(a1);
    v8 = *v7;
    *v7 = 6;
    v9 = v7[1];
    v7[1] = v10;
    v10 = v9;
    sub_23F0655DC(&v10, v8);
  }
}

void sub_23EF55EE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF55F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF55F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF55F2C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const std::string::value_type *a4@<X4>, std::string::size_type a5@<X5>, std::string *a6@<X8>)
{
  v12 = 0x5555555555555555 * ((a1 - a3) >> 3);
  v28 = *MEMORY[0x277D85DE8];
  if (v12 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 0x5555555555555555 * ((a1 - a3) >> 3);
  }

  *&v27 = a1;
  *(&v27 + 1) = a2;
  v24 = a1 - a3;
  v14 = 0;
  if (a1 != a3)
  {
    do
    {
      sub_23EF561A8(&v27, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v14 += size;
      *&v27 = v27 + 24;
    }

    while (v27 != a3);
  }

  v15 = v14 + (v13 - 1) * a5;
  a6->__r_.__value_.__r.__words[0] = 0;
  a6->__r_.__value_.__l.__size_ = 0;
  a6->__r_.__value_.__r.__words[2] = 0;
  if (v15 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  if (v15 >= 0x17)
  {
    v16 = v15 | 7;
    if (v16 == 23)
    {
      v17 = 24;
    }

    else
    {
      v17 = v16;
    }

    sub_23EF430F4(a6, v17);
  }

  *&v27 = a1;
  *(&v27 + 1) = a2;
  if (v24 < 0)
  {
    sub_23EF561A8(&v27, &__p);
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
      v19 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v19 = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(a6, p_p, v19);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (v12 < 2)
      {
        goto LABEL_39;
      }
    }

    else if (v12 < 2)
    {
      goto LABEL_39;
    }

    *&v27 = v27 + 24;
    for (i = v27; i != a3; *&i = i + 24)
    {
      std::string::append(a6, a4, a5);
      sub_23EF561A8(&i, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &__p;
      }

      else
      {
        v21 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v22 = __p.__r_.__value_.__l.__size_;
      }

      std::string::append(a6, v21, v22);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

LABEL_39:
  v23 = *MEMORY[0x277D85DE8];
}

void sub_23EF56158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF561A8(unsigned __int8 **a1@<X0>, std::string *a2@<X8>)
{
  v3 = *a1;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  v4 = v3[23];
  v5 = v4;
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = *(v3 + 1);
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_23EF2F8F4();
    }
  }

  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v6 = 24;
    }

    else
    {
      v6 = v5 | 7;
    }

    sub_23EF430F4(a2, v6);
    LOBYTE(v4) = v3[23];
  }

  v7 = *(v3 + 1);
  if ((v4 & 0x80u) == 0)
  {
    v8 = v4;
  }

  else
  {
    v3 = *v3;
    v8 = v7;
  }

  if (v8)
  {
    while (1)
    {
      v9 = *v3;
      if (v9 == 59)
      {
        break;
      }

      if (v9 == 92)
      {
        v10 = "\\\";
LABEL_19:
        std::string::append(a2, v10, 2uLL);
        goto LABEL_14;
      }

      std::string::push_back(a2, v9);
LABEL_14:
      ++v3;
      if (!--v8)
      {
        return;
      }
    }

    v10 = "\\;";
    goto LABEL_19;
  }
}

void sub_23EF562A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF562C4(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 40);
  if (**(a1 + 40) <= 1u)
  {
    v4 = *(a1 + 88);
    *(a1 + 72) = *a2;
    if ((v4 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v5 = *(a2 + 16);
  sub_23F2E6438(a1 + 48, v3);
  v6 = sub_23F2E72C0(a1);
  *(a1 + 40) = v6;
  if (*(a1 + 88))
  {
    *(a1 + 88) = 0;
  }

  if (*v6 < 2u && ((*(a1 + 72) = "version", *(a1 + 80) = 7, *(a1 + 88) = 1, v7 = *(a1 + 72), v8 = *v7, v9 = *(v7 + 3), v8 == *"version") ? (v10 = v9 == *"sion") : (v10 = 0), v10))
  {
    *(a1 + 96) = 2;
    *(a1 + 100) = 1;
    *(a1 + 88) = 0;
  }

  else
  {
    LOBYTE(v19) = 6;
    v20 = 2;
    v11 = sub_23F2E72C0(a1);
    v12 = *v11;
    *v11 = 6;
    LOBYTE(v19) = v12;
    v13 = v11[1];
    v11[1] = v20;
    v20 = v13;
    sub_23F0655DC(&v20, v12);
  }

  *&v16[12] = *(v5 + 12);
  *v16 = *v5;
  v17 = 0;
  v18 = -1;
  v14 = *(v5 + 96);
  if (v14 != -1)
  {
    v19 = &v17;
    (off_285178F68[v14])(&v19, v5 + 32);
    v18 = v14;
  }

  if (**v3 <= 1u)
  {
    v15 = *(a1 + 88);
    *(a1 + 72) = "io_format";
    *(a1 + 80) = 9;
    if ((v15 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v21 = 0;
  sub_23EF56C78();
}