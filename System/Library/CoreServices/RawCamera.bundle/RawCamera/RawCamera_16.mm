void *sub_233859A38(void *a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5, uint64_t *a6, char *a7, int *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2849255C0;
  sub_233859B3C((a1 + 3), a2, *a3, a4, a5, a6, *a7, *a8);
  return a1;
}

void sub_233859AC0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2849255C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_233859B3C(uint64_t a1, void *a2, unint64_t a3, void *a4, _OWORD *a5, uint64_t *a6, char a7, int a8)
{
  v12 = sub_2337AD9D8(a1, a2, a3, a4, a5);
  *(v12 + 200) = 0;
  *(v12 + 208) = 0;
  *(v12 + 192) = 0;
  *(v12 + 216) = -1;
  *v12 = &unk_284922460;
  *(v12 + 232) = 0;
  *(v12 + 240) = 0;
  *(v12 + 224) = 0;
  sub_233729070(v12 + 224, *a6, a6[1], (a6[1] - *a6) >> 2);
  *(a1 + 248) = a7;
  *(a1 + 252) = a8;
  return a1;
}

void *sub_233859BD8(void *a1)
{
  *a1 = &unk_28490A870;
  v2 = a1[24];
  if (v2)
  {
    a1[25] = v2;
    operator delete(v2);
  }

  return sub_233723A54(a1);
}

void sub_233859C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_2337239E8(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_233859C98(uint64_t a1)
{
  sub_233859E60(a1);
  sub_23385A12C(a1);
  if (*(a1 + 128))
  {
    v2 = *(**(a1 + 8) + 24);

    v2();
  }
}

uint64_t sub_233859D10(uint64_t result, uint64_t *a2)
{
  *result = &unk_284925610;
  v2 = *a2;
  *(result + 8) = *a2;
  v3 = a2[1];
  *(result + 16) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v2 = *(result + 8);
  }

  *(result + 32) = 0u;
  *(result + 80) = 0u;
  *(result + 112) = 0u;
  *(result + 128) = 0u;
  *(result + 96) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *(result + 24) = *(v2 + 48);
  return result;
}

void sub_233859DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v13 = *(v10 + 136);
  if (v13)
  {
    sub_2337239E8(v13);
  }

  a10 = v11 + 9;
  sub_2337A6DEC(&a10);
  sub_2337A6DEC(&a10);
  a10 = v11 + 3;
  sub_2337A6DEC(&a10);
  a10 = v11;
  sub_2337A6DEC(&a10);
  v14 = *(v10 + 16);
  if (v14)
  {
    sub_2337239E8(v14);
  }

  _Unwind_Resume(a1);
}

void sub_233859E60(uint64_t a1)
{
  sub_233726218(&__p, *(a1 + 24));
  sub_23385BE00(v20, 4uLL);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  sub_233726218(v16, *(a1 + 24));
  sub_23385BE00(&__p, 4uLL);
  v2 = v16[0];
  if (v16[0])
  {
    v16[1] = v16[0];
    operator delete(v16[0]);
  }

  v3 = 0;
  LODWORD(v4) = *(a1 + 24);
  do
  {
    if (v4)
    {
      v5 = 0;
      v2 = *(a1 + 8);
      do
      {
        v6 = v2[13];
        v7 = sub_2337B0628(v2);
        if (0xAAAAAAAAAAAAAAABLL * ((v19 - __p) >> 3) <= v3)
        {
          sub_2337306B0();
        }

        v8 = (__p + 24 * v3);
        v9 = *v8;
        if (v5 >= (v8[1] - *v8) >> 1)
        {
          sub_2337306B0();
        }

        v10 = v6 >> 1;
        v11 = *(a1 + 8);
        *(v9 + 2 * v5) = *(v7 + 2 * (*(v11 + 56) * v5) + 2 * (v10 + ~v3));
        v12 = sub_2337B0628(v11);
        if (0xAAAAAAAAAAAAAAABLL * (v20[1] - v20[0]) <= v3)
        {
          sub_2337306B0();
        }

        v13 = v20[0][3 * v3];
        if (v5 >= v20[0][3 * v3 + 1] - v13)
        {
          sub_2337306B0();
        }

        v14 = v12;
        v2 = *(a1 + 8);
        v13[v5] = *(v14 + 2 * (v2[14] * v5) + 2 * v3 + 2 * v10);
        ++v5;
        v4 = *(a1 + 24);
      }

      while (v5 < v4);
    }

    ++v3;
  }

  while (v3 != 4);
  sub_23385A5B0(v2, v20);
  sub_23385A5B0(v15, &__p);
  sub_23385A8FC(v20, (a1 + 56), v16);
  sub_23385BF60((a1 + 32));
  *(a1 + 32) = *v16;
  *(a1 + 48) = v17;
  v16[1] = 0;
  v17 = 0;
  v16[0] = 0;
  v21 = v16;
  sub_2337A6DEC(&v21);
  sub_23385A8FC(&__p, (a1 + 104), v16);
  sub_23385BF60((a1 + 80));
  *(a1 + 80) = *v16;
  *(a1 + 96) = v17;
  v16[1] = 0;
  v17 = 0;
  v16[0] = 0;
  v21 = v16;
  sub_2337A6DEC(&v21);
  v16[0] = &__p;
  sub_2337A6DEC(v16);
  __p = v20;
  sub_2337A6DEC(&__p);
}

void sub_23385A0B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char **__p, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, uint64_t a14, char a15)
{
  __p = &a12;
  sub_2337A6DEC(&__p);
  a12 = &a15;
  sub_2337A6DEC(&a12);
  _Unwind_Resume(a1);
}

void sub_23385A12C(void *a1)
{
  v37 = 0;
  v35 = 0.0;
  v36 = 0.0;
  sub_23385AEFC(a1, &v37, &v36, &v35);
  v2 = 0;
  if (v36 > 0.15)
  {
    v2 = v36 / v35 > 0.7;
  }

  v34 = 0.0;
  sub_23385B0D0(a1, 1u, 1, 1, 1, 1, 0, &v34, &v32);
  v4 = v32;
  v3 = v33;
  if (v33)
  {
    atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = v34;
  v31 = 0.0;
  sub_23385B0D0(a1, 1u, 0, 0, 1, 1, 0, &v31, &v29);
  v28 = 0.0;
  sub_23385B0D0(a1, 1u, 1, 1, 0, 0, 0, &v28, &v26);
  if (v37)
  {
    if (v31 >= v28)
    {
      v6 = v28;
    }

    else
    {
      v6 = v31;
    }

    v7 = &v26;
    if (v31 < v28)
    {
      v7 = &v29;
    }

    v9 = *v7;
    v8 = v7[1];
    v10 = v6 / v5;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      if (v10 >= 1.05)
      {
        v6 = v5;
        v9 = v4;
      }

      else
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        if (v3)
        {
          sub_2337239E8(v3);
        }

        v3 = v8;
      }

      sub_2337239E8(v8);
      v12 = v3;
      goto LABEL_34;
    }

    if (v10 < 1.05)
    {
      v12 = 0;
    }

    else
    {
      v12 = v3;
    }

    if (v10 < 1.05)
    {
      v11 = *v7;
    }

    else
    {
      v11 = v4;
    }

    if (v10 < 1.05)
    {
      v5 = v6;
    }

    if (v3 && v10 < 1.05)
    {
      sub_2337239E8(v3);
      v12 = 0;
LABEL_34:
      v11 = v9;
      v5 = v6;
    }
  }

  else
  {
    v11 = v26;
    v12 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v3)
    {
      sub_2337239E8(v3);
    }

    v5 = v28;
  }

  v25 = 0.0;
  sub_23385B0D0(a1, 1u, 1, 0, 0, 0, 0, &v25, &v24);
  v13 = v25;
  if (v25 / v5 >= 1.05)
  {
    v14 = v12;
  }

  else
  {
    v14 = *(&v24 + 1);
    v11 = v24;
    if (*(&v24 + 1))
    {
      atomic_fetch_add_explicit((*(&v24 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    if (v12)
    {
      sub_2337239E8(v12);
      v5 = v25;
    }

    else
    {
      v5 = v13;
    }
  }

  sub_23385B0D0(a1, 1u, 0, 0, 0, 0, 0, &v25, &v23);
  v15 = v23;
  v23 = 0uLL;
  v16 = *(&v24 + 1);
  v24 = v15;
  if (v16)
  {
    sub_2337239E8(v16);
    if (*(&v23 + 1))
    {
      sub_2337239E8(*(&v23 + 1));
    }
  }

  v17 = v25;
  if (v25 / v5 >= 1.05)
  {
    v18 = v14;
    if (!v2)
    {
      goto LABEL_64;
    }
  }

  else
  {
    v18 = *(&v24 + 1);
    v11 = v24;
    if (*(&v24 + 1))
    {
      atomic_fetch_add_explicit((*(&v24 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    if (v14)
    {
      sub_2337239E8(v14);
      v5 = v25;
      if (!v2)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v5 = v17;
      if (!v2)
      {
        goto LABEL_64;
      }
    }
  }

  sub_23385B0D0(a1, 0, 0, 0, 0, 0, 1, &v25, &v23);
  v19 = v23;
  v23 = 0uLL;
  v20 = *(&v24 + 1);
  v24 = v19;
  if (v20)
  {
    sub_2337239E8(v20);
    if (*(&v23 + 1))
    {
      sub_2337239E8(*(&v23 + 1));
    }
  }

  if (v25 / v5 >= 1.05)
  {
LABEL_64:
    v21 = v18;
    if (!v11)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  v21 = *(&v24 + 1);
  v11 = v24;
  if (*(&v24 + 1))
  {
    atomic_fetch_add_explicit((*(&v24 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  if (v18)
  {
    sub_2337239E8(v18);
  }

  if (v11)
  {
LABEL_65:
    nullsub_1(v11);
  }

LABEL_66:
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = a1[17];
  a1[16] = v11;
  a1[17] = v21;
  if (v22)
  {
    sub_2337239E8(v22);
  }

  if (*(&v24 + 1))
  {
    sub_2337239E8(*(&v24 + 1));
  }

  if (v27)
  {
    sub_2337239E8(v27);
  }

  if (v30)
  {
    sub_2337239E8(v30);
  }

  if (v33)
  {
    sub_2337239E8(v33);
  }

  if (v21)
  {
    sub_2337239E8(v21);
  }
}

void sub_23385A538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  if (a16)
  {
    sub_2337239E8(a16);
  }

  if (a19)
  {
    sub_2337239E8(a19);
  }

  if (a22)
  {
    sub_2337239E8(a22);
  }

  if (v22)
  {
    sub_2337239E8(v22);
  }

  _Unwind_Resume(exception_object);
}

void sub_23385A5B0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4 == v3)
  {
    sub_2337306B0();
  }

  v6 = v3[1] - *v3;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  sub_23385BFA0(&v46, v3, v4, 0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3));
  v9 = **a2;
  v10 = *(*a2 + 24);
  v11 = *(*a2 + 48);
  v12 = 0.0;
  v13 = 0.0;
  v14 = *(*a2 + 72);
  v15 = (v9 + 2);
  v16 = (v10 + 2);
  v17 = (v11 + 2);
  v18 = (v14 + 2);
  v19 = -2;
  v20 = 0.0;
  v21 = 0.0;
  v22 = 0.0;
  v23 = 0.0;
  v24 = 0.0;
  v25 = 0.0;
  do
  {
    LOWORD(v7) = *(v15 - 1);
    *&v26 = *&v7;
    v12 = v12 + *&v26;
    LOWORD(v26) = *(v16 - 1);
    *&v27 = v26;
    v13 = v13 + *&v27;
    LOWORD(v27) = *(v17 - 1);
    *&v28 = v27;
    v25 = v25 + *&v28;
    LOWORD(v28) = *(v18 - 1);
    *&v29 = v28;
    v24 = v24 + *&v29;
    LOWORD(v29) = *v15;
    *&v30 = v29;
    v23 = v23 + *&v30;
    LOWORD(v30) = *v16;
    *&v31 = v30;
    v22 = v22 + *&v31;
    LOWORD(v31) = *v17;
    *&v32 = v31;
    v21 = v21 + *&v32;
    LOWORD(v32) = *v18;
    v7 = v32;
    v19 += 2;
    v15 += 2;
    v20 = v20 + v7;
    v16 += 2;
    v17 += 2;
    v18 += 2;
  }

  while (v19 < 0x62);
  if ((v6 >> 1) >= 0x66)
  {
    v33 = 0;
    v34 = *v46;
    v35 = v46[3];
    v36 = v46[6];
    v37 = v46[9];
    v38 = 101;
    do
    {
      LOWORD(v8) = *(v9 + 2 * (v33 + 50));
      *&v39 = (v12 / 50.0 + *&v8) * 0.5;
      *&v34[2 * v33 + 100] = *&v39;
      LOWORD(v39) = *(v10 + 2 * (v33 + 50));
      *&v40 = (v13 / 50.0 + v39) * 0.5;
      *&v35[2 * v33 + 100] = *&v40;
      LOWORD(v40) = *(v11 + 2 * (v33 + 50));
      *&v41 = (v25 / 50.0 + v40) * 0.5;
      *&v36[2 * v33 + 100] = *&v41;
      LOWORD(v41) = *(v14 + 2 * (v33 + 50));
      *&v42 = (v24 / 50.0 + v41) * 0.5;
      *&v37[2 * v33 + 100] = *&v42;
      LOWORD(v42) = *(v9 + 2 * (v33 + 51));
      *&v43 = (v23 / 50.0 + v42) * 0.5;
      *&v34[2 * v33 + 102] = *&v43;
      LOWORD(v43) = *(v10 + 2 * (v33 + 51));
      *&v44 = (v22 / 50.0 + v43) * 0.5;
      *&v35[2 * v33 + 102] = *&v44;
      LOWORD(v44) = *(v11 + 2 * (v33 + 51));
      *&v45 = (v21 / 50.0 + v44) * 0.5;
      *&v36[2 * v33 + 102] = *&v45;
      LOWORD(v45) = *(v14 + 2 * (v33 + 51));
      *&v37[2 * v33 + 102] = ((v20 / 50.0 + v45) * 0.5);
      v12 = v12 + (*(v9 + 2 * (v33 + 100)) - *(v9 + 2 * v33));
      v13 = v13 + (*(v10 + 2 * (v33 + 100)) - *(v10 + 2 * v33));
      v25 = v25 + (*(v11 + 2 * (v33 + 100)) - *(v11 + 2 * v33));
      v24 = v24 + (*(v14 + 2 * (v33 + 100)) - *(v14 + 2 * v33));
      v23 = v23 + (*(v9 + 2 * v38) - *(v9 + 2 * (v33 + 1)));
      v22 = v22 + (*(v10 + 2 * v38) - *(v10 + 2 * (v33 + 1)));
      v21 = v21 + (*(v11 + 2 * v38) - *(v11 + 2 * (v33 + 1)));
      v8 = (*(v14 + 2 * v38) - *(v14 + 2 * (v33 + 1)));
      v20 = v20 + v8;
      v38 = v33 + 103;
      v33 += 2;
    }

    while (v6 >> 1 > v38);
  }

  if (&v46 != a2)
  {
    sub_23385C114(a2, v46, v47, 0xAAAAAAAAAAAAAAABLL * (v47 - v46));
  }

  v49 = &v46;
  sub_2337A6DEC(&v49);
}

void sub_23385A8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_2337A6DEC(&a12);
  _Unwind_Resume(a1);
}

void sub_23385A8FC(unsigned __int16 ***a1@<X1>, uint64_t *a2@<X2>, uint64_t **a3@<X8>)
{
  if (a1[1] == *a1)
  {
    sub_2337306B0();
  }

  v5 = (*a1)[1] - **a1;
  v98 = 0x4197D78400000000;
  sub_233731694(__p, ((v5 >> 1) >> 1) + 1);
  sub_23385C2FC(v102, (v5 >> 1));
  v6 = v5 >> 1;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v7 = 2;
  v8 = 2;
  do
  {
    sub_233730758(__p, 9uLL);
    sub_233730758(&v98, 9uLL);
    v9 = 0;
    v10 = 0;
    v11 = v7 + 4;
    v12 = **a1;
    v13 = (*a1)[3];
    v14 = (*a1)[6];
    v15 = (*a1)[9];
    v16 = __p[0];
    v17 = v98;
    v18 = *v12;
    v19 = *v13;
    v20 = *v14;
    v21 = *v15;
    v22 = &v12[v8];
    v23 = &v13[v8];
    v24 = &v14[v8];
    v25 = &v15[v8];
    v26 = 0.0;
    v27 = 0.0;
    do
    {
      v28 = v18 - v22[v10];
      v18 = v12[v10 + 1];
      v29 = (v18 - v22[v10 + 1]);
      v30 = (v19 - v23[v10]);
      v19 = v13[v10 + 1];
      v31 = (v19 - v23[v10 + 1]);
      v32 = (v20 - v24[v10]);
      v33 = v28 * v28 + 0.0 + v30 * v30;
      v20 = v14[v10 + 1];
      v34 = (v20 - v24[v10 + 1]);
      v35 = v29 * v29 + 0.0 + v31 * v31;
      v36 = (v21 - v25[v10]);
      v21 = v15[v10 + 1];
      v37 = (v21 - v25[v10 + 1]);
      v38 = v33 + v32 * v32 + v36 * v36;
      v16[v9] = v38;
      v39 = v35 + v34 * v34 + v37 * v37;
      v26 = v26 + v38;
      v17[v9] = v39;
      v27 = v27 + v39;
      ++v10;
      ++v9;
    }

    while (v10 != 9);
    v40 = (5 * v7) / 400.0;
    v41 = v102[0];
    v42 = *(v102[0] + 24 * v11);
    v43 = 4 * v11;
    *(*(v102[0] + 96) + v43) = v40 * v26;
    *(v42 + 16) = v40 * v27;
    *(*(v41 + 120) + v43) = v40 * v27;
    v44 = (v6 - 4 + ~v7);
    if (v44 < 7)
    {
      goto LABEL_13;
    }

    for (i = 6; i < v44; i += 2)
    {
      v46 = 0.0;
      v47 = 8;
      v48 = v17 + 1;
      v49 = v16 + 1;
      v50 = 0.0;
      do
      {
        v51 = *v49;
        *(v49 - 1) = *v49;
        v46 = v46 + v51;
        v52 = *v48;
        *(v48 - 1) = *v48;
        v50 = v50 + v52;
        ++v49;
        ++v48;
        --v47;
      }

      while (v47);
      v53 = 2 * i + 8;
      v54 = i + v7;
      v55 = v54 * 2 + 8;
      v56 = (*(v12 + v53) - v12[v54 + 4]);
      v57 = 2 * i + 10;
      v54 += 5;
      v58 = (*(v12 + v57) - v12[v54]);
      v59 = (*(v13 + v53) - *(v13 + v55));
      v60 = (*(v13 + v57) - v13[v54]);
      v61 = v56 * v56 + 0.0 + v59 * v59;
      v62 = (*(v14 + v53) - *(v14 + v55));
      v63 = v58 * v58 + 0.0 + v60 * v60;
      v64 = (*(v14 + v57) - v14[v54]);
      v65 = v61 + v62 * v62;
      v66 = (*(v15 + v53) - *(v15 + v55));
      v67 = v63 + v64 * v64;
      v68 = (*(v15 + v57) - v15[v54]);
      v69 = v65 + v66 * v66;
      v16[8] = v69;
      v70 = v46 + v69;
      v71 = v67 + v68 * v68;
      v17[8] = v71;
      v72 = *(v41 + 24 * (i + v7));
      v73 = 4 * (i + v7);
      *(*(v41 + 24 * i) + v73) = v40 * v70;
      v74 = v40 * (v50 + v71);
      *(v72 + 4 * i) = v74;
      *(*(v41 + 24 * (i | 1)) + v73) = v74;
    }

    v17 = v98;
    if (v98)
    {
LABEL_13:
      v99 = v17;
      operator delete(v17);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v8 += 2;
    v75 = v7 >= 0x18E;
    v7 += 2;
  }

  while (!v75);
  sub_233730758(__p, (v5 >> 1));
  sub_23385C2FC(a3, 2uLL);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  sub_233730758(&v98, (v5 >> 1));
  sub_23385C2FC(__p, 2uLL);
  sub_23385BF60(a2);
  *a2 = *__p;
  a2[2] = v101;
  __p[1] = 0;
  v101 = 0;
  __p[0] = 0;
  v103 = __p;
  sub_2337A6DEC(&v103);
  if (v98)
  {
    v99 = v98;
    operator delete(v98);
  }

  if (v6 >= 1)
  {
    v78 = 0;
    v79 = 0;
    v80 = *a1;
    v81 = v102[0];
    v82 = **a3;
    v83 = (*a3)[3];
    v84 = *(*a2 + 24);
    v85 = **a2;
    v86 = -400;
    do
    {
      if (v86 <= (v79 & 1))
      {
        v87 = v79 & 1;
      }

      else
      {
        v87 = v86;
      }

      v88 = v78 - 400;
      if (v78 - 400 <= (v78 & 1))
      {
        v88 = v78 & 1;
      }

      LODWORD(v89) = v78 + 400;
      if (v78 + 400 >= v6)
      {
        v89 = v6;
      }

      else
      {
        v89 = v89;
      }

      v90 = 0.0;
      v91 = 0.0;
      v92 = 0.0;
      if (v88 < v89)
      {
        if (v86 <= (v79 & 1))
        {
          v93 = v79 & 1;
        }

        else
        {
          v93 = v86;
        }

        v94 = (*(v81 + 24 * v78) + ((4 * v87) & 0x1FFFFFFF8));
        do
        {
          LOWORD(v76) = (*v80)[v93];
          v76 = *&v76;
          LOWORD(v77) = v80[3][v93];
          v77 = *&v77;
          v95 = *v94++;
          v90 = v90 + v76 * (1.0 / v95);
          v91 = v91 + v77 * (1.0 / v95);
          v92 = v92 + 1.0 / v95;
          v93 += 2;
        }

        while (v93 < v89);
      }

      *(v82 + 8 * v78) = v90 / v92;
      *(v83 + 8 * v78) = v91 / v92;
      v96 = v92 * v92;
      *(v84 + 8 * v78) = v96;
      *(v85 + 8 * v78++) = v96;
      ++v79;
      ++v86;
    }

    while (v78 != v5 >> 1);
  }

  __p[0] = v102;
  sub_2337A6DEC(__p);
}

void sub_23385AE78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, void *__p, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  a13 = a9;
  sub_2337A6DEC(&a13);
  a13 = &a17;
  sub_2337A6DEC(&a13);
  _Unwind_Resume(a1);
}

double sub_23385AEFC(void *a1, BOOL *a2, double *a3, double *a4)
{
  v4 = a1[4];
  if (a1[5] == v4)
  {
    sub_2337306B0();
  }

  v5 = (v4[1] - *v4) >> 3;
  v6 = v5;
  if (v5)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0.0;
    v11 = 0.0;
    do
    {
      v12 = 0;
      v13 = 0;
      do
      {
        v14 = v13;
        v15 = v9 | (v13++ >> 1);
        v16 = v14 & 1;
        v17 = *(v4[3 * (v13 & 1)] + 8 * v15);
        v18 = *(*(a1[10] + 24 * (v14 & 1)) + 8 * v15);
        v19 = fmax(v17, v18) > 600.0;
        if (v17 <= 1500.0 && v18 <= 1500.0 && fmin(fmax((v17 - v18) / 133.333333 * ((v17 - v18) / 133.333333 * -((v17 - v18) / 133.333333 * ((v17 - v18) / 133.333333))) * ((v17 - v18) / 133.333333) + 1.0, 0.0), 1.0) * fmin(fmax((fmin(*(*(a1[7] + 24 * (v13 & 1)) + 8 * v15), *(*(a1[13] + 24 * v16) + 8 * v15)) - v5 * 0.0000000018) / (v5 * 0.0000000018), 0.0), 2.0) >= 0.00001)
        {
          v12 |= v19;
          v10 = v9 / v6 + v10;
          v11 = v11 + 1.0;
          ++v8;
        }

        else
        {
          v12 = 1;
        }
      }

      while (v13 != 4);
      if ((v12 & 1) == 0)
      {
        v7 += 4;
      }

      v9 += 2;
    }

    while (v9 < v5);
    v20 = v10 / v11 + -0.5;
    v21 = v7;
    v22 = v8;
  }

  else
  {
    v22 = 0.0;
    v20 = NAN;
    v21 = 0.0;
  }

  *a2 = fabs(v20) < 0.15;
  *a3 = v21 / v6;
  result = v22 / v6;
  *a4 = result;
  return result;
}

void sub_23385B0D0(void *a1@<X0>, unsigned int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, void *a8@<X7>, void *a9@<X8>)
{
  v9 = a1[4];
  if (a1[5] == v9)
  {
    sub_2337306B0();
  }

  v16 = v9[1] - *v9;
  v65 = a3 + a2;
  v66 = a3 + a2 + a4;
  v67 = v66 + a5;
  if (a7)
  {
    v17 = 4;
  }

  else
  {
    v17 = 0;
  }

  v64 = v66 + a5 + a6;
  v18 = v64 + v17;
  v71[0] = 0;
  sub_233731694(&__p, (v18 + 1));
  sub_23385C2FC(v74, (v16 >> 2) & 0xFFFFFFFE);
  if (__p)
  {
    v73 = __p;
    operator delete(__p);
  }

  v19 = a1[4];
  if (a1[5] == v19)
  {
    sub_2337306B0();
  }

  v20 = v16 >> 3;
  if ((v16 >> 3))
  {
    v21 = 0;
    v22 = 0;
    v23 = ((v19[1] - *v19) >> 3) * 0.0000000018;
    v61 = v20;
    v62 = v20;
    v24 = v17 + a6 + a5 + a4 + a3 + a2 + 1;
    while (1)
    {
      sub_233730758(&__p, 4uLL);
      sub_233730758(v71, 4uLL);
      sub_233730758(v70, 4uLL);
      sub_233730758(v69, 4uLL);
      sub_233730758(v68, 4uLL);
      v25 = 0;
      v26 = a1[4];
      v27 = v22 / v62;
      v28 = __p;
      v29 = a1[10];
      v30 = v71[0];
      v31 = a1[7];
      v32 = v70[0];
      v33 = a1[13];
      v34 = v69[0];
      v35 = 1;
      v36 = v68[0];
      do
      {
        v37 = v25 + 1;
        v38 = (8 * ((v25 + 1) & 1)) & 0xEF | (16 * ((v25 + 1) & 1));
        v39 = v22 | (v25 >> 1);
        v28[v25] = *(*(v26 + v38) + 8 * v39);
        v40 = (8 * (v25 & 1)) & 0xEF | (16 * (v25 & 1));
        v30[v25] = *(*(v29 + v40) + 8 * v39);
        v32[v25] = *(*(v31 + v38) + 8 * v39);
        v34[v25] = *(*(v33 + v40) + 8 * v39);
        v41 = *&v28[v25];
        if (v41 <= 1500.0 && (v42 = *&v30[v25], v42 <= 1500.0))
        {
          v43 = fmax(v41, v42) <= 600.0;
          v44 = fmin(fmax((v41 - v42) / 133.333333 * ((v41 - v42) / 133.333333 * -((v41 - v42) / 133.333333 * ((v41 - v42) / 133.333333))) * ((v41 - v42) / 133.333333) + 1.0, 0.0), 1.0);
          v36[v25] = v44;
          v45 = v44 * fmin(fmax((fmin(*&v32[v25], *&v34[v25]) - v23) / v23, 0.0), 2.0);
          v36[v25] = v45;
          if (v45 < 0.00001)
          {
            v43 = 0;
          }

          v35 &= v43;
          v46 = fmin(*&v28[v25], *&v30[v25]);
          v36[v25] = v45 * ((v46 * -0.5 + 2000.0) / 2000.0 * ((v46 * -0.5 + 2000.0) / 2000.0));
        }

        else
        {
          v35 = 0;
        }

        ++v25;
      }

      while (v37 != 4);
      if (a7)
      {
        v47 = v68[0];
        v48 = (*v68[0] + *(v68[0] + 1) + *(v68[0] + 2) + *(v68[0] + 3)) * 0.25;
        *(v68[0] + 2) = v48;
        v47[3] = v48;
        *v47 = v48;
        v47[1] = v48;
      }

      v49 = 0;
      v50 = v68[0];
      v51 = __p;
      v52 = v71[0];
      v53 = v74[0];
      do
      {
        if (v50[v49] < 0.00001)
        {
          goto LABEL_40;
        }

        v54 = v51[v49];
        v55 = v52[v49];
        if (a2)
        {
          **(v53 + 24 * v21) = 0x3FF0000000000000;
        }

        v56 = (v54 + v55) * 0.5;
        if (a3)
        {
          *(*(v53 + 24 * v21) + 8 * a2) = v56;
          if (!a4)
          {
LABEL_26:
            if (!a5)
            {
              goto LABEL_27;
            }

            goto LABEL_32;
          }
        }

        else if (!a4)
        {
          goto LABEL_26;
        }

        *(*(v53 + 24 * v21) + 8 * v65) = v56 * v56;
        if (!a5)
        {
LABEL_27:
          if (!a6)
          {
            goto LABEL_28;
          }

          goto LABEL_33;
        }

LABEL_32:
        *(*(v53 + 24 * v21) + 8 * v66) = v27;
        if (!a6)
        {
LABEL_28:
          if (!a7)
          {
            goto LABEL_37;
          }

          goto LABEL_34;
        }

LABEL_33:
        *(*(v53 + 24 * v21) + 8 * v67) = v27 * v27;
        if (!a7)
        {
          goto LABEL_37;
        }

LABEL_34:
        if (v35)
        {
          *(*(v53 + 24 * v21) + 8 * v49 + 8 * v64) = 0x3FF0000000000000;
        }

        else if (!(a5 | a6 | a3 | a2 | a4))
        {
          goto LABEL_40;
        }

LABEL_37:
        v57 = *(v53 + 24 * v21);
        v57[v18] = v51[v49] - v52[v49];
        v58 = v24;
        do
        {
          *v57 = v50[v49] * *v57;
          ++v57;
          --v58;
        }

        while (v58);
        ++v21;
LABEL_40:
        ++v49;
      }

      while (v49 != 4);
      if (v68[0])
      {
        v68[1] = v68[0];
        operator delete(v68[0]);
        v34 = v69[0];
      }

      if (v34)
      {
        v69[1] = v34;
        operator delete(v34);
      }

      if (v70[0])
      {
        v70[1] = v70[0];
        operator delete(v70[0]);
      }

      if (v71[0])
      {
        v71[1] = v71[0];
        operator delete(v71[0]);
      }

      if (__p)
      {
        v73 = __p;
        operator delete(__p);
      }

      v22 += 2;
      if (v22 >= v61)
      {
        if (v21 >= 0x64)
        {
          sub_233730758(&__p, v18);
          operator new[]();
        }

        break;
      }
    }
  }

  *a8 = 0x4202A05F20000000;
  *a9 = 0;
  a9[1] = 0;
  __p = v74;
  sub_2337A6DEC(&__p);
}

void sub_23385B788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a32)
  {
    a33 = a32;
    operator delete(a32);
  }

  a32 = (v33 - 176);
  sub_2337A6DEC(&a32);
  _Unwind_Resume(a1);
}

void *sub_23385B894(uint64_t a1, int a2, uint64_t a3, const void *a4, void *a5)
{
  v7 = dgels_NEWLAPACK();
  MEMORY[0x28223BE20](v7);
  dgels_NEWLAPACK();
  return memcpy(a5, a4, 8 * a2);
}

double sub_23385B9FC(char ***a1, double ***a2)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  memset(v11, 0, sizeof(v11));
  sub_23385BB38(a1, a2, &v12, v11);
  if (v13 == v12)
  {
    sub_2337306B0();
  }

  v2 = v12[1] - *v12;
  if ((v2 >> 3))
  {
    v3 = 0;
    v4 = 0.0;
    do
    {
      for (i = 0; i != 4; ++i)
      {
        v6 = v3 | (i >> 1);
        v7 = *(v12[3 * ((i + 1) & 1)] + 8 * v6);
        v8 = *(v11[0][3 * (i & 1)] + v6);
        v4 = v4 + (v7 - v8) * (v7 - v8);
      }

      v3 += 2;
    }

    while (v3 < (v2 >> 3));
  }

  else
  {
    v4 = 0.0;
  }

  v9 = v4 / (v2 >> 3);
  v15 = v11;
  sub_2337A6DEC(&v15);
  v11[0] = &v12;
  sub_2337A6DEC(v11);
  return v9;
}

void sub_23385BB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v13 - 40) = &a10;
  sub_2337A6DEC((v13 - 40));
  a10 = &a13;
  sub_2337A6DEC(&a10);
  _Unwind_Resume(a1);
}

void sub_23385BB38(char ***a1, double ***a2, uint64_t *a3, uint64_t *a4)
{
  if (a1 + 4 != a3)
  {
    sub_23385C3B8(a3, a1[4], a1[5], 0xAAAAAAAAAAAAAAABLL * (a1[5] - a1[4]));
  }

  if (a1 + 10 != a4)
  {
    sub_23385C3B8(a4, a1[10], a1[11], 0xAAAAAAAAAAAAAAABLL * (a1[11] - a1[10]));
  }

  v8 = *a3;
  if (a3[1] == *a3)
  {
    sub_2337306B0();
  }

  v9 = *a2;
  v10 = **a2;
  v11 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  v15 = (*a2)[1] - v10;
  if (v15)
  {
    v13 = *v10;
    if (v15 >= 9)
    {
      v12 = v10[1];
      if (v15 != 16)
      {
        v14 = v10[2];
      }
    }
  }

  v16 = v9[6];
  v17 = v9[7] - v16;
  if (v17)
  {
    v18 = *v16;
    if (v17 >= 9)
    {
      v11 = v16[1];
    }
  }

  else
  {
    v18 = 0.0;
  }

  v19 = ((v8[1] - *v8) >> 3);
  if (((v8[1] - *v8) >> 3))
  {
    v20 = 0;
    v22 = v9 + 3;
    v21 = v9[3];
    v23 = v22[1] - v21;
    v24 = *a4;
    do
    {
      v25 = 0;
      do
      {
        v26 = v25 + 1;
        v27 = v20 | (v25 >> 1);
        v28 = v8[3 * ((v25 + 1) & 1)];
        v29 = *(v24 + 24 * (v25 & 1));
        v30 = *(v28 + 8 * v27);
        v31 = *(v29 + 8 * v27);
        if (v30 <= 2000.0 && v31 <= 2000.0)
        {
          if (v23 == 32)
          {
            v33 = v21[v25];
            v34 = v30 + ((((v30 * v30) * -0.0000015625) + 1.0) * (v33 * 0.5));
            if (v30 <= 800.0)
            {
              v30 = v34;
            }
          }

          v35 = ((v11 * v27) * v27) + (v18 * v27);
          if (v30 <= 2000.0)
          {
            v30 = v30 + ((((v30 * v30) * -0.00000025) + 1.0) * ((v35 + ((v13 + (v12 * v30)) + ((v14 * v30) * v30))) * 0.5));
          }

          if (v23 == 32)
          {
            v36 = v21[v25];
            v37 = v31 + ((((v31 * v31) * -0.0000015625) + 1.0) * (v36 * -0.5));
            if (v31 <= 800.0)
            {
              v31 = v37;
            }
          }

          v38 = v31 + ((((v31 * v31) * -0.00000025) + 1.0) * ((v35 + ((v13 + (v12 * v31)) + ((v14 * v31) * v31))) * -0.5));
          if (v31 <= 2000.0)
          {
            v31 = v38;
          }

          *(v28 + 8 * v27) = v30;
          *(v29 + 8 * v27) = v31;
        }

        ++v25;
      }

      while (v26 != 4);
      v20 += 2;
    }

    while (v20 < v19);
  }
}

void sub_23385BDC8(uint64_t a1)
{
  sub_23385C7F0(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_23385BE00(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_23385BEBC(result, a2);
  }

  return result;
}

void sub_23385BEBC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_23385BF08(a1, a2);
  }

  sub_2337235BC();
}

void sub_23385BF08(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_2337236AC();
}

void sub_23385BF60(uint64_t *a1)
{
  if (*a1)
  {
    sub_2337A6E40(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_23385BFA0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_23385BEBC(result, a4);
  }

  return result;
}

void sub_23385C008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_2337A6DEC(&a9);
  _Unwind_Resume(a1);
}

void *sub_23385C028(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_233728FF4(v4, *v6, v6[1], (v6[1] - *v6) >> 1);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_23385C0DC(v8);
  return v4;
}

uint64_t sub_23385C0DC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_2337A6D9C(a1);
  }

  return a1;
}

void sub_23385C114(uint64_t *a1, char **a2, char **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_23385BF60(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_23385BEBC(a1, v10);
    }

    sub_2337235BC();
  }

  v11 = a1[1] - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    sub_23385C28C(&v19, a2, a3, v8);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      v15 = a1[1];
      do
      {
        v17 = *(v15 - 24);
        v15 -= 24;
        v16 = v17;
        if (v17)
        {
          *(v14 - 16) = v16;
          operator delete(v16);
        }

        v14 = v15;
      }

      while (v15 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    sub_23385C28C(&v18, a2, (a2 + v11), v8);
    a1[1] = sub_23385C028(a1, (a2 + v11), a3, a1[1]);
  }
}

char **sub_23385C28C(int a1, char **a2, char **a3, char **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        sub_233754F80(a4, *v5, v5[1], (v5[1] - *v5) >> 1);
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void *sub_23385C2FC(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2337A6C64(result, a2);
  }

  return result;
}

void sub_23385C3B8(uint64_t *a1, char **a2, char **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_23385BF60(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_2337A6C64(a1, v10);
    }

    sub_2337235BC();
  }

  v11 = a1[1] - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    sub_23385C61C(&v19, a2, a3, v8);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      v15 = a1[1];
      do
      {
        v17 = *(v15 - 24);
        v15 -= 24;
        v16 = v17;
        if (v17)
        {
          *(v14 - 16) = v16;
          operator delete(v16);
        }

        v14 = v15;
      }

      while (v15 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    sub_23385C61C(&v18, a2, (a2 + v11), v8);
    a1[1] = sub_23385C530(a1, (a2 + v11), a3, a1[1]);
  }
}

void *sub_23385C530(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_2337236E0(v4, *v6, v6[1], (v6[1] - *v6) >> 3);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_23385C5E4(v8);
  return v4;
}

uint64_t sub_23385C5E4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_2337A6D9C(a1);
  }

  return a1;
}

char **sub_23385C61C(int a1, char **a2, char **a3, char **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        sub_23373176C(a4, *v5, v5[1], (v5[1] - *v5) >> 3);
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void *sub_23385C6F8(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284925640;
  sub_233859D10((a1 + 3), a2);
  return a1;
}

void sub_23385C774(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284925640;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_23385C7F0(uint64_t a1)
{
  *a1 = &unk_284925610;
  v2 = *(a1 + 136);
  if (v2)
  {
    sub_2337239E8(v2);
  }

  v5 = (a1 + 104);
  sub_2337A6DEC(&v5);
  v5 = (a1 + 80);
  sub_2337A6DEC(&v5);
  v5 = (a1 + 56);
  sub_2337A6DEC(&v5);
  v5 = (a1 + 32);
  sub_2337A6DEC(&v5);
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  return a1;
}

double sub_23385C8C0(uint64_t a1)
{
  (*(*a1 + 8))(&v6);
  v1 = -1.0;
  if (v6 != v7)
  {
    v2 = v6;
    do
    {
      v3 = *v2++;
      v4 = v3;
      if (v3 > v1)
      {
        v1 = v4;
      }
    }

    while (v2 != v7);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  return v1;
}

void *sub_23385C944@<X0>(uint64_t a1@<X1>, unsigned int a2@<W2>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v8 = a2;
  result = sub_233730758(a3, a2);
  if (a2)
  {
    v10 = 0;
    v11 = *(a1 + 8);
    v12 = *a3;
    v13 = (a3[1] - *a3) >> 3;
    do
    {
      v14 = v11 + 16 * v10;
      v15 = *(v14 + 4);
      if (v15)
      {
        v16 = 0;
        v17 = *(v14 + 8);
        while (*v17 <= a4)
        {
          ++v16;
          v17 += 3;
          if (v15 == v16)
          {
            LODWORD(v16) = *(v14 + 4);
            break;
          }
        }
      }

      else
      {
        LODWORD(v16) = 0;
      }

      if (v13 <= v10)
      {
        sub_2337306B0();
      }

      *(v12 + 8 * v10++) = *(*(v14 + 8) + 24 * (v16 - (v16 == v15)) + 8) + *(*(v14 + 8) + 24 * (v16 - (v16 == v15)) + 16) * a4;
    }

    while (v10 != v8);
  }

  return result;
}

void sub_23385CA24(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_23385CA40(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v5 = a4;
  v7 = *(a1 + 24);
  v8 = *(v7 + 4);
  if (!v8)
  {
    goto LABEL_10;
  }

  v11 = 0;
  v12 = *(v7 + 8);
  while (*v12 < a2)
  {
    ++v11;
    v12 += 4;
    if (v8 == v11)
    {
      LODWORD(v11) = *(v7 + 4);
      goto LABEL_7;
    }
  }

  if (*v12 == a2)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (!v11)
  {
LABEL_10:
    v12 = *(v7 + 8);
    goto LABEL_11;
  }

  if (v11 == v8)
  {
    v12 = (*(v7 + 8) + 16 * (v8 - 1));
LABEL_11:
    v13 = *v7;

    sub_23385C944(v12, v13, a3, a4);
    return;
  }

  v14 = (v11 - 1);
  sub_23385C944(*(v7 + 8) + 16 * v14, *v7, &v28, a4);
  sub_23385C944(*(*(a1 + 24) + 8) + 16 * v11, **(a1 + 24), &__p, v5);
  v15 = v28;
  v16 = v29;
  v17 = v29 - v28;
  if (v29 - v28 != v27 - __p)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v18 = *(*(a1 + 24) + 8);
  LODWORD(v4) = *(v18 + 16 * v14);
  LODWORD(v5) = *(v18 + 16 * v11);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  sub_2337236E0(a3, v15, v16, v17 >> 3);
  v19 = __p;
  v20 = v28;
  v21 = v29;
  if (v28 != v29)
  {
    v22 = v28;
    v23 = __p;
    do
    {
      v24 = *v23++;
      *v22 = *v22 + (*v22 + v24) * ((a2 - v4) / (*&v5 - v4));
      ++v22;
    }

    while (v22 != v21);
  }

  if (v19)
  {
    v27 = v19;
    operator delete(v19);
    v20 = v28;
  }

  if (v20)
  {
    v29 = v20;
    operator delete(v20);
  }
}

void sub_23385CC50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_23385CC98(void *a1)
{
  *a1 = &unk_284919438;
  v1 = a1[2];
  if (v1)
  {
    sub_2337239E8(v1);
  }

  JUMPOUT(0x2383ABF10);
}

void *sub_23385CD78(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2849256D8;
  sub_23385CE74(a1 + 3, *a2, a3);
  return a1;
}

void sub_23385CDF8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2849256D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_23385CE74(void *result, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v3 = a3[1];
  *result = &unk_284919438;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *result = &unk_284925690;
  result[3] = a2;
  if (!a2 || !*(a2 + 4))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_23385CF5C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v3);
  *v1 = v2;
  v5 = v1[2];
  if (v5)
  {
    sub_2337239E8(v5);
  }

  _Unwind_Resume(a1);
}

void sub_23385CFBC(uint64_t a1, unsigned int a2, float *a3, _BYTE *a4)
{
  *(a3 + 2) = 0u;
  *(a3 + 3) = 0u;
  *a3 = 0u;
  *(a3 + 1) = 0u;
  v4 = *(a1 + 8);
  if (v4)
  {
    *a4 = *(v4 + 8);
    sub_23385D108(a1, a2, &v28);
    v9 = v28;
    v8 = v29;
    if (v28 != v29)
    {
      v10 = a3;
      v11 = v28;
      do
      {
        v12 = *v11++;
        v13 = v12;
        *v10 = v13;
        v10 += 4;
      }

      while (v11 != v8);
    }

    sub_23385D38C(a1, a2, &v26);
    if (v9)
    {
      operator delete(v9);
    }

    v15 = v26;
    v14 = v27;
    if (v26 != v27)
    {
      v16 = a3 + 1;
      v17 = v26;
      do
      {
        v18 = *v17++;
        v19 = v18;
        *v16 = v19;
        v16 += 4;
      }

      while (v17 != v14);
    }

    sub_23385D600(a1, a2, &v26);
    if (v15)
    {
      operator delete(v15);
    }

    v21 = v26;
    v20 = v27;
    if (v26 != v27)
    {
      v22 = a3 + 2;
      v23 = v26;
      do
      {
        v24 = *v23++;
        v25 = v24;
        *v22 = v25;
        v22 += 4;
      }

      while (v23 != v20);
    }

    sub_23385D874(a1, &v26);
    sub_2338FD13C(v21, &v28, a3, &v26);
  }
}

void sub_23385D0E8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_23385D108(uint64_t a1@<X0>, unsigned int a2@<W1>, double **a3@<X8>)
{
  sub_233730758(&__p, **(a1 + 8));
  v6 = *(a1 + 8);
  v7 = *(v6 + 3);
  v8 = v6[1];
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = 0;
  v10 = &v7[4 * v8];
  while (*v7 < a2)
  {
    ++v9;
    v7 += 4;
    if (v8 == v9)
    {
      v7 = v10;
      goto LABEL_9;
    }
  }

  if (!v9 || *v7 == a2)
  {
LABEL_14:
    v18 = *v6;
    v12 = __p;
    v13 = v34;
    if (v18)
    {
      v19 = 0;
      v20 = (v34 - __p) >> 3;
      v21 = 24 * v18;
      v22 = __p;
      while (v20)
      {
        *v22++ = *(*(v7 + 1) + v19);
        --v20;
        v19 += 24;
        if (v21 == v19)
        {
          goto LABEL_18;
        }
      }

LABEL_29:
      sub_2337306B0();
    }

    goto LABEL_18;
  }

  if (v8 == v9)
  {
LABEL_9:
    v11 = *v6;
    v12 = __p;
    v13 = v34;
    if (v11)
    {
      v14 = 0;
      v15 = (v34 - __p) >> 3;
      v16 = 24 * v11;
      v17 = __p;
      while (v15)
      {
        *v17++ = *(*(v7 - 1) + v14);
        --v15;
        v14 += 24;
        if (v16 == v14)
        {
          goto LABEL_18;
        }
      }

      goto LABEL_29;
    }

LABEL_18:
    *a3 = v12;
    a3[1] = v13;
    a3[2] = v35;
    return;
  }

  sub_23385D108(a1, *(v7 - 4));
  sub_23385D108(a1, *v7);
  v26 = *a3;
  v25 = a3[1];
  if (v25 - *a3 != v32 - v31)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v26 != v25)
  {
    LODWORD(v23) = *(v7 - 4);
    LODWORD(v24) = *v7;
    v27 = (a2 - v23) / (v24 - v23);
    v28 = v31;
    do
    {
      v29 = *v28++;
      *v26 = *v26 + (v29 - *v26) * v27;
      ++v26;
    }

    while (v26 != v25);
  }

  if (v31)
  {
    operator delete(v31);
  }

  if (__p)
  {
    v34 = __p;
    operator delete(__p);
  }
}

void sub_23385D328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  __pa = *v15;
  if (*v15)
  {
    *(v15 + 8) = __pa;
    operator delete(__pa);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_23385D38C(uint64_t a1@<X0>, unsigned int a2@<W1>, double **a3@<X8>)
{
  sub_233730758(&__p, **(a1 + 8));
  v6 = *(a1 + 8);
  v7 = *(v6 + 3);
  v8 = v6[1];
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = 0;
  v10 = &v7[4 * v8];
  while (*v7 < a2)
  {
    ++v9;
    v7 += 4;
    if (v8 == v9)
    {
      v7 = v10;
      goto LABEL_9;
    }
  }

  if (!v9 || *v7 == a2)
  {
LABEL_14:
    v17 = *v6;
    v12 = __p;
    v13 = v32;
    if (v17)
    {
      v18 = (v32 - __p) >> 3;
      v19 = 8;
      v20 = __p;
      while (v18)
      {
        *v20++ = *(*(v7 + 1) + v19);
        --v18;
        v19 += 24;
        if (!--v17)
        {
          goto LABEL_18;
        }
      }

LABEL_29:
      sub_2337306B0();
    }

    goto LABEL_18;
  }

  if (v8 == v9)
  {
LABEL_9:
    v11 = *v6;
    v12 = __p;
    v13 = v32;
    if (v11)
    {
      v14 = (v32 - __p) >> 3;
      v15 = 8;
      v16 = __p;
      while (v14)
      {
        *v16++ = *(*(v7 - 1) + v15);
        --v14;
        v15 += 24;
        if (!--v11)
        {
          goto LABEL_18;
        }
      }

      goto LABEL_29;
    }

LABEL_18:
    *a3 = v12;
    a3[1] = v13;
    a3[2] = v33;
    return;
  }

  sub_23385D38C(a1, *(v7 - 4));
  sub_23385D38C(a1, *v7);
  v24 = *a3;
  v23 = a3[1];
  if (v23 - *a3 != v30 - v29)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v24 != v23)
  {
    LODWORD(v21) = *(v7 - 4);
    LODWORD(v22) = *v7;
    v25 = (a2 - v21) / (v22 - v21);
    v26 = v29;
    do
    {
      v27 = *v26++;
      *v24 = *v24 + (v27 - *v24) * v25;
      ++v24;
    }

    while (v24 != v23);
  }

  if (v29)
  {
    operator delete(v29);
  }

  if (__p)
  {
    v32 = __p;
    operator delete(__p);
  }
}

void sub_23385D59C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  __pa = *v15;
  if (*v15)
  {
    *(v15 + 8) = __pa;
    operator delete(__pa);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_23385D600(uint64_t a1@<X0>, unsigned int a2@<W1>, double **a3@<X8>)
{
  sub_233730758(&__p, **(a1 + 8));
  v6 = *(a1 + 8);
  v7 = *(v6 + 3);
  v8 = v6[1];
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = 0;
  v10 = &v7[4 * v8];
  while (*v7 < a2)
  {
    ++v9;
    v7 += 4;
    if (v8 == v9)
    {
      v7 = v10;
      goto LABEL_9;
    }
  }

  if (!v9 || *v7 == a2)
  {
LABEL_14:
    v17 = *v6;
    v12 = __p;
    v13 = v32;
    if (v17)
    {
      v18 = (v32 - __p) >> 3;
      v19 = 16;
      v20 = __p;
      while (v18)
      {
        *v20++ = *(*(v7 + 1) + v19);
        --v18;
        v19 += 24;
        if (!--v17)
        {
          goto LABEL_18;
        }
      }

LABEL_29:
      sub_2337306B0();
    }

    goto LABEL_18;
  }

  if (v8 == v9)
  {
LABEL_9:
    v11 = *v6;
    v12 = __p;
    v13 = v32;
    if (v11)
    {
      v14 = (v32 - __p) >> 3;
      v15 = 16;
      v16 = __p;
      while (v14)
      {
        *v16++ = *(*(v7 - 1) + v15);
        --v14;
        v15 += 24;
        if (!--v11)
        {
          goto LABEL_18;
        }
      }

      goto LABEL_29;
    }

LABEL_18:
    *a3 = v12;
    a3[1] = v13;
    a3[2] = v33;
    return;
  }

  sub_23385D600(a1, *(v7 - 4));
  sub_23385D600(a1, *v7);
  v24 = *a3;
  v23 = a3[1];
  if (v23 - *a3 != v30 - v29)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v24 != v23)
  {
    LODWORD(v21) = *(v7 - 4);
    LODWORD(v22) = *v7;
    v25 = (a2 - v21) / (v22 - v21);
    v26 = v29;
    do
    {
      v27 = *v26++;
      *v24 = *v24 + (v27 - *v24) * v25;
      ++v24;
    }

    while (v24 != v23);
  }

  if (v29)
  {
    operator delete(v29);
  }

  if (__p)
  {
    v32 = __p;
    operator delete(__p);
  }
}

void sub_23385D810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  __pa = *v15;
  if (*v15)
  {
    *(v15 + 8) = __pa;
    operator delete(__pa);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

double sub_23385D874@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_233730758(a2, **(a1 + 8));
  v5 = *(a1 + 8);
  v6 = *v5;
  if (v6)
  {
    v7 = 0;
    v8 = *a2;
    v9 = (a2[1] - *a2) >> 3;
    do
    {
      if (v9 == v7)
      {
        sub_2337306B0();
      }

      result = *(*(v5 + 2) + 8 * v7);
      *(v8 + 8 * v7++) = result;
    }

    while (v6 != v7);
  }

  return result;
}

void sub_23385D8EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_23385D908(void *a1)
{
  *a1 = &unk_284925728;
  v2 = a1[3];
  if (v2)
  {
    sub_2337239E8(v2);
  }

  return a1;
}

void sub_23385D954(void *a1)
{
  *a1 = &unk_284925728;
  v1 = a1[3];
  if (v1)
  {
    sub_2337239E8(v1);
  }

  JUMPOUT(0x2383ABF10);
}

void sub_23385DA88(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284925760;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_23385DB34@<X0>(uint64_t a1@<X1>, unsigned int a2@<W2>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v8 = a2;
  result = sub_233730758(a3, a2);
  if (a2)
  {
    v10 = 0;
    v11 = *(a1 + 8);
    v12 = *a3;
    v13 = (a3[1] - *a3) >> 3;
    do
    {
      v14 = v11 + 16 * v10;
      v15 = *(v14 + 4);
      if (v15)
      {
        v16 = 0;
        v17 = *(v14 + 8);
        while (*v17 <= a4)
        {
          ++v16;
          v17 += 3;
          if (v15 == v16)
          {
            LODWORD(v16) = *(v14 + 4);
            break;
          }
        }
      }

      else
      {
        LODWORD(v16) = 0;
      }

      if (v13 <= v10)
      {
        sub_2337306B0();
      }

      *(v12 + 8 * v10++) = *(*(v14 + 8) + 24 * (v16 - (v16 == v15)) + 8) + *(*(v14 + 8) + 24 * (v16 - (v16 == v15)) + 16) * fmin(a4, *(*(v14 + 8) + 24 * (v15 - 1)));
    }

    while (v10 != v8);
  }

  return result;
}

void sub_23385DC24(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_23385DC40(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v6 = *(a1 + 8);
  if (!v6)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  v7 = a4;
  v8 = *(v6 + 4);
  if (!v8)
  {
    goto LABEL_11;
  }

  v11 = 0;
  v12 = *(v6 + 8);
  while (*v12 < a2)
  {
    ++v11;
    v12 += 4;
    if (v8 == v11)
    {
      LODWORD(v11) = *(v6 + 4);
      goto LABEL_8;
    }
  }

  if (*v12 == a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  if (!v11)
  {
LABEL_11:
    v12 = *(v6 + 8);
    goto LABEL_12;
  }

  if (v11 == v8)
  {
    v12 = (*(v6 + 8) + 16 * (v8 - 1));
LABEL_12:
    v13 = *v6;

    sub_23385DB34(v12, v13, a3, a4);
    return;
  }

  v14 = (v11 - 1);
  sub_23385DB34(*(v6 + 8) + 16 * v14, *v6, &v28, a4);
  sub_23385DB34(*(*(a1 + 8) + 8) + 16 * v11, **(a1 + 8), &__p, v7);
  v15 = v28;
  v16 = v29;
  v17 = v29 - v28;
  if (v29 - v28 != v27 - __p)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v18 = *(*(a1 + 8) + 8);
  LODWORD(v4) = *(v18 + 16 * v14);
  LODWORD(v7) = *(v18 + 16 * v11);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  sub_2337236E0(a3, v15, v16, v17 >> 3);
  v19 = __p;
  v20 = v28;
  v21 = v29;
  if (v28 != v29)
  {
    v22 = v28;
    v23 = __p;
    do
    {
      v24 = *v23++;
      *v22 = *v22 + (*v22 + v24) * ((a2 - v4) / (*&v7 - v4));
      ++v22;
    }

    while (v22 != v21);
  }

  if (v19)
  {
    v27 = v19;
    operator delete(v19);
    v20 = v28;
  }

  if (v20)
  {
    v29 = v20;
    operator delete(v20);
  }
}

void sub_23385DE60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_23385DEA8(void *a1)
{
  *a1 = &unk_2849257B0;
  v2 = a1[3];
  if (v2)
  {
    sub_2337239E8(v2);
  }

  return a1;
}

void sub_23385DEF4(void *a1)
{
  *a1 = &unk_2849257B0;
  v1 = a1[3];
  if (v1)
  {
    sub_2337239E8(v1);
  }

  JUMPOUT(0x2383ABF10);
}

void sub_23385E028(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2849257E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_23385E0A4(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = *a2;
  v6 = a2[1];
  *a1 = &unk_284925838;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v5 = *(a1 + 8);
  }

  *(a1 + 24) = 0x80000000800;
  v7 = (*(*v5 + 520))(v5);
  *(a1 + 88) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 32) = v7;
  v9 = *(a1 + 24);
  v8 = *(a1 + 28);
  v10 = (v7 + v9 - 1) / v9;
  v11 = (HIDWORD(v7) + v8 - 1) / v8;
  *(a1 + 40) = v10;
  *(a1 + 44) = v11;
  v12 = (v11 * v10);
  *(a1 + 48) = v12;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 52) = 0;
  *(a1 + 68) = 0;
  *(a1 + 60) = 0;
  *(a1 + 76) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = *a3;
  if (v9 >> 4 > 0x270 || (v8 - 10000) <= 0xFFFFD8F0 || (v7 - 100000) < 0xFFFE7961 || (HIDWORD(v7) - 100000) < 0xFFFE7961)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  sub_23385E2E4((a1 + 56), v12);
  return a1;
}

void sub_23385E284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v12 = *(v10 + 16);
  if (v12)
  {
    sub_2337239E8(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_23385E2E4(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    sub_23385EEE4(a1, a2 - v2);
  }
}

void sub_23385E340(uint64_t a1, uint64_t *a2)
{
  v4 = sub_2338571C8();
  sub_23385E4E0(a1, v4);
  v13 = *(*a2 + 48);
  sub_23385E544(a1, &v13, &v14);
  v11 = 0;
  v12 = 0;
  __p = 0;
  sub_233729070(&__p, v14, v15, (v15 - v14) >> 2);
  sub_23385E93C(a1, &__p, &v13);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  for (i = v13.i64[0]; i != v13.i64[1]; i += 2)
  {
    v6 = i[1];
    *&v9 = *i;
    *(&v9 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    sub_23385778C(*a2, &v9);
    if (*(&v9 + 1))
    {
      sub_2337239E8(*(&v9 + 1));
    }
  }

  v8 = *(a1 + 104);
  v7 = *(a1 + 112);
  if (*(a1 + 48) == (v7 - v8) >> 4)
  {
    while (v8 != v7)
    {
      if (!*v8)
      {
        goto LABEL_14;
      }

      v8 += 16;
    }

    sub_233738F10(*(a1 + 8));
  }

LABEL_14:
  *&v9 = &v13;
  sub_233723948(&v9);
  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }
}

void sub_23385E480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15)
{
  a10 = &a15;
  sub_233723948(&a10);
  v17 = *(v15 - 56);
  if (v17)
  {
    *(v15 - 48) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_23385E4E0(uint64_t result, int a2)
{
  v2 = *(result + 52);
  if (v2 != a2 && v2 != 0)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  *(result + 52) = a2;
  return result;
}

void sub_23385E544(uint64_t a1@<X0>, uint32x4_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6.i64[0] = 0x7F0000007FLL;
  v6.i64[1] = 0x7F0000007FLL;
  v36 = vcgtq_u32(*a2, v6);
  v7 = (HIDWORD(a2->i64[0]) << 32) + (a2->u32[0] << 48) + (a2->i64[1] << 16) + HIDWORD(*a2);
  v40 = v7;
  if (vmaxv_u16(vmovn_s32(v36)))
  {
    goto LABEL_2;
  }

  v29 = *(a1 + 88);
  if (!v29)
  {
    goto LABEL_2;
  }

  v30 = (a1 + 88);
  do
  {
    v31 = v29[4];
    v25 = v31 >= v7;
    v32 = v31 < v7;
    if (v25)
    {
      v30 = v29;
    }

    v29 = v29[v32];
  }

  while (v29);
  if (v30 == (a1 + 88) || v7 < v30[4])
  {
LABEL_2:
    v38 = 0;
    v39 = *(a1 + 32);
    if (!sub_23385F3FC(a2->i32, &v38))
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v8 = *(a1 + 40);
    sub_233754C14(a3, *(a1 + 48));
    if (*(a1 + 44))
    {
      v9 = 0;
      v37 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      do
      {
        if (v11 >= v8)
        {
          v12 = v11;
        }

        else
        {
          while (1)
          {
            v13 = v11 + *(a1 + 40) * v9;
            v14 = sub_23385EC98(a1, v13);
            v38 = v14;
            v39 = v15;
            if (a2->i32[2] + a2->i32[0] <= v14)
            {
              break;
            }

            v16 = a2->i32[1];
            if (v16 >= HIDWORD(v15) + HIDWORD(v14))
            {
              goto LABEL_32;
            }

            if (a2->i32[3] + v16 <= SHIDWORD(v14))
            {
              v9 = *(a1 + 44);
              goto LABEL_32;
            }

            if (v10)
            {
              v12 = v12;
            }

            else
            {
              v12 = v11;
            }

            if (sub_23385F470(&v38, a2->i32))
            {
              v18 = *(a3 + 8);
              v17 = *(a3 + 16);
              if (v18 >= v17)
              {
                v20 = *a3;
                v21 = v18 - *a3;
                v22 = v21 >> 2;
                v23 = (v21 >> 2) + 1;
                if (v23 >> 62)
                {
                  sub_2337235BC();
                }

                v24 = v17 - v20;
                if (v24 >> 1 > v23)
                {
                  v23 = v24 >> 1;
                }

                v25 = v24 >= 0x7FFFFFFFFFFFFFFCLL;
                v26 = 0x3FFFFFFFFFFFFFFFLL;
                if (!v25)
                {
                  v26 = v23;
                }

                if (v26)
                {
                  sub_2337235D4(a3, v26);
                }

                *(4 * v22) = v13;
                v19 = 4 * v22 + 4;
                memcpy(0, v20, v21);
                v27 = *a3;
                *a3 = 0;
                *(a3 + 8) = v19;
                *(a3 + 16) = 0;
                if (v27)
                {
                  operator delete(v27);
                }
              }

              else
              {
                *v18 = v13;
                v19 = (v18 + 1);
              }

              *(a3 + 8) = v19;
            }

            LODWORD(v11) = v11 + 1;
            v10 = 1;
            if (v8 == v11)
            {
              goto LABEL_32;
            }
          }

          if ((v37 & 1) == 0)
          {
            v8 = v11;
          }

          v37 = 1;
        }

LABEL_32:
        ++v9;
        v11 = v12;
      }

      while (v9 < *(a1 + 44));
    }

    if (*(a3 + 8) == *a3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](exception, "RawCameraException");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    if ((vaddvq_s32(vandq_s8(v36, xmmword_23390A090)) & 0xF) == 0 && *(a1 + 96) <= 0x3FFuLL)
    {
      v38 = &v40;
      v28 = sub_23385F2A8(a1 + 80, &v40) + 5;
      if (v28 != a3)
      {
        sub_233723454(v28, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
      }
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v33 = v30[5];
    v34 = v30[6];

    sub_233729070(a3, v33, v34, (v34 - v33) >> 2);
  }
}

void sub_23385E8F8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_23385E93C(uint64_t *a1@<X0>, unsigned int **a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  memset(v12, 0, sizeof(v12));
  for (i = *a2; i != a2[1]; ++i)
  {
    v7 = *i;
    v8 = a1[13];
    v9 = (v7 + 1);
    if (v9 > (a1[14] - v8) >> 4)
    {
      v11 = 0uLL;
      sub_23385EABC((a1 + 13), v9, &v11);
      if (*(&v11 + 1))
      {
        sub_2337239E8(*(&v11 + 1));
      }

      v8 = a1[13];
    }

    v10 = *(v8 + 16 * v7);
    v11 = v10;
    if (*(&v10 + 1))
    {
      atomic_fetch_add_explicit((*(&v10 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    if (!v10)
    {
      sub_23385EB4C(a1, v7);
    }

    sub_233753C74(a3, &v11);
    if (*(&v11 + 1))
    {
      sub_2337239E8(*(&v11 + 1));
    }
  }

  sub_23385EBD4(a1[1]);
  *&v11 = v12;
  sub_233723948(&v11);
}

void sub_23385EA78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(v4, va1);
  sub_233723948(va);
  sub_233723948(va1);
  _Unwind_Resume(a1);
}

void sub_23385EABC(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = *(a1 + 8);
  v5 = (v4 - *a1) >> 4;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v7 = *a1 + 16 * a2;
      while (v4 != v7)
      {
        v8 = *(v4 - 8);
        if (v8)
        {
          sub_2337239E8(v8);
        }

        v4 -= 16;
      }

      *(a1 + 8) = v7;
    }
  }

  else
  {
    v6 = a2 - v5;

    sub_23385EFF8(a1, v6, a3);
  }
}

void sub_23385EB4C(uint64_t a1, unsigned int a2)
{
  sub_23385EC98(a1, a2);
  sub_23385EE50(a1);
  sub_233857B6C();
}

uint64_t sub_23385EBD4(uint64_t a1)
{
  (*(*a1 + 2720))(&v3);
  v1 = (**v3)();
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_23385EC80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23385EC98(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 56);
  v3 = a2;
  if (a2 >= ((*(a1 + 64) - v2) >> 4))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v6 = (v2 + 16 * a2);
  if (v6[2] && v6[3])
  {
    return *v6;
  }

  v8 = *(a1 + 40);
  v9 = a2 / v8;
  v10 = a2 / v8 * v8;
  v11 = a2 % v8;
  if (a2 % v8 >= v8)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  sub_2337238F0(&v28, *(a1 + 24) * v11, *(a1 + 28) * v9);
  v12 = v29;
  v13 = *(a1 + 32);
  v14 = *(a1 + 36);
  if ((*(a1 + 24) + v28) <= v13)
  {
    v15 = *(a1 + 24);
  }

  else
  {
    v15 = v13 - v28;
  }

  if ((*(a1 + 28) + v29) <= v14)
  {
    v16 = *(a1 + 28);
  }

  else
  {
    v16 = v14 - v29;
  }

  v17 = *(a1 + 128);
  v18 = *(a1 + 132);
  v19 = v17 + v28;
  if (v11 == v8 - 1)
  {
    v20 = *(a1 + 128);
  }

  else
  {
    v20 = 0;
  }

  v21 = v15 - v20;
  LODWORD(v22) = v17 + v15;
  if (a2 == v10)
  {
    v23 = v28;
  }

  else
  {
    v23 = v19;
  }

  if (a2 == v10)
  {
    v22 = v22;
  }

  else
  {
    v22 = v21;
  }

  if (v8 <= a2)
  {
    v12 = v18 + v29;
    if (v9 != *(a1 + 44) - 1)
    {
      v18 = 0;
    }

    v24 = (v16 - v18);
  }

  else
  {
    v24 = (v18 + v16);
  }

  if (v24 < 1 || v22 <= 0)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v26 = v22 | (v24 << 32);
  v27 = (*(a1 + 56) + 16 * v3);
  result = v23 | (v12 << 32);
  *v27 = result;
  v27[1] = v26;
  return result;
}

uint64_t sub_23385EE50(uint64_t a1)
{
  result = *(a1 + 52);
  if (!result)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

void sub_23385EEAC(uint64_t a1)
{
  sub_23385F37C(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_23385EEE4(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      sub_2337235BC();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_23377FC40(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void **sub_23385EFF8(void **result, unint64_t a2, void *a3)
{
  v4 = result;
  v5 = result[1];
  v6 = result[2];
  if (a2 <= (v6 - v5) >> 4)
  {
    if (a2)
    {
      v12 = &v5[2 * a2];
      do
      {
        v13 = a3[1];
        *v5 = *a3;
        v5[1] = v13;
        if (v13)
        {
          atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
        }

        v5 += 2;
      }

      while (v5 != v12);
      v5 = v12;
    }

    result[1] = v5;
  }

  else
  {
    v7 = v5 - *result;
    v8 = a2 + (v7 >> 4);
    if (v8 >> 60)
    {
      sub_2337235BC();
    }

    v9 = v7 >> 4;
    v10 = v6 - *result;
    if (v10 >> 3 > v8)
    {
      v8 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    v24 = result;
    if (v11)
    {
      sub_233724F4C(result, v11);
    }

    v14 = 16 * v9;
    v23 = 0;
    v15 = 16 * v9 + 16 * a2;
    v16 = (16 * v9);
    do
    {
      v17 = a3[1];
      *v16 = *a3;
      v16[1] = v17;
      if (v17)
      {
        atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
      }

      v16 += 2;
    }

    while (v16 != v15);
    v18 = result[1] - *result;
    v19 = v14 - v18;
    memcpy((v14 - v18), *result, v18);
    v20 = *v4;
    *v4 = v19;
    v4[1] = v15;
    v21 = v4[2];
    v4[2] = v23;
    v22[2] = v20;
    v23 = v21;
    v22[0] = v20;
    v22[1] = v20;
    return sub_2337555EC(v22);
  }

  return result;
}

void *sub_23385F1B0(void *a1, uint64_t *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284925868;
  sub_23385E0A4((a1 + 3), a2, a3);
  return a1;
}

void sub_23385F22C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284925868;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_23385F2A8(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_23385F37C(uint64_t a1)
{
  *a1 = &unk_284925838;
  v5 = (a1 + 104);
  sub_233723948(&v5);
  sub_233730B2C(a1 + 80, *(a1 + 88));
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  return a1;
}

BOOL sub_23385F3FC(int *a1, int *a2)
{
  v2 = *a2;
  v3 = *a1;
  if (*a2 > *a1)
  {
    return 0;
  }

  v4 = a2[2] + v2;
  if (v3 > v4)
  {
    return 0;
  }

  v5 = a1[2] + v3;
  if (v2 > v5 || v5 > v4)
  {
    return 0;
  }

  v7 = a2[1];
  v8 = a1[1];
  if (v7 > v8)
  {
    return 0;
  }

  v9 = a2[3] + v7;
  if (v8 > v9)
  {
    return 0;
  }

  v11 = a1[3] + v8;
  return v7 <= v11 && v11 <= v9;
}

uint64_t sub_23385F470(int *a1, int *a2)
{
  v2 = a1[2];
  if (v2 < 1)
  {
    return 0;
  }

  v3 = a2[2];
  if (v3 < 1)
  {
    return 0;
  }

  v4 = a1[3];
  if (v4 < 1)
  {
    return 0;
  }

  v5 = a2[3];
  if (v5 < 1)
  {
    return 0;
  }

  v6 = *a1;
  v7 = *a2;
  if (*a1 >= *a2)
  {
    if (v7 + v3 <= v6)
    {
      return 0;
    }
  }

  else if (v6 + v2 <= v7)
  {
    return 0;
  }

  v8 = a1[1];
  v9 = a2[1];
  if (v8 >= v9)
  {
    if (v9 + v5 <= v8)
    {
      return 0;
    }
  }

  else if (v8 + v4 <= v9)
  {
    return 0;
  }

  return 1;
}

id sub_23385F504(int a1)
{
  v24[3] = *MEMORY[0x277D85DE8];
  if (qword_27DE3DE18 != -1)
  {
    sub_2338FD198();
  }

  v2 = qword_27DE3DE08[a1];
  objc_sync_enter(v2);
  if (objc_msgSend_count(v2, v3, v4, v5, v6))
  {
    v11 = objc_msgSend_firstObject(v2, v7, v8, v9, v10);
    objc_msgSend_removeObjectAtIndex_(v2, v12, 0, v13, v14);
  }

  else
  {
    v23[0] = *MEMORY[0x277CBF928];
    v23[1] = @"kCIContextUseMetalRenderer";
    v15 = MEMORY[0x277CBF740];
    v24[0] = @"RawCamera-Internal-Context";
    v24[1] = MEMORY[0x277CBEC38];
    v23[2] = *MEMORY[0x277CBF950];
    v16 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v7, *MEMORY[0x277CBF9D8], v9, v10);
    v24[2] = v16;
    v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, v24, v23, 3);
    v11 = objc_msgSend_contextWithOptions_(v15, v19, v18, v20, v21);
  }

  objc_sync_exit(v2);

  return v11;
}

void sub_23385F698(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

uint64_t sub_23385F6D8()
{
  v0 = objc_opt_new();
  v1 = qword_27DE3DE08;
  qword_27DE3DE08 = v0;

  qword_27DE3DE10 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

void sub_23385F734(void *a1, int a2)
{
  v11 = a1;
  v3 = qword_27DE3DE08[a2];
  objc_sync_enter(v3);
  if (objc_msgSend_count(v3, v4, v5, v6, v7) <= 4)
  {
    objc_msgSend_addObject_(v3, v8, v11, v9, v10);
  }

  objc_sync_exit(v3);
}

void sub_23385F7C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

id sub_23385F80C(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = (a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23385F8A8;
  block[3] = &unk_2789EE800;
  block[4] = a1;
  if (v3 != -1)
  {
    dispatch_once(v2, block);
  }

  v4 = *(a1 + 24);

  return v4;
}

void sub_23385F8A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_23385F938(v1, &v4);
  v2 = sub_2337D2F6C(v4, 1);
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;

  if (v5)
  {
    sub_2337239E8(v5);
  }
}

void sub_23385F904(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  __cxa_begin_catch(a1);
  v12 = *(v10 + 24);
  *(v10 + 24) = 0;

  __cxa_end_catch();
  JUMPOUT(0x23385F8F4);
}

uint64_t sub_23385F938@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 8);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    sub_2338F90E4(exception);
  }

  v3 = *(result + 16);
  *a2 = v2;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_23385F9A8(uint64_t a1, unsigned int ***a2)
{
  v139[1] = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280C04EC0, memory_order_acquire) & 1) == 0)
  {
    sub_2338FD1AC();
  }

  v3 = objc_autoreleasePoolPush();
  if (*a2 != a2[1])
  {
    context = v3;
    v125 = *MEMORY[0x277CBF9D8];
    if ((**a2)[11] == 16)
    {
      v4 = *MEMORY[0x277CBF9D8];
    }

    else
    {
      v4 = *MEMORY[0x277CBF9C8];
    }

    v127 = v4;
    sub_23385F938(a1, &dest);
    v5 = sub_233739B84(dest.data);
    if (dest.height)
    {
      sub_2337239E8(dest.height);
    }

    if (v5)
    {
      if (v5 != 3)
      {
        goto LABEL_17;
      }

      sub_23385F938(a1, &dest);
      v6 = sub_233739B8C(dest.data);
      if (dest.height)
      {
        sub_2337239E8(dest.height);
      }

      if (v6 == 3)
      {
        v126 = sub_2338F297C();
        v127 = *MEMORY[0x277CBF980];
LABEL_18:
        v7 = sub_23385F80C(a1);
        v8 = *MEMORY[0x277CBF348];
        v9 = *(MEMORY[0x277CBF348] + 8);
        v134 = sub_23385F504(0);
        v10 = *a2;
        v124 = a2[1];
        if (*a2 != v124)
        {
          do
          {
            v11 = sub_23378E0C0();
            v12 = v11;
            v13 = v7;
            if (v7 + 1 >= 2 && os_signpost_enabled(v11))
            {
              v113 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v110, @"{{%d, %d}, {%d, %d}}", v111, v112, *(*v10 + 7), HIDWORD(*(*v10 + 7)), *(*v10 + 9), HIDWORD(*(*v10 + 9)));
              v114 = v113;
              v119 = objc_msgSend_UTF8String(v113, v115, v116, v117, v118);
              LODWORD(dest.data) = 136315138;
              *(&dest.data + 4) = v119;
              _os_signpost_emit_with_name_impl(&dword_23371F000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v13, "renderToBlock", "%s", &dest, 0xCu);
            }

            v136[0] = MEMORY[0x277D85DD0];
            v136[1] = 3221225472;
            v136[2] = sub_2338602A8;
            v136[3] = &unk_2789EF2C8;
            v136[4] = v13;
            v136[5] = v10;
            v133 = MEMORY[0x2383AC810](v136);
            v14 = *(*v10 + 7);
            v15 = *(*v10 + 9);
            v132 = sub_233857E34(*v10);
            v16 = v13;
            v21 = (*(**v10 + 8))(*v10, 0);
            if (byte_280C04EB8 == 1)
            {
              v22 = MEMORY[0x277CCACA8];
              sub_23385F938(a1, &dest);
              v23 = sub_233739B8C(dest.data);
              v24 = sub_2338191A8(v23);
              v130 = objc_msgSend_stringWithFormat_(v22, v25, @"Requested Sushi Mode : %@", v26, v27, v24);

              if (dest.height)
              {
                sub_2337239E8(dest.height);
              }

              v28 = MEMORY[0x277CCACA8];
              sub_23385F938(a1, &dest);
              v29 = sub_233739B84(dest.data);
              v30 = sub_2338191A8(v29);
              v129 = objc_msgSend_stringWithFormat_(v28, v31, @"Sushi Mode : %@", v32, v33, v30);

              if (dest.height)
              {
                sub_2337239E8(dest.height);
              }

              v34 = MEMORY[0x277CCACA8];
              sub_23385F938(a1, &dest);
              v135 = (*(*dest.data + 120))(dest.data);
              v35 = sub_2337584A8(&v135);
              v128 = objc_msgSend_stringWithFormat_(v34, v36, @"Version : %@", v37, v38, v35);

              if (dest.height)
              {
                sub_2337239E8(dest.height);
              }

              v42 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v39, @" %@ \n %@ \n %@ ", v40, v41, v130, v129, v128);
              v43 = MEMORY[0x277CBF750];
              v138 = @"inputText";
              v139[0] = v42;
              v123 = v42;
              v45 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v44, v139, &v138, 1);
              v48 = objc_msgSend_filterWithName_withInputParameters_(v43, v46, @"CITextImageGenerator", v45, v47);

              objc_msgSend_extent(v13, v49, v50, v51, v52);
              v54 = v53;
              v59 = objc_msgSend_outputImage(v48, v55, v56, v57, v58);
              objc_msgSend_extent(v59, v60, v61, v62, v63);
              v65 = v64;

              v70 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v66, v67, v68, v69, v54 * 0.25 / v65);
              objc_msgSend_setValue_forKey_(v48, v71, v70, @"inputScaleFactor", v72);

              v77 = objc_msgSend_whiteImage(MEMORY[0x277CBF758], v73, v74, v75, v76);
              v82 = objc_msgSend_outputImage(v48, v78, v79, v80, v81);
              objc_msgSend_extent(v82, v83, v84, v85, v86);
              v91 = objc_msgSend_imageByCroppingToRect_(v77, v87, v88, v89, v90);

              v96 = objc_msgSend_outputImage(v48, v92, v93, v94, v95);
              v100 = objc_msgSend_imageByCompositingOverImage_(v96, v97, v91, v98, v99);

              v16 = objc_msgSend_imageByCompositingOverImage_(v100, v101, v13, v102, v103);
            }

            objc_msgSend_extent(v16, v17, v18, v19, v20);
            objc_msgSend_render_toBitmap_rowBytes_bounds_format_colorSpace_(v134, v105, v16, v21, v132, v127, v126, v14 - v8, v104 - SHIDWORD(v14) - SHIDWORD(v15) - v9, v15);
            if (v127 == v125)
            {
              dest.data = v21;
              dest.height = v15 >> 32;
              dest.width = 4 * v15;
              dest.rowBytes = v132;
              vImageConvert_16Fto16U(&dest, &dest, 0);
            }

            objc_msgSend_clearCaches(v134, v106, v107, v108, v109);
            v133[2](v133);

            v10 += 2;
            v7 = v16;
          }

          while (v10 != v124);
        }

        sub_23385F734(v134, 0);

        v3 = context;
        goto LABEL_35;
      }

      sub_23385F938(a1, &dest);
      v121 = sub_233739B94(dest.data);
      if (dest.height)
      {
        sub_2337239E8(dest.height);
      }

      if (!v121)
      {
LABEL_17:
        v126 = sub_2338F28E4();
        goto LABEL_18;
      }
    }

    sub_23385F938(a1, &dest);
    v126 = sub_233739BB4(dest.data);
    if (dest.height)
    {
      sub_2337239E8(dest.height);
    }

    goto LABEL_18;
  }

LABEL_35:
  objc_autoreleasePoolPop(v3);
  return 1;
}

void sub_2338600D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v31 = *(v29 - 184);
  if (v31)
  {
    sub_2337239E8(v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338602A8(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = sub_23378E0C0();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"{{%d, %d}, {%d, %d}}", v6, v7, *(**(a1 + 40) + 28), HIDWORD(*(**(a1 + 40) + 28)), *(**(a1 + 40) + 36), HIDWORD(*(**(a1 + 40) + 36)));
    v9 = v8;
    *buf = 136315138;
    v15 = objc_msgSend_UTF8String(v9, v10, v11, v12, v13);
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "renderToBlock", "%s", buf, 0xCu);
  }
}

void sub_2338603E0(uint64_t a1)
{
  sub_233860418(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_233860418(uint64_t a1)
{
  *a1 = &unk_2849258D8;

  v2 = *(a1 + 16);
  if (v2)
  {
    sub_2337239E8(v2);
  }

  return a1;
}

void *sub_2338604D8(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284925910;
  sub_2338605D0(a1 + 3, a2);
  return a1;
}

void sub_233860554(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284925910;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_2338605D0(void *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *result = &unk_2849258D8;
  result[1] = v2;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v2 = result[1];
  }

  result[3] = 0;
  result[4] = 0;
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_233860678(_Unwind_Exception *a1)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  _Unwind_Resume(a1);
}

void *sub_2338606A8(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  result = sub_2337DE7D0(a1, a2, a3);
  *result = &unk_284925960;
  result[4] = a4;
  result[5] = a5;
  return result;
}

uint64_t *sub_233860700(uint64_t a1, uint64_t *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  sub_233754E04(v18, a2);
  v29 = 0u;
  memset(v30, 0, sizeof(v30));
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
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v13 = 0;
  v14 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  JxlDecoderCreate();
  JxlDecoderSubscribeEvents();
  v4 = *(a1 + 40);
  sub_233726154(__p, v4);
  v5 = *a2;
  sub_2337268D8(&v8, (a1 + 32));
  (*(*v5 + 40))(v5, &v8, 0);
  (*(**a2 + 32))(*a2, __p[0], v4);
  if (!JxlDecoderSetInput() && JxlDecoderProcessInput() == 64 && !JxlDecoderGetBasicInfo() && JxlDecoderProcessInput() == 256)
  {
    if (JxlDecoderGetColorAsEncodedProfile())
    {
      if (JxlDecoderGetICCProfileSize())
      {
        goto LABEL_15;
      }

      if (v14)
      {
        sub_233860CC8(&v15, v14);
      }

      ColorAsICCProfile = JxlDecoderGetColorAsICCProfile();
    }

    else
    {
      ColorAsICCProfile = JxlDecoderSetPreferredColorProfile();
    }

    if (!ColorAsICCProfile)
    {
      v10 = 0x200000003;
      v12 = 1;
      if (!JxlDecoderImageOutBufferSize() && !JxlDecoderSetImageOutBuffer())
      {
        JxlDecoderProcessInput();
      }
    }
  }

LABEL_15:
  JxlDecoderDestroy();
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  return sub_233725FD4(v18);
}

void sub_23386096C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_233725FD4(&a34);
  _Unwind_Resume(a1);
}

CGColorSpaceRef sub_2338609D0(uint64_t a1, uint64_t *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  sub_233754E04(v19, a2);
  v30 = 0u;
  memset(v31, 0, sizeof(v31));
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v15 = 0;
  JxlDecoderCreate();
  JxlDecoderSubscribeEvents();
  v4 = *(a1 + 40);
  sub_233726154(__p, v4);
  v5 = *a2;
  sub_2337268D8(&v13, (a1 + 32));
  (*(*v5 + 40))(v5, &v13, 0);
  (*(**a2 + 32))(*a2, __p[0], v4);
  if (JxlDecoderSetInput() || JxlDecoderProcessInput() != 64 || JxlDecoderGetBasicInfo() || JxlDecoderProcessInput() != 256)
  {
LABEL_25:
    v8 = 0;
    goto LABEL_20;
  }

  if (JxlDecoderGetColorAsEncodedProfile())
  {
    if (!JxlDecoderGetICCProfileSize())
    {
      if (v15)
      {
        sub_233860CC8(&v16, v15);
      }

      if (!JxlDecoderGetColorAsICCProfile())
      {
        v7 = CFDataCreate(0, v16, v15);
        v8 = CGColorSpaceCreateWithICCData(v7);
        CFRelease(v7);
        goto LABEL_20;
      }
    }

    goto LABEL_25;
  }

  if (v10 == 1 && v11 == 1 && v12 == 13)
  {
    v6 = MEMORY[0x277CBF4B8];
LABEL_19:
    v8 = CGColorSpaceCreateWithName(*v6);
    goto LABEL_20;
  }

  v8 = 0;
  if (v10 == 1 && v11 == 11 && v12 == 13)
  {
    v6 = MEMORY[0x277CBF3E0];
    goto LABEL_19;
  }

LABEL_20:
  JxlDecoderDestroy();
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  sub_233725FD4(v19);
  return v8;
}

void sub_233860C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_233725FD4(&a30);
  _Unwind_Resume(a1);
}

void sub_233860CC8(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      sub_2337235BC();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

uint64_t sub_233860E00(uint64_t a1, int a2, uint64_t *a3)
{
  v5 = sub_2338F4DD0(a1, a2);
  *v5 = &unk_2849259D0;
  v5[6] = 0;
  v6 = (v5 + 6);
  v5[7] = 0;
  v5[8] = 0;
  *(a1 + 12) = sub_233725614(*a3);
  *(a1 + 16) = sub_233725614(*a3);
  *(a1 + 20) = sub_233725614(*a3);
  *(a1 + 24) = sub_233725614(*a3);
  *(a1 + 28) = sub_233725614(*a3);
  *(a1 + 32) = sub_233725614(*a3);
  *(a1 + 36) = sub_233725614(*a3);
  *(a1 + 40) = sub_233725614(*a3);
  for (i = sub_233725614(*a3); i; --i)
  {
    v8 = sub_233725730(*a3);
    v10 = *(a1 + 56);
    v9 = *(a1 + 64);
    if (v10 >= v9)
    {
      v12 = *v6;
      v13 = v10 - *v6;
      v14 = v13 >> 2;
      v15 = (v13 >> 2) + 1;
      if (v15 >> 62)
      {
        sub_2337235BC();
      }

      v16 = v9 - v12;
      if (v16 >> 1 > v15)
      {
        v15 = v16 >> 1;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v17 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        sub_2337235D4(v6, v17);
      }

      *(4 * v14) = v8;
      v11 = 4 * v14 + 4;
      memcpy(0, v12, v13);
      v18 = *(a1 + 48);
      *(a1 + 48) = 0;
      *(a1 + 56) = v11;
      *(a1 + 64) = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      *v10 = v8;
      v11 = (v10 + 1);
    }

    *(a1 + 56) = v11;
  }

  return a1;
}

void sub_233860FB0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

id sub_233860FDC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, a3, a4, a5);
  v10 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v7, *(a1 + 12), v8, v9);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v11, v10, @"Top", v12);

  v16 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v13, *(a1 + 16), v14, v15);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v17, v16, @"Left", v18);

  v22 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v19, *(a1 + 20), v20, v21);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v23, v22, @"Bottom", v24);

  v28 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v25, *(a1 + 24), v26, v27);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v29, v28, @"Right", v30);

  v34 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v31, *(a1 + 28), v32, v33);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v35, v34, @"Plane", v36);

  v40 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v37, *(a1 + 32), v38, v39);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v41, v40, @"Planes", v42);

  v46 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v43, *(a1 + 36), v44, v45);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v47, v46, @"RowPitch", v48);

  v52 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v49, *(a1 + 40), v50, v51);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v53, v52, @"ColPitch", v54);

  v63 = objc_msgSend_array(MEMORY[0x277CBEB18], v55, v56, v57, v58);
  v65 = *(a1 + 48);
  v66 = *(a1 + 56);
  while (v65 != v66)
  {
    LODWORD(v64) = *v65;
    v67 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v59, v60, v61, v62, v64);
    objc_msgSend_addObject_(v63, v68, v67, v69, v70);

    ++v65;
  }

  objc_msgSend_setObject_forKeyedSubscript_(v6, v59, v63, @"Scale", v62);
  v71 = [RAWOpcodeScalePerRow alloc];
  v75 = objc_msgSend_initWithArguments_(v71, v72, v6, v73, v74);

  return v75;
}

void *sub_23386126C(void *a1)
{
  *a1 = &unk_2849259D0;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_2338612BC(void *a1)
{
  *a1 = &unk_2849259D0;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_233861390(uint64_t a1, unsigned int a2, _OWORD *a3, _BYTE *a4)
{
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  v7 = log(a2);
  v8 = 0;
  v9 = pow(1.9, v7 + -5.768321) * (*(a1 + 56) / 12810.0);
  v10 = a3 + 3;
  __asm { FMOV            V0.2D, #2.0 }

  v24 = *(&_Q0 + 1);
  do
  {
    v16 = *(a1 + 32);
    if (v8 >= (*(a1 + 40) - v16) >> 3)
    {
      sub_2337306B0();
    }

    v25 = dbl_23390A1D0[v8] - *(v16 + 8 * v8);
    result = sub_233858FAC(*(a1 + 64), v8);
    if (result == 2)
    {
      v18 = &unk_23390A1C0;
    }

    else
    {
      v18 = &unk_23390A1A0;
    }

    if (result == 3)
    {
      v18 = &unk_23390A1B0;
    }

    v19 = v9 * *(a1 + 72);
    v20 = *(v18 + 3);
    v21 = v18[2];
    v22.f64[0] = *v18 + v18[1] * v25;
    v22.f64[1] = v18[1];
    v23.f64[1] = v24;
    v23.f64[0] = v25;
    *(v10 - 3) = vcvt_f32_f64(vmulq_n_f64(vmlaq_n_f64(v22, vmulq_n_f64(v23, v21), v25), v19));
    *&v19 = v19 * v21;
    *(v10 - 1) = LODWORD(v19);
    *v10 = v20;
    ++v8;
    v10 += 4;
  }

  while (v8 != 4);
  *a4 = 0;
  return result;
}

void *sub_2338614F4(void *a1)
{
  *a1 = &unk_284925A18;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  *a1 = &unk_284925728;
  v3 = a1[3];
  if (v3)
  {
    sub_2337239E8(v3);
  }

  return a1;
}

void sub_23386156C(void *a1)
{
  *a1 = &unk_284925A18;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  *a1 = &unk_284925728;
  v3 = a1[3];
  if (v3)
  {
    sub_2337239E8(v3);
  }

  JUMPOUT(0x2383ABF10);
}

void *sub_233861690(void *a1, uint64_t *a2, double *a3, int *a4, double *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284925A58;
  sub_233861794((a1 + 3), a2, *a4, *a3, *a5);
  return a1;
}

void sub_233861718(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284925A58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_233861794(uint64_t a1, uint64_t *a2, int a3, double a4, double a5)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *a1 = &unk_284925A18;
  *(a1 + 8) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_2337236E0(a1 + 32, *a2, a2[1], (a2[1] - *a2) >> 3);
  *(a1 + 56) = a4;
  *(a1 + 64) = a3;
  *(a1 + 72) = a5;
  return a1;
}

void sub_233861814(_Unwind_Exception *exception_object)
{
  *v1 = &unk_284925728;
  v3 = v1[3];
  if (v3)
  {
    sub_2337239E8(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233861848(void *a1)
{
  v2 = NSPageSize();
  v3 = (v2 + a1[3] - 1) & -v2;
  v4 = v3 + 2 * v2;
  if ((*(*a1 + 40))(a1))
  {
    v5 = 1325400066;
  }

  else
  {
    v5 = 1325400064;
  }

  a1[5] = v4;
  v6 = j__mmap(0, v4, 3, 4098, v5, 0);
  if (v6 == -1)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  a1[4] = v6;
  a1[2] = &v6[v2];
  mprotect(v6, v2, 1);
  result = mprotect((a1[2] + v3), v2, 1);
  if (!a1[2])
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return result;
}

uint64_t sub_23386197C(void *a1)
{
  *a1 = &unk_284925AA8;
  v2 = a1[4];
  if (v2)
  {
    munmap(v2, a1[5]);
    a1[4] = 0;
  }

  return sub_2337AD55C(a1);
}

void sub_2338619E8(void *a1)
{
  sub_23386197C(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_233861A20(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *a1 = &unk_284925AE8;
  *(a1 + 48) = 1;
  sub_23384F87C();
}

uint64_t *sub_233861A94(uint64_t a1)
{
  result = (*(*a1 + 40))(a1);
  if (result && *(a1 + 16))
  {
    sub_233785314(v5, (a1 + 56));
    v3 = *(a1 + 48);
    v4 = __OFSUB__(v3--, 1);
    *(a1 + 48) = v3;
    if ((v3 < 0) ^ v4 | (v3 == 0))
    {
      sub_23378972C(a1);
    }

    return sub_2337853E4(v5);
  }

  return result;
}

uint64_t sub_233861B2C(uint64_t a1)
{
  if ((*(*a1 + 40))(a1) && *(a1 + 16))
  {
    sub_233785314(v4, (a1 + 56));
    v2 = *(a1 + 48);
    *(a1 + 48) = v2 + 1;
    if (v2 <= 1)
    {
      sub_23378972C(a1);
    }

    sub_2337853E4(v4);
  }

  return 1;
}

void sub_233861BD0(void *a1)
{
  sub_233861C08(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_233861C08(void *a1)
{
  *a1 = &unk_284925AE8;
  v2 = a1[8];
  if (v2)
  {
    sub_2337239E8(v2);
  }

  return sub_23386197C(a1);
}

void sub_233861C64(_DWORD *a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  if (a1 + 1 >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CPacked14Unpacker", &unk_233945DBE, buf, 2u);
  }

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = sub_2338620D4;
  v36[3] = &unk_2789EE800;
  v36[4] = a1;
  v4 = MEMORY[0x2383AC810](v36);
  v5 = a1[11];
  v6 = a1[12];
  if (v6 * v5 > (*(*a1 + 152))(a1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v29 = v4;
  (*(*a1 + 112))(buf, a1);
  v7 = sub_23378972C(*buf);
  if (v35)
  {
    sub_2337239E8(v35);
  }

  if (v6)
  {
    v8 = 0;
    v9 = 0;
    v10 = (14 * v5) >> 3;
    v11 = (2 * v5) & 0x1FFFFFFE;
    v33 = (v11 - v10);
    v31 = 14 * v5;
    v32 = (14 * v5) & 0x18;
    LODWORD(v12) = (14 * v5) >> 5;
    v13 = v5 & 0xFFFFFFFC;
    if (v12 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v12;
    }

    v30 = v12;
    do
    {
      v14 = v6;
      (*(*a1 + 112))(buf, a1);
      v15 = sub_23378972C(*buf);
      if (v35)
      {
        sub_2337239E8(v35);
      }

      v16 = (v15 + v33 + (v11 * v9));
      if (&v16[v10] > (*(*a1 + 120))(a1) || ((*(**(a1 + 3) + 32))(*(a1 + 3), v15 + v33 + (v11 * v9), v10), v32))
      {
        v27 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](v27, "RawCameraException");
        __cxa_throw(v27, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      if (v31 >= 0x20)
      {
        v17 = (v15 + v33 + v8);
        v18 = v30;
        do
        {
          *v17 = bswap32(*v17);
          ++v17;
          --v18;
        }

        while (v18);
      }

      if (v13)
      {
        v19 = 0;
        v6 = v14;
        do
        {
          v20 = v16[1];
          v21 = v16[3];
          v22 = v16[4];
          v23 = v16[5];
          v24 = v20 >> 2;
          v25 = (16 * v16[2]) & 0xCFFF | ((v20 & 3) << 12) | (v21 >> 4);
          v26 = v16[6] | ((v23 & 0x3F) << 8);
          *v7 = v24 | (*v16 << 6);
          v7[1] = v25;
          v7[2] = (4 * v22) & 0xC3FF | ((v21 & 0xF) << 10) | (v23 >> 6);
          v7[3] = v26;
          v7 += 4;
          v19 += 4;
          v16 += 7;
        }

        while (v19 < v13);
      }

      else
      {
        v6 = v14;
      }

      ++v9;
      v8 += v11;
    }

    while (v9 != v6);
  }

  v29[2](v29);
}

void sub_2338620D4(uint64_t a1)
{
  v2 = sub_23378E038();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CPacked14Unpacker", &unk_233945DBE, v5, 2u);
  }
}

double sub_233862170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = *MEMORY[0x277D85DE8];
  bzero(v42, 0x328uLL);
  v6 = 0;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = *(a1 + 24) + 1.0;
  v11 = vdupq_lane_s64(v9, 0);
  v12 = vdupq_lane_s64(*&v10, 0);
  v13 = vdupq_n_s64(0x3F84AFD6A052BF5BuLL);
  v14 = 0x100000000;
  __asm { FMOV            V2.2D, #1.0 }

  do
  {
    v20.i64[0] = v14.u32[0];
    v20.i64[1] = v14.u32[1];
    v21 = vmulq_f64(vcvtq_f64_u64(v20), v13);
    v22 = vmulq_f64(v21, v21);
    *&v42[v6] = vdivq_f64(vmulq_f64(v21, vmlaq_f64(vmlaq_f64(vmlaq_f64(_Q2, v22, v11), v22, vmulq_n_f64(v22, v7)), v22, vmulq_f64(v22, vmulq_n_f64(v22, v8)))), v12);
    v14 = vadd_s32(v14, 0x200000002);
    v6 += 2;
  }

  while (v6 != 100);
  v23 = 0;
  while (v42[v23] + -1.0 <= 1.0)
  {
    if (++v23 == 100)
    {
      v24 = 1.0;
      goto LABEL_8;
    }
  }

  v24 = v23 * 0.0101010101;
LABEL_8:
  v25 = 0;
  v26 = vdupq_lane_s64(v9, 0);
  v27 = vdupq_lane_s64(*&v10, 0);
  v28 = 0x100000000;
  v29 = v24 / 99.0;
  do
  {
    v30.i64[0] = v28.u32[0];
    v30.i64[1] = v28.u32[1];
    v31 = vmulq_n_f64(vcvtq_f64_u64(v30), v29);
    v32 = vmulq_f64(v31, v31);
    *&v42[v25] = vdivq_f64(vmulq_f64(v31, vmlaq_f64(vmlaq_f64(vmlaq_f64(_Q2, v32, v26), v32, vmulq_n_f64(v32, v7)), v32, vmulq_f64(v32, vmulq_n_f64(v32, v8)))), v27);
    v28 = vadd_s32(v28, 0x200000002);
    v25 += 2;
  }

  while (v25 != 100);
  for (i = 0; i != 100; ++i)
  {
    v34 = i * 0.0101010101;
    v41[i] = v34;
    for (j = 1; j != 100; ++j)
    {
      if (v42[j] >= v34)
      {
        break;
      }
    }

    v40[i] = v29 * ((v34 - v42[j - 1]) / (v42[j] - v42[j - 1]) + (j - 1));
  }

  v36 = 0;
  v37 = v40[0];
  do
  {
    if (v36 * 8)
    {
      v38 = v41[v36];
      v40[v36] = v40[v36] / v38;
    }

    else
    {
      v37 = 1.0;
      v38 = v41[0];
    }

    v41[v36++] = v38 * v38;
  }

  while (v36 != 100);
  v40[0] = v37;
  return sub_233862404(a1, a2, a3, v41, v40, 100);
}

double sub_233862404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a6 < 2)
  {
    v13 = 0;
  }

  else
  {
    v12 = 1;
    while (*(a4 + 8 * v12) < *(a1 + 128))
    {
      if (a6 == ++v12)
      {
        LODWORD(v12) = a6;
        break;
      }
    }

    v13 = v12 - 1;
  }

  v25 = xmmword_23390A2A8;
  *v26 = unk_23390A2B8;
  v23 = xmmword_23390A2A8;
  v24 = unk_23390A2B8;
  v14 = sub_233862580(a1, &v25, a4, a5, 0, v13);
  sub_233862580(v14, &v23, a4, a5, v13, a6 - v13);
  v15 = *(a1 + 128) * *(a1 + 128);
  v16 = *(&v25 + 1);
  v17 = v26[0];
  v18 = v23;
  v19 = v24;
  v20 = *(&v24 + 1) + v15 * (v15 * *(&v23 + 1)) + v15 * (v15 * *&v23) * v15 + *&v24 * v15 - (v26[1] + v15 * (v15 * *(&v25 + 1)) + v15 * (*&v25 * v15) * v15 + v26[0] * v15);
  v21 = v26[1] + v20 * 0.8;
  result = *(&v24 + 1) + v20 * -0.2;
  *a2 = v25;
  *(a2 + 8) = v16;
  *(a2 + 16) = v17;
  *(a2 + 24) = v21;
  *a3 = v18;
  *(a3 + 16) = v19;
  *(a3 + 24) = result;
  return result;
}

void *sub_233862580(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6)
{
  v31 = *MEMORY[0x277D85DE8];
  if (a6 - 2000 <= 0xFFFFF830)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    sub_2338F90E4(exception);
  }

  v11 = a6;
  MEMORY[0x28223BE20](a1);
  v12 = &v22[-32 * v11];
  bzero(v12, v13);
  v15 = 0;
  do
  {
    v16 = *(a3 + 8 * a5 + v15);
    *&v12[v15] = v16 * (v16 * v16);
    *&v12[8 * a6 + v15] = v16 * v16;
    *&v12[16 * a6 + v15] = v16;
    *&v12[24 * a6 + v15] = 0x3FF0000000000000;
    v15 += 8;
  }

  while (8 * a6 != v15);
  MEMORY[0x28223BE20](v14);
  v18 = &v22[-((v17 + 15) & 0xFFFFFFFF0)];
  memcpy(v18, (a4 + 8 * v19), v17);
  v29 = 4;
  v30 = a6;
  v27 = a6;
  v28 = 1;
  v26 = a6;
  v25 = 0.0;
  v23[2] = 0;
  *&v23[3] = 0;
  v24 = -1;
  strcpy(v23, "N");
  result = dgels_NEWLAPACK();
  if (!*&v23[1])
  {
    v24 = llround(ceil(v25));
    MEMORY[0x28223BE20](result);
    result = dgels_NEWLAPACK();
    if (!*&v23[1])
    {
      return memcpy(a2, v18, 8 * v29);
    }
  }

  return result;
}

uint64_t sub_23386283C(uint64_t a1)
{
  (*(*a1 + 160))(&v9);
  v2 = v9;
  sub_23372A488(__p, "IFD0");
  v3 = (*(*v2 + 264))(v2, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    sub_2337239E8(v10);
  }

  if (v3 == 0xFFFF)
  {
    (*(*a1 + 160))(&v9, a1);
    v4 = v9;
    sub_23372A488(__p, "EmbeddedThumbnail:IFD0:EXIF");
    v5 = (*(*v4 + 264))(v4, __p);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    if (v10)
    {
      sub_2337239E8(v10);
    }

    if (v5 < 0x10000)
    {
      return 0xFFFFLL;
    }

    else
    {
      return v5;
    }
  }

  return v3;
}

void sub_2338629A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
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

void sub_2338629DC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (*(*a1 + 2952))(a1);
  v22 = v4;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  (*(*a1 + 160))(&v17, a1);
  v5 = v17;
  sub_23372A488(__p, "IFD0:OBCorrection");
  if ((*(*v5 + 248))(v5, __p, &v19, 0))
  {
    v7 = v19;
    v6 = v20;
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = v6 - v7;
    if (v18)
    {
      sub_2337239E8(v18);
    }

    if (v8 == 32)
    {
      v10 = v19;
      v9 = v20;
      if (v20 != v19)
      {
        v11 = (v20 - v19) >> 3;
        v12 = 1;
        v13 = v19;
        do
        {
          *v13 = v4 + *v13;
          ++v13;
        }

        while (v11 > v12++);
      }

      *a2 = v10;
      a2[1] = v9;
      a2[2] = v21;
      return;
    }
  }

  else
  {
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    if (v18)
    {
      sub_2337239E8(v18);
    }
  }

  sub_233731694(a2, 4uLL);
  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }
}

void sub_233862B74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_233862BC0(uint64_t a1)
{
  v6 = &unk_28490E658;
  (*(*a1 + 160))(&v4);
  v1 = v4;
  sub_23372A488(__p, "redGreenBlue");
  (*(*v1 + 600))(v1, __p, &v6, 3);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5)
  {
    sub_2337239E8(v5);
  }
}

void sub_233862CA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_233862CFC(uint64_t a1)
{
  (*(*a1 + 160))(&v3);
  sub_2337D032C(&v3, &v5);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  if (v5)
  {
    (*(*v5 + 800))(v5, &v3);
    v1 = v3 != 0;
  }

  else
  {
    v1 = 0;
  }

  if (v6)
  {
    sub_2337239E8(v6);
  }

  return v1;
}

void sub_233862DBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_2337239E8(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233862DD4(uint64_t a1)
{
  (*(*a1 + 160))(&v5);
  sub_2337D032C(&v5, &v7);
  if (v6)
  {
    sub_2337239E8(v6);
  }

  if (v7)
  {
    v2 = (*(*v7 + 792))(v7);
  }

  else
  {
    v2 = sub_2337D1FD0(a1);
  }

  v3 = v2;
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v3;
}

void sub_233862E90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

id sub_233862EA8(uint64_t a1, unsigned int a2)
{
  v3 = sub_2337C4398(a1, a2);
  if (sub_233739B6C(a1))
  {
    v4 = v3;
  }

  else
  {
    (*(*a1 + 160))(&v87, a1);
    sub_2337D032C(&v87, &v94);
    if (v88)
    {
      sub_2337239E8(v88);
    }

    if (v94)
    {
      (*(*v94 + 800))(v94, &v87);
      if (v87)
      {
        v5 = sub_2337854A4(v3, @"PanasonicChromaticAberration", 0);
        v6 = objc_autoreleasePoolPush();
        v10 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v7, v87, v8, v9);
        objc_msgSend_setObject_forKeyedSubscript_(v5, v11, v10, @"ChAber_SW", v12);

        v16 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v13, WORD1(v87), v14, v15);
        objc_msgSend_setObject_forKeyedSubscript_(v5, v17, v16, @"CA1", v18);

        v22 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v19, WORD2(v87), v20, v21);
        objc_msgSend_setObject_forKeyedSubscript_(v5, v23, v22, @"CA2", v24);

        v28 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v25, HIWORD(v87), v26, v27);
        objc_msgSend_setObject_forKeyedSubscript_(v5, v29, v28, @"CA3", v30);

        v34 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v31, v88, v32, v33);
        objc_msgSend_setObject_forKeyedSubscript_(v5, v35, v34, @"CA4", v36);

        v40 = objc_msgSend_numberWithShort_(MEMORY[0x277CCABB0], v37, SWORD1(v88), v38, v39);
        objc_msgSend_setObject_forKeyedSubscript_(v5, v41, v40, @"RG1", v42);

        v46 = objc_msgSend_numberWithShort_(MEMORY[0x277CCABB0], v43, SWORD2(v88), v44, v45);
        objc_msgSend_setObject_forKeyedSubscript_(v5, v47, v46, @"RG2", v48);

        v52 = objc_msgSend_numberWithShort_(MEMORY[0x277CCABB0], v49, SHIWORD(v88), v50, v51);
        objc_msgSend_setObject_forKeyedSubscript_(v5, v53, v52, @"RG3", v54);

        v58 = objc_msgSend_numberWithShort_(MEMORY[0x277CCABB0], v55, v89, v56, v57);
        objc_msgSend_setObject_forKeyedSubscript_(v5, v59, v58, @"RG4", v60);

        v64 = objc_msgSend_numberWithShort_(MEMORY[0x277CCABB0], v61, v90, v62, v63);
        objc_msgSend_setObject_forKeyedSubscript_(v5, v65, v64, @"BG1", v66);

        v70 = objc_msgSend_numberWithShort_(MEMORY[0x277CCABB0], v67, v91, v68, v69);
        objc_msgSend_setObject_forKeyedSubscript_(v5, v71, v70, @"BG2", v72);

        v76 = objc_msgSend_numberWithShort_(MEMORY[0x277CCABB0], v73, v92, v74, v75);
        objc_msgSend_setObject_forKeyedSubscript_(v5, v77, v76, @"BG3", v78);

        v82 = objc_msgSend_numberWithShort_(MEMORY[0x277CCABB0], v79, v93, v80, v81);
        objc_msgSend_setObject_forKeyedSubscript_(v5, v83, v82, @"BG4", v84);

        objc_autoreleasePoolPop(v6);
      }
    }

    v85 = v3;
    if (v95)
    {
      sub_2337239E8(v95);
    }
  }

  return v3;
}

void sub_23386321C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_2337239E8(a14);
  }

  _Unwind_Resume(a1);
}

id sub_233863290(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_msgSend_isEqualToString_(v3, v4, @"leicaCropRect", v5, v6))
  {
    (*(*a1 + 160))(&v21, a1);
    v23 = (*(*v21 + 448))(v21);
    v24 = v10;
    v14 = sub_2337D891C(&v23, v10, v11, v12, v13);
  }

  else
  {
    if (!objc_msgSend_isEqualToString_(v3, v7, @"cropRectFromTag", v8, v9))
    {
      v19 = sub_2338D3C20(a1, v3);
      goto LABEL_8;
    }

    (*(*a1 + 160))(&v21, a1);
    v23 = (*(*v21 + 456))(v21);
    v24 = v15;
    v14 = sub_2337D891C(&v23, v15, v16, v17, v18);
  }

  v19 = v14;
  if (v22)
  {
    sub_2337239E8(v22);
  }

LABEL_8:

  return v19;
}

double sub_233863430(uint64_t a1)
{
  (*(*a1 + 72))(&v6);
  v2 = v6;
  v3 = (*(*a1 + 120))(a1);
  v4 = sub_2337F5668(v2, @"blackLevelOffsetAdjustment", v3, &unk_284925C78);
  if (v7)
  {
    sub_2337239E8(v7);
  }

  return v4;
}

void sub_2338634E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_233863504(uint64_t a1, int a2, int a3, char **a4, char **a5)
{
  *(a1 + 188) = a2;
  *(a1 + 192) = a3;
  v7 = (a1 + 200);
  if (v7 != a4)
  {
    sub_233723454(v7, *a4, a4[1], (a4[1] - *a4) >> 2);
  }

  result = (a1 + 224);
  if ((a1 + 224) != a5)
  {
    v9 = *a5;
    v10 = a5[1];
    v11 = (v10 - *a5) >> 2;

    return sub_233723454(result, v9, v10, v11);
  }

  return result;
}

void *sub_23386357C(uint64_t a1, int a2, size_t size)
{
  v9 = a2;
  v4 = size;
  v5 = malloc_type_malloc(size, 0x100004077774924uLL);
  v6 = *(a1 + 24);
  sub_233723AE0(&v8, &v9);
  (*(*v6 + 40))(v6, &v8, 0);
  (*(**(a1 + 24) + 32))(*(a1 + 24), v5, v4);
  return v5;
}

void sub_23386364C(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    free(v1);
  }

  __cxa_end_catch();
  JUMPOUT(0x233863634);
}

void sub_233863670(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, int *a5)
{
  applejpeg_decode_create();
  if (applejpeg_decode_open_mem() || applejpeg_decode_set_option_outformat() || applejpeg_decode_get_image_info() || a5[2] != 2 * v37 || a5[3] != 2 * v38 || applejpeg_decode_get_output_buffer_size() || 2 * a5[2] * a5[2])
  {
    v12 = 0;
  }

  else
  {
    v12 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v9, 0, v10, v11);
    objc_msgSend_mutableBytes(v12, v13, v14, v15, v16);
    if (!applejpeg_decode_image_all())
    {
      v39.origin.x = *a3;
      v39.origin.y = a3[1];
      v39.size.width = a3[2];
      v39.size.height = a3[3];
      v41.origin.x = *a5;
      v41.origin.y = a5[1];
      v41.size.width = a5[2];
      v41.size.height = a5[3];
      v40 = CGRectIntersection(v39, v41);
      v17 = (v40.origin.y - a3[1]);
      v18 = v17 + v40.size.height;
      if (v18 > v17)
      {
        v19 = (v40.origin.x - *a3);
        v20 = v19 + v40.size.width;
        v21 = v17 * a4 + 2 * v19;
        v22 = v21 + a4 + a2 + 2;
        v23 = 2 * a4;
        v24 = a2 + v21;
        v25 = v17;
        do
        {
          v26 = v12;
          v31 = objc_msgSend_bytes(v26, v27, v28, v29, v30);
          if (v20 > v19)
          {
            v32 = 0;
            v33 = v19;
            do
            {
              v34 = *(v31 + ((2 * v32) | 4));
              v35 = *(v31 + ((2 * v32) | 6));
              *(v24 + v32) = *(v31 + 2 * (v32 & 0x7FFFFFFFFFFFFFFCLL));
              v36 = (v22 + v32);
              *(v36 - 1) = v34;
              *v36 = v35;
              v33 += 2;
              v32 += 4;
            }

            while (v33 < v20);
          }

          v25 += 2;
          v22 += v23;
          v24 += v23;
        }

        while (v25 < v18);
      }
    }
  }

  applejpeg_decode_destroy();
}

void sub_233863908(uint64_t a1)
{
  v3 = *(a1 + 44);
  v2 = *(a1 + 48);
  v4 = *(a1 + 188);
  v5 = *(a1 + 192);
  v16 = (*(a1 + 208) - *(a1 + 200)) >> 2;
  sub_233723B40(&v19, &v16);
  if (*(a1 + 208) - *(a1 + 200) != *(a1 + 232) - *(a1 + 224))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if ((v3 - 100000) < 0xFFFE7961)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if ((v2 - 100000) < 0xFFFE7961)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (v4 - 100000 < 0xFFFE7961)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (v5 - 100000 < 0xFFFE7961)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v6 = v19;
  if (v19 >= 20000)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if ((v2 + v5 - 1) / v5 * ((v3 + v4 - 1) / v4) != v19)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v15 = sub_2337ADCC4(a1);
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 4 * v6;
    do
    {
      v16 = __PAIR64__(v8, v9);
      v17 = v4;
      v18 = v5;
      v11 = sub_23386357C(a1, *(*(a1 + 200) + v7), *(*(a1 + 224) + v7));
      if (v11)
      {
        v12 = v11;
        sub_233863670(v11, v15 + 2 * v8 * v3 + 2 * v9, &v16, 2 * v3, &v16);
        free(v12);
      }

      v7 += 4;
      v13 = v9 + v4;
      if ((v9 + v4) >= v3)
      {
        v9 = 0;
      }

      else
      {
        v9 += v4;
      }

      if (v13 >= v3)
      {
        v14 = v5;
      }

      else
      {
        v14 = 0;
      }

      v8 += v14;
    }

    while (v10 != v7);
  }
}

void sub_233863BB0(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v7 = *(a1 + 44);
  v6 = *(a1 + 48);
  v8 = *(a1 + 188);
  v9 = *(a1 + 192);
  v19 = (*(a1 + 208) - *(a1 + 200)) >> 2;
  sub_233723B40(&v22, &v19);
  if (*(a1 + 208) - *(a1 + 200) != *(a1 + 232) - *(a1 + 224))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if ((v7 - 100000) < 0xFFFE7961)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if ((v6 - 100000) < 0xFFFE7961)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (v8 - 100000 < 0xFFFE7961)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (v9 - 100000 < 0xFFFE7961)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (v22 >= 20000)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if ((v6 + v9 - 1) / v9 * ((v7 + v8 - 1) / v8) != v22)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (v22)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 4 * v22;
    do
    {
      v19 = __PAIR64__(v12, v11);
      v20 = v8;
      v21 = v9;
      if (sub_23385F470(&v19, a3))
      {
        v14 = sub_23386357C(a1, *(*(a1 + 200) + v10), *(*(a1 + 224) + v10));
        if (v14)
        {
          v15 = v14;
          sub_233863670(v14, a2, a3, a4, &v19);
          free(v15);
        }
      }

      if ((v11 + v8) >= v7)
      {
        v16 = v9;
      }

      else
      {
        v16 = 0;
      }

      v12 += v16;
      if ((v11 + v8) >= v7)
      {
        v11 = 0;
      }

      else
      {
        v11 += v8;
      }

      v10 += 4;
    }

    while (v13 != v10);
  }
}

void *sub_233863E50(void *a1)
{
  *a1 = &unk_284926878;
  v2 = a1[28];
  if (v2)
  {
    a1[29] = v2;
    operator delete(v2);
  }

  v3 = a1[25];
  if (v3)
  {
    a1[26] = v3;
    operator delete(v3);
  }

  return sub_233723A54(a1);
}

void sub_233863EC0(void *a1)
{
  *a1 = &unk_284926878;
  v2 = a1[28];
  if (v2)
  {
    a1[29] = v2;
    operator delete(v2);
  }

  v3 = a1[25];
  if (v3)
  {
    a1[26] = v3;
    operator delete(v3);
  }

  sub_233723A54(a1);

  JUMPOUT(0x2383ABF10);
}

id sub_2338641B0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43[1] = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CD3720];
  v34 = *MEMORY[0x277CD3700];
  v35 = v5;
  v42[0] = MEMORY[0x277CBEC38];
  v42[1] = @"com.samsung.raw-image";
  v6 = *MEMORY[0x277CD3718];
  v36 = *MEMORY[0x277CD36E0];
  v42[2] = @".srw.";
  v42[3] = &unk_284957FD0;
  v42[4] = &unk_284957FE8;
  v7 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], a2, sub_2338644A8, a4, a5, v34, v35, v36, v6, *MEMORY[0x277CD3708], *MEMORY[0x277CD3710]);
  v42[5] = v7;
  v37 = *MEMORY[0x277CD36C8];
  v11 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v8, sub_2338644F4, v9, v10);
  v42[6] = v11;
  v38 = *MEMORY[0x277CD36E8];
  v15 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v12, sub_233864500, v13, v14);
  v42[7] = v15;
  v39 = *MEMORY[0x277CD36D0];
  v19 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v16, sub_23378BC54, v17, v18);
  v42[8] = v19;
  v40 = *MEMORY[0x277CD36F0];
  v23 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v20, sub_23386450C, v21, v22);
  v42[9] = v23;
  v41 = *MEMORY[0x277CD36F8];
  v27 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v24, sub_233864518, v25, v26);
  v42[10] = v27;
  v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v28, v42, &v34, 11);
  v43[0] = v29;
  v32 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v30, v43, 1, v31);

  return v32;
}

uint64_t sub_2338644A8(unsigned __int8 *a1, unint64_t a2, void *a3)
{
  v5 = 42;
  result = sub_2338F9020(a1, a2, &v5);
  if (result)
  {
    return sub_23378E728(@"com.samsung.raw-image", a3);
  }

  return result;
}

void sub_233864524(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  a4;
  a5;
  sub_233865B50();
}

uint64_t sub_2338645C0(uint64_t a1)
{
  sub_2337338AC(a1, &v5);
  v2 = (*(*v5 + 48))(v5);
  if (v6)
  {
    sub_2337239E8(v6);
  }

  v7 = v2;
  sub_2337338AC(a1, &v5);
  v3 = sub_233725404(v5);
  (*(*a1 + 128))(a1, v3);
  if (v6)
  {
    sub_2337239E8(v6);
  }

  sub_2337268D8(&v5, &v7);
  (*(*a1 + 144))(a1, &v5);
  LODWORD(v5) = 0;
  (*(*a1 + 160))(a1, &v5);
  return 1;
}

void sub_2338646E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_2337239E8(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_233864700(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  nullsub_6();
  v6 = *a3;
  if (v6 <= 0xA020)
  {
    switch(v6)
    {
      case 0xA010u:
        if (a3[1] == 4 && *(a3 + 1) == 8 && ((*(*a1 + 56))(a1) & 1) == 0)
        {
          sub_2337338AC(a1, &__p);
          LODWORD(v41[0]) = *(a3 + 2);
          sub_233723AE0(&v43, v41);
          sub_233725F08(&__dst, &__p, &v43, 0);
          if (__p.__r_.__value_.__l.__size_)
          {
            sub_2337239E8(__p.__r_.__value_.__l.__size_);
          }

          sub_2337338AC(a1, &v43);
          LODWORD(v41[0]) = *(a3 + 1);
          sub_233725C7C(v43, v41, &__p);
          sub_2338FD208(v41, &v43, &__p, &__dst);
        }

        break;
      case 0xA020u:
        if (((*(*a1 + 56))(a1) & 1) == 0 && a3[1] == 4 && *(a3 + 1) == 11)
        {
          sub_2337338AC(a1, &__p);
          LODWORD(v41[0]) = *(a3 + 2);
          sub_233723AE0(&v43, v41);
          sub_233725F08(&__dst, &__p, &v43, 0);
          if (__p.__r_.__value_.__l.__size_)
          {
            sub_2337239E8(__p.__r_.__value_.__l.__size_);
          }

          memset(&__p, 0, sizeof(__p));
          if (*(a3 + 1))
          {
            v7 = 0;
            do
            {
              sub_2337338AC(a1, &v43);
              LODWORD(v41[0]) = sub_233725614(v43);
              sub_2337539D0(&__p.__r_.__value_.__l.__data_, v41);
              if (v44)
              {
                sub_2337239E8(v44);
              }

              ++v7;
            }

            while (v7 < *(a3 + 1));
            v8 = __p.__r_.__value_.__r.__words[0];
          }

          else
          {
            v8 = 0;
          }

          if ((a1 + 1184) != &__p)
          {
            sub_233723454((a1 + 1184), v8, __p.__r_.__value_.__l.__size_, (__p.__r_.__value_.__l.__size_ - v8) >> 2);
            v8 = __p.__r_.__value_.__r.__words[0];
          }

          if (v8)
          {
            __p.__r_.__value_.__l.__size_ = v8;
            operator delete(v8);
          }

          sub_233725FD4(&__dst);
        }

        break;
      case 0x35u:
        sub_2338FCD48(a3, a1, a2);
        break;
    }

    return;
  }

  if (v6 != 40993)
  {
    if (v6 != 41000 || ((*(*a1 + 56))(a1) & 1) != 0 || a3[1] != 9 || *(a3 + 1) != 4)
    {
      return;
    }

    if (*(a1 + 1192) - *(a1 + 1184) != 44)
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }

    if (*(a2 + 23) < 0)
    {
      sub_233731FB8(&__dst, *a2, *(a2 + 8));
    }

    else
    {
      __dst = *a2;
    }

    std::string::append(&__dst, ":BlackLevel", 0xBuLL);
    memset(&__p, 0, sizeof(__p));
    sub_2337338AC(a1, v41);
    LODWORD(p_dst) = *(a3 + 2);
    sub_233723AE0(v40, &p_dst);
    sub_233725F08(&v43, v41, v40, 0);
    if (v41[1])
    {
      sub_2337239E8(v41[1]);
    }

    if (*(a3 + 1))
    {
      v9 = 0;
      do
      {
        sub_2337338AC(a1, v41);
        v10 = sub_233725614(v41[0]);
        size = __p.__r_.__value_.__l.__size_;
        if (__p.__r_.__value_.__l.__size_ >= __p.__r_.__value_.__r.__words[2])
        {
          v13 = __p.__r_.__value_.__r.__words[0];
          v14 = __p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0];
          v15 = (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 2;
          v16 = v15 + 1;
          if ((v15 + 1) >> 62)
          {
            sub_2337235BC();
          }

          v17 = __p.__r_.__value_.__r.__words[2] - __p.__r_.__value_.__r.__words[0];
          if ((__p.__r_.__value_.__r.__words[2] - __p.__r_.__value_.__r.__words[0]) >> 1 > v16)
          {
            v16 = v17 >> 1;
          }

          if (v17 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v18 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = v16;
          }

          if (v18)
          {
            sub_2337235D4(&__p, v18);
          }

          *(4 * v15) = v10;
          v12 = 4 * v15 + 4;
          memcpy(0, v13, v14);
          v19 = __p.__r_.__value_.__r.__words[0];
          __p.__r_.__value_.__r.__words[0] = 0;
          *&__p.__r_.__value_.__r.__words[1] = v12;
          if (v19)
          {
            operator delete(v19);
          }
        }

        else
        {
          *__p.__r_.__value_.__l.__size_ = v10;
          v12 = size + 4;
        }

        __p.__r_.__value_.__l.__size_ = v12;
        if (v41[1])
        {
          sub_2337239E8(v41[1]);
        }

        ++v9;
      }

      while (v9 < *(a3 + 1));
    }

    v20 = __p.__r_.__value_.__l.__size_;
    v21 = __p.__r_.__value_.__r.__words[0];
    v22 = (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 2;
    if (__p.__r_.__value_.__l.__size_ != __p.__r_.__value_.__r.__words[0])
    {
      v23 = 0;
      v24 = *(a1 + 1184);
      do
      {
        *(v21 + 4 * v23) -= *(v24 + 4 * (v23 % v22));
        ++v23;
      }

      while (v22 > v23);
    }

    v41[0] = 0;
    v41[1] = 0;
    v42 = 0;
    sub_233865A78(v41, v21, v20, v22);
    v40[0] = &__dst;
    v25 = sub_233757B14(a1 + 264, &__dst.__r_.__value_.__l.__data_);
    v26 = v25[7];
    if (v26)
    {
      v25[8] = v26;
      operator delete(v26);
      v25[7] = 0;
      v25[8] = 0;
      v25[9] = 0;
    }

    *(v25 + 7) = *v41;
    v25[9] = v42;
    sub_233725FD4(&v43);
    v27 = __p.__r_.__value_.__r.__words[0];
    if (!__p.__r_.__value_.__r.__words[0])
    {
      goto LABEL_93;
    }

    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    goto LABEL_92;
  }

  if (((*(*a1 + 56))(a1) & 1) != 0 || a3[1] != 4 || *(a3 + 1) != 4)
  {
    return;
  }

  if (*(a1 + 1192) - *(a1 + 1184) != 44)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (*(a2 + 23) < 0)
  {
    sub_233731FB8(&__dst, *a2, *(a2 + 8));
    if (*(a2 + 23) < 0)
    {
      sub_233731FB8(&__p, *a2, *(a2 + 8));
      goto LABEL_72;
    }
  }

  else
  {
    __dst = *a2;
  }

  __p = *a2;
LABEL_72:
  std::string::append(&__dst, ":WhitePoint", 0xBuLL);
  std::string::append(&__p, ":WhitePointDecrypted", 0x14uLL);
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v41[0] = 0;
  v41[1] = 0;
  v42 = 0;
  sub_2337338AC(a1, &p_dst);
  v36 = *(a3 + 2);
  sub_233723AE0(&v37, &v36);
  sub_233725F08(v40, &p_dst, &v37, 0);
  if (v39)
  {
    sub_2337239E8(v39);
  }

  if (*(a3 + 1))
  {
    v28 = 0;
    do
    {
      sub_2337338AC(a1, &p_dst);
      v37 = sub_233725614(p_dst);
      sub_2337539D0(&v43, &v37);
      if (v39)
      {
        sub_2337239E8(v39);
      }

      ++v28;
    }

    while (v28 < *(a3 + 1));
  }

  sub_233723454(v41, v43, v44, (v44 - v43) >> 2);
  v29 = v41[0];
  if (v41[1] != v41[0])
  {
    v30 = (v41[1] - v41[0]) >> 2;
    v31 = *(a1 + 1184);
    v32 = 4;
    do
    {
      *v29++ -= *(v31 + 4 * (v32 % v30));
      v33 = v32 - 3;
      ++v32;
    }

    while (v30 > v33);
  }

  p_dst = &__dst;
  v34 = (sub_2337577E4(a1 + 120, &__dst.__r_.__value_.__l.__data_) + 56);
  if (v34 != &v43)
  {
    sub_233723454(v34, v43, v44, (v44 - v43) >> 2);
  }

  p_dst = &__p;
  v35 = (sub_2337577E4(a1 + 120, &__p.__r_.__value_.__l.__data_) + 56);
  if (v35 != v41)
  {
    sub_233723454(v35, v41[0], v41[1], (v41[1] - v41[0]) >> 2);
  }

  sub_233725FD4(v40);
  if (v41[0])
  {
    v41[1] = v41[0];
    operator delete(v41[0]);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_93;
  }

  v27 = __p.__r_.__value_.__r.__words[0];
LABEL_92:
  operator delete(v27);
LABEL_93:
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_233864EF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 - 89) < 0)
  {
    operator delete(*(v26 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233865090(uint64_t a1)
{
  v6 = 1;
  sub_23372A488(__p, "IFD0:SUBIFD1");
  v2 = sub_23374C360(a1, __p, &v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v2)
  {
    return v6;
  }

  else
  {
    return 1;
  }
}

void sub_233865100(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23386511C(uint64_t a1)
{
  sub_23372A488(__p, "IFD0:SUBIFD1");
  v2 = sub_233753D88(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_233865178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233865194(uint64_t a1)
{
  sub_23372A488(__p, "IFD0:SUBIFD1");
  v2 = sub_233753DFC(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_2338651F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_23386520C(uint64_t a1)
{
  sub_23372A488(__p, "IFD0:SUBIFD1");
  v2 = sub_233753F24(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_233865268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_233865284(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23372A488(v7, "IFD0");
  sub_233735E3C(a1 + 704, v7);
  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_23372A488(v7, "IFD0:SUBIFD0");
  sub_233753354(a1, v7, &v6);
  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  sub_23372A488(v7, "IFD0:EXIF:MAKERNOTE:SUBIFD0");
  sub_233753354(a1, v7, &v5);
  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  sub_23372A488(v7, "IFD1:SUBIFD0");
  sub_233753354(a1, v7, &v4);
  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  if (v6)
  {
    sub_233753C74(a2, &v6);
  }

  if (v5)
  {
    sub_233753C74(a2, &v5);
  }

  if (v4)
  {
    sub_233753C74(a2, &v4);
  }

  if (*(&v4 + 1))
  {
    sub_2337239E8(*(&v4 + 1));
  }

  if (*(&v5 + 1))
  {
    sub_2337239E8(*(&v5 + 1));
  }

  if (*(&v6 + 1))
  {
    sub_2337239E8(*(&v6 + 1));
  }
}

void sub_2338653D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (*(v16 - 17) < 0)
  {
    operator delete(*(v16 - 40));
  }

  if (a13)
  {
    sub_2337239E8(a13);
  }

  if (a15)
  {
    sub_2337239E8(a15);
  }

  *(v16 - 40) = v15;
  sub_233723948((v16 - 40));
  _Unwind_Resume(a1);
}

uint64_t sub_233865488(uint64_t a1)
{
  sub_23372A488(__p, "IFD0:SUBIFD1");
  v2 = sub_233735E3C(a1 + 656, __p);
  if (a1 + 664 == v2 || (v3 = *(v2 + 56), *(v2 + 64) == v3))
  {
    LOBYTE(v4) = 0;
    v5 = 0;
  }

  else
  {
    v4 = *v3;
    v5 = 1;
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_9:
    LOWORD(result) = sub_233733AF4();
    return result;
  }

  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_7:
  LODWORD(result) = ~(-1 << v4);
  return result;
}

void sub_233865534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233865550(void *a1)
{
  if ((*(*a1 + 536))(a1) == 32769)
  {
    return 1;
  }

  return sub_23373279C(a1);
}

uint64_t sub_2338655CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(*a1 + 536))(a1);
  if (result == 32769)
  {
    (*(*a1 + 384))(&v5, a1);
    (*(*a1 + 424))(a1);
    sub_23376419C();
  }

  if (result == 32770)
  {
    (*(*a1 + 384))(&v5, a1);
    (*(*a1 + 424))(a1);
    sub_2337646DC();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void sub_2338657B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_2337239E8(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338657DC(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_23372A488(&__p, "srw");
  sub_233735478(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_23372A488(&__p, "samsung");
  sub_233735478(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_2337355A8(a1, &__p);
  sub_233735478(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_233865890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_233735AD4(&__p);
  _Unwind_Resume(a1);
}

id sub_2338658D0()
{
  v17[5] = *MEMORY[0x277D85DE8];
  v0 = sub_23374CF00();
  v5 = objc_msgSend_mutableCopy(v0, v1, v2, v3, v4);

  v16[0] = &unk_284958000;
  v16[1] = &unk_284958030;
  v17[0] = &unk_28495D9D8;
  v17[1] = &unk_28495DA00;
  v16[2] = &unk_284958048;
  v16[3] = &unk_284958060;
  v17[2] = &unk_28495DA28;
  v17[3] = &unk_28495DA50;
  v16[4] = &unk_284958078;
  v17[4] = &unk_28495DA78;
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v6, v17, v16, 5);
  objc_msgSend_addEntriesFromDictionary_(v5, v8, v7, v9, v10);

  v14 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x277CBEAC0], v11, v5, v12, v13);

  return v14;
}

void sub_233865A04(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_233865A40(void *a1)
{
  sub_233865AF0(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_233865A78(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_23372375C(result, a4);
  }

  return result;
}

void sub_233865AD4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233865AF0(void *a1)
{
  *a1 = &unk_284926990;
  v2 = a1[148];
  if (v2)
  {
    a1[149] = v2;
    operator delete(v2);
  }

  return sub_2337557B4(a1);
}

void *sub_233865BF4(void *a1, void *a2, char *a3, void **a4, void **a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284926CC8;
  sub_23374B844((a1 + 3), a2, *a3, *a4, *a5);
  a1[3] = &unk_284926990;
  a1[151] = 0;
  a1[153] = 0;
  a1[152] = 0;
  return a1;
}

void sub_233865CA4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284926CC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

id sub_233865D20(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_msgSend_isEqualToString_(v3, v4, @"isSonySRFCompressedRaw", v5, v6))
  {
    v7 = sub_233865DBC(a1);
    v8 = MEMORY[0x277CBEC28];
    if (v7)
    {
      v8 = MEMORY[0x277CBEC38];
    }

    v9 = v8;
  }

  else
  {
    v9 = sub_2338D3C20(a1, v3);
  }

  v10 = v9;

  return v10;
}

BOOL sub_233865DBC(uint64_t a1)
{
  (*(*a1 + 160))(&v4);
  sub_2337D03B0(&v4, &v6);
  if (v5)
  {
    sub_2337239E8(v5);
  }

  if (v6)
  {
    v2 = sub_233790CA4(v6) == 2;
  }

  else if ((*(*a1 + 176))(a1))
  {
    v2 = (*(*a1 + 864))(a1) > 0xFFF;
  }

  else
  {
    v2 = 0;
  }

  if (v7)
  {
    sub_2337239E8(v7);
  }

  return v2;
}

void sub_233865EB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_233865ED4(uint64_t a1)
{
  v2 = (*(*a1 + 2192))(a1);
  (*(*a1 + 2200))(__p, a1);
  v6 = 0;
  v7 = v2;
  v5 = &unk_284917748;
  (*(*a1 + 160))(&v3, a1);
  (*(*v3 + 600))(v3, __p, &v5, 3);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_233866024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a11)
  {
    sub_2337239E8(a11);
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_233866054(uint64_t a1@<X0>, void **a2@<X8>)
{
  v4 = (*(*a1 + 960))(a1);
  if (v4 == 11)
  {
    goto LABEL_19;
  }

  if (v4 == 10)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    (*(*a1 + 160))(&v17, a1);
    v5 = v17;
    sub_23372A488(&__p, "IFD0:DNGPrivate:SR2Private:SR2SubIFD:BlackLevels");
    if ((*(*v5 + 248))(v5, &__p, a2, 0))
    {
      v7 = *a2;
      v6 = a2[1];
      if (v16 < 0)
      {
        operator delete(__p);
      }

      v8 = v6 - v7;
      if (v18)
      {
        sub_2337239E8(v18);
      }

      if (v8 == 32)
      {
        return;
      }
    }

    else
    {
      if (v16 < 0)
      {
        operator delete(__p);
      }

      if (v18)
      {
        sub_2337239E8(v18);
      }
    }

    v9 = *a2;
    if (*a2)
    {
      a2[1] = v9;
      operator delete(v9);
    }

LABEL_19:
    (*(*a1 + 72))(&__p, a1);
    v10 = __p;
    v11 = off_27DE37618[0];
    v12 = (*(*a1 + 120))(a1);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_2338662F8;
    v13[3] = &unk_2789EEF48;
    v13[4] = a1;
    sub_2337BE5F8(v10, v11, v12, v13, a2);
    if (v15)
    {
      sub_2337239E8(v15);
    }

    return;
  }

  sub_2338D50CC(a1, a2);
}

void sub_23386629C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  v22 = *(v20 - 40);
  if (v22)
  {
    sub_2337239E8(v22);
  }

  v23 = *v19;
  if (*v19)
  {
    *(v19 + 8) = v23;
    operator delete(v23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233866300(uint64_t a1)
{
  if ((*(*a1 + 176))(a1) && (*(*a1 + 2808))(a1) == 7)
  {
    return 1;
  }

  if (sub_233739B74(a1))
  {
    return 0;
  }

  result = (*(*a1 + 312))(a1);
  if (result)
  {
    result = (*(*a1 + 2792))(a1);
    if (result)
    {
      v3 = *(*a1 + 2800);

      return v3(a1);
    }
  }

  return result;
}

uint64_t sub_23386644C(uint64_t a1)
{
  (*(*a1 + 160))(&v7);
  sub_2337D03B0(&v7, &v9);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  if (v9)
  {
    v1 = sub_233790810(v9);
    v2 = v1 & 1;
    if ((v1 & 0x10) != 0)
    {
      v2 = 0;
    }

    if ((~v1 & 0x11) != 0)
    {
      v3 = v2;
    }

    else
    {
      v3 = 1;
    }

    if (v1 == 255)
    {
      v4 = 0;
    }

    else
    {
      v4 = v3;
    }

    if (v1)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  if (v10)
  {
    sub_2337239E8(v10);
  }

  return v5;
}

void sub_233866504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23386651C(uint64_t a1)
{
  v2 = (*(*a1 + 2808))(a1);
  if (v2 == 3 || v2 == 5)
  {
    return 1;
  }

  if (v2 != 4)
  {
    return 0;
  }

  (*(*a1 + 160))(&v11, a1);
  sub_2337D03B0(&v11, &v13);
  if (v12)
  {
    sub_2337239E8(v12);
  }

  if (v13)
  {
    v5 = sub_233790810(v13);
    v6 = v5 & 1;
    if ((v5 & 0x10) != 0)
    {
      v6 = 0;
    }

    if ((~v5 & 0x11) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 1;
    }

    if (v5 == 255)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    if ((v5 & 0x100) != 0)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    if ((v5 - 1) <= 0xFEFEu)
    {
      v4 = v9;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  if (v14)
  {
    sub_2337239E8(v14);
  }

  return v4;
}

void sub_233866640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_233866948(uint64_t a1)
{
  (*(*a1 + 2824))(&v4);
  v1 = v4;
  v2 = v5;
  if (v4)
  {
    v5 = v4;
    operator delete(v4);
  }

  return v2 != v1;
}

void sub_2338669B8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 480) = 0u;
  *(a3 + 496) = 0u;
  *(a3 + 448) = 0u;
  *(a3 + 464) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 384) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 352) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 336) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 304) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  sub_233855004(a1, a2, a3);
  if ((sub_233739B6C(a1) & 1) == 0)
  {
    (*(*a1 + 2824))(&v37, a1);
    v9 = v37;
    v10 = v38 - v37;
    if (v38 == v37)
    {
      if (!v38)
      {
        return;
      }
    }

    else
    {
      if ((v10 & 8) != 0 || (v11 = v10 >> 3, ((v10 >> 3) - 35) <= 0xFFFFFFFFFFFFFFE2))
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      LOBYTE(v34) = 1;
      v12 = *v37;
      if (v12 - 9 < 0xFFFFFFFFFFFFFFF8 || (v13 = (v11 - 4) >> 1, v13 < v12))
      {
        v32 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](v32, "RawCameraException");
        __cxa_throw(v32, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v14 = v37[2 * v12 + 1];
      if (v14 - 9 < 0xFFFFFFFFFFFFFFF8 || v13 < v14)
      {
        v33 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](v33, "RawCameraException");
        __cxa_throw(v33, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v16 = &v35 + 1;
      v17 = v37 + 2;
      v18 = *v37;
      do
      {
        *(v16 - 8) = *(v17 - 1);
        *v16++ = v17[2 * v12];
        ++v17;
        --v18;
      }

      while (v18);
      v19 = &v9[v12];
      v20 = vcvtq_s64_f64(*(v19 + 7));
      v21 = vmovn_s64(v20);
      v22 = vmovn_s64(vcvtq_s64_f64(*(v19 + 5)));
      v23 = vmovn_s64(vcvtq_s64_f64(*(v19 + 3)));
      *v20.i8 = vmovn_s64(vcvtq_s64_f64(*(v19 + 1)));
      *&v36[2] = vqtbl4q_s8(*(&v5 - 3), xmmword_23390A3A0);
      v24 = &v9[2 * v12 + v12];
      v25 = vcvtq_s64_f64(v24[4]);
      v26 = vmovn_s64(v25);
      v27 = vmovn_s64(vcvtq_s64_f64(v24[3]));
      v28 = vmovn_s64(vcvtq_s64_f64(v24[2]));
      *v25.i8 = vmovn_s64(vcvtq_s64_f64(v24[1]));
      *&v36[18] = vqtbl4q_s8(*(&v6 - 3), xmmword_23390A3A0);
      v29 = v34;
      *(a3 + 120) = v35;
      *(a3 + 104) = v29;
      v30 = *&v36[16];
      *(a3 + 136) = *v36;
      *(a3 + 152) = v30;
      *(a3 + 168) = *&v36[32];
    }

    v38 = v9;
    operator delete(v9);
  }
}

void sub_233866C78(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  if (v3)
  {
    *(v1 - 32) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

id sub_233866CB4(uint64_t a1, unsigned int a2)
{
  v3 = sub_2337C4398(a1, a2);
  if (sub_233739B6C(a1))
  {
    v4 = v3;
  }

  else
  {
    (*(*a1 + 2824))(&v247, a1);
    v9 = v247;
    v10 = v248 - v247;
    if (v248 == v247)
    {
      v231 = v3;
    }

    else
    {
      if ((v10 & 8) != 0 || (v11 = v10 >> 3, ((v10 >> 3) - 35) <= 0xFFFFFFFFFFFFFFE2))
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v12 = *v247;
      v13 = (v11 - 4) >> 1;
      if (v12 - 9 < 0xFFFFFFFFFFFFFFF8 || v13 < v12)
      {
        v234 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](v234, "RawCameraException");
        __cxa_throw(v234, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v15 = v247[2 * v12 + 1];
      if (v15 - 9 < 0xFFFFFFFFFFFFFFF8 || v13 < v15)
      {
        v235 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](v235, "RawCameraException");
        __cxa_throw(v235, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v17 = &v247[2 * v12];
      v18 = v244;
      v19 = v247 + 2;
      v20 = *v247;
      do
      {
        *(v18 - 8) = *(v19 - 1);
        *v18++ = v19[2 * v12];
        ++v19;
        --v20;
      }

      while (v20);
      v21 = &v9[v12];
      v22 = vcvtq_s64_f64(*(v21 + 7));
      v23 = vmovn_s64(v22);
      v24 = vmovn_s64(vcvtq_s64_f64(*(v21 + 5)));
      v25 = vmovn_s64(vcvtq_s64_f64(*(v21 + 3)));
      *v22.i8 = vmovn_s64(vcvtq_s64_f64(*(v21 + 1)));
      v245 = vqtbl4q_s8(*(&v5 - 3), xmmword_23390A3A0);
      v26 = &v17[v12];
      v27 = vcvtq_s64_f64(v26[4]);
      v28 = vmovn_s64(v27);
      v29 = vmovn_s64(vcvtq_s64_f64(v26[3]));
      v30 = vmovn_s64(vcvtq_s64_f64(v26[2]));
      *v27.i8 = vmovn_s64(vcvtq_s64_f64(v26[1]));
      v246 = vqtbl4q_s8(*(&v6 - 3), xmmword_23390A3A0);
      v31 = sub_2337854A4(v3, @"PanasonicChromaticAberrationExtended", 0);
      v35 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v32, 1, v33, v34);
      objc_msgSend_setObject_forKeyedSubscript_(v31, v36, v35, @"ChAber_SW_Extended", v37);

      v41 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v38, v236, v39, v40);
      objc_msgSend_setObject_forKeyedSubscript_(v31, v42, v41, @"CA_blu0", v43);

      v47 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v44, v237, v45, v46);
      objc_msgSend_setObject_forKeyedSubscript_(v31, v48, v47, @"CA_blu1", v49);

      v53 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v50, v238, v51, v52);
      objc_msgSend_setObject_forKeyedSubscript_(v31, v54, v53, @"CA_blu2", v55);

      v59 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v56, v239, v57, v58);
      objc_msgSend_setObject_forKeyedSubscript_(v31, v60, v59, @"CA_blu3", v61);

      v65 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v62, v240, v63, v64);
      objc_msgSend_setObject_forKeyedSubscript_(v31, v66, v65, @"CA_blu4", v67);

      v71 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v68, v241, v69, v70);
      objc_msgSend_setObject_forKeyedSubscript_(v31, v72, v71, @"CA_blu5", v73);

      v77 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v74, v242, v75, v76);
      objc_msgSend_setObject_forKeyedSubscript_(v31, v78, v77, @"CA_blu6", v79);

      v83 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v80, v243, v81, v82);
      objc_msgSend_setObject_forKeyedSubscript_(v31, v84, v83, @"CA_blu7", v85);

      v89 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v86, v244[0], v87, v88);
      objc_msgSend_setObject_forKeyedSubscript_(v31, v90, v89, @"CA_red0", v91);

      v95 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v92, v244[1], v93, v94);
      objc_msgSend_setObject_forKeyedSubscript_(v31, v96, v95, @"CA_red1", v97);

      v101 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v98, v244[2], v99, v100);
      objc_msgSend_setObject_forKeyedSubscript_(v31, v102, v101, @"CA_red2", v103);

      v107 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v104, v244[3], v105, v106);
      objc_msgSend_setObject_forKeyedSubscript_(v31, v108, v107, @"CA_red3", v109);

      v113 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v110, v244[4], v111, v112);
      objc_msgSend_setObject_forKeyedSubscript_(v31, v114, v113, @"CA_red4", v115);

      v119 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v116, v244[5], v117, v118);
      objc_msgSend_setObject_forKeyedSubscript_(v31, v120, v119, @"CA_red5", v121);

      v125 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v122, v244[6], v123, v124);
      objc_msgSend_setObject_forKeyedSubscript_(v31, v126, v125, @"CA_red6", v127);

      v131 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v128, v244[7], v129, v130);
      objc_msgSend_setObject_forKeyedSubscript_(v31, v132, v131, @"CA_red7", v133);

      v137 = objc_msgSend_numberWithShort_(MEMORY[0x277CCABB0], v134, v245.i16[0], v135, v136);
      objc_msgSend_setObject_forKeyedSubscript_(v31, v138, v137, @"BG0", v139);

      v143 = objc_msgSend_numberWithShort_(MEMORY[0x277CCABB0], v140, v245.i16[1], v141, v142);
      objc_msgSend_setObject_forKeyedSubscript_(v31, v144, v143, @"BG1", v145);

      v149 = objc_msgSend_numberWithShort_(MEMORY[0x277CCABB0], v146, v245.i16[2], v147, v148);
      objc_msgSend_setObject_forKeyedSubscript_(v31, v150, v149, @"BG2", v151);

      v155 = objc_msgSend_numberWithShort_(MEMORY[0x277CCABB0], v152, v245.i16[3], v153, v154);
      objc_msgSend_setObject_forKeyedSubscript_(v31, v156, v155, @"BG3", v157);

      v161 = objc_msgSend_numberWithShort_(MEMORY[0x277CCABB0], v158, v245.i16[4], v159, v160);
      objc_msgSend_setObject_forKeyedSubscript_(v31, v162, v161, @"BG4", v163);

      v167 = objc_msgSend_numberWithShort_(MEMORY[0x277CCABB0], v164, v245.i16[5], v165, v166);
      objc_msgSend_setObject_forKeyedSubscript_(v31, v168, v167, @"BG5", v169);

      v173 = objc_msgSend_numberWithShort_(MEMORY[0x277CCABB0], v170, v245.i16[6], v171, v172);
      objc_msgSend_setObject_forKeyedSubscript_(v31, v174, v173, @"BG6", v175);

      v179 = objc_msgSend_numberWithShort_(MEMORY[0x277CCABB0], v176, v245.i16[7], v177, v178);
      objc_msgSend_setObject_forKeyedSubscript_(v31, v180, v179, @"BG7", v181);

      v185 = objc_msgSend_numberWithShort_(MEMORY[0x277CCABB0], v182, v246.i16[0], v183, v184);
      objc_msgSend_setObject_forKeyedSubscript_(v31, v186, v185, @"RG0", v187);

      v191 = objc_msgSend_numberWithShort_(MEMORY[0x277CCABB0], v188, v246.i16[1], v189, v190);
      objc_msgSend_setObject_forKeyedSubscript_(v31, v192, v191, @"RG1", v193);

      v197 = objc_msgSend_numberWithShort_(MEMORY[0x277CCABB0], v194, v246.i16[2], v195, v196);
      objc_msgSend_setObject_forKeyedSubscript_(v31, v198, v197, @"RG2", v199);

      v203 = objc_msgSend_numberWithShort_(MEMORY[0x277CCABB0], v200, v246.i16[3], v201, v202);
      objc_msgSend_setObject_forKeyedSubscript_(v31, v204, v203, @"RG3", v205);

      v209 = objc_msgSend_numberWithShort_(MEMORY[0x277CCABB0], v206, v246.i16[4], v207, v208);
      objc_msgSend_setObject_forKeyedSubscript_(v31, v210, v209, @"RG4", v211);

      v215 = objc_msgSend_numberWithShort_(MEMORY[0x277CCABB0], v212, v246.i16[5], v213, v214);
      objc_msgSend_setObject_forKeyedSubscript_(v31, v216, v215, @"RG5", v217);

      v221 = objc_msgSend_numberWithShort_(MEMORY[0x277CCABB0], v218, v246.i16[6], v219, v220);
      objc_msgSend_setObject_forKeyedSubscript_(v31, v222, v221, @"RG6", v223);

      v227 = objc_msgSend_numberWithShort_(MEMORY[0x277CCABB0], v224, v246.i16[7], v225, v226);
      objc_msgSend_setObject_forKeyedSubscript_(v31, v228, v227, @"RG7", v229);

      v230 = v3;
    }

    if (v247)
    {
      v248 = v247;
      operator delete(v247);
    }
  }

  return v3;
}

void sub_23386750C(_Unwind_Exception *a1)
{
  v5 = *(v4 - 56);
  if (v5)
  {
    *(v4 - 48) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2338675F8(uint64_t a1)
{
  (*(*a1 + 72))(&v6);
  v2 = v6;
  v3 = (*(*a1 + 120))(a1);
  v4 = sub_2337D0E68(v2, @"applyLensCorrection", v3, &unk_2849278B8);
  if (v7)
  {
    sub_2337239E8(v7);
  }

  return v4;
}

void sub_2338676A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338676C4(uint64_t a1)
{
  (*(*a1 + 72))(&v6);
  v2 = v6;
  v3 = (*(*a1 + 120))(a1);
  v4 = sub_2337BE174(v2, @"lensCorrectionFilter", v3, &unk_2849278D8);
  if (v7)
  {
    sub_2337239E8(v7);
  }

  return v4;
}

void sub_233867770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_233867790(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 72))(&v6);
  v4 = v6;
  v5 = (*(*a1 + 120))(a1);
  sub_2337BE5F8(v4, @"lensCorrectionParameters", v5, &unk_2849278F8, a2);
  if (v7)
  {
    sub_2337239E8(v7);
  }
}

void sub_233867844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_23386785C(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_233867868(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 72))(&v6);
  v4 = v6;
  v5 = (*(*a1 + 120))(a1);
  sub_2337BE5F8(v4, @"chromaticAberrationParameters", v5, &unk_284927918, a2);
  if (v7)
  {
    sub_2337239E8(v7);
  }
}

void sub_23386791C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_233867934(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_233867948(uint64_t a1)
{
  v1[2] = &unk_28490E658;
  (*(*a1 + 160))(v1);
  operator new();
}

void sub_233867A68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_233867A98(uint64_t *a1, void *a2)
{
  v3 = a2;
  *a1 = 0;
  a1[1] = 0;
  v7 = objc_msgSend_dataWithContentsOfFile_(MEMORY[0x277CBEA90], v4, v3, v5, v6);
  v8 = *a1;
  *a1 = v7;

  v9 = MEMORY[0x277CE1CB8];
  v14 = objc_msgSend_pathExtension(v3, v10, v11, v12, v13);
  v18 = objc_msgSend_typeWithFilenameExtension_(v9, v15, v14, v16, v17);
  v23 = objc_msgSend_identifier(v18, v19, v20, v21, v22);
  v24 = a1[1];
  a1[1] = v23;

  return a1;
}

void sub_233867B3C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_233867B78(float a1, uint64_t a2, void *a3, void *a4)
{
  v13 = a3;
  v6 = a4;
  v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"%af\t// %g", v8, v9, a1, a1);
  objc_msgSend_setValue_forKey_(v13, v11, v10, v6, v12);
}

void sub_233867C38(uint64_t a1, void *a2, void *a3, uint64_t a4, int a5)
{
  v20 = a2;
  v11 = a3;
  if (a5)
  {
    v12 = 0;
    do
    {
      v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v8, @"%af\t// %g", v9, v10, *(a4 + 4 * v12), *(a4 + 4 * v12));
      v17 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v14, @"%@[%d]", v15, v16, v11, v12);
      objc_msgSend_setValue_forKey_(v20, v18, v13, v17, v19);

      ++v12;
    }

    while (a5 != v12);
  }
}

void sub_233867D5C(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = a2;
  sub_233867B78(*a3, v17, v17, @"otrc.s0");
  sub_233867B78(*(a3 + 4), v4, v17, @"otrc.y1");
  sub_233867B78(*(a3 + 8), v5, v17, @"otrc.s1");
  sub_233867B78(*(a3 + 12), v6, v17, @"otrc.y2");
  sub_233867B78(*(a3 + 16), v7, v17, @"otrc.s2");
  sub_233867B78(*(a3 + 20), v8, v17, @"otrc.y3");
  sub_233867B78(*(a3 + 24), v9, v17, @"otrc.s3");
  sub_233867B78(*(a3 + 28), v10, v17, @"otrc.s4");
  v14 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v11, *(a3 + 32), v12, v13);
  objc_msgSend_setObject_forKeyedSubscript_(v17, v15, v14, @"otrc.disabled", v16);
}

id sub_233867E90(uint64_t a1, uint64_t *a2)
{
  memset(v535, 0, 96);
  v534 = 0u;
  v532 = 0u;
  memset(v533, 0, sizeof(v533));
  v530 = 0u;
  v531 = 0u;
  v528 = 0u;
  v529 = 0u;
  v526 = 0u;
  v527 = 0u;
  v524 = 0u;
  v525 = 0u;
  v522 = 0u;
  v523 = 0u;
  v520 = 0u;
  v521 = 0u;
  v2 = *a2;
  v3 = sub_233739B84(*a2);
  (*(*v2 + 2696))(&v520, v2, v3);
  v8 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v4, v5, v6, v7);
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, @"%#x", v10, v11, v520);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v13, v12, @"pattern", v14);

  v18 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v15, DWORD1(v520), v16, v17);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v19, v18, @"bitmapType", v20);

  v24 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v21, BYTE8(v520), v22, v23);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v25, v24, @"despeckleBlackNoiseEnabled", v26);

  v30 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v27, BYTE9(v520), v28, v29);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v31, v30, @"blackLevelExtendEnabled", v32);

  sub_233867B78(*(&v520 + 3), v33, v8, @"blackDespeckleNoiseFactor");
  v37 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v34, v521, v35, v36);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v38, v37, @"greenSplitEnabled", v39);

  v43 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v40, BYTE1(v521), v41, v42);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v44, v43, @"unknownDNGCamera", v45);

  sub_233867B78(*(&v521 + 1), v46, v8, @"greenSplitRed");
  sub_233867B78(*(&v521 + 2), v47, v8, @"greenSplitGreen1");
  sub_233867B78(*(&v521 + 3), v48, v8, @"greenSplitBlue");
  v52 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v49, v522, v50, v51);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v53, v52, @"greenBayerSplit", v54);

  v58 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v55, BYTE4(v522), v56, v57);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v59, v58, @"HREnabled", v60);

  sub_233867B78(*(&v522 + 2), v61, v8, @"HRGreenClip");
  v65 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v62, BYTE12(v522), v63, v64);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v66, v65, @"SPEEnabled", v67);

  sub_233867B78(*&v523, v68, v8, @"SPEDeadNoiseFactor");
  sub_233867B78(*(&v523 + 1), v69, v8, @"SPEDeadNoticeabilityFactor");
  sub_233867B78(*(&v523 + 2), v70, v8, @"SPEHotNoiseFactor");
  v74 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v71, BYTE12(v523), v72, v73);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v75, v74, @"DESEnabled", v76);

  sub_233867B78(*&v524, v77, v8, @"DESNoiseFactor");
  sub_233867B78(*(&v524 + 1), v78, v8, @"DESSignalToNoiseThreshold");
  v82 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v79, DWORD2(v524), v80, v81);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v83, v82, @"DESDoEarlyOut", v84);

  sub_233867B78(*(&v524 + 3), v85, v8, @"DESEarlyOutFactor");
  v89 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v86, v525, v87, v88);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v90, v89, @"DESDoRed", v91);

  v95 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v92, DWORD1(v525), v93, v94);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v96, v95, @"DESDoGreen", v97);

  v101 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v98, DWORD2(v525), v99, v100);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v102, v101, @"DESDoBlue", v103);

  v107 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v104, HIDWORD(v525), v105, v106);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v108, v107, @"DESTaperMethod", v109);

  v113 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v110, v526, v111, v112);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v114, v113, @"DESMethod", v115);

  v119 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v116, BYTE8(v526), v117, v118);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v120, v119, @"CAParameters.ChAber_SW_Extended", v121);

  v125 = 0;
  v126 = &v529 + 5;
  do
  {
    v127 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v122, *(v126 - 24), v123, v124);
    v131 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v128, @"CAParameters.CA_blu[%d]", v129, v130, v125);
    objc_msgSend_setValue_forKey_(v8, v132, v127, v131, v133);

    v137 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v134, *(v126 - 16), v135, v136);
    v141 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v138, @"CAParameters.CA_red[%d]", v139, v140, v125);
    objc_msgSend_setValue_forKey_(v8, v142, v137, v141, v143);

    v147 = objc_msgSend_numberWithShort_(MEMORY[0x277CCABB0], v144, *(v126 - 8), v145, v146);
    v151 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v148, @"CAParameters.BG[%d]", v149, v150, v125);
    objc_msgSend_setValue_forKey_(v8, v152, v147, v151, v153);

    v157 = objc_msgSend_numberWithShort_(MEMORY[0x277CCABB0], v154, *v126, v155, v156);
    v161 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v158, @"CAParameters.RG[%d]", v159, v160, v125);
    objc_msgSend_setValue_forKey_(v8, v162, v157, v161, v163);
    ++v126;

    ++v125;
  }

  while (v125 != 8);
  v164 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v122, BYTE10(v530), v123, v124);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v165, v164, @"CACorrectionEnabled", v166);

  sub_233867B78(*(&v530 + 3), v167, v8, @"CACorrectionRedPower");
  sub_233867B78(*&v531, v168, v8, @"CACorrectionBluePower");
  sub_233867B78(*(&v531 + 1), v169, v8, @"CACorrectionRedScale");
  sub_233867B78(*(&v531 + 2), v170, v8, @"CACorrectionBlueScale");
  v174 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v171, HIDWORD(v531), v172, v173);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v175, v174, @"fullWidth", v176);

  v180 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v177, v532, v178, v179);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v181, v180, @"fullHeight", v182);

  v186 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v183, BYTE4(v532), v184, v185);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v187, v186, @"vignetteCorrectionEnabled", v188);

  sub_233867B78(*(&v532 + 2), v189, v8, @"vignetteCorrectionPower");
  sub_233867B78(*(&v532 + 3), v190, v8, @"vignetteCorrectionAmount");
  v194 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v191, LOBYTE(v533[0]), v192, v193);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v195, v194, @"fujiCAParameters.FujiCAEnable", v196);

  if (LOBYTE(v533[0]))
  {
    v200 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v197, DWORD1(v533[0]), v198, v199);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v201, v200, @"fujiCAParameters.numberOfPoints", v202);

    v206 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v203, DWORD2(v533[0]), v204, v205);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v207, v206, @"fujiCAParameters.maxDistance", v208);

    sub_233867C38(v209, v8, @"fujiCAParameters.CA_LR", v533 + 12, 16);
    sub_233867C38(v210, v8, @"fujiCAParameters.CA_red", &v533[4] + 12, 16);
    sub_233867C38(v211, v8, @"fujiCAParameters.CA_blu", &v533[8] + 12, 16);
  }

  v212 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x277CCABB0], v197, BYTE12(v534), v198, v199);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v213, v212, @"fujiLensParameters.FujiLensCorrectionEnable", v214);

  if (BYTE12(v534))
  {
    v219 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v216, LODWORD(v535[0]), v217, v218);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v220, v219, @"fujiLensParameters.maxDistance", v221);

    v225 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v222, DWORD1(v535[0]), v223, v224);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v226, v225, @"fujiLensParameters.numberOfPoints", v227);

    sub_233867C38(v228, v8, @"fujiLensParameters.lengthRatio", v535 + 8, 16);
    sub_233867C38(v229, v8, @"fujiLensParameters.factor", &v535[4] + 8, 16);
  }

  sub_233867B78(v536, v215, v8, off_27DE37638[0]);
  sub_233867B78(v537, v230, v8, off_27DE37608[0]);
  v234 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v231, v538, v232, v233);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v235, v234, @"chromaBlurEnabled", v236);

  v240 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v237, v539, v238, v239);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v241, v240, @"noAntiAliasingFilter", v242);

  sub_233867B78(v540, v243, v8, off_27DE37740[0]);
  sub_233867B78(v541, v244, v8, @"chromaBlurRadius2");
  sub_233867B78(v542, v245, v8, off_27DE37650[0]);
  sub_233867B78(v543, v246, v8, @"cnrNoiseFactor");
  sub_233867B78(v544, v247, v8, @"cnrRadius");
  sub_233867B78(v545, v248, v8, @"cnrAmount");
  sub_233867B78(v546, v249, v8, off_27DE37748[0]);
  sub_233867B78(v547, v250, v8, @"chromaBlurEdgeThreshold2");
  sub_233867B78(v548, v251, v8, @"adaptiveNormalizationNoiseFactor");
  v255 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v252, v549, v253, v254);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v256, v255, @"adaptiveNormalizationSimple", v257);

  v261 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v258, v550, v259, v260);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v262, v261, @"adaptiveNormalizationDirectionFindingMethod", v263);

  v267 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v264, v551, v265, v266);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v268, v267, @"fujiGreenReconstructionCopyRaw", v269);

  v273 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v270, v552, v271, v272);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v274, v273, @"fujiGreenReconstructionHighFrequency", v275);

  sub_233867B78(v553, v276, v8, @"fujiDirectionsNoiseFactor");
  v280 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v277, v554, v278, v279);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v281, v280, @"fujiGreenSmoothingEnabled", v282);

  v286 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v283, v555, v284, v285);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v287, v286, @"fujiGreenSmoothingThreshold", v288);

  sub_233867B78(v556, v289, v8, @"fujiGreenSmoothingSharpeningAmount");
  sub_233867B78(v557, v290, v8, @"fujiGreenSmoothingCornerThreshold");
  sub_233867B78(v558, v291, v8, @"fujiGreenSmoothingAdjuster");
  v295 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v292, v559, v293, v294);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v296, v295, @"fujiRedBluePlanarValidity", v297);

  v301 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v298, v560, v299, v300);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v302, v301, @"redBlueDefringe", v303);

  v307 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v304, v561, v305, v306);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v308, v307, @"redBlueRangeLimit", v309);

  v313 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v310, v562, v311, v312);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v314, v313, @"redBlueGradientThreshold", v315);

  v319 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v316, v563, v317, v318);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v320, v319, @"redBlueDumbOnly", v321);

  v325 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v322, v564, v323, v324);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v326, v325, @"redBlueGreenOnly", v327);

  v331 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v328, v565, v329, v330);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v332, v331, @"colorSmoothingEnabled", v333);

  sub_233867B78(v566, v334, v8, @"colorSmoothingSharpnessAmount");
  sub_233867B78(v567, v335, v8, @"resampleHorizScale");
  sub_233867B78(v568, v336, v8, @"resampleVertScale");
  sub_233867B78(v569, v337, v8, @"resampleVSharpness");
  sub_233867B78(v570, v338, v8, @"minimumSignalToNoiseRatio");
  sub_233867B78(v571, v339, v8, @"maximumSignalToNoiseRatio");
  sub_233867C38(v340, v8, @"factors", &v572, 3);
  sub_233867C38(v341, v8, @"RVector", &v573, 3);
  sub_233867C38(v342, v8, @"GVector", &v574, 3);
  sub_233867C38(v343, v8, @"BVector", &v575, 3);
  sub_233867C38(v344, v8, @"bias", &v576, 3);
  sub_233867C38(v345, v8, @"clipLevels", v577, 3);
  v349 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v346, v577[3], v347, v348);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v350, v349, @"biasOff", v351);

  v355 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v352, v578, v353, v354);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v356, v355, @"boostEnabled", v357);

  sub_233867D5C(v358, v8, v579);
  sub_233867B78(v579[9], v359, v8, @"gamma");
  sub_233867B78(v579[10], v360, v8, @"shadowDesaturatePoint");
  sub_233867B78(v579[11], v361, v8, @"shadowDesaturateWidth");
  sub_233867B78(v579[12], v362, v8, @"shadowDesaturateAmount");
  sub_233867B78(v579[13], v363, v8, off_27DE37660[0]);
  sub_233867B78(v579[14], v364, v8, off_27DE37668[0]);
  v368 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v365, LODWORD(v579[15]), v366, v367);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v369, v368, @"ISO", v370);

  sub_233867C38(v371, v8, @"blackLevels", &v580, 4);
  sub_233867C38(v372, v8, @"darkNoise", v581, 4);
  v376 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v373, v581[16], v374, v375);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v377, v376, @"individualQuadratics", v378);

  v382 = 0;
  v383 = v582;
  do
  {
    v384 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v379, @"signalNoiseModels[%d].a", v380, v381, v382);
    sub_233867B78(*(v383 - 3), v384, v8, v384);

    v388 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v385, @"signalNoiseModels[%d].b", v386, v387, v382);
    sub_233867B78(*(v383 - 2), v388, v8, v388);

    v392 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v389, @"signalNoiseModels[%d].c", v390, v391, v382);
    sub_233867B78(*(v383 - 1), v392, v8, v392);

    v396 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v393, @"signalNoiseModels[%d].PRNU", v394, v395, v382);
    sub_233867B78(*v383, v396, v8, v396);

    ++v382;
    v383 += 4;
  }

  while (v382 != 4);
  v397 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v379, v582[52], v380, v381);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v398, v397, @"moireSuppressionEnabled", v399);

  sub_233867B78(v583, v400, v8, @"hueMagMR");
  sub_233867B78(v584, v401, v8, @"hueMagRY");
  sub_233867B78(v585, v402, v8, @"hueMagYG");
  sub_233867B78(v586, v403, v8, @"hueMagGC");
  sub_233867B78(v587, v404, v8, @"hueMagCB");
  sub_233867B78(v588, v405, v8, @"hueMagBM");
  v409 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v406, v589, v407, v408);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v410, v409, @"bitmapType", v411);

  v415 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v412, v590, v413, v414);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v416, v415, @"luminanceNoiseReductionEnabled", v417);

  v421 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v418, v591, v419, v420);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v422, v421, @"chromaNoiseReductionEnabled", v423);

  sub_233867B78(v592, v424, v8, @"luminanceNoiseReductionAmount");
  v428 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v425, v593, v426, v427);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v429, v428, @"vectorFieldProcessingEnabled", v430);

  v434 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v431, v594, v432, v433);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v435, v434, @"vectorFieldCorners", v436);

  sub_233867B78(v595, v437, v8, @"vectorFieldSmoothingCoefficient");
  sub_233867B78(v596, v438, v8, @"vectorFieldCornerThreshold");
  sub_233867B78(v597, v439, v8, @"fullSizeSmoothingAmount");
  sub_233867B78(v598, v440, v8, @"halfSizeSmoothingAmount");
  sub_233867B78(v599, v441, v8, @"quarterSizeSmoothingAmount");
  sub_233867B78(v600, v442, v8, @"fullSizeThreshold");
  sub_233867B78(v601, v443, v8, @"fullSizeThresholdSoftness");
  sub_233867B78(v602, v444, v8, @"halfSizeThreshold");
  sub_233867B78(v603, v445, v8, @"halfSizeThresholdSoftness");
  sub_233867B78(v604, v446, v8, @"quarterSizeThreshold");
  sub_233867B78(v605, v447, v8, @"quarterSizeThresholdSoftness");
  sub_233867B78(v606, v448, v8, @"fullSizeGradientMaskAmount");
  sub_233867B78(v607, v449, v8, @"halfSizeGradientMaskAmount");
  sub_233867B78(v608, v450, v8, @"quarterSizeGradientMaskAmount");
  sub_233867B78(v609, v451, v8, @"contrastOverdrive");
  v455 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v452, v610, v453, v454);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v456, v455, @"sharpenEdgesEnabled", v457);

  sub_233867B78(v611, v458, v8, @"sharpenIntensity");
  sub_233867B78(v612, v459, v8, @"addNoiseAmount");
  sub_233867C38(v460, v8, @"factors", v613, 3);
  sub_233869688(v613[3], v461, v8, @"representativeNoiseAmount");
  sub_233869688(v613[4], v462, v8, @"CNR_value");
  sub_233869688(v613[5], v463, v8, @"CNR_radius");
  sub_233867B78(v613[7], v464, v8, @"CNR_bias");
  sub_233869688(v613[6], v465, v8, @"CNR_noiseFactor");
  v469 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v466, v614, v467, v468);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v470, v469, @"powerBlurPass1Enabled", v471);

  v475 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v472, v615, v473, v474);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v476, v475, @"powerBlurPass2Enabled", v477);

  v481 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v478, v616, v479, v480);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v482, v481, @"powerBlurPass3Enabled", v483);

  v487 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v484, v617, v485, v486);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v488, v487, @"powerBlurPass4Enabled", v489);

  sub_233867B78(v618, v490, v8, @"powerBlurPass1Threshold");
  sub_233867B78(v619, v491, v8, @"powerBlurPass2Threshold");
  sub_233867B78(v620, v492, v8, @"powerBlurPass3Threshold");
  sub_233867B78(v621, v493, v8, @"powerBlurPass4Threshold");
  v497 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v494, v622, v495, v496);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v498, v497, @"powerBlurPass2Despeckle", v499);

  v503 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v500, v623, v501, v502);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v504, v503, @"powerBlurPass2DespeckleCountThreshold", v505);

  v509 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v506, v624, v507, v508);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v510, v509, @"powerBlurPass2DespeckleLuminanceThreshold", v511);

  sub_233867B78(v625, v512, v8, @"powerBlurPass2DespeckleDifferenceAmount");
  v516 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v513, v626, v514, v515);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v517, v516, @"powerBlurPass2DespeckleAverageCloseIn", v518);

  return v8;
}

void sub_233869528(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
  JUMPOUT(0x2338694F4);
}

void sub_233869688(double a1, uint64_t a2, void *a3, void *a4)
{
  v13 = a3;
  v6 = a4;
  v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"%a\t// %lg", v8, v9, *&a1, *&a1);
  objc_msgSend_setValue_forKey_(v13, v11, v10, v6, v12);
}

void sub_23386989C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  v12 = v11;

  if (a10)
  {
    sub_2337239E8(a10);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23386984CLL);
}

void sub_2338698F8(uint64_t a1, void *a2)
{
  v2 = 0;
  v3 = 0;
  sub_2337583E0(a2);
}

void sub_233869AB0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  v21 = v16[1];
  if (v21)
  {
    sub_2337239E8(v21);
  }

  if (a16)
  {
    sub_2337239E8(a16);
  }

  v22 = *(v19 - 56);
  if (v22)
  {
    sub_2337239E8(v22);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  *v16 = 0;
  v16[1] = 0;
  JUMPOUT(0x233869A58);
}

void sub_233869D4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x233869D00);
}

id sub_233869DB8(uint64_t a1, void *a2, int a3)
{
  v88[1] = *MEMORY[0x277D85DE8];
  v76 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 8);
  v87 = *MEMORY[0x277CD3668];
  v88[0] = v6;
  v75 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v7, v88, &v87, 1);
  v8 = CGImageSourceCreateWithData(*a1, v75);
  context = v5;
  if (!v8)
  {
    v64 = 0;
    goto LABEL_21;
  }

  v9 = *MEMORY[0x277CD3628];
  v85[0] = *MEMORY[0x277CD3628];
  v10 = sub_2338191A8(1);
  v85[1] = *MEMORY[0x277CD35D8];
  v86[0] = v10;
  v86[1] = MEMORY[0x277CBEC38];
  v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v86, v85, 2);

  v13 = CGImageSourceCopyPropertiesAtIndex(v8, 0, v12);
  v73 = objc_msgSend_valueForKeyPath_(v13, v14, @"kCGImageSourceRawReconstructionOptions.kCGImageSourceSupportedSushiLevels", v15, v16);
  v72 = objc_msgSend_valueForKeyPath_(v13, v17, @"kCGImageSourceRawReconstructionOptions.kCGImageSourceRawReconstructionMethodVersions", v18, v19);
  v20 = sub_2338191A8(a3);
  if (objc_msgSend_containsObject_(v73, v21, v20, v22, v23))
  {
    v27 = objc_msgSend_containsObject_(v72, v24, v76, v25, v26);

    if (!v27)
    {
      v64 = 0;
      goto LABEL_20;
    }

    v83[0] = v9;
    v28 = sub_2338191A8(a3);
    v83[1] = *MEMORY[0x277CD3640];
    v84[0] = v28;
    v84[1] = v76;
    options = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v29, v84, v83, 2);

    image = CGImageSourceCreateImageAtIndex(v8, 0, options);
    v70 = CGImageSourceCopyPropertiesAtIndex(v8, 0, options);

    v20 = objc_msgSend_imageWithCGImage_(MEMORY[0x277CBF758], v30, image, v31, v32);
    v68 = objc_msgSend_debugDescription(v20, v33, v34, v35, v36);
    v40 = objc_msgSend_objectForKeyedSubscript_(v70, v37, @"{Raw}", v38, v39);
    v66 = v40;
    if (v40)
    {
      objc_msgSend_objectForKeyedSubscript_(v40, v41, @"filters", v43, v44, v40);
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v45 = v78 = 0u;
      v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v46, &v77, v82, 16);
      if (v49)
      {
        v50 = *v78;
        v51 = *MEMORY[0x277CBFAF0];
        v52 = *MEMORY[0x277CBFB50];
        do
        {
          v53 = 0;
          v54 = v20;
          do
          {
            if (*v78 != v50)
            {
              objc_enumerationMutation(v45);
            }

            v55 = *(*(&v77 + 1) + 8 * v53);
            objc_msgSend_setValue_forKey_(v55, v47, v54, v51, v48);
            v20 = objc_msgSend_valueForKey_(v55, v56, v52, v57, v58);

            objc_msgSend_setValue_forKey_(v55, v59, 0, v51, v60);
            ++v53;
            v54 = v20;
          }

          while (v49 != v53);
          v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v47, &v77, v82, 16);
        }

        while (v49);
      }
    }

    v63 = objc_msgSend_debugDescription(v20, v41, v42, v43, v44, v66);
    if (image)
    {
      CGImageRelease(image);
    }

    v81[0] = v68;
    v81[1] = v63;
    v64 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v61, v81, 2, v62);

    v13 = v70;
    v12 = options;
  }

  else
  {
    v64 = 0;
  }

LABEL_20:
  CFRelease(v8);

LABEL_21:
  objc_autoreleasePoolPop(context);

  return v64;
}

void sub_23386A1DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (a2)
  {

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x23386A184);
  }

  _Unwind_Resume(exception_object);
}

void sub_23386A590(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23386A544);
}

id sub_23386A604(uint64_t a1)
{
  v54[1] = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 8);
  v53 = *MEMORY[0x277CD3668];
  v54[0] = v3;
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v4, v54, &v53, 1);
  v6 = CGImageSourceCreateWithData(*a1, v5);
  if (!v6)
  {
    v39 = 0;
    goto LABEL_22;
  }

  v7 = *MEMORY[0x277CD3628];
  v51[0] = *MEMORY[0x277CD3628];
  v8 = sub_2338191A8(1);
  v51[1] = *MEMORY[0x277CD35D8];
  v52[0] = v8;
  v52[1] = MEMORY[0x277CBEC38];
  v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v9, v52, v51, 2);

  v11 = CGImageSourceCopyPropertiesAtIndex(v6, 0, v10);
  v44 = objc_msgSend_valueForKeyPath_(v11, v12, @"kCGImageSourceRawReconstructionOptions.kCGImageSourceSupportedSushiLevels", v13, v14);
  v43 = objc_msgSend_valueForKeyPath_(v11, v15, @"kCGImageSourceRawReconstructionOptions.kCGImageSourceRawReconstructionMethodVersions", v16, v17);
  v18 = sub_2338191A8(2);
  if (objc_msgSend_containsObject_(v44, v19, v18, v20, v21))
  {
    v25 = objc_msgSend_containsObject_(v43, v22, @"6", v23, v24);

    if (v25)
    {
      v27 = *MEMORY[0x277CD3640];
      v49[0] = v7;
      v49[1] = v27;
      v50[0] = @"2";
      v50[1] = @"6";
      v28 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v26, v50, v49, 2);

      ImageAtIndex = CGImageSourceCreateImageAtIndex(v6, 0, v28);
      DataProvider = CGImageGetDataProvider(ImageAtIndex);
      v31 = CGDataProviderCopyData(DataProvider);
      if (v31)
      {
        CC_SHA256_Init(&c);
        BytePtr = CFDataGetBytePtr(v31);
        Length = CFDataGetLength(v31);
        CC_SHA256_Update(&c, BytePtr, Length);
        image = ImageAtIndex;
        CC_SHA256_Final(md, &c);
        v34 = 0;
        __s1[0] = 0;
        do
        {
          __s2 = 0;
          if (asprintf(&__s2, "%02xd", md[v34]) != 3)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x2383ABCE0](exception, "RawCameraException");
            __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          v35 = __s2;
          strncat(__s1, __s2, 2uLL);
          if (v34 != 31 && (v34 & 1) != 0)
          {
            *&__s1[strlen(__s1)] = 58;
          }

          if (v35)
          {
            free(v35);
          }

          ++v34;
        }

        while (v34 != 32);
        v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, __s1, v37, v38);
        CFRelease(v31);
        ImageAtIndex = image;
        if (!image)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v39 = 0;
        if (!ImageAtIndex)
        {
LABEL_20:
          v10 = v28;
          goto LABEL_21;
        }
      }

      CGImageRelease(ImageAtIndex);
      goto LABEL_20;
    }
  }

  else
  {
  }

  v39 = 0;
LABEL_21:
  CFRelease(v6);

LABEL_22:
  objc_autoreleasePoolPop(v2);

  return v39;
}

void sub_23386A9A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15)
{
  if (a2)
  {

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x23386A918);
  }

  _Unwind_Resume(exception_object);
}

void sub_23386ABD4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  if (a12)
  {
    sub_2337239E8(a12);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23386AB98);
}

void sub_23386AD78(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_2337239E8(a17);
  }

  if (a19)
  {
    sub_2337239E8(a19);
  }

  v21 = *(v19 - 24);
  if (v21)
  {
    sub_2337239E8(v21);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23386AD1CLL);
}

void sub_23386AF4C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, std::__shared_weak_count *a20)
{
  *(v21 - 56) = &a10;
  sub_233735AD4((v21 - 56));
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a20)
  {
    sub_2337239E8(a20);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23386AF20);
}

uint64_t RawCameraTP(void *a1)
{
  v1 = a1;
  v2 = objc_autoreleasePoolPush();
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = objc_msgSend_objectForKeyedSubscript_(v1, v3, @"path", v4, v5);
      if (v6)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          sub_233867A98(&v16, v6);
          objc_msgSend_dictionary(MEMORY[0x277CBEB38], v7, v8, v9, v10, v2, v6, v1);
          objc_claimAutoreleasedReturnValue();
          objc_msgSend_dictionary(MEMORY[0x277CBEB38], v11, v12, v13, v14);
          objc_claimAutoreleasedReturnValue();
          sub_23386ADE4(&v16);
        }
      }
    }
  }

  objc_autoreleasePoolPop(v2);

  return 0;
}

uint64_t sub_23386B460(uint64_t a1)
{
  (*(*a1 + 160))(&v6);
  v1 = (*(*v6 + 504))();
  if (v7)
  {
    sub_2337239E8(v7);
  }

  result = 1;
  if ((v1 + 2122219136) >= 0x12)
  {
    if (v1 > 555819296)
    {
      if (v1 > 1229539656)
      {
        v3 = v1 == 1229539657;
        v4 = 1633771873;
      }

      else
      {
        v3 = v1 == 555819297;
        v4 = 825307441;
      }
    }

    else if (v1 > 320017170)
    {
      v3 = v1 == 320017171;
      v4 = 370546198;
    }

    else
    {
      v3 = v1 == -1802201964;
      v4 = 303174162;
    }

    if (!v3 && v1 != v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_23386B5AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_23386B5C4(uint64_t a1)
{
  v6[0] = &unk_284917748;
  v6[1] = 0;
  (*(*a1 + 160))(&v4);
  v1 = v4;
  sub_23372A488(__p, "IFD0");
  (*(*v1 + 600))(v1, __p, v6, 3);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5)
  {
    sub_2337239E8(v5);
  }
}

void sub_23386B6A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
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

void sub_23386B6D4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  (*(*a1 + 160))(&v9);
  v3 = v9;
  sub_23372A488(__p, "IFD0");
  if ((*(*v3 + 248))(v3, __p, v11, 0))
  {
    v5 = v11[0];
    v4 = v11[1];
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    v6 = v4 - v5;
    if (v10)
    {
      sub_2337239E8(v10);
    }

    if (v6 == 32)
    {
      *a2 = *v11;
      a2[2] = v12;
      return;
    }
  }

  else
  {
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    if (v10)
    {
      sub_2337239E8(v10);
    }
  }

  __p[0] = 0;
  sub_233731694(a2, 4uLL);
  if (v11[0])
  {
    v11[1] = v11[0];
    operator delete(v11[0]);
  }
}

void sub_23386B800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_23386B84C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_msgSend_isEqualToString_(v3, v4, @"automaticDynamicRange", v5, v6))
  {
    (*(*a1 + 160))(&v21, a1);
    sub_2337D065C(&v21, &v23);
    if (v22)
    {
      sub_2337239E8(v22);
    }

    if (v23)
    {
      v13 = (*(*v23 + 808))(v23);
    }

    else
    {
      v13 = 0;
    }

    if (v24)
    {
      sub_2337239E8(v24);
    }

    v18 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v10, v13, v11, v12);
  }

  else if (objc_msgSend_isEqualToString_(v3, v7, @"hasExtendedRawData", v8, v9))
  {
    (*(*a1 + 160))(&v21, a1);
    sub_2337D065C(&v21, &v23);
    if (v22)
    {
      sub_2337239E8(v22);
    }

    if (v23)
    {
      v17 = (*(*v23 + 800))(v23);
    }

    else
    {
      v17 = 0;
    }

    if (v24)
    {
      sub_2337239E8(v24);
    }

    v18 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v14, v17, v15, v16);
  }

  else
  {
    v18 = sub_2338D3C20(a1, v3);
  }

  v19 = v18;

  return v19;
}

void sub_23386BA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(a1);
}

BOOL sub_23386BA80(uint64_t a1)
{
  (*(*a1 + 160))(v3);
  sub_2337D065C(v3, &v4);
  if (*(&v3[0] + 1))
  {
    sub_2337239E8(*(&v3[0] + 1));
  }

  if (v4)
  {
    memset(v3, 0, 204);
    (*(*v4 + 848))(v3);
    v1 = LOBYTE(v3[0]) != 0;
  }

  else
  {
    v1 = 0;
  }

  if (v5)
  {
    sub_2337239E8(v5);
  }

  return v1;
}

void sub_23386BB6C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 24);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23386BB84(uint64_t a1)
{
  (*(*a1 + 160))(&v5);
  sub_2337D065C(&v5, &v7);
  if (v6)
  {
    sub_2337239E8(v6);
  }

  v3 = v7;
  if (v7)
  {
    v1 = (*(*v7 + 824))(v7);
  }

  if (v8)
  {
    sub_2337239E8(v8);
  }

  if (!v3)
  {
    v1 = sub_2337D1FD0(a1);
  }

  return v1 & 1;
}

void sub_23386BC54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_23386BC6C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 480) = 0u;
  *(a3 + 496) = 0u;
  *(a3 + 448) = 0u;
  *(a3 + 464) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 384) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 352) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 336) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 304) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  sub_233855004(a1, a2, a3);
  if ((sub_233739B6C(a1) & 1) == 0)
  {
    (*(*a1 + 160))(&v15, a1);
    sub_2337D065C(&v15, &v26);
    if (*(&v15 + 1))
    {
      sub_2337239E8(*(&v15 + 1));
    }

    if (v26)
    {
      (*(*v26 + 848))(&v15);
      v5 = v25[0];
      *(a3 + 368) = v24;
      *(a3 + 384) = v5;
      v6 = *v22;
      *(a3 + 304) = v21;
      *(a3 + 320) = v6;
      v7 = v23;
      *(a3 + 336) = *&v22[16];
      *(a3 + 352) = v7;
      v8 = v18;
      *(a3 + 240) = v17;
      *(a3 + 256) = v8;
      v9 = v20;
      *(a3 + 272) = v19;
      *(a3 + 288) = v9;
      v10 = v16;
      *(a3 + 208) = v15;
      *(a3 + 224) = v10;
      *(a3 + 396) = *(v25 + 12);
      (*(*v26 + 856))(&v15);
      v11 = *v22;
      *(a3 + 508) = v21;
      *(a3 + 524) = v11;
      *(a3 + 536) = *&v22[12];
      v12 = v18;
      *(a3 + 444) = v17;
      *(a3 + 460) = v12;
      v13 = v20;
      *(a3 + 476) = v19;
      *(a3 + 492) = v13;
      v14 = v16;
      *(a3 + 412) = v15;
      *(a3 + 428) = v14;
    }

    if (v27)
    {
      sub_2337239E8(v27);
    }
  }
}

void sub_23386BE24(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23386BE40(uint64_t *a1)
{
  v2 = sub_2338503F4(a1);
  if (v2 >> 8 == 8487297)
  {
    v3 = (*(*a1 + 432))(a1);
    v4 = (12 * HIDWORD(v3) + v2 - 128) % 18;
    return (v4 - 2122219264 - (v4 - 6 * ((((43 * v4) & 0x8000) != 0) + ((43 * v4) >> 8))) + (v3 + (v4 - 6 * ((((43 * v4) & 0x8000) != 0) + ((43 * v4) >> 8)))) % 6 + 128);
  }

  return v2;
}

double sub_23386BF40(uint64_t a1)
{
  (*(*a1 + 160))(&v9);
  sub_2337D065C(&v9, &v11);
  if (v10)
  {
    sub_2337239E8(v10);
  }

  if (v11)
  {
    v1 = *(v11 + 3);
    v2 = *(v11 + 4);
    if (v2)
    {
      atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v3 = sub_23386D8DC(v1);
    if (v2)
    {
      sub_2337239E8(v2);
    }

    if (!v3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](exception, "RawCameraException");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v4 = sub_23384B074(v3);
    v5 = 0.0;
    if (v4 >= sub_23384B074(@"9.20"))
    {
      v6 = 0.0;
      if (*(v11 + 1640) == 1)
      {
        v6 = v11[204];
      }

      v5 = 0.0 - v6;
    }
  }

  else
  {
    v5 = 0.0;
  }

  if (v12)
  {
    sub_2337239E8(v12);
  }

  return v5;
}

void sub_23386C088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(a1);
}

void sub_23386C0D4(void *a1)
{
  v1 = a1;
  v2 = v1;
  objc_msgSend_bytes(v2, v3, v4, v5, v6);
  v11 = objc_msgSend_length(v1, v7, v8, v9, v10);
  sub_233723C18(&v12, &v11);
  sub_233725138();
}

void sub_23386C164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(a1);
}

void sub_23386C1E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v11 = *(v9 + 8);
  if (v11)
  {
    sub_2337239E8(v11);
  }

  _Unwind_Resume(a1);
}

void sub_23386C20C(void *a1)
{
  v1 = a1;
  v3 = objc_msgSend_dataWithContentsOfURL_options_error_(MEMORY[0x277CBEA90], v2, v1, 1, 0);
  if (v3)
  {
    sub_23386C0D4(v3);
  }

  v8 = objc_msgSend_path(v1, v4, v5, v6, v7);
  objc_msgSend_UTF8String(v8, v9, v10, v11, v12);
  sub_2337250F0();
}

void sub_23386C2C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(a1);
}

void sub_23386C304(uint64_t a1)
{
  v55 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 24);
  if (!v2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (!*(a1 + 48))
  {
    sub_23372540C(v2, 1);
    v3 = *(a1 + 24);
    *v54 = -278;
    (*(*v3 + 40))(v3, v54, 2);
    memset(v54, 0, sizeof(v54));
    if ((*(**(a1 + 24) + 32))(*(a1 + 24), v54, 278) != 278)
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }

    v4 = -4;
    v5 = 277;
    while (v54[v5 - 3] != 80 || v54[v5 - 2] != 75 || v54[v5 - 1] != 5 || v54[v5] != 6)
    {
      --v4;
      if (--v5 == 2)
      {
        return;
      }
    }

    v6 = *(a1 + 24);
    LODWORD(__p[0]) = v4;
    (*(*v6 + 40))(v6, __p, 2);
    if (sub_233725614(*(a1 + 24)) != 101010256)
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }

    v7 = sub_2337255C0(*(a1 + 24));
    if (v7 != sub_2337255C0(*(a1 + 24)))
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }

    v8 = sub_2337255C0(*(a1 + 24));
    v9 = sub_2337255C0(*(a1 + 24));
    if (v8 != v9)
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }

    v10 = sub_233725614(*(a1 + 24));
    v53 = sub_233725614(*(a1 + 24));
    if (v10 >= (*(**(a1 + 24) + 16))())
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }

    v11 = (*(**(a1 + 24) + 16))(*(a1 + 24));
    if (v53 >= v11)
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }

    v12 = sub_2337255C0(*(a1 + 24));
    if ((*(**(a1 + 24) + 16))() <= v12)
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }

    v16 = objc_msgSend_dictionaryWithCapacity_(MEMORY[0x277CBEB38], v13, v8, v14, v15);
    v17 = *(a1 + 24);
    sub_233723AE0(__p, &v53);
    (*(*v17 + 40))(v17, __p, 0);
    if (v8)
    {
      do
      {
        if (sub_233725614(*(a1 + 24)) != 33639248)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](exception, "RawCameraException");
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        sub_2337255C0(*(a1 + 24));
        sub_2337255C0(*(a1 + 24));
        sub_2337255C0(*(a1 + 24));
        if (sub_2337255C0(*(a1 + 24)))
        {
          v45 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](v45, "RawCameraException");
          __cxa_throw(v45, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        sub_2337255C0(*(a1 + 24));
        sub_2337255C0(*(a1 + 24));
        sub_233725614(*(a1 + 24));
        v18 = sub_233725614(*(a1 + 24));
        if (v18 != sub_233725614(*(a1 + 24)))
        {
          v46 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](v46, "RawCameraException");
          __cxa_throw(v46, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v19 = sub_2337255C0(*(a1 + 24));
        if (!v19)
        {
          v47 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](v47, "RawCameraException");
          __cxa_throw(v47, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v20 = sub_2337255C0(*(a1 + 24));
        v21 = sub_2337255C0(*(a1 + 24));
        sub_2337255C0(*(a1 + 24));
        sub_2337255C0(*(a1 + 24));
        sub_233725614(*(a1 + 24));
        v22 = sub_233725614(*(a1 + 24));
        if (v22 >= (*(**(a1 + 24) + 16))(*(a1 + 24)))
        {
          v48 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](v48, "RawCameraException");
          __cxa_throw(v48, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        __p[0] = 0;
        __p[1] = 0;
        v52 = 0;
        v23 = *(a1 + 24);
        v50 = v19;
        sub_2337257E8(v23, &v50, __p);
        v24 = *(a1 + 24);
        v50 = v20;
        (*(*v24 + 40))(v24, &v50, 1);
        v25 = *(a1 + 24);
        v50 = v21;
        (*(*v25 + 40))(v25, &v50, 1);
        v30 = sub_233729FBC(__p, v26, v27, v28, v29);
        v31 = sub_233739ACC(v16, v30);

        if (v31)
        {
          v49 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](v49, "RawCameraException");
          __cxa_throw(v49, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v36 = sub_233729FBC(__p, v32, v33, v34, v35);
        v40 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v37, v22, v38, v39);
        objc_msgSend_setObject_forKeyedSubscript_(v16, v41, v40, v36, v42);

        if (SHIBYTE(v52) < 0)
        {
          operator delete(__p[0]);
        }

        --v9;
      }

      while (v9);
    }

    v43 = *(a1 + 48);
    *(a1 + 48) = v16;
  }
}

void sub_23386CBE4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  *a1 = &unk_284929CB8;
  sub_23384F87C();
}

void sub_23386CC6C(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v9 = a2;
  if (sub_233739ACC(*(a1 + 48), v9))
  {
    v8 = sub_2337397B0(*(a1 + 48), v9, v5, v6, v7);
    sub_23386CCFC(a1, v8);
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_23386CCFC(uint64_t a1, uint64_t a2)
{
  v15 = a2;
  sub_233785314(&v14, (a1 + 8));
  v3 = *(a1 + 24);
  if (v3)
  {
    sub_23372540C(v3, 1);
    v4 = *(a1 + 24);
    sub_2337268D8(&v13, &v15);
    (*(*v4 + 40))(v4, &v13, 0);
    if (sub_233725614(*(a1 + 24)) == 67324752)
    {
      sub_2337255C0(*(a1 + 24));
      sub_2337255C0(*(a1 + 24));
      if (!sub_2337255C0(*(a1 + 24)))
      {
        sub_2337255C0(*(a1 + 24));
        sub_2337255C0(*(a1 + 24));
        sub_233725614(*(a1 + 24));
        v5 = sub_233725614(*(a1 + 24));
        if (v5 == sub_233725614(*(a1 + 24)))
        {
          v6 = sub_2337255C0(*(a1 + 24));
          if (v6)
          {
            v7 = sub_2337255C0(*(a1 + 24));
            v8 = *(a1 + 24);
            LODWORD(v13) = v7 + v6;
            (*(*v8 + 40))(v8, &v13, 1);
            sub_2337AD310(v5, &v13);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](exception, "RawCameraException");
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v11 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](v11, "RawCameraException");
        __cxa_throw(v11, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v10 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v10, "RawCameraException");
      __cxa_throw(v10, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v9 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v9, "RawCameraException");
  }

  else
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v9, "RawCameraException");
  }

  __cxa_throw(v9, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_23386CFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2337853E4(va);
  _Unwind_Resume(a1);
}

void sub_23386D03C(uint64_t a1)
{
  sub_23386D1E4(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_23386D0E8(void *a1, uint64_t a2, void **a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284929CE8;
  sub_23386CBE4(a1 + 3, a2, *a3);
}

void sub_23386D168(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284929CE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_23386D1E4(uint64_t a1)
{
  *a1 = &unk_284929CB8;

  v2 = *(a1 + 32);
  if (v2)
  {
    sub_2337239E8(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  return a1;
}