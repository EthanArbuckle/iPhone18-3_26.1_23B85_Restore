void sub_23F013208(uint64_t a1, __int128 *a2)
{
  v5 = *a2;
  v3 = *(a2 + 3);
  v6 = *(a2 + 2);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  LOBYTE(__src[0]) = v5;
  sub_23F295368(a1 + 24, *(a1 + 32), __src, __src + 1, 1uLL);
  sub_23F295368(a1 + 24, *(a1 + 32), &v5 + 8, &v6, 8uLL);
  v9 = xmmword_278C74508;
  __src[0] = &v5;
  __src[1] = a1;
  __src[2] = &v9;
  sub_23EFA2524(v5, __src);
  v4 = v7;
  if (v7)
  {
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

void sub_23F013324(_BYTE *a1, __int128 *a2)
{
  v5 = *a2;
  v3 = *(a2 + 3);
  v6 = *(a2 + 2);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_23EF88DD8(a1, &v5);
  (*(*a1 + 120))(a1, &v5 + 8);
  v9 = xmmword_278C74508;
  v8[0] = &v5;
  v8[1] = a1;
  v8[2] = &v9;
  sub_23EFA27D8(v5, v8);
  v4 = v7;
  if (v7)
  {
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

void sub_23F013440(char **a1, uint64_t a2)
{
  v15 = a2;
  v16 = a2;
  v4 = *a1;
  v5 = **a1;
  v6 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285179A70, 0);
  if (v6)
  {
    sub_23F013A6C(&v16, v6);
  }

  v16 = a2;
  v7 = *v4;
  v8 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285179AA8, 0);
  if (v8)
  {
    sub_23F015C88(&v16, v8);
  }

  v16 = a2;
  v9 = *v4;
  v10 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285179B30, 0);
  if (v10)
  {
    sub_23F0174E4(&v16, v10);
  }

  v16 = a2;
  v11 = *v4;
  v12 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285179B68, 0);
  if (v12)
  {
    sub_23F019700(&v16, v12);
  }

  v16 = a2;
  v13 = *v4;
  v14 = __dynamic_cast(a1, &unk_28518D8F0, &unk_28518B930, 0);
  if (v14)
  {
    sub_23F01AF9C(&v16, v14);
  }

  sub_23F01360C(&v15, a1);
}

void sub_23F01360C(uint64_t *a1, void **a2)
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
        operator delete(v21[2]);
      }

      if (*(v3 + 192))
      {
        sub_23EF41D6C();
      }

LABEL_76:
      v19 = *a2;
      v21[0] = a2[1];
      v20 = v21[0];
      v33[0] = 6;
      v19[13](a2, v33);
      if (v20 < 1)
      {
        if (v33[0] < 3)
        {
          sub_23EF69318(v33, a2, v3 + 16, v33[0]);
        }

        else
        {
          sub_23EF69524(a2, v3 + 16, v33[0]);
        }
      }

      else
      {
        sub_23EF68F0C(v21, a2, v3 + 16, v33[0]);
      }

      sub_23F01CCB4(a2, (v3 + 200));
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

void sub_23F013A6C(uint64_t *a1, uint64_t a2)
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

void sub_23F014064(int a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_23F0151B8(v3);
      }

      sub_23F014F2C(v3);
    }

    switch(a1)
    {
      case 8:
        sub_23F015448(v3);
      case 11:
        sub_23F015768(v3);
      case 12:
        sub_23F0159F8(v3);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_23F0141E8(v3);
    }

    if (a1 == 1)
    {
      sub_23F01446C(v3);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_23F0146F8(v3);
      case 3:
        sub_23F014988(v3);
      case 5:
        sub_23F014CA8(v3);
    }
  }

  sub_23F2F1304(a1);
}

void sub_23F0141E8(void *a1)
{
  v2 = *(*a1 + 8);
  if (4 * v2)
  {
    if (((4 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_23F2EB9A4(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_23F2EB5F4(v4 + 40, &v13);
      sub_23F294EB4(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 2;
      v8 = sub_23F2EB9A4(v7);
      ++v7[14];
      sub_23F2EBAF0(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 2;
      v14 = 2;
      v10 = sub_23F2EB9A4(v9);
      ++v9[14];
      sub_23F2EBAF0(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  sub_23F2C544C();
}

void sub_23F014430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_23F01446C(void *a1)
{
  v2 = *(*a1 + 8);
  if (4 * v2)
  {
    if (((4 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_23F2EB9A4(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_23F2EB5F4(v4 + 40, &v13);
      sub_23F294EB4(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 2;
      v8 = sub_23F2EB9A4(v7);
      ++v7[14];
      sub_23F2ED220(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 2;
      v14 = 2;
      v10 = sub_23F2EB9A4(v9);
      ++v9[14];
      sub_23F2ED220(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  sub_23F2C5978();
}

void sub_23F0146BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_23F0146F8(void *a1)
{
  v2 = *(*a1 + 8);
  if (4 * v2)
  {
    if (!((4 * v2) >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_23F2EB9A4(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_23F2EB5F4(v4 + 40, &v13);
      sub_23F294EB4(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 2;
      v8 = sub_23F2EB9A4(v7);
      ++v7[14];
      sub_23F2ED3D0(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 2;
      v14 = 2;
      v10 = sub_23F2EB9A4(v9);
      ++v9[14];
      sub_23F2ED3D0(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  sub_23F2C5EA8();
}

void sub_23F01494C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_23F014988(void *a1)
{
  v2 = *(*a1 + 8);
  if (4 * v2)
  {
    if (!((4 * v2) >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  if (v2)
  {
    v3 = a1[1];
    v4 = *(v3 + 32);
    v5 = 16;
    do
    {
      *&v15 = v4;
      v8 = sub_23F2EB9A4(v3);
      ++*(v3 + 112);
      *(v3 + 32) = v8;
      sub_23F2EB5F4(v3 + 40, &v15);
      sub_23F294EB4(v3 + 64, (v3 + 112));
      *(v3 + 112) = 0;
      if (*(v3 + 104) == 1)
      {
        *(v3 + 104) = 0;
      }

      v9 = a1[1];
      v10 = sub_23F2EB9A4(v9);
      ++v9[14];
      v15 = 0uLL;
      v16 = 0;
      sub_23F2EEE3C(v10, &v15);
      v11 = v15;
      if (*(&v15 + 1) != v15)
      {
        memmove((v5 - 16), v15, *(&v15 + 1) - v15);
      }

      if (v11)
      {
        *(&v15 + 1) = v11;
        operator delete(v11);
      }

      v12 = a1[1];
      v13 = sub_23F2EB9A4(v12);
      ++v12[14];
      v15 = 0uLL;
      v16 = 0;
      sub_23F2EEE3C(v13, &v15);
      v14 = v15;
      if (*(&v15 + 1) != v15)
      {
        memmove(v5, v15, *(&v15 + 1) - v15);
      }

      if (v14)
      {
        *(&v15 + 1) = v14;
        operator delete(v14);
      }

      v3 = a1[1];
      v6 = *(v3 + 48);
      v4 = *(v6 - 8);
      *(v3 + 32) = v4;
      v7 = *(v3 + 72);
      *(v3 + 112) = *(v7 - 8);
      *(v3 + 48) = v6 - 8;
      *(v3 + 72) = v7 - 8;
      v5 += 32;
      --v2;
    }

    while (v2);
  }

  sub_23F2C63D8();
}

void sub_23F014C38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16)
{
  sub_23EF3AE8C(&a13);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_23F014CA8(void *a1)
{
  v2 = *(*a1 + 8);
  if (4 * v2)
  {
    if (((4 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_23F2EB9A4(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_23F2EB5F4(v4 + 40, &v13);
      sub_23F294EB4(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 2;
      v8 = sub_23F2EB9A4(v7);
      ++v7[14];
      sub_23F2ECFE0(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 2;
      v14 = 2;
      v10 = sub_23F2EB9A4(v9);
      ++v9[14];
      sub_23F2ECFE0(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  sub_23F2C51B8();
}

void sub_23F014EF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_23F014F2C(void *a1)
{
  v2 = *(*a1 + 8);
  if (4 * v2)
  {
    if (((4 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_23F2EB9A4(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_23F2EB5F4(v4 + 40, &v13);
      sub_23F294EB4(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 2;
      v8 = sub_23F2EB9A4(v7);
      ++v7[14];
      sub_23F2ED100(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 2;
      v14 = 2;
      v10 = sub_23F2EB9A4(v9);
      ++v9[14];
      sub_23F2ED100(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  sub_23F2C56E0();
}

void sub_23F01517C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_23F0151B8(void *a1)
{
  v2 = *(*a1 + 8);
  if (4 * v2)
  {
    if (!((4 * v2) >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_23F2EB9A4(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_23F2EB5F4(v4 + 40, &v13);
      sub_23F294EB4(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 2;
      v8 = sub_23F2EB9A4(v7);
      ++v7[14];
      sub_23F2ED2F8(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 2;
      v14 = 2;
      v10 = sub_23F2EB9A4(v9);
      ++v9[14];
      sub_23F2ED2F8(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  sub_23F2C5C10();
}

void sub_23F01540C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_23F015448(void *a1)
{
  v2 = *(*a1 + 8);
  if (4 * v2)
  {
    if (!((4 * v2) >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  if (v2)
  {
    v3 = a1[1];
    v4 = *(v3 + 32);
    v5 = 16;
    do
    {
      *&v15 = v4;
      v8 = sub_23F2EB9A4(v3);
      ++*(v3 + 112);
      *(v3 + 32) = v8;
      sub_23F2EB5F4(v3 + 40, &v15);
      sub_23F294EB4(v3 + 64, (v3 + 112));
      *(v3 + 112) = 0;
      if (*(v3 + 104) == 1)
      {
        *(v3 + 104) = 0;
      }

      v9 = a1[1];
      v10 = sub_23F2EB9A4(v9);
      ++v9[14];
      v15 = 0uLL;
      v16 = 0;
      sub_23F2EEB70(v10, &v15);
      v11 = v15;
      if (*(&v15 + 1) != v15)
      {
        memmove((v5 - 16), v15, *(&v15 + 1) - v15);
      }

      if (v11)
      {
        *(&v15 + 1) = v11;
        operator delete(v11);
      }

      v12 = a1[1];
      v13 = sub_23F2EB9A4(v12);
      ++v12[14];
      v15 = 0uLL;
      v16 = 0;
      sub_23F2EEB70(v13, &v15);
      v14 = v15;
      if (*(&v15 + 1) != v15)
      {
        memmove(v5, v15, *(&v15 + 1) - v15);
      }

      if (v14)
      {
        *(&v15 + 1) = v14;
        operator delete(v14);
      }

      v3 = a1[1];
      v6 = *(v3 + 48);
      v4 = *(v6 - 8);
      *(v3 + 32) = v4;
      v7 = *(v3 + 72);
      *(v3 + 112) = *(v7 - 8);
      *(v3 + 48) = v6 - 8;
      *(v3 + 72) = v7 - 8;
      v5 += 32;
      --v2;
    }

    while (v2);
  }

  sub_23F2C6140();
}

void sub_23F0156F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16)
{
  sub_23EF3AE8C(&a13);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_23F015768(void *a1)
{
  v2 = *(*a1 + 8);
  if (4 * v2)
  {
    if (!((4 * v2) >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_23F2EB9A4(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_23F2EB5F4(v4 + 40, &v13);
      sub_23F294EB4(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 2;
      v8 = sub_23F2EB9A4(v7);
      ++v7[14];
      sub_23F2ED6DC(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 2;
      v14 = 2;
      v10 = sub_23F2EB9A4(v9);
      ++v9[14];
      sub_23F2ED6DC(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  sub_23F2C6670();
}

void sub_23F0159BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_23F0159F8(void *a1)
{
  v2 = *(*a1 + 8);
  if (4 * v2)
  {
    if (!((4 * v2) >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_23F2EB9A4(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_23F2EB5F4(v4 + 40, &v13);
      sub_23F294EB4(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 2;
      v8 = sub_23F2EB9A4(v7);
      ++v7[14];
      sub_23F2ED7F8(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 2;
      v14 = 2;
      v10 = sub_23F2EB9A4(v9);
      ++v9[14];
      sub_23F2ED7F8(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  sub_23F2C6908();
}

void sub_23F015C4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_23F015C88(uint64_t *a1, uint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_23EF82B6C(v3 + 16, v19);
    sub_23EF53784(v31, v19);
    sub_23EF88F40(v3 + 16, v31);
    if (v43 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v42;
        v7 = __p;
        if (v42 != __p)
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

        v42 = v5;
        operator delete(v7);
      }
    }

    if (v40 == 1 && v39 < 0)
    {
      operator delete(v38);
    }

    if (v37 == 1 && v36 < 0)
    {
      operator delete(v35);
    }

    if (v34 == 1 && v33 < 0)
    {
      operator delete(v32);
    }

    if (v30 != 1)
    {
      goto LABEL_66;
    }

    v13 = v28;
    if (!v28)
    {
      goto LABEL_66;
    }

    v14 = v29;
    v15 = v28;
    if (v29 == v28)
    {
LABEL_65:
      v29 = v13;
      operator delete(v15);
LABEL_66:
      if (v27 == 1 && v26 < 0)
      {
        operator delete(v25);
      }

      if (v24 == 1 && v23 < 0)
      {
        operator delete(v22);
      }

      if (v21 == 1 && v20 < 0)
      {
        operator delete(v19[2]);
      }

      if (*(v3 + 192))
      {
        sub_23EF41D6C();
      }

LABEL_76:
      LODWORD(v19[0]) = 6;
      sub_23F2F7EFC(*(a2 + 48), v19);
      sub_23EF62320(v19, a2, v3 + 16, v19[0]);
      LODWORD(v19[0]) = 1;
      sub_23F2F7EFC(*(a2 + 48), v19);
      sub_23F0160AC(v19, a2, (v3 + 200));
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

  sub_23EF82E08(v3 + 16, v19);
  sub_23EF53784(v31, v19);
  sub_23EF88F40(v3 + 16, v31);
  if (v43 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v42;
      v11 = __p;
      if (v42 != __p)
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

      v42 = v9;
      operator delete(v11);
    }
  }

  if (v40 == 1 && v39 < 0)
  {
    operator delete(v38);
  }

  if (v37 == 1 && v36 < 0)
  {
    operator delete(v35);
  }

  if (v34 == 1 && v33 < 0)
  {
    operator delete(v32);
  }

  if (v30 != 1)
  {
    goto LABEL_66;
  }

  v13 = v28;
  if (!v28)
  {
    goto LABEL_66;
  }

  v17 = v29;
  v15 = v28;
  if (v29 == v28)
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
      v15 = v28;
      goto LABEL_65;
    }
  }
}

void sub_23F0160AC(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  *&v8 = 0;
  sub_23F2F80F8(*(a2 + 48), &v8);
  *&v6 = (*(*(a2 + 16) + 32))(a2 + 16);
  *(&v6 + 1) = v8;
  sub_23EF62458(a2 + 24, &v6);
  LOBYTE(v6) = 0;
  sub_23F2F7BA4(*(a2 + 48), &v6);
  *a3 = v6;
  sub_23F2F80F8(*(a2 + 48), a3 + 1);
  v8 = xmmword_278C74508;
  v5 = *a3;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v8;
  sub_23F0161EC(v5, &v6);
}

void sub_23F0161EC(int a1, uint64_t a2)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_23F016D94(a2);
      }

      sub_23F016BC4(a2);
    }

    switch(a1)
    {
      case 8:
        sub_23F016F68(a2);
      case 11:
        sub_23F01713C(a2);
      case 12:
        sub_23F017310(a2);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_23F0162CC(a2);
    }

    if (a1 == 1)
    {
      sub_23F01648C(a2);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_23F01665C(a2);
      case 3:
        sub_23F016830(a2);
      case 5:
        sub_23F016A04(a2);
    }
  }

  sub_23F2F1304(a1);
}

void sub_23F0162CC(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C544C();
}

void sub_23F01645C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23F01648C(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C5978();
}

void sub_23F01662C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23F01665C(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C5EA8();
}

void sub_23F016800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23F016830(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C63D8();
}

void sub_23F0169D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23F016A04(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C51B8();
}

void sub_23F016B94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23F016BC4(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C56E0();
}

void sub_23F016D64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23F016D94(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C5C10();
}

void sub_23F016F38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23F016F68(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C6140();
}

void sub_23F01710C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23F01713C(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C6670();
}

void sub_23F0172E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23F017310(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C6908();
}

void sub_23F0174B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23F0174E4(uint64_t *a1, uint64_t a2)
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

void sub_23F017ADC(int a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_23F018C30(v3);
      }

      sub_23F0189A4(v3);
    }

    switch(a1)
    {
      case 8:
        sub_23F018EC0(v3);
      case 11:
        sub_23F0191E0(v3);
      case 12:
        sub_23F019470(v3);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_23F017C60(v3);
    }

    if (a1 == 1)
    {
      sub_23F017EE4(v3);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_23F018170(v3);
      case 3:
        sub_23F018400(v3);
      case 5:
        sub_23F018720(v3);
    }
  }

  sub_23F2F1304(a1);
}

void sub_23F017C60(void *a1)
{
  v2 = *(*a1 + 8);
  if (4 * v2)
  {
    if (((4 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_23F2EB70C(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_23F2EB5F4(v4 + 40, &v13);
      sub_23F294EB4(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 2;
      v8 = sub_23F2EB70C(v7);
      ++v7[14];
      sub_23F2EB858(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 2;
      v14 = 2;
      v10 = sub_23F2EB70C(v9);
      ++v9[14];
      sub_23F2EB858(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  sub_23F2C544C();
}

void sub_23F017EA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_23F017EE4(void *a1)
{
  v2 = *(*a1 + 8);
  if (4 * v2)
  {
    if (((4 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_23F2EB70C(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_23F2EB5F4(v4 + 40, &v13);
      sub_23F294EB4(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 2;
      v8 = sub_23F2EB70C(v7);
      ++v7[14];
      sub_23F2EC294(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 2;
      v14 = 2;
      v10 = sub_23F2EB70C(v9);
      ++v9[14];
      sub_23F2EC294(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  sub_23F2C5978();
}

void sub_23F018134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_23F018170(void *a1)
{
  v2 = *(*a1 + 8);
  if (4 * v2)
  {
    if (!((4 * v2) >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_23F2EB70C(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_23F2EB5F4(v4 + 40, &v13);
      sub_23F294EB4(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 2;
      v8 = sub_23F2EB70C(v7);
      ++v7[14];
      sub_23F2EC444(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 2;
      v14 = 2;
      v10 = sub_23F2EB70C(v9);
      ++v9[14];
      sub_23F2EC444(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  sub_23F2C5EA8();
}

void sub_23F0183C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_23F018400(void *a1)
{
  v2 = *(*a1 + 8);
  if (4 * v2)
  {
    if (!((4 * v2) >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  if (v2)
  {
    v3 = a1[1];
    v4 = *(v3 + 32);
    v5 = 16;
    do
    {
      *&v15 = v4;
      v8 = sub_23F2EB70C(v3);
      ++*(v3 + 112);
      *(v3 + 32) = v8;
      sub_23F2EB5F4(v3 + 40, &v15);
      sub_23F294EB4(v3 + 64, (v3 + 112));
      *(v3 + 112) = 0;
      if (*(v3 + 104) == 1)
      {
        *(v3 + 104) = 0;
      }

      v9 = a1[1];
      v10 = sub_23F2EB70C(v9);
      ++v9[14];
      v15 = 0uLL;
      v16 = 0;
      sub_23F2EDFA0(v10, &v15);
      v11 = v15;
      if (*(&v15 + 1) != v15)
      {
        memmove((v5 - 16), v15, *(&v15 + 1) - v15);
      }

      if (v11)
      {
        *(&v15 + 1) = v11;
        operator delete(v11);
      }

      v12 = a1[1];
      v13 = sub_23F2EB70C(v12);
      ++v12[14];
      v15 = 0uLL;
      v16 = 0;
      sub_23F2EDFA0(v13, &v15);
      v14 = v15;
      if (*(&v15 + 1) != v15)
      {
        memmove(v5, v15, *(&v15 + 1) - v15);
      }

      if (v14)
      {
        *(&v15 + 1) = v14;
        operator delete(v14);
      }

      v3 = a1[1];
      v6 = *(v3 + 48);
      v4 = *(v6 - 8);
      *(v3 + 32) = v4;
      v7 = *(v3 + 72);
      *(v3 + 112) = *(v7 - 8);
      *(v3 + 48) = v6 - 8;
      *(v3 + 72) = v7 - 8;
      v5 += 32;
      --v2;
    }

    while (v2);
  }

  sub_23F2C63D8();
}

void sub_23F0186B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16)
{
  sub_23EF3AE8C(&a13);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_23F018720(void *a1)
{
  v2 = *(*a1 + 8);
  if (4 * v2)
  {
    if (((4 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_23F2EB70C(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_23F2EB5F4(v4 + 40, &v13);
      sub_23F294EB4(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 2;
      v8 = sub_23F2EB70C(v7);
      ++v7[14];
      sub_23F2EC054(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 2;
      v14 = 2;
      v10 = sub_23F2EB70C(v9);
      ++v9[14];
      sub_23F2EC054(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  sub_23F2C51B8();
}

void sub_23F018968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_23F0189A4(void *a1)
{
  v2 = *(*a1 + 8);
  if (4 * v2)
  {
    if (((4 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_23F2EB70C(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_23F2EB5F4(v4 + 40, &v13);
      sub_23F294EB4(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 2;
      v8 = sub_23F2EB70C(v7);
      ++v7[14];
      sub_23F2EC174(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 2;
      v14 = 2;
      v10 = sub_23F2EB70C(v9);
      ++v9[14];
      sub_23F2EC174(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  sub_23F2C56E0();
}

void sub_23F018BF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_23F018C30(void *a1)
{
  v2 = *(*a1 + 8);
  if (4 * v2)
  {
    if (!((4 * v2) >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_23F2EB70C(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_23F2EB5F4(v4 + 40, &v13);
      sub_23F294EB4(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 2;
      v8 = sub_23F2EB70C(v7);
      ++v7[14];
      sub_23F2EC36C(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 2;
      v14 = 2;
      v10 = sub_23F2EB70C(v9);
      ++v9[14];
      sub_23F2EC36C(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  sub_23F2C5C10();
}

void sub_23F018E84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_23F018EC0(void *a1)
{
  v2 = *(*a1 + 8);
  if (4 * v2)
  {
    if (!((4 * v2) >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  if (v2)
  {
    v3 = a1[1];
    v4 = *(v3 + 32);
    v5 = 16;
    do
    {
      *&v15 = v4;
      v8 = sub_23F2EB70C(v3);
      ++*(v3 + 112);
      *(v3 + 32) = v8;
      sub_23F2EB5F4(v3 + 40, &v15);
      sub_23F294EB4(v3 + 64, (v3 + 112));
      *(v3 + 112) = 0;
      if (*(v3 + 104) == 1)
      {
        *(v3 + 104) = 0;
      }

      v9 = a1[1];
      v10 = sub_23F2EB70C(v9);
      ++v9[14];
      v15 = 0uLL;
      v16 = 0;
      sub_23F2EDA80(v10, &v15);
      v11 = v15;
      if (*(&v15 + 1) != v15)
      {
        memmove((v5 - 16), v15, *(&v15 + 1) - v15);
      }

      if (v11)
      {
        *(&v15 + 1) = v11;
        operator delete(v11);
      }

      v12 = a1[1];
      v13 = sub_23F2EB70C(v12);
      ++v12[14];
      v15 = 0uLL;
      v16 = 0;
      sub_23F2EDA80(v13, &v15);
      v14 = v15;
      if (*(&v15 + 1) != v15)
      {
        memmove(v5, v15, *(&v15 + 1) - v15);
      }

      if (v14)
      {
        *(&v15 + 1) = v14;
        operator delete(v14);
      }

      v3 = a1[1];
      v6 = *(v3 + 48);
      v4 = *(v6 - 8);
      *(v3 + 32) = v4;
      v7 = *(v3 + 72);
      *(v3 + 112) = *(v7 - 8);
      *(v3 + 48) = v6 - 8;
      *(v3 + 72) = v7 - 8;
      v5 += 32;
      --v2;
    }

    while (v2);
  }

  sub_23F2C6140();
}

void sub_23F019170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16)
{
  sub_23EF3AE8C(&a13);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_23F0191E0(void *a1)
{
  v2 = *(*a1 + 8);
  if (4 * v2)
  {
    if (!((4 * v2) >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_23F2EB70C(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_23F2EB5F4(v4 + 40, &v13);
      sub_23F294EB4(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 2;
      v8 = sub_23F2EB70C(v7);
      ++v7[14];
      sub_23F2EC778(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 2;
      v14 = 2;
      v10 = sub_23F2EB70C(v9);
      ++v9[14];
      sub_23F2EC778(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  sub_23F2C6670();
}

void sub_23F019434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_23F019470(void *a1)
{
  v2 = *(*a1 + 8);
  if (4 * v2)
  {
    if (!((4 * v2) >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_23F2EB70C(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_23F2EB5F4(v4 + 40, &v13);
      sub_23F294EB4(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 2;
      v8 = sub_23F2EB70C(v7);
      ++v7[14];
      sub_23F2EC8BC(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 2;
      v14 = 2;
      v10 = sub_23F2EB70C(v9);
      ++v9[14];
      sub_23F2EC8BC(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  sub_23F2C6908();
}

void sub_23F0196C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_23F019700(uint64_t *a1, uint64_t a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
LABEL_76:
    LODWORD(v22) = 6;
    sub_23F2F5830(a2, &v22);
    if (v22 >= 6)
    {
      v19 = 6;
    }

    else
    {
      v19 = v22;
    }

    if (v22 <= 2)
    {
      sub_23EF65CF0(&v22, a2, v3 + 16, v19);
LABEL_95:
      LODWORD(v22) = 1;
      sub_23F2F5830(a2, &v22);
      LOBYTE(v22) = 0;
      sub_23F2F4C14(a2, &v22);
      *(v3 + 200) = v22;
      sub_23F2F5EB0(a2, (v3 + 208));
      v36 = xmmword_278C74508;
      v21 = *(v3 + 200);
      v22 = (v3 + 200);
      v23 = a2;
      v24 = &v36;
      sub_23F019CCC(v21, &v22);
    }

    sub_23EF65EFC(a2, v3 + 16, v19);
    while (1)
    {
      if ((*(a2 + 131) & 1) != 0 || (*(*(a2 + 16) + *(**(a2 + 16) - 24) + 32) & 2) != 0)
      {
        goto LABEL_95;
      }

      sub_23F2F7390(a2, &v22);
      if (SHIBYTE(v24) < 0)
      {
        if (v23 == 1 && *(a2 + 72) == *v22)
        {
LABEL_90:
          v20 = 0;
          if (SHIBYTE(v24) < 0)
          {
            goto LABEL_93;
          }

          goto LABEL_81;
        }
      }

      else if (SHIBYTE(v24) == 1 && *(a2 + 72) == v22)
      {
        goto LABEL_90;
      }

      v20 = 1;
      if (SHIBYTE(v24) < 0)
      {
LABEL_93:
        operator delete(v22);
      }

LABEL_81:
      if ((v20 & 1) == 0)
      {
        goto LABEL_95;
      }
    }
  }

  if (v4 == 1)
  {
    sub_23EF82B6C(v3 + 16, &v22);
    sub_23EF53784(&v36, &v22);
    sub_23EF88F40(v3 + 16, &v36);
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
    if (v34 == v33)
    {
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
        operator delete(v24);
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

  sub_23EF82E08(v3 + 16, &v22);
  sub_23EF53784(&v36, &v22);
  sub_23EF88F40(v3 + 16, &v36);
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

void sub_23F019CCC(int a1, uint64_t a2)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_23F01A85C(a2);
      }

      sub_23F01A690(a2);
    }

    switch(a1)
    {
      case 8:
        sub_23F01AA2C(a2);
      case 11:
        sub_23F01ABFC(a2);
      case 12:
        sub_23F01ADCC(a2);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_23F019DAC(a2);
    }

    if (a1 == 1)
    {
      sub_23F019F68(a2);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_23F01A134(a2);
      case 3:
        sub_23F01A304(a2);
      case 5:
        sub_23F01A4D4(a2);
    }
  }

  sub_23F2F1304(a1);
}

void sub_23F019DAC(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C544C();
}

void sub_23F019F38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23F019F68(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C5978();
}

void sub_23F01A104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23F01A134(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C5EA8();
}

void sub_23F01A2D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23F01A304(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C63D8();
}

void sub_23F01A4A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23F01A4D4(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C51B8();
}

void sub_23F01A660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23F01A690(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C56E0();
}

void sub_23F01A82C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23F01A85C(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C5C10();
}

void sub_23F01A9FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23F01AA2C(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C6140();
}

void sub_23F01ABCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23F01ABFC(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C6670();
}

void sub_23F01AD9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23F01ADCC(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C6908();
}

void sub_23F01AF6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23F01AF9C(uint64_t *a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_23EF82B6C(v3 + 16, v19);
    sub_23EF53784(v31, v19);
    sub_23EF88F40(v3 + 16, v31);
    if (v43 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v42;
        v7 = __p;
        if (v42 != __p)
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

        v42 = v5;
        operator delete(v7);
      }
    }

    if (v40 == 1 && v39 < 0)
    {
      operator delete(v38);
    }

    if (v37 == 1 && v36 < 0)
    {
      operator delete(v35);
    }

    if (v34 == 1 && v33 < 0)
    {
      operator delete(v32);
    }

    if (v30 != 1)
    {
      goto LABEL_66;
    }

    v13 = v28;
    if (!v28)
    {
      goto LABEL_66;
    }

    v14 = v29;
    v15 = v28;
    if (v29 == v28)
    {
LABEL_65:
      v29 = v13;
      operator delete(v15);
LABEL_66:
      if (v27 == 1 && v26 < 0)
      {
        operator delete(v25);
      }

      if (v24 == 1 && v23 < 0)
      {
        operator delete(v22);
      }

      if (v21 == 1 && v20 < 0)
      {
        operator delete(v19[2]);
      }

      if (*(v3 + 192))
      {
        sub_23EF41D6C();
      }

LABEL_76:
      sub_23EF67614(v19, a2, v3 + 16);
      sub_23F01B38C(v19, a2, v3 + 200);
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

  sub_23EF82E08(v3 + 16, v19);
  sub_23EF53784(v31, v19);
  sub_23EF88F40(v3 + 16, v31);
  if (v43 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v42;
      v11 = __p;
      if (v42 != __p)
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

      v42 = v9;
      operator delete(v11);
    }
  }

  if (v40 == 1 && v39 < 0)
  {
    operator delete(v38);
  }

  if (v37 == 1 && v36 < 0)
  {
    operator delete(v35);
  }

  if (v34 == 1 && v33 < 0)
  {
    operator delete(v32);
  }

  if (v30 != 1)
  {
    goto LABEL_66;
  }

  v13 = v28;
  if (!v28)
  {
    goto LABEL_66;
  }

  v17 = v29;
  v15 = v28;
  if (v29 == v28)
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
      v15 = v28;
      goto LABEL_65;
    }
  }
}

void sub_23F01B38C(uint64_t a1, void *a2, uint64_t a3)
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
    v9 = *(a2[3] + v3);
    a2[6] = v3 + 4;
    sub_23F294FCC(a2);
    sub_23F01B468(a2, a3);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_23EF35CC0(exception, "Not enough data to read");
  __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
}

void sub_23F01B468(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v3 = a1[7];
  if (v3 > v2)
  {
    v4 = a1[3];
    v5 = *(v4 + v2);
    v6 = v2 + 1;
    a1[6] = v6;
    *a2 = v5;
    v7 = v3 >= v6;
    v8 = v3 - v6;
    if (!v7)
    {
      v8 = 0;
    }

    if (v8 > 7)
    {
      *(a2 + 8) = *(v4 + v6);
      a1[6] += 8;
      v11 = xmmword_278C74508;
      v10[0] = a2;
      v10[1] = a1;
      v10[2] = &v11;
      sub_23F01B574(v5, v10);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_23EF35CC0(exception, "Not enough data to read");
  __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
}

void sub_23F01B574(int a1, void *a2)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_23F01C3B4(a2);
      }

      sub_23F01C178(a2);
    }

    switch(a1)
    {
      case 8:
        sub_23F01C5F4(a2);
      case 11:
        sub_23F01C834(a2);
      case 12:
        sub_23F01CA74(a2);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_23F01B654(a2);
    }

    if (a1 == 1)
    {
      sub_23F01B888(a2);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_23F01BAC4(a2);
      case 3:
        sub_23F01BD04(a2);
      case 5:
        sub_23F01BF44(a2);
    }
  }

  sub_23F2F1304(a1);
}

void sub_23F01B654(void *a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_23F2C544C();
}

void sub_23F01B848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F01B888(void *a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_23F2C5978();
}

void sub_23F01BA84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F01BAC4(void *a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_23F2C5EA8();
}

void sub_23F01BCC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F01BD04(void *a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_23F2C63D8();
}

void sub_23F01BF04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F01BF44(void *a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_23F2C51B8();
}

void sub_23F01C138(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F01C178(void *a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_23F2C56E0();
}

void sub_23F01C374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F01C3B4(void *a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_23F2C5C10();
}

void sub_23F01C5B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F01C5F4(void *a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_23F2C6140();
}

void sub_23F01C7F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F01C834(void *a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_23F2C6670();
}

void sub_23F01CA34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F01CA74(void *a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v2 = a1[1];
  *(v2 + 56);
  *(v2 + 48);
  *(v2 + 48) = *(v2 + 48);
  sub_23F2C6908();
}

void sub_23F01CC74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F01CCB4(uint64_t *a1, _BYTE *a2)
{
  v4 = *a1;
  v6 = a1[1];
  LODWORD(v7[0]) = 1;
  (*(v4 + 104))(a1, v7);
  if (v6 >= 1)
  {
    sub_23F01CDB8(&v6, a1, a2);
  }

  v7[0] = a2;
  sub_23EF8CEE0(a1, v7);
  (*(*a1 + 120))(a1, a2 + 8);
  v8 = xmmword_278C74508;
  v5 = *a2;
  v7[0] = a2;
  v7[1] = a1;
  v7[2] = &v8;
  sub_23F01D088(v5, v7);
}

void sub_23F01CDB8(int *a1, _BYTE *a2, _BYTE *a3)
{
  v5 = *a1;
  if (*a1 == 2)
  {
    LODWORD(v9[0]) = 1;
    (*(*a2 + 104))(a2, v9);
    if (LODWORD(v9[0]) >= 2)
    {
      v8 = v9[0];
      if ((atomic_load_explicit(&qword_27E394678, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E394678))
      {
        sub_23F01CF84();
      }

      sub_23F2FF068(&stru_27E394660, v8, 1u);
    }

    v5 = *a1;
  }

  if (v5 > 0)
  {
    (*(*a2 + 16))(a2);
  }

  v9[0] = a3;
  sub_23EF8CEE0(a2, v9);
  (*(*a2 + 120))(a2, a3 + 8);
  v10 = xmmword_278C74508;
  v7 = *a3;
  v9[0] = a3;
  v9[1] = a2;
  v9[2] = &v10;
  sub_23F01D088(v7, v9);
}

void sub_23F01D058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F01D088(int a1, uint64_t a2)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_23F01DC20(a2);
      }

      sub_23F01DA54(a2);
    }

    switch(a1)
    {
      case 8:
        sub_23F01DDF0(a2);
      case 11:
        sub_23F01DFC0(a2);
      case 12:
        sub_23F01E190(a2);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_23F01D168(a2);
    }

    if (a1 == 1)
    {
      sub_23F01D328(a2);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_23F01D4F4(a2);
      case 3:
        sub_23F01D6C4(a2);
      case 5:
        sub_23F01D894(a2);
    }
  }

  sub_23F2F1304(a1);
}

void sub_23F01D168(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C544C();
}

void sub_23F01D2F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23F01D328(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C5978();
}

void sub_23F01D4C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23F01D4F4(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C5EA8();
}

void sub_23F01D694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23F01D6C4(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C63D8();
}

void sub_23F01D864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23F01D894(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C51B8();
}

void sub_23F01DA24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23F01DA54(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C56E0();
}

void sub_23F01DBF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23F01DC20(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C5C10();
}

void sub_23F01DDC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23F01DDF0(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C6140();
}

void sub_23F01DF90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23F01DFC0(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C6670();
}

void sub_23F01E160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23F01E190(uint64_t a1)
{
  v1 = 4 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C6908();
}

void sub_23F01E330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_23F01E5D0(void *a1)
{
  *a1 = &unk_28517BC18;
  sub_23EF44860((a1 + 6));
  result = a1;
  a1[1] = &unk_28517BC60;
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

void sub_23F01E690(void *a1)
{
  *a1 = &unk_28517BC18;
  sub_23EF44860((a1 + 6));
  a1[1] = &unk_28517BC60;
  v2 = a1[3];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x245CACD00);
}

void sub_23F01E774(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27E3946D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3946D8))
    {
      sub_23F01FB5C(&stru_27E3946C0);
      __cxa_guard_release(&qword_27E3946D8);
    }
  }

  (*(*(a1 + 8) + 24))(__p, a1 + 8);
  sub_23EF44334(&stru_27E3946C0, "{", __p, ",");
}

void sub_23F01E874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F01E890(uint64_t a1@<X8>)
{
  *(a1 + 23) = 8;
  strcpy(a1, "cv3d.viz");
  *(a1 + 24) = 13;
}

void *sub_23F01E90C(void *result)
{
  *result = &unk_28517BC60;
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

void *sub_23F01E9A0(void *a1)
{
  *a1 = &unk_28517BC18;
  sub_23EF44860((a1 + 6));
  result = a1;
  a1[1] = &unk_28517BC60;
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

void sub_23F01EA60(void *a1)
{
  *a1 = &unk_28517BC18;
  sub_23EF44860((a1 + 6));
  a1[1] = &unk_28517BC60;
  v2 = a1[3];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x245CACD00);
}

void sub_23F01EB34()
{
  if ((atomic_load_explicit(&qword_27E3946B8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E3946B8))
    {
      sub_23F01F8B8();
    }
  }

  sub_23F01F374(&xmmword_27E3946A0, "{");
}

void sub_23F01EBE8(uint64_t a1@<X8>)
{
  *(a1 + 23) = 15;
  strcpy(a1, "unknown_package");
  *(a1 + 24) = 0;
}

void sub_23F01EC14(void *a1)
{
  *a1 = &unk_28517BC60;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F01ECBC(char **a1, char **lpsrc)
{
  v4 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28517BF90, &unk_28517BC80, 0);
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

void sub_23F01ED90()
{
  if ((atomic_load_explicit(&qword_27E394698, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_27E394698))
    {
      sub_23F01F290(&stru_27E394680);
      __cxa_guard_release(&qword_27E394698);
    }
  }

  sub_23F01EE38(&stru_27E394680, "{");
}

void sub_23F01EE38(__int128 *a1, uint64_t a2)
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
  sub_23F01EFE4();
}

void sub_23F01EF7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F01EF94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F01EFA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F01EFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F01EFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F01F24C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F01F290(std::string *a1@<X8>)
{
  *(&__p.__r_.__value_.__s + 23) = 21;
  strcpy(&__p, "cv3d::kit::con::Lines");
  sub_23F301470(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, v2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_23EF82418(v2, a1);
  if (v3 < 0)
  {
    operator delete(v2[0]);
  }
}

void sub_23F01F344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F01F374(__int128 *a1, uint64_t a2)
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
  sub_23F01F5A4();
}

void sub_23F01F514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F01F52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F01F540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F01F554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F01F568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F01F57C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F01F590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F01F830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  __cxa_guard_abort(&qword_27E394698);
  v24 = a23;
  a23 = 0;
  if (!v24)
  {
    _Unwind_Resume(a1);
  }

  sub_23F302A54(&a23, v24);
  _Unwind_Resume(a1);
}

void sub_23F01F98C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F01F9BC(const void **a1@<X0>, std::string *a2@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  *(&__p.__r_.__value_.__s + 23) = 21;
  strcpy(&__p, "cv3d::kit::con::Lines");
  sub_23F301470(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, v10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_23EF82418(v10, &v13);
  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  sub_23EF42150(v9, &v13, 1uLL);
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

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23F01FB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_23EF3291C(&a9);
  if (*(v9 - 25) < 0)
  {
    operator delete(*(v9 - 48));
  }

  _Unwind_Resume(a1);
}

void sub_23F01FB5C(std::string *a1@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  HIBYTE(v9[2]) = 16;
  strcpy(v9, "viz::PackageData");
  *(&__p.__r_.__value_.__s + 23) = 21;
  strcpy(&__p, "cv3d::kit::con::Lines");
  sub_23F301470(&__p, "std::__1::", 10, "std::", 5uLL, 0, 0, v10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_23EF82418(v10, &v13);
  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  v15 = 12;
  strcpy(v14, "viz::Package");
  sub_23F302E84("13U]", 3, &v16);
  v18 = 4;
  strcpy(v17, "void");
  sub_23EF42150(v8, &v13, 4uLL);
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

  if (v18 < 0)
  {
    operator delete(v17[0]);
    if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_15:
      if ((v15 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_22;
    }
  }

  else if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(v16.__r_.__value_.__l.__data_);
  if ((v15 & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_23:
    operator delete(v13.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v9[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_24:
    operator delete(v9[0]);
    v7 = *MEMORY[0x277D85DE8];
    return;
  }

LABEL_22:
  operator delete(v14[0]);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_23;
  }

LABEL_17:
  if (SHIBYTE(v9[2]) < 0)
  {
    goto LABEL_24;
  }

LABEL_18:
  v6 = *MEMORY[0x277D85DE8];
}

void sub_23F01FD90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  sub_23EF3291C(&a10);
  if (a54 < 0)
  {
    operator delete(__p);
    if ((a48 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a42 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a48 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a43);
  if ((a42 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a36 & 0x80000000) == 0)
    {
LABEL_10:
      if (a18 < 0)
      {
        operator delete(a13);
      }

      _Unwind_Resume(a1);
    }

LABEL_9:
    operator delete(a31);
    goto LABEL_10;
  }

LABEL_8:
  operator delete(a37);
  if ((a36 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void *sub_23F01FE50(void *a1)
{
  *a1 = &unk_28517BC18;
  sub_23EF44860((a1 + 6));
  result = a1;
  a1[1] = &unk_28517BC60;
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

uint64_t sub_23F01FF10(uint64_t a1, uint64_t a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 192);
  if (v4 == 2)
  {
    sub_23EF82E08(a1 + 16, &v41);
  }

  else if (v4 == 1)
  {
    sub_23EF82B6C(a1 + 16, &v41);
  }

  else
  {
    if (v4)
    {
      sub_23EF41D6C();
    }

    sub_23EF47C88(a1 + 16, &v41);
  }

  v5 = *(a2 + 192);
  if (v5 == 2)
  {
    sub_23EF82E08(a2 + 16, &v26);
  }

  else if (v5 == 1)
  {
    sub_23EF82B6C(a2 + 16, &v26);
  }

  else
  {
    if (v5)
    {
      sub_23EF41D6C();
    }

    sub_23EF47C88(a2 + 16, &v26);
  }

  if (v41 != v26)
  {
    goto LABEL_21;
  }

  if (v42 != v27)
  {
    goto LABEL_21;
  }

  v21 = &v43;
  v22 = &v46;
  v23 = &v47;
  v24 = &v50;
  v25 = &v53;
  v20[0] = &v28;
  v20[1] = &v31;
  v20[2] = &v32;
  v20[3] = &v35;
  v20[4] = &__p;
  if (!sub_23F04C458(&v21, v20))
  {
    goto LABEL_21;
  }

  if (*(a1 + 200) == *(a2 + 200) && *(a1 + 208) == *(a2 + 208) && (v6 = *(a1 + 216), v7 = *v6, v8 = *(a2 + 216), v7 == *v8))
  {
    v21 = v20;
    v22 = v6;
    v23 = v8;
    v9 = sub_23F2C7774(v7, &v21);
    if (v40 != 1)
    {
      goto LABEL_35;
    }
  }

  else
  {
LABEL_21:
    v9 = 0;
    if (v40 != 1)
    {
      goto LABEL_35;
    }
  }

  v10 = __p;
  if (__p)
  {
    v11 = v39;
    v12 = __p;
    if (v39 == __p)
    {
LABEL_34:
      v39 = v10;
      operator delete(v12);
      goto LABEL_35;
    }

    while (1)
    {
      v13 = v11;
      if (*(v11 - 16) == 1 && *(v11 - 41) < 0)
      {
        operator delete(*(v11 - 8));
        v11 -= 12;
        if (*(v13 - 72) == 1)
        {
LABEL_29:
          if (*(v13 - 73) < 0)
          {
            operator delete(*v11);
          }
        }
      }

      else
      {
        v11 -= 12;
        if (*(v13 - 72) == 1)
        {
          goto LABEL_29;
        }
      }

      if (v11 == v10)
      {
        v12 = __p;
        goto LABEL_34;
      }
    }
  }

LABEL_35:
  if (v37 == 1 && v36 < 0)
  {
    operator delete(v35);
  }

  if (v34 == 1 && v33 < 0)
  {
    operator delete(v32);
  }

  if (v30 == 1 && v29 < 0)
  {
    operator delete(v28);
  }

  if (v55 == 1)
  {
    v14 = v53;
    if (v53)
    {
      v15 = v54;
      v16 = v53;
      if (v54 == v53)
      {
LABEL_57:
        v54 = v14;
        operator delete(v16);
        goto LABEL_58;
      }

      while (1)
      {
        v17 = v15;
        if (*(v15 - 16) == 1 && *(v15 - 41) < 0)
        {
          operator delete(*(v15 - 8));
          v15 -= 12;
          if (*(v17 - 72) == 1)
          {
LABEL_52:
            if (*(v17 - 73) < 0)
            {
              operator delete(*v15);
            }
          }
        }

        else
        {
          v15 -= 12;
          if (*(v17 - 72) == 1)
          {
            goto LABEL_52;
          }
        }

        if (v15 == v14)
        {
          v16 = v53;
          goto LABEL_57;
        }
      }
    }
  }

LABEL_58:
  if (v52 == 1 && v51 < 0)
  {
    operator delete(v50);
  }

  if (v49 == 1 && v48 < 0)
  {
    operator delete(v47);
  }

  if (v45 == 1 && v44 < 0)
  {
    operator delete(v43);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_23F0202C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  sub_23EF44860(v47);
  sub_23EF44860(&a47);
  _Unwind_Resume(a1);
}

void sub_23F020300(char **a1, uint64_t a2)
{
  v15 = a2;
  v16 = a2;
  v4 = *a1;
  v5 = **a1;
  v6 = __dynamic_cast(a1, &unk_28518D908, &unk_2851798D0, 0);
  if (v6)
  {
    sub_23F0208B8(&v16, v6);
  }

  v16 = a2;
  v7 = *v4;
  v8 = __dynamic_cast(a1, &unk_28518D908, &unk_285179918, 0);
  if (v8)
  {
    sub_23F021738(&v16, v8);
  }

  else
  {
    v16 = a2;
    v9 = *v4;
    v10 = __dynamic_cast(a1, &unk_28518D908, &unk_2851799A0, 0);
    if (v10)
    {
      sub_23F021B48(&v16, v10);
    }

    v16 = a2;
    v11 = *v4;
    v12 = __dynamic_cast(a1, &unk_28518D908, &unk_2851799E8, 0);
    if (v12)
    {
      sub_23F0229C8(&v16, v12);
    }

    else
    {
      v16 = a2;
      v13 = *v4;
      v14 = __dynamic_cast(a1, &unk_28518D908, &unk_28518B990, 0);
      if (v14)
      {
        sub_23F022D08(&v16, v14);
      }

      else
      {
        sub_23F0204CC(&v15, a1);
      }
    }
  }
}

void sub_23F0204CC(uint64_t *a1, _DWORD *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    v9 = a2[2];
    v12 = 4;
    (*(*a2 + 104))(a2, &v12);
    v10 = v12;
    if (v9 >= 1)
    {
      if (v9 == 2)
      {
        v12 = 3;
        (*(*a2 + 104))(a2, &v12);
      }

      (*(*a2 + 16))(a2);
      sub_23EF886A8(a2, v3 + 16, v10);
      goto LABEL_16;
    }

    sub_23EF886A8(a2, v3 + 16, v12);
  }

  else if (v4 == 1)
  {
    v7 = a2[2];
    v12 = 5;
    (*(*a2 + 104))(a2, &v12);
    v8 = v12;
    if (v7 >= 1)
    {
      if (v7 == 2)
      {
        v12 = 3;
        (*(*a2 + 104))(a2, &v12);
      }

      (*(*a2 + 16))(a2);
      sub_23EF87D4C(a2, v3 + 16, v8);
      goto LABEL_16;
    }

    sub_23EF87D4C(a2, v3 + 16, v12);
  }

  else
  {
    if (v4)
    {
      sub_23EF41D6C();
    }

    v5 = a2[2];
    v12 = 6;
    (*(*a2 + 104))(a2, &v12);
    v6 = v12;
    if (v5 >= 1)
    {
      if (v5 == 2)
      {
        v12 = 3;
        (*(*a2 + 104))(a2, &v12);
      }

      (*(*a2 + 16))(a2);
      sub_23EF5C460(a2, v3 + 16, v6);
LABEL_16:
      (*(*a2 + 24))(a2);
      goto LABEL_17;
    }

    sub_23EF5C460(a2, v3 + 16, v12);
  }

LABEL_17:
  v11 = a2[2];
  v12 = 1;
  (*(*a2 + 104))(a2, &v12);
  if (v11 < 1)
  {
    sub_23F022FD8(a2, (v3 + 200));
  }

  else
  {
    if (v11 == 2)
    {
      v12 = 1;
      (*(*a2 + 104))(a2, &v12);
    }

    (*(*a2 + 16))(a2);
    sub_23F022FD8(a2, (v3 + 200));
    (*(*a2 + 24))(a2);
  }
}

void sub_23F0208B8(uint64_t *a1, uint64_t a2)
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

void sub_23F020DE0(uint64_t a1, __int128 *a2)
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

void sub_23F021008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23F0655DC((v9 + 8), 6);
  sub_23EF50E84(&a9);
  _Unwind_Resume(a1);
}

void sub_23F02103C(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        sub_23F2C6BA0((a2 + 16), 6);
        if (*(a2 + 8))
        {
          v12 = *(*(a2 + 16) + 40);
          sub_23F2E6438(a3 + 48, (a3 + 40));
          *(a3 + 40) = sub_23F2E72C0(a3);
          if (*(a3 + 88) == 1)
          {
            *(a3 + 88) = 0;
          }

          v19 = v12;
          v20 = 3;
          sub_23F2E9D84(a3, &v19);
        }
      }

      else
      {
        sub_23F2C6BA0((a2 + 16), 7);
        if (*(a2 + 8))
        {
          v10 = *(*(a2 + 16) + 40);
          sub_23F2E6438(a3 + 48, (a3 + 40));
          *(a3 + 40) = sub_23F2E72C0(a3);
          if (*(a3 + 88) == 1)
          {
            *(a3 + 88) = 0;
          }

          v19 = v10;
          v20 = 3;
          sub_23F2EA094(a3, &v19);
        }
      }
    }

    else
    {
      switch(a1)
      {
        case 8:
          sub_23F2C6BA0((a2 + 16), 8);
          if (*(a2 + 8))
          {
            v14 = *(*(a2 + 16) + 40);
            sub_23F2E6438(a3 + 48, (a3 + 40));
            *(a3 + 40) = sub_23F2E72C0(a3);
            if (*(a3 + 88) == 1)
            {
              *(a3 + 88) = 0;
            }

            v19 = v14;
            v20 = 3;
            sub_23F2EA3A4(a3, &v19);
          }

          break;
        case 11:
          sub_23F2C6BA0((a2 + 16), 11);
          v16 = *(a2 + 8);
          if (v16)
          {
            v17 = *(*(a2 + 16) + 40);
            do
            {
              sub_23F2E6438(a3 + 48, (a3 + 40));
              *(a3 + 40) = sub_23F2E72C0(a3);
              if (*(a3 + 88) == 1)
              {
                *(a3 + 88) = 0;
              }

              v19 = v17;
              v20 = 3;
              sub_23F2EAAD8(a3, &v19);
              v19 = v17 + 3;
              v20 = 3;
              sub_23F2EAAD8(a3, &v19);
              v18 = *(a3 + 56);
              *(a3 + 40) = *(v18 - 8);
              *(a3 + 56) = v18 - 8;
              if (*(a3 + 88) == 1)
              {
                *(a3 + 88) = 0;
              }

              v17 += 6;
              --v16;
            }

            while (v16);
          }

          break;
        case 12:
          sub_23F2C6BA0((a2 + 16), 12);
          v6 = *(a2 + 8);
          if (v6)
          {
            v7 = *(*(a2 + 16) + 40);
            do
            {
              sub_23F2E6438(a3 + 48, (a3 + 40));
              *(a3 + 40) = sub_23F2E72C0(a3);
              if (*(a3 + 88) == 1)
              {
                *(a3 + 88) = 0;
              }

              v19 = v7;
              v20 = 3;
              sub_23F2EAF38(a3, &v19);
              v19 = v7 + 6;
              v20 = 3;
              sub_23F2EAF38(a3, &v19);
              v8 = *(a3 + 56);
              *(a3 + 40) = *(v8 - 8);
              *(a3 + 56) = v8 - 8;
              if (*(a3 + 88) == 1)
              {
                *(a3 + 88) = 0;
              }

              v7 += 12;
              --v6;
            }

            while (v6);
          }

          break;
        default:
          goto LABEL_60;
      }
    }
  }

  else if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_60;
      }

      sub_23F2C6BA0((a2 + 16), 1);
      if (*(a2 + 8))
      {
        v9 = *(*(a2 + 16) + 40);
        sub_23F2E6438(a3 + 48, (a3 + 40));
        *(a3 + 40) = sub_23F2E72C0(a3);
        if (*(a3 + 88) == 1)
        {
          *(a3 + 88) = 0;
        }

        v19 = v9;
        v20 = 3;
        sub_23F2E9F0C(a3, &v19);
      }
    }

    else
    {
      sub_23F2C6BA0((a2 + 16), 0);
      if (*(a2 + 8))
      {
        v11 = *(*(a2 + 16) + 40);
        sub_23F2E6438(a3 + 48, (a3 + 40));
        *(a3 + 40) = sub_23F2E72C0(a3);
        if (*(a3 + 88) == 1)
        {
          *(a3 + 88) = 0;
        }

        v19 = v11;
        v20 = 3;
        sub_23F2E76F4(a3, &v19);
      }
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_23F2C6BA0((a2 + 16), 2);
        if (*(a2 + 8))
        {
          v13 = *(*(a2 + 16) + 40);
          sub_23F2E6438(a3 + 48, (a3 + 40));
          *(a3 + 40) = sub_23F2E72C0(a3);
          if (*(a3 + 88) == 1)
          {
            *(a3 + 88) = 0;
          }

          v19 = v13;
          v20 = 3;
          sub_23F2EA21C(a3, &v19);
        }

        break;
      case 3:
        sub_23F2C6BA0((a2 + 16), 3);
        if (*(a2 + 8))
        {
          v15 = *(*(a2 + 16) + 40);
          sub_23F2E6438(a3 + 48, (a3 + 40));
          *(a3 + 40) = sub_23F2E72C0(a3);
          if (*(a3 + 88) == 1)
          {
            *(a3 + 88) = 0;
          }

          v19 = v15;
          v20 = 3;
          sub_23F2EA52C(a3, &v19);
        }

        break;
      case 5:
        sub_23F2C6BA0((a2 + 16), 5);
        if (*(a2 + 8))
        {
          v5 = *(*(a2 + 16) + 40);
          sub_23F2E6438(a3 + 48, (a3 + 40));
          *(a3 + 40) = sub_23F2E72C0(a3);
          if (*(a3 + 88) == 1)
          {
            *(a3 + 88) = 0;
          }

          v19 = v5;
          v20 = 3;
          sub_23F2E9C18(a3, &v19);
        }

        return;
      default:
LABEL_60:

        sub_23F2F1304(a1);
    }
  }
}

void sub_23F021738(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    v7 = a2[3];
    if (*(v7 + 40) == 1)
    {
      v25 = (v7 + 16);
      sub_23F2FD25C(&v25, 4u);
    }

    else
    {
      sub_23F2FD4DC(&v25, (v7 + 8));
    }

    sub_23F2F887C(a2[3]);
    sub_23EF84C34(a2, v3 + 16, 4u);
  }

  else if (v4 == 1)
  {
    v6 = a2[3];
    if (*(v6 + 40) == 1)
    {
      v25 = (v6 + 16);
      sub_23F2FD25C(&v25, 5u);
    }

    else
    {
      sub_23F2FD4DC(&v25, (v6 + 8));
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
      v25 = (v5 + 16);
      sub_23F2FD25C(&v25, 6u);
    }

    else
    {
      sub_23F2FD4DC(&v25, (v5 + 8));
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
    v25 = (v16 + 16);
    sub_23F2FD25C(&v25, 1u);
  }

  else
  {
    sub_23F2FD4DC(&v25, (v16 + 8));
  }

  sub_23F2F887C(a2[3]);
  sub_23F0219CC(a2, (v3 + 200));
  v17 = a2[3];
  v18 = *(*(v17 + 88) - 8);
  sub_23F2F866C((v17 + 48), *(v17 + 16) - v18 - 9);
  v19 = *(v17 + 48);
  if (v19)
  {
    memmove((*(v17 + 24) + v18), *(v17 + 56), v19);
  }

  *(v17 + 48) = 0;
  v20 = *(v17 + 80);
  v21 = *(v17 + 88) - 8;
  *(v17 + 88) = v21;
  if (v20 == v21)
  {
    v22 = *v17;
    v24 = *(v17 + 16);
    v23 = *(v17 + 24);
    std::ostream::write();
    if (*(v17 + 40) == 1)
    {
      free(*(v17 + 24));
      *(v17 + 40) = 0;
    }
  }
}

void sub_23F0219CC(uint64_t *a1, __int128 *a2)
{
  v8 = *a2;
  v3 = *(a2 + 3);
  v9 = *(a2 + 2);
  v10 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  LOBYTE(v12) = v8;
  v4 = a1[3];
  if (*(v4 + 40) == 1)
  {
    v11[0] = (v4 + 16);
    sub_23F2FC63C(v11, &v12);
  }

  else
  {
    if (v8 < 0)
    {
      LOBYTE(v11[0]) = -52;
      BYTE1(v11[0]) = v8;
    }

    else
    {
      LOBYTE(v11[0]) = v8;
    }

    v5 = *(v4 + 8);
    std::ostream::write();
  }

  v6 = a1[3];
  if (*(v6 + 40) == 1)
  {
    v11[0] = (v6 + 16);
    sub_23F2FDC5C(v11, *(&v8 + 1));
  }

  else
  {
    sub_23F2FDF70((v6 + 8));
  }

  v12 = xmmword_278C74518;
  v11[0] = &v8;
  v11[1] = a1;
  v11[2] = &v12;
  sub_23EFA125C(v8, v11);
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

void sub_23F021B48(uint64_t *a1, uint64_t a2)
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

void sub_23F022070(uint64_t a1, __int128 *a2)
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

void sub_23F022298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23F06357C((v9 + 8), 6);
  sub_23EF50E84(&a9);
  _Unwind_Resume(a1);
}

void sub_23F0222CC(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 == 6)
      {
        sub_23F2C6BA0((a2 + 16), 6);
        if (*(a2 + 8))
        {
          v12 = *(*(a2 + 16) + 40);
          sub_23F07903C(a3 + 48, (a3 + 40));
          *(a3 + 40) = sub_23F2E6C78(a3);
          if (*(a3 + 88) == 1)
          {
            *(a3 + 88) = 0;
          }

          v19 = v12;
          v20 = 3;
          sub_23F2E7EF4(a3, &v19);
        }
      }

      else
      {
        sub_23F2C6BA0((a2 + 16), 7);
        if (*(a2 + 8))
        {
          v10 = *(*(a2 + 16) + 40);
          sub_23F07903C(a3 + 48, (a3 + 40));
          *(a3 + 40) = sub_23F2E6C78(a3);
          if (*(a3 + 88) == 1)
          {
            *(a3 + 88) = 0;
          }

          v19 = v10;
          v20 = 3;
          sub_23F2E8204(a3, &v19);
        }
      }
    }

    else
    {
      switch(a1)
      {
        case 8:
          sub_23F2C6BA0((a2 + 16), 8);
          if (*(a2 + 8))
          {
            v14 = *(*(a2 + 16) + 40);
            sub_23F07903C(a3 + 48, (a3 + 40));
            *(a3 + 40) = sub_23F2E6C78(a3);
            if (*(a3 + 88) == 1)
            {
              *(a3 + 88) = 0;
            }

            v19 = v14;
            v20 = 3;
            sub_23F2E8514(a3, &v19);
          }

          break;
        case 11:
          sub_23F2C6BA0((a2 + 16), 11);
          v16 = *(a2 + 8);
          if (v16)
          {
            v17 = *(*(a2 + 16) + 40);
            do
            {
              sub_23F07903C(a3 + 48, (a3 + 40));
              *(a3 + 40) = sub_23F2E6C78(a3);
              if (*(a3 + 88) == 1)
              {
                *(a3 + 88) = 0;
              }

              v19 = v17;
              v20 = 3;
              sub_23F2E8C48(a3, &v19);
              v19 = v17 + 3;
              v20 = 3;
              sub_23F2E8C48(a3, &v19);
              v18 = *(a3 + 56);
              *(a3 + 40) = *(v18 - 8);
              *(a3 + 56) = v18 - 8;
              if (*(a3 + 88) == 1)
              {
                *(a3 + 88) = 0;
              }

              v17 += 6;
              --v16;
            }

            while (v16);
          }

          break;
        case 12:
          sub_23F2C6BA0((a2 + 16), 12);
          v6 = *(a2 + 8);
          if (v6)
          {
            v7 = *(*(a2 + 16) + 40);
            do
            {
              sub_23F07903C(a3 + 48, (a3 + 40));
              *(a3 + 40) = sub_23F2E6C78(a3);
              if (*(a3 + 88) == 1)
              {
                *(a3 + 88) = 0;
              }

              v19 = v7;
              v20 = 3;
              sub_23F2E90A8(a3, &v19);
              v19 = v7 + 6;
              v20 = 3;
              sub_23F2E90A8(a3, &v19);
              v8 = *(a3 + 56);
              *(a3 + 40) = *(v8 - 8);
              *(a3 + 56) = v8 - 8;
              if (*(a3 + 88) == 1)
              {
                *(a3 + 88) = 0;
              }

              v7 += 12;
              --v6;
            }

            while (v6);
          }

          break;
        default:
          goto LABEL_60;
      }
    }
  }

  else if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_60;
      }

      sub_23F2C6BA0((a2 + 16), 1);
      if (*(a2 + 8))
      {
        v9 = *(*(a2 + 16) + 40);
        sub_23F07903C(a3 + 48, (a3 + 40));
        *(a3 + 40) = sub_23F2E6C78(a3);
        if (*(a3 + 88) == 1)
        {
          *(a3 + 88) = 0;
        }

        v19 = v9;
        v20 = 3;
        sub_23F2E807C(a3, &v19);
      }
    }

    else
    {
      sub_23F2C6BA0((a2 + 16), 0);
      if (*(a2 + 8))
      {
        v11 = *(*(a2 + 16) + 40);
        sub_23F07903C(a3 + 48, (a3 + 40));
        *(a3 + 40) = sub_23F2E6C78(a3);
        if (*(a3 + 88) == 1)
        {
          *(a3 + 88) = 0;
        }

        v19 = v11;
        v20 = 3;
        sub_23F2E7154(a3, &v19);
      }
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_23F2C6BA0((a2 + 16), 2);
        if (*(a2 + 8))
        {
          v13 = *(*(a2 + 16) + 40);
          sub_23F07903C(a3 + 48, (a3 + 40));
          *(a3 + 40) = sub_23F2E6C78(a3);
          if (*(a3 + 88) == 1)
          {
            *(a3 + 88) = 0;
          }

          v19 = v13;
          v20 = 3;
          sub_23F2E838C(a3, &v19);
        }

        break;
      case 3:
        sub_23F2C6BA0((a2 + 16), 3);
        if (*(a2 + 8))
        {
          v15 = *(*(a2 + 16) + 40);
          sub_23F07903C(a3 + 48, (a3 + 40));
          *(a3 + 40) = sub_23F2E6C78(a3);
          if (*(a3 + 88) == 1)
          {
            *(a3 + 88) = 0;
          }

          v19 = v15;
          v20 = 3;
          sub_23F2E869C(a3, &v19);
        }

        break;
      case 5:
        sub_23F2C6BA0((a2 + 16), 5);
        if (*(a2 + 8))
        {
          v5 = *(*(a2 + 16) + 40);
          sub_23F07903C(a3 + 48, (a3 + 40));
          *(a3 + 40) = sub_23F2E6C78(a3);
          if (*(a3 + 88) == 1)
          {
            *(a3 + 88) = 0;
          }

          v19 = v5;
          v20 = 3;
          sub_23F2E7D88(a3, &v19);
        }

        return;
      default:
LABEL_60:

        sub_23F2F1304(a1);
    }
  }
}

void *sub_23F0229C8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    if (*(a2 + 40))
    {
      v16 = *(a2 + 24);
      v19 = *(a2 + 32);
      sub_23EF2F9B0(v16, &v19, 1);
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
        v17 = *(a2 + 32);
        sub_23EF2F9B0(v5, &v17, 1);
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
      v20 = *(a2 + 32);
      sub_23EF2F9B0(v8, &v20, 1);
      goto LABEL_12;
    }

    if (*(a2 + 40))
    {
      v7 = *(a2 + 24);
      v18 = *(a2 + 32);
      sub_23EF2F9B0(v7, &v18, 1);
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
  v21 = v6;
  sub_23EF2F9B0(v9, &v21, 1);
  v10 = *(a2 + 40);
  *(a2 + 40) = v10 + 1;
  if (v10 != -1)
  {
    v11 = *(a2 + 24);
    v22 = *(a2 + 32);
    sub_23EF2F9B0(v11, &v22, 1);
  }

  MEMORY[0x245CAC910](*(a2 + 24), 1);
  ++*(a2 + 40);
  sub_23F022BDC(a2, (v3 + 200));
  v12 = *(a2 + 34);
  if (*(a2 + 40))
  {
    v13 = *(a2 + 24);
    v23 = *(a2 + 32);
    sub_23EF2F9B0(v13, &v23, 1);
  }

  v14 = *(a2 + 24);
  v24 = v12;
  result = sub_23EF2F9B0(v14, &v24, 1);
  ++*(a2 + 40);
  return result;
}

void sub_23F022BDC(uint64_t a1, __int128 *a2)
{
  v6 = *a2;
  v3 = *(a2 + 3);
  v7 = *(a2 + 2);
  v8 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  LOBYTE(v9[0]) = v6;
  sub_23F2F3D94(a1, v9);
  if (*(a1 + 40))
  {
    v4 = *(a1 + 24);
    LOBYTE(v9[0]) = *(a1 + 32);
    sub_23EF2F9B0(v4, v9, 1);
  }

  MEMORY[0x245CAC960](*(a1 + 24), *(&v6 + 1));
  ++*(a1 + 40);
  v10 = xmmword_278C74518;
  v9[0] = &v6;
  v9[1] = a1;
  v9[2] = &v10;
  sub_23EFA1F6C(v6, v9);
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

void sub_23F022D08(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 == 2)
  {
    __src = 4;
    sub_23F295368(a2 + 24, *(a2 + 32), &__src, &v11, 4uLL);
    v7 = __src;
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

    __src = 6;
    sub_23F295368(a2 + 24, *(a2 + 32), &__src, &v11, 4uLL);
    v5 = __src;
    sub_23F294D84(a2);
    sub_23EF5B8BC(a2, v3 + 16, v5);
  }

  v8 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v8 + 10) = *(a2 + 32) - v8 - 18;
  *(a2 + 56) -= 8;
  __src = 1;
  sub_23F295368(a2 + 24, *(a2 + 32), &__src, &v11, 4uLL);
  sub_23F294D84(a2);
  sub_23F022EBC(a2, (v3 + 200));
  v9 = *(*(a2 + 56) - 8) + *(a2 + 24);
  *(v9 + 10) = *(a2 + 32) - v9 - 18;
  *(a2 + 56) -= 8;
}

void sub_23F022EBC(uint64_t a1, __int128 *a2)
{
  v5 = *a2;
  v3 = *(a2 + 3);
  v6 = *(a2 + 2);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  LOBYTE(__src[0]) = v5;
  sub_23F295368(a1 + 24, *(a1 + 32), __src, __src + 1, 1uLL);
  sub_23F295368(a1 + 24, *(a1 + 32), &v5 + 8, &v6, 8uLL);
  v9 = xmmword_278C74518;
  __src[0] = &v5;
  __src[1] = a1;
  __src[2] = &v9;
  sub_23EFA2524(v5, __src);
  v4 = v7;
  if (v7)
  {
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

void sub_23F022FD8(_BYTE *a1, __int128 *a2)
{
  v5 = *a2;
  v3 = *(a2 + 3);
  v6 = *(a2 + 2);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_23EF88DD8(a1, &v5);
  (*(*a1 + 120))(a1, &v5 + 8);
  v9 = xmmword_278C74518;
  v8[0] = &v5;
  v8[1] = a1;
  v8[2] = &v9;
  sub_23EFA27D8(v5, v8);
  v4 = v7;
  if (v7)
  {
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

void sub_23F0230F4(char **a1, uint64_t a2)
{
  v15 = a2;
  v16 = a2;
  v4 = *a1;
  v5 = **a1;
  v6 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285179A70, 0);
  if (v6)
  {
    sub_23F023720(&v16, v6);
  }

  v16 = a2;
  v7 = *v4;
  v8 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285179AA8, 0);
  if (v8)
  {
    sub_23F02595C(&v16, v8);
  }

  v16 = a2;
  v9 = *v4;
  v10 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285179B30, 0);
  if (v10)
  {
    sub_23F0271E0(&v16, v10);
  }

  v16 = a2;
  v11 = *v4;
  v12 = __dynamic_cast(a1, &unk_28518D8F0, &unk_285179B68, 0);
  if (v12)
  {
    sub_23F02941C(&v16, v12);
  }

  v16 = a2;
  v13 = *v4;
  v14 = __dynamic_cast(a1, &unk_28518D8F0, &unk_28518B930, 0);
  if (v14)
  {
    sub_23F02ACE0(&v16, v14);
  }

  sub_23F0232C0(&v15, a1);
}

void sub_23F0232C0(uint64_t *a1, void **a2)
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
        operator delete(v21[2]);
      }

      if (*(v3 + 192))
      {
        sub_23EF41D6C();
      }

LABEL_76:
      v19 = *a2;
      v21[0] = a2[1];
      v20 = v21[0];
      v33[0] = 6;
      v19[13](a2, v33);
      if (v20 < 1)
      {
        if (v33[0] < 3)
        {
          sub_23EF69318(v33, a2, v3 + 16, v33[0]);
        }

        else
        {
          sub_23EF69524(a2, v3 + 16, v33[0]);
        }
      }

      else
      {
        sub_23EF68F0C(v21, a2, v3 + 16, v33[0]);
      }

      sub_23F02CA20(a2, (v3 + 200));
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

void sub_23F023720(uint64_t *a1, uint64_t a2)
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

void sub_23F023D18(int a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_23F024E80(v3);
      }

      sub_23F024BF0(v3);
    }

    switch(a1)
    {
      case 8:
        sub_23F025114(v3);
      case 11:
        sub_23F025434(v3);
      case 12:
        sub_23F0256C8(v3);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_23F023E9C(v3);
    }

    if (a1 == 1)
    {
      sub_23F024124(v3);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_23F0243B4(v3);
      case 3:
        sub_23F024648(v3);
      case 5:
        sub_23F024968(v3);
    }
  }

  sub_23F2F1304(a1);
}

void sub_23F023E9C(void *a1)
{
  v2 = *(*a1 + 8);
  if (6 * v2)
  {
    if (((6 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_23F2EB9A4(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_23F2EB5F4(v4 + 40, &v13);
      sub_23F294EB4(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 3;
      v8 = sub_23F2EB9A4(v7);
      ++v7[14];
      sub_23F2EBAF0(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 3;
      v14 = 3;
      v10 = sub_23F2EB9A4(v9);
      ++v9[14];
      sub_23F2EBAF0(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 6;
      --v2;
    }

    while (v2);
  }

  sub_23F2C544C();
}

void sub_23F0240E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_23F024124(void *a1)
{
  v2 = *(*a1 + 8);
  if (6 * v2)
  {
    if (((6 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_23F2EB9A4(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_23F2EB5F4(v4 + 40, &v13);
      sub_23F294EB4(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 3;
      v8 = sub_23F2EB9A4(v7);
      ++v7[14];
      sub_23F2ED220(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 3;
      v14 = 3;
      v10 = sub_23F2EB9A4(v9);
      ++v9[14];
      sub_23F2ED220(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 6;
      --v2;
    }

    while (v2);
  }

  sub_23F2C5978();
}

void sub_23F024378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_23F0243B4(void *a1)
{
  v2 = *(*a1 + 8);
  if (6 * v2)
  {
    if (!((6 * v2) >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_23F2EB9A4(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_23F2EB5F4(v4 + 40, &v13);
      sub_23F294EB4(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 3;
      v8 = sub_23F2EB9A4(v7);
      ++v7[14];
      sub_23F2ED3D0(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 3;
      v14 = 3;
      v10 = sub_23F2EB9A4(v9);
      ++v9[14];
      sub_23F2ED3D0(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 6;
      --v2;
    }

    while (v2);
  }

  sub_23F2C5EA8();
}

void sub_23F02460C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_23F024648(void *a1)
{
  v2 = *(*a1 + 8);
  if (6 * v2)
  {
    if (!((6 * v2) >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      *&v15 = v5;
      v8 = sub_23F2EB9A4(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v8;
      sub_23F2EB5F4(v4 + 40, &v15);
      sub_23F294EB4(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v9 = a1[1];
      v10 = sub_23F2EB9A4(v9);
      ++v9[14];
      v15 = 0uLL;
      v16 = 0;
      sub_23F2EEE3C(v10, &v15);
      v11 = v15;
      if (*(&v15 + 1) != v15)
      {
        memmove(v3, v15, *(&v15 + 1) - v15);
      }

      if (v11)
      {
        *(&v15 + 1) = v11;
        operator delete(v11);
      }

      v12 = a1[1];
      v13 = sub_23F2EB9A4(v12);
      ++v12[14];
      v15 = 0uLL;
      v16 = 0;
      sub_23F2EEE3C(v13, &v15);
      v14 = v15;
      if (*(&v15 + 1) != v15)
      {
        memmove((v3 + 24), v15, *(&v15 + 1) - v15);
      }

      if (v14)
      {
        *(&v15 + 1) = v14;
        operator delete(v14);
      }

      v4 = a1[1];
      v6 = *(v4 + 48);
      v5 = *(v6 - 8);
      *(v4 + 32) = v5;
      v7 = *(v4 + 72);
      *(v4 + 112) = *(v7 - 8);
      *(v4 + 48) = v6 - 8;
      *(v4 + 72) = v7 - 8;
      v3 += 48;
      --v2;
    }

    while (v2);
  }

  sub_23F2C63D8();
}

void sub_23F0248F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16)
{
  sub_23EF3AE8C(&a13);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_23F024968(void *a1)
{
  v2 = *(*a1 + 8);
  if (6 * v2)
  {
    if (((6 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_23F2EB9A4(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_23F2EB5F4(v4 + 40, &v13);
      sub_23F294EB4(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 3;
      v8 = sub_23F2EB9A4(v7);
      ++v7[14];
      sub_23F2ECFE0(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 3;
      v14 = 3;
      v10 = sub_23F2EB9A4(v9);
      ++v9[14];
      sub_23F2ECFE0(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 6;
      --v2;
    }

    while (v2);
  }

  sub_23F2C51B8();
}

void sub_23F024BB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_23F024BF0(void *a1)
{
  v2 = *(*a1 + 8);
  if (6 * v2)
  {
    if (((6 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_23F2EB9A4(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_23F2EB5F4(v4 + 40, &v13);
      sub_23F294EB4(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 3;
      v8 = sub_23F2EB9A4(v7);
      ++v7[14];
      sub_23F2ED100(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 3;
      v14 = 3;
      v10 = sub_23F2EB9A4(v9);
      ++v9[14];
      sub_23F2ED100(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 6;
      --v2;
    }

    while (v2);
  }

  sub_23F2C56E0();
}

void sub_23F024E44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_23F024E80(void *a1)
{
  v2 = *(*a1 + 8);
  if (6 * v2)
  {
    if (!((6 * v2) >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_23F2EB9A4(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_23F2EB5F4(v4 + 40, &v13);
      sub_23F294EB4(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 3;
      v8 = sub_23F2EB9A4(v7);
      ++v7[14];
      sub_23F2ED2F8(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 3;
      v14 = 3;
      v10 = sub_23F2EB9A4(v9);
      ++v9[14];
      sub_23F2ED2F8(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 6;
      --v2;
    }

    while (v2);
  }

  sub_23F2C5C10();
}

void sub_23F0250D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_23F025114(void *a1)
{
  v2 = *(*a1 + 8);
  if (6 * v2)
  {
    if (!((6 * v2) >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      *&v15 = v5;
      v8 = sub_23F2EB9A4(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v8;
      sub_23F2EB5F4(v4 + 40, &v15);
      sub_23F294EB4(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v9 = a1[1];
      v10 = sub_23F2EB9A4(v9);
      ++v9[14];
      v15 = 0uLL;
      v16 = 0;
      sub_23F2EEB70(v10, &v15);
      v11 = v15;
      if (*(&v15 + 1) != v15)
      {
        memmove(v3, v15, *(&v15 + 1) - v15);
      }

      if (v11)
      {
        *(&v15 + 1) = v11;
        operator delete(v11);
      }

      v12 = a1[1];
      v13 = sub_23F2EB9A4(v12);
      ++v12[14];
      v15 = 0uLL;
      v16 = 0;
      sub_23F2EEB70(v13, &v15);
      v14 = v15;
      if (*(&v15 + 1) != v15)
      {
        memmove((v3 + 24), v15, *(&v15 + 1) - v15);
      }

      if (v14)
      {
        *(&v15 + 1) = v14;
        operator delete(v14);
      }

      v4 = a1[1];
      v6 = *(v4 + 48);
      v5 = *(v6 - 8);
      *(v4 + 32) = v5;
      v7 = *(v4 + 72);
      *(v4 + 112) = *(v7 - 8);
      *(v4 + 48) = v6 - 8;
      *(v4 + 72) = v7 - 8;
      v3 += 48;
      --v2;
    }

    while (v2);
  }

  sub_23F2C6140();
}

void sub_23F0253C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16)
{
  sub_23EF3AE8C(&a13);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_23F025434(void *a1)
{
  v2 = *(*a1 + 8);
  if (6 * v2)
  {
    if (!((6 * v2) >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_23F2EB9A4(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_23F2EB5F4(v4 + 40, &v13);
      sub_23F294EB4(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 3;
      v8 = sub_23F2EB9A4(v7);
      ++v7[14];
      sub_23F2ED6DC(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 3;
      v14 = 3;
      v10 = sub_23F2EB9A4(v9);
      ++v9[14];
      sub_23F2ED6DC(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 6;
      --v2;
    }

    while (v2);
  }

  sub_23F2C6670();
}

void sub_23F02568C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_23F0256C8(void *a1)
{
  v2 = *(*a1 + 8);
  if (6 * v2)
  {
    if (!((6 * v2) >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_23F2EB9A4(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_23F2EB5F4(v4 + 40, &v13);
      sub_23F294EB4(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 3;
      v8 = sub_23F2EB9A4(v7);
      ++v7[14];
      sub_23F2ED7F8(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 3;
      v14 = 3;
      v10 = sub_23F2EB9A4(v9);
      ++v9[14];
      sub_23F2ED7F8(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 6;
      --v2;
    }

    while (v2);
  }

  sub_23F2C6908();
}

void sub_23F025920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_23F02595C(uint64_t *a1, uint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 192);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4 == 1)
  {
    sub_23EF82B6C(v3 + 16, v19);
    sub_23EF53784(v31, v19);
    sub_23EF88F40(v3 + 16, v31);
    if (v43 == 1)
    {
      v5 = __p;
      if (__p)
      {
        v6 = v42;
        v7 = __p;
        if (v42 != __p)
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

        v42 = v5;
        operator delete(v7);
      }
    }

    if (v40 == 1 && v39 < 0)
    {
      operator delete(v38);
    }

    if (v37 == 1 && v36 < 0)
    {
      operator delete(v35);
    }

    if (v34 == 1 && v33 < 0)
    {
      operator delete(v32);
    }

    if (v30 != 1)
    {
      goto LABEL_66;
    }

    v13 = v28;
    if (!v28)
    {
      goto LABEL_66;
    }

    v14 = v29;
    v15 = v28;
    if (v29 == v28)
    {
LABEL_65:
      v29 = v13;
      operator delete(v15);
LABEL_66:
      if (v27 == 1 && v26 < 0)
      {
        operator delete(v25);
      }

      if (v24 == 1 && v23 < 0)
      {
        operator delete(v22);
      }

      if (v21 == 1 && v20 < 0)
      {
        operator delete(v19[2]);
      }

      if (*(v3 + 192))
      {
        sub_23EF41D6C();
      }

LABEL_76:
      LODWORD(v19[0]) = 6;
      sub_23F2F7EFC(*(a2 + 48), v19);
      sub_23EF62320(v19, a2, v3 + 16, v19[0]);
      LODWORD(v19[0]) = 1;
      sub_23F2F7EFC(*(a2 + 48), v19);
      sub_23F025D80(v19, a2, (v3 + 200));
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

  sub_23EF82E08(v3 + 16, v19);
  sub_23EF53784(v31, v19);
  sub_23EF88F40(v3 + 16, v31);
  if (v43 == 1)
  {
    v9 = __p;
    if (__p)
    {
      v10 = v42;
      v11 = __p;
      if (v42 != __p)
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

      v42 = v9;
      operator delete(v11);
    }
  }

  if (v40 == 1 && v39 < 0)
  {
    operator delete(v38);
  }

  if (v37 == 1 && v36 < 0)
  {
    operator delete(v35);
  }

  if (v34 == 1 && v33 < 0)
  {
    operator delete(v32);
  }

  if (v30 != 1)
  {
    goto LABEL_66;
  }

  v13 = v28;
  if (!v28)
  {
    goto LABEL_66;
  }

  v17 = v29;
  v15 = v28;
  if (v29 == v28)
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
      v15 = v28;
      goto LABEL_65;
    }
  }
}

void sub_23F025D80(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  *&v8 = 0;
  sub_23F2F80F8(*(a2 + 48), &v8);
  *&v6 = (*(*(a2 + 16) + 32))(a2 + 16);
  *(&v6 + 1) = v8;
  sub_23EF62458(a2 + 24, &v6);
  LOBYTE(v6) = 0;
  sub_23F2F7BA4(*(a2 + 48), &v6);
  *a3 = v6;
  sub_23F2F80F8(*(a2 + 48), a3 + 1);
  v8 = xmmword_278C74518;
  v5 = *a3;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v8;
  sub_23F025EC0(v5, &v6);
}

void sub_23F025EC0(int a1, uint64_t a2)
{
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_23F026A80(a2);
      }

      sub_23F0268AC(a2);
    }

    switch(a1)
    {
      case 8:
        sub_23F026C58(a2);
      case 11:
        sub_23F026E30(a2);
      case 12:
        sub_23F027008(a2);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_23F025FA0(a2);
    }

    if (a1 == 1)
    {
      sub_23F026164(a2);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_23F026338(a2);
      case 3:
        sub_23F026510(a2);
      case 5:
        sub_23F0266E8(a2);
    }
  }

  sub_23F2F1304(a1);
}

void sub_23F025FA0(uint64_t a1)
{
  v1 = 6 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C544C();
}

void sub_23F026134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23F026164(uint64_t a1)
{
  v1 = 6 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C5978();
}

void sub_23F026308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23F026338(uint64_t a1)
{
  v1 = 6 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C5EA8();
}

void sub_23F0264E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23F026510(uint64_t a1)
{
  v1 = 6 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C63D8();
}

void sub_23F0266B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23F0266E8(uint64_t a1)
{
  v1 = 6 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C51B8();
}

void sub_23F02687C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23F0268AC(uint64_t a1)
{
  v1 = 6 * *(*a1 + 8);
  if (v1)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C56E0();
}

void sub_23F026A50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23F026A80(uint64_t a1)
{
  v1 = 6 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C5C10();
}

void sub_23F026C28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23F026C58(uint64_t a1)
{
  v1 = 6 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C6140();
}

void sub_23F026E00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23F026E30(uint64_t a1)
{
  v1 = 6 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C6670();
}

void sub_23F026FD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23F027008(uint64_t a1)
{
  v1 = 6 * *(*a1 + 8);
  if (v1)
  {
    if (!(v1 >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  sub_23F2C6908();
}

void sub_23F0271B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23F0271E0(uint64_t *a1, uint64_t a2)
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

void sub_23F0277D8(int a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        sub_23F028940(v3);
      }

      sub_23F0286B0(v3);
    }

    switch(a1)
    {
      case 8:
        sub_23F028BD4(v3);
      case 11:
        sub_23F028EF4(v3);
      case 12:
        sub_23F029188(v3);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      sub_23F02795C(v3);
    }

    if (a1 == 1)
    {
      sub_23F027BE4(v3);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        sub_23F027E74(v3);
      case 3:
        sub_23F028108(v3);
      case 5:
        sub_23F028428(v3);
    }
  }

  sub_23F2F1304(a1);
}

void sub_23F02795C(void *a1)
{
  v2 = *(*a1 + 8);
  if (6 * v2)
  {
    if (((6 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_23F2EB70C(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_23F2EB5F4(v4 + 40, &v13);
      sub_23F294EB4(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 3;
      v8 = sub_23F2EB70C(v7);
      ++v7[14];
      sub_23F2EB858(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 3;
      v14 = 3;
      v10 = sub_23F2EB70C(v9);
      ++v9[14];
      sub_23F2EB858(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 6;
      --v2;
    }

    while (v2);
  }

  sub_23F2C544C();
}

void sub_23F027BA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_23F027BE4(void *a1)
{
  v2 = *(*a1 + 8);
  if (6 * v2)
  {
    if (((6 * v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23EF62578();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_23F2EB70C(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_23F2EB5F4(v4 + 40, &v13);
      sub_23F294EB4(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 3;
      v8 = sub_23F2EB70C(v7);
      ++v7[14];
      sub_23F2EC294(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 3;
      v14 = 3;
      v10 = sub_23F2EB70C(v9);
      ++v9[14];
      sub_23F2EC294(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 6;
      --v2;
    }

    while (v2);
  }

  sub_23F2C5978();
}

void sub_23F027E38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_23F027E74(void *a1)
{
  v2 = *(*a1 + 8);
  if (6 * v2)
  {
    if (!((6 * v2) >> 62))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      v13 = v5;
      v6 = sub_23F2EB70C(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v6;
      sub_23F2EB5F4(v4 + 40, &v13);
      sub_23F294EB4(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v7 = a1[1];
      v13 = v3;
      v14 = 3;
      v8 = sub_23F2EB70C(v7);
      ++v7[14];
      sub_23F2EC444(v8, &v13);
      v9 = a1[1];
      v13 = v3 + 3;
      v14 = 3;
      v10 = sub_23F2EB70C(v9);
      ++v9[14];
      sub_23F2EC444(v10, &v13);
      v4 = a1[1];
      v11 = *(v4 + 48);
      v5 = *(v11 - 8);
      *(v4 + 32) = v5;
      v12 = *(v4 + 72);
      *(v4 + 112) = *(v12 - 8);
      *(v4 + 48) = v11 - 8;
      *(v4 + 72) = v12 - 8;
      v3 += 6;
      --v2;
    }

    while (v2);
  }

  sub_23F2C5EA8();
}

void sub_23F0280CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  v14 = a1;
  if (__p)
  {
    operator delete(__p);
    v14 = a1;
  }

  _Unwind_Resume(v14);
}

void sub_23F028108(void *a1)
{
  v2 = *(*a1 + 8);
  if (6 * v2)
  {
    if (!((6 * v2) >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v3 = 0;
  if (v2)
  {
    v4 = a1[1];
    v5 = *(v4 + 32);
    do
    {
      *&v15 = v5;
      v8 = sub_23F2EB70C(v4);
      ++*(v4 + 112);
      *(v4 + 32) = v8;
      sub_23F2EB5F4(v4 + 40, &v15);
      sub_23F294EB4(v4 + 64, (v4 + 112));
      *(v4 + 112) = 0;
      if (*(v4 + 104) == 1)
      {
        *(v4 + 104) = 0;
      }

      v9 = a1[1];
      v10 = sub_23F2EB70C(v9);
      ++v9[14];
      v15 = 0uLL;
      v16 = 0;
      sub_23F2EDFA0(v10, &v15);
      v11 = v15;
      if (*(&v15 + 1) != v15)
      {
        memmove(v3, v15, *(&v15 + 1) - v15);
      }

      if (v11)
      {
        *(&v15 + 1) = v11;
        operator delete(v11);
      }

      v12 = a1[1];
      v13 = sub_23F2EB70C(v12);
      ++v12[14];
      v15 = 0uLL;
      v16 = 0;
      sub_23F2EDFA0(v13, &v15);
      v14 = v15;
      if (*(&v15 + 1) != v15)
      {
        memmove((v3 + 24), v15, *(&v15 + 1) - v15);
      }

      if (v14)
      {
        *(&v15 + 1) = v14;
        operator delete(v14);
      }

      v4 = a1[1];
      v6 = *(v4 + 48);
      v5 = *(v6 - 8);
      *(v4 + 32) = v5;
      v7 = *(v4 + 72);
      *(v4 + 112) = *(v7 - 8);
      *(v4 + 48) = v6 - 8;
      *(v4 + 72) = v7 - 8;
      v3 += 48;
      --v2;
    }

    while (v2);
  }

  sub_23F2C63D8();
}

void sub_23F0283B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16)
{
  sub_23EF3AE8C(&a13);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}