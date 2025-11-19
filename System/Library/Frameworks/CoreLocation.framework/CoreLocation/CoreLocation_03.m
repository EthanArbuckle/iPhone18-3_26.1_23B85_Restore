void sub_19B8F2770(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B8F278C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  sub_19B8B8AB0();
}

uint64_t sub_19B8F27D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      sub_19B8F26A0(a1, a4, v7);
      v7 += 64;
      a4 = v13 + 64;
      v13 += 64;
    }

    while (v7 != a3);
    v11 = 1;
    do
    {
      v8 = *(v5 + 8);
      if (v8)
      {
        *(v5 + 16) = v8;
        operator delete(v8);
      }

      v5 += 64;
    }

    while (v5 != a3);
  }

  return sub_19B8F28A4(v10);
}

uint64_t sub_19B8F28A4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_19B8F28DC(a1);
  }

  return a1;
}

void sub_19B8F28DC(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 56);
    if (v3)
    {
      *(v1 - 48) = v3;
      operator delete(v3);
    }

    v1 -= 64;
  }
}

uint64_t sub_19B8F2924(uint64_t a1)
{
  sub_19B8F295C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_19B8F295C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 64;
    v5 = *(v2 - 56);
    if (v5)
    {
      *(v2 - 48) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 64;
    }
  }
}

void *sub_19B8F29BC(void *result, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x38E38E38E38E38FLL)
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_19B8F2B74(a2);
    }

    sub_19B8B8A40();
  }

  return result;
}

void sub_19B8F2A88(void *a1, double a2, double a3)
{
  v5 = a1[7];
  v4 = a1[8];
  if (v5 >= v4)
  {
    v7 = a1[6];
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 4;
    v10 = v9 + 1;
    if ((v9 + 1) >> 60)
    {
      sub_19B8B8A40();
    }

    v11 = v4 - v7;
    if (v11 >> 3 > v10)
    {
      v10 = v11 >> 3;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF0;
    v13 = 0xFFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      sub_19B8F1750((a1 + 6), v13);
    }

    v14 = (16 * v9);
    *v14 = a2;
    v14[1] = a3;
    v6 = 16 * v9 + 16;
    memcpy(0, v7, v8);
    v15 = a1[6];
    a1[6] = 0;
    a1[7] = v6;
    a1[8] = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v5 = a2;
    v5[1] = a3;
    v6 = (v5 + 2);
  }

  a1[7] = v6;
}

void sub_19B8F2B74(unint64_t a1)
{
  if (a1 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  sub_19B8B8AB0();
}

void sub_19B8F2BD0(__int128 *a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      v6 = *v5;
      v7 = v5[2];
      *(a3 + 16) = v5[1];
      *(a3 + 32) = v7;
      *a3 = v6;
      *(a3 + 56) = 0;
      *(a3 + 64) = 0;
      *(a3 + 48) = 0;
      *(a3 + 48) = v5[3];
      *(a3 + 64) = *(v5 + 8);
      *(v5 + 6) = 0;
      *(v5 + 7) = 0;
      *(v5 + 8) = 0;
      v5 = (v5 + 72);
      a3 += 72;
    }

    while (v5 != a2);
    do
    {
      v8 = *(v4 + 6);
      if (v8)
      {
        *(v4 + 7) = v8;
        operator delete(v8);
      }

      v4 = (v4 + 72);
    }

    while (v4 != a2);
  }
}

uint64_t sub_19B8F2C60(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 72;
    v4 = *(v2 - 24);
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 72;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_19B8F2CC4(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v9 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 3);
    if (v9 + 1 > 0x38E38E38E38E38ELL)
    {
      sub_19B8B8A40();
    }

    v10 = 0x8E38E38E38E38E39 * ((v3 - *a1) >> 3);
    v11 = 2 * v10;
    if (2 * v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x1C71C71C71C71C7)
    {
      v12 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v12 = v11;
    }

    v24 = a1;
    if (v12)
    {
      sub_19B8F2B74(v12);
    }

    v13 = 72 * v9;
    v20 = 0;
    v21 = v13;
    v22 = 72 * v9;
    v23 = 0;
    v14 = *a2;
    v15 = a2[2];
    *(v13 + 16) = a2[1];
    *(v13 + 32) = v15;
    *v13 = v14;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    *(v13 + 48) = 0;
    sub_19B8F2E64(72 * v9 + 48, *(a2 + 6), *(a2 + 7), (*(a2 + 7) - *(a2 + 6)) >> 4);
    v8 = v22 + 72;
    v16 = *(a1 + 8);
    v17 = v21 + *a1 - v16;
    sub_19B8F2BD0(*a1, v16, v17);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    v19 = *(a1 + 16);
    *(a1 + 16) = v23;
    v22 = v18;
    v23 = v19;
    v20 = v18;
    v21 = v18;
    result = sub_19B8F2C60(&v20);
  }

  else
  {
    v5 = *a2;
    v6 = a2[2];
    *(v4 + 16) = a2[1];
    *(v4 + 32) = v6;
    *v4 = v5;
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
    *(v4 + 48) = 0;
    result = sub_19B8F2E64(v4 + 48, *(a2 + 6), *(a2 + 7), (*(a2 + 7) - *(a2 + 6)) >> 4);
    v8 = v4 + 72;
    *(a1 + 8) = v8;
  }

  *(a1 + 8) = v8;
  return result;
}

void sub_19B8F2E44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B8F2C60(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19B8F2E64(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 60))
    {
      sub_19B8F1750(result, a4);
    }

    sub_19B8B8A40();
  }

  return result;
}

void sub_19B8F2EE4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B8F2F00(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v7 = a1[2];
  v8 = *a1;
  if (a4 > (v7 - *a1) >> 4)
  {
    if (v8)
    {
      sub_19B8EBC04(a1);
      operator delete(*a1);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      if (!(v10 >> 60))
      {
        sub_19B8F23AC(v10);
      }
    }

    sub_19B8B8A40();
  }

  v11 = a1[1] - v8;
  if (a4 <= v11 >> 4)
  {
    sub_19B8F3078(a2, a3, v8);
    v16 = v15;
    v17 = a1[1];
    if (v17 != v15)
    {
      do
      {
        v18 = *(v17 - 8);
        if (v18)
        {
          sub_19B8750F8(v18);
        }

        v17 -= 16;
      }

      while (v17 != v16);
    }

    a1[1] = v16;
  }

  else
  {
    v12 = sub_19B8F3078(a2, (a2 + v11), v8);
    for (i = a1[1]; v12 != a3; i += 2)
    {
      v14 = v12[1];
      *i = *v12;
      i[1] = v14;
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      }

      v12 += 2;
    }

    a1[1] = i;
  }
}

uint64_t *sub_19B8F3078(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      v8 = a3[1];
      *a3 = v7;
      a3[1] = v6;
      if (v8)
      {
        sub_19B8750F8(v8);
      }

      v4 += 2;
      a3 += 2;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

void sub_19B8F31C8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0E6B9D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE98C0);
}

void sub_19B8F321C(uint64_t a1)
{
  v2 = *(a1 + 208);
  if (v2)
  {
    *(a1 + 216) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 184);
  if (v3)
  {
    *(a1 + 192) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 160);
  if (v4)
  {
    *(a1 + 168) = v4;
    operator delete(v4);
  }

  if (*(a1 + 95) < 0)
  {
    v5 = *(a1 + 72);

    operator delete(v5);
  }
}

void sub_19B8F32B8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0E6BA20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE98C0);
}

void sub_19B8F330C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    sub_19B8750F8(v1);
  }
}

uint64_t sub_19B8F3320(uint64_t a1, uint64_t *a2, char a3, char a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0xBFF0000000000000;
  __asm { FMOV            V6.2D, #-1.0 }

  *(a1 + 40) = _Q6;
  *(a1 + 56) = 0;
  *(a1 + 64) = 256;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 104) = xmmword_19BA89720;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = xmmword_19BA89720;
  *(a1 + 168) = 0;
  v31 = *a2;
  v32 = a2[1];
  if (v32)
  {
    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 16) = a5;
    *(a1 + 24) = a6;
    *(a1 + 32) = a7;
    *(a1 + 40) = a8;
    *(a1 + 48) = a9;
    *(a1 + 56) = a10;
    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
    v33 = *(a1 + 8);
    *a1 = v31;
    *(a1 + 8) = v32;
    if (v33)
    {
      sub_19B8750F8(v33);
    }
  }

  else
  {
    *(a1 + 16) = a5;
    *(a1 + 24) = a6;
    *(a1 + 32) = a7;
    *(a1 + 40) = a8;
    *(a1 + 48) = a9;
    *(a1 + 56) = a10;
    *a1 = v31;
    *(a1 + 8) = 0;
  }

  *(a1 + 64) = a3;
  *(a1 + 65) = a4;
  *(a1 + 72) = a11;
  *(a1 + 80) = a12;
  *(a1 + 88) = a17;
  *(a1 + 128) = a18;
  *(a1 + 136) = a19;
  *(a1 + 144) = a20;
  *(a1 + 152) = a21;
  if (v32)
  {
    sub_19B8750F8(v32);
  }

  return a1;
}

uint64_t *sub_19B8F3444(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_19B8F128C(a1, a2);
  v4 = a2[7];
  if (v4)
  {
    sub_19B8750F8(v4);
  }

  operator delete(a2);
  return v3;
}

void sub_19B8F3484(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_19B8F3484(a1, *a2);
    sub_19B8F3484(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t sub_19B8F34D8(uint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = *(result + 8);
  if (!v3)
  {
LABEL_11:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = v3[4];
      v6 = v4[5];
      v7 = v6 > a3;
      if (v5 != a2)
      {
        v7 = v5 > a2;
      }

      if (!v7)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_11;
      }
    }

    v8 = v6 < a3;
    v9 = v5 == a2;
    v10 = v5 < a2;
    if (v9)
    {
      v10 = v8;
    }

    if (!v10)
    {
      return result;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_11;
    }
  }
}

void *sub_19B8F35D8(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_11:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = v3[4];
      v6 = v4[5];
      v7 = v6 > a3;
      if (v5 != a2)
      {
        v7 = v5 > a2;
      }

      if (!v7)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_11;
      }
    }

    v8 = v6 < a3;
    v9 = v5 == a2;
    v10 = v5 < a2;
    if (v9)
    {
      v10 = v8;
    }

    if (!v10)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_11;
    }
  }
}

void sub_19B8F36F0(void *a1)
{
  if (a1)
  {
    sub_19B8F36F0(*a1);
    sub_19B8F36F0(a1[1]);
    v2 = a1[11];
    if (v2)
    {
      sub_19B8750F8(v2);
    }

    v3 = a1[9];
    if (v3)
    {
      sub_19B8750F8(v3);
    }

    v4 = a1[7];
    if (v4)
    {
      sub_19B8750F8(v4);
    }

    operator delete(a1);
  }
}

uint64_t sub_19B8F3760(uint64_t a1, unint64_t *a2)
{
  v2 = *sub_19B8F08E8(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_19B8F381C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0E6BA70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE98C0);
}

void sub_19B8F3870(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 40);
    if (v3 != v1)
    {
      do
      {
        v5 = *(v3 - 24);
        if (v5)
        {
          *(v3 - 16) = v5;
          operator delete(v5);
        }

        v3 -= 72;
      }

      while (v3 != v1);
      v4 = *(a1 + 40);
    }

    *(a1 + 48) = v1;

    operator delete(v4);
  }
}

void sub_19B8F38F8(uint64_t a1, _DWORD *a2, double *a3)
{
  if (*a2 == 4)
  {
    ++*(a1 + 44);
  }

  else if (*a2 == 1)
  {
    ++*(a1 + 40);
    sub_19B8F3930(a1, a3);
  }
}

double sub_19B8F3930(uint64_t a1, double *a2)
{
  v4 = *(a1 + 32);
  if (v4 > 0.0)
  {
    v5 = *a2 - v4;
    v7 = *(a1 + 8);
    v6 = *(a1 + 16);
    if (v7 >= v6)
    {
      v9 = *a1;
      v10 = v7 - *a1;
      v11 = v10 >> 3;
      v12 = (v10 >> 3) + 1;
      if (v12 >> 61)
      {
        sub_19B8F3F74();
      }

      v13 = v6 - v9;
      if (v13 >> 2 > v12)
      {
        v12 = v13 >> 2;
      }

      v14 = v13 >= 0x7FFFFFFFFFFFFFF8;
      v15 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v14)
      {
        v15 = v12;
      }

      if (v15)
      {
        sub_19B8D9954(a1, v15);
      }

      *(8 * v11) = v5;
      v8 = 8 * v11 + 8;
      memcpy(0, v9, v10);
      v16 = *a1;
      *a1 = 0;
      *(a1 + 8) = v8;
      *(a1 + 16) = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v7 = v5;
      v8 = (v7 + 1);
    }

    *(a1 + 8) = v8;
  }

  result = *a2;
  *(a1 + 32) = *a2;
  return result;
}

uint64_t sub_19B8F3A34(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  if (((v3 - *a1) >> 3) >= 1)
  {
    v5 = v4 + 1;
    v6 = *v4;
    if (v4 == v3 || v5 == v3)
    {
      v8 = *a1;
    }

    else
    {
      v9 = *v4;
      v10 = v4 + 1;
      v11 = *a1;
      v12 = v4 + 1;
      do
      {
        v13 = *v12++;
        v14 = v13;
        if (v13 < v9)
        {
          v9 = v14;
          v11 = v10;
        }

        v10 = v12;
      }

      while (v12 != v3);
      v15 = *v11;
      v8 = *a1;
      v16 = v4 + 1;
      do
      {
        v17 = *v16++;
        v18 = v17;
        if (v6 < v17)
        {
          v6 = v18;
          v8 = v5;
        }

        v5 = v16;
      }

      while (v16 != v3);
    }

    v19 = 0.0;
    while (v4 != v3)
    {
      v20 = *v4++;
      v19 = v19 + v20;
    }

    v21 = *v8;
  }

  v22 = *(a1 + 48);
  if (*a2 >= 1)
  {
    v23 = v22 * 100.0 / *a2;
  }

  if (v22 >= 1)
  {
    v24 = *(a1 + 40);
  }

  if (*a3 >= 1)
  {
    v25 = *(a1 + 52) * 100.0 / *a3;
  }

  v26 = *(a1 + 56);
  if (v26 >= 1)
  {
    v27 = *(a1 + 24) / v26;
  }

  v28 = *(a1 + 60);
  if (v28 >= 1)
  {
    v29 = *(a1 + 64) * -100.0 / v28 + 1.0;
  }

  return AnalyticsSendEventLazy();
}

uint64_t sub_19B8F3C54(uint64_t a1)
{
  v12[11] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v11[0] = @"tspiiPercentageOfValidInputData";
  v12[0] = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 40)];
  v11[1] = @"tspiiPercentageOfInputGpsData";
  v12[1] = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 48)];
  v11[2] = @"tspiiPercentageOfInputWifiData";
  v12[2] = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 56)];
  v11[3] = @"tspiiPercentageOfValidInertialData";
  v12[3] = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 64)];
  v11[4] = @"tspiiMeanDurationOfGapsInInertialData";
  v12[4] = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 72)];
  v11[5] = @"tspiiNumberOfGapsInInertialData";
  v12[5] = [MEMORY[0x1E696AD98] numberWithInt:*(v2 + 56)];
  v11[6] = @"tspiiNumberOfVdrAttempts";
  v12[6] = [MEMORY[0x1E696AD98] numberWithInt:*(v2 + 60)];
  v11[7] = @"tspiiPercentageOfFailedVdrAttempts";
  v12[7] = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 80)];
  v11[8] = @"tspiiMinPeriodBetweenGpsFixes";
  v12[8] = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 88)];
  v11[9] = @"tspiiMaxPeriodBetweenGpsFixes";
  v12[9] = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 96)];
  v11[10] = @"tspiiMeanPeriodBetweenGpsFixes";
  v12[10] = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 104)];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:11];
  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAB0);
  }

  v4 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138477827;
    v10 = v3;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "CLTSP,II,sendTripSegmentInertialIntegratorAnalytics: \n%{private}@", buf, 0xCu);
  }

  v5 = sub_19B87DD40();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAB0);
    }

    v6 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentInertialIntegratorCAStats::sendTripSegmentInertialIntegratorAnalytics(const int &, const int &)_block_invoke", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

os_log_t sub_19B8F3F8C()
{
  result = os_log_create("com.apple.locationd.Position", "TripSegmentProcessor");
  qword_1EAFE46E8 = result;
  return result;
}

void sub_19B8F3FBC(id *a1, id *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v47 = v12;
    v48 = v11;
    v49 = v10;
    v50 = v9;
    v51 = v8;
    v52 = v7;
    v53 = v6;
    v54 = v5;
    v55 = v3;
    v56 = v4;
    v15 = a1;
    v16 = 0;
    v44 = 0.0;
    v43 = 0.0;
    v17 = 0.0;
    do
    {
      [*v15 latitude];
      v19 = v18;
      [*v15 longitude];
      v21 = v20;
      [*v15 altitude];
      v23 = v22;
      v24 = __sincos_stret(v19 * 0.0174532925);
      v25 = __sincos_stret(v21 * 0.0174532925);
      v26 = 6378137.0 / sqrt(v24.__sinval * -0.00669437999 * v24.__sinval + 1.0);
      v27 = v24.__cosval * (v23 + v26);
      v28 = v23 + v26 * 0.99330562;
      v29 = v25.__sinval * v27;
      v30 = v24.__sinval * v28;
      if (!v16)
      {
        v17 = v24.__sinval * v28;
      }

      v41 = v25.__cosval * v27;
      v42 = v17;
      v32 = v43;
      v31 = v44;
      if (!v16)
      {
        v32 = v25.__sinval * v27;
        v31 = v25.__cosval * v27;
      }

      [*v15 latitude];
      v34 = v33;
      v35 = *v15++;
      [v35 longitude];
      v37 = v36;
      v38 = __sincos_stret(v34 * 0.0174532925);
      v39 = __sincos_stret(v37 * 0.0174532925);
      v43 = v32;
      v44 = v31;
      v40 = v29 - v32;
      v17 = v42;
      *&v45 = v39.__cosval * v40 - v39.__sinval * (v41 - v31);
      *(&v45 + 1) = -(v38.__sinval * v39.__sinval) * v40 + -(v38.__sinval * v39.__cosval) * (v41 - v31) + v38.__cosval * (v30 - v42);
      v46 = v38.__cosval * v39.__sinval * v40 + v38.__cosval * v39.__cosval * (v41 - v31) + v38.__sinval * (v30 - v42);
      sub_19B8F4190(a3, &v45);
      --v16;
    }

    while (v15 != a2);
  }
}

void sub_19B8F4190(uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_19B8B8A40();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
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
      sub_19B8FCEEC(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

void sub_19B8F4298(uint64_t *a1, void *a2, uint64_t a3)
{
  v43 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v39 = 0;
    v40[0] = 0.0;
    v38 = 0;
    [a2 latitude];
    v7 = v6;
    [a2 longitude];
    v9 = v8;
    [a2 altitude];
    v11 = *a1;
    if (a1[1] != *a1)
    {
      v12 = v10;
      v13 = __sincos_stret(v7 * 0.0174532925);
      v14 = 6378137.0 / sqrt(v13.__sinval * -0.00669437999 * v13.__sinval + 1.0);
      v15 = v13.__sinval * (v12 + v14 * 0.99330562);
      v16 = __sincos_stret(v9 * 0.0174532925);
      v17 = 0;
      v18 = 0;
      v19 = v13.__cosval * (v12 + v14);
      v20 = v16.__sinval * v19;
      v21 = v16.__cosval * v19;
      v22 = 0.0;
      v23 = 0.0;
      v24 = 0.0;
      do
      {
        if (!v17)
        {
          v24 = v21;
          v23 = v20;
          v22 = v15;
        }

        v25 = *(v11 + v17 + 8);
        v37 = *(v11 + v17);
        v26 = *(v11 + v17 + 16);
        [a2 latitude];
        v28 = v27;
        [a2 longitude];
        v30 = v29;
        v31 = __sincos_stret(v28 * 0.0174532925);
        v32 = __sincos_stret(v30 * 0.0174532925);
        v21 = v24 + v25 * -(v31.__sinval * v32.__cosval) - v32.__sinval * v37 + v31.__cosval * v32.__cosval * v26;
        v20 = v23 + v25 * -(v31.__sinval * v32.__sinval) + v32.__cosval * v37 + v31.__cosval * v32.__sinval * v26;
        v15 = v22 + v26 * v31.__sinval + v31.__cosval * v25;
        sub_19B9C7BD0(v40, &v39, &v38, v21, v20, v15);
        *&buf = v40[0];
        *(&buf + 1) = v39;
        v42 = v38;
        sub_19B8F4190(a3, &buf);
        ++v18;
        v11 = *a1;
        v17 += 24;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) > v18);
    }
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    v33 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_19B873000, v33, OS_LOG_TYPE_ERROR, "CLTSP,II,convertENUtoLLA,detected null input", &buf, 2u);
    }

    v34 = sub_19B87DD40();
    if ((*(v34 + 160) & 0x80000000) == 0 || (*(v34 + 164) & 0x80000000) == 0 || (*(v34 + 168) & 0x80000000) == 0 || *(v34 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
      }

      LOWORD(v40[0]) = 0;
      v35 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "void convertENUtoLLA(const std::vector<std::array<double, 3>> &, const CLTripSegmentLocation *, std::vector<std::array<double, 3>> &)", "CoreLocation: %s\n", v35);
      if (v35 != &buf)
      {
        free(v35);
      }
    }
  }

  v36 = *MEMORY[0x1E69E9840];
}

void sub_19B8F4620(void *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    v2 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
    {
      [objc_msgSend(a1 "timestamp")];
      v4 = v3;
      [a1 dataPeriod_s];
      v6 = v5;
      [a1 deltaCourse_rad];
      v8 = v7;
      [a1 deltaSpeed_mps];
      v10 = v9;
      [a1 deltaCourseVar_rad2];
      v12 = v11;
      [a1 deltaSpeedVar_mps2];
      v14 = v13;
      [a1 deltaCourseSpeedCovar_radmps];
      *buf = 134350593;
      v22 = v4;
      v23 = 2050;
      v24 = v6;
      v25 = 2049;
      v26 = v8;
      v27 = 2049;
      v28 = v10;
      v29 = 2050;
      v30 = v12;
      v31 = 2050;
      v32 = v14;
      v33 = 2050;
      v34 = v15;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEBUG, "CLTSP,II,inertialData,time,%{public}.3lf,dataPeriod,%{public}.7lf,deltaCourse,%{private}.6lf,deltaSpeed,%{private}.6lf,deltaCourseVar,%{public}.8lf,deltaSpeedVar,%{public}.8lf,deltaCourseSpeedCovar,%{public}.8lf", buf, 0x48u);
    }

    v16 = sub_19B87DD40();
    if (*(v16 + 160) <= 1 && *(v16 + 164) <= 1 && *(v16 + 168) <= 1 && !*(v16 + 152))
    {
      goto LABEL_25;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    [objc_msgSend(a1 "timestamp")];
    [a1 dataPeriod_s];
    [a1 deltaCourse_rad];
    [a1 deltaSpeed_mps];
    [a1 deltaCourseVar_rad2];
    [a1 deltaSpeedVar_mps2];
    [a1 deltaCourseSpeedCovar_radmps];
    v17 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "void printInertialDataDebugLog(CLTripSegmentInertialData *)", "CoreLocation: %s\n", v17);
    if (v17 == buf)
    {
      goto LABEL_25;
    }

LABEL_24:
    free(v17);
    goto LABEL_25;
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
  }

  v18 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_ERROR, "CLTSP,II,printInertialDataDebugLog,detected null inertialData", buf, 2u);
  }

  v19 = sub_19B87DD40();
  if ((*(v19 + 160) & 0x80000000) == 0 || (*(v19 + 164) & 0x80000000) == 0 || (*(v19 + 168) & 0x80000000) == 0 || *(v19 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    v17 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "void printInertialDataDebugLog(CLTripSegmentInertialData *)", "CoreLocation: %s\n", v17);
    if (v17 != buf)
    {
      goto LABEL_24;
    }
  }

LABEL_25:
  v20 = *MEMORY[0x1E69E9840];
}

void sub_19B8F4A54(void *a1, int a2, void *a3, uint64_t *a4)
{
  v73 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    [a3 speedAccuracy];
    v9 = v8;
    if ([a3 isLoiLocationType])
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
      }

      v10 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
      {
        [a3 speedAccuracy];
        *buf = 134349312;
        v46 = v11;
        v47 = 2050;
        *v48 = 0xBFF0000000000000;
        _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEBUG, "CLTSP,II,printLocationDebugLog,location is LOI or reconstructed from LOI,sunc,%{public}.7lf,invalidated to,%{public}.1lf", buf, 0x16u);
      }

      v12 = sub_19B87DD40();
      if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || (v9 = -1.0, *(v12 + 152)))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
        }

        [a3 speedAccuracy];
        v13 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "void printLocationDebugLog(NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, CLTripSegmentLocation *, const std::string)", "CoreLocation: %s\n", v13);
        if (v13 != buf)
        {
          free(v13);
        }

        v9 = -1.0;
      }
    }

    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    v14 = qword_1EAFE46E8;
    v15 = &off_19BA89000;
    v43 = v9;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
    {
      v16 = a4;
      if (*(a4 + 23) < 0)
      {
        v16 = *a4;
      }

      [objc_msgSend(a3 "timestamp")];
      v42 = v17;
      [a3 latitude];
      v19 = v18;
      [a3 longitude];
      v21 = v20;
      [a3 altitude];
      v23 = v22;
      [a3 speed];
      v25 = v24;
      [a3 course];
      v27 = v26;
      [a3 horizontalAccuracy];
      v29 = v28;
      [a3 altitudeAccuracy];
      v31 = v30;
      [a3 courseAccuracy];
      v33 = v32;
      v34 = [a3 locType];
      v35 = [objc_msgSend(a1 "UUIDString")];
      *buf = 136449795;
      v46 = v16;
      v15 = &off_19BA89000;
      v47 = 1026;
      *v48 = 1;
      *&v48[4] = 1026;
      *&v48[6] = a2;
      v49 = 2050;
      v50 = v42;
      v51 = 2053;
      v52 = v19;
      v53 = 2053;
      v54 = v21;
      v55 = 2050;
      v56 = v23;
      v57 = 2050;
      v58 = v25;
      v59 = 2050;
      v60 = v27;
      v61 = 2050;
      v62 = v29;
      v63 = 2050;
      v64 = v31;
      v65 = 2050;
      v66 = v43;
      v67 = 2050;
      v68 = v33;
      v69 = 1026;
      v70 = v34;
      v71 = 2082;
      v72 = v35;
      _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_DEBUG, "CLTSP,II,locType,%{public}s,mode,%{public}d,final,%{public}d,time,%{public}.3lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,altitude,%{public}.2lf,speed,%{public}.2lf,course,%{public}.2lf,hunc,%{public}.2lf,vunc,%{public}.2lf,sunc,%{public}.7lf,cunc,%{public}.7lf,type,%{public}d,id,%{public}s", buf, 0x8Cu);
    }

    v36 = sub_19B87DD40();
    if (*(v36 + 160) > 1 || *(v36 + 164) > 1 || *(v36 + 168) > 1 || *(v36 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
      }

      if (*(a4 + 23) < 0)
      {
        v37 = *a4;
      }

      [objc_msgSend(a3 "timestamp")];
      [a3 latitude];
      [a3 longitude];
      [a3 altitude];
      [a3 speed];
      [a3 course];
      [a3 horizontalAccuracy];
      [a3 altitudeAccuracy];
      [a3 courseAccuracy];
      [a3 locType];
      [objc_msgSend(a1 "UUIDString")];
      v44 = *(v15 + 282);
      v38 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "void printLocationDebugLog(NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, CLTripSegmentLocation *, const std::string)", "CoreLocation: %s\n");
LABEL_41:
      if (v38 != buf)
      {
        free(v38);
      }
    }
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    v39 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v39, OS_LOG_TYPE_ERROR, "CLTSP,II,printLocationDebugLog,detected null locationData", buf, 2u);
    }

    v40 = sub_19B87DD40();
    if ((*(v40 + 160) & 0x80000000) == 0 || (*(v40 + 164) & 0x80000000) == 0 || (*(v40 + 168) & 0x80000000) == 0 || *(v40 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
      }

      v38 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "void printLocationDebugLog(NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, CLTripSegmentLocation *, const std::string)", "CoreLocation: %s\n");
      goto LABEL_41;
    }
  }

  v41 = *MEMORY[0x1E69E9840];
}

void sub_19B8F518C(const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_19B8F3F74();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_19B8D9954(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void sub_19B8F526C(double a1, double a2)
{
  if (a2 == 0.0)
  {
    exp(a1);
    return;
  }

  if (fabs(a1) == INFINITY)
  {
    if (a1 >= 0.0)
    {
      if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        return;
      }
    }

    else if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      a2 = 1.0;
    }
  }

  v2 = a2;
  exp(a1);
  __sincos_stret(v2);
}

BOOL sub_19B8F5338(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    v18 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_ERROR, "CLTSP,II,isLocationSpeedAndCourseValid,detected null location", buf, 2u);
    }

    v19 = sub_19B87DD40();
    if ((*(v19 + 160) & 0x80000000) == 0 || (*(v19 + 164) & 0x80000000) == 0 || (*(v19 + 168) & 0x80000000) == 0 || *(v19 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
      }

      v20 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL isLocationSpeedAndCourseValid(CLTripSegmentLocation *)", "CoreLocation: %s\n", v20);
      if (v20 != buf)
      {
        free(v20);
      }
    }

    goto LABEL_55;
  }

  [a1 speed];
  v5 = v2 > -1 && ((v2 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (v2 - 1) < 0xFFFFFFFFFFFFFLL || (v2 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if (!v5 || (([a1 course], v6 > -1) ? (v7 = ((v6 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) : (v7 = 1), v7 ? (v8 = (v6 - 1) >= 0xFFFFFFFFFFFFFLL) : (v8 = 0), v8 ? (v9 = (v6 & 0x7FFFFFFFFFFFFFFFLL) == 0) : (v9 = 1), !v9))
  {
LABEL_55:
    result = 0;
    goto LABEL_56;
  }

  [a1 speedAccuracy];
  result = 0;
  v13 = (v10 < 0.0 || ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (*&v10 - 1) > 0xFFFFFFFFFFFFELL;
  if (!v13 && v10 < 20.0)
  {
    [a1 courseAccuracy];
    v17 = ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF && v14 >= 0.0 || (*&v14 - 1) < 0xFFFFFFFFFFFFFLL;
    result = v14 < 180.0 && v17;
  }

LABEL_56:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B8F55DC(void *a1, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    [a1 setLocationReconstructionType:a4];
    [a1 setStartLocationType:*a2];
    v7 = *a3;
    v8 = *MEMORY[0x1E69E9840];

    [a1 setStopLocationType:v7];
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    v9 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_ERROR, "CLTSP,II,handleLocationType,detected null location", buf, 2u);
    }

    v10 = sub_19B87DD40();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
      }

      v11 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "void handleLocationType(CLTripSegmentLocation *, const CLLocationType &, const CLLocationType &, const ReconstructedLocationType &)", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    v12 = *MEMORY[0x1E69E9840];
  }
}

void sub_19B8F57E0(void *a1, double *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    [a1 speed];
    if (v4 > -1 && ((v4 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (v4 - 1) < 0xFFFFFFFFFFFFFLL || (v4 & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      [a1 speed];
      v13 = v8;
    }

    else
    {
      v13 = *a2;
    }

    [a1 course];
    if (v14 > -1 && ((v14 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (v14 - 1) < 0xFFFFFFFFFFFFFLL || (v14 & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      [a1 course];
      v19 = v18;
    }

    else
    {
      v19 = a2[2];
    }

    [a1 speedAccuracy];
    v22 = (v20 < 0.0 || ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (*&v20 - 1) > 0xFFFFFFFFFFFFELL;
    if (v22 || v20 >= 20.0)
    {
      v24 = a2[1];
    }

    else
    {
      [a1 speedAccuracy];
      v24 = v23;
    }

    [a1 courseAccuracy];
    v27 = (v25 < 0.0 || ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (*&v25 - 1) > 0xFFFFFFFFFFFFELL;
    if (v27 || v25 >= 180.0)
    {
      v29 = a2[3];
    }

    else
    {
      [a1 courseAccuracy];
      v29 = v28;
    }

    [a1 updateCourse:v19 andCourseAccuracy:v29];
    v30 = *MEMORY[0x1E69E9840];

    [a1 updateSpeed:v13 andSpeedAccuracy:v24];
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    v9 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_ERROR, "CLTSP,II,updateSpeedAndCourse,detected null location", buf, 2u);
    }

    v10 = sub_19B87DD40();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
      }

      v11 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "void updateSpeedAndCourse(CLTripSegmentLocation *, const CLInertialIntegratorLastEstimatedParameters &)", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    v12 = *MEMORY[0x1E69E9840];
  }
}

void sub_19B8F5B44(void *a1, int a2, void *a3, void *a4, double *a5)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (sub_19B8F5338(a4))
    {
      v10 = 1;
    }

    else
    {
      sub_19B8F57E0(a4, a5);
      v10 = 2;
    }

    [a4 setLocationReconstructionType:v10];
    [a4 setStartLocationType:0];
    [a4 setStopLocationType:0];
    [a3 addObject:a4];
    sub_19B8759E8(__p, "reconstructed");
    sub_19B8F4A54(a1, a2, a4, __p);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    v11 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_ERROR, "CLTSP,II,addLocation,detected null reconstructedLocations", buf, 2u);
    }

    v12 = sub_19B87DD40();
    if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
      }

      v17 = 0;
      v13 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "void addLocation(NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, CLTripSegmentLocation *, const CLInertialIntegratorLastEstimatedParameters &)", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_19B8F5D88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_19B8F5DAC(_BYTE *a1, void *a2, int a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v309 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    v57 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v57, OS_LOG_TYPE_ERROR, "CLTSP,II,reconstructTripSegment,null tripSegmentID", buf, 2u);
    }

    v58 = sub_19B87DD40();
    if ((*(v58 + 160) & 0x80000000) != 0 && (*(v58 + 164) & 0x80000000) != 0 && (*(v58 + 168) & 0x80000000) != 0 && !*(v58 + 152))
    {
      goto LABEL_124;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 == -1)
    {
      goto LABEL_111;
    }

    goto LABEL_503;
  }

  if (!a5)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    v59 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v59, OS_LOG_TYPE_ERROR, "CLTSP,II,reconstructTripSegment,null tripSegmentLocations", buf, 2u);
    }

    v60 = sub_19B87DD40();
    if ((*(v60 + 160) & 0x80000000) != 0 && (*(v60 + 164) & 0x80000000) != 0 && (*(v60 + 168) & 0x80000000) != 0 && !*(v60 + 152))
    {
      goto LABEL_124;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 == -1)
    {
      goto LABEL_111;
    }

    goto LABEL_503;
  }

  if (!a6)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    v61 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v61, OS_LOG_TYPE_ERROR, "CLTSP,II,reconstructTripSegment,null inertialData", buf, 2u);
    }

    v62 = sub_19B87DD40();
    if ((*(v62 + 160) & 0x80000000) != 0 && (*(v62 + 164) & 0x80000000) != 0 && (*(v62 + 168) & 0x80000000) != 0 && !*(v62 + 152))
    {
      goto LABEL_124;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 == -1)
    {
      goto LABEL_111;
    }

LABEL_503:
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
LABEL_111:
    LOWORD(__p[0]) = 0;
    v63 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentInertialIntegrator::reconstructTripSegment(NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentInertialData *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull) const", "CoreLocation: %s\n", v63);
    goto LABEL_122;
  }

  v7 = a4;
  if (a4 != 1)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    v64 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      *&buf[4] = v7;
      _os_log_impl(&dword_19B873000, v64, OS_LOG_TYPE_ERROR, "CLTSP,II,reconstructTripSegment,unsupported mode of transportation,%{public}d", buf, 8u);
    }

    v65 = sub_19B87DD40();
    if ((*(v65 + 160) & 0x80000000) != 0 && (*(v65 + 164) & 0x80000000) != 0 && (*(v65 + 168) & 0x80000000) != 0 && !*(v65 + 152))
    {
      goto LABEL_124;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    LODWORD(__p[0]) = 67240192;
    HIDWORD(__p[0]) = v7;
    v63 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentInertialIntegrator::reconstructTripSegment(NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentInertialData *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull) const", "CoreLocation: %s\n", v63);
LABEL_122:
    if (v63 != buf)
    {
      free(v63);
    }

LABEL_124:
    v66 = 0;
    goto LABEL_125;
  }

  v283 = 0;
  v278 = 0u;
  v279 = 0u;
  v280 = 0.0;
  *&v281 = 200.0;
  v282 = 0;
  v271 = 0u;
  v272 = 0u;
  v273 = 0xBFF0000000000000;
  v274 = 0;
  v276 = 0;
  v275 = 0;
  v277 = 0;
  obj = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = &off_19BA89000;
  if (obj)
  {
    if ([a5 count])
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
      }

      v9 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
      {
        [objc_msgSend(objc_msgSend(a5 objectAtIndexedSubscript:{0), "timestamp"), "timeIntervalSinceReferenceDate"}];
        v11 = v10;
        [objc_msgSend(objc_msgSend(a5 objectAtIndexedSubscript:{objc_msgSend(a5, "count") - 1), "timestamp"), "timeIntervalSinceReferenceDate"}];
        *buf = 134349312;
        *&buf[4] = v11;
        v301 = 2050;
        v302 = v12;
        _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEBUG, "CLTSP,II,checkForSpeedIntegrity,first location timestamp,%{public}.3lf,last location timestamp,%{public}.3lf", buf, 0x16u);
      }

      v13 = sub_19B87DD40();
      if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
        }

        [objc_msgSend(objc_msgSend(a5 objectAtIndexedSubscript:{0), "timestamp"), "timeIntervalSinceReferenceDate"}];
        v15 = v14;
        [objc_msgSend(objc_msgSend(a5 objectAtIndexedSubscript:{objc_msgSend(a5, "count") - 1), "timestamp"), "timeIntervalSinceReferenceDate"}];
        LODWORD(__p[0]) = 134349312;
        *(__p + 4) = v15;
        WORD2(__p[1]) = 2050;
        *(&__p[1] + 6) = v16;
        v17 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "void checkForSpeedIntegrity(NSArray<CLTripSegmentLocation *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v17);
        if (v17 != buf)
        {
          free(v17);
        }
      }

      v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if ([a5 count] != 1)
      {
        v20 = 0;
        do
        {
          v21 = v20 + 1;
          [objc_msgSend(objc_msgSend(a5 objectAtIndexedSubscript:{v20 + 1), "timestamp"), "timeIntervalSinceDate:", objc_msgSend(objc_msgSend(a5, "objectAtIndexedSubscript:", v20), "timestamp")}];
          if (fabs(v22) > 0.001)
          {
            [v18 addObject:{objc_msgSend(a5, "objectAtIndexedSubscript:", v20)}];
          }

          ++v20;
        }

        while ([a5 count] - 1 > v21);
      }

      [v18 addObject:{objc_msgSend(a5, "objectAtIndexedSubscript:", objc_msgSend(a5, "count") - 1)}];
      [v19 addObject:{objc_msgSend(v18, "objectAtIndexedSubscript:", 0)}];
      if (([v18 count] - 3) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v23 = 1;
        do
        {
          [objc_msgSend(objc_msgSend(v18 objectAtIndexedSubscript:{v23), "timestamp"), "timeIntervalSinceDate:", objc_msgSend(objc_msgSend(v18, "objectAtIndexedSubscript:", v23 - 1), "timestamp")}];
          v25 = v24;
          v26 = v23 + 1;
          [objc_msgSend(objc_msgSend(v18 objectAtIndexedSubscript:{v23 + 1), "timestamp"), "timeIntervalSinceDate:", objc_msgSend(objc_msgSend(v18, "objectAtIndexedSubscript:", v23), "timestamp")}];
          v28 = v27;
          if (![objc_msgSend(v18 objectAtIndexedSubscript:{v23 - 1), "isGPSLocationType"}] || !objc_msgSend(objc_msgSend(v18, "objectAtIndexedSubscript:", v23), "isGPSLocationType"))
          {
            goto LABEL_80;
          }

          v29 = [objc_msgSend(v18 objectAtIndexedSubscript:{v23 + 1), "isGPSLocationType"}];
          v30 = v25 <= 2.0 ? v29 : 0;
          if (v30 != 1 || v28 > 2.0)
          {
            goto LABEL_80;
          }

          [objc_msgSend(v18 objectAtIndexedSubscript:{v23 - 1), "speedAccuracy"}];
          v32 = v31 <= -1 || ((v31 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF;
          v33 = v32 && (v31 - 1) >= 0xFFFFFFFFFFFFFLL;
          if (v33 && (v31 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            goto LABEL_80;
          }

          [objc_msgSend(v18 objectAtIndexedSubscript:{v23), "speedAccuracy"}];
          v36 = v35 <= -1 || ((v35 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF;
          v37 = v36 && (v35 - 1) >= 0xFFFFFFFFFFFFFLL;
          if (v37 && (v35 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            goto LABEL_80;
          }

          [objc_msgSend(v18 objectAtIndexedSubscript:{v23 + 1), "speedAccuracy"}];
          v40 = v39 <= -1 || ((v39 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF;
          v41 = v40 && (v39 - 1) >= 0xFFFFFFFFFFFFFLL;
          if (v41 && (v39 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            goto LABEL_80;
          }

          [objc_msgSend(v18 objectAtIndexedSubscript:{v23), "speed"}];
          v44 = v43;
          [objc_msgSend(v18 objectAtIndexedSubscript:{v23 - 1), "speed"}];
          if (vabdd_f64(v44, v45) < 6.0)
          {
            goto LABEL_80;
          }

          [objc_msgSend(v18 objectAtIndexedSubscript:{v23 + 1), "speed"}];
          v47 = v46;
          [objc_msgSend(v18 objectAtIndexedSubscript:{v23), "speed"}];
          if (vabdd_f64(v47, v48) >= 6.0 && ([objc_msgSend(v18 objectAtIndexedSubscript:{v23 + 1), "speed"}], v50 = v49, objc_msgSend(objc_msgSend(v18, "objectAtIndexedSubscript:", v23 - 1), "speed"), vabdd_f64(v50, v51) * 0.5 < 6.0))
          {
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
            }

            v52 = qword_1EAFE46E8;
            if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
            {
              [objc_msgSend(objc_msgSend(v18 objectAtIndexedSubscript:{v23), "timestamp"), "timeIntervalSinceReferenceDate"}];
              *buf = 134349056;
              *&buf[4] = v53;
              _os_log_impl(&dword_19B873000, v52, OS_LOG_TYPE_ERROR, "CLTSP,II,checkForSpeedIntegrity,skipped GPS location point at timestamp,%{public}.3lf", buf, 0xCu);
            }

            v54 = sub_19B87DD40();
            if ((*(v54 + 160) & 0x80000000) == 0 || (*(v54 + 164) & 0x80000000) == 0 || (*(v54 + 168) & 0x80000000) == 0 || *(v54 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46B8 != -1)
              {
                dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
              }

              [objc_msgSend(objc_msgSend(v18 objectAtIndexedSubscript:{v23), "timestamp"), "timeIntervalSinceReferenceDate"}];
              LODWORD(__p[0]) = 134349056;
              *(__p + 4) = v55;
              v56 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 0, "void checkForSpeedIntegrity(NSArray<CLTripSegmentLocation *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v56);
              if (v56 != buf)
              {
                free(v56);
              }
            }
          }

          else
          {
LABEL_80:
            [v19 addObject:{objc_msgSend(v18, "objectAtIndexedSubscript:", v23)}];
          }

          ++v23;
        }

        while ([v18 count] - 1 > v26);
      }

      [v19 addObject:{objc_msgSend(v18, "objectAtIndexedSubscript:", objc_msgSend(v18, "count") - 1)}];
      if ([v19 count])
      {
        if (v18 && v19)
        {
          [v18 removeAllObjects];
          [v18 addObjectsFromArray:v19];
        }

        [v19 removeAllObjects];
      }

      v69 = 0;
      if (v18)
      {
        v70 = v19 == 0;
      }

      else
      {
        v70 = 1;
      }

      v71 = !v70;
      v262 = v71;
      memset(__p, 0, sizeof(__p));
      __src = 0uLL;
      *&v285 = 0;
      do
      {
        while (1)
        {
          v72 = v69;
          if ([v18 count] - 1 <= v69)
          {
            break;
          }

          ++v69;
          [objc_msgSend(objc_msgSend(v18 objectAtIndexedSubscript:{v72 + 1), "timestamp"), "timeIntervalSinceDate:", objc_msgSend(objc_msgSend(v18, "objectAtIndexedSubscript:", v72), "timestamp")}];
          v74 = v73;
          [objc_msgSend(v18 objectAtIndexedSubscript:{v72 + 1), "distanceFromLocation:", objc_msgSend(v18, "objectAtIndexedSubscript:", v72)}];
          *buf = v75 / v74;
          sub_19B8F518C(__p, buf);
          [objc_msgSend(v18 objectAtIndexedSubscript:{v72), "speed"}];
          if (v76 < 0.0 && v74 <= 2.0 && [objc_msgSend(v18 objectAtIndexedSubscript:{v72 + 1), "isGPSLocationType"}])
          {
            [objc_msgSend(v18 objectAtIndexedSubscript:{v72 + 1), "speed"}];
            v78 = v77 <= -1 || ((v77 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF;
            v79 = v78 && (v77 - 1) >= 0xFFFFFFFFFFFFFLL;
            if (!v79 || (v77 & 0x7FFFFFFFFFFFFFFFLL) == 0)
            {
              [objc_msgSend(v18 objectAtIndexedSubscript:{v72 + 1), "speedAccuracy"}];
              v83 = (v81 < 0.0 || ((*&v81 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (*&v81 - 1) > 0xFFFFFFFFFFFFELL;
              if (!v83 && v81 < 20.0)
              {
                v84 = [v18 objectAtIndexedSubscript:v72];
                [objc_msgSend(v18 objectAtIndexedSubscript:{v69), "speed"}];
                v86 = v85;
                [objc_msgSend(v18 objectAtIndexedSubscript:{v69), "speedAccuracy"}];
                [v84 updateSpeed:v86 andSpeedAccuracy:v87];
              }
            }
          }
        }

        v88 = __p[0];
        if ((__p[1] - __p[0]) >= 9)
        {
          v89 = 0;
          do
          {
            v90 = v89 + 1;
            if (vabdd_f64(v88[v89 + 1], v88[v89]) >= 6.0 && ([objc_msgSend(v18 objectAtIndexedSubscript:{v89 + 1), "isGPSLocationType"}] & 1) == 0)
            {
              v91 = *(&__src + 1);
              if (*(&__src + 1) >= v285)
              {
                v93 = __src;
                v94 = *(&__src + 1) - __src;
                v95 = (*(&__src + 1) - __src) >> 2;
                v96 = v95 + 1;
                if ((v95 + 1) >> 62)
                {
                  sub_19B8B8A40();
                }

                v97 = v285 - __src;
                if ((v285 - __src) >> 1 > v96)
                {
                  v96 = v97 >> 1;
                }

                v32 = v97 >= 0x7FFFFFFFFFFFFFFCLL;
                v98 = 0x3FFFFFFFFFFFFFFFLL;
                if (!v32)
                {
                  v98 = v96;
                }

                if (v98)
                {
                  sub_19B8F1D64(&__src, v98);
                }

                v99 = (4 * v95);
                v100 = v89 + 1;
                v101 = &v99[-((*(&__src + 1) - __src) >> 2)];
                *v99 = v100;
                v92 = v99 + 1;
                memcpy(v101, v93, v94);
                v102 = __src;
                *&__src = v101;
                *(&__src + 1) = v92;
                *&v285 = 0;
                if (v102)
                {
                  operator delete(v102);
                }
              }

              else
              {
                **(&__src + 1) = v89 + 1;
                v92 = (v91 + 4);
              }

              *(&__src + 1) = v92;
            }

            v88 = __p[0];
            v89 = v90;
          }

          while (((__p[1] - __p[0]) >> 3) - 1 > v90);
          for (i = 0; [v18 count] > i; ++i)
          {
            v104 = __src;
            if (__src == *(&__src + 1))
            {
              goto LABEL_199;
            }

            v105 = 0;
            do
            {
              v106 = *v104++;
              if (i == v106)
              {
                ++v105;
              }
            }

            while (v104 != *(&__src + 1));
            if (!v105)
            {
LABEL_199:
              [v19 addObject:{objc_msgSend(v18, "objectAtIndexedSubscript:", i)}];
            }

            else
            {
              [objc_msgSend(objc_msgSend(v18 objectAtIndexedSubscript:{i), "timestamp"), "timeIntervalSinceReferenceDate"}];
              v108 = v107;
              if (qword_1EAFE46B8 != -1)
              {
                dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
              }

              v109 = qword_1EAFE46E8;
              if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
              {
                *buf = 134349056;
                *&buf[4] = v108;
                _os_log_impl(&dword_19B873000, v109, OS_LOG_TYPE_DEBUG, "CLTSP,II,checkForSpeedIntegrity,skipped location point at timestamp,%{public}.3lf", buf, 0xCu);
              }

              v110 = sub_19B87DD40();
              if (*(v110 + 160) > 1 || *(v110 + 164) > 1 || *(v110 + 168) > 1 || *(v110 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46B8 != -1)
                {
                  dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
                }

                v289[0] = 134349056;
                *&v289[1] = v108;
                v111 = _os_log_send_and_compose_impl();
                sub_19B885924("Generic", 1, 0, 2, "void checkForSpeedIntegrity(NSArray<CLTripSegmentLocation *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v111);
                if (v111 != buf)
                {
                  free(v111);
                }
              }
            }
          }
        }

        v112 = *(&__src + 1);
        if ([v19 count])
        {
          if (v262)
          {
            [v18 removeAllObjects];
            [v18 addObjectsFromArray:v19];
          }

          [v19 removeAllObjects];
        }

        v69 = 0;
        __p[1] = __p[0];
        *(&__src + 1) = __src;
      }

      while (__src != v112);
      if ([v18 count] && v18)
      {
        [obj removeAllObjects];
        [obj addObjectsFromArray:v18];
      }

      [obj insertObject:objc_msgSend(a5 atIndex:{"objectAtIndexedSubscript:", 0), 0}];
      [obj addObject:{objc_msgSend(a5, "objectAtIndexedSubscript:", objc_msgSend(a5, "count") - 1)}];
      v8 = &off_19BA89000;
      if (__src)
      {
        *(&__src + 1) = __src;
        operator delete(__src);
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    else
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
      }

      v119 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v119, OS_LOG_TYPE_ERROR, "CLTSP,II,checkForSpeedIntegrity,empty inputLocations", buf, 2u);
      }

      v120 = sub_19B87DD40();
      if ((*(v120 + 160) & 0x80000000) == 0 || (*(v120 + 164) & 0x80000000) == 0 || (*(v120 + 168) & 0x80000000) == 0 || *(v120 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
        }

        LOWORD(__p[0]) = 0;
        v121 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "void checkForSpeedIntegrity(NSArray<CLTripSegmentLocation *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v121);
        if (v121 != buf)
        {
          free(v121);
        }
      }
    }

    v286 = 0u;
    v287 = 0u;
    __src = 0u;
    v285 = 0u;
    v122 = [obj countByEnumeratingWithState:&__src objects:__p count:16];
    if (!v122)
    {
      goto LABEL_268;
    }

    v123 = *v285;
LABEL_248:
    v124 = 0;
    while (1)
    {
      if (*v285 != v123)
      {
        objc_enumerationMutation(obj);
      }

      v125 = *(*(&__src + 1) + 8 * v124);
      [v125 altitudeAccuracy];
      if (v126 > 0.0)
      {
        [v125 altitudeAccuracy];
        if ((v127 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          break;
        }
      }

      if (v122 == ++v124)
      {
        v122 = [obj countByEnumeratingWithState:&__src objects:__p count:16];
        if (v122)
        {
          goto LABEL_248;
        }

        goto LABEL_268;
      }
    }

    [v125 altitude];
    v280 = v128;
    [v125 altitudeAccuracy];
    v281 = v129;
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    v130 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
    {
      [v125 altitude];
      v132 = v131;
      [v125 altitudeAccuracy];
      v134 = v133;
      [objc_msgSend(v125 "timestamp")];
      *buf = 134349568;
      *&buf[4] = v132;
      v301 = 2050;
      v302 = v134;
      v303 = 2050;
      v304 = v135;
      _os_log_impl(&dword_19B873000, v130, OS_LOG_TYPE_DEBUG, "CLTSP,II,checkForAltitudeIntegrity,quick search,first valid altitude,%{public}.2lf,and altitude accuracy,%{public}.2lf,at time,%{public}.3lf", buf, 0x20u);
    }

    v136 = sub_19B87DD40();
    if (*(v136 + 160) <= 1 && *(v136 + 164) <= 1 && *(v136 + 168) <= 1 && !*(v136 + 152))
    {
      goto LABEL_268;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    [v125 altitude];
    v138 = v137;
    [v125 altitudeAccuracy];
    v140 = v139;
    [objc_msgSend(v125 "timestamp")];
    v289[0] = 134349568;
    *&v289[1] = v138;
    v290 = 2050;
    v291 = v140;
    v292 = 2050;
    v293 = v141;
    v118 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "void lookForValidAltitude(NSArray<CLTripSegmentLocation *> * _Nonnull, CLInertialIntegratorLastEstimatedParameters &)", "CoreLocation: %s\n", v118);
    if (v118 == buf)
    {
      goto LABEL_268;
    }
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    v113 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v113, OS_LOG_TYPE_ERROR, "CLTSP,II,checkForSpeedIntegrity,null outputLocations", buf, 2u);
    }

    v114 = sub_19B87DD40();
    if ((*(v114 + 160) & 0x80000000) == 0 || (*(v114 + 164) & 0x80000000) == 0 || (*(v114 + 168) & 0x80000000) == 0 || *(v114 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
      }

      LOWORD(__p[0]) = 0;
      v115 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "void checkForSpeedIntegrity(NSArray<CLTripSegmentLocation *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v115);
      if (v115 != buf)
      {
        free(v115);
      }
    }

    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    v116 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v116, OS_LOG_TYPE_ERROR, "CLTSP,II,checkForAltitudeIntegrity,null tripLocations", buf, 2u);
    }

    v117 = sub_19B87DD40();
    if ((*(v117 + 160) & 0x80000000) != 0 && (*(v117 + 164) & 0x80000000) != 0 && (*(v117 + 168) & 0x80000000) != 0 && !*(v117 + 152))
    {
      goto LABEL_268;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    LOWORD(v289[0]) = 0;
    v118 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "void lookForValidAltitude(NSArray<CLTripSegmentLocation *> * _Nonnull, CLInertialIntegratorLastEstimatedParameters &)", "CoreLocation: %s\n", v118);
    if (v118 == buf)
    {
      goto LABEL_268;
    }
  }

  free(v118);
LABEL_268:
  v267 = 0u;
  v268 = 0u;
  v269 = 0u;
  v270 = 0u;
  v142 = [obj countByEnumeratingWithState:&v267 objects:v288 count:16];
  if (!v142)
  {
    goto LABEL_435;
  }

  v263 = 0;
  v143 = 0;
  v144 = *v268;
  v253 = *(v8 + 87);
  do
  {
    v145 = 0;
    do
    {
      if (*v268 != v144)
      {
        objc_enumerationMutation(obj);
      }

      v146 = *(*(&v267 + 1) + 8 * v145);
      v147 = v283;
      v148 = ++v283;
      if ([obj count] == v148)
      {
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
        }

        v149 = qword_1EAFE46E8;
        if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67240192;
          *&buf[4] = v148;
          _os_log_impl(&dword_19B873000, v149, OS_LOG_TYPE_DEBUG, "CLTSP,II,reconstructTripSegment,reading the last breadcrumb of the current batch with total count,%{public}d", buf, 8u);
        }

        v150 = sub_19B87DD40();
        if (*(v150 + 160) > 1 || *(v150 + 164) > 1 || *(v150 + 168) > 1 || *(v150 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
          }

          LODWORD(__p[0]) = 67240192;
          HIDWORD(__p[0]) = v148;
          v151 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentInertialIntegrator::reconstructTripSegment(NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentInertialData *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull) const", "CoreLocation: %s\n", v151);
          if (v151 != buf)
          {
            free(v151);
          }
        }

        v263 = 1;
      }

      if (v146)
      {
        v152 = [v146 locType];
        if (v152 > 0xD || ((1 << v152) & 0x2E1A) == 0)
        {
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
          }

          v215 = qword_1EAFE46E8;
          if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
          {
            v216 = [v146 locType];
            *buf = 67240192;
            *&buf[4] = v216;
            _os_log_impl(&dword_19B873000, v215, OS_LOG_TYPE_DEBUG, "CLTSP,II,reconstructTripSegment,#warning,unsupported location type skipped,%{public}d", buf, 8u);
          }

          v217 = sub_19B87DD40();
          if (*(v217 + 160) > 1 || *(v217 + 164) > 1 || *(v217 + 168) > 1 || *(v217 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
            }

            v218 = [v146 locType];
            LODWORD(__p[0]) = 67240192;
            HIDWORD(__p[0]) = v218;
            v161 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentInertialIntegrator::reconstructTripSegment(NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentInertialData *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull) const", "CoreLocation: %s\n", v161);
            goto LABEL_410;
          }
        }

        else
        {
          [v146 latitude];
          *buf = v154;
          [v146 longitude];
          __p[0] = v155;
          if (sub_19B8FCE64(buf, __p))
          {
            [v146 horizontalAccuracy];
            if (v156 <= 0.0)
            {
              v158 = v147 == 0;
            }

            else
            {
              [v146 horizontalAccuracy];
              v158 = v157 <= 100.0 || v147 == 0;
            }

            v170 = v158;
            if ((v170 | v263) & 1) != 0 || ([v146 isGPSLocationType])
            {
              [v146 altitudeAccuracy];
              if (v171 >= 0.0)
              {
                [v146 altitude];
                v280 = v189;
                [v146 altitudeAccuracy];
                v281 = v190;
              }

              else
              {
                if (qword_1EAFE46B8 != -1)
                {
                  dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
                }

                v172 = qword_1EAFE46E8;
                if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
                {
                  [v146 altitude];
                  v174 = v173;
                  [v146 altitudeAccuracy];
                  v176 = v175;
                  [objc_msgSend(v146 "timestamp")];
                  *buf = 134350080;
                  *&buf[4] = v174;
                  v301 = 2050;
                  v302 = v176;
                  v303 = 2050;
                  v304 = v177;
                  v305 = 2050;
                  v306 = v280;
                  v307 = 2050;
                  v308 = v281;
                  _os_log_impl(&dword_19B873000, v172, OS_LOG_TYPE_ERROR, "CLTSP,II,reconstructTripSegment,detected a location with altitude,%{public}.2lf,and unknown altitude accuracy,%{public}.2lf,time,%{public}.3lf,replaced with lastEstimatedAltitude,%{public}.2lf,and lastEstimatedAltitudeAccuracy,%{public}.2lf", buf, 0x34u);
                }

                v178 = sub_19B87DD40();
                if ((*(v178 + 160) & 0x80000000) != 0 && (*(v178 + 164) & 0x80000000) != 0 && (*(v178 + 168) & 0x80000000) != 0 && (*(v178 + 152) & 1) == 0)
                {
                  v187 = v280;
                  v188 = *&v281;
                }

                else
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1EAFE46B8 != -1)
                  {
                    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
                  }

                  [v146 altitude];
                  v180 = v179;
                  [v146 altitudeAccuracy];
                  v182 = v181;
                  [objc_msgSend(v146 "timestamp")];
                  v183 = v280;
                  v184 = *&v281;
                  LODWORD(__p[0]) = 134350080;
                  *(__p + 4) = v180;
                  WORD2(__p[1]) = 2050;
                  *(&__p[1] + 6) = v182;
                  HIWORD(__p[2]) = 2050;
                  v295 = v185;
                  v296 = 2050;
                  v297 = v280;
                  v298 = 2050;
                  v299 = v281;
                  v186 = _os_log_send_and_compose_impl();
                  sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentInertialIntegrator::reconstructTripSegment(NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentInertialData *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull) const", "CoreLocation: %s\n", v186);
                  if (v186 != buf)
                  {
                    free(v186);
                  }

                  v187 = v183;
                  v188 = v184;
                }

                [v146 updateAltitude:v187 andAltitudeAccuracy:v188];
              }

              [v146 altitude];
              if ((*&v191 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v191 <= -430.5 || v191 >= 8848.86)
              {
                if (qword_1EAFE46B8 != -1)
                {
                  dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
                }

                v211 = qword_1EAFE46E8;
                if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
                {
                  [v146 altitude];
                  *buf = 134283521;
                  *&buf[4] = v212;
                  _os_log_impl(&dword_19B873000, v211, OS_LOG_TYPE_ERROR, "CLTSP,II,reconstructTripSegment,location with invalid altitude skipped,alt,%{private}.2lf", buf, 0xCu);
                }

                v213 = sub_19B87DD40();
                if ((*(v213 + 160) & 0x80000000) == 0 || (*(v213 + 164) & 0x80000000) == 0 || (*(v213 + 168) & 0x80000000) == 0 || *(v213 + 152))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1EAFE46B8 != -1)
                  {
                    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
                  }

                  [v146 altitude];
                  LODWORD(__p[0]) = 134283521;
                  *(__p + 4) = v214;
                  v161 = _os_log_send_and_compose_impl();
                  sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentInertialIntegrator::reconstructTripSegment(NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentInertialData *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull) const", "CoreLocation: %s\n", v161);
                  goto LABEL_410;
                }
              }

              else
              {
                LODWORD(v275) = v275 + 1;
                LODWORD(__p[0]) = [v146 locType];
                [objc_msgSend(v146 "timestamp")];
                *buf = v192;
                sub_19B8F38F8(&v271, __p, buf);
                if (v143)
                {
                  [objc_msgSend(v143 "timestamp")];
                  v194 = v193;
                  [objc_msgSend(v146 "timestamp")];
                  v260 = v195;
                  [objc_msgSend(v146 "timestamp")];
                  v258 = v196;
                  if (fabs(v196) <= 0.001)
                  {
                    if (qword_1EAFE46B8 != -1)
                    {
                      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
                    }

                    v232 = qword_1EAFE46E8;
                    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = v253;
                      *&buf[4] = v194;
                      _os_log_impl(&dword_19B873000, v232, OS_LOG_TYPE_DEBUG, "CLTSP,II,reconstructTripSegment,location with duplicated timestamp skipped,timestamp,%{public}.3lf", buf, 0xCu);
                    }

                    v233 = sub_19B87DD40();
                    if (*(v233 + 160) > 1 || *(v233 + 164) > 1 || *(v233 + 168) > 1 || *(v233 + 152))
                    {
                      bzero(buf, 0x65CuLL);
                      if (qword_1EAFE46B8 != -1)
                      {
                        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
                      }

                      LODWORD(__p[0]) = v253;
                      *(__p + 4) = v194;
                      v161 = _os_log_send_and_compose_impl();
                      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentInertialIntegrator::reconstructTripSegment(NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentInertialData *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull) const", "CoreLocation: %s\n", v161);
                      goto LABEL_410;
                    }
                  }

                  else
                  {
                    [v146 distanceFromLocation:v143];
                    v257 = v197;
                    [v143 horizontalAccuracy];
                    v199 = v198;
                    [v143 horizontalAccuracy];
                    v201 = v200;
                    [v146 horizontalAccuracy];
                    v203 = v202;
                    [v146 horizontalAccuracy];
                    v205 = sqrt(v203 * v204 + v199 * v201);
                    *(&v278 + 1) = v205 / v258;
                    v206 = 180.0;
                    if (v257 >= v205 + v205)
                    {
                      v207 = atan(v205 / v257);
                      v208 = fmod(v207 * 57.2957795, 360.0);
                      v206 = v208 + 360.0;
                      if (v208 >= 0.0)
                      {
                        v206 = v208;
                      }
                    }

                    *(&v279 + 1) = v206;
                    if ([v143 isLoiLocationType] & 1) != 0 || ((objc_msgSend(v146, "isLoiLocationType") | v263) & 1) != 0 || ((v209 = objc_msgSend(v146, "isGPSLocationType"), v257 / v258 <= 53.6) ? (v210 = 1) : (v210 = v209), (v210))
                    {
                      sub_19B8FCF74(buf);
                    }

                    if (qword_1EAFE46B8 != -1)
                    {
                      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
                    }

                    v234 = qword_1EAFE46E8;
                    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
                    {
                      *buf = v253;
                      *&buf[4] = v260;
                      _os_log_impl(&dword_19B873000, v234, OS_LOG_TYPE_INFO, "CLTSP,II,reconstructTripSegment,possible erroneous location with large speed jump skipped,timestamp,%{public}.3lf", buf, 0xCu);
                    }

                    v235 = sub_19B87DD40();
                    if (*(v235 + 160) > 1 || *(v235 + 164) > 1 || *(v235 + 168) > 1 || *(v235 + 152))
                    {
                      bzero(buf, 0x65CuLL);
                      if (qword_1EAFE46B8 != -1)
                      {
                        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
                      }

                      LODWORD(__p[0]) = v253;
                      *(__p + 4) = v260;
                      v161 = _os_log_send_and_compose_impl();
                      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentInertialIntegrator::reconstructTripSegment(NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentInertialData *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull) const", "CoreLocation: %s\n", v161);
LABEL_410:
                      if (v161 != buf)
                      {
                        free(v161);
                      }
                    }
                  }
                }

                else
                {
                  sub_19B8759E8(v265, "input");
                  sub_19B8F4A54(a2, a3, v146, v265);
                  if (v266 < 0)
                  {
                    operator delete(v265[0]);
                  }

                  if (qword_1EAFE46B8 != -1)
                  {
                    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
                  }

                  v227 = qword_1EAFE46E8;
                  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
                  {
                    [objc_msgSend(v146 "timestamp")];
                    *buf = v253;
                    *&buf[4] = v228;
                    _os_log_impl(&dword_19B873000, v227, OS_LOG_TYPE_INFO, "CLTSP,II,reconstructTripSegment,previous location set,time,%{public}.3lf", buf, 0xCu);
                  }

                  v229 = sub_19B87DD40();
                  if (*(v229 + 160) > 1 || *(v229 + 164) > 1 || *(v229 + 168) > 1 || *(v229 + 152))
                  {
                    bzero(buf, 0x65CuLL);
                    if (qword_1EAFE46B8 != -1)
                    {
                      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
                    }

                    [objc_msgSend(v146 "timestamp")];
                    LODWORD(__p[0]) = v253;
                    *(__p + 4) = v230;
                    v231 = _os_log_send_and_compose_impl();
                    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentInertialIntegrator::reconstructTripSegment(NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentInertialData *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull) const", "CoreLocation: %s\n", v231);
                    if (v231 != buf)
                    {
                      free(v231);
                    }
                  }

                  v143 = v146;
                }
              }
            }

            else
            {
              if (qword_1EAFE46B8 != -1)
              {
                dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
              }

              v219 = qword_1EAFE46E8;
              if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
              {
                [objc_msgSend(v146 "timestamp")];
                v221 = v220;
                [v146 horizontalAccuracy];
                *buf = 134349568;
                *&buf[4] = v221;
                v301 = 2050;
                v302 = v222;
                v303 = 2050;
                v304 = 0x4059000000000000;
                _os_log_impl(&dword_19B873000, v219, OS_LOG_TYPE_DEBUG, "CLTSP,II,reconstructTripSegment,location with invalid or large horizontal uncertainty skipped,time,%{public}.3lf,hunc,%{public}.2lf,threshold,%{public}.2lf", buf, 0x20u);
              }

              v223 = sub_19B87DD40();
              if (*(v223 + 160) > 1 || *(v223 + 164) > 1 || *(v223 + 168) > 1 || *(v223 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46B8 != -1)
                {
                  dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
                }

                [objc_msgSend(v146 "timestamp")];
                v225 = v224;
                [v146 horizontalAccuracy];
                LODWORD(__p[0]) = 134349568;
                *(__p + 4) = v225;
                WORD2(__p[1]) = 2050;
                *(&__p[1] + 6) = v226;
                HIWORD(__p[2]) = 2050;
                v295 = 0x4059000000000000;
                v161 = _os_log_send_and_compose_impl();
                sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentInertialIntegrator::reconstructTripSegment(NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentInertialData *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull) const", "CoreLocation: %s\n", v161);
                goto LABEL_410;
              }
            }
          }

          else
          {
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
            }

            v162 = qword_1EAFE46E8;
            if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
            {
              [v146 latitude];
              v164 = v163;
              [v146 longitude];
              *buf = 134545921;
              *&buf[4] = v164;
              v301 = 2053;
              v302 = v165;
              _os_log_impl(&dword_19B873000, v162, OS_LOG_TYPE_ERROR, "CLTSP,II,reconstructTripSegment,location with invalid coordinates skipped,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf", buf, 0x16u);
            }

            v166 = sub_19B87DD40();
            if ((*(v166 + 160) & 0x80000000) == 0 || (*(v166 + 164) & 0x80000000) == 0 || (*(v166 + 168) & 0x80000000) == 0 || *(v166 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46B8 != -1)
              {
                dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
              }

              [v146 latitude];
              v168 = v167;
              [v146 longitude];
              LODWORD(__p[0]) = 134545921;
              *(__p + 4) = v168;
              WORD2(__p[1]) = 2053;
              *(&__p[1] + 6) = v169;
              v161 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentInertialIntegrator::reconstructTripSegment(NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentInertialData *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull) const", "CoreLocation: %s\n", v161);
              goto LABEL_410;
            }
          }
        }
      }

      else
      {
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
        }

        v159 = qword_1EAFE46E8;
        if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v159, OS_LOG_TYPE_ERROR, "CLTSP,II,reconstructTripSegment,null location object skipped", buf, 2u);
        }

        v160 = sub_19B87DD40();
        if ((*(v160 + 160) & 0x80000000) == 0 || (*(v160 + 164) & 0x80000000) == 0 || (*(v160 + 168) & 0x80000000) == 0 || *(v160 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
          }

          LOWORD(__p[0]) = 0;
          v161 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentInertialIntegrator::reconstructTripSegment(NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentInertialData *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull) const", "CoreLocation: %s\n", v161);
          goto LABEL_410;
        }
      }

      ++v145;
    }

    while (v145 != v142);
    v236 = [obj countByEnumeratingWithState:&v267 objects:v288 count:16];
    v142 = v236;
  }

  while (v236);
LABEL_435:
  if (a7)
  {
    if ([a7 count])
    {
      if ([objc_msgSend(a7 "firstObject")] && objc_msgSend(a7, "count"))
      {
        v237 = 0;
        do
        {
          if (![objc_msgSend(a7 objectAtIndexedSubscript:{v237), "isLoiLocationType"}])
          {
            break;
          }

          v238 = [a7 objectAtIndexedSubscript:v237];
          [objc_msgSend(a7 objectAtIndexedSubscript:{v237), "speed"}];
          [v238 updateSpeed:? andSpeedAccuracy:?];
          ++v237;
        }

        while (v237 < [a7 count]);
      }

      if ([objc_msgSend(a7 "lastObject")])
      {
        v239 = [a7 lastObject];
        [objc_msgSend(a7 "lastObject")];
        [v239 updateSpeed:? andSpeedAccuracy:?];
        v240 = [a7 count];
        if (([objc_msgSend(a7 objectAtIndexedSubscript:{v240 - 2), "isOriginalLocationType"}] & 1) == 0)
        {
          v241 = v240 - 3;
          do
          {
            v242 = [a7 objectAtIndexedSubscript:v241 + 1];
            [objc_msgSend(a7 objectAtIndexedSubscript:{v241 + 1), "speed"}];
            [v242 updateSpeed:? andSpeedAccuracy:?];
          }

          while (![objc_msgSend(a7 objectAtIndexedSubscript:{v241--), "isOriginalLocationType"}]);
        }
      }

      goto LABEL_470;
    }

    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    v247 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v247, OS_LOG_TYPE_DEBUG, "CLTSP,II,invalidateLoiSpeedAccuracy,empty reconstructedLocations", buf, 2u);
    }

    v248 = sub_19B87DD40();
    if (*(v248 + 160) > 1 || *(v248 + 164) > 1 || *(v248 + 168) > 1 || *(v248 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
      }

      LOWORD(__p[0]) = 0;
      v246 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "void invalidateLoiSpeedAccuracy(NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v246);
      goto LABEL_468;
    }
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    v244 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v244, OS_LOG_TYPE_ERROR, "CLTSP,II,invalidateLoiSpeedAccuracy,null reconstructedLocations", buf, 2u);
    }

    v245 = sub_19B87DD40();
    if ((*(v245 + 160) & 0x80000000) == 0 || (*(v245 + 164) & 0x80000000) == 0 || (*(v245 + 168) & 0x80000000) == 0 || *(v245 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
      }

      LOWORD(__p[0]) = 0;
      v246 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "void invalidateLoiSpeedAccuracy(NSMutableArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v246);
LABEL_468:
      if (v246 != buf)
      {
        free(v246);
      }
    }
  }

LABEL_470:
  if (*a1 == 1 && v275 >= 2)
  {
    *buf = [a6 count];
    sub_19B8F3A34(&v271, &v283, buf);
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
  }

  v249 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v249, OS_LOG_TYPE_INFO, "CLTSP,II,reconstructTripSegment,inertial integrator completed", buf, 2u);
  }

  v250 = sub_19B87DD40();
  if (*(v250 + 160) > 1 || *(v250 + 164) > 1 || *(v250 + 168) > 1 || *(v250 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6BAD0);
    }

    LOWORD(__p[0]) = 0;
    v251 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentInertialIntegrator::reconstructTripSegment(NSUUID * _Nonnull, const BOOL, const CLTripSegmentModeOfTransport, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentInertialData *> * _Nonnull, NSMutableArray<CLTripSegmentLocation *> * _Nonnull) const", "CoreLocation: %s\n", v251);
    if (v251 != buf)
    {
      free(v251);
    }
  }

  v66 = [a7 count] != 0;
  if (v271)
  {
    *(&v271 + 1) = v271;
    operator delete(v271);
  }

LABEL_125:
  v67 = *MEMORY[0x1E69E9840];
  return v66;
}

void sub_19B8FCA18(_Unwind_Exception *a1)
{
  v2 = STACK[0x340];
  if (STACK[0x340])
  {
    STACK[0x348] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

BOOL sub_19B8FCE64(double *a1, double *a2)
{
  v2 = fabs(*a1);
  if (v2 == INFINITY)
  {
    return 0;
  }

  v3 = *a2;
  v4 = fabs(*a2);
  if (v4 == INFINITY || v2 < 0.00003 && v4 < 0.00003)
  {
    return 0;
  }

  v6 = v2 <= 90.0;
  if (v3 > 180.0)
  {
    v6 = 0;
  }

  return v3 >= -180.0 && v6;
}

void sub_19B8FCEEC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_19B8B8AB0();
}

os_log_t sub_19B8FCF44()
{
  result = os_log_create("com.apple.locationd.Position", "TripSegmentProcessor");
  qword_1EAFE46E8 = result;
  return result;
}

void sub_19B8FCF74(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_19B8FCFC8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B8FCFE4(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_19B8FD05C(result, a2);
  }

  return result;
}

void sub_19B8FD040(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B8FD05C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_19B8D9954(a1, a2);
  }

  sub_19B8F3F74();
}

void *sub_19B8FD098(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (!(a2 >> 60))
    {
      operator new();
    }

    sub_19B8B8A40();
  }

  return result;
}

void sub_19B8FD120(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B8FD3E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_19B8FD440(uint64_t a1, uint64_t *a2)
{
  Weak = objc_loadWeak((a1 + 32));
  v4 = a2[1];
  v5 = *a2;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [Weak handleMessage:&v5];
  if (v6)
  {
    sub_19B8750F8(v6);
  }
}

void sub_19B8FD49C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B8750F8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B8FD4B4(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak handleInterruption];
}

void sub_19B900090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, char a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9004E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a11)
  {
    sub_19B8750F8(a11);
  }

  if (a16)
  {
    sub_19B8750F8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9006E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a12)
  {
    sub_19B8750F8(a12);
  }

  sub_19B8750F8(v18);
  _Unwind_Resume(a1);
}

void sub_19B901DD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_19B8750F8(a11);
  }

  if (a13)
  {
    sub_19B8750F8(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B901F3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_19B8750F8(a11);
  }

  if (a13)
  {
    sub_19B8750F8(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9020A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_19B8750F8(a11);
  }

  if (a13)
  {
    sub_19B8750F8(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B902214(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_19B8750F8(a11);
  }

  if (a13)
  {
    sub_19B8750F8(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B903FC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B90429C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B904568(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B904844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B904BCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B904E98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B905174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B905464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B905730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9059FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B905CC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B905F94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B906260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B90652C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9067F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B906AC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B906D90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B90705C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B907328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9075F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9078C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B907B8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B907E58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_19B907EEC()
{
  result = os_log_create("com.apple.locationd.Position", "Proximity");
  qword_1EAFE4700 = result;
  return result;
}

uint64_t sub_19B907F1C(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4738 != -1)
  {
    dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
  }

  v2 = qword_1EAFE4740;
  if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 40) + 24);
    *buf = 138477827;
    v11 = v3;
    _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEFAULT, "#clreg,completionCallback,%{private}@,nil,nil", buf, 0xCu);
  }

  v4 = sub_19B87DD40();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4738 != -1)
    {
      dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
    }

    v9 = *(*(a1 + 40) + 24);
    v5 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLRegulatoryConfigInternal::fetchRAEConfig(CLLocation *, CLRegulatoryConfigCallback)_block_invoke", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = *(*(a1 + 40) + 24);
  result = (*(*(a1 + 32) + 16))();
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_19B90810C(void *a1)
{
  [a1 coordinate];
  v3 = v2;
  [a1 coordinate];
  v5 = [objc_alloc(MEMORY[0x1E69A1E70]) initWithGEOCoordinate:{v3, v4}];
  if (v5)
  {
    [a1 altitude];
    [v5 setAltitude:v6];
    [a1 horizontalAccuracy];
    [v5 setHorizontalAccuracy:?];
    [a1 verticalAccuracy];
    [v5 setVerticalAccuracy:?];
    v7 = [a1 referenceFrame];
    if (v7 == 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2 * (v7 == 2);
    }

    [v5 setReferenceFrame:v8];
  }

  return v5;
}

void sub_19B9081C8(void *a1, void *a2, void *a3, uint64_t a4)
{
  v39 = *MEMORY[0x1E69E9840];
  if (a2 && [a2 length])
  {
    sub_19B8759E8(__p, [a2 UTF8String]);
    v8 = v30;
    if ((v30 & 0x80u) != 0)
    {
      v8 = __p[1];
    }

    if (v8)
    {
      v9 = sub_19B90ECFC(a1, __p);
      if (v9)
      {
        v10 = v9;
        if (qword_1EAFE4738 != -1)
        {
          dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
        }

        v11 = qword_1EAFE4740;
        if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEFAULT))
        {
          v12 = v10[5];
          v13 = [objc_msgSend(a3 "allObjects")];
          *buf = 138478083;
          v36 = v12;
          v37 = 2113;
          v38 = v13;
          _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEFAULT, "#clreg,completionCallback,%{private}@,%{private}@,nil", buf, 0x16u);
        }

        v14 = sub_19B87DD40();
        if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4738 != -1)
          {
            dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
          }

          v15 = v10[5];
          v16 = [objc_msgSend(a3 "allObjects")];
          v31 = 138478083;
          v32 = v15;
          v33 = 2113;
          v34 = v16;
          v17 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::sendIsoConfig(NSString *, CLRegulatoryIsoList, CLRegulatoryConfigCallback)", "CoreLocation: %s\n", v17);
          if (v17 != buf)
          {
            free(v17);
          }
        }

        v18 = v10 + 5;
      }

      else
      {
        if (qword_1EAFE4738 != -1)
        {
          dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
        }

        v25 = qword_1EAFE4740;
        if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v25, OS_LOG_TYPE_DEFAULT, "#clreg,completionCallback,default,nil,nil", buf, 2u);
        }

        v26 = sub_19B87DD40();
        if (*(v26 + 160) > 1 || *(v26 + 164) > 1 || *(v26 + 168) > 1 || *(v26 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4738 != -1)
          {
            dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
          }

          LOWORD(v31) = 0;
          v27 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::sendIsoConfig(NSString *, CLRegulatoryIsoList, CLRegulatoryConfigCallback)", "CoreLocation: %s\n", v27);
          if (v27 != buf)
          {
            free(v27);
          }
        }

        a3 = 0;
        v18 = a1 + 9;
      }

      (*(a4 + 16))(a4, *v18, a3, 0);
    }

    else
    {
      if (qword_1EAFE4738 != -1)
      {
        dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
      }

      v22 = qword_1EAFE4740;
      if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_DEFAULT, "#clreg,completionCallback,default,nil,nil", buf, 2u);
      }

      v23 = sub_19B87DD40();
      if (*(v23 + 160) > 1 || *(v23 + 164) > 1 || *(v23 + 168) > 1 || *(v23 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4738 != -1)
        {
          dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
        }

        LOWORD(v31) = 0;
        v24 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::sendIsoConfig(NSString *, CLRegulatoryIsoList, CLRegulatoryConfigCallback)", "CoreLocation: %s\n", v24);
        if (v24 != buf)
        {
          free(v24);
        }
      }

      (*(a4 + 16))(a4, a1[9], 0, 0);
    }

    if (v30 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    if (qword_1EAFE4738 != -1)
    {
      dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
    }

    v19 = qword_1EAFE4740;
    if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_DEFAULT, "#clreg,completionCallback,default,nil,nil", buf, 2u);
    }

    v20 = sub_19B87DD40();
    if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || *(v20 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4738 != -1)
      {
        dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
      }

      LOWORD(__p[0]) = 0;
      v21 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::sendIsoConfig(NSString *, CLRegulatoryIsoList, CLRegulatoryConfigCallback)", "CoreLocation: %s\n", v21);
      if (v21 != buf)
      {
        free(v21);
      }
    }

    (*(a4 + 16))(a4, a1[9], 0, 0);
  }

  v28 = *MEMORY[0x1E69E9840];
}

void sub_19B908890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B9088CC(uint64_t a1, void *a2, uint64_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4738 != -1)
  {
    dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
  }

  v6 = qword_1EAFE4740;
  if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEFAULT))
  {
    [a2 coordinate];
    v8 = v7;
    [a2 coordinate];
    v10 = v9;
    [a2 horizontalAccuracy];
    *buf = 134546177;
    v30 = v8;
    v31 = 2053;
    v32 = v10;
    v33 = 2053;
    v34 = v11;
    _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEFAULT, "#clreg,#map,query,lla,%{sensitive}.6f,lon,%{sensitive}.6f,accuracy,%{sensitive}.2f", buf, 0x20u);
  }

  v12 = sub_19B87DD40();
  if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4738 != -1)
    {
      dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
    }

    [a2 coordinate];
    v14 = v13;
    [a2 coordinate];
    v16 = v15;
    [a2 horizontalAccuracy];
    v23 = 134546177;
    v24 = v14;
    v25 = 2053;
    v26 = v16;
    v27 = 2053;
    v28 = v17;
    v18 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::runMapsQuery(GEOLocation *, MapsResultCallback)", "CoreLocation: %s\n", v18);
    if (v18 != buf)
    {
      free(v18);
    }
  }

  v19 = *(a1 + 64);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_19B908B74;
  v22[3] = &unk_1E753DA18;
  v22[4] = a3;
  result = [MEMORY[0x1E69A1DD8] fetchPossibleTerritoriesForLocation:a2 responseQueue:v19 responseBlock:v22];
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B908B74(uint64_t a1, void *a2, uint64_t a3)
{
  v64 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (qword_1EAFE4738 != -1)
    {
      dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
    }

    v5 = qword_1EAFE4740;
    if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v61 = a3;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "#clreg,#map,response,#warning,error,%@", buf, 0xCu);
    }

    v6 = sub_19B87DD40();
    if (*(v6 + 160) <= 1 && *(v6 + 164) <= 1 && *(v6 + 168) <= 1 && !*(v6 + 152))
    {
      goto LABEL_15;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4738 != -1)
    {
      dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
    }

    v55 = 138412290;
    v56 = a3;
    goto LABEL_13;
  }

  v11 = a2;
  if (!a2)
  {
    if (qword_1EAFE4738 != -1)
    {
      dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
    }

    v46 = qword_1EAFE4740;
    if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v46, OS_LOG_TYPE_DEFAULT, "#clreg,#map,response,#warning,results,Nil", buf, 2u);
    }

    v47 = sub_19B87DD40();
    if (*(v47 + 160) <= 1 && *(v47 + 164) <= 1 && *(v47 + 168) <= 1 && !*(v47 + 152))
    {
      goto LABEL_15;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4738 != -1)
    {
      dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
    }

    LOWORD(v55) = 0;
LABEL_13:
    v7 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::runMapsQuery(GEOLocation *, MapsResultCallback)_block_invoke", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }

    goto LABEL_15;
  }

  v48 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v51 objects:v59 count:16];
  if (!v12)
  {
    goto LABEL_15;
  }

  v13 = v12;
  v14 = 0;
  v49 = 0;
  v15 = *v52;
  v50 = v11;
  do
  {
    v16 = 0;
    do
    {
      if (*v52 != v15)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v51 + 1) + 8 * v16);
      if (v17 && (([*(*(&v51 + 1) + 8 * v16) isDisputed] & 1) != 0 || objc_msgSend(v17, "iso3166CountryCode") && objc_msgSend(objc_msgSend(v17, "iso3166CountryCode"), "length")) && (!objc_msgSend(v17, "isDisputed") || objc_msgSend(v17, "disputedTerritoryName") && objc_msgSend(objc_msgSend(v17, "disputedTerritoryName"), "length")))
      {
        if ([v17 isDisputed])
        {
          if ([v17 interestedPartyIso3166CountryCodes] && objc_msgSend(objc_msgSend(v17, "interestedPartyIso3166CountryCodes"), "count"))
          {
            [v48 setByAddingObjectsFromArray:{objc_msgSend(v17, "interestedPartyIso3166CountryCodes")}];
          }

          if (v14)
          {
            if (qword_1EAFE4738 != -1)
            {
              dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
            }

            v18 = qword_1EAFE4740;
            if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEBUG))
            {
              v19 = v14;
              v20 = [v14 UTF8String];
              v21 = [objc_msgSend(v17 "interestedPartyIso3166CountryCodes")];
              *buf = 136380931;
              v61 = v20;
              v14 = v19;
              v11 = v50;
              v62 = 2112;
              v63 = v21;
              _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_DEBUG, "#clreg,#map,response,disputed,next,%{private}s,interested,%@", buf, 0x16u);
            }

            v22 = sub_19B87DD40();
            if (*(v22 + 160) > 1 || *(v22 + 164) > 1 || *(v22 + 168) > 1 || *(v22 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE4738 == -1)
              {
                goto LABEL_79;
              }

              goto LABEL_97;
            }
          }

          else
          {
            v14 = [v17 disputedTerritoryName];
            if (qword_1EAFE4738 != -1)
            {
              dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
            }

            v31 = qword_1EAFE4740;
            if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEBUG))
            {
              v32 = v14;
              v33 = [v14 UTF8String];
              v34 = [objc_msgSend(v17 "interestedPartyIso3166CountryCodes")];
              *buf = 136380931;
              v61 = v33;
              v14 = v32;
              v11 = v50;
              v62 = 2112;
              v63 = v34;
              _os_log_impl(&dword_19B873000, v31, OS_LOG_TYPE_DEBUG, "#clreg,#map,response,disputed,first,%{private}s,interested,%@", buf, 0x16u);
            }

            v35 = sub_19B87DD40();
            if (*(v35 + 160) > 1 || *(v35 + 164) > 1 || *(v35 + 168) > 1 || *(v35 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE4738 == -1)
              {
LABEL_79:
                v36 = v14;
                v37 = [v14 UTF8String];
                v38 = [objc_msgSend(v17 "interestedPartyIso3166CountryCodes")];
                v55 = 136380931;
                v56 = v37;
                v57 = 2112;
                v58 = v38;
                v39 = _os_log_send_and_compose_impl();
                sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::runMapsQuery(GEOLocation *, MapsResultCallback)_block_invoke", "CoreLocation: %s\n", v39);
                if (v39 != buf)
                {
                  free(v39);
                }

LABEL_94:
                v14 = v36;
                v11 = v50;
                goto LABEL_95;
              }

LABEL_97:
              dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
              goto LABEL_79;
            }
          }
        }

        else
        {
          v26 = [v17 iso3166CountryCode];
          if (!v49)
          {
            v36 = v14;
            if (qword_1EAFE4738 != -1)
            {
              dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
            }

            v40 = qword_1EAFE4740;
            if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEBUG))
            {
              v41 = [v17 iso3166CountryCode];
              *buf = 138477827;
              v61 = v41;
              _os_log_impl(&dword_19B873000, v40, OS_LOG_TYPE_DEBUG, "#clreg,#map,response,nonDisputed,first,%{private}@", buf, 0xCu);
            }

            v42 = sub_19B87DD40();
            if (*(v42 + 160) > 1 || *(v42 + 164) > 1 || *(v42 + 168) > 1 || *(v42 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE4738 != -1)
              {
                dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
              }

              v43 = [v17 iso3166CountryCode];
              v55 = 138477827;
              v56 = v43;
              v44 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::runMapsQuery(GEOLocation *, MapsResultCallback)_block_invoke", "CoreLocation: %s\n", v44);
              if (v44 != buf)
              {
                free(v44);
              }
            }

            v49 = v26;
            goto LABEL_94;
          }

          [v48 addObject:v26];
          if (qword_1EAFE4738 != -1)
          {
            dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
          }

          v27 = qword_1EAFE4740;
          if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEBUG))
          {
            v28 = [v17 iso3166CountryCode];
            *buf = 138477827;
            v61 = v28;
            _os_log_impl(&dword_19B873000, v27, OS_LOG_TYPE_DEBUG, "#clreg,#map,response,nonDisputed,next,%{private}@", buf, 0xCu);
          }

          v29 = sub_19B87DD40();
          if (*(v29 + 160) > 1 || *(v29 + 164) > 1 || *(v29 + 168) > 1 || *(v29 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE4738 != -1)
            {
              dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
            }

            v30 = [v17 iso3166CountryCode];
            v55 = 138477827;
            v56 = v30;
LABEL_56:
            v25 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::runMapsQuery(GEOLocation *, MapsResultCallback)_block_invoke", "CoreLocation: %s\n", v25);
            if (v25 != buf)
            {
              free(v25);
            }
          }
        }
      }

      else
      {
        if (qword_1EAFE4738 != -1)
        {
          dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
        }

        v23 = qword_1EAFE4740;
        if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_DEBUG, "#clreg,#map,response,#warning,invalidResultEntry,ignoring", buf, 2u);
        }

        v24 = sub_19B87DD40();
        if (*(v24 + 160) > 1 || *(v24 + 164) > 1 || *(v24 + 168) > 1 || *(v24 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4738 != -1)
          {
            dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
          }

          LOWORD(v55) = 0;
          goto LABEL_56;
        }
      }

LABEL_95:
      ++v16;
    }

    while (v13 != v16);
    v45 = [v11 countByEnumeratingWithState:&v51 objects:v59 count:16];
    v13 = v45;
  }

  while (v45);
  if (v14)
  {
    v8 = *(*(a1 + 32) + 16);
    goto LABEL_16;
  }

  if (v49)
  {
    v8 = *(*(a1 + 32) + 16);
    goto LABEL_16;
  }

LABEL_15:
  v8 = *(*(a1 + 32) + 16);
LABEL_16:
  result = v8();
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B909750(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 40);
  if (qword_1EAFE4738 != -1)
  {
    dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
  }

  v7 = qword_1EAFE4740;
  if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138478083;
    v12 = a2;
    v13 = 2113;
    v14 = [objc_msgSend(a3 "allObjects")];
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEBUG, "#clreg,cbLocation,iso,%{private}@,neighbors,%{private}@", buf, 0x16u);
  }

  v8 = sub_19B87DD40();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4738 != -1)
    {
      dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
    }

    [objc_msgSend(a3 "allObjects")];
    v9 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::fetchIsoOrDefaultConfig(CLLocation *, CLRegulatoryConfigCallback)_block_invoke", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  sub_19B9081C8(v6, a2, a3, *(a1 + 32));
  v10 = *MEMORY[0x1E69E9840];
}

void sub_19B909988(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 48);
  if (qword_1EAFE4738 != -1)
  {
    dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
  }

  v7 = qword_1EAFE4740;
  if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138478083;
    v23 = a2;
    v24 = 2113;
    v25 = [objc_msgSend(a3 "allObjects")];
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEBUG, "#clreg,cbExtendedLocation,iso,%{private}@,neighbors,%{private}@", buf, 0x16u);
  }

  v8 = sub_19B87DD40();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4738 != -1)
    {
      dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
    }

    v18 = 138478083;
    v19 = a2;
    v20 = 2113;
    v21 = [objc_msgSend(a3 "allObjects")];
    v9 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::fetchIsoOrDefaultConfig(CLLocation *, CLRegulatoryConfigCallback)_block_invoke", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  if (!a2 || ![a2 length])
  {
    v13 = *(a1 + 40);
    v14 = v6;
    v15 = 0;
LABEL_20:
    sub_19B9081C8(v14, v15, 0, v13);
    goto LABEL_21;
  }

  if (!a3 || ![a3 count])
  {
    v13 = *(a1 + 40);
    v14 = v6;
    v15 = a2;
    goto LABEL_20;
  }

  [a3 addObject:a2];
  v10 = [a3 copy];
  [*(a1 + 32) setHorizontalAccuracy:*(a1 + 56)];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_19B909C7C;
  v17[3] = &unk_1E753DA68;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v17[4] = v10;
  v17[5] = v12;
  v17[6] = v6;
  sub_19B9088CC(v6, v11, v17);
LABEL_21:
  v16 = *MEMORY[0x1E69E9840];
}

void sub_19B909C7C(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 48);
  if (qword_1EAFE4738 != -1)
  {
    dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
  }

  v7 = qword_1EAFE4740;
  if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEBUG))
  {
    v8 = [objc_msgSend(a3 "allObjects")];
    v9 = [objc_msgSend(*(a1 + 32) "allObjects")];
    *buf = 138478339;
    v17 = a2;
    v18 = 2113;
    v19 = v8;
    v20 = 2113;
    v21 = v9;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEBUG, "#clreg,cbWrapper,isoActual,%{private}@,neighborsWithinLocation,%{private}@,extendedNeighbors,%{private}@", buf, 0x20u);
  }

  v10 = sub_19B87DD40();
  if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4738 != -1)
    {
      dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
    }

    [objc_msgSend(a3 "allObjects")];
    [objc_msgSend(*(a1 + 32) "allObjects")];
    v11 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::fetchIsoOrDefaultConfig(CLLocation *, CLRegulatoryConfigCallback)_block_invoke", "CoreLocation: %s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v13 = *(a1 + 32);
  if (v13 && [v13 count])
  {
    [v12 unionSet:*(a1 + 32)];
  }

  if (a3 && [a3 count])
  {
    [v12 unionSet:a3];
  }

  if (v12)
  {
    v14 = [v12 count];
    if (a2)
    {
      if (v14)
      {
        [v12 removeObject:a2];
      }
    }
  }

  sub_19B9081C8(v6, a2, v12, *(a1 + 40));

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B909FB0(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4738 != -1)
  {
    dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
  }

  v2 = qword_1EAFE4740;
  if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138477827;
    v11 = v3;
    _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEFAULT, "#clreg,completionCallback,%{private}@,nil,nil", buf, 0xCu);
  }

  v4 = sub_19B87DD40();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4738 != -1)
    {
      dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
    }

    v9 = *(a1 + 32);
    v5 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::sendRaeInfoAsync(NSDictionary *, CLRegulatoryInfoCallback)_block_invoke", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  [objc_alloc_init(MEMORY[0x1E695DF90]) setObject:@"kCLRegRegionTypeRae" forKey:@"kCLRegRegionTypeKey"];
  v6 = *(a1 + 32);
  result = (*(*(a1 + 40) + 16))();
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B90A1BC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v28 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4738 != -1)
  {
    dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
  }

  v8 = qword_1EAFE4740;
  if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138478083;
    *&buf[4] = a2;
    *&buf[12] = 2113;
    *&buf[14] = a3;
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEBUG, "sendIsoInfoSync,region,%{private}@,neighbors,%{private}@", buf, 0x16u);
  }

  v9 = sub_19B87DD40();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4738 != -1)
    {
      dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
    }

    v22 = 138478083;
    v23 = a2;
    v24 = 2113;
    v25 = a3;
    v10 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::sendIsoInfoSync(CLRegulatoryRegion, CLRegulatoryRegionMutableList, CLRegulatoryInfoCallback)", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v17 = sub_19B90A51C;
  v18 = &unk_1E753DAB8;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  if (a2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [a2 objectForKey:@"kCLRegNameKey"])
  {
    sub_19B8759E8(buf, [objc_msgSend(a2 objectForKey:{@"kCLRegNameKey", "UTF8String"}]);
    v11 = v27;
    if ((v27 & 0x80u) != 0)
    {
      v11 = *&buf[8];
    }

    if (v11)
    {
      v12 = sub_19B90ECFC(a1, buf);
      v13 = a1 + 9;
      if (v12)
      {
        v13 = v12 + 5;
        v14 = @"kCLRegRegionTypeGeo";
      }

      else
      {
        v14 = @"kCLRegRegionTypeDefault";
      }

      (v17)(v16, v14, *v13);
    }

    else
    {
      (v17)(v16, @"kCLRegRegionTypeDefault", a1[9]);
    }

    if (v27 < 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
    (v17)(v16, @"kCLRegRegionTypeDefault", a1[9]);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_19B90A4F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B90A51C(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (a2 && (v5 = v4, [a2 length]))
  {
    [v5 setObject:a2 forKey:@"kCLRegRegionTypeKey"];
    if (*(a1 + 32))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([*(a1 + 32) objectForKey:@"kCLRegNameKey"])
        {
          [v5 setObject:*(a1 + 32) forKey:@"kCLRegGeoRegionMatchedKey"];
        }
      }
    }

    v6 = *(a1 + 40);
    if (v6 && [v6 count])
    {
      [v5 setObject:*(a1 + 40) forKey:@"kCLRegNeighborsKey"];
    }

    v7 = *(*(a1 + 48) + 16);
    v8 = *MEMORY[0x1E69E9840];

    v7();
  }

  else
  {
    if (qword_1EAFE4738 != -1)
    {
      dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
    }

    v9 = qword_1EAFE4740;
    if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_ERROR, "#clreg,invalidRegionType", buf, 2u);
    }

    v10 = sub_19B87DD40();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4738 != -1)
      {
        dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
      }

      v11 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "void CLRegulatoryConfigInternal::sendIsoInfoSync(CLRegulatoryRegion, CLRegulatoryRegionMutableList, CLRegulatoryInfoCallback)_block_invoke", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    v12 = *MEMORY[0x1E69E9840];
  }
}

uint64_t sub_19B90A7CC(uint64_t a1, void *a2, uint64_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4738 != -1)
  {
    dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
  }

  v6 = qword_1EAFE4740;
  if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEFAULT))
  {
    [a2 coordinate];
    v8 = v7;
    [a2 coordinate];
    v10 = v9;
    [a2 horizontalAccuracy];
    *buf = 134546177;
    v30 = v8;
    v31 = 2053;
    v32 = v10;
    v33 = 2053;
    v34 = v11;
    _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEFAULT, "#clreg,#map,query,lla,%{sensitive}.6f,lon,%{sensitive}.6f,accuracy,%{sensitive}.2f", buf, 0x20u);
  }

  v12 = sub_19B87DD40();
  if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4738 != -1)
    {
      dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
    }

    [a2 coordinate];
    v14 = v13;
    [a2 coordinate];
    v16 = v15;
    [a2 horizontalAccuracy];
    v23 = 134546177;
    v24 = v14;
    v25 = 2053;
    v26 = v16;
    v27 = 2053;
    v28 = v17;
    v18 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::runMapInfoQuery(GEOLocation *, MapsInfoReply)", "CoreLocation: %s\n", v18);
    if (v18 != buf)
    {
      free(v18);
    }
  }

  v19 = *(a1 + 64);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_19B90AA74;
  v22[3] = &unk_1E753DAE0;
  v22[4] = a2;
  v22[5] = a3;
  result = [MEMORY[0x1E69A1DD8] fetchPossibleTerritoriesForLocation:a2 responseQueue:v19 responseBlock:v22];
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B90AA74(uint64_t a1, void *a2, uint64_t a3)
{
  v64 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (qword_1EAFE4738 != -1)
    {
      dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
    }

    v5 = qword_1EAFE4740;
    if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v57 = a3;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "#clreg,#map,response,#warning,error,%@", buf, 0xCu);
    }

    v6 = sub_19B87DD40();
    if (*(v6 + 160) <= 1 && *(v6 + 164) <= 1 && *(v6 + 168) <= 1 && !*(v6 + 152))
    {
      goto LABEL_15;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4738 != -1)
    {
      dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
    }

    v48 = 138412290;
    v49 = a3;
    goto LABEL_13;
  }

  if (!a2)
  {
    if (qword_1EAFE4738 != -1)
    {
      dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
    }

    v36 = qword_1EAFE4740;
    if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v36, OS_LOG_TYPE_DEFAULT, "#clreg,#map,response,#warning,results,Nil", buf, 2u);
    }

    v37 = sub_19B87DD40();
    if (*(v37 + 160) <= 1 && *(v37 + 164) <= 1 && *(v37 + 168) <= 1 && !*(v37 + 152))
    {
      goto LABEL_15;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4738 != -1)
    {
      dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
    }

    LOWORD(v48) = 0;
LABEL_13:
    v7 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::runMapInfoQuery(GEOLocation *, MapsInfoReply)_block_invoke", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }

    goto LABEL_15;
  }

  if (qword_1EAFE4738 != -1)
  {
    dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
  }

  v11 = qword_1EAFE4740;
  if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEBUG))
  {
    [*(a1 + 32) coordinate];
    v13 = v12;
    [*(a1 + 32) coordinate];
    v15 = v14;
    [*(a1 + 32) horizontalAccuracy];
    *buf = 134546435;
    v57 = v13;
    v58 = 2053;
    v59 = v15;
    v60 = 2053;
    v61 = v16;
    v62 = 2113;
    v63 = a2;
    _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEBUG, "#clreg,#map,response,lla,%{sensitive}.6f,lon,%{sensitive}.6f,accuracy,%{sensitive}.2f,results,%{private}@", buf, 0x2Au);
  }

  v17 = sub_19B87DD40();
  if (*(v17 + 160) > 1 || *(v17 + 164) > 1 || *(v17 + 168) > 1 || *(v17 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4738 != -1)
    {
      dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
    }

    [*(a1 + 32) coordinate];
    v19 = v18;
    [*(a1 + 32) coordinate];
    v21 = v20;
    [*(a1 + 32) horizontalAccuracy];
    v48 = 134546435;
    v49 = v19;
    v50 = 2053;
    v51 = v21;
    v52 = 2053;
    v53 = v22;
    v54 = 2113;
    v55 = a2;
    v23 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::runMapInfoQuery(GEOLocation *, MapsInfoReply)_block_invoke", "CoreLocation: %s\n", v23);
    if (v23 != buf)
    {
      free(v23);
    }
  }

  v39 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v24 = [a2 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (!v24)
  {
    goto LABEL_15;
  }

  v25 = v24;
  v38 = a1;
  v40 = 0;
  v42 = 0;
  v26 = *v44;
  do
  {
    for (i = 0; i != v25; ++i)
    {
      if (*v44 != v26)
      {
        objc_enumerationMutation(a2);
      }

      v28 = *(*(&v43 + 1) + 8 * i);
      if (v28 && (([*(*(&v43 + 1) + 8 * i) isDisputed] & 1) != 0 || objc_msgSend(v28, "iso3166CountryCode") && objc_msgSend(objc_msgSend(v28, "iso3166CountryCode"), "length")) && (!objc_msgSend(v28, "isDisputed") || objc_msgSend(v28, "disputedTerritoryName") && objc_msgSend(objc_msgSend(v28, "disputedTerritoryName"), "length")))
      {
        v29 = v25;
        v30 = v26;
        v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
        [v31 setObject:v28 forKey:@"kCLGEOTerritoryInfoKey"];
        if ([v28 isDisputed])
        {
          [v31 setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKey:{"stringWithFormat:", @"%llX", objc_msgSend(v28, "uniqueIdentifier")), @"kCLRegNameKey"}];
          v32 = v42;
          if (!((v42 == 0) | v40 & 1))
          {
            [v39 addObject:?];
            v40 = 1;
            v32 = v31;
          }

          if (v32)
          {
LABEL_46:
            v42 = v32;
            [v39 addObject:v31];
LABEL_61:
            v26 = v30;
            v25 = v29;
            continue;
          }
        }

        else
        {
          [v31 setObject:objc_msgSend(v28 forKey:{"iso3166CountryCode"), @"kCLRegNameKey"}];
          v32 = v42;
          if (v42)
          {
            goto LABEL_46;
          }
        }

        v40 = [v28 isDisputed];
        v42 = v31;
        goto LABEL_61;
      }

      if (qword_1EAFE4738 != -1)
      {
        dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
      }

      v33 = qword_1EAFE4740;
      if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v33, OS_LOG_TYPE_DEBUG, "#clreg,#map,response,#warning,invalidResultEntry,ignoring", buf, 2u);
      }

      v34 = sub_19B87DD40();
      if (*(v34 + 160) > 1 || *(v34 + 164) > 1 || *(v34 + 168) > 1 || *(v34 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4738 != -1)
        {
          dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
        }

        LOWORD(v48) = 0;
        v35 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "void CLRegulatoryConfigInternal::runMapInfoQuery(GEOLocation *, MapsInfoReply)_block_invoke", "CoreLocation: %s\n", v35);
        if (v35 != buf)
        {
          free(v35);
        }
      }
    }

    v25 = [a2 countByEnumeratingWithState:&v43 objects:v47 count:16];
  }

  while (v25);
  a1 = v38;
  if (v42)
  {
    v8 = *(*(v38 + 40) + 16);
    goto LABEL_16;
  }

LABEL_15:
  v8 = *(*(a1 + 40) + 16);
LABEL_16:
  result = v8();
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B90B2C8(void *a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a2 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v6 = [a2 objectForKey:@"kCLRegNameKey"], !a3) || !v6 || !objc_msgSend(a3, "length"))
  {
    if (qword_1EAFE4738 != -1)
    {
      dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
    }

    v8 = qword_1EAFE4740;
    if (os_log_type_enabled(qword_1EAFE4740, OS_LOG_TYPE_ERROR))
    {
      *buf = 138478083;
      v13 = a2;
      v14 = 2113;
      v15 = a3;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "Invalid neighbor or excludeRegionName,%{private}@,%{private}@", buf, 0x16u);
    }

    v9 = sub_19B87DD40();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4738 != -1)
      {
        dispatch_once(&qword_1EAFE4738, &unk_1F0E6BB30);
      }

      v10 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "void CLRegulatoryConfigInternal::appendNeighbor(CLRegulatoryRegionMutableList, CLRegulatoryRegion, NSString *)", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    goto LABEL_21;
  }

  if ([a3 isEqual:{objc_msgSend(a2, "objectForKey:", @"kCLRegNameKey"}])
  {
LABEL_21:
    v11 = *MEMORY[0x1E69E9840];
    return;
  }

  v7 = *MEMORY[0x1E69E9840];

  [a1 addObject:a2];
}

uint64_t sub_19B90B55C(void *a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  result = [a2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(a2);
        }

        sub_19B90B2C8(a1, *(*(&v11 + 1) + 8 * v9++), a3);
      }

      while (v7 != v9);
      result = [a2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v7 = result;
    }

    while (result);
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B90B658(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 48);
  if (a2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v7 = [a2 objectForKey:@"kCLRegNameKey"], a3) && v7 && objc_msgSend(a3, "count"))
  {
    [*(a1 + 32) setHorizontalAccuracy:*(a1 + 56)];
    v8 = a2;
    v9 = a3;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_19B90B780;
    v12[3] = &unk_1E753DB08;
    v12[4] = a2;
    v12[5] = a3;
    v10 = *(a1 + 32);
    v12[6] = *(a1 + 40);
    v12[7] = v6;
    sub_19B90A7CC(v6, v10, v12);
  }

  else
  {
    v11 = *(a1 + 40);

    sub_19B90A1BC(v6, a2, a3, v11);
  }
}

void sub_19B90B780(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 56);
  if (!a2 || (v6 = a2, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ![v6 objectForKey:@"kCLRegNameKey"])
  {
    v6 = *(a1 + 32);
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v8 = [v6 objectForKey:@"kCLRegNameKey"];
  sub_19B90B2C8(v7, *(a1 + 32), v8);
  sub_19B90B55C(v7, *(a1 + 40), v8);
  sub_19B90B55C(v7, a3, v8);
  sub_19B90A1BC(v5, v6, v7, *(a1 + 48));

  v9 = *(a1 + 40);
}

void sub_19B90B964(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 48) = v5;
    operator delete(v5);
  }

  v6 = sub_19B90E774(v1);
  MEMORY[0x19EAE98C0](v6, v2);
  _Unwind_Resume(a1);
}

void sub_19B90C408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  sub_19B90ECA0(1, v29);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

os_log_t sub_19B90E67C()
{
  result = os_log_create("com.apple.locationd.Utility", "Utility");
  qword_1EAFE4740 = result;
  return result;
}

uint64_t *sub_19B90E6AC(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    while (v3 != v4)
    {

      v3 += 32;
    }

    for (i = v2 + 16; ; *(i + 40))
    {
      i = *i;
      if (!i)
      {
        break;
      }
    }

    dispatch_release(*(v2 + 64));
    v6 = *(v2 + 40);
    if (v6)
    {
      *(v2 + 48) = v6;
      operator delete(v6);
    }

    sub_19B90E774(v2);

    JUMPOUT(0x19EAE98C0);
  }

  return result;
}

uint64_t sub_19B90E774(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
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

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

unint64_t sub_19B90E7DC(uint64_t a1)
{
  v1 = *(a1 + 23);
  v2 = *(a1 + 8);
  v3 = v1 < 0;
  if (v1 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  if (!v3)
  {
    v2 = *(a1 + 23);
  }

  if (v2 > 0x20)
  {
    if (v2 > 0x40)
    {
      v34 = 0x9DDFEA08EB382D69;
      v44 = *(v4 + v2 - 48);
      v43 = *(v4 + v2 - 40);
      v45 = *(v4 + v2 - 24);
      v46 = *(v4 + v2 - 56);
      v47 = *(v4 + v2 - 16);
      v48 = *(v4 + v2 - 8);
      v49 = v46 + v47;
      v50 = 0x9DDFEA08EB382D69 * (v45 ^ ((0x9DDFEA08EB382D69 * (v45 ^ (v44 + v2))) >> 47) ^ (0x9DDFEA08EB382D69 * (v45 ^ (v44 + v2))));
      v51 = 0x9DDFEA08EB382D69 * (v50 ^ (v50 >> 47));
      v52 = *(v4 + v2 - 64) + v2;
      v53 = v44 + v46 + v52;
      v54 = __ROR8__(v53, 44) + v52;
      v55 = __ROR8__(v52 + v43 + v51, 21);
      v56 = v53 + v43;
      v57 = v54 + v55;
      v58 = v49 + *(v4 + v2 - 32) - 0x4B6D499041670D8DLL;
      v59 = v45 + v47 + v58;
      v60 = v59 + v48;
      v61 = __ROR8__(v59, 44) + v58 + __ROR8__(v58 + v43 + v48, 21);
      v63 = *v4;
      v62 = v4 + 4;
      v64 = v63 - 0x4B6D499041670D8DLL * v43;
      v65 = -((v2 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v66 = *(v62 - 3);
        v67 = v64 + v56 + v49 + v66;
        v68 = v62[2];
        v69 = v62[3];
        v70 = v62[1];
        v49 = v70 + v56 - 0x4B6D499041670D8DLL * __ROR8__(v49 + v57 + v68, 42);
        v71 = v51 + v60;
        v72 = *(v62 - 2);
        v73 = *(v62 - 1);
        v74 = *(v62 - 4) - 0x4B6D499041670D8DLL * v57;
        v75 = v74 + v60 + v73;
        v76 = v74 + v66 + v72;
        v56 = v76 + v73;
        v77 = __ROR8__(v76, 44) + v74;
        v78 = (0xB492B66FBE98F273 * __ROR8__(v67, 37)) ^ v61;
        v64 = 0xB492B66FBE98F273 * __ROR8__(v71, 33);
        v57 = v77 + __ROR8__(v75 + v78, 21);
        v79 = v64 + v61 + *v62;
        v60 = v70 + v68 + v79 + v69;
        v61 = __ROR8__(v70 + v68 + v79, 44) + v79 + __ROR8__(v49 + v72 + v79 + v69, 21);
        v62 += 8;
        v51 = v78;
        v65 += 64;
      }

      while (v65);
      v80 = 0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)));
      v81 = v64 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v61 ^ ((0x9DDFEA08EB382D69 * (v61 ^ v57)) >> 47) ^ (0x9DDFEA08EB382D69 * (v61 ^ v57)))) ^ ((0x9DDFEA08EB382D69 * (v61 ^ ((0x9DDFEA08EB382D69 * (v61 ^ v57)) >> 47) ^ (0x9DDFEA08EB382D69 * (v61 ^ v57)))) >> 47));
      v82 = 0x9DDFEA08EB382D69 * (v81 ^ (v78 - 0x4B6D499041670D8DLL * (v49 ^ (v49 >> 47)) - 0x622015F714C7D297 * (v80 ^ (v80 >> 47))));
      v35 = 0x9DDFEA08EB382D69 * (v81 ^ (v82 >> 47) ^ v82);
    }

    else
    {
      v9 = v4 + v2;
      v10 = *(v4 + v2 - 16);
      v11 = *(v4 + v2 - 8);
      v12 = v4[1];
      v13 = *v4 - 0x3C5A37A36834CED9 * (v10 + v2);
      v16 = v4 + 2;
      v14 = v4[2];
      v15 = v16[1];
      v17 = __ROR8__(v13 + v15, 52);
      v18 = __ROR8__(v13, 37);
      v19 = v13 + v12;
      v20 = __ROR8__(v19, 7);
      v21 = v19 + v14;
      v22 = v20 + v18;
      v23 = *(v9 - 4) + v14;
      v24 = v11 + v15;
      v25 = __ROR8__(v24 + v23, 52);
      v26 = v22 + v17;
      v27 = __ROR8__(v23, 37);
      v28 = *(v9 - 3) + v23;
      v29 = __ROR8__(v28, 7);
      v30 = v26 + __ROR8__(v21, 31);
      v31 = v28 + v10;
      v32 = v31 + v24;
      v33 = v21 + v15 + v27 + v29 + v25 + __ROR8__(v31, 31);
      v34 = 0x9AE16A3B2F90404FLL;
      v35 = v30 - 0x3C5A37A36834CED9 * ((0xC3A5C85C97CB3127 * (v32 + v30) - 0x651E95C4D06FBFB1 * v33) ^ ((0xC3A5C85C97CB3127 * (v32 + v30) - 0x651E95C4D06FBFB1 * v33) >> 47));
    }

    return (v35 ^ (v35 >> 47)) * v34;
  }

  else
  {
    if (v2 > 0x10)
    {
      v36 = v4[1];
      v37 = 0xB492B66FBE98F273 * *v4;
      v38 = 0x9AE16A3B2F90404FLL * *(v4 + v2 - 8);
      v39 = __ROR8__(v38, 30) + __ROR8__(v37 - v36, 43);
      v40 = v37 + v2 + __ROR8__(v36 ^ 0xC949D7C7509E6557, 20) - v38;
      v41 = 0x9DDFEA08EB382D69 * ((v39 - 0x3C5A37A36834CED9 * *(v4 + v2 - 16)) ^ v40);
      v42 = v40 ^ (v41 >> 47) ^ v41;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v42) ^ ((0x9DDFEA08EB382D69 * v42) >> 47));
    }

    if (v2 >= 9)
    {
      v5 = *v4;
      v6 = *(v4 + v2 - 8);
      v7 = __ROR8__(v6 + v2, v2);
      return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v5)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v5)))) ^ ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v5)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v5)))) >> 47))) ^ v6;
    }

    if (v2 >= 4)
    {
      v83 = *v4;
      v84 = *(v4 + v2 - 4);
      v85 = 0x9DDFEA08EB382D69 * ((v2 + (8 * v83)) ^ v84);
      v42 = v84 ^ (v85 >> 47) ^ v85;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v42) ^ ((0x9DDFEA08EB382D69 * v42) >> 47));
    }

    result = 0x9AE16A3B2F90404FLL;
    if (v2)
    {
      v86 = (0xC949D7C7509E6557 * (v2 | (4 * *(v4 + v2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*v4 | (*(v4 + (v2 >> 1)) << 8)));
      return 0x9AE16A3B2F90404FLL * (v86 ^ (v86 >> 47));
    }
  }

  return result;
}

BOOL sub_19B90EC2C(void *a1, void *a2)
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

  if (v2 < 0)
  {
    a1 = *a1;
  }

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

void sub_19B90ECA0(char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *sub_19B90ECFC(void *a1, void *a2)
{
  v4 = sub_19B90E7DC(a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (sub_19B90EC2C(v11 + 2, a2))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

void sub_19B90EDF8(NSObject *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a1[325].isa)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v1 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v1, OS_LOG_TYPE_INFO, "CLMM,Vehicle,Maps API already initialized", buf, 2u);
    }

    v2 = sub_19B87DD40();
    if (*(v2 + 160) <= 1 && *(v2 + 164) <= 1 && *(v2 + 168) <= 1 && !*(v2 + 152))
    {
      goto LABEL_26;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v3 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "virtual void CLGeoMapFeatureAccessGeometry::initializeMapsAPI()", "CoreLocation: %s\n", v3);
    if (v3 == buf)
    {
      goto LABEL_26;
    }

LABEL_25:
    free(v3);
    goto LABEL_26;
  }

  v4 = a1;
  a1[326].isa = dispatch_queue_create("cl_geo_access_map_feature_geometry_queue", 0);
  v5 = [objc_alloc(MEMORY[0x1E69A2198]) initWithQueue:v4[326].isa];
  v4[325].isa = v5;
  if (v5)
  {
    [(objc_class *)v5 setAllowNetworkTileLoad:1];
    [(objc_class *)v4[325].isa setFlipNegativeTravelDirectionRoads:1];
    [(objc_class *)v4[325].isa setVisitDoubleTravelDirectionRoadsTwice:1];
    [(objc_class *)v4[325].isa setAllowStaleData:1];
    [(objc_class *)v4[325].isa setAllowOfflineData:1];
    v6 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v11 = off_1EAFE4708;
    v6 = "assert";
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "assert";
      v22 = 2081;
      v23 = "fGEOMapFeatureAccess != nullptr";
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed,fGEOMapFeatureAccess==nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
      }
    }

    v12 = off_1EAFE4708;
    if (os_signpost_enabled(off_1EAFE4708))
    {
      *buf = 68289539;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "assert";
      v22 = 2081;
      v23 = "fGEOMapFeatureAccess != nullptr";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed,fGEOMapFeatureAccess==nil", "{msg%{public}.0s:Assertion failed,fGEOMapFeatureAccess==nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
      }
    }

    v4 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "assert";
      v22 = 2081;
      v23 = "fGEOMapFeatureAccess != nullptr";
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed,fGEOMapFeatureAccess==nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v14 = 44;
    v15 = "initializeMapsAPI";
    v13 = "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Daemon/Positioning/MapMatching/CLGeoMapFeatureAccessGeometry.mm";
    abort_report_np();
  }

  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
LABEL_16:
  v7 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(objc_class *)v4[325].isa allowStaleData];
    *buf = 67240192;
    v17 = v8;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "CLMM,Vehicle,using maps API,stale data,%{public}d", buf, 8u);
  }

  v9 = sub_19B87DD40();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (*(v6 + 218) != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    [(objc_class *)v4[325].isa allowStaleData:v13];
    v3 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "virtual void CLGeoMapFeatureAccessGeometry::initializeMapsAPI()", "CoreLocation: %s\n", v3);
    if (v3 != buf)
    {
      goto LABEL_25;
    }
  }

LABEL_26:
  v10 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B90F384(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    if ((*(a1 + 33) & 1) == 0 && *(a1 + 2600) && *a2 != 0)
    {
      v5 = objc_autoreleasePoolPush();
      v18 = 0;
      v19 = 0;
      v6 = *(*a2 + 136);
      if (*(*a2 + 144) == v6)
      {
        v7 = 0;
        v8 = 0;
      }

      else
      {
        v7 = *v6;
        v8 = v6[1];
      }

      v18 = v7;
      v19 = v8;
      v16 = [MEMORY[0x1E695DF70] array];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = sub_19B90FD44;
      v17[3] = &unk_1E753DB80;
      v17[4] = v16;
      v17[5] = v17;
      v22 = 0;
      operator new();
    }
  }

  else
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v9 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 8);
      *buf = 134349056;
      v24 = v10;
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometry geometry is not initialized, use initialize() function", buf, 0xCu);
    }

    v11 = sub_19B87DD40();
    if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
      }

      v12 = *(a1 + 8);
      v20 = 134349056;
      v21 = v12;
      v13 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "GEOMapFeatureRoad *CLGeoMapFeatureAccessGeometry::getGeoMapFeatureRoadObject(const CLMapRoadPtr &) const", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t sub_19B90FD44(uint64_t a1, void *a2)
{
  if (([a2 isRail] & 1) != 0 || (result = objc_msgSend(a2, "travelDirection"), result != 6) && (result = objc_msgSend(a2, "travelDirection"), result != 255))
  {
    v4 = *(a1 + 32);

    return [v4 addObject:a2];
  }

  return result;
}

uint64_t sub_19B90FDB8(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3052000000;
  v25 = sub_19B91662C;
  v26 = sub_19B91663C;
  v27 = dispatch_group_create();
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_19B916648;
  v17[3] = &unk_1E753DC20;
  v17[4] = &v28;
  v17[5] = &v22;
  v17[6] = &v18;
  dispatch_group_enter(v23[5]);
  v2 = sub_19B916D20(a1, v17);
  v3 = v23[5];
  v4 = dispatch_time(0, 100000000);
  v5 = dispatch_group_wait(v3, v4);
  v19[3] = v5;
  if (v5)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v6 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v7 = v19[3];
      *buf = 134349056;
      v35 = v7;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEBUG, "#Warning CLMM, GeoMapFeatureAccess query timed out,%{public}lu", buf, 0xCu);
    }

    v8 = sub_19B87DD40();
    if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
      }

      v9 = v19[3];
      v32 = 134349056;
      v33 = v9;
      v10 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureAccessGeometryCommon::performQuery(QueryFunction, dispatch_queue_t  _Nonnull const &)", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    [v2 cancel];
  }

  else if (v23[5])
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v11 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEBUG, "CLMM,clearing dispatchGroup", buf, 2u);
    }

    v12 = sub_19B87DD40();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
      }

      LOWORD(v32) = 0;
      v13 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureAccessGeometryCommon::performQuery(QueryFunction, dispatch_queue_t  _Nonnull const &)", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }

    v23[5] = 0;
  }

  if (v19[3])
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v29 + 24) ^ 1;
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);
  v15 = *MEMORY[0x1E69E9840];
  return v14 & 1;
}

void sub_19B910264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B91029C(uint64_t a1, uint64_t *a2, uint64_t a3, double a4)
{
  v136 = *MEMORY[0x1E69E9840];
  v102 = a4;
  if (*(a1 + 32))
  {
    v8 = objc_autoreleasePoolPush();
    v101 = *(a3 + 56);
    v9 = round(a4);
    v10 = (v9 + v9);
    if (v10 >= 0x1F4)
    {
      v11 = 500;
    }

    else
    {
      v11 = v10;
    }

    v98 = 0;
    v99 = 0;
    v100 = 0;
    sub_19B91167C(&v98, v11);
    if (*(a1 + 33) != 1)
    {
      v30 = [MEMORY[0x1E695DF70] array];
      v97[0] = MEMORY[0x1E69E9820];
      v97[1] = 3221225472;
      v97[2] = sub_19B911710;
      v97[3] = &unk_1E753DB80;
      v97[4] = v30;
      *&v134 = v97;
      *&v104[24] = 0;
      operator new();
    }

    if (*(a1 + 16))
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
      }

      v12 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v13 = *(a1 + 8);
        v14 = (*(*(a1 + 16) + 336) - *(*(a1 + 16) + 328)) >> 4;
        *buf = 134349312;
        *&buf[4] = v13;
        *&buf[12] = 2050;
        *&buf[14] = v14;
        _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,RoadBuffer,findRoadsNear fRoadBuffer.size,%{public}lu", buf, 0x16u);
      }

      v15 = sub_19B87DD40();
      if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
        }

        v16 = *(a1 + 8);
        v17 = (*(*(a1 + 16) + 336) - *(*(a1 + 16) + 328)) >> 4;
        *v104 = 134349312;
        *&v104[4] = v16;
        *&v104[12] = 2050;
        *&v104[14] = v17;
        v18 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLGeoMapFeatureAccessGeometry::roadsWithinDistance(CLMapGeometry::DistanceQueryResultList &, const CLMapCrumb &, double, BOOL) const", "CoreLocation: %s\n", v18);
        if (v18 != buf)
        {
          free(v18);
        }
      }

      if (sub_19B8E77AC(*(a1 + 16), &v98, 1, 0, *(a3 + 56), *(a3 + 64), v102))
      {
        v31 = v98;
        v29 = 1;
        v95 = v99;
        if (v98 == v99)
        {
          goto LABEL_140;
        }

        __asm { FMOV            V0.2D, #-1.0 }

        v94 = _Q0;
        while (*v31)
        {
          if (sub_19B9F6598(*v31))
          {
            v128 = 0;
            v127 = 0;
            v129 = 0.0;
            v130 = 1;
            v131 = 0.0;
            v133 = 0;
            v132 = 0uLL;
            *v104 = 0;
            *&v104[8] = 0;
            *&v104[16] = v94;
            v105 = 0;
            v106 = 0;
            v107 = 0xBFF0000000000000;
            v119 = 0;
            v120 = 0;
            memset(&v117[32], 0, 32);
            v118 = 0;
            v121 = 0u;
            v122 = 0u;
            v123 = 0u;
            memset(v124, 0, 27);
            memset(&v124[32], 0, 48);
            memset(v117, 0, 30);
            v116 = 0u;
            v115 = 0u;
            v114 = 0u;
            v113 = 0u;
            v112 = 0u;
            v111 = 0u;
            v110 = 0u;
            v109 = 0u;
            v108 = 0u;
            v126 = 0xBFF0000000000000;
            v125 = 0;
            v37 = *v31;
            v38 = *(*v31 + 17);
            v39 = *(*v31 + 18) - v38;
            v96 = 0xBFF0000000000000;
            if ((v39 >> 4) <= 1)
            {
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
              }

              v65 = off_1EAFE4708;
              if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_impl(&dword_19B873000, v65, OS_LOG_TYPE_DEBUG, "CLMM,findClosestPointOnRoad,CoordinateCount is <= 1", buf, 2u);
              }

              v66 = sub_19B87DD40();
              if (*(v66 + 160) > 1 || *(v66 + 164) > 1 || *(v66 + 168) > 1 || *(v66 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
                }

                LOWORD(v134) = 0;
                v67 = _os_log_send_and_compose_impl();
                sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoAccessCommon::findClosestPointOnRoad(CLDistanceCalc &, const int, const std::vector<Coordinate> &, const Coordinate &, double &, double &) [Coordinate = GEOLocationCoordinate2D]", "CoreLocation: %s\n", v67);
                if (v67 != buf)
                {
                  free(v67);
                }
              }

              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
              }

              v68 = off_1EAFE4708;
              if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
              {
                v69 = *(a1 + 8);
                *buf = 134349056;
                *&buf[4] = v69;
                _os_log_impl(&dword_19B873000, v68, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,findClosestPointOnRoad returned false", buf, 0xCu);
              }

              v70 = sub_19B87DD40();
              if ((*(v70 + 160) & 0x80000000) == 0 || (*(v70 + 164) & 0x80000000) == 0 || (*(v70 + 168) & 0x80000000) == 0 || *(v70 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46D0 == -1)
                {
                  goto LABEL_101;
                }

                goto LABEL_114;
              }

LABEL_103:
              if (SHIBYTE(v113) < 0)
              {
                operator delete(*(&v112 + 1));
              }

              if (v128)
              {
                sub_19B8750F8(v128);
              }

              v29 = 0;
              goto LABEL_140;
            }

            v40 = v101;
            v41 = *v38;
            v42 = v38[1];
            *&buf[8] = 0;
            *buf = 0;
            v43 = 0.0;
            sub_19BA0BE88((a1 + 56), buf, &buf[8], &v134, *&v101, *(&v101 + 1), 0.0, v41, v42, 0.0);
            v44 = 0;
            v45 = *buf;
            v46 = *&buf[8];
            v47 = ((v39 >> 4) & 0x7FFFFFFF) - 1;
            v48 = -1.0;
            v49 = 0.0;
            while (2)
            {
              v50 = v45;
              v51 = v46;
              v52 = *(v37 + 17) + v44;
              v53 = *(v52 + 16);
              v54 = *(v52 + 24);
              v134 = 0uLL;
              sub_19BA0BE88((a1 + 56), &v134, &v134 + 1, &v103, *&v40, *(&v40 + 1), 0.0, v53, v54, 0.0);
              v46 = *(&v134 + 1);
              v45 = *&v134;
              v55 = (v50 - *&v134) * (v50 - *&v134) + (v51 - *(&v134 + 1)) * (v51 - *(&v134 + 1));
              v56 = 0.0 - v50;
              if (v55 < 0.001)
              {
                v57 = v56 * v56;
                v58 = 0.0;
                v59 = 0.0 - v51;
                goto LABEL_52;
              }

              v58 = ((0.0 - v51) * (*(&v134 + 1) - v51) + v56 * (*&v134 - v50)) / v55;
              if (v58 >= 0.0)
              {
                if (v58 <= 1.0)
                {
                  v57 = (0.0 - (v50 + (*&v134 - v50) * v58)) * (0.0 - (v50 + (*&v134 - v50) * v58));
                  v59 = 0.0 - (v51 + (*(&v134 + 1) - v51) * v58);
LABEL_52:
                  v60 = v57 + v59 * v59;
                }

                else
                {
                  v60 = (0.0 - *&v134) * (0.0 - *&v134) + (0.0 - *(&v134 + 1)) * (0.0 - *(&v134 + 1));
                  v58 = 1.0;
                }
              }

              else
              {
                v60 = v56 * v56 + (0.0 - v51) * (0.0 - v51);
                v58 = 0.0;
              }

              v61 = sqrt(v55);
              v62 = sqrt(v60);
              v63 = v48 < 0.0;
              if (v62 < v48)
              {
                v63 = 1;
              }

              v64 = v43 + v61 * v58;
              if (v63)
              {
                v48 = v62;
                v49 = v64;
              }

              v43 = v43 + v61;
              v44 += 16;
              if (!--v47)
              {
                v71 = v49 / v43;
                if (v43 < 0.001)
                {
                  v71 = 0.0;
                }

                v96 = *&v71;
                v72 = *(*v31 + 18) != 2;
                if (sub_19B9DF3F8(a1, v104, v31, v72, &v96, 1))
                {
                  v74 = *v31;
                  v73 = v31[1];
                  if (v73)
                  {
                    atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v75 = v128;
                  v127 = v74;
                  v128 = v73;
                  if (v75)
                  {
                    sub_19B8750F8(v75);
                  }

                  v76 = v48;
                  v129 = v76;
                  v132 = v114;
                  v77 = *&v115;
                  v131 = v77;
                  v133 = v96;
                  v130 = v72;
                  sub_19B9117CC();
                }

                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
                }

                v78 = off_1EAFE4708;
                if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
                {
                  v79 = *(a1 + 8);
                  *buf = 134349056;
                  *&buf[4] = v79;
                  _os_log_impl(&dword_19B873000, v78, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,interpolateOnRoad returned false", buf, 0xCu);
                }

                v80 = sub_19B87DD40();
                if ((*(v80 + 160) & 0x80000000) == 0 || (*(v80 + 164) & 0x80000000) == 0 || (*(v80 + 168) & 0x80000000) == 0 || *(v80 + 152))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1EAFE46D0 == -1)
                  {
LABEL_101:
                    v81 = *(a1 + 8);
                    LODWORD(v134) = 134349056;
                    *(&v134 + 4) = v81;
                    v82 = _os_log_send_and_compose_impl();
                    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometry::roadsWithinDistance(CLMapGeometry::DistanceQueryResultList &, const CLMapCrumb &, double, BOOL) const", "CoreLocation: %s\n", v82);
                    if (v82 != buf)
                    {
                      free(v82);
                    }

                    goto LABEL_103;
                  }

LABEL_114:
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
                  goto LABEL_101;
                }

                goto LABEL_103;
              }

              continue;
            }
          }

          v31 += 2;
          if (v31 == v95)
          {
            v29 = 1;
            goto LABEL_140;
          }
        }

        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
        }

        v87 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
        {
          v88 = *(a1 + 8);
          *buf = 134349056;
          *&buf[4] = v88;
          _os_log_impl(&dword_19B873000, v87, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,makeRoadFromGEOMapFeatureRoad returned nullptr", buf, 0xCu);
        }

        v89 = sub_19B87DD40();
        if ((*(v89 + 160) & 0x80000000) == 0 || (*(v89 + 164) & 0x80000000) == 0 || (*(v89 + 168) & 0x80000000) == 0 || *(v89 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
          }

          v90 = *(a1 + 8);
          *v104 = 134349056;
          *&v104[4] = v90;
          v91 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometry::roadsWithinDistance(CLMapGeometry::DistanceQueryResultList &, const CLMapCrumb &, double, BOOL) const", "CoreLocation: %s\n", v91);
          if (v91 != buf)
          {
            free(v91);
          }
        }

        sub_19B916DC0(a2);
LABEL_139:
        v29 = 0;
LABEL_140:
        *buf = &v98;
        sub_19B8F0E84(buf);
        objc_autoreleasePoolPop(v8);
        goto LABEL_141;
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
      }

      v19 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v20 = *(a1 + 8);
        *buf = 134349056;
        *&buf[4] = v20;
        _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,Warning,RoadBuffer,findRoadsNear returned false", buf, 0xCu);
      }

      v21 = sub_19B87DD40();
      if (*(v21 + 160) <= 1 && *(v21 + 164) <= 1 && *(v21 + 168) <= 1 && !*(v21 + 152))
      {
        goto LABEL_139;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
      }

      v22 = *(a1 + 8);
      *v104 = 134349056;
      *&v104[4] = v22;
      v23 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLGeoMapFeatureAccessGeometry::roadsWithinDistance(CLMapGeometry::DistanceQueryResultList &, const CLMapCrumb &, double, BOOL) const", "CoreLocation: %s\n", v23);
    }

    else
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
      }

      v83 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        v84 = *(a1 + 8);
        *buf = 134349056;
        *&buf[4] = v84;
        _os_log_impl(&dword_19B873000, v83, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,roadsWithinDistance,fRoadGeometryBuffer is unexpectedly nullptr", buf, 0xCu);
      }

      v85 = sub_19B87DD40();
      if ((*(v85 + 160) & 0x80000000) != 0 && (*(v85 + 164) & 0x80000000) != 0 && (*(v85 + 168) & 0x80000000) != 0 && !*(v85 + 152))
      {
        goto LABEL_139;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
      }

      v86 = *(a1 + 8);
      *v104 = 134349056;
      *&v104[4] = v86;
      v23 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometry::roadsWithinDistance(CLMapGeometry::DistanceQueryResultList &, const CLMapCrumb &, double, BOOL) const", "CoreLocation: %s\n", v23);
    }

    if (v23 != buf)
    {
      free(v23);
    }

    goto LABEL_139;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
  }

  v24 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
  {
    v25 = *(a1 + 8);
    *buf = 134349056;
    *&buf[4] = v25;
    _os_log_impl(&dword_19B873000, v24, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometry geometry is not initialized, use initialize() function", buf, 0xCu);
  }

  v26 = sub_19B87DD40();
  if ((*(v26 + 160) & 0x80000000) == 0 || (*(v26 + 164) & 0x80000000) == 0 || (*(v26 + 168) & 0x80000000) == 0 || *(v26 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v27 = *(a1 + 8);
    *v104 = 134349056;
    *&v104[4] = v27;
    v28 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometry::roadsWithinDistance(CLMapGeometry::DistanceQueryResultList &, const CLMapCrumb &, double, BOOL) const", "CoreLocation: %s\n", v28);
    if (v28 != buf)
    {
      free(v28);
    }
  }

  v29 = 0;
LABEL_141:
  v92 = *MEMORY[0x1E69E9840];
  return v29;
}

void sub_19B9115B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  a39 = &a32;
  sub_19B8F0E84(&a39);
  _Unwind_Resume(a1);
}

void *sub_19B91167C(void *result, unint64_t a2)
{
  v8 = *result;
  if (a2 > (result[2] - *result) >> 4)
  {
    v11 = v5;
    v12 = v4;
    v13 = v3;
    v14 = v2;
    v15 = v6;
    v16 = v7;
    v9 = result[1] - v8;
    v10 = result;
    sub_19B8F0D38(result, a2);
  }

  return result;
}

uint64_t sub_19B911710(uint64_t a1, void *a2)
{
  if (([a2 isRail] & 1) != 0 || (result = objc_msgSend(a2, "travelDirection"), result != 6) && (result = objc_msgSend(a2, "travelDirection"), result != 255))
  {
    v4 = *(a1 + 32);

    return [v4 addObject:a2];
  }

  return result;
}

void *sub_19B911784(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[1];
  *a1 = v4;
  a1[1] = v3;
  if (v5)
  {
    sub_19B8750F8(v5);
  }

  return a1;
}

uint64_t sub_19B91184C(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 32) & 1) == 0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v2 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 8);
      *buf = 134349056;
      v10 = v3;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometry geometry is not initialized, use initialize() function", buf, 0xCu);
    }

    v4 = sub_19B87DD40();
    if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
      }

      v8 = *(a1 + 8);
      v5 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometry::roadsConnected(CLMapGeometry::ConnectedQueryResultList &, const CLMapRoadPtr &, BOOL, double, double, BOOL) const", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t sub_19B911A1C(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4, char a5, double **a6, int a7, double *a8, double a9, double a10)
{
  v99 = *MEMORY[0x1E69E9840];
  v83 = a7;
  if ((*(a1 + 32) & 1) == 0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v22 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v23 = *(a1 + 8);
      LODWORD(buf) = 134349056;
      *(&buf + 4) = v23;
      _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometry geometry is not initialized, use initialize() function", &buf, 0xCu);
    }

    v24 = sub_19B87DD40();
    if ((*(v24 + 160) & 0x80000000) != 0 && (*(v24 + 164) & 0x80000000) != 0 && (*(v24 + 168) & 0x80000000) != 0 && !*(v24 + 152))
    {
      goto LABEL_25;
    }

    bzero(&buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_23;
    }

LABEL_140:
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
LABEL_23:
    v28 = *(a1 + 8);
    LODWORD(v89) = 134349056;
    *(&v89 + 4) = v28;
    v29 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometry::roadsAtIntersection(CLMapCrumb &, CLMapGeometry::IntersectionQueryResultList *, CLMapGeometry::IntersectionQueryResultList *, BOOL, const CLMapRoadPtr &, BOOL, double, double, double &) const", "CoreLocation: %s\n", v29);
    if (v29 != &buf)
    {
      free(v29);
    }

    goto LABEL_25;
  }

  v12 = *a6;
  if (*a6)
  {
    v19 = *v12;
    if (a5)
    {
      if (!a7)
      {
LABEL_5:
        sub_19B9F5AA8(v12);
        v20 = 0;
        v21 = v12[5] * a9;
        goto LABEL_28;
      }
    }

    else
    {
      v83 = a7 ^ 1;
      if (a7)
      {
        goto LABEL_5;
      }
    }

    sub_19B9F5AA8(v12);
    v21 = (1.0 - a9) * v12[5];
    v20 = 1;
LABEL_28:
    *a8 = v21;
    if (v21 > a10)
    {
      *a8 = -1.0;
LABEL_38:
      v30 = 1;
      goto LABEL_130;
    }

    v31 = 0.0;
    if (v20)
    {
      v31 = 1.0;
    }

    v82 = v31;
    sub_19B9DF3F8(a1, a2, a6, v20, &v82, 1);
    if (!(a3 | a4))
    {
      goto LABEL_38;
    }

    v78 = 0;
    v79 = &v78;
    v80 = 0x2020000000;
    v81 = 0;
    *&v89 = 0;
    *(&v89 + 1) = &v89;
    v90 = 0x4812000000;
    v91 = sub_19B912D34;
    v92 = sub_19B912D7C;
    v93 = 0;
    v94[0] = v94;
    v94[1] = v94;
    v94[2] = 0;
    v71 = 0;
    v72 = &v71;
    v73 = 0x4812000000;
    v74 = sub_19B912D34;
    v75 = sub_19B912D7C;
    v76 = 0;
    v77[0] = v77;
    v77[1] = v77;
    v77[2] = 0;
    context = objc_autoreleasePoolPush();
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = sub_19B912D84;
    v70[3] = &unk_1E753DBA8;
    v70[7] = a1;
    v70[8] = v19;
    v70[4] = &v78;
    v70[5] = &v89;
    v70[6] = &v71;
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = sub_19B91327C;
    v69[3] = &unk_1E753DBD0;
    v69[4] = v70;
    v69[5] = v69;
    v68[0] = MEMORY[0x1E69E9820];
    v68[1] = 3221225472;
    v68[2] = sub_19B913290;
    v68[3] = &unk_1E753DBD0;
    v68[4] = v70;
    v68[5] = v68;
    if (!a3)
    {
LABEL_82:
      if (!a4)
      {
LABEL_117:
        v30 = *(v79 + 24) ^ 1;
LABEL_129:
        objc_autoreleasePoolPop(context);
        _Block_object_dispose(&v71, 8);
        sub_19B916DC0(v77);
        _Block_object_dispose(&v89, 8);
        sub_19B916DC0(v94);
        _Block_object_dispose(&v78, 8);
        goto LABEL_130;
      }

      if (*(a1 + 33) == 1)
      {
        v87 = 0uLL;
        v88 = 0;
        sub_19B91167C(&v87, 3uLL);
        v48 = *(a1 + 16);
        if (v48)
        {
          if (v83 == 1)
          {
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
            }

            v49 = off_1EAFE4708;
            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
            {
              v50 = *(a1 + 8);
              LODWORD(buf) = 134349056;
              *(&buf + 4) = v50;
              _os_log_impl(&dword_19B873000, v49, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,Unexpected,RoadsAtIntersection incoming data requested from end of the road", &buf, 0xCu);
            }

            v51 = sub_19B87DD40();
            if ((*(v51 + 160) & 0x80000000) == 0 || (*(v51 + 164) & 0x80000000) == 0 || (*(v51 + 168) & 0x80000000) == 0 || *(v51 + 152))
            {
              bzero(&buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
              }

              v52 = *(a1 + 8);
              LODWORD(v86[0]) = 134349056;
              *(v86 + 4) = v52;
              v53 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometry::roadsAtIntersection(CLMapCrumb &, CLMapGeometry::IntersectionQueryResultList *, CLMapGeometry::IntersectionQueryResultList *, BOOL, const CLMapRoadPtr &, BOOL, double, double, double &) const", "CoreLocation: %s\n", v53);
              if (v53 != &buf)
              {
                free(v53);
              }
            }
          }

          else
          {
            sub_19B8EB310(v48, a6, &v87, 1);
          }

          if (v87 != *(&v87 + 1))
          {
            buf = 0uLL;
            v96 = 1;
            v97 = 0;
            v98 = 0;
            v57 = *v87;
            v58 = *(v87 + 8);
            if (v58)
            {
              atomic_fetch_add_explicit((v58 + 8), 1uLL, memory_order_relaxed);
              v59 = *(&buf + 1);
              *&buf = v57;
              *(&buf + 1) = v58;
              if (v59)
              {
                sub_19B8750F8(v59);
              }
            }

            else
            {
              buf = *v87;
            }

            v96 = 1;
            v97 = 0;
            v98 = 0;
            sub_19B9131FC();
          }
        }

        *&buf = &v87;
        sub_19B8F0E84(&buf);
        if (*(&v89 + 1) + 48 != a4)
        {
          sub_19B91737C(a4, *(*(&v89 + 1) + 56), *(&v89 + 1) + 48);
        }

        goto LABEL_117;
      }

      v86[0] = sub_19B90F384(a1, a6);
      if (v86[0])
      {
        ++*(a1 + 36);
        v84 = 0;
        operator new();
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
      }

      v54 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        v55 = *(a1 + 8);
        LODWORD(buf) = 134349056;
        *(&buf + 4) = v55;
        _os_log_impl(&dword_19B873000, v54, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,getGeoMapFeatureRoadObject returned nil", &buf, 0xCu);
      }

      v56 = sub_19B87DD40();
      if ((*(v56 + 160) & 0x80000000) != 0 && (*(v56 + 164) & 0x80000000) != 0 && (*(v56 + 168) & 0x80000000) != 0 && !*(v56 + 152))
      {
LABEL_128:
        v30 = 0;
        goto LABEL_129;
      }

      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46D0 == -1)
      {
LABEL_126:
        v63 = *(a1 + 8);
        LODWORD(v87) = 134349056;
        *(&v87 + 4) = v63;
        v64 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometry::roadsAtIntersection(CLMapCrumb &, CLMapGeometry::IntersectionQueryResultList *, CLMapGeometry::IntersectionQueryResultList *, BOOL, const CLMapRoadPtr &, BOOL, double, double, double &) const", "CoreLocation: %s\n", v64);
        if (v64 != &buf)
        {
          free(v64);
        }

        goto LABEL_128;
      }

LABEL_141:
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
      goto LABEL_126;
    }

    if (*(a1 + 33) == 1)
    {
      v87 = 0uLL;
      v88 = 0;
      sub_19B91167C(&v87, 3uLL);
      v32 = *(a1 + 16);
      if (v32)
      {
        if (v83 == 1)
        {
          sub_19B8EAC7C(v32, a6, &v87, 1);
        }

        else
        {
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
          }

          v40 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
          {
            v41 = *(a1 + 8);
            LODWORD(buf) = 134349056;
            *(&buf + 4) = v41;
            _os_log_impl(&dword_19B873000, v40, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,Unexpected,RoadsAtIntersection outgoing data requested from start of the road", &buf, 0xCu);
          }

          v42 = sub_19B87DD40();
          if ((*(v42 + 160) & 0x80000000) == 0 || (*(v42 + 164) & 0x80000000) == 0 || (*(v42 + 168) & 0x80000000) == 0 || *(v42 + 152))
          {
            bzero(&buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
            }

            v43 = *(a1 + 8);
            LODWORD(v86[0]) = 134349056;
            *(v86 + 4) = v43;
            v44 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometry::roadsAtIntersection(CLMapCrumb &, CLMapGeometry::IntersectionQueryResultList *, CLMapGeometry::IntersectionQueryResultList *, BOOL, const CLMapRoadPtr &, BOOL, double, double, double &) const", "CoreLocation: %s\n", v44);
            if (v44 != &buf)
            {
              free(v44);
            }
          }
        }

        if (v87 != *(&v87 + 1))
        {
          buf = 0uLL;
          v96 = 1;
          v97 = 0;
          v98 = 0;
          v45 = *v87;
          v46 = *(v87 + 8);
          if (v46)
          {
            atomic_fetch_add_explicit((v46 + 8), 1uLL, memory_order_relaxed);
            v47 = *(&buf + 1);
            *&buf = v45;
            *(&buf + 1) = v46;
            if (v47)
            {
              sub_19B8750F8(v47);
            }
          }

          else
          {
            buf = *v87;
          }

          v96 = 1;
          v97 = 0;
          v98 = 0;
          sub_19B9131FC();
        }
      }

      *&buf = &v87;
      sub_19B8F0E84(&buf);
      goto LABEL_80;
    }

    v33 = sub_19B8E5F08(a1 + 2616, *a6, 0);
    if (v83 == 1 && (v34 = v33) != 0)
    {
      v36 = *(v33 + 32);
      v35 = *(v33 + 40);
      if (v36 != v35)
      {
        while (*v36)
        {
          if (**v36 != v19)
          {
            buf = 0uLL;
            v96 = 1;
            v97 = 0;
            v98 = 0;
            v37 = *v36;
            v38 = v36[1];
            if (v38)
            {
              atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
              v39 = *(&buf + 1);
              *&buf = v37;
              *(&buf + 1) = v38;
              if (v39)
              {
                sub_19B8750F8(v39);
              }
            }

            else
            {
              buf = *v36;
            }

            v96 = 1;
            v97 = 0;
            v98 = 0;
            sub_19B9131FC();
          }

          v36 += 2;
          if (v36 == v35)
          {
            goto LABEL_76;
          }
        }

        sub_19B916DC0(v72 + 6);
      }

LABEL_76:
      if (v72[8])
      {
        *(v34 + 56) = *(a1 + 8);
LABEL_80:
        if (v72 + 6 != a3)
        {
          sub_19B91737C(a3, v72[7], (v72 + 6));
        }

        goto LABEL_82;
      }
    }

    else if (v72[8])
    {
      goto LABEL_80;
    }

    v86[0] = sub_19B90F384(a1, a6);
    if (v86[0])
    {
      ++*(a1 + 36);
      v85 = 0;
      operator new();
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v60 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v61 = *(a1 + 8);
      LODWORD(buf) = 134349056;
      *(&buf + 4) = v61;
      _os_log_impl(&dword_19B873000, v60, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,getGeoMapFeatureRoadObject returned nil", &buf, 0xCu);
    }

    v62 = sub_19B87DD40();
    if ((*(v62 + 160) & 0x80000000) != 0 && (*(v62 + 164) & 0x80000000) != 0 && (*(v62 + 168) & 0x80000000) != 0 && !*(v62 + 152))
    {
      goto LABEL_128;
    }

    bzero(&buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_126;
    }

    goto LABEL_141;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
  }

  v25 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
  {
    v26 = *(a1 + 8);
    LODWORD(buf) = 134349056;
    *(&buf + 4) = v26;
    _os_log_impl(&dword_19B873000, v25, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,input road is nullptr", &buf, 0xCu);
  }

  v27 = sub_19B87DD40();
  if ((*(v27 + 160) & 0x80000000) == 0 || (*(v27 + 164) & 0x80000000) == 0 || (*(v27 + 168) & 0x80000000) == 0 || *(v27 + 152))
  {
    bzero(&buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_140;
  }

LABEL_25:
  v30 = 0;
LABEL_130:
  v65 = *MEMORY[0x1E69E9840];
  return v30 & 1;
}

void sub_19B912C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a36, 8);
  sub_19B916DC0(a13);
  _Block_object_dispose(&a65, 8);
  sub_19B916DC0(a14);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

void *sub_19B912D34(void *result, void *a2)
{
  result[6] = result + 6;
  result[7] = result + 6;
  result[8] = 0;
  v2 = a2[8];
  if (v2)
  {
    v4 = a2[6];
    v3 = a2[7];
    v5 = *(v4 + 8);
    v6 = *v3;
    *(v6 + 8) = v5;
    *v5 = v6;
    v7 = result[6];
    *(v7 + 8) = v3;
    *v3 = v7;
    result[6] = v4;
    *(v4 + 8) = result + 6;
    result[8] = v2;
    a2[8] = 0;
  }

  return result;
}

void sub_19B912D84(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1[7];
  if (a2)
  {
    if ([a2 roadID] != a1[8] && ((objc_msgSend(a2, "isRail") & 1) != 0 || !objc_msgSend(a2, "travelDirection") || objc_msgSend(a2, "travelDirection") == 1))
    {
      sub_19B8F30F0();
    }
  }

  else
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v5 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v6 = *(v3 + 8);
      buf = 134349056;
      *buf_4 = v6;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,GEOMapFeatureRoad is null", &buf, 0xCu);
    }

    v7 = sub_19B87DD40();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
      }

      v10 = *(v3 + 8);
      v8 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometry::roadsAtIntersection(CLMapCrumb &, CLMapGeometry::IntersectionQueryResultList *, CLMapGeometry::IntersectionQueryResultList *, BOOL, const CLMapRoadPtr &, BOOL, double, double, double &) const_block_invoke", "CoreLocation: %s\n", v8);
      if (v8 != &buf)
      {
        free(v8);
      }
    }

    *(*(a1[4] + 8) + 24) = 1;
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_19B9131C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (v20)
  {
    sub_19B8750F8(v20);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9132A4(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      Current = CFAbsoluteTimeGetCurrent();
      sub_19B8E62BC(v2 + 288, Current, 0.5, 0.5);
    }

    v4 = *(a1 + 8);
    v5 = *MEMORY[0x1E69E9840];

    sub_19B8E62BC(a1 + 2616, v4, 60.0, 60.0);
  }

  else
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v6 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 8);
      *buf = 134349056;
      v13 = v7;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometry geometry is not initialized, use initialize() function", buf, 0xCu);
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
      }

      v11 = *(a1 + 8);
      v9 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "virtual void CLGeoMapFeatureAccessGeometry::clearStoredStaleConnections()", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    v10 = *MEMORY[0x1E69E9840];
  }
}

__n128 sub_19B9134E0(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

size_t *sub_19B913530(size_t *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v7 = (v3 - *result) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_19B8B8A40();
    }

    v9 = v4 - *result;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v17[4] = v2;
    if (v10)
    {
      sub_19B8F23AC(v10);
    }

    v11 = 16 * v7;
    v12 = *a2;
    *(16 * v7) = *a2;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 16);
    v13 = v2[1] - *v2;
    v14 = v11 - v13;
    memcpy((v11 - v13), *v2, v13);
    v15 = *v2;
    *v2 = v14;
    v2[1] = v6;
    v16 = v2[2];
    v2[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = sub_19B916E38(v17);
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  v2[1] = v6;
  return result;
}

int8x8_t sub_19B913640(uint64_t a1, void *a2)
{
  if (([a2 isRail] & 1) != 0 || !objc_msgSend(a2, "travelDirection") || objc_msgSend(a2, "travelDirection") == 1)
  {
    v5 = *(a1 + 48);
    if (v5 != [a2 roadID] || (v6 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3E7AD7F29ABCAF48uLL), vabdq_f64(*objc_msgSend(a2, "coordinates"), **(a1 + 56)))), result = vand_s8(v6, vdup_lane_s32(v6, 1)), (result.i8[0] & 1) == 0))
    {
      sub_19B8F30F0();
    }
  }

  return result;
}

void sub_19B913778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_19B8750F8(a13);
  }

  if (v13)
  {
    sub_19B8750F8(v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B9137B4(float64x2_t *a1, void **a2, double *a3, double *a4, double a5)
{
  v65 = *MEMORY[0x1E69E9840];
  *a3 = 0.0;
  a3[1] = 0.0;
  *a4 = 0.0;
  v5 = *a2;
  if (!*a2)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v19 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_ERROR, "CLMM, NULL road", buf, 2u);
    }

    v20 = sub_19B87DD40();
    if ((*(v20 + 160) & 0x80000000) != 0 && (*(v20 + 164) & 0x80000000) != 0 && (*(v20 + 168) & 0x80000000) != 0 && !*(v20 + 152))
    {
      goto LABEL_43;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    LOWORD(__y[0]) = 0;
    goto LABEL_17;
  }

  v6 = (v5[18] - v5[17]) >> 4;
  if (v6 <= 0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v22 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_DEBUG, "CLMM,interpolateProjections,CoordinateCount is 0", buf, 2u);
    }

    v23 = sub_19B87DD40();
    if (*(v23 + 160) <= 1 && *(v23 + 164) <= 1 && *(v23 + 168) <= 1 && !*(v23 + 152))
    {
      goto LABEL_43;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    LOWORD(__y[0]) = 0;
LABEL_40:
    v21 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoAccessCommon::interpolateProjections(CLDistanceCalc &, const RoadPtr, double, Coordinate &, double &) [Coordinate = GEOLocationCoordinate2D, RoadPtr = std::shared_ptr<CLMapRoad>]", "CoreLocation: %s\n");
LABEL_41:
    if (v21 != buf)
    {
      free(v21);
    }

    goto LABEL_43;
  }

  if (v6 == 1)
  {
LABEL_66:
    result = 1;
    goto LABEL_67;
  }

  sub_19B9F5AA8(*a2);
  v12 = (v5[21] - v5[20]) >> 3;
  if (v12 != v6 - 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v24 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v24, OS_LOG_TYPE_DEBUG, "CLMM,interpolateProjections,inconsistent array size", buf, 2u);
    }

    v25 = sub_19B87DD40();
    if (*(v25 + 160) <= 1 && *(v25 + 164) <= 1 && *(v25 + 168) <= 1 && !*(v25 + 152))
    {
      goto LABEL_43;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    LOWORD(__y[0]) = 0;
    goto LABEL_40;
  }

  v13 = *a2;
  sub_19B9F5AA8(v13);
  if (a5 < 0.000001)
  {
    *a3 = **(v13 + 136);
    v14 = *a3;
    v15 = a3[1];
    v16 = *(v13 + 136);
    v17 = *(v16 + 16);
    v18 = *(v16 + 24);
LABEL_62:
    *buf = 0;
    __y[0] = 0.0;
    sub_19BA0BE88(a1, buf, __y, &v62, v14, v15, 0.0, v17, v18, 0.0);
    v36 = atan2(__y[0], *buf);
    if (v36 < 0.0)
    {
      v36 = v36 + 6.28318531;
    }

    v37 = v36 * 57.2957795;
LABEL_65:
    *a4 = v37;
    goto LABEL_66;
  }

  if (a5 >= 0.999999)
  {
    *a3 = *(*(v13 + 136) + 16 * v12);
    v35 = *(v13 + 136) + 16 * v12;
    v14 = *(v35 - 16);
    v15 = *(v35 - 8);
    v17 = *a3;
    v18 = a3[1];
    goto LABEL_62;
  }

  v27 = v5[20];
  v28 = v5[21];
  if (v27 == v28)
  {
LABEL_50:
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v33 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v33, OS_LOG_TYPE_DEBUG, "CLMM,interpolateProjections,Could not interpolate to intended projection", buf, 2u);
    }

    v34 = sub_19B87DD40();
    if (*(v34 + 160) <= 1 && *(v34 + 164) <= 1 && *(v34 + 168) <= 1 && !*(v34 + 152))
    {
      goto LABEL_43;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    LOWORD(__y[0]) = 0;
    goto LABEL_40;
  }

  v29 = 0.0;
  v30 = 2;
  v31 = 24;
  while (1)
  {
    v32 = *v27 / *(v13 + 40);
    if (vabdd_f64(a5, v29 + v32) < 0.000001)
    {
      break;
    }

    if (v29 + v32 > a5)
    {
      v52 = (a5 - v29) / v32;
      v53 = (*(v13 + 136) + v31);
      v54 = *(v53 - 2);
      v55 = *v53;
      *a3 = *(v53 - 3) + (*(v53 - 1) - *(v53 - 3)) * v52;
      v56 = v54 + 360.0;
      if (v54 >= 0.0)
      {
        v56 = v54;
      }

      v57 = v55 + 360.0;
      if (v55 >= 0.0)
      {
        v57 = v55;
      }

      v58 = v57 - v56;
      if (v58 <= 180.0)
      {
        if (v58 < -180.0)
        {
          v58 = v58 + 360.0;
        }
      }

      else
      {
        v58 = v58 + -360.0;
      }

      v61 = fmod(v54 + v58 * v52, 360.0);
      if (v61 <= -180.0)
      {
        v61 = v61 + 360.0;
      }

      else if (v61 > 180.0)
      {
        v61 = v61 + -360.0;
      }

      a3[1] = v61;
      v14 = *(v53 - 3);
      v15 = *(v53 - 2);
      v17 = *(v53 - 1);
      v18 = *v53;
      goto LABEL_62;
    }

    ++v27;
    v31 += 16;
    ++v30;
    v29 = v29 + v32;
    if (v27 == v28)
    {
      goto LABEL_50;
    }
  }

  if (v30 < v6)
  {
    *a3 = *(*(v13 + 136) + v31 - 8);
    v39 = *(v13 + 136) + v31;
    v40 = *(v39 - 24);
    v41 = *(v39 - 16);
    v42 = *a3;
    v43 = a3[1];
    *buf = 0;
    __y[0] = 0.0;
    sub_19BA0BE88(a1, buf, __y, &v62, v40, v41, 0.0, v42, v43, 0.0);
    v44 = atan2(__y[0], *buf);
    if (v44 < 0.0)
    {
      v44 = v44 + 6.28318531;
    }

    v45 = v44 * 57.2957795;
    v46 = *a3;
    v47 = a3[1];
    v48 = *(v13 + 136) + v31;
    v49 = *(v48 + 8);
    v50 = *(v48 + 16);
    *buf = 0;
    __y[0] = 0.0;
    sub_19BA0BE88(a1, buf, __y, &v62, v46, v47, 0.0, v49, v50, 0.0);
    v51 = atan2(__y[0], *buf);
    if (v51 < 0.0)
    {
      v51 = v51 + 6.28318531;
    }

    sub_19B8B646C(v45, v51 * 57.2957795);
    goto LABEL_65;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
  }

  v59 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v59, OS_LOG_TYPE_ERROR, "CLMM,interpolateProjections,Could not interpolate, incorrect coordinateCount", buf, 2u);
  }

  v60 = sub_19B87DD40();
  if ((*(v60 + 160) & 0x80000000) == 0 || (*(v60 + 164) & 0x80000000) == 0 || (*(v60 + 168) & 0x80000000) == 0 || *(v60 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    LOWORD(__y[0]) = 0;
LABEL_17:
    v21 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoAccessCommon::interpolateProjections(CLDistanceCalc &, const RoadPtr, double, Coordinate &, double &) [Coordinate = GEOLocationCoordinate2D, RoadPtr = std::shared_ptr<CLMapRoad>]", "CoreLocation: %s\n");
    goto LABEL_41;
  }

LABEL_43:
  result = 0;
LABEL_67:
  v38 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B91408C(uint64_t a1)
{
  v1 = *(a1 + 2496);
  v2 = (v1 + 1) % 0x270uLL;
  v3 = *(a1 + 4 * v2);
  if (v3)
  {
    v4 = -1727483681;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ *(a1 + 4 * ((v1 + 397) % 0x270uLL)) ^ ((v3 & 0x7FFFFFFE | *(a1 + 4 * v1) & 0x80000000) >> 1);
  *(a1 + 4 * v1) = v5;
  *(a1 + 2496) = v2;
  v6 = ((v5 ^ (v5 >> 11)) << 7) & 0x9D2C5680 ^ v5 ^ (v5 >> 11);
  return (v6 << 15) & 0xEFC60000 ^ v6 ^ (((v6 << 15) & 0xEFC60000 ^ v6) >> 18);
}

uint64_t sub_19B91412C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v4 = a1;
  v137 = *MEMORY[0x1E69E9840];
  v5 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
  if (*(a1 + 32))
  {
    v7 = 1050.0;
    if (a4 <= 1050.0)
    {
      v7 = a4;
      if (a4 < -1050.0)
      {
        v7 = -1050.0;
      }
    }

    v121 = 0;
    v8 = *(a2 + 48);
    v9 = a2;
    while (1)
    {
      v126 = 0;
      v10 = objc_autoreleasePoolPush();
      v11 = *v9;
      if (!*v9)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
        }

        v85 = *(v5 + 225);
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          v86 = *(v4 + 8);
          *buf = 134349056;
          *&buf[4] = v86;
          _os_log_impl(&dword_19B873000, v85, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,input road is nullptr", buf, 0xCu);
        }

        v87 = sub_19B87DD40();
        if ((*(v87 + 160) & 0x80000000) != 0 && (*(v87 + 164) & 0x80000000) != 0 && (*(v87 + 168) & 0x80000000) != 0 && !*(v87 + 152))
        {
          goto LABEL_213;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 == -1)
        {
          goto LABEL_181;
        }

        goto LABEL_235;
      }

      v12 = *v11;
      sub_19B9F5AA8(*v9);
      v13 = *(v11 + 40);
      if (v13 <= 0.0)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
        }

        v91 = *(v5 + 225);
        if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
        {
          v92 = *(v4 + 8);
          *buf = 134349056;
          *&buf[4] = v92;
          _os_log_impl(&dword_19B873000, v91, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,road length is 0.0", buf, 0xCu);
        }

        v93 = sub_19B87DD40();
        if ((*(v93 + 160) & 0x80000000) != 0 && (*(v93 + 164) & 0x80000000) != 0 && (*(v93 + 168) & 0x80000000) != 0 && !*(v93 + 152))
        {
          goto LABEL_213;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 == -1)
        {
LABEL_181:
          v88 = *(v5 + 225);
          v89 = *(v4 + 8);
          *v130 = 134349056;
          *&v130[4] = v89;
          v90 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureAccessGeometry::moveOnRoadInternal(double, double, const CLMapGeometry::RoadInfoList &, CLMapGeometry::DistanceQueryResult &, int) const", "CoreLocation: %s\n", v90);
          goto LABEL_211;
        }

LABEL_235:
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
        goto LABEL_181;
      }

      v14 = *v9;
      v15 = *(*v9 + 136);
      if (((*(*v9 + 144) - v15) >> 4) <= 1)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
        }

        v94 = *(v5 + 225);
        if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
        {
          v95 = *(v4 + 8);
          v96 = **v9;
          v97 = ((*(*v9 + 144) - *(*v9 + 136)) >> 4);
          *buf = 134349569;
          *&buf[4] = v95;
          *&buf[12] = 2049;
          *&buf[14] = v96;
          *&buf[22] = 2050;
          v136 = v97;
          _os_log_impl(&dword_19B873000, v94, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,GEOMapFeatureRoad id,%{private}lld,has less than two coordinate (moveOnRoadInternal),%{public}ld", buf, 0x20u);
        }

        v98 = sub_19B87DD40();
        if (*(v98 + 160) > 1 || *(v98 + 164) > 1 || *(v98 + 168) > 1 || *(v98 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            goto LABEL_237;
          }

          goto LABEL_210;
        }

        goto LABEL_213;
      }

      if (!v15)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
        }

        v99 = *(v5 + 225);
        if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
        {
          v100 = *(v4 + 8);
          v101 = **v9;
          v102 = ((*(*v9 + 144) - *(*v9 + 136)) >> 4);
          *buf = 134349569;
          *&buf[4] = v100;
          *&buf[12] = 2049;
          *&buf[14] = v101;
          *&buf[22] = 2050;
          v136 = v102;
          _os_log_impl(&dword_19B873000, v99, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,GEOMapFeatureRoad id,%{private}lld,startCoordinate is null,%{public}ld", buf, 0x20u);
        }

        v103 = sub_19B87DD40();
        if (*(v103 + 160) > 1 || *(v103 + 164) > 1 || *(v103 + 168) > 1 || *(v103 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 == -1)
          {
            goto LABEL_210;
          }

LABEL_237:
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
LABEL_210:
          v104 = *(v5 + 225);
          v105 = *(v4 + 8);
          v106 = **v9;
          v107 = ((*(*v9 + 144) - *(*v9 + 136)) >> 4);
          *v130 = 134349569;
          *&v130[4] = v105;
          *&v130[12] = 2049;
          *&v130[14] = v106;
          *&v130[22] = 2050;
          v131 = v107;
          v90 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureAccessGeometry::moveOnRoadInternal(double, double, const CLMapGeometry::RoadInfoList &, CLMapGeometry::DistanceQueryResult &, int) const", "CoreLocation: %s\n", v90);
LABEL_211:
          if (v90 != buf)
          {
            free(v90);
          }
        }

LABEL_213:
        objc_autoreleasePoolPop(v10);
        goto LABEL_214;
      }

      if (v7 < 0.0)
      {
        break;
      }

      if (v126)
      {
        goto LABEL_13;
      }

      v16 = 1.0;
      v17 = 1.0 - v8;
LABEL_15:
      v18 = fabs(v7);
      v19 = v13 * v17;
      if (v13 * v17 > v18)
      {
        v16 = v8 + v7 / v13;
      }

      *v125 = *v14;
      *v130 = 0;
      *&v130[8] = v130;
      *&v130[16] = 0x4812000000;
      v131 = sub_19B9134E0;
      v132 = sub_19B913504;
      v133 = "";
      memset(v134, 0, 24);
      if (v19 <= v18)
      {
        if (*(v4 + 33) == 1)
        {
          memset(buf, 0, sizeof(buf));
          sub_19B91167C(buf, 3uLL);
          v20 = *(v4 + 16);
          if (v20)
          {
            if (v126)
            {
              sub_19B8EB310(v20, v9, buf, 1);
            }

            else
            {
              sub_19B8EAC7C(v20, v9, buf, 1);
            }

            if (*buf != *&buf[8])
            {
              LOBYTE(v128[0]) = 1;
              sub_19B91779C();
            }
          }

          *&v129 = buf;
          sub_19B8F0E84(&v129);
        }

        else
        {
          v21 = sub_19B8E5F08(v4 + 2616, v125, 0);
          if (v21)
          {
            v117 = v10;
            v118 = v4;
            v22 = 8;
            if (!v126)
            {
              v22 = 32;
            }

            v116 = v21;
            v23 = v21 + v22;
            v24 = *v23;
            if (*v23 != *(v23 + 8))
            {
              v26 = *v24;
              v25 = v24[1];
              *&v129 = *v24;
              *(&v129 + 1) = v25;
              if (v25)
              {
                atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v26)
              {
                LOBYTE(v124) = 1;
                sub_19B91779C();
              }

              sub_19B8EBC04((*&v130[8] + 48));
              if (v25)
              {
                sub_19B8750F8(v25);
              }
            }

            v10 = v117;
            v4 = v118;
            v5 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
            v9 = a2;
            if (*(*&v130[8] + 48) == *(*&v130[8] + 56))
            {
LABEL_35:
              v128[0] = sub_19B90F384(v4, v9);
              if (v128[0])
              {
                v123[0] = MEMORY[0x1E69E9820];
                v123[1] = 3221225472;
                v123[2] = sub_19B913640;
                v123[3] = &unk_1E753DBF8;
                v123[6] = v12;
                v123[7] = v15;
                v123[4] = v130;
                v123[5] = v4;
                v124 = COERCE_DOUBLE(v123);
                ++*(v4 + 36);
                v127 = 0;
                operator new();
              }

              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
              }

              v64 = *(v5 + 225);
              if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
              {
                v65 = *(v4 + 8);
                *buf = 134349056;
                *&buf[4] = v65;
                _os_log_impl(&dword_19B873000, v64, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,getGeoMapFeatureRoadObject returned nil", buf, 0xCu);
              }

              v66 = sub_19B87DD40();
              v5 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
              if ((*(v66 + 160) & 0x80000000) == 0 || (*(v66 + 164) & 0x80000000) == 0 || (*(v66 + 168) & 0x80000000) == 0 || *(v66 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
                }

                v67 = *(v4 + 8);
                LODWORD(v129) = 134349056;
                *(&v129 + 4) = v67;
                v68 = _os_log_send_and_compose_impl();
                sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureAccessGeometry::moveOnRoadInternal(double, double, const CLMapGeometry::RoadInfoList &, CLMapGeometry::DistanceQueryResult &, int) const", "CoreLocation: %s\n", v68);
                if (v68 != buf)
                {
                  free(v68);
                }

                v5 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
              }

LABEL_141:
              v57 = 0;
              v119 = 0;
              goto LABEL_102;
            }

            *(v116 + 56) = *(v118 + 8);
          }

          else
          {
            if (*(*&v130[8] + 48) == *(*&v130[8] + 56))
            {
              goto LABEL_35;
            }

            v27 = sub_19B8E5F08(v4 + 2616, v125, 1);
            v28 = v27;
            if (v27)
            {
              sub_19B8E6054(v27, v126);
              *(v28 + 56) = *(v4 + 8);
              v29 = *(*&v130[8] + 48);
              v30 = *(*&v130[8] + 56);
              if (v29 != v30)
              {
                do
                {
                  v31 = v10;
                  v32 = *v29;
                  v33 = *(v29 + 8);
                  if (v33)
                  {
                    atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v34 = *v32;
                  if (*v32)
                  {
                    if (v126)
                    {
                      *(v28 + 1) = 1;
                      v35 = 8;
                    }

                    else
                    {
                      *v28 = 1;
                      v35 = 32;
                    }

                    sub_19B8EAB68((v28 + v35), v32);
                  }

                  else
                  {
                    sub_19B8E6054(v28, v126);
                    *(v28 + 56) = 0xBFF0000000000000;
                  }

                  if (v33)
                  {
                    sub_19B8750F8(v33);
                  }

                  v29 += 16;
                  if (v34)
                  {
                    v36 = v29 == v30;
                  }

                  else
                  {
                    v36 = 1;
                  }

                  v10 = v31;
                }

                while (!v36);
              }
            }

            else
            {
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
              }

              v74 = *(v5 + 225);
              if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
              {
                v75 = *(v4 + 8);
                *buf = 134349056;
                *&buf[4] = v75;
                _os_log_impl(&dword_19B873000, v74, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,Unexpected,RoadConnectionsEntry could not be created", buf, 0xCu);
              }

              v76 = sub_19B87DD40();
              if ((*(v76 + 160) & 0x80000000) == 0 || (*(v76 + 164) & 0x80000000) == 0 || (*(v76 + 168) & 0x80000000) == 0 || *(v76 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
                }

                v77 = *(v5 + 225);
                v78 = *(v4 + 8);
                LODWORD(v129) = 134349056;
                *(&v129 + 4) = v78;
                v79 = _os_log_send_and_compose_impl();
                sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureAccessGeometry::moveOnRoadInternal(double, double, const CLMapGeometry::RoadInfoList &, CLMapGeometry::DistanceQueryResult &, int) const", "CoreLocation: %s\n", v79);
                if (v79 != buf)
                {
                  free(v79);
                }
              }
            }
          }
        }
      }

      if (v126 != 1 || (v37 = *(*&v130[8] + 48), v38 = *(*&v130[8] + 56), v37 == v38))
      {
        v40 = 0xFFFFFFFFLL;
      }

      else
      {
        v39 = 0;
        v40 = 0xFFFFFFFFLL;
        do
        {
          v42 = *v37;
          v41 = *(v37 + 8);
          if (v41)
          {
            atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v43 = a3;
          while (1)
          {
            v43 = *(v43 + 8);
            if (v43 == a3)
            {
              break;
            }

            if (*(v43 + 16) == **v42)
            {
              v40 = v39;
              break;
            }
          }

          if (v41)
          {
            sub_19B8750F8(v41);
          }

          if ((v40 & 0x80000000) == 0)
          {
            break;
          }

          ++v39;
          v37 += 16;
        }

        while (v37 != v38);
      }

      if (v19 > v18 || (v47 = *(*&v130[8] + 48), v48 = *(*&v130[8] + 56), v47 == v48) || v121 > 0x2B || (v49 = v126, v40 == 0xFFFFFFFF) && v126)
      {
        v129 = 0uLL;
        v124 = -1.0;
        v9 = a2;
        v44 = *(a2 + 8);
        v122[0] = *a2;
        v122[1] = &v44->__vftable;
        if (v44)
        {
          atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v45 = sub_19B9137B4((v4 + 56), v122, &v129, &v124, v16);
        if (v44)
        {
          sub_19B8750F8(v44);
        }

        if (v45)
        {
          *(a2 + 48) = v16;
          *(a2 + 32) = v129;
          v46 = v124;
          *(a2 + 24) = v46;
        }

        else
        {
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
          }

          v51 = *(v5 + 225);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            v52 = *(v4 + 8);
            *buf = 134349056;
            *&buf[4] = v52;
            _os_log_impl(&dword_19B873000, v51, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,moveOnRoadInternal,interpolateProjections returned false", buf, 0xCu);
          }

          v53 = sub_19B87DD40();
          if ((*(v53 + 160) & 0x80000000) == 0 || (*(v53 + 164) & 0x80000000) == 0 || (*(v53 + 168) & 0x80000000) == 0 || *(v53 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
            }

            v54 = *(v5 + 225);
            v55 = *(v4 + 8);
            LODWORD(v128[0]) = 134349056;
            *(v128 + 4) = v55;
            v56 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureAccessGeometry::moveOnRoadInternal(double, double, const CLMapGeometry::RoadInfoList &, CLMapGeometry::DistanceQueryResult &, int) const", "CoreLocation: %s\n", v56);
            if (v56 != buf)
            {
              free(v56);
            }
          }
        }

        v119 = v45;
        v57 = 0;
      }

      else
      {
        v50 = -v19;
        if (v126)
        {
          v50 = v19;
        }

        v7 = v7 + v50;
        v9 = a2;
        if ((v40 & 0x80000000) != 0)
        {
          v58 = sub_19B91408C(v4 + 96);
          v47 = *(*&v130[8] + 48);
          v40 = v58 % ((*(*&v130[8] + 56) - v47) >> 4);
          v49 = v126;
        }

        else if (v40 >= (v48 - v47) >> 4)
        {
          goto LABEL_115;
        }

        if (v49)
        {
          v16 = 1.0;
        }

        else
        {
          v16 = 0.0;
        }

        v59 = 16 * v40;
        v60 = *(v47 + v59);
        v61 = *v60;
        v62 = v60[1];
        if (v62)
        {
          atomic_fetch_add_explicit((v62 + 8), 1uLL, memory_order_relaxed);
        }

        v63 = *(a2 + 8);
        *a2 = v61;
        *(a2 + 8) = v62;
        if (v63)
        {
          sub_19B8750F8(v63);
          v61 = *a2;
        }

        if (v61)
        {
          *(a2 + 20) = *(*(*(*&v130[8] + 48) + v59) + 16);
LABEL_115:
          v57 = 1;
          goto LABEL_102;
        }

        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
        }

        v69 = *(v5 + 225);
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          v70 = *(v4 + 8);
          *buf = 134349056;
          *&buf[4] = v70;
          _os_log_impl(&dword_19B873000, v69, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,makeRoadFromGEOMapFeatureRoad returned nullptr", buf, 0xCu);
        }

        v71 = sub_19B87DD40();
        v5 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
        if ((*(v71 + 160) & 0x80000000) != 0 && (*(v71 + 164) & 0x80000000) != 0 && (*(v71 + 168) & 0x80000000) != 0 && !*(v71 + 152))
        {
          goto LABEL_141;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
        }

        v72 = *(v4 + 8);
        LODWORD(v129) = 134349056;
        *(&v129 + 4) = v72;
        v73 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureAccessGeometry::moveOnRoadInternal(double, double, const CLMapGeometry::RoadInfoList &, CLMapGeometry::DistanceQueryResult &, int) const", "CoreLocation: %s\n", v73);
        if (v73 != buf)
        {
          free(v73);
        }

        v57 = 0;
        v119 = 0;
        v5 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
      }

LABEL_102:
      _Block_object_dispose(v130, 8);
      *buf = v134;
      sub_19B8F0E84(buf);
      objc_autoreleasePoolPop(v10);
      if ((v57 & 1) == 0)
      {
        v108 = v119;
        goto LABEL_215;
      }

      v8 = v16;
      if (++v121 == 45)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
        }

        v111 = *(v5 + 225);
        if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
        {
          v112 = *(v4 + 8);
          *buf = 134349312;
          *&buf[4] = v112;
          *&buf[12] = 2050;
          *&buf[14] = v7;
          _os_log_impl(&dword_19B873000, v111, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,moveOnRoad failed,distanceRemaining,%{public}.1lf", buf, 0x16u);
        }

        v113 = sub_19B87DD40();
        if ((*(v113 + 160) & 0x80000000) == 0 || (*(v113 + 164) & 0x80000000) == 0 || (*(v113 + 168) & 0x80000000) == 0 || *(v113 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
          }

          v114 = *(v5 + 225);
          v115 = *(v4 + 8);
          *v130 = 134349312;
          *&v130[4] = v115;
          *&v130[12] = 2050;
          *&v130[14] = v7;
          v84 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureAccessGeometry::moveOnRoadInternal(double, double, const CLMapGeometry::RoadInfoList &, CLMapGeometry::DistanceQueryResult &, int) const", "CoreLocation: %s\n", v84);
          goto LABEL_171;
        }

        goto LABEL_214;
      }
    }

    v126 = 1;
LABEL_13:
    v16 = 0.0;
    v17 = v8;
    goto LABEL_15;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
  }

  v80 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
  {
    v81 = *(v4 + 8);
    *buf = 134349056;
    *&buf[4] = v81;
    _os_log_impl(&dword_19B873000, v80, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometry geometry is not initialized, use initialize() function", buf, 0xCu);
  }

  v82 = sub_19B87DD40();
  if ((*(v82 + 160) & 0x80000000) == 0 || (*(v82 + 164) & 0x80000000) == 0 || (*(v82 + 168) & 0x80000000) == 0 || *(v82 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v83 = *(v4 + 8);
    *v130 = 134349056;
    *&v130[4] = v83;
    v84 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometry::moveOnRoad(struct CLMapGeometry::DistanceQueryResult &, double, const CLMapGeometry::RoadInfoList &) const", "CoreLocation: %s\n", v84);
LABEL_171:
    if (v84 != buf)
    {
      free(v84);
    }
  }

LABEL_214:
  v108 = 0;
LABEL_215:
  v109 = *MEMORY[0x1E69E9840];
  return v108 & 1;
}

void sub_19B91591C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void **a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void **a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a49, 8);
  a47 = a24;
  sub_19B8F0E84(&a47);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9159F4(uint64_t a1, uint64_t **a2, uint64_t *a3, int *a4, double a5, double a6)
{
  v71 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 32) & 1) == 0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v24 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v25 = *(a1 + 8);
      *buf = 134349056;
      *&buf[4] = v25;
      _os_log_impl(&dword_19B873000, v24, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometry geometry is not initialized, use initialize() function", buf, 0xCu);
    }

    v26 = sub_19B87DD40();
    if ((*(v26 + 160) & 0x80000000) != 0 && (*(v26 + 164) & 0x80000000) != 0 && (*(v26 + 168) & 0x80000000) != 0 && !*(v26 + 152))
    {
      goto LABEL_44;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_41;
    }

    goto LABEL_107;
  }

  v8 = *a2;
  if (!*a2)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v27 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v28 = *(a1 + 8);
      *buf = 134349056;
      *&buf[4] = v28;
      _os_log_impl(&dword_19B873000, v27, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,input road is nullptr", buf, 0xCu);
    }

    v29 = sub_19B87DD40();
    if ((*(v29 + 160) & 0x80000000) != 0 && (*(v29 + 164) & 0x80000000) != 0 && (*(v29 + 168) & 0x80000000) != 0 && !*(v29 + 152))
    {
      goto LABEL_44;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_41;
    }

    goto LABEL_107;
  }

  sub_19B9F5AA8(*a2);
  v13 = v8[5];
  if (v13 <= 0.0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v30 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v31 = *(a1 + 8);
      *buf = 134349056;
      *&buf[4] = v31;
      _os_log_impl(&dword_19B873000, v30, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,road length is 0.0", buf, 0xCu);
    }

    v32 = sub_19B87DD40();
    if ((*(v32 + 160) & 0x80000000) != 0 && (*(v32 + 164) & 0x80000000) != 0 && (*(v32 + 168) & 0x80000000) != 0 && !*(v32 + 152))
    {
      goto LABEL_44;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_41;
    }

    goto LABEL_107;
  }

  v14 = *a2;
  if ((((*a2)[18] - (*a2)[17]) >> 4) <= 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v15 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 8);
      v17 = **a2;
      v18 = (((*a2)[18] - (*a2)[17]) >> 4);
      *buf = 134349569;
      *&buf[4] = v16;
      *&buf[12] = 2049;
      *&buf[14] = v17;
      *&buf[22] = 2050;
      *&buf[24] = v18;
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,GEOMapFeatureRoad id,%{private}lld,has less than two coordinate (moveOnRoadInternal),%{public}ld", buf, 0x20u);
    }

    v19 = sub_19B87DD40();
    if ((*(v19 + 160) & 0x80000000) != 0 && (*(v19 + 164) & 0x80000000) != 0 && (*(v19 + 168) & 0x80000000) != 0 && !*(v19 + 152))
    {
      goto LABEL_44;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v20 = *(a1 + 8);
    v21 = **a2;
    v22 = (((*a2)[18] - (*a2)[17]) >> 4);
    *v67 = 134349569;
    *&v67[4] = v20;
    v68 = 2049;
    *v69 = v21;
    *&v69[8] = 2050;
    *&v69[10] = v22;
    v23 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometry::moveOnRouteRoads(double, CLMapGeometry::DistanceQueryResult &, CLMapGeometry::DistanceQueryResultList &, double, int &) const", "CoreLocation: %s\n", v23);
LABEL_42:
    if (v23 != buf)
    {
      free(v23);
    }

LABEL_44:
    result = 0;
LABEL_45:
    v35 = *MEMORY[0x1E69E9840];
    return result;
  }

  v36 = 1.0 - a5;
  if (!*(a2 + 20))
  {
    v36 = a5;
  }

  v37 = v13 * v36;
  if (v13 * v36 > fabs(a6))
  {
    v38 = a6 / v13;
    if (!*(a2 + 20))
    {
      v38 = -v38;
    }

    *buf = 0;
    *&buf[8] = 0;
    v39 = a2[1];
    v40 = v38 + a5;
    v66[0] = v14;
    v66[1] = &v39->__vftable;
    *v67 = 0xBFF0000000000000;
    if (v39)
    {
      atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_19B9137B4((a1 + 56), v66, buf, v67, v38 + a5);
    if (v39)
    {
      sub_19B8750F8(v39);
    }

    *(a2 + 6) = v40;
    *(a2 + 2) = *buf;
    v41 = *v67;
    *(a2 + 6) = v41;
    if ((*(a2 + 20) & 1) == 0)
    {
      v42 = fmod((v41 + 180.0), 360.0);
      if (v42 < 0.0)
      {
        v42 = v42 + 360.0;
      }

      v43 = v42;
      *(a2 + 6) = v43;
    }

    result = 1;
    goto LABEL_45;
  }

  v44 = *a4;
  v45 = v44 + 1;
  *a4 = v44 + 1;
  if (v44 > 9 || a3[2] <= v45)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v55 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v56 = *(a1 + 8);
      v57 = *a4;
      v58 = a3[2];
      *buf = 134349568;
      *&buf[4] = v56;
      *&buf[12] = 1026;
      *&buf[14] = v57;
      *&buf[18] = 2050;
      *&buf[20] = v58;
      _os_log_impl(&dword_19B873000, v55, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,no more route roads available to cover the distance travelled,index,%{public}d,size,%{public}lu", buf, 0x1Cu);
    }

    v59 = sub_19B87DD40();
    if (*(v59 + 160) <= 1 && *(v59 + 164) <= 1 && *(v59 + 168) <= 1 && !*(v59 + 152))
    {
      goto LABEL_44;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v60 = *(a1 + 8);
    v61 = *a4;
    v62 = a3[2];
    *v67 = 134349568;
    *&v67[4] = v60;
    v68 = 1026;
    *v69 = v61;
    *&v69[4] = 2050;
    *&v69[6] = v62;
    v23 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLGeoMapFeatureAccessGeometry::moveOnRouteRoads(double, CLMapGeometry::DistanceQueryResult &, CLMapGeometry::DistanceQueryResultList &, double, int &) const", "CoreLocation: %s\n", v23);
    goto LABEL_42;
  }

  v46 = a3[1];
  if (v44 <= -2)
  {
    do
    {
      v46 = *v46;
    }

    while (!__CFADD__(v45++, 1));
  }

  else if (v44 != -1)
  {
    v47 = v44 + 2;
    do
    {
      v46 = v46[1];
      --v47;
    }

    while (v47 > 1);
  }

  if (v46 == a3)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v63 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v64 = *(a1 + 8);
      *buf = 134349056;
      *&buf[4] = v64;
      _os_log_impl(&dword_19B873000, v63, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,unexpectedly reached to the end of routeRoadList", buf, 0xCu);
    }

    v65 = sub_19B87DD40();
    if ((*(v65 + 160) & 0x80000000) != 0 && (*(v65 + 164) & 0x80000000) != 0 && (*(v65 + 168) & 0x80000000) != 0 && !*(v65 + 152))
    {
      goto LABEL_44;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_41;
    }

LABEL_107:
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
LABEL_41:
    v33 = *(a1 + 8);
    *v67 = 134349056;
    *&v67[4] = v33;
    v23 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometry::moveOnRouteRoads(double, CLMapGeometry::DistanceQueryResult &, CLMapGeometry::DistanceQueryResultList &, double, int &) const", "CoreLocation: %s\n", v23);
    goto LABEL_42;
  }

  v49 = *(v46 + 36);
  sub_19B911784(a2, v46 + 2);
  *(a2 + 20) = *(v46 + 36);
  v51.n128_u64[0] = 0;
  if ((v49 & 1) == 0)
  {
    v51.n128_f64[0] = fmod((*(a2 + 6) + 180.0), 360.0);
    if (v51.n128_f64[0] < 0.0)
    {
      v51.n128_f64[0] = v51.n128_f64[0] + 360.0;
    }

    v52 = v51.n128_f64[0];
    *(a2 + 6) = v52;
    v51.n128_u64[0] = 1.0;
  }

  v53 = *(*a1 + 56);
  v54 = *MEMORY[0x1E69E9840];

  v50.n128_f64[0] = a6 - v37;
  return v53(a1, a2, a3, a4, v51, v50);
}

void sub_19B916588(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_19B8750F8(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9165AC(uint64_t a1)
{
  sub_19B9DE4D8(a1);

  JUMPOUT(0x19EAE98C0);
}

os_log_t sub_19B9165FC()
{
  result = os_log_create("com.apple.locationd.Position", "MapMatcher");
  off_1EAFE4708 = result;
  return result;
}

void sub_19B916648(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v4 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349571;
      v22 = [a2 code];
      v23 = 2114;
      v24 = [a2 domain];
      v25 = 2113;
      v26 = [a2 localizedDescription];
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "#Warning CLMM,GEOMapFeatureAccessRequest reported errorcode,%{public}lld,domain,%{public}@,description,%{private}@", buf, 0x20u);
    }

    v5 = sub_19B87DD40();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
      }

      [a2 code];
      [a2 domain];
      [a2 localizedDescription];
      v6 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureAccessGeometryCommon::performQuery(QueryFunction, dispatch_queue_t  _Nonnull const &)_block_invoke", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    *(*(a1[4] + 8) + 24) = 1;
  }

  if (*(*(a1[5] + 8) + 40))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
    }

    v7 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(*(a1[6] + 8) + 24);
      v9 = *(*(a1[4] + 8) + 24);
      *buf = 134349312;
      v22 = v8;
      v23 = 1026;
      LODWORD(v24) = v9;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEBUG, "CLMM,releasing dispatch_group,%{public}lu,errorReported,%{public}d", buf, 0x12u);
    }

    v10 = sub_19B87DD40();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
      }

      v19 = *(*(a1[6] + 8) + 24);
      v20 = *(*(a1[4] + 8) + 24);
      v11 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureAccessGeometryCommon::performQuery(QueryFunction, dispatch_queue_t  _Nonnull const &)_block_invoke", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    dispatch_group_leave(*(*(a1[5] + 8) + 40));
  }

  if (*(*(a1[6] + 8) + 24))
  {
    if (*(*(a1[5] + 8) + 40))
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
      }

      v12 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_DEBUG, "CLMM,clearing dispatchGroup when time-out has happened", buf, 2u);
      }

      v13 = sub_19B87DD40();
      if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
        }

        v14 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureAccessGeometryCommon::performQuery(QueryFunction, dispatch_queue_t  _Nonnull const &)_block_invoke", "CoreLocation: %s\n", v14);
        if (v14 != buf)
        {
          free(v14);
        }
      }

      *(*(a1[5] + 8) + 40) = 0;
    }

    else
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
      }

      v15 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_ERROR, "CLMM,dispatchGroup is unexpectedly nil", buf, 2u);
      }

      v16 = sub_19B87DD40();
      if ((*(v16 + 160) & 0x80000000) == 0 || (*(v16 + 164) & 0x80000000) == 0 || (*(v16 + 168) & 0x80000000) == 0 || *(v16 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6BBF0);
        }

        v17 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureAccessGeometryCommon::performQuery(QueryFunction, dispatch_queue_t  _Nonnull const &)_block_invoke", "CoreLocation: %s\n", v17);
        if (v17 != buf)
        {
          free(v17);
        }
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B916D20(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_19B916D74();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_19B916D74()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53C0], MEMORY[0x1E69E52E8]);
}

void sub_19B916DC0(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        if (v6)
        {
          sub_19B8750F8(v6);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t sub_19B916E38(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      sub_19B8750F8(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 16;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 sub_19B916F14(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F0E6BC20;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_19B916F70(uint64_t a1, uint64_t a2)
{
  if (sub_19B916FBC(a2, &unk_1F0E6BC90))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_19B916FBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t sub_19B917010(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_19B917090(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

__n128 sub_19B9171A4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F0E6BCB0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_19B917200(uint64_t a1, uint64_t a2)
{
  if (sub_19B916FBC(a2, &unk_1F0E6BD10))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_19B9172C8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F0E6BD30;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_19B917300(uint64_t a1, void *a2)
{
  v3 = **(a1 + 8);
  v4 = *(*(a1 + 16) + 2600);
  if (v3 == 1)
  {
    return [v4 findRoadsFromNextIntersectionOf:**(a1 + 24) handler:**(a1 + 32) completionHandler:*a2];
  }

  else
  {
    return MEMORY[0x1EEE66B58](v4, sel_findRoadsFromPreviousIntersectionOf_handler_completionHandler_);
  }
}

uint64_t sub_19B917330(uint64_t a1, uint64_t a2)
{
  if (sub_19B916FBC(a2, &unk_1F0E6BD90))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_19B91737C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = a1[1];
  if (a2 != a3 && v6 != a1)
  {
    do
    {
      v8 = *(v4 + 16);
      v7 = *(v4 + 24);
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = *(v6 + 24);
      *(v6 + 16) = v8;
      *(v6 + 24) = v7;
      if (v9)
      {
        sub_19B8750F8(v9);
      }

      v10 = *(v4 + 32);
      *(v6 + 48) = *(v4 + 48);
      *(v6 + 32) = v10;
      v4 = *(v4 + 8);
      v6 = *(v6 + 8);
    }

    while (v4 != a3 && v6 != a1);
  }

  if (v6 == a1)
  {

    return sub_19B917468(a1, a1, v4, a3);
  }

  else
  {

    return sub_19B9175EC(a1, v6, a1);
  }
}

uint64_t sub_19B917468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    operator new();
  }

  return a2;
}

void sub_19B9175AC(void *a1)
{
  __cxa_begin_catch(a1);
  while (1)
  {
    v2 = *v1;
    v3 = v1[3];
    if (v3)
    {
      sub_19B8750F8(v3);
    }

    operator delete(v1);
    v1 = v2;
    if (!v2)
    {
      __cxa_rethrow();
    }
  }
}

void *sub_19B9175EC(uint64_t a1, void *__p, void *a3)
{
  if (__p != a3)
  {
    v4 = __p;
    v6 = *(*a3 + 8);
    v7 = *__p;
    *(v7 + 8) = v6;
    *v6 = v7;
    do
    {
      v8 = v4[1];
      --*(a1 + 16);
      v9 = v4[3];
      if (v9)
      {
        sub_19B8750F8(v9);
      }

      operator delete(v4);
      v4 = v8;
    }

    while (v8 != a3);
  }

  return a3;
}

__n128 sub_19B9176E8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F0E6BDB0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_19B917720(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = **(a1 + 8);
  v5 = *(*(a1 + 16) + 2600);
  v6 = **(a1 + 24);
  v7 = **(a1 + 32);
  if (v4 == 1)
  {
    return MEMORY[0x1EEE66B58](v5, sel_findRoadsToNextIntersectionOf_handler_completionHandler_);
  }

  else
  {
    return MEMORY[0x1EEE66B58](v5, sel_findRoadsToPreviousIntersectionOf_handler_completionHandler_);
  }
}

uint64_t sub_19B917750(uint64_t a1, uint64_t a2)
{
  if (sub_19B916FBC(a2, &unk_1F0E6BE10))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_19B917868(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0E6BE30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE98C0);
}

void sub_19B9178BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    sub_19B8750F8(v1);
  }
}

__n128 sub_19B91794C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F0E6BE80;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_19B917984(uint64_t a1, void *a2)
{
  v3 = **(a1 + 8);
  v4 = *(*(a1 + 16) + 2600);
  if (v3)
  {
    return MEMORY[0x1EEE66B58](v4, sel_findRoadsToPreviousIntersectionOf_handler_completionHandler_);
  }

  else
  {
    return [v4 findRoadsFromNextIntersectionOf:**(a1 + 24) handler:**(a1 + 32) completionHandler:*a2];
  }
}

uint64_t sub_19B9179B0(uint64_t a1, uint64_t a2)
{
  if (sub_19B916FBC(a2, &unk_1F0E6BEE0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_19B917A10(void *a1, uint64_t *a2, __int128 *a3)
{
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_19B9D3798(a1, v6, a3);
  if (v4)
  {
    sub_19B8750F8(v4);
  }

  *a1 = &unk_1F0E6BF00;
  return a1;
}