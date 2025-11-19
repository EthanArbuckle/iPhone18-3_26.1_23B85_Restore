void sub_23EF7CE3C(void *a1, void *a2)
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
    sub_23EF77600(a2, v10 - (v9 >> 3));
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

void *sub_23EF7CF74(void *result, uint64_t a2)
{
  v2 = result[6];
  v3 = result[7];
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 <= 0xB)
  {
    goto LABEL_8;
  }

  v6 = (result[3] + v2);
  v7 = *v6;
  *(a2 + 8) = *(v6 + 2);
  *a2 = v7;
  v8 = result[7];
  v9 = result[6] + 12;
  result[6] = v9;
  v4 = v8 >= v9;
  v10 = v8 - v9;
  if (!v4)
  {
    v10 = 0;
  }

  if (v10 <= 0xB)
  {
LABEL_8:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read span");
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  v11 = result[3] + v9;
  v12 = *v11;
  *(a2 + 20) = *(v11 + 8);
  *(a2 + 12) = v12;
  result[6] += 12;
  return result;
}

void sub_23EF7D078(int *a1, _BYTE *a2, uint64_t *a3, unsigned int a4)
{
  v4 = a4;
  v7 = *a1;
  if (*a1 == 2)
  {
    if (a4 < 3)
    {
LABEL_17:
      sub_23EF7D43C(a2, a3, v4);
      return;
    }

    v12 = 3;
    (*(*a2 + 104))(a2, &v12);
    if (v12 >= 5)
    {
      v11 = v12;
      if ((atomic_load_explicit(&qword_27E395A98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395A98))
      {
        sub_23EF7D254();
      }

      sub_23F2FF068(&stru_27E395AD0, v11, 4u);
    }

    v7 = *a1;
  }

  if (v4 < 3 || v7 <= 0)
  {
    if (v4 >= 4)
    {
      v10 = 4;
    }

    else
    {
      v10 = v4;
    }

    if (v4 > 2)
    {
      sub_23EF7DB54(a2, a3, v10);
      return;
    }

    v4 = v10;
    goto LABEL_17;
  }

  (*(*a2 + 16))(a2);
  if (v4 >= 4)
  {
    v9 = 4;
  }

  else
  {
    v9 = v4;
  }

  sub_23EF7DB54(a2, a3, v9);
  (*(*a2 + 24))(a2);
}

void sub_23EF7D3E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_23EF3291C(&a15);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_23EF7D43C(_BYTE *a1, uint64_t *a2, unsigned int a3)
{
  v20 = 0u;
  v22 = 0;
  v21 = 0;
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  v27 = 0;
  v29 = 0;
  v28 = 0;
  v30 = 0;
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v34[32] = 0;
  LOBYTE(v35) = 0;
  v38 = 0;
  memset(v34, 0, 28);
  memset(&v34[8], 0, 28);
  memset(&v34[16], 0, 28);
  memset(&v34[24], 0, 28);
  sub_23EF7E2D0(a1, &v20);
  v19[0] = &v22 + 1;
  sub_23EF7E424(a1, v19);
  sub_23EF7E2D0(a1, v23);
  v19[0] = &v24 + 1;
  sub_23EF7E424(a1, v19);
  sub_23EF7E2D0(a1, v25);
  v19[0] = &v26 + 1;
  sub_23EF7E424(a1, v19);
  v19[0] = (v28 - v27);
  (*(*a1 + 120))(a1, v19);
  v6 = v28;
  v7 = v27;
  if (v19[0] <= (v28 - v27))
  {
    if (v19[0] < (v28 - v27))
    {
      v6 = &v27[v19[0]];
      v28 = &v27[v19[0]];
    }
  }

  else
  {
    sub_23EF76C28(&v27, v19[0] - (v28 - v27));
    v7 = v27;
    v6 = v28;
  }

  for (; v7 != v6; ++v7)
  {
    (*(*a1 + 80))(a1, v7);
  }

  v19[0] = &v30 + 1;
  sub_23EF7E424(a1, v19);
  v19[0] = (v32 - v31);
  (*(*a1 + 120))(a1, v19);
  v8 = v32;
  v9 = v31;
  if (v19[0] <= (v32 - v31))
  {
    if (v19[0] < (v32 - v31))
    {
      v8 = &v31[v19[0]];
      v32 = &v31[v19[0]];
    }
  }

  else
  {
    sub_23EF76C28(&v31, v19[0] - (v32 - v31));
    v9 = v31;
    v8 = v32;
  }

  for (; v9 != v8; ++v9)
  {
    (*(*a1 + 80))(a1, v9);
  }

  sub_23EF7E59C(a1, &v34[1]);
  v19[0] = ((*&v34[11] - *&v34[9]) >> 3);
  (*(*a1 + 120))(a1, v19);
  v10 = *&v34[11];
  v11 = *&v34[9];
  v12 = (*&v34[11] - *&v34[9]) >> 3;
  if (v19[0] <= v12)
  {
    if (v19[0] < v12)
    {
      v10 = *&v34[9] + 8 * v19[0];
      *&v34[11] = v10;
    }
  }

  else
  {
    sub_23EF772DC(&v34[9], v19[0] - v12);
    v11 = *&v34[9];
    v10 = *&v34[11];
  }

  for (; v11 != v10; v11 = v13 + 4)
  {
    (*(*a1 + 104))(a1, v11);
    v13 = v11 + 4;
    (*(*a1 + 104))(a1, v13);
  }

  v19[0] = ((*&v34[19] - *&v34[17]) >> 3);
  (*(*a1 + 120))(a1, v19);
  v14 = *&v34[19];
  v15 = *&v34[17];
  v16 = (*&v34[19] - *&v34[17]) >> 3;
  if (v19[0] <= v16)
  {
    if (v19[0] < v16)
    {
      v14 = *&v34[17] + 8 * v19[0];
      *&v34[19] = v14;
    }
  }

  else
  {
    sub_23EF77600(&v34[17], v19[0] - v16);
    v15 = *&v34[17];
    v14 = *&v34[19];
  }

  for (; v15 != v14; v15 = v17 + 4)
  {
    (*(*a1 + 128))(a1, v15);
    v17 = v15 + 4;
    (*(*a1 + 128))(a1, v17);
  }

  sub_23EF7E59C(a1, &v34[25]);
  if (a3 >= 2)
  {
    v39 = 0;
    (*(*a1 + 80))(a1, &v39);
    if (v39)
    {
      if ((v38 & 1) == 0)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v38 = 1;
      }

      LODWORD(v19[0]) = 1;
      (*(*a1 + 104))(a1, v19);
      (*(*a1 + 128))(a1, &v35);
      (*(*a1 + 128))(a1, &v35 + 4);
      (*(*a1 + 128))(a1, &v36);
      (*(*a1 + 128))(a1, &v36 + 4);
      (*(*a1 + 128))(a1, &v37);
      (*(*a1 + 128))(a1, &v37 + 4);
    }

    else if (v38)
    {
      v38 = 0;
    }
  }

  sub_23EF77A1C(v19, &v20);
  sub_23EF77B68(a2, v19);
  sub_23EF4FC00(v19);
  return sub_23EF782AC(&v20);
}

void sub_23EF7DB54(uint64_t a1, uint64_t a2, unsigned int a3)
{
  sub_23EF7E2D0(a1, a2);
  v22 = a2 + 32;
  sub_23EF7E424(a1, &v22);
  sub_23EF7E2D0(a1, (a2 + 40));
  v22 = a2 + 72;
  sub_23EF7E424(a1, &v22);
  sub_23EF7E2D0(a1, (a2 + 80));
  v22 = a2 + 112;
  sub_23EF7E424(a1, &v22);
  v22 = *(a2 + 128) - *(a2 + 120);
  (*(*a1 + 120))(a1, &v22);
  v6 = *(a2 + 120);
  v7 = *(a2 + 128);
  if (v22 <= v7 - v6)
  {
    if (v22 < v7 - v6)
    {
      v7 = &v6[v22];
      *(a2 + 128) = &v6[v22];
    }
  }

  else
  {
    sub_23EF76C28(a2 + 120, v22 - (v7 - v6));
    v6 = *(a2 + 120);
    v7 = *(a2 + 128);
  }

  for (; v6 != v7; ++v6)
  {
    (*(*a1 + 80))(a1, v6);
  }

  v22 = a2 + 152;
  sub_23EF7E424(a1, &v22);
  v22 = *(a2 + 168) - *(a2 + 160);
  (*(*a1 + 120))(a1, &v22);
  v8 = *(a2 + 160);
  v9 = *(a2 + 168);
  if (v22 <= v9 - v8)
  {
    if (v22 < v9 - v8)
    {
      v9 = &v8[v22];
      *(a2 + 168) = &v8[v22];
    }
  }

  else
  {
    sub_23EF76C28(a2 + 160, v22 - (v9 - v8));
    v8 = *(a2 + 160);
    v9 = *(a2 + 168);
  }

  for (; v8 != v9; ++v8)
  {
    (*(*a1 + 80))(a1, v8);
  }

  sub_23EF7E59C(a1, (a2 + 192));
  v22 = (*(a2 + 232) - *(a2 + 224)) >> 3;
  (*(*a1 + 120))(a1, &v22);
  v10 = *(a2 + 224);
  v11 = *(a2 + 232);
  v12 = (v11 - v10) >> 3;
  if (v22 <= v12)
  {
    if (v22 < v12)
    {
      v11 = v10 + 8 * v22;
      *(a2 + 232) = v11;
    }
  }

  else
  {
    sub_23EF772DC(a2 + 224, v22 - v12);
    v10 = *(a2 + 224);
    v11 = *(a2 + 232);
  }

  for (; v10 != v11; v10 += 8)
  {
    (*(*a1 + 104))(a1, v10);
    (*(*a1 + 104))(a1, v10 + 4);
  }

  v22 = (*(a2 + 264) - *(a2 + 256)) >> 3;
  (*(*a1 + 120))(a1, &v22);
  v13 = *(a2 + 256);
  v14 = *(a2 + 264);
  v15 = (v14 - v13) >> 3;
  if (v22 <= v15)
  {
    if (v22 < v15)
    {
      v14 = v13 + 8 * v22;
      *(a2 + 264) = v14;
    }
  }

  else
  {
    sub_23EF77600(a2 + 256, v22 - v15);
    v13 = *(a2 + 256);
    v14 = *(a2 + 264);
  }

  for (; v13 != v14; v13 += 8)
  {
    (*(*a1 + 128))(a1, v13);
    (*(*a1 + 128))(a1, v13 + 4);
  }

  sub_23EF7E59C(a1, (a2 + 288));
  if (a3 >= 2)
  {
    v21 = 0;
    (*(*a1 + 80))(a1, &v21);
    if (!v21)
    {
      if (*(a2 + 344))
      {
        *(a2 + 344) = 0;
      }

      goto LABEL_40;
    }

    if ((*(a2 + 344) & 1) == 0)
    {
      *(a2 + 320) = 0;
      *(a2 + 328) = 0;
      *(a2 + 336) = 0;
      *(a2 + 344) = 1;
    }

    v16 = *(a1 + 8);
    LODWORD(v22) = 2;
    (*(*a1 + 104))(a1, &v22);
    if (v16 >= 1)
    {
      if (v16 == 2)
      {
        if (v22 >= 2)
        {
          LODWORD(v22) = 2;
          (*(*a1 + 104))(a1, &v22);
          v17 = v22;
          if (v22 >= 3)
          {
            if ((atomic_load_explicit(&qword_27E395A90, memory_order_acquire) & 1) == 0)
            {
              if (__cxa_guard_acquire(&qword_27E395A90))
              {
                sub_23EF77784();
              }
            }

            sub_23F2FF068(&stru_27E395AB8, v17, 2u);
          }

          goto LABEL_38;
        }
      }

      else if (v22 > 1)
      {
LABEL_38:
        (*(*a1 + 16))(a1);
        (*(*a1 + 128))(a1, a2 + 320);
        (*(*a1 + 128))(a1, a2 + 324);
        (*(*a1 + 128))(a1, a2 + 328);
        (*(*a1 + 128))(a1, a2 + 332);
        (*(*a1 + 128))(a1, a2 + 336);
        (*(*a1 + 128))(a1, a2 + 340);
        (*(*a1 + 24))(a1);
        goto LABEL_40;
      }
    }

    sub_23EF7E6F0(a1, a2 + 320, v22);
LABEL_40:
    if (a3 >= 4)
    {
      v22 = a2 + 348;
      sub_23EF7E424(a1, &v22);
      v22 = (*(a2 + 360) - *(a2 + 352)) >> 2;
      (*(*a1 + 120))(a1, &v22);
      v18 = *(a2 + 352);
      v19 = *(a2 + 360);
      v20 = (v19 - v18) >> 2;
      if (v22 <= v20)
      {
        if (v22 < v20)
        {
          v19 = v18 + 4 * v22;
          *(a2 + 360) = v19;
        }
      }

      else
      {
        sub_23EF77888(a2 + 352, v22 - v20);
        v18 = *(a2 + 352);
        v19 = *(a2 + 360);
      }

      for (; v18 != v19; v18 += 4)
      {
        (*(*a1 + 128))(a1, v18);
      }
    }
  }
}

void sub_23EF7E2D0(uint64_t a1, uint64_t *a2)
{
  v7 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2);
  (*(*a1 + 120))(a1, &v7);
  v4 = *a2;
  v5 = a2[1];
  v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a2) >> 2);
  if (v7 <= v6)
  {
    if (v7 < v6)
    {
      v5 = v4 + 12 * v7;
      a2[1] = v5;
    }
  }

  else
  {
    sub_23EF768B8(a2, v7 - v6);
    v4 = *a2;
    v5 = a2[1];
  }

  for (; v4 != v5; v4 += 12)
  {
    (*(*a1 + 128))(a1, v4);
    (*(*a1 + 128))(a1, v4 + 4);
    (*(*a1 + 128))(a1, v4 + 8);
  }
}

uint64_t sub_23EF7E424(_BYTE *a1, _DWORD **a2)
{
  if ((a1[12] & 2) != 0)
  {
    memset(__p, 0, sizeof(__p));
    (*(*a1 + 144))(a1, __p);
    operator new();
  }

  LODWORD(__p[0]) = 0;
  result = (*(*a1 + 104))(a1, __p);
  **a2 = __p[0];
  return result;
}

void sub_23EF7E548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  a17 = 0;
  sub_23F302A54(&a17, v17);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23EF7E59C(uint64_t a1, uint64_t *a2)
{
  v7 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2);
  (*(*a1 + 120))(a1, &v7);
  v4 = *a2;
  v5 = a2[1];
  v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a2) >> 2);
  if (v7 <= v6)
  {
    if (v7 < v6)
    {
      v5 = v4 + 12 * v7;
      a2[1] = v5;
    }
  }

  else
  {
    sub_23EF76F50(a2, v7 - v6);
    v4 = *a2;
    v5 = a2[1];
  }

  for (; v4 != v5; v4 += 12)
  {
    (*(*a1 + 104))(a1, v4);
    (*(*a1 + 104))(a1, v4 + 4);
    (*(*a1 + 104))(a1, v4 + 8);
  }
}

__n64 sub_23EF7E6F0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 < 2)
  {
    memset(v9, 0, 24);
    (*(*a1 + 128))(a1, v9);
    (*(*a1 + 128))(a1, v9 + 4);
    (*(*a1 + 128))(a1, v9 + 8);
    (*(*a1 + 128))(a1, v9 | 0xC);
    (*(*a1 + 128))(a1, &v9[1]);
    (*(*a1 + 128))(a1, &v9[1] + 4);
    v7 = v9[0];
    v8 = *(v9 + 12);
    HIDWORD(v7) = HIDWORD(v9[0]);
    *a2 = v7;
    result.n64_u32[0] = vdup_lane_s32(v8, 1).u32[0];
    result.n64_u32[1] = DWORD1(v9[1]);
    *(a2 + 16) = result;
  }

  else
  {
    (*(*a1 + 128))(a1, a2);
    (*(*a1 + 128))(a1, a2 + 4);
    (*(*a1 + 128))(a1, a2 + 8);
    (*(*a1 + 128))(a1, a2 + 12);
    (*(*a1 + 128))(a1, a2 + 16);
    v5 = *(*a1 + 128);

    v5(a1, a2 + 20);
  }

  return result;
}

void sub_23EF7E98C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  operator new();
}

void sub_23EF7EABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(*v9 + 8))(v9);
  sub_23EF3AE8C(&a9);
  _Unwind_Resume(a1);
}

void sub_23EF7EAF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23EF7FB38(v10);
  MEMORY[0x245CACD00](v9, 0x10B3C406BFE9A7DLL);
  sub_23EF3AE8C(&a9);
  _Unwind_Resume(a1);
}

void *sub_23EF7EB40(void *a1)
{
  *a1 = &unk_2851791E0;
  sub_23EF44860((a1 + 6));
  result = a1;
  a1[1] = &unk_285179228;
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

void sub_23EF7EC00(void *a1)
{
  *a1 = &unk_2851791E0;
  sub_23EF44860((a1 + 6));
  a1[1] = &unk_285179228;
  v2 = a1[3];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x245CACD00);
}

void sub_23EF7ECDC(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E395AB0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E395AB0))
    {
      sub_23EF7FE38();
    }
  }

  (*(*(a1 + 8) + 24))(__p, a1 + 8);
  sub_23EF44334(&unk_27E395B18, "{", __p, ",");
}

void sub_23EF7EDD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF7EDEC(uint64_t a1@<X8>)
{
  *(a1 + 23) = 8;
  strcpy(a1, "cv3d.viz");
  *(a1 + 24) = 7;
}

void *sub_23EF7EE68(void *result)
{
  *result = &unk_285179228;
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

void *sub_23EF7EEFC(void *a1)
{
  *a1 = &unk_2851791E0;
  sub_23EF44860((a1 + 6));
  result = a1;
  a1[1] = &unk_285179228;
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

void sub_23EF7EFBC(void *a1)
{
  *a1 = &unk_2851791E0;
  sub_23EF44860((a1 + 6));
  a1[1] = &unk_285179228;
  v2 = a1[3];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x245CACD00);
}

void sub_23EF7F090()
{
  if ((atomic_load_explicit(&qword_27E395AA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E395AA8))
  {
    sub_23EF7FBCC();
  }

  v2 = -1;
  if (byte_27E395B17 < 0)
  {
    sub_23EF34EA4(&v0, xmmword_27E395B00, *(&xmmword_27E395B00 + 1));
  }

  else
  {
    v0 = xmmword_27E395B00;
    v1 = unk_27E395B10;
  }

  v2 = 1;
  __p = &v0;
  v4 = "{";
  v5[0] = &v0;
  v5[1] = "{";
  v5[2] = "{";
  sub_23EF4248C(v5, &v0);
  operator new();
}

void sub_23EF7F490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  __cxa_guard_abort(&qword_27E395AA0);
  v27 = *(v25 - 56);
  *(v25 - 56) = 0;
  if (v27)
  {
    sub_23F302A54(v25 - 56, v27);
    sub_23EF41D10(&a9);
    _Unwind_Resume(a1);
  }

  sub_23EF41D10(&a9);
  _Unwind_Resume(a1);
}

void sub_23EF7F57C(uint64_t a1@<X8>)
{
  *(a1 + 23) = 15;
  strcpy(a1, "unknown_package");
  *(a1 + 24) = 0;
}

void sub_23EF7F5A8(void *a1)
{
  *a1 = &unk_285179228;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23EF7F650(float ***a1, float ***lpsrc)
{
  v4 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28517BF90, &unk_285179248, 0);
  if (result)
  {
    if (a1 == lpsrc)
    {
      return 1;
    }

    else
    {

      return sub_23F05D2C4(a1 + 1, (result + 8));
    }
  }

  return result;
}

void sub_23EF7F6F0()
{
  if ((atomic_load_explicit(&qword_27E395AA0, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_27E395AA0))
  {
  }

  else
  {
    sub_23F302BD0("cv3d::kit::viz::TriMesh]", 0x17uLL, &xmmword_27E395AE8);
    __cxa_guard_release(&qword_27E395AA0);
  }

  sub_23EF7F7AC();
}

void sub_23EF7F7AC()
{
  v2 = -1;
  if (byte_27E395AFF < 0)
  {
    sub_23EF34EA4(&v0, xmmword_27E395AE8, *(&xmmword_27E395AE8 + 1));
  }

  else
  {
    v0 = xmmword_27E395AE8;
    v1 = unk_27E395AF8;
  }

  v2 = 1;
  v3 = &v0;
  v4 = "{";
  v5[0] = &v0;
  v5[1] = "{";
  v5[2] = "{";
  sub_23EF4248C(v5, &v0);
  operator new();
}

void sub_23EF7FAEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_23EF41D10(&a9);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x23EF7FADCLL);
}

void sub_23EF7FB10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v18 = a17;
  a17 = 0;
  if (v18)
  {
    sub_23F302A54(&a17, v18);
    sub_23EF41D10(&a9);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x23EF7FADCLL);
}

void *sub_23EF7FB38(void *result)
{
  *result = &unk_285179228;
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

void sub_23EF7FDC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void **a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_23EF3291C(&a16);
  if (*(v24 - 25) < 0)
  {
    operator delete(*(v24 - 48));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23EF7FE38()
{
  v1 = *MEMORY[0x277D85DE8];
  v0[23] = 16;
  strcpy(v0, "viz::PackageData");
  operator new();
}

void sub_23EF80070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
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

BOOL sub_23EF80124(void *a1, uint64_t *a2)
{
  v22[0] = a1;
  v22[1] = a1 + 4;
  v22[2] = a1 + 5;
  v22[3] = a1 + 9;
  v22[4] = a1 + 10;
  v22[5] = a1 + 14;
  v22[6] = a1 + 15;
  v22[7] = a1 + 19;
  v22[8] = a1 + 20;
  v22[9] = a1 + 24;
  v22[10] = a1 + 28;
  v22[11] = a1 + 32;
  v22[12] = a1 + 36;
  v23 = (a1 + 40);
  v24 = a1 + 87;
  v25 = a1 + 44;
  v18[0] = a2;
  v18[1] = a2 + 4;
  v18[2] = a2 + 5;
  v18[3] = a2 + 9;
  v18[4] = a2 + 10;
  v18[5] = a2 + 14;
  v18[6] = a2 + 15;
  v18[7] = a2 + 19;
  v18[8] = a2 + 20;
  v18[9] = a2 + 24;
  v18[10] = a2 + 28;
  v18[11] = a2 + 32;
  v18[12] = a2 + 36;
  v19 = a2 + 40;
  v20 = a2 + 87;
  v21 = a2 + 44;
  if (!sub_23EF80334(&v26, v22, v18))
  {
    return 0;
  }

  v2 = *(v23 + 24);
  v3 = v2 == *(v19 + 24);
  if (v2 == *(v19 + 24) && *(v23 + 24))
  {
    v4 = *v23 == *v19;
    if (*v23 == *v19)
    {
      v5 = v23[1];
      v6 = *(v19 + 1);
      v4 = v5 == v6;
      if (v5 == v6)
      {
        v4 = v23[2] == *(v19 + 2);
      }
    }

    if (!v4)
    {
      return 0;
    }

    v7 = v23[3];
    v8 = *(v19 + 3);
    v3 = v7 == v8;
    if (v7 == v8)
    {
      v9 = v23[4];
      v10 = *(v19 + 4);
      v3 = v9 == v10;
      if (v9 == v10)
      {
        v3 = v23[5] == *(v19 + 5);
      }
    }
  }

  if (!v3)
  {
    return 0;
  }

  if (*v24 != *v20)
  {
    return 0;
  }

  v12 = *v25;
  v11 = v25[1];
  v13 = *v21;
  if (v11 - *v25 != v21[1] - *v21)
  {
    return 0;
  }

  if (v12 == v11)
  {
    return 1;
  }

  v14 = v12 + 4;
  do
  {
    v15 = *v13++;
    result = *(v14 - 4) == v15;
    v17 = *(v14 - 4) != v15 || v14 == v11;
    v14 += 4;
  }

  while (!v17);
  return result;
}

BOOL sub_23EF80334(uint64_t a1, void **a2, uint64_t **a3)
{
  if (!sub_23EF804A8(&v20, a2, a3))
  {
    return 0;
  }

  v6 = *a2[10];
  v5 = a2[10][1];
  v7 = *a3[10];
  if (v5 - v6 != a3[10][1] - v7)
  {
    return 0;
  }

  if (v6 != v5)
  {
    while (*v6 == *v7)
    {
      v6 += 8;
      ++v7;
      if (v6 == v5)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

LABEL_6:
  v9 = *a2[11];
  v8 = a2[11][1];
  v10 = *a3[11];
  if (v8 - v9 != a3[11][1] - v10)
  {
    return 0;
  }

  if (v9 != v8)
  {
    v11 = (v10 + 4);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v9 == v12;
      if (*v9 == v12)
      {
        v13 = v9[1] == *v11;
      }

      if (!v13)
      {
        return 0;
      }

      v9 += 2;
      v11 += 2;
    }

    while (v9 != v8);
  }

  v15 = *a2[12];
  v14 = a2[12][1];
  v16 = *a3[12];
  if (v14 - v15 != a3[12][1] - v16)
  {
    return 0;
  }

  if (v15 == v14)
  {
    return 1;
  }

  do
  {
    v17 = *v15 ^ *v16 | (*(v15 + 8) ^ *(v16 + 8));
    result = v17 == 0;
    v15 += 12;
    v16 += 12;
    if (v17)
    {
      v19 = 1;
    }

    else
    {
      v19 = v15 == v14;
    }
  }

  while (!v19);
  return result;
}

BOOL sub_23EF804A8(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v4 = **a2;
  v3 = *(*a2 + 8);
  v5 = **a3;
  if (v3 - v4 != (*a3)[1] - v5)
  {
    return 0;
  }

  if (v4 != v3)
  {
    v6 = (v5 + 4);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v4 == v7;
      if (*v4 == v7)
      {
        v9 = v4[1];
        v8 = v9 == *v6;
        if (v9 == *v6)
        {
          v8 = v4[2] == v6[1];
        }
      }

      if (!v8)
      {
        return 0;
      }

      v4 += 3;
      v6 += 3;
    }

    while (v4 != v3);
  }

  if (**(a2 + 8) != *a3[1])
  {
    return 0;
  }

  v11 = **(a2 + 16);
  v10 = *(*(a2 + 16) + 8);
  v12 = *a3[2];
  if (v10 - v11 != a3[2][1] - v12)
  {
    return 0;
  }

  if (v11 != v10)
  {
    v13 = (v12 + 4);
    do
    {
      v14 = *(v13 - 1);
      v15 = *v11 == v14;
      if (*v11 == v14)
      {
        v16 = v11[1];
        v15 = v16 == *v13;
        if (v16 == *v13)
        {
          v15 = v11[2] == v13[1];
        }
      }

      if (!v15)
      {
        return 0;
      }

      v11 += 3;
      v13 += 3;
    }

    while (v11 != v10);
  }

  if (**(a2 + 24) != *a3[3])
  {
    return 0;
  }

  v18 = **(a2 + 32);
  v17 = *(*(a2 + 32) + 8);
  v19 = *a3[4];
  if (v17 - v18 != a3[4][1] - v19)
  {
    return 0;
  }

  if (v18 != v17)
  {
    v20 = (v19 + 4);
    do
    {
      v21 = *(v20 - 1);
      v22 = *v18 == v21;
      if (*v18 == v21)
      {
        v23 = v18[1];
        v22 = v23 == *v20;
        if (v23 == *v20)
        {
          v22 = v18[2] == v20[1];
        }
      }

      if (!v22)
      {
        return 0;
      }

      v18 += 3;
      v20 += 3;
    }

    while (v18 != v17);
  }

  if (**(a2 + 40) != *a3[5])
  {
    return 0;
  }

  v24 = *(a2 + 48);
  v25 = *v24;
  v26 = *(v24 + 8) - *v24;
  if (v26 != a3[6][1] - *a3[6])
  {
    return 0;
  }

  if (memcmp(v25, *a3[6], v26))
  {
    return 0;
  }

  if (**(a2 + 56) != *a3[7])
  {
    return 0;
  }

  v29 = *(a2 + 64);
  v30 = a3[8];
  v31 = *(v29 + 8) - *v29;
  if (v31 != v30[1] - *v30)
  {
    return 0;
  }

  if (memcmp(*v29, *v30, v31))
  {
    return 0;
  }

  v33 = **(a2 + 72);
  v32 = *(*(a2 + 72) + 8);
  v34 = *a3[9];
  if (v32 - v33 != a3[9][1] - v34)
  {
    return 0;
  }

  if (v33 == v32)
  {
    return 1;
  }

  do
  {
    v35 = *v33 ^ *v34 | (*(v33 + 8) ^ *(v34 + 8));
    result = v35 == 0;
    v33 += 12;
    v34 += 12;
    if (v35)
    {
      v37 = 1;
    }

    else
    {
      v37 = v33 == v32;
    }
  }

  while (!v37);
  return result;
}

void sub_23EF80774(uint64_t a1, uint64_t a2)
{
  if (**(a1 + 40) <= 1u)
  {
    v4 = *(a1 + 88);
    *(a1 + 72) = "info";
    *(a1 + 80) = 4;
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
    *(a1 + 96) = 6;
    *(a1 + 100) = 1;
    *(a1 + 88) = 0;
  }

  else
  {
    v13 = 6;
    v10 = sub_23F2E72C0(a1);
    v11 = *v10;
    *v10 = 6;
    v12 = v10[1];
    v10[1] = v13;
    v13 = v12;
    sub_23F0655DC(&v13, v11);
  }

  sub_23EF54B14(a1, a2 + 16);
}

void sub_23EF80998(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = *(a1 + 24);
  if (*(v6 + 40) == 1)
  {
    i = (v6 + 16);
    sub_23F2FD25C(&i, 6u);
  }

  else
  {
    sub_23F2FD4DC(&i, (v6 + 8));
  }

  sub_23F2F887C(*(a1 + 24));
  sub_23EF57C0C(a1, a2 + 16, 6u);
  v7 = *(a1 + 24);
  v8 = *(v7[11] - 8);
  sub_23F2F866C(v7 + 6, v7[2] - v8 - 9);
  v9 = v7[6];
  if (v9)
  {
    memmove((v7[3] + v8), v7[7], v9);
  }

  v7[6] = 0;
  v10 = v7[10];
  v11 = v7[11] - 8;
  v7[11] = v11;
  if (v10 == v11)
  {
    v12 = *v7;
    v14 = v7[2];
    v13 = v7[3];
    std::ostream::write();
    if (*(v7 + 40) == 1)
    {
      free(v7[3]);
      *(v7 + 40) = 0;
    }
  }

  sub_23EF71240(&i, a1, a2 + 192);
  if (a3 >= 3)
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 584) - *(a2 + 576)) >> 3);
    v16 = *(a1 + 24);
    if (*(v16 + 40) == 1)
    {
      i = (v16 + 16);
      sub_23F2FDC5C(&i, v15);
      v17 = *(a2 + 576);
      v18 = *(a2 + 584);
      v19 = *(a1 + 24);
      if (*(v19 + 40) != 1)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_23F2FDF70((v16 + 8));
      v17 = *(a2 + 576);
      v18 = *(a2 + 584);
      v19 = *(a1 + 24);
      if (*(v19 + 40) != 1)
      {
LABEL_12:
        while (v17 != v18)
        {
          sub_23F2FE7C4((v19 + 8), v17);
          v17 += 3;
        }

        return;
      }
    }

    for (i = (v19 + 16); v17 != v18; v17 += 3)
    {
      sub_23F2FE3A8(&i, v17);
    }
  }
}

void sub_23EF80B74(uint64_t a1, uint64_t a2)
{
  if (**(a1 + 40) <= 1u)
  {
    v4 = *(a1 + 88);
    *(a1 + 72) = "info";
    *(a1 + 80) = 4;
    if ((v4 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_23F07903C(a1 + 48, (a1 + 40));
  v5 = sub_23F2E6C78(a1);
  *(a1 + 40) = v5;
  if (*(a1 + 88))
  {
    *(a1 + 88) = 0;
  }

  if (*v5 < 2u && ((*(a1 + 72) = "version", *(a1 + 80) = 7, *(a1 + 88) = 1, v6 = *(a1 + 72), v7 = *v6, v8 = *(v6 + 3), v7 == *"version") ? (v9 = v8 == *"sion") : (v9 = 0), v9))
  {
    *(a1 + 96) = 6;
    *(a1 + 100) = 1;
    *(a1 + 88) = 0;
  }

  else
  {
    v13 = 6;
    v10 = sub_23F2E6C78(a1);
    v11 = *v10;
    *v10 = 6;
    v12 = v10[1];
    v10[1] = v13;
    v13 = v12;
    sub_23F06357C(&v13, v11);
  }

  sub_23EF58E64(a1, a2 + 16);
}

void sub_23EF80D98(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a1 + 40))
  {
    v6 = *(a1 + 24);
    LOBYTE(v20[0]) = *(a1 + 32);
    sub_23EF2F9B0(v6, v20, 1);
  }

  MEMORY[0x245CAC910](*(a1 + 24), 6);
  ++*(a1 + 40);
  sub_23EF5A720(a1, a2 + 16, 6u);
  v7 = *(a1 + 34);
  if (*(a1 + 40))
  {
    v8 = *(a1 + 24);
    LOBYTE(v20[0]) = *(a1 + 32);
    sub_23EF2F9B0(v8, v20, 1);
  }

  v9 = *(a1 + 24);
  LOBYTE(v20[0]) = v7;
  sub_23EF2F9B0(v9, v20, 1);
  v10 = *(a1 + 40);
  *(a1 + 40) = v10 + 1;
  if (v10 != -1)
  {
    v11 = *(a1 + 24);
    LOBYTE(v20[0]) = *(a1 + 32);
    sub_23EF2F9B0(v11, v20, 1);
  }

  MEMORY[0x245CAC910](*(a1 + 24), 4);
  ++*(a1 + 40);
  sub_23EF6FE10(v20, a2 + 192);
  sub_23EF73434(a1, v20, 4u);
  sub_23EF4FC00(v20);
  v12 = *(a1 + 34);
  if (*(a1 + 40))
  {
    v13 = *(a1 + 24);
    LOBYTE(v20[0]) = *(a1 + 32);
    sub_23EF2F9B0(v13, v20, 1);
  }

  v14 = *(a1 + 24);
  LOBYTE(v20[0]) = v12;
  sub_23EF2F9B0(v14, v20, 1);
  v15 = *(a1 + 40) + 1;
  *(a1 + 40) = v15;
  if (a3 >= 3)
  {
    v16 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 584) - *(a2 + 576)) >> 3);
    if (v15)
    {
      v17 = *(a1 + 24);
      LOBYTE(v20[0]) = *(a1 + 32);
      sub_23EF2F9B0(v17, v20, 1);
    }

    MEMORY[0x245CAC960](*(a1 + 24), v16);
    ++*(a1 + 40);
    v18 = *(a2 + 576);
    for (i = *(a2 + 584); v18 != i; v18 += 24)
    {
      sub_23F2F45C4(a1, v18);
    }
  }
}

void *sub_23EF80F94(uint64_t a1, uint64_t a2, unsigned int a3)
{
  LODWORD(__src) = 6;
  sub_23F295368(a1 + 24, *(a1 + 32), &__src, &__src + 4, 4uLL);
  v6 = __src;
  sub_23F294D84(a1);
  sub_23EF5B8BC(a1, a2 + 16, v6);
  v7 = *(*(a1 + 56) - 8) + *(a1 + 24);
  *(v7 + 10) = *(a1 + 32) - v7 - 18;
  *(a1 + 56) -= 8;
  result = sub_23EF74258(&__src, a1, a2 + 192);
  if (a3 >= 3)
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 584) - *(a2 + 576)) >> 3);
    result = sub_23F295368(a1 + 24, *(a1 + 32), &v15, &__src, 8uLL);
    v9 = *(a2 + 576);
    for (i = *(a2 + 584); v9 != i; v9 += 24)
    {
      v11 = *(v9 + 23);
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v9 + 8);
      }

      __src = v11;
      sub_23F295368(a1 + 24, *(a1 + 32), &__src, &v17, 8uLL);
      v12 = *(v9 + 23);
      if (v12 >= 0)
      {
        v13 = v9;
      }

      else
      {
        v13 = *v9;
      }

      if (v12 >= 0)
      {
        v14 = *(v9 + 23);
      }

      else
      {
        v14 = *(v9 + 8);
      }

      result = sub_23F295368(a1 + 24, *(a1 + 32), v13, &v13[v14], v14);
    }
  }

  return result;
}

uint64_t *sub_23EF81100(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  v6 = a1[2];
  LODWORD(v11) = 6;
  (*(*a1 + 104))(a1, &v11);
  v7 = v11;
  if (v6 < 1)
  {
    sub_23EF5C460(a1, a2 + 16, v11);
    result = sub_23EF7487C(a1, a2 + 192);
    if (a3 < 3)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (v6 == 2)
  {
    LODWORD(v11) = 3;
    (*(*a1 + 104))(a1, &v11);
  }

  (*(*a1 + 16))(a1);
  sub_23EF5C460(a1, a2 + 16, v7);
  (*(*a1 + 24))(a1);
  result = sub_23EF7487C(a1, a2 + 192);
  if (a3 >= 3)
  {
LABEL_7:
    v11 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 584) - *(a2 + 576)) >> 3);
    result = (*(*a1 + 120))(a1, &v11);
    v9 = *(a2 + 576);
    for (i = *(a2 + 584); v9 != i; v9 += 24)
    {
      result = (*(*a1 + 144))(a1, v9);
    }
  }

  return result;
}

void sub_23EF812EC(void **a1, uint64_t a2, unsigned int a3)
{
  v6 = *a1;
  v10 = a1[1];
  v11 = 6;
  v6[13](a1, &v11);
  if (v10 < 1)
  {
    if (v11 < 3)
    {
      sub_23EF69318(&v11, a1, a2 + 16, v11);
    }

    else
    {
      sub_23EF69524(a1, a2 + 16, v11);
    }
  }

  else
  {
    sub_23EF68F0C(&v10, a1, a2 + 16, v11);
  }

  v7 = *a1;
  v10 = a1[1];
  v8 = v10;
  v11 = 4;
  v7[13](a1, &v11);
  if (v8 >= 1)
  {
    sub_23EF7D078(&v10, a1, (a2 + 192), v11);
    if (a3 < 3)
    {
      return;
    }

    goto LABEL_13;
  }

  v9 = (a2 + 192);
  if (v11 < 3)
  {
    sub_23EF7D43C(a1, v9, v11);
    if (a3 < 3)
    {
      return;
    }

    goto LABEL_13;
  }

  sub_23EF7DB54(a1, v9, v11);
  if (a3 >= 3)
  {
LABEL_13:
    sub_23EF6A390(a1, (a2 + 576));
  }
}

uint64_t sub_23EF81440(uint64_t a1, uint64_t a2, float *a3)
{
  v10 = a2;
  v11 = "{";
  v12 = a2;
  v13 = "{";
  v14 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_6;
  }

  v15 = &v10;
  (*(&off_2851790B0 + v3))(&v15);
  sub_23EF8158C(&v10, a2, a3);
  v10 = a2;
  v11 = ",";
  v12 = a2;
  v13 = ",";
  v14 = ",";
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    goto LABEL_6;
  }

  v15 = &v10;
  (*(&off_2851790B0 + v6))(&v15, a2);
  sub_23EF8158C(&v10, a2, a3 + 1);
  v10 = a2;
  v11 = ",";
  v12 = a2;
  v13 = ",";
  v14 = ",";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_6;
  }

  v15 = &v10;
  (*(&off_2851790B0 + v7))(&v15, a2);
  sub_23EF8158C(&v10, a2, a3 + 2);
  v10 = a2;
  v11 = "}";
  v12 = a2;
  v13 = "}";
  v14 = "}";
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
LABEL_6:
    sub_23EF41D6C();
  }

  v15 = &v10;
  return (*(&off_2851790B0 + v8))(&v15, a2);
}

void sub_23EF8158C(uint64_t a1, uint64_t a2, float *a3)
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

  v8 = &v6[-1].__r_.__value_.__r.__words[2] + 7;
  do
  {
    if (!size)
    {
      size = -1;
      if ((*(&v19.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        goto LABEL_14;
      }

LABEL_11:
      if (size != HIBYTE(v19.__r_.__value_.__r.__words[2]) - 1)
      {
        v5 = &v19;
        goto LABEL_17;
      }

LABEL_15:
      v20 = a2;
      p_p = &v19;
      v22 = a2;
      v23 = &v19;
      v24 = &v19;
      v10 = *(a2 + 24);
      if (v10 == -1)
      {
        sub_23EF41D6C();
      }

      goto LABEL_16;
    }

    v9 = v8[size--];
  }

  while (v9 == 48);
  if ((*(&v19.__r_.__value_.__s + 23) & 0x80) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  if (size == v19.__r_.__value_.__l.__size_ - 1)
  {
    goto LABEL_15;
  }

LABEL_17:
  if (strtof(v5, 0) != *a3)
  {
    v20 = a2;
    p_p = &v19;
    v22 = a2;
    v23 = &v19;
    v24 = &v19;
    v10 = *(a2 + 24);
    if (v10 == -1)
    {
      sub_23EF41D6C();
    }

LABEL_16:
    __p = &v20;
    (off_285179260[v10])(&__p, a2);
    goto LABEL_38;
  }

  v11 = SHIBYTE(v19.__r_.__value_.__r.__words[2]);
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v19;
  }

  else
  {
    v12 = v19.__r_.__value_.__r.__words[0];
  }

  v13 = 1;
  if (v12->__r_.__value_.__s.__data_[size] == 46)
  {
    v13 = 2;
  }

  v14 = v13 + size;
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v11 = v19.__r_.__value_.__l.__size_;
  }

  if (v11 >= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v11;
  }

  if (v15 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  if (v15 >= 0x17)
  {
    operator new();
  }

  v18 = v15;
  if (v15)
  {
    memmove(&__p, v12, v15);
  }

  *(&__p + v15) = 0;
  v20 = a2;
  p_p = &__p;
  v22 = a2;
  v23 = &__p;
  v24 = &__p;
  v16 = *(a2 + 24);
  if (v16 == -1)
  {
    sub_23EF41D6C();
  }

  v25 = &v20;
  (off_285178F20[v16])(&v25, a2);
  if ((v18 & 0x80000000) == 0)
  {
LABEL_38:
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_41;
  }

  operator delete(__p);
  if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return;
  }

LABEL_41:
  operator delete(v19.__r_.__value_.__l.__data_);
}

void sub_23EF8180C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if ((a20 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t **sub_23EF81878(uint64_t **result)
{
  v1 = **result;
  v2 = (*result)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    result = (off_285178F38[v3])(&v5, v1);
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

uint64_t sub_23EF81924(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_23EF81B48(a2, v3);
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

void sub_23EF819C4(uint64_t *a1, uint64_t a2)
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
    (off_285178F38[v7])(&v10, v2);
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

void sub_23EF81B04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EF81B48(uint64_t a1, uint64_t a2)
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

void sub_23EF81C88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3522C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23EF81C9C(uint64_t a1, uint64_t a2, unsigned int *a3)
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
  (*(&off_2851790B0 + v3))(&v13);
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
  (off_285178F20[v6])(&v19, a2);
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
  (*(&off_2851790B0 + v7))(&v13, a2);
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
  (off_285178F20[v8])(&v19, a2);
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
  (*(&off_2851790B0 + v9))(&v13, a2);
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
  (off_285178F20[v10])(&v19, a2);
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
  return (*(&off_2851790B0 + v11))(&v13, a2);
}

void sub_23EF81EBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EF81EE0(uint64_t a1, uint64_t a2, unsigned int *a3)
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
  (*(&off_2851790B0 + v3))(&v11);
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
  (off_285178F20[v6])(&v17, a2);
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
  (*(&off_2851790B0 + v7))(&v11, a2);
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
  (off_285178F20[v8])(&v17, a2);
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
  return (*(&off_2851790B0 + v9))(&v11, a2);
}

void sub_23EF8207C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EF820A0(uint64_t a1, uint64_t a2, float *a3)
{
  v9 = a2;
  v10 = "{";
  v11 = a2;
  v12 = "{";
  v13 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_5;
  }

  v14 = &v9;
  (*(&off_2851790B0 + v3))(&v14);
  sub_23EF8158C(&v9, a2, a3);
  v9 = a2;
  v10 = ",";
  v11 = a2;
  v12 = ",";
  v13 = ",";
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    goto LABEL_5;
  }

  v14 = &v9;
  (*(&off_2851790B0 + v6))(&v14, a2);
  sub_23EF8158C(&v9, a2, a3 + 1);
  v9 = a2;
  v10 = "}";
  v11 = a2;
  v12 = "}";
  v13 = "}";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
LABEL_5:
    sub_23EF41D6C();
  }

  v14 = &v9;
  return (*(&off_2851790B0 + v7))(&v14, a2);
}

void sub_23EF821A4(uint64_t a1, void **a2, float *a3)
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
  if (strtof(v5, 0) != *a3)
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

void sub_23EF823AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_23EF82418(const void **a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_23F302E84("3U]", 2, &v10);
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

void sub_23EF824FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_23EF3291C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23EF82534(uint64_t a1, char *a2, _OWORD *a3)
{
  v3[33] = *MEMORY[0x277D85DE8];
  sub_23EF827F0(v3, a2, a3);
  v3[0] = &unk_285178A40;
  operator new();
}

void sub_23EF82770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(*v9 + 8))(v9);
  sub_23EF82AF8(&a9);
  _Unwind_Resume(a1);
}

void sub_23EF827AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MEMORY[0x245CACD00](v9, 0x10B3C404AAF6798);
  sub_23EF82AF8(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_23EF827F0(uint64_t a1, char *a2, _OWORD *a3)
{
  *a1 = &unk_285178AB8;
  *(a1 + 8) = &unk_285178B00;
  v4 = *a2;
  *(a1 + 24) = 0;
  *(a1 + 16) = v4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v6 = *(a2 + 1);
  v5 = *(a2 + 2);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  *(a1 + 48) = *a3;
  sub_23EF432A8(a1 + 64, a3 + 1);
  return a1;
}

void sub_23EF828E4(_Unwind_Exception *exception_object)
{
  *v4 = v2;
  v6 = *v3;
  if (*v3)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_23EF8290C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_285178AB8;
  *(a1 + 8) = &unk_285178B00;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  v2 = *(a2 + 48);
  *(a1 + 64) = 0;
  *(a1 + 48) = v2;
  *(a1 + 88) = 0;
  if (*(a2 + 88) == 1)
  {
    v3 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v3;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 64) = 0;
    *(a1 + 88) = 1;
  }

  result = *(a2 + 96);
  v5 = *(a2 + 112);
  *(a1 + 120) = 0;
  *(a1 + 112) = v5;
  *(a1 + 96) = result;
  *(a1 + 144) = 0;
  if (*(a2 + 144) != 1)
  {
    *(a1 + 160) = 0;
    v6 = (a1 + 160);
    *(a1 + 208) = 0;
    if (*(a2 + 208) != 1)
    {
      goto LABEL_5;
    }

LABEL_8:
    _X2 = 0;
    _X3 = 0;
    result = *(a2 + 160);
    v6[1].n128_u64[0] = *(a2 + 176);
    *v6 = result;
    *(a2 + 168) = 0;
    *(a2 + 176) = 0;
    *(a2 + 160) = 0;
    __asm { CASPAL          X2, X3, X2, X3, [X8] }

    *(a1 + 192) = _X2;
    *(a1 + 200) = 0;
    *(a1 + 208) = 1;
    *(a1 + 224) = 0;
    v7 = (a1 + 224);
    *(a1 + 248) = 0;
    if (*(a2 + 248) != 1)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  result = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = result;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a2 + 120) = 0;
  *(a1 + 144) = 1;
  *(a1 + 160) = 0;
  v6 = (a1 + 160);
  *(a1 + 208) = 0;
  if (*(a2 + 208) == 1)
  {
    goto LABEL_8;
  }

LABEL_5:
  *(a1 + 224) = 0;
  v7 = (a1 + 224);
  *(a1 + 248) = 0;
  if (*(a2 + 248) != 1)
  {
LABEL_6:
    *a1 = &unk_285178A40;
    return result;
  }

LABEL_9:
  *v7 = 0;
  v7[1] = 0;
  v7[2] = 0;
  result = *(a2 + 224);
  *(a1 + 224) = result;
  *(a1 + 240) = *(a2 + 240);
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  *(a1 + 248) = 1;
  *a1 = &unk_285178A40;
  return result;
}

void *sub_23EF82AF8(void *a1)
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

uint64_t sub_23EF82B6C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
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

void sub_23EF82D88(_Unwind_Exception *exception_object)
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

uint64_t sub_23EF82E08@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
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

void sub_23EF83024(_Unwind_Exception *exception_object)
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

void sub_23EF830A4(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  sub_23EF83730(v3, a2);
  sub_23EF831D4(a1, v3);
}

void sub_23EF831BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF47B34(va);
  _Unwind_Resume(a1);
}

void sub_23EF831D4(uint64_t a1, uint64_t a2)
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

uint64_t sub_23EF83730(uint64_t a1, uint64_t a2)
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

void sub_23EF83884(_Unwind_Exception *exception_object)
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

void sub_23EF8390C(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  sub_23EF83D30(v3, a2);
  sub_23EF83A3C(a1, v3);
}

void sub_23EF83A24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF47B34(va);
  _Unwind_Resume(a1);
}

void sub_23EF83A3C(uint64_t a1, uint64_t a2)
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

uint64_t sub_23EF83D30(uint64_t a1, uint64_t a2)
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

void sub_23EF83E84(_Unwind_Exception *exception_object)
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

void sub_23EF83F0C(uint64_t a1, uint64_t a2)
{
  v4[0] = *a2;
  v4[8] = *(a2 + 8);
  v6 = 0;
  v7 = 0;
  __p = 0;
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v8[0] = "value_type";
  v8[1] = 10;
  v8[2] = v4;
  sub_23EF83FFC(a1, v8);
}

void sub_23EF83FE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF83FFC(uint64_t a1, uint64_t a2)
{
  if (**(a1 + 40) <= 1u)
  {
    v2 = *(a1 + 88);
    *(a1 + 72) = *a2;
    if ((v2 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v3 = *(a2 + 16);
  v4 = 0;
  sub_23EF848B8();
}

void sub_23EF840F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF84110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF84124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF84138(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        v4 = *sub_23F2F22C4(a2 + 8);
        if (**(a3 + 40) >= 2u)
        {
          if ((*(a3 + 88) & 1) == 0)
          {
            goto LABEL_94;
          }
        }

        else
        {
          v11 = *(a3 + 88);
          *(a3 + 72) = "number";
          *(a3 + 80) = 6;
          if ((v11 & 1) == 0)
          {
            *(a3 + 88) = 1;
          }
        }

        if (*(a3 + 80) != 7)
        {
          goto LABEL_94;
        }

        v28 = *(a3 + 72);
        v29 = *v28;
        v30 = *(v28 + 3);
        if (v29 != *"version" || v30 != *"sion")
        {
          goto LABEL_94;
        }

        return;
      }

      v4 = *sub_23F2F23B4(a2 + 8);
      if (**(a3 + 40) >= 2u)
      {
        if ((*(a3 + 88) & 1) == 0)
        {
          goto LABEL_94;
        }
      }

      else
      {
        v9 = *(a3 + 88);
        *(a3 + 72) = "number";
        *(a3 + 80) = 6;
        if ((v9 & 1) == 0)
        {
          *(a3 + 88) = 1;
        }
      }

      if (*(a3 + 80) != 7)
      {
        goto LABEL_94;
      }

      v20 = *(a3 + 72);
      v21 = *v20;
      v22 = *(v20 + 3);
      if (v21 != *"version" || v22 != *"sion")
      {
        goto LABEL_94;
      }

      return;
    }

    if (a1 == 8)
    {
      v4 = *sub_23F2F24A4(a2 + 8);
      if (**(a3 + 40) >= 2u)
      {
        if ((*(a3 + 88) & 1) == 0)
        {
          goto LABEL_94;
        }
      }

      else
      {
        v13 = *(a3 + 88);
        *(a3 + 72) = "number";
        *(a3 + 80) = 6;
        if ((v13 & 1) == 0)
        {
          *(a3 + 88) = 1;
        }
      }

      if (*(a3 + 80) != 7)
      {
        goto LABEL_94;
      }

      v36 = *(a3 + 72);
      v37 = *v36;
      v38 = *(v36 + 3);
      if (v37 != *"version" || v38 != *"sion")
      {
        goto LABEL_94;
      }

      return;
    }

    if (a1 != 11)
    {
      if (a1 != 12)
      {
        goto LABEL_43;
      }

      v60 = *sub_23F2F2684(a2 + 8);
      if (**(a3 + 40) >= 2u)
      {
        if ((*(a3 + 88) & 1) == 0)
        {
          goto LABEL_101;
        }
      }

      else
      {
        v6 = *(a3 + 88);
        *(a3 + 72) = "number";
        *(a3 + 80) = 6;
        if ((v6 & 1) == 0)
        {
          *(a3 + 88) = 1;
        }
      }

      if (*(a3 + 80) == 7)
      {
        v46 = *(a3 + 72);
        v47 = *v46;
        v48 = *(v46 + 3);
        if (v47 == *"version" && v48 == *"sion")
        {
          return;
        }
      }

LABEL_101:
      sub_23F2E98F4(a3, &v60);
      return;
    }

    LODWORD(v60) = *sub_23F2F2594(a2 + 8);
    if (**(a3 + 40) >= 2u)
    {
      if ((*(a3 + 88) & 1) == 0)
      {
        goto LABEL_117;
      }
    }

    else
    {
      v15 = *(a3 + 88);
      *(a3 + 72) = "number";
      *(a3 + 80) = 6;
      if ((v15 & 1) == 0)
      {
        *(a3 + 88) = 1;
      }
    }

    if (*(a3 + 80) == 7)
    {
      v56 = *(a3 + 72);
      v57 = *v56;
      v58 = *(v56 + 3);
      if (v57 == *"version" && v58 == *"sion")
      {
        return;
      }
    }

LABEL_117:
    sub_23F2E96F0(a3, &v60);
    return;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      v7 = *sub_23F2F1CA0(a2 + 8);
      if (**(a3 + 40) >= 2u)
      {
        if ((*(a3 + 88) & 1) == 0)
        {
          goto LABEL_109;
        }
      }

      else
      {
        v10 = *(a3 + 88);
        *(a3 + 72) = "number";
        *(a3 + 80) = 6;
        if ((v10 & 1) == 0)
        {
          *(a3 + 88) = 1;
        }
      }

      if (*(a3 + 80) == 7)
      {
        v24 = *(a3 + 72);
        v25 = *v24;
        v26 = *(v24 + 3);
        if (v25 == *"version" && v26 == *"sion")
        {
          return;
        }
      }

      goto LABEL_109;
    }

    if (a1 == 1)
    {
      v7 = *sub_23F2F1F04(a2 + 8);
      if (**(a3 + 40) >= 2u)
      {
        if ((*(a3 + 88) & 1) == 0)
        {
          goto LABEL_109;
        }
      }

      else
      {
        v8 = *(a3 + 88);
        *(a3 + 72) = "number";
        *(a3 + 80) = 6;
        if ((v8 & 1) == 0)
        {
          *(a3 + 88) = 1;
        }
      }

      if (*(a3 + 80) == 7)
      {
        v16 = *(a3 + 72);
        v17 = *v16;
        v18 = *(v16 + 3);
        if (v17 == *"version" && v18 == *"sion")
        {
          return;
        }
      }

      goto LABEL_109;
    }

LABEL_43:

    sub_23F2F1304(a1);
  }

  if (a1 == 2)
  {
    v7 = *sub_23F2F1FF4(a2 + 8);
    if (**(a3 + 40) >= 2u)
    {
      if ((*(a3 + 88) & 1) == 0)
      {
        goto LABEL_109;
      }
    }

    else
    {
      v12 = *(a3 + 88);
      *(a3 + 72) = "number";
      *(a3 + 80) = 6;
      if ((v12 & 1) == 0)
      {
        *(a3 + 88) = 1;
      }
    }

    if (*(a3 + 80) == 7)
    {
      v32 = *(a3 + 72);
      v33 = *v32;
      v34 = *(v32 + 3);
      if (v33 == *"version" && v34 == *"sion")
      {
        *(a3 + 96) = v7;
        *(a3 + 100) = 1;
        *(a3 + 88) = 0;
        return;
      }
    }

    goto LABEL_109;
  }

  if (a1 == 3)
  {
    v7 = *sub_23F2F20E4(a2 + 8);
    if (**(a3 + 40) >= 2u)
    {
      if ((*(a3 + 88) & 1) == 0)
      {
        goto LABEL_109;
      }
    }

    else
    {
      v14 = *(a3 + 88);
      *(a3 + 72) = "number";
      *(a3 + 80) = 6;
      if ((v14 & 1) == 0)
      {
        *(a3 + 88) = 1;
      }
    }

    if (*(a3 + 80) == 7)
    {
      v50 = *(a3 + 72);
      v51 = *v50;
      v52 = *(v50 + 3);
      if (v51 == *"version" && v52 == *"sion")
      {
        return;
      }
    }

LABEL_109:
    v44 = 6;
    LOBYTE(v60) = 6;
    v61 = v7;
    v45 = sub_23F2E72C0(a3);
    goto LABEL_110;
  }

  if (a1 != 5)
  {
    goto LABEL_43;
  }

  v4 = *sub_23F2F21D4(a2 + 8);
  if (**(a3 + 40) >= 2u)
  {
    if (*(a3 + 88))
    {
      goto LABEL_89;
    }

LABEL_94:
    v44 = 5;
    LOBYTE(v60) = 5;
    v61 = v4;
    v45 = sub_23F2E72C0(a3);
LABEL_110:
    v54 = *v45;
    *v45 = v44;
    LOBYTE(v60) = v54;
    v55 = v45[1];
    v45[1] = v61;
    v61 = v55;
    sub_23F0655DC(&v61, v54);
    return;
  }

  v5 = *(a3 + 88);
  *(a3 + 72) = "number";
  *(a3 + 80) = 6;
  if ((v5 & 1) == 0)
  {
    *(a3 + 88) = 1;
  }

LABEL_89:
  if (*(a3 + 80) != 7)
  {
    goto LABEL_94;
  }

  v40 = *(a3 + 72);
  v41 = *v40;
  v42 = *(v40 + 3);
  if (v41 != *"version" || v42 != *"sion")
  {
    goto LABEL_94;
  }
}

void sub_23EF84AC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF84B04(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v23 = *MEMORY[0x277D85DE8];
  sub_23EF83730(v10, a2);
  sub_23EF57D3C(a1, v10, a3);
  if (v22 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v21;
      v7 = __p;
      if (v21 != __p)
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

      v21 = v5;
      operator delete(v7);
    }
  }

  if (v19 == 1 && v18 < 0)
  {
    operator delete(v17);
  }

  if (v16 == 1 && v15 < 0)
  {
    operator delete(v14);
  }

  if (v13 == 1 && v12 < 0)
  {
    operator delete(v11);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_23EF84C1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF47B34(va);
  _Unwind_Resume(a1);
}

void sub_23EF84C34(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v23 = *MEMORY[0x277D85DE8];
  sub_23EF83D30(v10, a2);
  sub_23EF84D64(a1, v10, a3);
  if (v22 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v21;
      v7 = __p;
      if (v21 != __p)
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

      v21 = v5;
      operator delete(v7);
    }
  }

  if (v19 == 1 && v18 < 0)
  {
    operator delete(v17);
  }

  if (v16 == 1 && v15 < 0)
  {
    operator delete(v14);
  }

  if (v13 == 1 && v12 < 0)
  {
    operator delete(v11);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_23EF84D4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF47B34(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23EF84D64(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = *(a1 + 24);
  if (*(v6 + 40) == 1)
  {
    v25[0] = (v6 + 16);
    sub_23F2FD25C(v25, 2u);
    sub_23F2F887C(*(a1 + 24));
    v7 = *(a1 + 24);
    if (*(v7 + 40) != 1)
    {
      goto LABEL_3;
    }

LABEL_7:
    v25[0] = (v7 + 16);
    sub_23F2FD5D0(v25, *(a2 + 8));
    v8 = *(a2 + 16);
    v26 = *(a2 + 16);
    v9 = *(a1 + 24);
    if (*(v9 + 40) != 1)
    {
      goto LABEL_4;
    }

LABEL_8:
    v25[0] = (v9 + 16);
    sub_23F2FC63C(v25, &v26);
    goto LABEL_11;
  }

  sub_23F2FD4DC(v25, (v6 + 8));
  sub_23F2F887C(*(a1 + 24));
  v7 = *(a1 + 24);
  if (*(v7 + 40) == 1)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_23F2FDB18((v7 + 8), *(a2 + 8));
  v8 = *(a2 + 16);
  v26 = *(a2 + 16);
  v9 = *(a1 + 24);
  if (*(v9 + 40) == 1)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v8 < 0)
  {
    LOBYTE(v25[0]) = -52;
    BYTE1(v25[0]) = v8;
  }

  else
  {
    LOBYTE(v25[0]) = v8;
  }

  v10 = *(v9 + 8);
  std::ostream::write();
LABEL_11:
  v11 = *(a1 + 24);
  v12 = *(v11[11] - 8);
  sub_23F2F866C(v11 + 6, v11[2] - v12 - 9);
  v13 = v11[6];
  if (v13)
  {
    memmove((v11[3] + v12), v11[7], v13);
  }

  v11[6] = 0;
  v14 = v11[10];
  v15 = v11[11] - 8;
  v11[11] = v15;
  if (v14 == v15)
  {
    v16 = *v11;
    v18 = v11[2];
    v17 = v11[3];
    std::ostream::write();
    if (*(v11 + 40) == 1)
    {
      free(v11[3]);
      *(v11 + 40) = 0;
    }
  }

  if (*(a2 + 48) == 1)
  {
    v26 = 1;
    v19 = *(a1 + 24);
    if (*(v19 + 40) == 1)
    {
      v25[0] = (v19 + 16);
      sub_23F2FC63C(v25, &v26);
      v20 = *(a1 + 24);
      if (*(v20 + 40) != 1)
      {
        goto LABEL_19;
      }
    }

    else
    {
      LOBYTE(v25[0]) = 1;
      v23 = *(v19 + 8);
      std::ostream::write();
      v20 = *(a1 + 24);
      if (*(v20 + 40) != 1)
      {
LABEL_19:
        result = sub_23F2FE7C4((v20 + 8), (a2 + 24));
        if (a3 < 4)
        {
          return result;
        }

        goto LABEL_28;
      }
    }

    v25[0] = (v20 + 16);
    result = sub_23F2FE3A8(v25, (a2 + 24));
    if (a3 >= 4)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v26 = 0;
    v22 = *(a1 + 24);
    if (*(v22 + 40) != 1)
    {
      LOBYTE(v25[0]) = 0;
      v24 = *(v22 + 8);
      result = std::ostream::write();
      if (a3 < 4)
      {
        return result;
      }

      goto LABEL_28;
    }

    v25[0] = (v22 + 16);
    result = sub_23F2FC63C(v25, &v26);
    if (a3 >= 4)
    {
LABEL_28:
      v25[0] = "custom_timestamp";
      v25[1] = 16;
      v25[2] = (a2 + 56);
      return sub_23EF5842C(a1, v25);
    }
  }

  return result;
}

void sub_23EF85030(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v8[0] = *a2;
  v8[8] = a2[8];
  v10 = 0;
  v11 = 0;
  __p = 0;
  v5 = *(a2 + 2);
  v4 = *(a2 + 3);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v12 = v3;
  v6 = *(a1 + 24);
  if (*(v6 + 40) == 1)
  {
    v13 = (v6 + 16);
    sub_23F2FC63C(&v13, &v12);
  }

  else
  {
    if ((v3 & 0x80) != 0)
    {
      LOBYTE(v13) = -52;
      BYTE1(v13) = v3;
    }

    else
    {
      LOBYTE(v13) = v3;
    }

    v7 = *(v6 + 8);
    std::ostream::write();
  }

  sub_23EF85168(v3, v8, a1);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }
}

void sub_23EF8514C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EF85168(int a1, uint64_t a2, uint64_t a3)
{
  v39 = *MEMORY[0x277D85DE8];
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        v14 = *sub_23F2F22C4(a2 + 8);
        v15 = *(a3 + 24);
        if (*(v15 + 40) == 1)
        {
          *v38 = v15 + 16;
          result = sub_23F2FC78C(v38, v14);
          goto LABEL_61;
        }

        v28 = *MEMORY[0x277D85DE8];

        return sub_23F2FCA5C((v15 + 8));
      }

      else
      {
        v11 = *sub_23F2F23B4(a2 + 8);
        v12 = *(a3 + 24);
        if (*(v12 + 40) == 1)
        {
          *v38 = v12 + 16;
          result = sub_23F2FCD34(v38, v11);
          goto LABEL_61;
        }

        v26 = *MEMORY[0x277D85DE8];

        return sub_23F2FD15C((v12 + 8));
      }
    }

    switch(a1)
    {
      case 8:
        v18 = *sub_23F2F24A4(a2 + 8);
        v19 = *(a3 + 24);
        if (*(v19 + 40) == 1)
        {
          *v38 = v19 + 16;
          result = sub_23F2FD5D0(v38, v18);
          goto LABEL_61;
        }

        v29 = *MEMORY[0x277D85DE8];

        return sub_23F2FDB18((v19 + 8), v18);
      case 11:
        v22 = *sub_23F2F2594(a2 + 8);
        LODWORD(v36) = v22;
        v23 = *(a3 + 24);
        if (*(v23 + 40) == 1)
        {
          *v38 = v23 + 16;
          result = sub_23F2FE06C(&v37, v38, &v36);
          goto LABEL_61;
        }

        v38[0] = -54;
        *&v38[1] = bswap32(v22);
        v34 = *(v23 + 8);
        break;
      case 12:
        v8 = *sub_23F2F2684(a2 + 8);
        v36 = v8;
        v9 = *(a3 + 24);
        if (*(v9 + 40) == 1)
        {
          *v38 = v9 + 16;
          result = sub_23F2FE154(&v37, v38, &v36);
          goto LABEL_61;
        }

        v38[0] = -53;
        *&v38[1] = bswap64(v8);
        v32 = *(v9 + 8);
        break;
      default:
        goto LABEL_33;
    }

LABEL_60:
    result = std::ostream::write();
    goto LABEL_61;
  }

  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_33;
      }

      v10 = sub_23F2F1F04(a2 + 8);
      v5 = *v10;
      LOWORD(v36) = *v10;
      v6 = *(a3 + 24);
      if (*(v6 + 40) == 1)
      {
        *v38 = v6 + 16;
        result = sub_23F2FCB5C(v38, &v36);
        goto LABEL_61;
      }

      if (v5 <= 0x7F)
      {
        goto LABEL_54;
      }

      if (v5 > 0xFF)
      {
        v38[0] = -51;
        *&v38[1] = __rev16(v5);
        v25 = *(v6 + 8);
        goto LABEL_60;
      }
    }

    else
    {
      v13 = sub_23F2F1CA0(a2 + 8);
      v5 = *v13;
      LOBYTE(v36) = *v13;
      v6 = *(a3 + 24);
      if (*(v6 + 40) == 1)
      {
        *v38 = v6 + 16;
        result = sub_23F2FC63C(v38, &v36);
        goto LABEL_61;
      }

      if ((v5 & 0x80000000) == 0)
      {
        goto LABEL_54;
      }
    }

    v27 = -52;
LABEL_53:
    v38[0] = v27;
    v38[1] = v5;
    v30 = *(v6 + 8);
    goto LABEL_60;
  }

  if (a1 == 2)
  {
    v16 = *sub_23F2F1FF4(a2 + 8);
    v17 = *(a3 + 24);
    if (*(v17 + 40) == 1)
    {
      *v38 = v17 + 16;
      result = sub_23F2FD25C(v38, v16);
    }

    else
    {
      result = sub_23F2FD4DC(v38, (v17 + 8));
    }

    goto LABEL_61;
  }

  if (a1 != 3)
  {
    if (a1 == 5)
    {
      v4 = sub_23F2F21D4(a2 + 8);
      v5 = *v4;
      LOBYTE(v36) = *v4;
      v6 = *(a3 + 24);
      if (*(v6 + 40) == 1)
      {
        *v38 = v6 + 16;
        result = sub_23F2FC4E8(v38, &v36);
LABEL_61:
        v35 = *MEMORY[0x277D85DE8];
        return result;
      }

      if (v5 <= -33)
      {
        v27 = -48;
        goto LABEL_53;
      }

LABEL_54:
      v38[0] = v5;
      v31 = *(v6 + 8);
      goto LABEL_60;
    }

LABEL_33:
    v24 = *MEMORY[0x277D85DE8];

    sub_23F2F1304(a1);
  }

  v20 = *sub_23F2F20E4(a2 + 8);
  v21 = *(a3 + 24);
  if (*(v21 + 40) == 1)
  {
    *v38 = v21 + 16;
    result = sub_23F2FDC5C(v38, v20);
    goto LABEL_61;
  }

  v33 = *MEMORY[0x277D85DE8];

  return sub_23F2FDF70((v21 + 8));
}

void sub_23EF85628(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  sub_23EF83730(v3, a2);
  sub_23EF85758(a1, v3);
}

void sub_23EF85740(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF47B34(va);
  _Unwind_Resume(a1);
}

void sub_23EF85758(uint64_t a1, uint64_t a2)
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

  sub_23F07903C(a1 + 48, (a1 + 40));
  v5 = sub_23F2E6C78(a1);
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
    v10 = sub_23F2E6C78(a1);
    v11 = *v10;
    *v10 = 6;
    v12 = v10[1];
    v10[1] = v13;
    v13 = v12;
    sub_23F06357C(&v13, v11);
  }

  sub_23EF594F0(a1, (a2 + 8));
}

void sub_23EF85CB4(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  sub_23EF83D30(v3, a2);
  sub_23EF85DE4(a1, v3);
}

void sub_23EF85DCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF47B34(va);
  _Unwind_Resume(a1);
}

void sub_23EF85DE4(uint64_t a1, uint64_t a2)
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

  sub_23F07903C(a1 + 48, (a1 + 40));
  v5 = sub_23F2E6C78(a1);
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
    v10 = sub_23F2E6C78(a1);
    v11 = *v10;
    *v10 = 6;
    v12 = v10[1];
    v10[1] = v13;
    v13 = v12;
    sub_23F06357C(&v13, v11);
  }

  sub_23EF594F0(a1, (a2 + 8));
}

void sub_23EF860D8(uint64_t a1, uint64_t a2)
{
  v4[0] = *a2;
  v4[8] = *(a2 + 8);
  v6 = 0;
  v7 = 0;
  __p = 0;
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v8[0] = "value_type";
  v8[1] = 10;
  v8[2] = v4;
  sub_23EF861C8(a1, v8);
}

void sub_23EF861AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF861C8(uint64_t a1, uint64_t a2)
{
  if (**(a1 + 40) <= 1u)
  {
    v2 = *(a1 + 88);
    *(a1 + 72) = *a2;
    if ((v2 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v3 = *(a2 + 16);
  v4 = 0;
  sub_23EF848B8();
}

void sub_23EF862C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF862DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF862F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF86304(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        v4 = *sub_23F2F22C4(a2 + 8);
        if (**(a3 + 40) >= 2u)
        {
          if ((*(a3 + 88) & 1) == 0)
          {
            goto LABEL_94;
          }
        }

        else
        {
          v11 = *(a3 + 88);
          *(a3 + 72) = "number";
          *(a3 + 80) = 6;
          if ((v11 & 1) == 0)
          {
            *(a3 + 88) = 1;
          }
        }

        if (*(a3 + 80) != 7)
        {
          goto LABEL_94;
        }

        v28 = *(a3 + 72);
        v29 = *v28;
        v30 = *(v28 + 3);
        if (v29 != *"version" || v30 != *"sion")
        {
          goto LABEL_94;
        }

        return;
      }

      v4 = *sub_23F2F23B4(a2 + 8);
      if (**(a3 + 40) >= 2u)
      {
        if ((*(a3 + 88) & 1) == 0)
        {
          goto LABEL_94;
        }
      }

      else
      {
        v9 = *(a3 + 88);
        *(a3 + 72) = "number";
        *(a3 + 80) = 6;
        if ((v9 & 1) == 0)
        {
          *(a3 + 88) = 1;
        }
      }

      if (*(a3 + 80) != 7)
      {
        goto LABEL_94;
      }

      v20 = *(a3 + 72);
      v21 = *v20;
      v22 = *(v20 + 3);
      if (v21 != *"version" || v22 != *"sion")
      {
        goto LABEL_94;
      }

      return;
    }

    if (a1 == 8)
    {
      v4 = *sub_23F2F24A4(a2 + 8);
      if (**(a3 + 40) >= 2u)
      {
        if ((*(a3 + 88) & 1) == 0)
        {
          goto LABEL_94;
        }
      }

      else
      {
        v13 = *(a3 + 88);
        *(a3 + 72) = "number";
        *(a3 + 80) = 6;
        if ((v13 & 1) == 0)
        {
          *(a3 + 88) = 1;
        }
      }

      if (*(a3 + 80) != 7)
      {
        goto LABEL_94;
      }

      v36 = *(a3 + 72);
      v37 = *v36;
      v38 = *(v36 + 3);
      if (v37 != *"version" || v38 != *"sion")
      {
        goto LABEL_94;
      }

      return;
    }

    if (a1 != 11)
    {
      if (a1 != 12)
      {
        goto LABEL_43;
      }

      v60 = *sub_23F2F2684(a2 + 8);
      if (**(a3 + 40) >= 2u)
      {
        if ((*(a3 + 88) & 1) == 0)
        {
          goto LABEL_101;
        }
      }

      else
      {
        v6 = *(a3 + 88);
        *(a3 + 72) = "number";
        *(a3 + 80) = 6;
        if ((v6 & 1) == 0)
        {
          *(a3 + 88) = 1;
        }
      }

      if (*(a3 + 80) == 7)
      {
        v46 = *(a3 + 72);
        v47 = *v46;
        v48 = *(v46 + 3);
        if (v47 == *"version" && v48 == *"sion")
        {
          return;
        }
      }

LABEL_101:
      sub_23F2E7A64(a3, &v60);
      return;
    }

    LODWORD(v60) = *sub_23F2F2594(a2 + 8);
    if (**(a3 + 40) >= 2u)
    {
      if ((*(a3 + 88) & 1) == 0)
      {
        goto LABEL_117;
      }
    }

    else
    {
      v15 = *(a3 + 88);
      *(a3 + 72) = "number";
      *(a3 + 80) = 6;
      if ((v15 & 1) == 0)
      {
        *(a3 + 88) = 1;
      }
    }

    if (*(a3 + 80) == 7)
    {
      v56 = *(a3 + 72);
      v57 = *v56;
      v58 = *(v56 + 3);
      if (v57 == *"version" && v58 == *"sion")
      {
        return;
      }
    }

LABEL_117:
    sub_23F2E7860(a3, &v60);
    return;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      v7 = *sub_23F2F1CA0(a2 + 8);
      if (**(a3 + 40) >= 2u)
      {
        if ((*(a3 + 88) & 1) == 0)
        {
          goto LABEL_109;
        }
      }

      else
      {
        v10 = *(a3 + 88);
        *(a3 + 72) = "number";
        *(a3 + 80) = 6;
        if ((v10 & 1) == 0)
        {
          *(a3 + 88) = 1;
        }
      }

      if (*(a3 + 80) == 7)
      {
        v24 = *(a3 + 72);
        v25 = *v24;
        v26 = *(v24 + 3);
        if (v25 == *"version" && v26 == *"sion")
        {
          return;
        }
      }

      goto LABEL_109;
    }

    if (a1 == 1)
    {
      v7 = *sub_23F2F1F04(a2 + 8);
      if (**(a3 + 40) >= 2u)
      {
        if ((*(a3 + 88) & 1) == 0)
        {
          goto LABEL_109;
        }
      }

      else
      {
        v8 = *(a3 + 88);
        *(a3 + 72) = "number";
        *(a3 + 80) = 6;
        if ((v8 & 1) == 0)
        {
          *(a3 + 88) = 1;
        }
      }

      if (*(a3 + 80) == 7)
      {
        v16 = *(a3 + 72);
        v17 = *v16;
        v18 = *(v16 + 3);
        if (v17 == *"version" && v18 == *"sion")
        {
          return;
        }
      }

      goto LABEL_109;
    }

LABEL_43:

    sub_23F2F1304(a1);
  }

  if (a1 == 2)
  {
    v7 = *sub_23F2F1FF4(a2 + 8);
    if (**(a3 + 40) >= 2u)
    {
      if ((*(a3 + 88) & 1) == 0)
      {
        goto LABEL_109;
      }
    }

    else
    {
      v12 = *(a3 + 88);
      *(a3 + 72) = "number";
      *(a3 + 80) = 6;
      if ((v12 & 1) == 0)
      {
        *(a3 + 88) = 1;
      }
    }

    if (*(a3 + 80) == 7)
    {
      v32 = *(a3 + 72);
      v33 = *v32;
      v34 = *(v32 + 3);
      if (v33 == *"version" && v34 == *"sion")
      {
        *(a3 + 96) = v7;
        *(a3 + 100) = 1;
        *(a3 + 88) = 0;
        return;
      }
    }

    goto LABEL_109;
  }

  if (a1 == 3)
  {
    v7 = *sub_23F2F20E4(a2 + 8);
    if (**(a3 + 40) >= 2u)
    {
      if ((*(a3 + 88) & 1) == 0)
      {
        goto LABEL_109;
      }
    }

    else
    {
      v14 = *(a3 + 88);
      *(a3 + 72) = "number";
      *(a3 + 80) = 6;
      if ((v14 & 1) == 0)
      {
        *(a3 + 88) = 1;
      }
    }

    if (*(a3 + 80) == 7)
    {
      v50 = *(a3 + 72);
      v51 = *v50;
      v52 = *(v50 + 3);
      if (v51 == *"version" && v52 == *"sion")
      {
        return;
      }
    }

LABEL_109:
    v44 = 6;
    LOBYTE(v60) = 6;
    v61 = v7;
    v45 = sub_23F2E6C78(a3);
    goto LABEL_110;
  }

  if (a1 != 5)
  {
    goto LABEL_43;
  }

  v4 = *sub_23F2F21D4(a2 + 8);
  if (**(a3 + 40) >= 2u)
  {
    if (*(a3 + 88))
    {
      goto LABEL_89;
    }

LABEL_94:
    v44 = 5;
    LOBYTE(v60) = 5;
    v61 = v4;
    v45 = sub_23F2E6C78(a3);
LABEL_110:
    v54 = *v45;
    *v45 = v44;
    LOBYTE(v60) = v54;
    v55 = v45[1];
    v45[1] = v61;
    v61 = v55;
    sub_23F06357C(&v61, v54);
    return;
  }

  v5 = *(a3 + 88);
  *(a3 + 72) = "number";
  *(a3 + 80) = 6;
  if ((v5 & 1) == 0)
  {
    *(a3 + 88) = 1;
  }

LABEL_89:
  if (*(a3 + 80) != 7)
  {
    goto LABEL_94;
  }

  v40 = *(a3 + 72);
  v41 = *v40;
  v42 = *(v40 + 3);
  if (v41 != *"version" || v42 != *"sion")
  {
    goto LABEL_94;
  }
}

void sub_23EF86A84(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v23 = *MEMORY[0x277D85DE8];
  sub_23EF83730(v10, a2);
  sub_23EF86BB4(a1, v10, a3);
  if (v22 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v21;
      v7 = __p;
      if (v21 != __p)
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

      v21 = v5;
      operator delete(v7);
    }
  }

  if (v19 == 1 && v18 < 0)
  {
    operator delete(v17);
  }

  if (v16 == 1 && v15 < 0)
  {
    operator delete(v14);
  }

  if (v13 == 1 && v12 < 0)
  {
    operator delete(v11);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_23EF86B9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF47B34(va);
  _Unwind_Resume(a1);
}

void sub_23EF86BB4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a1 + 40))
  {
    v6 = *(a1 + 24);
    __p.__r_.__value_.__s.__data_[0] = *(a1 + 32);
    sub_23EF2F9B0(v6, &__p, 1);
  }

  MEMORY[0x245CAC910](*(a1 + 24), 2);
  v7 = *(a1 + 40);
  *(a1 + 40) = v7 + 1;
  if (v7 != -1)
  {
    v8 = *(a1 + 24);
    __p.__r_.__value_.__s.__data_[0] = *(a1 + 32);
    sub_23EF2F9B0(v8, &__p, 1);
  }

  MEMORY[0x245CAC950](*(a1 + 24), *(a2 + 8));
  ++*(a1 + 40);
  __p.__r_.__value_.__s.__data_[0] = *(a2 + 16);
  sub_23F2F3D94(a1, &__p);
  v9 = *(a1 + 34);
  if (*(a1 + 40))
  {
    v10 = *(a1 + 24);
    __p.__r_.__value_.__s.__data_[0] = *(a1 + 32);
    sub_23EF2F9B0(v10, &__p, 1);
  }

  v11 = *(a1 + 24);
  __p.__r_.__value_.__s.__data_[0] = v9;
  sub_23EF2F9B0(v11, &__p, 1);
  ++*(a1 + 40);
  if (*(a2 + 48) == 1)
  {
    __p.__r_.__value_.__s.__data_[0] = 1;
    sub_23F2F3D94(a1, &__p);
    sub_23F2F45C4(a1, a2 + 24);
    if (a3 < 4)
    {
      return;
    }
  }

  else
  {
    __p.__r_.__value_.__s.__data_[0] = 0;
    sub_23F2F3D94(a1, &__p);
    if (a3 < 4)
    {
      return;
    }
  }

  sub_23EF5ACCC(a1, a2 + 56);
  if (a3 == 5)
  {
    if (*(a2 + 104) == 1)
    {
      __p.__r_.__value_.__s.__data_[0] = 1;
      sub_23F2F3D94(a1, &__p);
      sub_23F2F45C4(a1, a2 + 80);
    }

    else
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      sub_23F2F3D94(a1, &__p);
    }

    return;
  }

  if (a3 < 6)
  {
    return;
  }

  if (*(a2 + 104) != 1)
  {
    __p.__r_.__value_.__s.__data_[0] = 0;
    sub_23F2F3D94(a1, &__p);
    if (*(a1 + 40))
    {
      v15 = *(a1 + 24);
      __p.__r_.__value_.__s.__data_[0] = *(a1 + 32);
      sub_23EF2F9B0(v15, &__p, 1);
      ++*(a1 + 40);
      v12 = *(a2 + 136);
      if (v12 == 1)
      {
        goto LABEL_28;
      }
    }

    else
    {
      *(a1 + 40) = 1;
      v12 = *(a2 + 136);
      if (v12 == 1)
      {
        goto LABEL_28;
      }
    }

LABEL_17:
    __p.__r_.__value_.__s.__data_[0] = 0;
    sub_23F2F3D94(a1, &__p);
    if (*(a1 + 40))
    {
      v13 = *(a1 + 24);
      __p.__r_.__value_.__s.__data_[0] = *(a1 + 32);
      sub_23EF2F9B0(v13, &__p, 1);
      v14 = *(a1 + 40) + 1;
    }

    else
    {
      v14 = 1;
    }

    *(a1 + 40) = v14;
    __p.__r_.__value_.__s.__data_[0] = 0;
    v26 = 0;
    if (*(a2 + 168) != 1)
    {
      goto LABEL_25;
    }

    goto LABEL_29;
  }

  __p.__r_.__value_.__s.__data_[0] = 1;
  sub_23F2F3D94(a1, &__p);
  sub_23F2F45C4(a1, a2 + 80);
  v12 = *(a2 + 136);
  if (v12 != 1)
  {
    goto LABEL_17;
  }

LABEL_28:
  __p.__r_.__value_.__s.__data_[0] = v12;
  sub_23F2F3D94(a1, &__p);
  sub_23F2F45C4(a1, a2 + 112);
  __p.__r_.__value_.__s.__data_[0] = 0;
  v26 = 0;
  if (*(a2 + 168) != 1)
  {
LABEL_25:
    v24.__r_.__value_.__s.__data_[0] = 0;
    sub_23F2F3D94(a1, &v24);
    if (*(a1 + 40))
    {
      v16 = *(a1 + 24);
      v24.__r_.__value_.__s.__data_[0] = *(a1 + 32);
      sub_23EF2F9B0(v16, &v24, 1);
      ++*(a1 + 40);
    }

    else
    {
      *(a1 + 40) = 1;
    }

    return;
  }

LABEL_29:
  v17 = *(a2 + 144);
  v18 = *(a2 + 152);
  if (v17 == v18)
  {
LABEL_46:
    sub_23EF42BD0(v17, v18, ";", 1uLL, &v24);
  }

  else
  {
    v19 = *(a2 + 144);
    while (1)
    {
      v20 = *(v19 + 23);
      if ((v20 & 0x80u) == 0)
      {
        v21 = v19;
      }

      else
      {
        v21 = *v19;
      }

      if ((v20 & 0x80u) != 0)
      {
        v20 = v19[1];
      }

      if (v20)
      {
        v22 = 0;
        while (1)
        {
          v23 = *(v21 + v22);
          if (v23 == 59 || v23 == 92)
          {
            break;
          }

          if (v20 == ++v22)
          {
            goto LABEL_31;
          }
        }

        if (v20 != v22 && v22 != -1)
        {
          break;
        }
      }

LABEL_31:
      v19 += 3;
      if (v19 == v18)
      {
        goto LABEL_46;
      }
    }

    sub_23EF55F2C(v17, 0, *(a2 + 152), ";", 1uLL, &v24);
  }

  __p = v24;
  v26 = 1;
  v24.__r_.__value_.__s.__data_[0] = 1;
  sub_23F2F3D94(a1, &v24);
  sub_23F2F45C4(a1, &__p);
  if ((v26 & 1) != 0 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_23EF8700C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if ((a19 & 1) != 0 && a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF87030(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v23 = *MEMORY[0x277D85DE8];
  sub_23EF83D30(v10, a2);
  sub_23EF87160(a1, v10, a3);
  if (v22 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v21;
      v7 = __p;
      if (v21 != __p)
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

      v21 = v5;
      operator delete(v7);
    }
  }

  if (v19 == 1 && v18 < 0)
  {
    operator delete(v17);
  }

  if (v16 == 1 && v15 < 0)
  {
    operator delete(v14);
  }

  if (v13 == 1 && v12 < 0)
  {
    operator delete(v11);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_23EF87148(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF47B34(va);
  _Unwind_Resume(a1);
}

void sub_23EF87160(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a1 + 40))
  {
    v6 = *(a1 + 24);
    v15 = *(a1 + 32);
    sub_23EF2F9B0(v6, &v15, 1);
  }

  MEMORY[0x245CAC910](*(a1 + 24), 2);
  v7 = *(a1 + 40);
  *(a1 + 40) = v7 + 1;
  if (v7 != -1)
  {
    v8 = *(a1 + 24);
    v16 = *(a1 + 32);
    sub_23EF2F9B0(v8, &v16, 1);
  }

  MEMORY[0x245CAC950](*(a1 + 24), *(a2 + 8));
  ++*(a1 + 40);
  v12 = *(a2 + 16);
  sub_23F2F3D94(a1, &v12);
  v9 = *(a1 + 34);
  if (*(a1 + 40))
  {
    v10 = *(a1 + 24);
    v17 = *(a1 + 32);
    sub_23EF2F9B0(v10, &v17, 1);
  }

  v11 = *(a1 + 24);
  v18 = v9;
  sub_23EF2F9B0(v11, &v18, 1);
  ++*(a1 + 40);
  if (*(a2 + 48) != 1)
  {
    v13 = 0;
    sub_23F2F3D94(a1, &v13);
    if (a3 < 4)
    {
      return;
    }

    goto LABEL_11;
  }

  v14 = 1;
  sub_23F2F3D94(a1, &v14);
  sub_23F2F45C4(a1, a2 + 24);
  if (a3 >= 4)
  {
LABEL_11:
    sub_23EF5ACCC(a1, a2 + 56);
  }
}

void sub_23EF872B8(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v6[0] = *a2;
  v6[8] = a2[8];
  v8 = 0;
  v9 = 0;
  __p = 0;
  v5 = *(a2 + 2);
  v4 = *(a2 + 3);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v10 = v3;
  sub_23F2F3D94(a1, &v10);
  sub_23EF8739C(v3, v6, a1);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }
}

void sub_23EF87380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF8739C(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 <= 5)
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        LOBYTE(v16) = *sub_23F2F1CA0(a2 + 8);
        sub_23F2F3D94(a3, &v16);
        return;
      }

      if (a1 != 1)
      {
        goto LABEL_36;
      }

      v4 = *sub_23F2F1F04(a2 + 8);
      if (*(a3 + 40))
      {
        v5 = *(a3 + 24);
        LOBYTE(v16) = *(a3 + 32);
        sub_23EF2F9B0(v5, &v16, 1);
      }

      MEMORY[0x245CAC940](*(a3 + 24), v4);
    }

    else
    {
      switch(a1)
      {
        case 2:
          v10 = *sub_23F2F1FF4(a2 + 8);
          if (*(a3 + 40))
          {
            v11 = *(a3 + 24);
            LOBYTE(v16) = *(a3 + 32);
            sub_23EF2F9B0(v11, &v16, 1);
          }

          MEMORY[0x245CAC910](*(a3 + 24), v10);
          break;
        case 3:
          v14 = *sub_23F2F20E4(a2 + 8);
          if (*(a3 + 40))
          {
            v15 = *(a3 + 24);
            LOBYTE(v16) = *(a3 + 32);
            sub_23EF2F9B0(v15, &v16, 1);
          }

          MEMORY[0x245CAC960](*(a3 + 24), v14);
          break;
        case 5:
          LOBYTE(v16) = *sub_23F2F21D4(a2 + 8);
          sub_23F2F3CAC(a3, &v16);
          return;
        default:
LABEL_36:

          sub_23F2F1304(a1);
      }
    }

    goto LABEL_34;
  }

  if (a1 <= 7)
  {
    if (a1 == 6)
    {
      v8 = *sub_23F2F22C4(a2 + 8);
      if (*(a3 + 40))
      {
        v9 = *(a3 + 24);
        LOBYTE(v16) = *(a3 + 32);
        sub_23EF2F9B0(v9, &v16, 1);
      }

      MEMORY[0x245CAC930](*(a3 + 24), v8);
    }

    else
    {
      v6 = *sub_23F2F23B4(a2 + 8);
      if (*(a3 + 40))
      {
        v7 = *(a3 + 24);
        LOBYTE(v16) = *(a3 + 32);
        sub_23EF2F9B0(v7, &v16, 1);
      }

      MEMORY[0x245CAC900](*(a3 + 24), v6);
    }

    goto LABEL_34;
  }

  switch(a1)
  {
    case 8:
      v12 = *sub_23F2F24A4(a2 + 8);
      if (*(a3 + 40))
      {
        v13 = *(a3 + 24);
        LOBYTE(v16) = *(a3 + 32);
        sub_23EF2F9B0(v13, &v16, 1);
      }

      MEMORY[0x245CAC950](*(a3 + 24), v12);
LABEL_34:
      ++*(a3 + 40);
      return;
    case 11:
      LODWORD(v16) = *sub_23F2F2594(a2 + 8);
      sub_23F2F40F0(a3, &v16);
      break;
    case 12:
      v16 = *sub_23F2F2684(a2 + 8);
      sub_23F2F435C(a3, &v16);
      break;
    default:
      goto LABEL_36;
  }
}

void sub_23EF87668(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v23 = *MEMORY[0x277D85DE8];
  sub_23EF83730(v10, a2);
  sub_23EF5B9EC(a1, v10, a3);
  if (v22 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v21;
      v7 = __p;
      if (v21 != __p)
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

      v21 = v5;
      operator delete(v7);
    }
  }

  if (v19 == 1 && v18 < 0)
  {
    operator delete(v17);
  }

  if (v16 == 1 && v15 < 0)
  {
    operator delete(v14);
  }

  if (v13 == 1 && v12 < 0)
  {
    operator delete(v11);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_23EF87780(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF47B34(va);
  _Unwind_Resume(a1);
}

void sub_23EF87798(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v23 = *MEMORY[0x277D85DE8];
  sub_23EF83D30(v10, a2);
  sub_23EF878C8(a1, v10, a3);
  if (v22 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v21;
      v7 = __p;
      if (v21 != __p)
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

      v21 = v5;
      operator delete(v7);
    }
  }

  if (v19 == 1 && v18 < 0)
  {
    operator delete(v17);
  }

  if (v16 == 1 && v15 < 0)
  {
    operator delete(v14);
  }

  if (v13 == 1 && v12 < 0)
  {
    operator delete(v11);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_23EF878B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF47B34(va);
  _Unwind_Resume(a1);
}

char *sub_23EF878C8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  LODWORD(__src) = 2;
  sub_23F295368(a1 + 24, *(a1 + 32), &__src, &__src + 4, 4uLL);
  sub_23F294D84(a1);
  sub_23F295368(a1 + 24, *(a1 + 32), (a2 + 8), (a2 + 16), 8uLL);
  LOBYTE(__src) = *(a2 + 16);
  sub_23F295368(a1 + 24, *(a1 + 32), &__src, &__src + 1, 1uLL);
  v6 = *(*(a1 + 56) - 8) + *(a1 + 24);
  *(v6 + 10) = *(a1 + 32) - v6 - 18;
  *(a1 + 56) -= 8;
  if (*(a2 + 48) != 1)
  {
    LOBYTE(__src) = 0;
    result = sub_23F295368(a1 + 24, *(a1 + 32), &__src, &__src + 1, 1uLL);
    if (a3 < 4)
    {
      return result;
    }

    goto LABEL_13;
  }

  LOBYTE(__src) = 1;
  sub_23F295368(a1 + 24, *(a1 + 32), &__src, &__src + 1, 1uLL);
  v7 = *(a2 + 47);
  if (v7 < 0)
  {
    v7 = *(a2 + 32);
  }

  __src = v7;
  sub_23F295368(a1 + 24, *(a1 + 32), &__src, v13, 8uLL);
  v8 = *(a2 + 47);
  if (v8 >= 0)
  {
    v9 = (a2 + 24);
  }

  else
  {
    v9 = *(a2 + 24);
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 47);
  }

  else
  {
    v10 = *(a2 + 32);
  }

  result = sub_23F295368(a1 + 24, *(a1 + 32), v9, &v9[v10], v10);
  if (a3 >= 4)
  {
LABEL_13:
    __src = "custom_timestamp";
    v13[0] = 16;
    v13[1] = a2 + 56;
    return sub_23EF5BEC0(a1, &__src);
  }

  return result;
}

void sub_23EF87A74(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v6[0] = *a2;
  v6[8] = a2[8];
  v8 = 0;
  v9 = 0;
  __p = 0;
  v5 = *(a2 + 2);
  v4 = *(a2 + 3);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  __src = v3;
  sub_23F295368(a1 + 24, *(a1 + 32), &__src, &v11, 1uLL);
  sub_23EF87B68(v3, v6, a1);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }
}

void sub_23EF87B4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_23EF87B68(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 <= 5)
  {
    if (a1 > 1)
    {
      if (a1 != 2)
      {
        if (a1 != 3)
        {
          if (a1 == 5)
          {
            v4 = sub_23F2F21D4(a2 + 8);
LABEL_18:
            LOBYTE(__src) = *v4;
            return sub_23F295368(a3 + 24, *(a3 + 32), &__src, &__src + 1, 1uLL);
          }

          goto LABEL_29;
        }

        v8 = sub_23F2F20E4(a2 + 8);
        goto LABEL_25;
      }

      v6 = sub_23F2F1FF4(a2 + 8);
      goto LABEL_22;
    }

    if (!a1)
    {
      v4 = sub_23F2F1CA0(a2 + 8);
      goto LABEL_18;
    }

    if (a1 != 1)
    {
LABEL_29:

      sub_23F2F1304(a1);
    }

    v5 = sub_23F2F1F04(a2 + 8);
    goto LABEL_20;
  }

  if (a1 <= 7)
  {
    if (a1 != 6)
    {
      v6 = sub_23F2F23B4(a2 + 8);
LABEL_22:
      LODWORD(__src) = *v6;
      return sub_23F295368(a3 + 24, *(a3 + 32), &__src, &__src + 4, 4uLL);
    }

    v5 = sub_23F2F22C4(a2 + 8);
LABEL_20:
    LOWORD(__src) = *v5;
    return sub_23F295368(a3 + 24, *(a3 + 32), &__src, &__src + 2, 2uLL);
  }

  if (a1 == 8)
  {
    v8 = sub_23F2F24A4(a2 + 8);
LABEL_25:
    __src = *v8;
    return sub_23F295368(a3 + 24, *(a3 + 32), &__src, &v10, 8uLL);
  }

  if (a1 != 11)
  {
    if (a1 != 12)
    {
      goto LABEL_29;
    }

    __src = *sub_23F2F2684(a2 + 8);
    return sub_23F295368(a3 + 24, *(a3 + 32), &__src, &v10, 8uLL);
  }

  LODWORD(__src) = *sub_23F2F2594(a2 + 8);
  return sub_23F295368(a3 + 24, *(a3 + 32), &__src, &__src + 4, 4uLL);
}

void sub_23EF87D4C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v23 = *MEMORY[0x277D85DE8];
  sub_23EF83730(v10, a2);
  sub_23EF87E7C(a1, v10, a3);
  if (v22 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v21;
      v7 = __p;
      if (v21 != __p)
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

      v21 = v5;
      operator delete(v7);
    }
  }

  if (v19 == 1 && v18 < 0)
  {
    operator delete(v17);
  }

  if (v16 == 1 && v15 < 0)
  {
    operator delete(v14);
  }

  if (v13 == 1 && v12 < 0)
  {
    operator delete(v11);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_23EF87E64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF47B34(va);
  _Unwind_Resume(a1);
}

void sub_23EF87E7C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  sub_23EF5CDBC(&__p, a1, a2 + 8);
  if (*(a2 + 48) == 1)
  {
    __p.__r_.__value_.__s.__data_[0] = 1;
    (*(*a1 + 80))(a1, &__p);
    (*(*a1 + 144))(a1, a2 + 24);
    if (a3 < 4)
    {
      return;
    }
  }

  else
  {
    __p.__r_.__value_.__s.__data_[0] = 0;
    (*(*a1 + 80))(a1, &__p);
    if (a3 < 4)
    {
      return;
    }
  }

  if (*(a2 + 72) == 1)
  {
    __p.__r_.__value_.__s.__data_[0] = 1;
    (*(*a1 + 80))(a1, &__p);
    sub_23EF5CDBC(&__p, a1, a2 + 56);
    if (a3 != 5)
    {
      goto LABEL_7;
    }

LABEL_14:
    if (*(a2 + 104) == 1)
    {
      __p.__r_.__value_.__s.__data_[0] = 1;
      (*(*a1 + 80))(a1, &__p);
      (*(*a1 + 144))(a1, a2 + 80);
      return;
    }

    goto LABEL_25;
  }

  __p.__r_.__value_.__s.__data_[0] = 0;
  (*(*a1 + 80))(a1, &__p);
  if (a3 == 5)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (a3 < 6)
  {
    return;
  }

  if ((*(a1 + 12) & 4) == 0)
  {
    if (*(a2 + 104) == 1)
    {
      __p.__r_.__value_.__s.__data_[0] = 1;
      (*(*a1 + 80))(a1, &__p);
      (*(*a1 + 144))(a1, a2 + 80);
      v6 = *(a2 + 136);
      if (v6 != 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      (*(*a1 + 80))(a1, &__p);
      v6 = *(a2 + 136);
      if (v6 != 1)
      {
LABEL_11:
        __p.__r_.__value_.__s.__data_[0] = 0;
        (*(*a1 + 80))(a1, &__p);
        v7 = *(a2 + 168);
        if (v7 != 1)
        {
          goto LABEL_25;
        }

LABEL_22:
        __p.__r_.__value_.__s.__data_[0] = v7;
        (*(*a1 + 80))(a1, &__p);
        __p.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 152) - *(a2 + 144)) >> 3);
        (*(*a1 + 120))(a1, &__p);
        v10 = *(a2 + 144);
        for (i = *(a2 + 152); v10 != i; v10 += 24)
        {
          (*(*a1 + 144))(a1, v10);
        }

        return;
      }
    }

    __p.__r_.__value_.__s.__data_[0] = v6;
    (*(*a1 + 80))(a1, &__p);
    (*(*a1 + 144))(a1, a2 + 112);
    v7 = *(a2 + 168);
    if (v7 != 1)
    {
LABEL_25:
      __p.__r_.__value_.__s.__data_[0] = 0;
      (*(*a1 + 80))(a1, &__p);
      return;
    }

    goto LABEL_22;
  }

  if (*(a2 + 104) == 1)
  {
    __p.__r_.__value_.__s.__data_[0] = 1;
    (*(*a1 + 80))(a1, &__p);
    (*(*a1 + 144))(a1, a2 + 80);
    v8 = *(a2 + 136);
    if (v8 != 1)
    {
      goto LABEL_18;
    }

LABEL_27:
    __p.__r_.__value_.__s.__data_[0] = v8;
    (*(*a1 + 80))(a1, &__p);
    (*(*a1 + 144))(a1, a2 + 112);
    __p.__r_.__value_.__s.__data_[0] = 0;
    v20 = 0;
    if (*(a2 + 168) != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  __p.__r_.__value_.__s.__data_[0] = 0;
  (*(*a1 + 80))(a1, &__p);
  (*(*a1 + 288))(a1, &unk_23F31034F);
  v8 = *(a2 + 136);
  if (v8 == 1)
  {
    goto LABEL_27;
  }

LABEL_18:
  __p.__r_.__value_.__s.__data_[0] = 0;
  (*(*a1 + 80))(a1, &__p);
  (*(*a1 + 288))(a1, &unk_23F31034F);
  __p.__r_.__value_.__s.__data_[0] = 0;
  v20 = 0;
  if (*(a2 + 168) != 1)
  {
LABEL_19:
    v18.__r_.__value_.__s.__data_[0] = 0;
    (*(*a1 + 80))(a1, &v18);
    (*(*a1 + 288))(a1, &unk_23F31034F);
    return;
  }

LABEL_28:
  v11 = *(a2 + 144);
  v12 = *(a2 + 152);
  if (v11 == v12)
  {
LABEL_45:
    sub_23EF42BD0(v11, v12, ";", 1uLL, &v18);
  }

  else
  {
    v13 = *(a2 + 144);
    while (1)
    {
      v14 = *(v13 + 23);
      if ((v14 & 0x80u) == 0)
      {
        v15 = v13;
      }

      else
      {
        v15 = *v13;
      }

      if ((v14 & 0x80u) != 0)
      {
        v14 = v13[1];
      }

      if (v14)
      {
        v16 = 0;
        while (1)
        {
          v17 = *(v15 + v16);
          if (v17 == 59 || v17 == 92)
          {
            break;
          }

          if (v14 == ++v16)
          {
            goto LABEL_30;
          }
        }

        if (v14 != v16 && v16 != -1)
        {
          break;
        }
      }

LABEL_30:
      v13 += 3;
      if (v13 == v12)
      {
        goto LABEL_45;
      }
    }

    sub_23EF55F2C(v11, 0, *(a2 + 152), ";", 1uLL, &v18);
  }

  __p = v18;
  v20 = 1;
  v18.__r_.__value_.__s.__data_[0] = 1;
  (*(*a1 + 80))(a1, &v18);
  (*(*a1 + 144))(a1, &__p);
  if ((v20 & 1) != 0 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_23EF88684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if ((a19 & 1) != 0 && a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF886A8(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  v23 = *MEMORY[0x277D85DE8];
  sub_23EF83D30(v10, a2);
  sub_23EF887D8(a1, v10, a3);
  if (v22 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v21;
      v7 = __p;
      if (v21 != __p)
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

      v21 = v5;
      operator delete(v7);
    }
  }

  if (v19 == 1 && v18 < 0)
  {
    operator delete(v17);
  }

  if (v16 == 1 && v15 < 0)
  {
    operator delete(v14);
  }

  if (v13 == 1 && v12 < 0)
  {
    operator delete(v11);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_23EF887C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF47B34(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23EF887D8(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  sub_23EF5CDBC(&v7, a1, a2 + 8);
  if (*(a2 + 48) == 1)
  {
    v9 = 1;
    (*(*a1 + 80))(a1, &v9);
    result = (*(*a1 + 144))(a1, a2 + 24);
    if (a3 < 4)
    {
      return result;
    }
  }

  else
  {
    v8 = 0;
    result = (*(*a1 + 80))(a1, &v8);
    if (a3 < 4)
    {
      return result;
    }
  }

  if (*(a2 + 72) == 1)
  {
    v11 = 1;
    (*(*a1 + 80))(a1, &v11);
    return sub_23EF5CDBC(&v12, a1, a2 + 56);
  }

  else
  {
    v10 = 0;
    return (*(*a1 + 80))(a1, &v10);
  }
}

void sub_23EF8896C(_BYTE *a1, uint64_t a2)
{
  v5[0] = *a2;
  v5[8] = *(a2 + 8);
  v7 = 0;
  v8 = 0;
  __p = 0;
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23EF88DD8(a1, v5);
  sub_23EF88A44(v5[0], v5, a1);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }
}

void sub_23EF88A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EF88A44(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        LOWORD(v5) = *sub_23F2F22C4(a2 + 8);
        return (*(*a3 + 48))(a3, &v5);
      }

      else
      {
        LODWORD(v5) = *sub_23F2F23B4(a2 + 8);
        return (*(*a3 + 56))(a3, &v5);
      }
    }

    else
    {
      switch(a1)
      {
        case 8:
          v5 = *sub_23F2F24A4(a2 + 8);
          return (*(*a3 + 72))(a3, &v5);
        case 11:
          LODWORD(v5) = *sub_23F2F2594(a2 + 8);
          return (*(*a3 + 128))(a3, &v5);
        case 12:
          v5 = *sub_23F2F2684(a2 + 8);
          return (*(*a3 + 136))(a3, &v5);
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

      LOWORD(v5) = *sub_23F2F1F04(a2 + 8);
      return (*(*a3 + 96))(a3, &v5);
    }

    else
    {
      LOBYTE(v5) = *sub_23F2F1CA0(a2 + 8);
      return (*(*a3 + 80))(a3, &v5);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        LODWORD(v5) = *sub_23F2F1FF4(a2 + 8);
        return (*(*a3 + 104))(a3, &v5);
      case 3:
        v5 = *sub_23F2F20E4(a2 + 8);
        return (*(*a3 + 120))(a3, &v5);
      case 5:
        LOBYTE(v5) = *sub_23F2F21D4(a2 + 8);
        return (*(*a3 + 88))(a3, &v5);
      default:
LABEL_23:

        sub_23F2F1304(a1);
    }
  }
}

uint64_t sub_23EF88DD8(_BYTE *a1, _BYTE *a2)
{
  if ((a1[12] & 2) != 0)
  {
    v4 = 0;
    sub_23EF848B8();
  }

  v3[0] = *a2;
  return (*(*a1 + 80))(a1, v3);
}

void sub_23EF88EFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF88F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF88F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23EF88F40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 176);
  if (v3 != -1)
  {
    if (!v3)
    {
      sub_23EF5F384(a1, a2);
      return a1;
    }

    v5 = a2;
    (off_285178F08[v3])(&v14, a1);
    a2 = v5;
  }

  *(a1 + 176) = -1;
  v6 = *(a2 + 8);
  *(a1 + 24) = 0;
  *(a1 + 8) = v6;
  *(a1 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    v7 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v7;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 24) = 0;
    *(a1 + 48) = 1;
  }

  v8 = *(a2 + 56);
  v9 = *(a2 + 72);
  *(a1 + 80) = 0;
  *(a1 + 72) = v9;
  *(a1 + 56) = v8;
  *(a1 + 104) = 0;
  if (*(a2 + 104) != 1)
  {
    *(a1 + 112) = 0;
    v10 = a1 + 112;
    *(a1 + 136) = 0;
    if (*(a2 + 136) != 1)
    {
      goto LABEL_9;
    }

LABEL_13:
    v13 = *(a2 + 112);
    *(v10 + 16) = *(a2 + 128);
    *v10 = v13;
    *(a2 + 120) = 0;
    *(a2 + 128) = 0;
    *(a2 + 112) = 0;
    *(a1 + 136) = 1;
    *(a1 + 144) = 0;
    v11 = (a1 + 144);
    *(a1 + 168) = 0;
    if (*(a2 + 168) != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v12 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 80) = v12;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 80) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  v10 = a1 + 112;
  *(a1 + 136) = 0;
  if (*(a2 + 136) == 1)
  {
    goto LABEL_13;
  }

LABEL_9:
  *(a1 + 144) = 0;
  v11 = (a1 + 144);
  *(a1 + 168) = 0;
  if (*(a2 + 168) == 1)
  {
LABEL_10:
    *v11 = 0;
    v11[1] = 0;
    v11[2] = 0;
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
    *(a1 + 168) = 1;
  }

LABEL_11:
  *(a1 + 176) = 0;
  return a1;
}

void sub_23EF890FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = *(a2 + 32);
  v5 = sub_23F2EB9A4(a2);
  ++*(a2 + 112);
  *(a2 + 32) = v5;
  sub_23F2EB5F4(a2 + 40, v7);
  sub_23F294EB4(a2 + 64, (a2 + 112));
  *(a2 + 112) = 0;
  v7[0] = "version";
  v7[1] = 7;
  v8 = 2;
  *(a2 + 88) = "version";
  *(a2 + 96) = 7;
  *(a2 + 104) = 1;
  sub_23F2ECE4C(a2, &v8);
  if (v8 >= 2)
  {
    v6 = *(a2 + 104);
    *(a2 + 88) = "value_type";
    *(a2 + 96) = 10;
    if ((v6 & 1) == 0)
    {
      *(a2 + 104) = 1;
    }

    v7[0] = a3;
    sub_23EF898EC(a2);
  }

  sub_23EF89224();
}

void sub_23EF89224()
{
  v0 = 7;
  v1 = 7;
  operator new();
}

void sub_23EF89384(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF893A4(int a1, uint64_t a2)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        LODWORD(v16) = 0;
        v6 = *(a2 + 104);
        *(a2 + 88) = "number";
        *(a2 + 96) = 6;
        if ((v6 & 1) == 0)
        {
          *(a2 + 104) = 1;
        }

        sub_23F2ECDB4(a2, &v16);
        operator new();
      }

      LOWORD(v16) = 0;
      v8 = *(a2 + 104);
      *(a2 + 88) = "number";
      *(a2 + 96) = 6;
      if ((v8 & 1) == 0)
      {
        *(a2 + 104) = 1;
      }

      sub_23F2ECC84(a2, &v16);
      operator new();
    }

    switch(a1)
    {
      case 8:
        v10 = *(a2 + 104);
        *(a2 + 88) = "number";
        *(a2 + 96) = 6;
        if ((v10 & 1) == 0)
        {
          *(a2 + 104) = 1;
        }

        v11 = sub_23F2EB9A4(a2);
        ++*(a2 + 112);
        v16 = 0;
        sub_23F070408(v11, &v16);
        operator new();
      case 11:
        v14 = *(a2 + 104);
        *(a2 + 88) = "number";
        *(a2 + 96) = 6;
        if ((v14 & 1) == 0)
        {
          *(a2 + 104) = 1;
        }

        v15 = sub_23F2EB9A4(a2);
        ++*(a2 + 112);
        sub_23F2F0F5C(v15);
        operator new();
      case 12:
        v16 = 0;
        v4 = *(a2 + 104);
        *(a2 + 88) = "number";
        *(a2 + 96) = 6;
        if ((v4 & 1) == 0)
        {
          *(a2 + 104) = 1;
        }

        sub_23F2ECEE4(a2, &v16);
        operator new();
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      LOBYTE(v16) = 0;
      v7 = *(a2 + 104);
      *(a2 + 88) = "number";
      *(a2 + 96) = 6;
      if ((v7 & 1) == 0)
      {
        *(a2 + 104) = 1;
      }

      sub_23F2ECBEC(a2, &v16);
      operator new();
    }

    if (a1 == 1)
    {
      LOWORD(v16) = 0;
      v5 = *(a2 + 104);
      *(a2 + 88) = "number";
      *(a2 + 96) = 6;
      if ((v5 & 1) == 0)
      {
        *(a2 + 104) = 1;
      }

      sub_23F2ECD1C(a2, &v16);
      operator new();
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        LODWORD(v16) = 0;
        v9 = *(a2 + 104);
        *(a2 + 88) = "number";
        *(a2 + 96) = 6;
        if ((v9 & 1) == 0)
        {
          *(a2 + 104) = 1;
        }

        sub_23F2ECE4C(a2, &v16);
        operator new();
      case 3:
        v12 = *(a2 + 104);
        *(a2 + 88) = "number";
        *(a2 + 96) = 6;
        if ((v12 & 1) == 0)
        {
          *(a2 + 104) = 1;
        }

        v13 = sub_23F2EB9A4(a2);
        ++*(a2 + 112);
        v16 = 0;
        sub_23F0702B4(v13, &v16);
        operator new();
      case 5:
        LOBYTE(v16) = 0;
        v3 = *(a2 + 104);
        *(a2 + 88) = "number";
        *(a2 + 96) = 6;
        if ((v3 & 1) == 0)
        {
          *(a2 + 104) = 1;
        }

        sub_23F2ECB54(a2, &v16);
        operator new();
    }
  }

  sub_23F2F1304(a1);
}

void sub_23EF898EC(void *a1)
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

void sub_23EF899DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void sub_23EF89A70(uint64_t a1, uint64_t a2, _BYTE *a3, unsigned int a4)
{
  if (a4 >= 2)
  {
    v8 = 0;
    sub_23F2F80F8(*(a2 + 48), &v8);
    *&v7 = (*(*(a2 + 16) + 32))(a2 + 16);
    *(&v7 + 1) = v8;
    sub_23EF62458(a2 + 24, &v7);
    LOBYTE(v7) = 0;
    sub_23F2F7BA4(*(a2 + 48), &v7);
    v6 = v7;
    *a3 = v7;
    sub_23EF89D10(v6, a2);
  }

  sub_23EF89BB0();
}

void sub_23EF89CF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF89D10(int a1, uint64_t a2)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        LODWORD(v2) = 0;
        sub_23F2F7E4C(*(a2 + 48), &v2);
        operator new();
      }

      LOWORD(v2) = 0;
      sub_23F2F7CA0(*(a2 + 48), &v2);
      operator new();
    }

    switch(a1)
    {
      case 8:
        v2 = 0;
        sub_23F2F7FF8(*(a2 + 48), &v2);
        operator new();
      case 11:
        LODWORD(v2) = 0;
        sub_23F2F81EC(*(a2 + 48), &v2);
        operator new();
      case 12:
        v2 = 0;
        sub_23F2F8334(*(a2 + 48), &v2);
        operator new();
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      LOBYTE(v2) = 0;
      sub_23F2F7BA4(*(a2 + 48), &v2);
      operator new();
    }

    if (a1 == 1)
    {
      LOWORD(v2) = 0;
      sub_23F2F7D50(*(a2 + 48), &v2);
      operator new();
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        LODWORD(v2) = 0;
        sub_23F2F7EFC(*(a2 + 48), &v2);
        operator new();
      case 3:
        v2 = 0;
        sub_23F2F80F8(*(a2 + 48), &v2);
        operator new();
      case 5:
        LOBYTE(v2) = 0;
        sub_23F2F7AF4(*(a2 + 48), &v2);
        operator new();
    }
  }

  sub_23F2F1304(a1);
}

void sub_23EF8A0D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = *(a2 + 32);
  v5 = sub_23F2EB70C(a2);
  ++*(a2 + 112);
  *(a2 + 32) = v5;
  sub_23F2EB5F4(a2 + 40, v7);
  sub_23F294EB4(a2 + 64, (a2 + 112));
  *(a2 + 112) = 0;
  v7[0] = "version";
  v7[1] = 7;
  v8 = 2;
  *(a2 + 88) = "version";
  *(a2 + 96) = 7;
  *(a2 + 104) = 1;
  sub_23F2EBEC0(a2, &v8);
  if (v8 >= 2)
  {
    v6 = *(a2 + 104);
    *(a2 + 88) = "value_type";
    *(a2 + 96) = 10;
    if ((v6 & 1) == 0)
    {
      *(a2 + 104) = 1;
    }

    v7[0] = a3;
    sub_23EF8A8C4(a2);
  }

  sub_23EF8A1FC();
}

void sub_23EF8A1FC()
{
  v0 = 7;
  v1 = 7;
  operator new();
}

void sub_23EF8A35C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF8A37C(int a1, uint64_t a2)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        LODWORD(v16) = 0;
        v6 = *(a2 + 104);
        *(a2 + 88) = "number";
        *(a2 + 96) = 6;
        if ((v6 & 1) == 0)
        {
          *(a2 + 104) = 1;
        }

        sub_23F2EBE28(a2, &v16);
        operator new();
      }

      LOWORD(v16) = 0;
      v8 = *(a2 + 104);
      *(a2 + 88) = "number";
      *(a2 + 96) = 6;
      if ((v8 & 1) == 0)
      {
        *(a2 + 104) = 1;
      }

      sub_23F2EBCF8(a2, &v16);
      operator new();
    }

    switch(a1)
    {
      case 8:
        v10 = *(a2 + 104);
        *(a2 + 88) = "number";
        *(a2 + 96) = 6;
        if ((v10 & 1) == 0)
        {
          *(a2 + 104) = 1;
        }

        v11 = sub_23F2EB70C(a2);
        ++*(a2 + 112);
        v16 = 0;
        sub_23F06FC08(v11, &v16);
        operator new();
      case 11:
        v14 = *(a2 + 104);
        *(a2 + 88) = "number";
        *(a2 + 96) = 6;
        if ((v14 & 1) == 0)
        {
          *(a2 + 104) = 1;
        }

        v15 = sub_23F2EB70C(a2);
        ++*(a2 + 112);
        sub_23F2F0960(v15);
        operator new();
      case 12:
        v16 = 0;
        v4 = *(a2 + 104);
        *(a2 + 88) = "number";
        *(a2 + 96) = 6;
        if ((v4 & 1) == 0)
        {
          *(a2 + 104) = 1;
        }

        sub_23F2EBF58(a2, &v16);
        operator new();
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      LOBYTE(v16) = 0;
      v7 = *(a2 + 104);
      *(a2 + 88) = "number";
      *(a2 + 96) = 6;
      if ((v7 & 1) == 0)
      {
        *(a2 + 104) = 1;
      }

      sub_23F2EBC60(a2, &v16);
      operator new();
    }

    if (a1 == 1)
    {
      LOWORD(v16) = 0;
      v5 = *(a2 + 104);
      *(a2 + 88) = "number";
      *(a2 + 96) = 6;
      if ((v5 & 1) == 0)
      {
        *(a2 + 104) = 1;
      }

      sub_23F2EBD90(a2, &v16);
      operator new();
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        LODWORD(v16) = 0;
        v9 = *(a2 + 104);
        *(a2 + 88) = "number";
        *(a2 + 96) = 6;
        if ((v9 & 1) == 0)
        {
          *(a2 + 104) = 1;
        }

        sub_23F2EBEC0(a2, &v16);
        operator new();
      case 3:
        v12 = *(a2 + 104);
        *(a2 + 88) = "number";
        *(a2 + 96) = 6;
        if ((v12 & 1) == 0)
        {
          *(a2 + 104) = 1;
        }

        v13 = sub_23F2EB70C(a2);
        ++*(a2 + 112);
        v16 = 0;
        sub_23F06FAB4(v13, &v16);
        operator new();
      case 5:
        LOBYTE(v16) = 0;
        v3 = *(a2 + 104);
        *(a2 + 88) = "number";
        *(a2 + 96) = 6;
        if ((v3 & 1) == 0)
        {
          *(a2 + 104) = 1;
        }

        sub_23F2EBBC8(a2, &v16);
        operator new();
    }
  }

  sub_23F2F1304(a1);
}

void sub_23EF8A8C4(void *a1)
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

void sub_23EF8A9B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void sub_23EF8AB88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF8ABA8(int a1, uint64_t a2)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        LODWORD(v2) = 0;
        sub_23F2F54F0(a2, &v2);
        operator new();
      }

      LOWORD(v2) = 0;
      sub_23F2F4E70(a2, &v2);
      operator new();
    }

    switch(a1)
    {
      case 8:
        v2 = 0;
        sub_23F2F5B70(a2, &v2);
        operator new();
      case 11:
        LODWORD(v2) = 0;
        sub_23F2F6564(a2, &v2);
        operator new();
      case 12:
        v2 = 0;
        sub_23F2F68A4(a2, &v2);
        operator new();
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      LOBYTE(v2) = 0;
      sub_23F2F4C14(a2, &v2);
      operator new();
    }

    if (a1 == 1)
    {
      LOWORD(v2) = 0;
      sub_23F2F51B0(a2, &v2);
      operator new();
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        LODWORD(v2) = 0;
        sub_23F2F5830(a2, &v2);
        operator new();
      case 3:
        v2 = 0;
        sub_23F2F5EB0(a2, &v2);
        operator new();
      case 5:
        LOBYTE(v2) = 0;
        sub_23F2F49B8(a2, &v2);
        operator new();
    }
  }

  sub_23F2F1304(a1);
}

void sub_23EF8AF70(uint64_t a1, void *a2, _BYTE *a3)
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
    if (v8 <= 1)
    {
      sub_23EF8B0B8();
    }

    sub_23F294FCC(a2);
    v10 = a2[6];
    if (a2[7] > v10)
    {
      v11 = *(a2[3] + v10);
      a2[6] = v10 + 1;
      *a3 = v11;
      sub_23EF8B288(v11, a2, a3);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_23EF35CC0(exception, "Not enough data to read");
  __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
}

void sub_23EF8B0B8()
{
  v0 = 7;
  v1 = 7;
  operator new();
}

void sub_23EF8B258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  __cxa_free_exception(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23EF8B288(int a1, void *a2, uint64_t a3)
{
  v17[0] = a2;
  v17[1] = a3;
  if (a1 > 5)
  {
    if (a1 > 7)
    {
      switch(a1)
      {
        case 8:
          sub_23EF8B938(v17);
        case 11:
          sub_23EF8BA28(v17);
        case 12:
          sub_23EF8BB18(v17);
      }

      goto LABEL_31;
    }

    if (a1 != 6)
    {
      sub_23EF8B848(v17);
    }

    v12 = a2[6];
    v13 = a2[7];
    v7 = v13 >= v12;
    v14 = v13 - v12;
    if (!v7)
    {
      v14 = 0;
    }

    if (v14 > 1)
    {
      v15 = *(a2[3] + v12);
      a2[6] = v12 + 2;
      operator new();
    }
  }

  else
  {
    if (a1 > 1)
    {
      switch(a1)
      {
        case 2:
          sub_23EF8B668(v17);
        case 3:
          sub_23EF8B758(v17);
        case 5:
          v3 = a2[6];
          if (a2[7] > v3)
          {
            v4 = *(a2[3] + v3);
            a2[6] = v3 + 1;
            operator new();
          }

          goto LABEL_34;
      }

LABEL_31:

      sub_23F2F1304(a1);
    }

    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_31;
      }

      v5 = a2[6];
      v6 = a2[7];
      v7 = v6 >= v5;
      v8 = v6 - v5;
      if (!v7)
      {
        v8 = 0;
      }

      if (v8 > 1)
      {
        v9 = *(a2[3] + v5);
        a2[6] = v5 + 2;
        operator new();
      }
    }

    else
    {
      v10 = a2[6];
      if (a2[7] > v10)
      {
        v11 = *(a2[3] + v10);
        a2[6] = v10 + 1;
        operator new();
      }
    }
  }

LABEL_34:
  exception = __cxa_allocate_exception(0x10uLL);
  sub_23EF35CC0(exception, "Not enough data to read");
  __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
}

void sub_23EF8B668(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 > 3)
  {
    v6 = *(*(v1 + 24) + v2);
    *(v1 + 48) = v2 + 4;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_23EF35CC0(exception, "Not enough data to read");
  __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
}

void sub_23EF8B758(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 > 7)
  {
    v6 = *(*(v1 + 24) + v2);
    *(v1 + 48) = v2 + 8;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_23EF35CC0(exception, "Not enough data to read");
  __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
}

void sub_23EF8B848(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 > 3)
  {
    v6 = *(*(v1 + 24) + v2);
    *(v1 + 48) = v2 + 4;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_23EF35CC0(exception, "Not enough data to read");
  __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
}

void sub_23EF8B938(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 > 7)
  {
    v6 = *(*(v1 + 24) + v2);
    *(v1 + 48) = v2 + 8;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_23EF35CC0(exception, "Not enough data to read");
  __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
}

void sub_23EF8BA28(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 > 3)
  {
    v6 = *(*(v1 + 24) + v2);
    *(v1 + 48) = v2 + 4;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_23EF35CC0(exception, "Not enough data to read");
  __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
}

void sub_23EF8BB18(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 > 7)
  {
    v6 = *(*(v1 + 24) + v2);
    *(v1 + 48) = v2 + 8;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_23EF35CC0(exception, "Not enough data to read");
  __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
}

void sub_23EF8BC08(int a1, void *a2, uint64_t a3)
{
  v17[0] = a2;
  v17[1] = a3;
  if (a1 > 5)
  {
    if (a1 > 7)
    {
      switch(a1)
      {
        case 8:
          sub_23EF8C2B8(v17);
        case 11:
          sub_23EF8C3A8(v17);
        case 12:
          sub_23EF8C498(v17);
      }

      goto LABEL_31;
    }

    if (a1 != 6)
    {
      sub_23EF8C1C8(v17);
    }

    v12 = a2[6];
    v13 = a2[7];
    v7 = v13 >= v12;
    v14 = v13 - v12;
    if (!v7)
    {
      v14 = 0;
    }

    if (v14 > 1)
    {
      v15 = *(a2[3] + v12);
      a2[6] = v12 + 2;
      operator new();
    }
  }

  else
  {
    if (a1 > 1)
    {
      switch(a1)
      {
        case 2:
          sub_23EF8BFE8(v17);
        case 3:
          sub_23EF8C0D8(v17);
        case 5:
          v3 = a2[6];
          if (a2[7] > v3)
          {
            v4 = *(a2[3] + v3);
            a2[6] = v3 + 1;
            operator new();
          }

          goto LABEL_34;
      }

LABEL_31:

      sub_23F2F1304(a1);
    }

    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_31;
      }

      v5 = a2[6];
      v6 = a2[7];
      v7 = v6 >= v5;
      v8 = v6 - v5;
      if (!v7)
      {
        v8 = 0;
      }

      if (v8 > 1)
      {
        v9 = *(a2[3] + v5);
        a2[6] = v5 + 2;
        operator new();
      }
    }

    else
    {
      v10 = a2[6];
      if (a2[7] > v10)
      {
        v11 = *(a2[3] + v10);
        a2[6] = v10 + 1;
        operator new();
      }
    }
  }

LABEL_34:
  exception = __cxa_allocate_exception(0x10uLL);
  sub_23EF35CC0(exception, "Not enough data to read");
  __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
}

void sub_23EF8BFE8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 > 3)
  {
    v6 = *(*(v1 + 24) + v2);
    *(v1 + 48) = v2 + 4;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_23EF35CC0(exception, "Not enough data to read");
  __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
}

void sub_23EF8C0D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 > 7)
  {
    v6 = *(*(v1 + 24) + v2);
    *(v1 + 48) = v2 + 8;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_23EF35CC0(exception, "Not enough data to read");
  __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
}

void sub_23EF8C1C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 > 3)
  {
    v6 = *(*(v1 + 24) + v2);
    *(v1 + 48) = v2 + 4;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_23EF35CC0(exception, "Not enough data to read");
  __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
}

void sub_23EF8C2B8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 > 7)
  {
    v6 = *(*(v1 + 24) + v2);
    *(v1 + 48) = v2 + 8;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_23EF35CC0(exception, "Not enough data to read");
  __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
}

void sub_23EF8C3A8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 > 3)
  {
    v6 = *(*(v1 + 24) + v2);
    *(v1 + 48) = v2 + 4;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_23EF35CC0(exception, "Not enough data to read");
  __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
}

void sub_23EF8C498(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v4 = v3 >= v2;
  v5 = v3 - v2;
  if (!v4)
  {
    v5 = 0;
  }

  if (v5 > 7)
  {
    v6 = *(*(v1 + 24) + v2);
    *(v1 + 48) = v2 + 8;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_23EF35CC0(exception, "Not enough data to read");
  __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
}

void sub_23EF8C588(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  LODWORD(v7) = 2;
  (*(v5 + 104))(a2, &v7);
  if (v6 >= 1)
  {
    sub_23EF8C670(&v6, a2, a3, v7);
  }

  if (v7 >= 2)
  {
    v7 = a3;
    sub_23EF8CEE0(a2, &v7);
    sub_23EF8C9D8(*a3, a2);
  }

  sub_23EF8C878();
}

void sub_23EF8C670(int *a1, _BYTE *a2, _BYTE *a3, unsigned int a4)
{
  v5 = *a1;
  if (*a1 == 2)
  {
    if (a4 < 2)
    {
      goto LABEL_10;
    }

    v7 = a4;
    v8 = a3;
    v12 = 2;
    (*(*a2 + 104))(a2, &v12);
    if (v12 >= 3)
    {
      v11 = v12;
      if ((atomic_load_explicit(&qword_27E394118, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394118))
      {
        sub_23F302BD0("cv3d::kit::commonio::NumberSample]", 0x21uLL, &stru_27E394100);
        __cxa_guard_release(&qword_27E394118);
        sub_23F2FF068(&stru_27E394100, v11, 2u);
      }

      sub_23F2FF068(&stru_27E394100, v11, 2u);
    }

    v5 = *a1;
    a3 = v8;
    a4 = v7;
  }

  if (a4 >= 2 && v5 >= 1)
  {
    v9 = a3;
    (*(*a2 + 16))(a2);
    v13 = v9;
    sub_23EF8CEE0(a2, &v13);
    sub_23EF8C9D8(*v9, a2);
  }

  if (a4 > 1)
  {
    v13 = a3;
    v10 = a3;
    sub_23EF8CEE0(a2, &v13);
    sub_23EF8C9D8(*v10, a2);
  }

LABEL_10:
  sub_23EF8C878();
}

void sub_23EF8C878()
{
  v0 = 7;
  v1 = 7;
  operator new();
}

void sub_23EF8C9B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF8C9D8(int a1, uint64_t a2)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        LODWORD(v2) = 0;
        (*(*a2 + 56))(a2, &v2);
        operator new();
      }

      LOWORD(v2) = 0;
      (*(*a2 + 48))(a2, &v2);
      operator new();
    }

    switch(a1)
    {
      case 8:
        v2 = 0;
        (*(*a2 + 72))(a2, &v2);
        operator new();
      case 11:
        LODWORD(v2) = 0;
        (*(*a2 + 128))(a2, &v2);
        operator new();
      case 12:
        v2 = 0;
        (*(*a2 + 136))(a2, &v2);
        operator new();
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      LOBYTE(v2) = 0;
      (*(*a2 + 80))(a2, &v2);
      operator new();
    }

    if (a1 == 1)
    {
      LOWORD(v2) = 0;
      (*(*a2 + 96))(a2, &v2);
      operator new();
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        LODWORD(v2) = 0;
        (*(*a2 + 104))(a2, &v2);
        operator new();
      case 3:
        v2 = 0;
        (*(*a2 + 120))(a2, &v2);
        operator new();
      case 5:
        LOBYTE(v2) = 0;
        (*(*a2 + 88))(a2, &v2);
        operator new();
    }
  }

  sub_23F2F1304(a1);
}

uint64_t sub_23EF8CEE0(_BYTE *a1, _BYTE **a2)
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

void sub_23EF8D004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  a17 = 0;
  sub_23F302A54(&a17, v17);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23EF8D058(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v5[25] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *a4;
  sub_23EF432A8(v5, a4 + 1);
  operator new();
}

void sub_23EF8D498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(*v9 + 8))(v9);
  sub_23EF8EC34(&a9);
  _Unwind_Resume(a1);
}

void *sub_23EF8D4FC(void *a1)
{
  *a1 = &unk_285179E00;
  sub_23EF44860((a1 + 6));
  result = a1;
  a1[1] = &unk_285179E48;
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

void sub_23EF8D5BC(void *a1)
{
  *a1 = &unk_285179E00;
  sub_23EF44860((a1 + 6));
  a1[1] = &unk_285179E48;
  v2 = a1[3];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x245CACD00);
}

void sub_23EF8D6A0(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E394178, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E394178))
    {
      sub_23EF8E948();
    }
  }

  (*(*(a1 + 8) + 24))(__p, a1 + 8);
  sub_23EF44334(&xmmword_27E394160, "{", __p, ",");
}

void sub_23EF8D7A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF8D7BC(uint64_t a1@<X8>)
{
  *(a1 + 23) = 8;
  strcpy(a1, "cv3d.viz");
  *(a1 + 24) = 2;
}

void *sub_23EF8D838(void *result)
{
  *result = &unk_285179E48;
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

void *sub_23EF8D8CC(void *a1)
{
  *a1 = &unk_285179E00;
  sub_23EF44860((a1 + 6));
  result = a1;
  a1[1] = &unk_285179E48;
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

void sub_23EF8D98C(void *a1)
{
  *a1 = &unk_285179E00;
  sub_23EF44860((a1 + 6));
  a1[1] = &unk_285179E48;
  v2 = a1[3];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x245CACD00);
}

void sub_23EF8DA60()
{
  if ((atomic_load_explicit(&qword_27E394158, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E394158))
    {
      sub_23EF8E6B4();
    }
  }

  sub_23EF8E168(&xmmword_27E394140, "{");
}

void sub_23EF8DB14(uint64_t a1@<X8>)
{
  *(a1 + 23) = 15;
  strcpy(a1, "unknown_package");
  *(a1 + 24) = 0;
}

void sub_23EF8DB40(void *a1)
{
  *a1 = &unk_285179E48;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23EF8DBE8(char **a1, char **lpsrc)
{
  v4 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28517BF90, &unk_285179E68, 0);
  if (result)
  {
    if (a1 == lpsrc)
    {
      return 1;
    }

    else
    {
      v6 = result;
      v7 = a1[1];
      v8 = *v7;
      v9 = *(v6 + 8);
      if (v8 == *v9)
      {
        v10[0] = &v11;
        v10[1] = v7;
        v10[2] = v9;
        return sub_23F2C7774(v8, v10);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_23EF8DCBC()
{
  if ((atomic_load_explicit(&qword_27E394138, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394138))
  {
    sub_23F302BD0("cv3d::kit::con::Numbers]", 0x17uLL, &xmmword_27E394120);
    __cxa_guard_release(&qword_27E394138);
  }

  sub_23EF8DD70(&xmmword_27E394120, "{");
}

void sub_23EF8DD70(__int128 *a1, uint64_t a2)
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
  sub_23EF8DF1C();
}

void sub_23EF8DEB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF8DECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF8DEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF8DEF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF8DF08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF8E124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF8E168(__int128 *a1, uint64_t a2)
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
  sub_23EF8E398();
}

void sub_23EF8E308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF8E320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF8E334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF8E348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF8E35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF8E370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF8E384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23EF8E62C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  __cxa_guard_abort(&qword_27E394138);
  v23 = *(v21 - 56);
  *(v21 - 56) = 0;
  if (!v23)
  {
    _Unwind_Resume(a1);
  }

  sub_23F302A54(v21 - 56, v23);
  _Unwind_Resume(a1);
}

void sub_23EF8E788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EF8E908(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_23EF3291C(&a9);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23EF8E948()
{
  v1 = *MEMORY[0x277D85DE8];
  v0[23] = 16;
  strcpy(v0, "viz::PackageData");
  operator new();
}

void sub_23EF8EB80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
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

void *sub_23EF8EC34(void *a1)
{
  *a1 = &unk_285179E00;
  sub_23EF44860((a1 + 6));
  result = a1;
  a1[1] = &unk_285179E48;
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

void sub_23EF8ECF4(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v2 = *(a2 + 3);
  v4 = *(a2 + 2);
  v5 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v6[0] = "value_type";
  v6[1] = 10;
  v6[2] = &v3;
  sub_23EF83FFC(a1, v6);
}

void sub_23EF8EE84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23F0655DC((v9 + 8), 6);
  sub_23EF50E84(&a9);
  _Unwind_Resume(a1);
}

void sub_23EF8EEB8(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 <= 5)
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        sub_23F2C6BA0((a2 + 16), 0);
        v21 = *(a2 + 16);
        v22 = *(v21 + 40);
        v23 = *(v21 + 48);
        if (**(a3 + 40) <= 1u)
        {
          v24 = *(a3 + 88);
          *(a3 + 72) = "numbers";
          *(a3 + 80) = 7;
          if ((v24 & 1) == 0)
          {
            *(a3 + 88) = 1;
          }
        }

        v45 = v22;
        v46 = v23;
        sub_23F2E76F4(a3, &v45);
      }

      if (a1 == 1)
      {
        sub_23F2C6BA0((a2 + 16), 1);
        v13 = *(a2 + 16);
        v14 = *(v13 + 40);
        v15 = *(v13 + 48) >> 1;
        if (**(a3 + 40) <= 1u)
        {
          v16 = *(a3 + 88);
          *(a3 + 72) = "numbers";
          *(a3 + 80) = 7;
          if ((v16 & 1) == 0)
          {
            *(a3 + 88) = 1;
          }
        }

        v45 = v14;
        v46 = v15;
        sub_23F2E9F0C(a3, &v45);
      }
    }

    else
    {
      switch(a1)
      {
        case 2:
          sub_23F2C6BA0((a2 + 16), 2);
          v29 = *(a2 + 16);
          v30 = *(v29 + 40);
          v31 = *(v29 + 48) >> 2;
          if (**(a3 + 40) <= 1u)
          {
            v32 = *(a3 + 88);
            *(a3 + 72) = "numbers";
            *(a3 + 80) = 7;
            if ((v32 & 1) == 0)
            {
              *(a3 + 88) = 1;
            }
          }

          v45 = v30;
          v46 = v31;
          sub_23F2EA21C(a3, &v45);
        case 3:
          sub_23F2C6BA0((a2 + 16), 3);
          v37 = *(a2 + 16);
          v38 = *(v37 + 40);
          v39 = *(v37 + 48) >> 3;
          if (**(a3 + 40) <= 1u)
          {
            v40 = *(a3 + 88);
            *(a3 + 72) = "numbers";
            *(a3 + 80) = 7;
            if ((v40 & 1) == 0)
            {
              *(a3 + 88) = 1;
            }
          }

          v45 = v38;
          v46 = v39;
          sub_23F2EA52C(a3, &v45);
        case 5:
          sub_23F2C6BA0((a2 + 16), 5);
          v5 = *(a2 + 16);
          v6 = *(v5 + 40);
          v7 = *(v5 + 48);
          if (**(a3 + 40) <= 1u)
          {
            v8 = *(a3 + 88);
            *(a3 + 72) = "numbers";
            *(a3 + 80) = 7;
            if ((v8 & 1) == 0)
            {
              *(a3 + 88) = 1;
            }
          }

          v45 = v6;
          v46 = v7;
          sub_23F2E9C18(a3, &v45);
      }
    }

LABEL_53:

    sub_23F2F1304(a1);
  }

  if (a1 <= 7)
  {
    if (a1 != 6)
    {
      sub_23F2C6BA0((a2 + 16), 7);
      v17 = *(a2 + 16);
      v18 = *(v17 + 40);
      v19 = *(v17 + 48) >> 2;
      if (**(a3 + 40) <= 1u)
      {
        v20 = *(a3 + 88);
        *(a3 + 72) = "numbers";
        *(a3 + 80) = 7;
        if ((v20 & 1) == 0)
        {
          *(a3 + 88) = 1;
        }
      }

      v45 = v18;
      v46 = v19;
      sub_23F2EA094(a3, &v45);
    }

    sub_23F2C6BA0((a2 + 16), 6);
    v25 = *(a2 + 16);
    v26 = *(v25 + 40);
    v27 = *(v25 + 48) >> 1;
    if (**(a3 + 40) <= 1u)
    {
      v28 = *(a3 + 88);
      *(a3 + 72) = "numbers";
      *(a3 + 80) = 7;
      if ((v28 & 1) == 0)
      {
        *(a3 + 88) = 1;
      }
    }

    v45 = v26;
    v46 = v27;
    sub_23F2E9D84(a3, &v45);
  }

  switch(a1)
  {
    case 8:
      sub_23F2C6BA0((a2 + 16), 8);
      v33 = *(a2 + 16);
      v34 = *(v33 + 40);
      v35 = *(v33 + 48) >> 3;
      if (**(a3 + 40) <= 1u)
      {
        v36 = *(a3 + 88);
        *(a3 + 72) = "numbers";
        *(a3 + 80) = 7;
        if ((v36 & 1) == 0)
        {
          *(a3 + 88) = 1;
        }
      }

      v45 = v34;
      v46 = v35;
      sub_23F2EA3A4(a3, &v45);
    case 11:
      sub_23F2C6BA0((a2 + 16), 11);
      v41 = *(a2 + 16);
      v42 = *(v41 + 40);
      v43 = *(v41 + 48) >> 2;
      if (**(a3 + 40) <= 1u)
      {
        v44 = *(a3 + 88);
        *(a3 + 72) = "numbers";
        *(a3 + 80) = 7;
        if ((v44 & 1) == 0)
        {
          *(a3 + 88) = 1;
        }
      }

      v45 = v42;
      v46 = v43;
      sub_23F2EAAD8(a3, &v45);
      break;
    case 12:
      sub_23F2C6BA0((a2 + 16), 12);
      v9 = *(a2 + 16);
      v10 = *(v9 + 40);
      v11 = *(v9 + 48) >> 3;
      if (**(a3 + 40) <= 1u)
      {
        v12 = *(a3 + 88);
        *(a3 + 72) = "numbers";
        *(a3 + 80) = 7;
        if ((v12 & 1) == 0)
        {
          *(a3 + 88) = 1;
        }
      }

      v45 = v10;
      v46 = v11;
      sub_23F2EAF38(a3, &v45);
      break;
    default:
      goto LABEL_53;
  }
}

void sub_23EF8F360(uint64_t a1, __int128 *a2)
{
  v8 = *a2;
  v3 = *(a2 + 3);
  v9 = *(a2 + 2);
  v10 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = v8;
  v4 = *(a1 + 24);
  if (*(v4 + 40) == 1)
  {
    v12 = (v4 + 16);
    sub_23F2FC63C(&v12, &v11);
  }

  else
  {
    if (v8 < 0)
    {
      LOBYTE(v12) = -52;
      BYTE1(v12) = v8;
    }

    else
    {
      LOBYTE(v12) = v8;
    }

    v5 = *(v4 + 8);
    std::ostream::write();
  }

  v6 = *(a1 + 24);
  if (*(v6 + 40) == 1)
  {
    v12 = (v6 + 16);
    sub_23F2FDC5C(&v12, *(&v8 + 1));
  }

  else
  {
    sub_23F2FDF70((v6 + 8));
  }

  sub_23EF8F4C0(v8, &v8, a1);
  v7 = v10;
  if (v10)
  {
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

uint64_t sub_23EF8F4C0(int a1, uint64_t a2, uint64_t a3)
{
  v90 = *MEMORY[0x277D85DE8];
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        result = sub_23F2C6BA0((a2 + 16), 6);
        v30 = *(a2 + 16);
        v32 = *(v30 + 40);
        v31 = *(v30 + 48);
        v33 = v31 >> 1;
        v34 = *(a3 + 24);
        if (*(v34 + 40) == 1)
        {
          *&v89 = v34 + 16;
          if (v31 >= 2)
          {
            v35 = 2 * v33;
            do
            {
              v36 = *v32++;
              result = sub_23F2FC78C(&v89, v36);
              v35 -= 2;
            }

            while (v35);
          }
        }

        else if (v31 >= 2)
        {
          v70 = 2 * v33;
          do
          {
            v71 = *v32++;
            result = sub_23F2FCA5C((v34 + 8));
            v70 -= 2;
          }

          while (v70);
        }
      }

      else
      {
        result = sub_23F2C6BA0((a2 + 16), 7);
        v19 = *(a2 + 16);
        v21 = *(v19 + 40);
        v20 = *(v19 + 48);
        v22 = v20 >> 2;
        v23 = *(a3 + 24);
        if (*(v23 + 40) == 1)
        {
          *&v89 = v23 + 16;
          if (v20 >= 4)
          {
            v24 = 4 * v22;
            do
            {
              v25 = *v21++;
              result = sub_23F2FCD34(&v89, v25);
              v24 -= 4;
            }

            while (v24);
          }
        }

        else if (v20 >= 4)
        {
          v65 = 4 * v22;
          do
          {
            v66 = *v21++;
            result = sub_23F2FD15C((v23 + 8));
            v65 -= 4;
          }

          while (v65);
        }
      }

      goto LABEL_99;
    }

    switch(a1)
    {
      case 8:
        result = sub_23F2C6BA0((a2 + 16), 8);
        v44 = *(a2 + 16);
        v46 = *(v44 + 40);
        v45 = *(v44 + 48);
        v47 = v45 >> 3;
        v48 = *(a3 + 24);
        if (*(v48 + 40) == 1)
        {
          *&v89 = v48 + 16;
          if (v45 >= 8)
          {
            v49 = 8 * v47;
            do
            {
              v50 = *v46++;
              result = sub_23F2FD5D0(&v89, v50);
              v49 -= 8;
            }

            while (v49);
          }
        }

        else if (v45 >= 8)
        {
          v74 = 8 * v47;
          do
          {
            v75 = *v46++;
            result = sub_23F2FDB18((v48 + 8), v75);
            v74 -= 8;
          }

          while (v74);
        }

        goto LABEL_99;
      case 11:
        result = sub_23F2C6BA0((a2 + 16), 11);
        v58 = *(a2 + 16);
        v60 = *(v58 + 40);
        v59 = *(v58 + 48);
        v61 = v59 >> 2;
        v62 = *(a3 + 24);
        if (*(v62 + 40) == 1)
        {
          *&v89 = v62 + 16;
          if (v59 >= 4)
          {
            v63 = 4 * v61;
            do
            {
              result = sub_23F2FE06C(&v88, &v89, v60++);
              v63 -= 4;
            }

            while (v63);
          }
        }

        else if (v59 >= 4)
        {
          v84 = 4 * v61;
          do
          {
            v85 = *v60++;
            LOBYTE(v89) = -54;
            *(&v89 + 1) = bswap32(v85);
            v86 = *(v62 + 8);
            result = std::ostream::write();
            v84 -= 4;
          }

          while (v84);
        }

        goto LABEL_99;
      case 12:
        result = sub_23F2C6BA0((a2 + 16), 12);
        v10 = *(a2 + 16);
        v12 = *(v10 + 40);
        v11 = *(v10 + 48);
        v13 = v11 >> 3;
        v14 = *(a3 + 24);
        if (*(v14 + 40) == 1)
        {
          *&v89 = v14 + 16;
          if (v11 >= 8)
          {
            v15 = 8 * v13;
            do
            {
              result = sub_23F2FE154(&v88, &v89, v12++);
              v15 -= 8;
            }

            while (v15);
          }
        }

        else if (v11 >= 8)
        {
          v79 = 8 * v13;
          do
          {
            v80 = *v12++;
            LOBYTE(v89) = -53;
            *(&v89 + 1) = bswap64(v80);
            v81 = *(v14 + 8);
            result = std::ostream::write();
            v79 -= 8;
          }

          while (v79);
        }

        goto LABEL_99;
    }

    goto LABEL_57;
  }

  if (a1 > 1)
  {
    switch(a1)
    {
      case 2:
        result = sub_23F2C6BA0((a2 + 16), 2);
        v37 = *(a2 + 16);
        v39 = *(v37 + 40);
        v38 = *(v37 + 48);
        v40 = v38 >> 2;
        v41 = *(a3 + 24);
        if (*(v41 + 40) == 1)
        {
          *&v89 = v41 + 16;
          if (v38 >= 4)
          {
            v42 = 4 * v40;
            do
            {
              v43 = *v39++;
              result = sub_23F2FD25C(&v89, v43);
              v42 -= 4;
            }

            while (v42);
          }
        }

        else if (v38 >= 4)
        {
          v72 = 4 * v40;
          do
          {
            v73 = *v39++;
            result = sub_23F2FD4DC(&v89, (v41 + 8));
            v72 -= 4;
          }

          while (v72);
        }

        goto LABEL_99;
      case 3:
        result = sub_23F2C6BA0((a2 + 16), 3);
        v51 = *(a2 + 16);
        v53 = *(v51 + 40);
        v52 = *(v51 + 48);
        v54 = v52 >> 3;
        v55 = *(a3 + 24);
        if (*(v55 + 40) == 1)
        {
          *&v89 = v55 + 16;
          if (v52 >= 8)
          {
            v56 = 8 * v54;
            do
            {
              v57 = *v53++;
              result = sub_23F2FDC5C(&v89, v57);
              v56 -= 8;
            }

            while (v56);
          }
        }

        else if (v52 >= 8)
        {
          v82 = 8 * v54;
          do
          {
            v83 = *v53++;
            result = sub_23F2FDF70((v55 + 8));
            v82 -= 8;
          }

          while (v82);
        }

        goto LABEL_99;
      case 5:
        result = sub_23F2C6BA0((a2 + 16), 5);
        v6 = *(a2 + 16);
        v7 = *(v6 + 40);
        v8 = *(v6 + 48);
        v9 = *(a3 + 24);
        if (*(v9 + 40) == 1)
        {
          for (*&v89 = v9 + 16; v8; --v8)
          {
            result = sub_23F2FC4E8(&v89, v7++);
          }
        }

        else
        {
          for (; v8; --v8)
          {
            while (1)
            {
              v77 = *v7;
              if (v77 <= -33)
              {
                break;
              }

              LOBYTE(v89) = *v7;
              v76 = *(v9 + 8);
              result = std::ostream::write();
              ++v7;
              if (!--v8)
              {
                goto LABEL_99;
              }
            }

            LOBYTE(v89) = -48;
            BYTE1(v89) = v77;
            v78 = *(v9 + 8);
            result = std::ostream::write();
            ++v7;
          }
        }

        goto LABEL_99;
    }

LABEL_57:
    v64 = *MEMORY[0x277D85DE8];

    sub_23F2F1304(a1);
  }

  if (a1)
  {
    if (a1 == 1)
    {
      sub_23F2C6BA0((a2 + 16), 1);
      v16 = *(a2 + 16);
      v17 = *(v16 + 40);
      v18 = *(v16 + 48) >> 1;
      *&v89 = v17;
      *(&v89 + 1) = v18;
      result = sub_23F2F7948(a3, &v89);
      goto LABEL_99;
    }

    goto LABEL_57;
  }

  result = sub_23F2C6BA0((a2 + 16), 0);
  v26 = *(a2 + 16);
  v27 = *(v26 + 40);
  v28 = *(v26 + 48);
  v29 = *(a3 + 24);
  if (*(v29 + 40) == 1)
  {
    for (*&v89 = v29 + 16; v28; --v28)
    {
      result = sub_23F2FC63C(&v89, v27++);
    }
  }

  else
  {
    for (; v28; --v28)
    {
      while (1)
      {
        v68 = *v27;
        if ((v68 & 0x80000000) == 0)
        {
          break;
        }

        LOBYTE(v89) = -52;
        BYTE1(v89) = v68;
        v67 = *(v29 + 8);
        result = std::ostream::write();
        ++v27;
        if (!--v28)
        {
          goto LABEL_99;
        }
      }

      LOBYTE(v89) = *v27;
      v69 = *(v29 + 8);
      result = std::ostream::write();
      ++v27;
    }
  }

LABEL_99:
  v87 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23EF8FAC8(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v2 = *(a2 + 3);
  v4 = *(a2 + 2);
  v5 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v6[0] = "value_type";
  v6[1] = 10;
  v6[2] = &v3;
  sub_23EF861C8(a1, v6);
}

void sub_23EF8FC58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23F06357C((v9 + 8), 6);
  sub_23EF50E84(&a9);
  _Unwind_Resume(a1);
}

void sub_23EF8FC8C(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 <= 5)
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        sub_23F2C6BA0((a2 + 16), 0);
        v21 = *(a2 + 16);
        v22 = *(v21 + 40);
        v23 = *(v21 + 48);
        if (**(a3 + 40) <= 1u)
        {
          v24 = *(a3 + 88);
          *(a3 + 72) = "numbers";
          *(a3 + 80) = 7;
          if ((v24 & 1) == 0)
          {
            *(a3 + 88) = 1;
          }
        }

        v45 = v22;
        v46 = v23;
        sub_23F2E7154(a3, &v45);
      }

      if (a1 == 1)
      {
        sub_23F2C6BA0((a2 + 16), 1);
        v13 = *(a2 + 16);
        v14 = *(v13 + 40);
        v15 = *(v13 + 48) >> 1;
        if (**(a3 + 40) <= 1u)
        {
          v16 = *(a3 + 88);
          *(a3 + 72) = "numbers";
          *(a3 + 80) = 7;
          if ((v16 & 1) == 0)
          {
            *(a3 + 88) = 1;
          }
        }

        v45 = v14;
        v46 = v15;
        sub_23F2E807C(a3, &v45);
      }
    }

    else
    {
      switch(a1)
      {
        case 2:
          sub_23F2C6BA0((a2 + 16), 2);
          v29 = *(a2 + 16);
          v30 = *(v29 + 40);
          v31 = *(v29 + 48) >> 2;
          if (**(a3 + 40) <= 1u)
          {
            v32 = *(a3 + 88);
            *(a3 + 72) = "numbers";
            *(a3 + 80) = 7;
            if ((v32 & 1) == 0)
            {
              *(a3 + 88) = 1;
            }
          }

          v45 = v30;
          v46 = v31;
          sub_23F2E838C(a3, &v45);
        case 3:
          sub_23F2C6BA0((a2 + 16), 3);
          v37 = *(a2 + 16);
          v38 = *(v37 + 40);
          v39 = *(v37 + 48) >> 3;
          if (**(a3 + 40) <= 1u)
          {
            v40 = *(a3 + 88);
            *(a3 + 72) = "numbers";
            *(a3 + 80) = 7;
            if ((v40 & 1) == 0)
            {
              *(a3 + 88) = 1;
            }
          }

          v45 = v38;
          v46 = v39;
          sub_23F2E869C(a3, &v45);
        case 5:
          sub_23F2C6BA0((a2 + 16), 5);
          v5 = *(a2 + 16);
          v6 = *(v5 + 40);
          v7 = *(v5 + 48);
          if (**(a3 + 40) <= 1u)
          {
            v8 = *(a3 + 88);
            *(a3 + 72) = "numbers";
            *(a3 + 80) = 7;
            if ((v8 & 1) == 0)
            {
              *(a3 + 88) = 1;
            }
          }

          v45 = v6;
          v46 = v7;
          sub_23F2E7D88(a3, &v45);
      }
    }

LABEL_53:

    sub_23F2F1304(a1);
  }

  if (a1 <= 7)
  {
    if (a1 != 6)
    {
      sub_23F2C6BA0((a2 + 16), 7);
      v17 = *(a2 + 16);
      v18 = *(v17 + 40);
      v19 = *(v17 + 48) >> 2;
      if (**(a3 + 40) <= 1u)
      {
        v20 = *(a3 + 88);
        *(a3 + 72) = "numbers";
        *(a3 + 80) = 7;
        if ((v20 & 1) == 0)
        {
          *(a3 + 88) = 1;
        }
      }

      v45 = v18;
      v46 = v19;
      sub_23F2E8204(a3, &v45);
    }

    sub_23F2C6BA0((a2 + 16), 6);
    v25 = *(a2 + 16);
    v26 = *(v25 + 40);
    v27 = *(v25 + 48) >> 1;
    if (**(a3 + 40) <= 1u)
    {
      v28 = *(a3 + 88);
      *(a3 + 72) = "numbers";
      *(a3 + 80) = 7;
      if ((v28 & 1) == 0)
      {
        *(a3 + 88) = 1;
      }
    }

    v45 = v26;
    v46 = v27;
    sub_23F2E7EF4(a3, &v45);
  }

  switch(a1)
  {
    case 8:
      sub_23F2C6BA0((a2 + 16), 8);
      v33 = *(a2 + 16);
      v34 = *(v33 + 40);
      v35 = *(v33 + 48) >> 3;
      if (**(a3 + 40) <= 1u)
      {
        v36 = *(a3 + 88);
        *(a3 + 72) = "numbers";
        *(a3 + 80) = 7;
        if ((v36 & 1) == 0)
        {
          *(a3 + 88) = 1;
        }
      }

      v45 = v34;
      v46 = v35;
      sub_23F2E8514(a3, &v45);
    case 11:
      sub_23F2C6BA0((a2 + 16), 11);
      v41 = *(a2 + 16);
      v42 = *(v41 + 40);
      v43 = *(v41 + 48) >> 2;
      if (**(a3 + 40) <= 1u)
      {
        v44 = *(a3 + 88);
        *(a3 + 72) = "numbers";
        *(a3 + 80) = 7;
        if ((v44 & 1) == 0)
        {
          *(a3 + 88) = 1;
        }
      }

      v45 = v42;
      v46 = v43;
      sub_23F2E8C48(a3, &v45);
      break;
    case 12:
      sub_23F2C6BA0((a2 + 16), 12);
      v9 = *(a2 + 16);
      v10 = *(v9 + 40);
      v11 = *(v9 + 48) >> 3;
      if (**(a3 + 40) <= 1u)
      {
        v12 = *(a3 + 88);
        *(a3 + 72) = "numbers";
        *(a3 + 80) = 7;
        if ((v12 & 1) == 0)
        {
          *(a3 + 88) = 1;
        }
      }

      v45 = v10;
      v46 = v11;
      sub_23F2E90A8(a3, &v45);
      break;
    default:
      goto LABEL_53;
  }
}

void sub_23EF90134(uint64_t a1, __int128 *a2)
{
  v6 = *a2;
  v3 = *(a2 + 3);
  v7 = *(a2 + 2);
  v8 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = v6;
  sub_23F2F3D94(a1, &v9);
  if (*(a1 + 40))
  {
    v4 = *(a1 + 24);
    v9 = *(a1 + 32);
    sub_23EF2F9B0(v4, &v9, 1);
  }

  MEMORY[0x245CAC960](*(a1 + 24), *(&v6 + 1));
  ++*(a1 + 40);
  sub_23EF90244(v6, &v6, a1);
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