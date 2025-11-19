void sub_19BA2E71C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_19B966FCC(&a21);
  sub_19B966FCC(&a42);
  sub_19B966FCC(&a65);
  _Unwind_Resume(a1);
}

uint64_t sub_19BA2E838(uint64_t a1)
{
  v2 = *(a1 + 2248);
  if (v2)
  {
    *(a1 + 2256) = v2;
    operator delete(v2);
  }

  return sub_19B9B0E48(a1);
}

void sub_19BA2E87C(uint64_t a1)
{
  v2 = *(a1 + 2248);
  if (v2)
  {
    *(a1 + 2256) = v2;
    operator delete(v2);
  }

  sub_19B9B0E48(a1);

  JUMPOUT(0x19EAE98C0);
}

os_log_t sub_19BA2E8D4()
{
  result = os_log_create("com.apple.locationd.Position", "MapMatcher");
  off_1EAFE4708 = result;
  return result;
}

uint64_t sub_19BA2E904(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  v5 = *(a2 + 56);
  v6 = *(a2 + 65);
  *(a1 + 88) = 0;
  *(a1 + 65) = v6;
  *(a1 + 56) = v5;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  return sub_19B96775C(a1 + 88, *(a2 + 88), *(a2 + 96), 0x8E38E38E38E38E39 * ((*(a2 + 96) - *(a2 + 88)) >> 3));
}

void sub_19BA2E990(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_19B8750F8(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_19BA2E9A8(char *a1)
{
  if (a1)
  {
    sub_19BA2E9A8(*a1);
    sub_19BA2E9A8(*(a1 + 1));
    v2 = *(a1 + 144);
    if (v2)
    {
      sub_19B8750F8(v2);
    }

    v5 = (a1 + 1120);
    sub_19B988734(&v5);
    if (a1[807] < 0)
    {
      operator delete(*(a1 + 98));
    }

    if (a1[375] < 0)
    {
      operator delete(*(a1 + 44));
    }

    v3 = *(a1 + 19);
    if (v3)
    {
      *(a1 + 20) = v3;
      operator delete(v3);
    }

    v4 = *(a1 + 9);
    if (v4)
    {
      sub_19B8750F8(v4);
    }

    operator delete(a1);
  }
}

uint64_t sub_19BA2EA48(uint64_t a1)
{
  v2 = *(a1 + 1096);
  if (v2)
  {
    sub_19B8750F8(v2);
  }

  v6 = (a1 + 1064);
  sub_19B988734(&v6);
  if (*(a1 + 751) < 0)
  {
    operator delete(*(a1 + 728));
  }

  if (*(a1 + 319) < 0)
  {
    operator delete(*(a1 + 296));
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    *(a1 + 104) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    sub_19B8750F8(v4);
  }

  return a1;
}

uint64_t sub_19BA2EACC(__int128 *a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v7 = *(a3 + 8);
      *a3 = v6;
      if (v7)
      {
        sub_19B8750F8(v7);
      }

      v8 = v5[1];
      v9 = v5[2];
      *(a3 + 48) = *(v5 + 6);
      *(a3 + 16) = v8;
      *(a3 + 32) = v9;
      v10 = *(v5 + 56);
      *(a3 + 65) = *(v5 + 65);
      *(a3 + 56) = v10;
      sub_19BA2F10C(a3 + 88, (v5 + 88));
      a3 += 112;
      v5 += 7;
    }

    while (v5 != a2);
  }

  return a3;
}

void sub_19BA2EB5C(uint64_t *a1, char **a2, char **a3, unint64_t a4)
{
  v7 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4) < a4)
  {
    sub_19BA2ECC0(a1);
    if (a4 <= 0x249249249249249)
    {
      v8 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
      if (v8 <= a4)
      {
        v8 = a4;
      }

      if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
      {
        v9 = 0x249249249249249;
      }

      else
      {
        v9 = v8;
      }

      sub_19BA2ED28(a1, v9);
    }

    sub_19B8B8A40();
  }

  v10 = a1[1] - v7;
  if (0x6DB6DB6DB6DB6DB7 * (v10 >> 4) >= a4)
  {
    sub_19BA2EE80(a2, a3, v7);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      do
      {
        v14 -= 14;
        sub_19B988BB4(v14);
      }

      while (v14 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    v11 = sub_19BA2EE80(a2, (a2 + v10), v7);
    a1[1] = sub_19BA2ED78(v11, a3, a1[1]);
  }
}

void sub_19BA2ECC0(void *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 14;
        sub_19B988BB4(v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_19BA2ED28(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    sub_19B988AB4(a1, a2);
  }

  sub_19B8B8A40();
}

uint64_t sub_19BA2ED78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = a1 + v6;
      v8 = *(a1 + v6 + 8);
      *a3 = *(a1 + v6);
      *(a3 + 8) = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = *(v7 + 16);
      v10 = *(v7 + 32);
      *(a3 + 48) = *(v7 + 48);
      *(a3 + 16) = v9;
      *(a3 + 32) = v10;
      v11 = *(v7 + 56);
      v12 = *(v7 + 65);
      *(a3 + 88) = 0;
      *(a3 + 65) = v12;
      *(a3 + 56) = v11;
      *(a3 + 96) = 0;
      *(a3 + 104) = 0;
      sub_19B96775C(a3 + 88, *(v7 + 88), *(v7 + 96), 0x8E38E38E38E38E39 * ((*(v7 + 96) - *(v7 + 88)) >> 3));
      a3 += 112;
      v6 += 112;
    }

    while (v7 + 112 != a2);
  }

  return a3;
}

void sub_19BA2EE48(_Unwind_Exception *exception_object)
{
  v4 = *(v1 + 8);
  if (v4)
  {
    sub_19B8750F8(v4);
  }

  if (v2)
  {
    v5 = (v1 - 112);
    v6 = -v2;
    do
    {
      sub_19B988BB4(v5);
      v5 -= 14;
      v6 += 112;
    }

    while (v6);
  }

  _Unwind_Resume(exception_object);
}

char **sub_19BA2EE80(char **result, char **a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result + 12;
    do
    {
      v7 = *(v5 - 12);
      v6 = *(v5 - 11);
      v8 = v5 - 12;
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = *(a3 + 8);
      *a3 = v7;
      *(a3 + 8) = v6;
      if (v9)
      {
        sub_19B8750F8(v9);
      }

      v10 = *(v5 - 5);
      v11 = *(v5 - 4);
      *(a3 + 48) = *(v5 - 6);
      *(a3 + 16) = v10;
      *(a3 + 32) = v11;
      v12 = *(v5 - 5);
      *(a3 + 65) = *(v5 - 31);
      *(a3 + 56) = v12;
      if (a3 != v8)
      {
        sub_19B967884((a3 + 88), *(v5 - 1), *v5, 0x8E38E38E38E38E39 * ((*v5 - *(v5 - 1)) >> 3));
      }

      a3 += 112;
      v5 += 14;
    }

    while (v8 + 14 != a2);
    return a2;
  }

  return result;
}

uint64_t sub_19BA2EF54(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_19BA2ED28(result, a4);
  }

  return result;
}

void sub_19BA2EFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_19B988734(&a9);
  _Unwind_Resume(a1);
}

void *sub_19BA2EFD8(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 2)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v10 = v8 >> 1;
      if (v8 >> 1 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v11 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_19B988D6C(v7, v11);
    }

    sub_19B8B8A40();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 2)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v9[v17];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = a3 - &__src[v13];
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  v7[1] = v16;
  return result;
}

__n128 sub_19BA2F10C(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t *sub_19BA2F160(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v3 = (v1 + 232);
    sub_19B8F0E84(&v3);
    v2 = sub_19B9B1004(v1);
    return MEMORY[0x19EAE98C0](v2, 0x10B2C406FD4C524);
  }

  return result;
}

uint64_t sub_19BA2F1BC(uint64_t a1)
{
  v2 = *(a1 + 736);
  if (v2)
  {
    sub_19B8750F8(v2);
  }

  if (*(a1 + 391) < 0)
  {
    operator delete(*(a1 + 368));
  }

  v3 = *(a1 + 208);
  if (v3)
  {
    *(a1 + 216) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    sub_19B8750F8(v4);
  }

  v5 = *(a1 + 88);
  if (v5)
  {
    *(a1 + 96) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    sub_19B8750F8(v6);
  }

  return a1;
}

void *sub_19BA2F234(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t sub_19BA2F288(uint64_t a1)
{
  sub_19BA2E9A8(*(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_19BA2E9A8(v2);
  }

  return a1;
}

void sub_19BA2F2D8(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 6)
    {
      v16 = v10 - a2;
      v17 = (v10 - a2) >> 6;
      if (v17 >= a5)
      {
        sub_19BA2F5E4(a1, a2, a1[1], a2 + (a5 << 6));

        sub_19BA2F6FC(a3, a3 + (a5 << 6), a2);
      }

      else
      {
        v19 = v16 + a3;
        v36 = a1[1];
        v37 = v10;
        v32 = a1;
        v33 = &v36;
        *&v34 = &v37;
        v20 = v10;
        BYTE8(v34) = 0;
        if ((v16 + a3) != a4)
        {
          v20 = v10;
          v21 = (v16 + a3);
          do
          {
            *v20 = *v21;
            v20[2] = 0;
            v20[3] = 0;
            v20[1] = 0;
            sub_19B8F2708((v20 + 1), v21[1], v21[2], (v21[2] - v21[1]) >> 4);
            v20[4] = v21[4];
            v20[5] = v21[5];
            v20[6] = v21[6];
            v20[7] = v21[7];
            v21 += 8;
            v20 = (v37 + 64);
            v37 += 64;
          }

          while (v21 != a4);
        }

        BYTE8(v34) = 1;
        sub_19B8F28A4(&v32);
        a1[1] = v20;
        if (v17 >= 1)
        {
          sub_19BA2F5E4(a1, a2, v10, a2 + (a5 << 6));
          sub_19BA2F6FC(a3, v19, a2);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 + ((v10 - *a1) >> 6);
      if (v12 >> 58)
      {
        sub_19B8B8A40();
      }

      v13 = a2 - v11;
      v14 = v9 - v11;
      if (v14 >> 5 > v12)
      {
        v12 = v14 >> 5;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFC0)
      {
        v15 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v12;
      }

      v35 = a1;
      if (v15)
      {
        sub_19B8F278C(a1, v15);
      }

      v22 = 0;
      v23 = v13 >> 6 << 6;
      v32 = 0;
      v33 = v23;
      v34 = v23;
      v24 = a5 << 6;
      v25 = v23 + (a5 << 6);
      do
      {
        v26 = (v23 + v22);
        *v26 = *(a3 + v22);
        v26[2] = 0;
        v26[3] = 0;
        *(v23 + v22 + 8) = 0;
        sub_19B8F2708(v23 + v22 + 8, *(a3 + v22 + 8), *(a3 + v22 + 16), (*(a3 + v22 + 16) - *(a3 + v22 + 8)) >> 4);
        v26[4] = *(a3 + v22 + 32);
        v26[5] = *(a3 + v22 + 40);
        v26[6] = *(a3 + v22 + 48);
        v26[7] = *(a3 + v22 + 56);
        v22 += 64;
      }

      while (v24 != v22);
      *&v34 = v25;
      sub_19B8F27D4(a1, a2, a1[1], v25);
      v27 = *a1;
      v28 = v33;
      *&v34 = v25 + a1[1] - a2;
      a1[1] = a2;
      v29 = v28 + v27 - a2;
      sub_19B8F27D4(a1, v27, a2, v29);
      v30 = *a1;
      *a1 = v29;
      v31 = a1[2];
      *(a1 + 1) = v34;
      *&v34 = v30;
      *(&v34 + 1) = v31;
      v32 = v30;
      v33 = v30;
      sub_19B8F2924(&v32);
    }
  }
}

void sub_19BA2F5B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B8F2924(va);
  _Unwind_Resume(a1);
}

__n128 sub_19BA2F5E4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = a2 + v4 - a4;
  if (v5 >= a3)
  {
    v7 = *(a1 + 8);
  }

  else
  {
    v6 = a2 + v4 - a4;
    v7 = *(a1 + 8);
    do
    {
      *v7 = *v6;
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      *(v7 + 8) = 0;
      *(v7 + 8) = *(v6 + 8);
      *(v7 + 24) = *(v6 + 24);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v7 + 32) = *(v6 + 32);
      result = *(v6 + 48);
      *(v7 + 48) = result;
      v6 += 64;
      v7 += 64;
    }

    while (v6 < a3);
  }

  *(a1 + 8) = v7;
  if (v4 != a4)
  {
    v9 = 0;
    v10 = a4 - v4;
    do
    {
      v11 = v5 + v9;
      v12 = v4 + v9;
      v14 = (v4 + v9 - 56);
      v13 = *v14;
      *(v4 + v9 - 64) = *(v5 + v9 - 64);
      if (v13)
      {
        *(v12 - 48) = v13;
        operator delete(v13);
        *v14 = 0;
        *(v4 + v9 - 48) = 0;
        *(v4 + v9 - 40) = 0;
      }

      v15 = (v11 - 56);
      *v14 = *(v11 - 56);
      *(v12 - 40) = *(v11 - 40);
      *v15 = 0;
      v15[1] = 0;
      v15[2] = 0;
      *(v12 - 32) = *(v11 - 32);
      result = *(v11 - 16);
      *(v12 - 16) = result;
      v9 -= 64;
    }

    while (v10 != v9);
  }

  return result;
}

__n128 sub_19BA2F6FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    do
    {
      *a3 = *v4;
      if (a3 != v4)
      {
        v5 = *(a3 + 8);
        v6 = *(v4 + 8);
        v7 = *(v4 + 16);
        v8 = v7 - v6;
        v9 = *(a3 + 24);
        if (v9 - v5 < (v7 - v6))
        {
          if (v5)
          {
            *(a3 + 16) = v5;
            operator delete(v5);
            v9 = 0;
            *(a3 + 8) = 0;
            *(a3 + 16) = 0;
            *(a3 + 24) = 0;
          }

          v10 = v8 >> 4;
          if (!((v8 >> 4) >> 60))
          {
            if (v9 >> 3 > v10)
            {
              v10 = v9 >> 3;
            }

            if (v9 >= 0x7FFFFFFFFFFFFFF0)
            {
              v11 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v11 = v10;
            }

            sub_19B8F18CC(a3 + 8, v11);
          }

          sub_19B8B8A40();
        }

        v12 = *(a3 + 16);
        v13 = v12 - v5;
        if (v12 - v5 >= v8)
        {
          while (v6 != v7)
          {
            v17 = *v6++;
            *v5 = v17;
            v5 += 16;
          }

          *(a3 + 16) = v5;
        }

        else
        {
          if (v12 != v5)
          {
            v14 = (v6 + v13);
            do
            {
              v15 = *v6++;
              *v5 = v15;
              v5 += 16;
              v13 -= 16;
            }

            while (v13);
            v6 = v14;
          }

          if (v6 == v7)
          {
            v16 = v12;
          }

          else
          {
            v16 = v12;
            do
            {
              *v12 = *v6;
              *(v12 + 1) = *(v6++ + 1);
              v12 += 16;
              v16 += 16;
            }

            while (v6 != v7);
          }

          *(a3 + 16) = v16;
        }
      }

      *(a3 + 32) = *(v4 + 32);
      result = *(v4 + 48);
      *(a3 + 48) = result;
      v4 += 64;
      a3 += 64;
    }

    while (v4 != a2);
  }

  return result;
}

void sub_19BA2F8A0(void ***a1)
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
        v6 = *(v4 - 7);
        if (v6)
        {
          *(v4 - 6) = v6;
          operator delete(v6);
        }

        v4 -= 64;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_19BA2F92C(uint64_t result, uint64_t *a2)
{
  if (result)
  {
    v2 = result;
    v3 = *(a2 + 16);
    result = 1;
    v4 = *a2;
    v5 = a2[1];
    while (1)
    {
      v6 = *(v2 + 32);
      if (v4 == v6)
      {
        v7 = *(v2 + 48);
        if (a2[2] & 1) != 0 && (*(v2 + 48))
        {
          v8 = *(v2 + 40);
          if (v5 >= v8)
          {
            if (v8 >= v5)
            {
              return result;
            }

LABEL_14:
            v2 += 8;
          }
        }

        else if ((a2[2] & 1) == 0)
        {
          if ((*(v2 + 48) & 1) == 0)
          {
            return result;
          }

          goto LABEL_14;
        }
      }

      else if (v4 >= v6)
      {
        if (v6 >= v4)
        {
          return result;
        }

        goto LABEL_14;
      }

      v2 = *v2;
      if (!v2)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *sub_19BA2F99C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_17:
    operator new();
  }

  v3 = *(a2 + 16);
  v4 = *a2;
  v5 = a2[1];
  while (1)
  {
    while (1)
    {
      v6 = v2;
      v7 = v2[4];
      if (v4 != v7)
      {
        if (v4 >= v7)
        {
          if (v7 >= v4)
          {
            return v6;
          }

          goto LABEL_16;
        }

        goto LABEL_13;
      }

      v8 = *(v6 + 48);
      if ((a2[2] & 1) == 0 || (v6[6] & 1) == 0)
      {
        break;
      }

      v9 = v6[5];
      if (v5 >= v9)
      {
        if (v9 >= v5)
        {
          return v6;
        }

        goto LABEL_16;
      }

LABEL_13:
      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_17;
      }
    }

    if (a2[2])
    {
      goto LABEL_13;
    }

    if ((v6[6] & 1) == 0)
    {
      return v6;
    }

LABEL_16:
    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_17;
    }
  }
}

void sub_19BA2FBB8(std::string *a1)
{
  sub_19B8759E8(&v50, "{public}");
  sub_19B8759E8(&__p, "");
  v2 = 0;
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = a1->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  v5 = v52;
  if ((v52 & 0x80u) == 0)
  {
    v6 = v52;
  }

  else
  {
    v6 = v51;
  }

  if ((v52 & 0x80u) == 0)
  {
    v7 = &v50;
  }

  else
  {
    v7 = v50;
  }

  while (!v6)
  {
LABEL_22:
    if (v2 != -1)
    {
      if ((v49 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v49 & 0x80u) == 0)
      {
        v15 = v49;
      }

      else
      {
        v15 = v48;
      }

      std::string::replace(a1, v2, v6, p_p, v15);
      v16 = v49;
      if ((v49 & 0x80u) != 0)
      {
        v16 = v48;
      }

      v2 += v16;
      size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
      if ((size & 0x80u) == 0)
      {
        v4 = a1;
      }

      else
      {
        v4 = a1->__r_.__value_.__r.__words[0];
      }

      if ((size & 0x80u) != 0)
      {
        size = a1->__r_.__value_.__l.__size_;
      }

      v5 = v52;
      v7 = (v52 & 0x80u) == 0 ? &v50 : v50;
      v6 = (v52 & 0x80u) == 0 ? v52 : v51;
      if (size >= v2)
      {
        continue;
      }
    }

    goto LABEL_43;
  }

  v8 = size - v2;
  if ((size - v2) >= v6)
  {
    v9 = (v4 + size);
    v10 = (v4 + v2);
    v11 = *v7;
    do
    {
      if (v8 - v6 == -1)
      {
        break;
      }

      v12 = memchr(v10, v11, v8 - v6 + 1);
      if (!v12)
      {
        break;
      }

      v13 = v12;
      if (!memcmp(v12, v7, v6))
      {
        if (v13 == v9)
        {
          break;
        }

        v2 = &v13[-v4];
        goto LABEL_22;
      }

      v10 = v13 + 1;
      v8 = v9 - (v13 + 1);
    }

    while (v8 >= v6);
  }

LABEL_43:
  if (v49 < 0)
  {
    operator delete(__p);
    if ((v52 & 0x80) == 0)
    {
      goto LABEL_45;
    }

LABEL_135:
    operator delete(v50);
    goto LABEL_45;
  }

  if ((v5 & 0x80) != 0)
  {
    goto LABEL_135;
  }

LABEL_45:
  sub_19B8759E8(&v50, "{private}");
  sub_19B8759E8(&__p, "");
  v17 = 0;
  v18 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v18 & 0x80u) == 0)
  {
    v19 = a1;
  }

  else
  {
    v19 = a1->__r_.__value_.__r.__words[0];
  }

  if ((v18 & 0x80u) != 0)
  {
    v18 = a1->__r_.__value_.__l.__size_;
  }

  v20 = v52;
  if ((v52 & 0x80u) == 0)
  {
    v21 = v52;
  }

  else
  {
    v21 = v51;
  }

  if ((v52 & 0x80u) == 0)
  {
    v22 = &v50;
  }

  else
  {
    v22 = v50;
  }

  while (!v21)
  {
LABEL_66:
    if (v17 != -1)
    {
      if ((v49 & 0x80u) == 0)
      {
        v29 = &__p;
      }

      else
      {
        v29 = __p;
      }

      if ((v49 & 0x80u) == 0)
      {
        v30 = v49;
      }

      else
      {
        v30 = v48;
      }

      std::string::replace(a1, v17, v21, v29, v30);
      v31 = v49;
      if ((v49 & 0x80u) != 0)
      {
        v31 = v48;
      }

      v17 += v31;
      v18 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
      if ((v18 & 0x80u) == 0)
      {
        v19 = a1;
      }

      else
      {
        v19 = a1->__r_.__value_.__r.__words[0];
      }

      if ((v18 & 0x80u) != 0)
      {
        v18 = a1->__r_.__value_.__l.__size_;
      }

      v20 = v52;
      v22 = (v52 & 0x80u) == 0 ? &v50 : v50;
      v21 = (v52 & 0x80u) == 0 ? v52 : v51;
      if (v18 >= v17)
      {
        continue;
      }
    }

    goto LABEL_87;
  }

  v23 = v18 - v17;
  if ((v18 - v17) >= v21)
  {
    v24 = (v19 + v18);
    v25 = (v19 + v17);
    v26 = *v22;
    do
    {
      if (v23 - v21 == -1)
      {
        break;
      }

      v27 = memchr(v25, v26, v23 - v21 + 1);
      if (!v27)
      {
        break;
      }

      v28 = v27;
      if (!memcmp(v27, v22, v21))
      {
        if (v28 == v24)
        {
          break;
        }

        v17 = &v28[-v19];
        goto LABEL_66;
      }

      v25 = v28 + 1;
      v23 = v24 - (v28 + 1);
    }

    while (v23 >= v21);
  }

LABEL_87:
  if (v49 < 0)
  {
    operator delete(__p);
    if ((v52 & 0x80) == 0)
    {
      goto LABEL_89;
    }

LABEL_137:
    operator delete(v50);
    goto LABEL_89;
  }

  if ((v20 & 0x80) != 0)
  {
    goto LABEL_137;
  }

LABEL_89:
  sub_19B8759E8(&v50, "{sensitive}");
  sub_19B8759E8(&__p, "");
  v32 = 0;
  v33 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v33 & 0x80u) == 0)
  {
    v34 = a1;
  }

  else
  {
    v34 = a1->__r_.__value_.__r.__words[0];
  }

  if ((v33 & 0x80u) != 0)
  {
    v33 = a1->__r_.__value_.__l.__size_;
  }

  v35 = v52;
  if ((v52 & 0x80u) == 0)
  {
    v36 = v52;
  }

  else
  {
    v36 = v51;
  }

  if ((v52 & 0x80u) == 0)
  {
    v37 = &v50;
  }

  else
  {
    v37 = v50;
  }

  while (!v36)
  {
LABEL_110:
    if (v32 != -1)
    {
      if ((v49 & 0x80u) == 0)
      {
        v44 = &__p;
      }

      else
      {
        v44 = __p;
      }

      if ((v49 & 0x80u) == 0)
      {
        v45 = v49;
      }

      else
      {
        v45 = v48;
      }

      std::string::replace(a1, v32, v36, v44, v45);
      v46 = v49;
      if ((v49 & 0x80u) != 0)
      {
        v46 = v48;
      }

      v32 += v46;
      v33 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
      if ((v33 & 0x80u) == 0)
      {
        v34 = a1;
      }

      else
      {
        v34 = a1->__r_.__value_.__r.__words[0];
      }

      if ((v33 & 0x80u) != 0)
      {
        v33 = a1->__r_.__value_.__l.__size_;
      }

      v35 = v52;
      v37 = (v52 & 0x80u) == 0 ? &v50 : v50;
      v36 = (v52 & 0x80u) == 0 ? v52 : v51;
      if (v33 >= v32)
      {
        continue;
      }
    }

    goto LABEL_131;
  }

  v38 = v33 - v32;
  if ((v33 - v32) >= v36)
  {
    v39 = (v34 + v33);
    v40 = (v34 + v32);
    v41 = *v37;
    do
    {
      if (v38 - v36 == -1)
      {
        break;
      }

      v42 = memchr(v40, v41, v38 - v36 + 1);
      if (!v42)
      {
        break;
      }

      v43 = v42;
      if (!memcmp(v42, v37, v36))
      {
        if (v43 == v39)
        {
          break;
        }

        v32 = &v43[-v34];
        goto LABEL_110;
      }

      v40 = v43 + 1;
      v38 = v39 - (v43 + 1);
    }

    while (v38 >= v36);
  }

LABEL_131:
  if ((v49 & 0x80000000) == 0)
  {
    if ((v35 & 0x80) == 0)
    {
      return;
    }

LABEL_139:
    operator delete(v50);
    return;
  }

  operator delete(__p);
  if ((v52 & 0x80) != 0)
  {
    goto LABEL_139;
  }
}

void sub_19BA30054(uint64_t *a1, uint64_t *a2)
{
  sub_19B916DC0(a1);
  v4 = a2[2];
  if (v4)
  {
    v6 = *a2;
    v5 = a2[1];
    v7 = *(*a2 + 8);
    v8 = *v5;
    *(v8 + 8) = v7;
    *v7 = v8;
    v9 = *a1;
    *(v9 + 8) = v5;
    *v5 = v9;
    *a1 = v6;
    *(v6 + 8) = a1;
    a1[2] += v4;
    a2[2] = 0;
  }
}

double sub_19BA31688()
{
  if ((atomic_load_explicit(&qword_1ED519320, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED519320))
  {
    dword_1ED519310 = 1;
    __cxa_guard_release(&qword_1ED519320);
  }

  if ((atomic_load_explicit(&qword_1ED519330, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED519330))
  {
    qword_1ED519328 = 0x3FF0000000000000;
    __cxa_guard_release(&qword_1ED519330);
  }

  v0 = 48271 * (dword_1ED519310 % 0xADC8u);
  v1 = 3399 * (dword_1ED519310 / 0xADC8u);
  v2 = v0 >= v1;
  v3 = v0 - v1;
  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0x7FFFFFFF;
  }

  v5 = v4 + v3;
  v6 = v5 - 1;
  v7 = v5 / 0xADC8;
  v8 = 48271 * (v5 % 0xADC8);
  v7 *= 3399;
  v2 = v8 >= v7;
  v9 = v8 - v7;
  if (v2)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0x7FFFFFFF;
  }

  dword_1ED519310 = v10 + v9;
  return *&qword_1ED519328 * ((v6 + (v10 + v9 - 1) * 2147483650.0) / 4.61168601e18) + 0.0;
}

uint64_t sub_19BA317C4(double *a1, void *a2, id *a3, double a4)
{
  v8 = sub_19BA319F8() * a4;
  v9 = sub_19BA319F8() * a4;
  [a2 horizontalAccuracy];
  v11 = v10;
  [a2 horizontalAccuracy];
  v43 = sqrt(v11 * v12 + a4 * a4);
  v13 = v9 * a1[15];
  v14 = v8 * a1[16];
  v15 = [CLTripSegmentLocation alloc];
  v16 = [a2 timestamp];
  [a2 latitude];
  v18 = v13 + v17;
  if (v18 > 90.0)
  {
    v18 = 90.0;
  }

  if (v18 >= -90.0)
  {
    v19 = v18;
  }

  else
  {
    v19 = -90.0;
  }

  [a2 longitude];
  v21 = fmod(v14 + v20, 360.0);
  if (v21 <= -180.0)
  {
    v21 = v21 + 360.0;
  }

  else if (v21 > 180.0)
  {
    v21 = v21 + -360.0;
  }

  [a2 course];
  v23 = v22;
  [a2 courseAccuracy];
  v25 = v24;
  [a2 speed];
  v27 = v26;
  [a2 speedAccuracy];
  v29 = v28;
  [a2 altitude];
  v31 = v30;
  [a2 altitudeAccuracy];
  v33 = -[CLTripSegmentLocation initWithTime:latitude:longitude:horizontalAccuracy:course:courseAccuracy:speed:speedAccuracy:altitude:altitudeAccuracy:locType:referenceFrame:](v15, "initWithTime:latitude:longitude:horizontalAccuracy:course:courseAccuracy:speed:speedAccuracy:altitude:altitudeAccuracy:locType:referenceFrame:", v16, 1, [a2 referenceFrame], v19, v21, v43, v23, v25, v27, v29, v31, v32);
  [*a3 addObject:v33];
  [(CLTripSegmentLocation *)v33 iOSTime];
  v35 = v34 + 1.0;
  v36 = a1[20];
  if (v35 > v36)
  {
    [(CLTripSegmentLocation *)v33 iOSTime];
    v36 = v37 + 1.0;
  }

  a1[20] = v36;
  result = [(CLTripSegmentLocation *)v33 iOSTime];
  v40 = v39 + 1.0;
  v41 = a1[25];
  if (v40 > v41)
  {
    result = [(CLTripSegmentLocation *)v33 iOSTime];
    v41 = v42 + 1.0;
  }

  a1[25] = v41;
  return result;
}

double sub_19BA319F8()
{
  if ((atomic_load_explicit(&qword_1ED519350, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED519350))
  {
    sub_19BA32500(&unk_1ED519318);
    __cxa_atexit(MEMORY[0x1E69E52D8], &unk_1ED519318, &dword_19B873000);
    __cxa_guard_release(&qword_1ED519350);
  }

  if ((atomic_load_explicit(&qword_1ED519358, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED519358))
  {
    v1 = MEMORY[0x19EAE97B0](&unk_1ED519318);
    dword_1EAFE5130[0] = v1;
    for (i = 1; i != 624; ++i)
    {
      v1 = i + 1812433253 * (v1 ^ (v1 >> 30));
      dword_1EAFE5130[i] = v1;
    }

    qword_1EAFE5AF0 = 0;
    __cxa_guard_release(&qword_1ED519358);
  }

  if ((atomic_load_explicit(qword_1ED519360, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_1ED519360))
  {
    xmmword_1ED519390 = xmmword_19BA8BCB0;
    byte_1ED5193A8 = 0;
    __cxa_guard_release(qword_1ED519360);
  }

  return sub_19BA32588(&xmmword_1ED519390, dword_1EAFE5130, &xmmword_1ED519390);
}

BOOL sub_19BA31B74(uint64_t a1, void *a2, id *a3, int a4)
{
  result = 0;
  if (a2 && a3)
  {
    if ([a2 count] >= (2 * *(a1 + 92)))
    {
      [objc_msgSend(a2 "firstObject")];
      *(a1 + 160) = v9;
      *(a1 + 200) = v9;
      context = objc_autoreleasePoolPush();
      if (a4)
      {
        v10 = [MEMORY[0x1E695DF70] array];
        sub_19B9A338C(a2, v10);
        v11 = [v10 count] != 0;
      }

      else
      {
        v11 = 0;
      }

      if (*(a1 + 92))
      {
        v12 = 0;
        do
        {
          sub_19BA317C4(a1, [a2 objectAtIndexedSubscript:v12++], a3, *(a1 + 96));
        }

        while (v12 < *(a1 + 92));
      }

      [objc_msgSend(*a3 "lastObject")];
      *(a1 + 136) = v13;
      [objc_msgSend(*a3 "lastObject")];
      *(a1 + 144) = v14;
      v15 = *(a1 + 92);
      if ([a2 count] - v15 > v15)
      {
        do
        {
          v16 = [a2 objectAtIndexedSubscript:v15];
          v17 = v16;
          if (v11 && [v16 isWiFiLocationType])
          {
            [*a3 addObject:v17];
          }

          else
          {
            [v17 iOSTime];
            v19 = v18;
            if (v18 > *(a1 + 160))
            {
              [v17 latitude];
              *(a1 + 128) = cos(v20 * 0.0174532925) * 0.00000899321606;
              v21 = *a1;
              v22 = *(a1 + 8) - *a1;
              *(a1 + 160) = v19 + v21 + sub_19BA31688() * v22;
              v23 = (*(a1 + 24) + 1);
              *(a1 + 168) = ((sub_19BA31688() * *(a1 + 24)) + v23 * 0.5);
              if ([v17 mapsRoadClass])
              {
                [v17 mapsRoadClass];
              }

              v24 = *(a1 + 16);
              *(a1 + 192) = v24;
              v25 = sub_19BA319F8();
              v26 = sub_19BA319F8();
              v27 = v24 * sqrt(v26 * v26 + v25 * v25);
              v28 = sub_19BA31688();
              v29 = __sincos_stret(v28 * 360.0 * 0.0174532925);
              *(a1 + 176) = v27 * v29.__cosval;
              *(a1 + 184) = v27 * v29.__sinval;
            }

            if (*(a1 + 168) >= 1)
            {
              v30 = *(a1 + 192);
              [v17 horizontalAccuracy];
              v32 = v31;
              [v17 horizontalAccuracy];
              v34 = v33;
              v35 = *(a1 + 32);
              v36 = *(a1 + 176);
              v37 = *(a1 + 120) * v36.f64[0];
              v38 = vmuld_lane_f64(*(a1 + 128), v36, 1);
              *(a1 + 176) = vmulq_n_f64(v36, v35);
              *(a1 + 192) = v35 * *(a1 + 192);
              --*(a1 + 168);
              v39 = [CLTripSegmentLocation alloc];
              v40 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v19];
              [v17 latitude];
              v42 = v37 + v41;
              if (v42 > 90.0)
              {
                v42 = 90.0;
              }

              if (v42 < -90.0)
              {
                v42 = -90.0;
              }

              v116 = v42;
              [v17 longitude];
              v44 = fmod(v38 + v43, 360.0);
              if (v44 <= -180.0)
              {
                v44 = v44 + 360.0;
              }

              else if (v44 > 180.0)
              {
                v44 = v44 + -360.0;
              }

              v45 = sqrt(v32 * v34 + v30 * v30);
              [v17 course];
              v47 = v46;
              [v17 courseAccuracy];
              v49 = v48;
              [v17 speed];
              v51 = v50;
              [v17 speedAccuracy];
              v53 = v52;
              [v17 altitude];
              v55 = v54;
              [v17 altitudeAccuracy];
              v57 = -[CLTripSegmentLocation initWithTime:latitude:longitude:horizontalAccuracy:course:courseAccuracy:speed:speedAccuracy:altitude:altitudeAccuracy:locType:referenceFrame:](v39, "initWithTime:latitude:longitude:horizontalAccuracy:course:courseAccuracy:speed:speedAccuracy:altitude:altitudeAccuracy:locType:referenceFrame:", v40, 1, [v17 referenceFrame], v116, v44, v45, v47, v49, v51, v53, v55, v56, context);
              if (v57)
              {
                [*a3 addObject:v57];
              }
            }

            if (!v11)
            {
              [objc_msgSend(v17 "timestamp")];
              v59 = v58;
              [v17 speed];
              v61 = v60;
              v62 = *(a1 + 136);
              [v17 speed];
              v64 = v63;
              v65 = *(a1 + 152) + 6.0;
              [v17 course];
              v67 = fmod(v66 - *(a1 + 144), 360.0);
              if (v67 < 0.0)
              {
                v67 = v67 + 360.0;
              }

              if (v67 > 180.0)
              {
                v67 = v67 + -360.0;
              }

              v69 = fabs(v67) <= 20.0 || v64 >= 25.0 || v59 <= v65;
              if (v69)
              {
                if (vabdd_f64(v61, v62) <= 5.0)
                {
                  v70 = *(a1 + 200);
                }

                else
                {
                  v70 = v59 + sub_19BA31688() * 3.0;
                  if (v70 >= *(a1 + 200))
                  {
                    v70 = *(a1 + 200);
                  }

                  *(a1 + 200) = v70;
                }
              }

              else
              {
                v70 = v59 + 1.0;
                *(a1 + 200) = v59 + 1.0;
                *(a1 + 152) = v59 + 1.0;
              }

              if (v59 >= v70)
              {
                [v17 latitude];
                *(a1 + 128) = cos(v72 * 0.0174532925) * 0.00000899321606;
                [v17 speed];
                v74 = vdup_n_s32(v73 > 25.0);
                v75.i64[0] = v74.u32[0];
                v75.i64[1] = v74.u32[1];
                *(a1 + 48) = vbslq_s8(vcltzq_s64(vshlq_n_s64(v75, 0x3FuLL)), xmmword_19BA8D500, xmmword_19BA8D4F0);
                [v17 speed];
                v76 = 6.0;
                if (v77 > *(a1 + 104))
                {
                  v78 = *(a1 + 56) - *(a1 + 48);
                  v76 = *(a1 + 48) + sub_19BA31688() * v78;
                }

                *(a1 + 200) = v59 + v76;
                v79 = *(a1 + 88) + 1;
                v71 = (sub_19BA31688() * *(a1 + 88)) + v79 / 2;
                *(a1 + 208) = v71;
              }

              else
              {
                v71 = *(a1 + 208);
              }

              if (v71 >= 1)
              {
                v117 = *(a1 + 64);
                if ((atomic_load_explicit(&qword_1ED519338, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED519338))
                {
                  sub_19BA32500(&stru_1ED519314);
                  __cxa_atexit(MEMORY[0x1E69E52D8], &stru_1ED519314, &dword_19B873000);
                  __cxa_guard_release(&qword_1ED519338);
                }

                if ((atomic_load_explicit(&qword_1ED519340, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED519340))
                {
                  v110 = MEMORY[0x19EAE97B0](&stru_1ED519314);
                  dword_1ED5193B0 = v110;
                  v111 = 41;
                  v112 = 1;
                  do
                  {
                    v113 = 1812433253 * (v110 ^ (v110 >> 30));
                    v110 = v113 + v112;
                    dword_1ED519310[v111] = v111 + v113 - 40;
                    ++v112;
                    ++v111;
                  }

                  while (v111 != 664);
                  qword_1ED519D70 = 0;
                  __cxa_guard_release(&qword_1ED519340);
                }

                if ((atomic_load_explicit(&qword_1ED519348, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED519348))
                {
                  *dbl_1ED519370 = v117;
                  byte_1ED519388 = 0;
                  __cxa_guard_release(&qword_1ED519348);
                }

                v80 = sub_19BA32588(dbl_1ED519370, &dword_1ED5193B0, dbl_1ED519370);
                v81 = exp(v80);
                if (*(a1 + 40) >= v81)
                {
                  v82 = v81;
                }

                else
                {
                  v82 = *(a1 + 40);
                }

                [v17 course];
                v84 = v83;
                v69 = sub_19BA31688() <= 0.5;
                v85 = -1.0;
                if (!v69)
                {
                  v85 = 1.0;
                }

                v86 = __sincos_stret((v84 + v85 * 90.0) * 0.0174532925);
                v87 = v82 * v86.__sinval;
                v88 = v82 * v86.__cosval;
                v89 = *(a1 + 80);
                [v17 horizontalAccuracy];
                v91 = v90;
                [v17 horizontalAccuracy];
                v93 = v92;
                v94 = *(a1 + 120) * v88;
                v95 = *(a1 + 128) * v87;
                --*(a1 + 208);
                v96 = [CLTripSegmentLocation alloc];
                v97 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v59];
                [v17 latitude];
                v99 = v94 + v98;
                if (v99 > 90.0)
                {
                  v99 = 90.0;
                }

                if (v99 >= -90.0)
                {
                  v100 = v99;
                }

                else
                {
                  v100 = -90.0;
                }

                [v17 longitude];
                v102 = fmod(v95 + v101, 360.0);
                if (v102 <= -180.0)
                {
                  v102 = v102 + 360.0;
                }

                else if (v102 > 180.0)
                {
                  v102 = v102 + -360.0;
                }

                v103 = sqrt(v89 + v91 * v93);
                [v17 altitude];
                v105 = v104;
                [v17 altitudeAccuracy];
                v107 = -[CLTripSegmentLocation initWithTime:latitude:longitude:horizontalAccuracy:course:courseAccuracy:speed:speedAccuracy:altitude:altitudeAccuracy:locType:referenceFrame:](v96, "initWithTime:latitude:longitude:horizontalAccuracy:course:courseAccuracy:speed:speedAccuracy:altitude:altitudeAccuracy:locType:referenceFrame:", v97, 4, [v17 referenceFrame], v100, v102, v103, -1.0, -1.0, -1.0, -1.0, v105, v106);
                if (v107)
                {
                  [*a3 addObject:v107];
                }
              }
            }

            [v17 speed];
            *(a1 + 136) = v108;
            [v17 course];
            *(a1 + 144) = v109;
          }

          ++v15;
        }

        while (v15 < [a2 count] - *(a1 + 92));
      }

      for (i = [a2 count] - *(a1 + 92); i < objc_msgSend(a2, "count"); ++i)
      {
        sub_19BA317C4(a1, [a2 objectAtIndexedSubscript:i], a3, *(a1 + 96));
      }

      objc_autoreleasePoolPop(context);
      return [*a3 count] != 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

std::random_device *sub_19BA32500(std::random_device *a1)
{
  *(&__token.__r_.__value_.__s + 23) = 12;
  strcpy(&__token, "/dev/urandom");
  std::random_device::random_device(a1, &__token);
  if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__token.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_19BA3256C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_19BA32588(uint64_t a1, uint64_t a2, double *a3)
{
  if (*(a1 + 24))
  {
    *(a1 + 24) = 0;
    v5 = *(a1 + 16);
  }

  else
  {
    do
    {
      do
      {
        v7 = sub_19B91408C(a2);
        v8 = (v7 + sub_19B91408C(a2) * 4294967300.0) * 5.42101086e-20 * 2.0 + -1.0;
        v9 = sub_19B91408C(a2);
        v10 = (v9 + sub_19B91408C(a2) * 4294967300.0) * 5.42101086e-20 * 2.0 + -1.0;
        v11 = v10 * v10 + v8 * v8;
      }

      while (v11 > 1.0);
    }

    while (v11 == 0.0);
    v12 = sqrt(log(v10 * v10 + v8 * v8) * -2.0 / v11);
    *(a1 + 16) = v10 * v12;
    *(a1 + 24) = 1;
    v5 = v8 * v12;
  }

  return *a3 + v5 * a3[1];
}

void sub_19BA329E0(NSObject *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a1[325].isa)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v1 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v1, OS_LOG_TYPE_INFO, "CLMM,Pedestrian,Maps API already initialized", buf, 2u);
    }

    v2 = sub_19B87DD40();
    if (*(v2 + 160) <= 1 && *(v2 + 164) <= 1 && *(v2 + 168) <= 1 && !*(v2 + 152))
    {
      goto LABEL_29;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v3 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "virtual void CLGeoMapFeatureAccessGeometryPedestrian::initializeMapsAPI()", "CoreLocation: %s\n", v3);
    if (v3 == buf)
    {
      goto LABEL_29;
    }

LABEL_28:
    free(v3);
    goto LABEL_29;
  }

  v4 = a1;
  a1[326].isa = dispatch_queue_create("cl_geo_access_map_feature_geometry_pedestrian_queue", 0);
  v5 = [objc_alloc(MEMORY[0x1E69A2198]) initWithQueue:v4[326].isa];
  v4[325].isa = v5;
  if (v5)
  {
    [(objc_class *)v5 setAllowNetworkTileLoad:1];
    [(objc_class *)v4[325].isa setFlipNegativeTravelDirectionRoads:1];
    [(objc_class *)v4[325].isa setVisitDoubleTravelDirectionRoadsTwice:0];
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
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v12 = off_1EAFE4708;
    v6 = &off_19BA89000;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *v18 = 0;
      *&v18[4] = 2082;
      *&v18[6] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "fGEOMapFeatureAccess != nullptr";
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed,fGEOMapFeatureAccess==nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }
    }

    v13 = off_1EAFE4708;
    if (os_signpost_enabled(off_1EAFE4708))
    {
      *buf = 68289539;
      *v18 = 0;
      *&v18[4] = 2082;
      *&v18[6] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "fGEOMapFeatureAccess != nullptr";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed,fGEOMapFeatureAccess==nil", "{msg%{public}.0s:Assertion failed,fGEOMapFeatureAccess==nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }
    }

    v4 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *v18 = 0;
      *&v18[4] = 2082;
      *&v18[6] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "fGEOMapFeatureAccess != nullptr";
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed,fGEOMapFeatureAccess==nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v15 = 47;
    v16 = "initializeMapsAPI";
    v14 = "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Daemon/Positioning/MapMatching/CLGeoMapFeatureAccessGeometryPedestrian.mm";
    abort_report_np();
  }

  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
LABEL_16:
  v7 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEFAULT))
  {
    if ((*(v4->isa + 13))(v4))
    {
      v8 = "Cycling";
    }

    else
    {
      v8 = "Pedestrian";
    }

    v9 = [(objc_class *)v4[325].isa allowStaleData:v14];
    *buf = 136446466;
    *v18 = v8;
    *&v18[8] = 1026;
    *&v18[10] = v9;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "CLMMPED,%{public}s,using maps API,stale data,%{public}d", buf, 0x12u);
  }

  v10 = sub_19B87DD40();
  if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (*(v6 + 218) != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    (*(v4->isa + 13))(v4);
    [(objc_class *)v4[325].isa allowStaleData];
    v3 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "virtual void CLGeoMapFeatureAccessGeometryPedestrian::initializeMapsAPI()", "CoreLocation: %s\n", v3);
    if (v3 != buf)
    {
      goto LABEL_28;
    }
  }

LABEL_29:
  v11 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19BA32FFC(uint64_t a1, uint64_t *a2, uint64_t a3, double a4)
{
  v117 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a3 + 64);
    v78 = *(a3 + 56);
    v87 = 0;
    v88 = 0;
    v89 = 0;
    if (*(a1 + 33) == 1)
    {
      if (!*(a1 + 16))
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
        }

        v61 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v61, OS_LOG_TYPE_ERROR, "CLMMPED,roadsWithinDistance,fRoadGeometryBuffer is unexpectedly nullptr", buf, 2u);
        }

        v62 = sub_19B87DD40();
        if ((*(v62 + 160) & 0x80000000) != 0 && (*(v62 + 164) & 0x80000000) != 0 && (*(v62 + 168) & 0x80000000) != 0 && !*(v62 + 152))
        {
          goto LABEL_140;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
        }

        LOWORD(v93[0]) = 0;
        v16 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometryPedestrian::roadsWithinDistance(CLMapGeometry::DistanceQueryResultList &, const CLMapCrumb &, double, BOOL) const", "CoreLocation: %s\n", v16);
        goto LABEL_85;
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }

      v9 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v10 = (*(*(a1 + 16) + 336) - *(*(a1 + 16) + 328)) >> 4;
        *buf = 134349056;
        *&buf[4] = v10;
        _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEBUG, "CLMMPED,RoadBuffer,findRoadsNear fRoadBuffer.size,%{public}lu", buf, 0xCu);
      }

      v11 = sub_19B87DD40();
      if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
        }

        v12 = (*(*(a1 + 16) + 336) - *(*(a1 + 16) + 328)) >> 4;
        LODWORD(v93[0]) = 134349056;
        *(v93 + 4) = v12;
        v13 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLGeoMapFeatureAccessGeometryPedestrian::roadsWithinDistance(CLMapGeometry::DistanceQueryResultList &, const CLMapCrumb &, double, BOOL) const", "CoreLocation: %s\n", v13);
        if (v13 != buf)
        {
          free(v13);
        }
      }

      if ((sub_19B8E77AC(*(a1 + 16), &v87, 1, 0, *(a3 + 56), *(a3 + 64), a4) & 1) == 0)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
        }

        v14 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_DEBUG, "CLMMPED,Warning,RoadBuffer,findRoadsNear returned false", buf, 2u);
        }

        v15 = sub_19B87DD40();
        if (*(v15 + 160) <= 1 && *(v15 + 164) <= 1 && *(v15 + 168) <= 1 && !*(v15 + 152))
        {
          goto LABEL_140;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 == -1)
        {
          goto LABEL_26;
        }

LABEL_147:
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
LABEL_26:
        LOWORD(v93[0]) = 0;
        v16 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLGeoMapFeatureAccessGeometryPedestrian::roadsWithinDistance(CLMapGeometry::DistanceQueryResultList &, const CLMapCrumb &, double, BOOL) const", "CoreLocation: %s\n", v16);
LABEL_85:
        if (v16 != buf)
        {
          free(v16);
        }

LABEL_140:
        v22 = 0;
        goto LABEL_141;
      }
    }

    else if ((sub_19BA340C8(a1, a4, &v87, a3) & 1) == 0)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }

      v59 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v59, OS_LOG_TYPE_DEBUG, "CLMMPED,Warning,MapsAPI,findRoadsNear returned false", buf, 2u);
      }

      v60 = sub_19B87DD40();
      if (*(v60 + 160) <= 1 && *(v60 + 164) <= 1 && *(v60 + 168) <= 1 && !*(v60 + 152))
      {
        goto LABEL_140;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 == -1)
      {
        goto LABEL_26;
      }

      goto LABEL_147;
    }

    v22 = 1;
    if (v87 == v88)
    {
LABEL_141:
      *buf = &v87;
      sub_19B8F0E84(buf);
      objc_autoreleasePoolPop(v7);
      goto LABEL_142;
    }

    v76 = v7;
    __asm { FMOV            V0.2D, #-1.0 }

    v82 = 0.0;
    v80 = 0;
    v81 = 0;
    v83 = 1;
    v84 = 0.0;
    v86 = 0;
    v85 = 0uLL;
    v29 = *v87;
    v28 = *(v87 + 8);
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      v80 = v29;
      v81 = v28;
      if (!v29)
      {
        goto LABEL_87;
      }
    }

    else
    {
      v80 = *v87;
      v81 = 0;
      if (!v29)
      {
LABEL_87:
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
        }

        v7 = v76;
        v63 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v63, OS_LOG_TYPE_DEBUG, "#Warning,CLMMPED,roadsWithinDistance returned nullptr", buf, 2u);
        }

        v64 = sub_19B87DD40();
        if (*(v64 + 160) > 1 || *(v64 + 164) > 1 || *(v64 + 168) > 1 || *(v64 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
          }

          LOWORD(v93[0]) = 0;
          v65 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLGeoMapFeatureAccessGeometryPedestrian::roadsWithinDistance(CLMapGeometry::DistanceQueryResultList &, const CLMapCrumb &, double, BOOL) const", "CoreLocation: %s\n", v65);
          if (v65 != buf)
          {
            free(v65);
          }
        }

        sub_19B916DC0(a2);
LABEL_138:
        if (v81)
        {
          sub_19B8750F8(v81);
        }

        goto LABEL_140;
      }
    }

    v93[0] = 0uLL;
    v93[1] = _Q0;
    v94 = 0;
    v95 = 0;
    v96 = 0xBFF0000000000000;
    v108 = 0;
    v109 = 0;
    memset(&v106[32], 0, 32);
    v107 = 0;
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    memset(v113, 0, 27);
    memset(&v113[32], 0, 48);
    memset(v106, 0, 30);
    v105 = 0u;
    v104 = 0u;
    v103 = 0u;
    v102 = 0u;
    v101 = 0u;
    v100 = 0u;
    v99 = 0u;
    v98 = 0u;
    v97 = 0u;
    v115 = 0xBFF0000000000000;
    v114 = 0;
    v30 = *(v29 + 17);
    v31 = *(v29 + 18) - v30;
    v79 = 0xBFF0000000000000;
    if ((v31 >> 4) <= 1)
    {
      v7 = v76;
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }

      v66 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v66, OS_LOG_TYPE_DEBUG, "CLMM,findClosestPointOnRoad,CoordinateCount is <= 1", buf, 2u);
      }

      v67 = sub_19B87DD40();
      if (*(v67 + 160) > 1 || *(v67 + 164) > 1 || *(v67 + 168) > 1 || *(v67 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
        }

        LOWORD(v90) = 0;
        v68 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoAccessCommon::findClosestPointOnRoad(CLDistanceCalc &, const int, const std::vector<Coordinate> &, const Coordinate &, double &, double &) [Coordinate = GEOLocationCoordinate2D]", "CoreLocation: %s\n", v68);
        if (v68 != buf)
        {
          free(v68);
        }
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }

      v69 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v69, OS_LOG_TYPE_DEBUG, "#Warning,CLMMPED,findClosestPointOnRoad returned false", buf, 2u);
      }

      v70 = sub_19B87DD40();
      if (*(v70 + 160) > 1 || *(v70 + 164) > 1 || *(v70 + 168) > 1 || *(v70 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
        }

        LOWORD(v90) = 0;
        v71 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLGeoMapFeatureAccessGeometryPedestrian::roadsWithinDistance(CLMapGeometry::DistanceQueryResultList &, const CLMapCrumb &, double, BOOL) const", "CoreLocation: %s\n", v71);
LABEL_134:
        if (v71 != buf)
        {
          free(v71);
        }
      }

LABEL_136:
      if (SHIBYTE(v102) < 0)
      {
        operator delete(*(&v101 + 1));
      }

      goto LABEL_138;
    }

    v32 = *v30;
    v33 = v30[1];
    *buf = 0uLL;
    v34 = 0.0;
    sub_19BA0BE88((a1 + 56), buf, &buf[8], &v90, v78, v8, 0.0, v32, v33, 0.0);
    v35 = 0;
    v37 = *&buf[8];
    v36 = *buf;
    v38 = ((v31 >> 4) & 0x7FFFFFFF) - 1;
    v39 = -1.0;
    v40 = 0.0;
    while (1)
    {
      v41 = v36;
      v42 = v37;
      v43 = *(v29 + 17) + v35;
      v44 = *(v43 + 16);
      v45 = *(v43 + 24);
      v90 = 0.0;
      v91[0] = 0.0;
      sub_19BA0BE88((a1 + 56), &v90, v91, &v92, v78, v8, 0.0, v44, v45, 0.0);
      v36 = v90;
      v37 = v91[0];
      v46 = (v41 - v90) * (v41 - v90) + (v42 - v91[0]) * (v42 - v91[0]);
      v47 = 0.0 - v41;
      if (v46 >= 0.001)
      {
        v49 = ((0.0 - v42) * (v91[0] - v42) + v47 * (v90 - v41)) / v46;
        if (v49 < 0.0)
        {
          v51 = v47 * v47 + (0.0 - v42) * (0.0 - v42);
          v49 = 0.0;
          goto LABEL_54;
        }

        if (v49 > 1.0)
        {
          v51 = (0.0 - v90) * (0.0 - v90) + (0.0 - v91[0]) * (0.0 - v91[0]);
          v49 = 1.0;
          goto LABEL_54;
        }

        v48 = (0.0 - (v41 + (v90 - v41) * v49)) * (0.0 - (v41 + (v90 - v41) * v49));
        v50 = 0.0 - (v42 + (v91[0] - v42) * v49);
      }

      else
      {
        v48 = v47 * v47;
        v49 = 0.0;
        v50 = 0.0 - v42;
      }

      v51 = v48 + v50 * v50;
LABEL_54:
      v52 = sqrt(v46);
      v53 = sqrt(v51);
      v54 = v39 < 0.0;
      if (v53 < v39)
      {
        v54 = 1;
      }

      v55 = v34 + v52 * v49;
      if (v54)
      {
        v39 = v53;
        v40 = v55;
      }

      v34 = v34 + v52;
      v35 += 16;
      if (!--v38)
      {
        v56 = v40 / v34;
        if (v34 < 0.001)
        {
          v56 = 0.0;
        }

        v79 = *&v56;
        if (sub_19B9DF3F8(a1, v93, &v80, 1, &v79, 1))
        {
          v57 = v39;
          v82 = v57;
          v85 = v103;
          v58 = *&v104;
          v84 = v58;
          v86 = v79;
          v83 = 1;
          sub_19B9117CC();
        }

        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
        }

        v7 = v76;
        v72 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v72, OS_LOG_TYPE_DEBUG, "#Warning,CLMMPED,interpolateOnRoad returned false", buf, 2u);
        }

        v73 = sub_19B87DD40();
        if (*(v73 + 160) > 1 || *(v73 + 164) > 1 || *(v73 + 168) > 1 || *(v73 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
          }

          LOWORD(v90) = 0;
          v71 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLGeoMapFeatureAccessGeometryPedestrian::roadsWithinDistance(CLMapGeometry::DistanceQueryResultList &, const CLMapCrumb &, double, BOOL) const", "CoreLocation: %s\n", v71);
          goto LABEL_134;
        }

        goto LABEL_136;
      }
    }
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
  }

  v17 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
  {
    v18 = *(a1 + 8);
    *buf = 134349056;
    *&buf[4] = v18;
    _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometryPedestrian geometry is not initialized, use initialize() function", buf, 0xCu);
  }

  v19 = sub_19B87DD40();
  if ((*(v19 + 160) & 0x80000000) == 0 || (*(v19 + 164) & 0x80000000) == 0 || (*(v19 + 168) & 0x80000000) == 0 || *(v19 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v20 = *(a1 + 8);
    LODWORD(v93[0]) = 134349056;
    *(v93 + 4) = v20;
    v21 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometryPedestrian::roadsWithinDistance(CLMapGeometry::DistanceQueryResultList &, const CLMapCrumb &, double, BOOL) const", "CoreLocation: %s\n", v21);
    if (v21 != buf)
    {
      free(v21);
    }
  }

  v22 = 0;
LABEL_142:
  v74 = *MEMORY[0x1E69E9840];
  return v22;
}

void sub_19BA34058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a54 < 0)
  {
    operator delete(__p);
  }

  if (a20)
  {
    sub_19B8750F8(a20);
  }

  a33 = &a26;
  sub_19B8F0E84(&a33);
  _Unwind_Resume(a1);
}

uint64_t sub_19BA340C8(uint64_t a1, double a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = a2;
  if (*(a1 + 32))
  {
    if (*(a1 + 2600))
    {
      objc_autoreleasePoolPush();
      v17 = *(a4 + 56);
      v6 = [MEMORY[0x1E695DF70] array];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = sub_19BA34E44;
      v16[3] = &unk_1E753ECA8;
      v16[4] = v6;
      v16[5] = a1;
      v16[6] = v16;
      v19 = 0;
      operator new();
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v12 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_ERROR, "CLMMPED,roadsWithinDistanceLite,fGEOMapFeatureAccess is unexpectedly nil", buf, 2u);
    }

    v13 = sub_19B87DD40();
    if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }

      LOWORD(v21) = 0;
      v11 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureAccessGeometryPedestrian::roadsWithinDistanceLite(std::vector<CLMapRoadPtr> &, const CLMapCrumb &, double, BOOL) const", "CoreLocation: %s\n", v11);
LABEL_24:
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  else
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v7 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 8);
      *buf = 134349056;
      *&buf[4] = v8;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometryPedestrian geometry is not initialized, use initialize() function", buf, 0xCu);
    }

    v9 = sub_19B87DD40();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }

      v10 = *(a1 + 8);
      v21 = 134349056;
      v22 = v10;
      v11 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureAccessGeometryPedestrian::roadsWithinDistanceLite(std::vector<CLMapRoadPtr> &, const CLMapCrumb &, double, BOOL) const", "CoreLocation: %s\n", v11);
      goto LABEL_24;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t sub_19BA34E44(uint64_t result, void *a2)
{
  if (a2)
  {
    if ((v3 = result, v4 = *(result + 40), v5 = [a2 isRoadPedestrianNavigable], v6 = objc_msgSend(a2, "walkableSide"), result = objc_msgSend(a2, "isRail"), (((v6 - 1) > 2) & ~v5) == 0) && !result || *(v4 + 2648) == 1 && (v8 = objc_msgSend(a2, "bikeableSide"), result = objc_msgSend(a2, "isRail"), (result & 1) == 0) && (v8 - 4) >= 0xFFFFFFFD)
    {
      v7 = *(v3 + 32);

      return [v7 addObject:a2];
    }
  }

  return result;
}

uint64_t sub_19BA34F14(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t **a5, int a6, int a7)
{
  v37 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 32) & 1) == 0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v15 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 8);
      *buf = 134349056;
      *&buf[4] = v16;
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometryPedestrian geometry is not initialized, use initialize() function", buf, 0xCu);
    }

    v17 = sub_19B87DD40();
    if ((*(v17 + 160) & 0x80000000) == 0 || (*(v17 + 164) & 0x80000000) == 0 || (*(v17 + 168) & 0x80000000) == 0 || *(v17 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }

      v18 = *(a1 + 8);
      LODWORD(v34) = 134349056;
      *(&v34 + 4) = v18;
      v19 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometryPedestrian::roadsConnected(ConnectedQueryResultList &, const CLMapRoadPtr &, BOOL, double, double, BOOL) const", "CoreLocation: %s\n", v19);
      if (v19 != buf)
      {
        free(v19);
      }
    }

    goto LABEL_16;
  }

  v9 = *a5;
  if (!*a5)
  {
LABEL_16:
    v20 = 0;
    goto LABEL_17;
  }

  if (a6)
  {
    sub_19B9F5AA8(*a5);
    v14 = (1.0 - a2) * *(v9 + 5);
  }

  else
  {
    sub_19B9F5AA8(*a5);
    v14 = *(v9 + 5) * a2;
  }

  if (v14 <= a3)
  {
    v23 = a3 - v14;
    v34 = 0uLL;
    v35 = 0;
    v24 = *a5;
    v25 = a5[1];
    v33[0] = v24;
    v33[1] = v25;
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = sub_19BA35404(a1, v33, a6, &v34, a7, v23);
    if (v25)
    {
      sub_19B8750F8(v25);
    }

    if (v20)
    {
      v26 = v34;
      if (v34 != *(&v34 + 1))
      {
        v27 = *(v34 + 8);
        v28 = **v34;
        if (v27)
        {
          atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
        }

        v29 = *(v26 + 16);
        operator new();
      }
    }

    else
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }

      v30 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v30, OS_LOG_TYPE_DEBUG, "#Warning,CLMMPED, findAllDigitizedRoads returned false", buf, 2u);
      }

      v31 = sub_19B87DD40();
      if (*(v31 + 160) > 1 || *(v31 + 164) > 1 || *(v31 + 168) > 1 || *(v31 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
        }

        v32 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLGeoMapFeatureAccessGeometryPedestrian::roadsConnected(ConnectedQueryResultList &, const CLMapRoadPtr &, BOOL, double, double, BOOL) const", "CoreLocation: %s\n", v32);
        if (v32 != buf)
        {
          free(v32);
        }
      }
    }

    *buf = &v34;
    sub_19BA39F60(buf);
  }

  else
  {
    v20 = 1;
  }

LABEL_17:
  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

void sub_19BA353B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19)
{
  a19 = &a15;
  sub_19BA39F60(&a19);
  _Unwind_Resume(a1);
}

uint64_t sub_19BA35404(uint64_t a1, uint64_t **a2, int a3, uint64_t *a4, int a5, double a6)
{
  v201 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 32) & 1) == 0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v16 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 8);
      *buf = 134349056;
      *&buf[4] = v17;
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometryPedestrian geometry is not initialized, use initialize() function", buf, 0xCu);
    }

    v18 = sub_19B87DD40();
    if ((*(v18 + 160) & 0x80000000) == 0 || (*(v18 + 164) & 0x80000000) == 0 || (*(v18 + 168) & 0x80000000) == 0 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }

      v19 = *(a1 + 8);
      *v172 = 134349056;
      *&v172[4] = v19;
      v20 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureAccessGeometryPedestrian::findAllDigitizedRoads(const CLMapRoadPtr, BOOL, double, std::vector<CLMapRoadWithDirection> &, BOOL) const", "CoreLocation: %s\n", v20);
      if (v20 != buf)
      {
        free(v20);
      }
    }

    goto LABEL_120;
  }

  v7 = a5;
  v11 = *a2;
  if (*(a1 + 33) != 1)
  {
    if (v11)
    {
      *v172 = 0;
      *&v172[8] = 0;
      __asm { FMOV            V0.2D, #-1.0 }

      *&v172[16] = _Q0;
      *v173 = 0;
      *&v173[8] = 0;
      *&v173[16] = 0xBFF0000000000000;
      v183 = 0;
      v184 = 0;
      memset(&v181[32], 0, 32);
      v182 = 0;
      v185 = 0u;
      v186 = 0u;
      v187 = 0u;
      memset(v188, 0, 27);
      memset(&v188[32], 0, 48);
      memset(v181, 0, 30);
      v180 = 0u;
      v179 = 0u;
      v178 = 0u;
      v177 = 0u;
      v176 = 0u;
      v175 = 0u;
      memset(v174, 0, sizeof(v174));
      *&v173[24] = 0u;
      v190 = 0xBFF0000000000000;
      v189 = 0;
      v27 = v11[17];
      v28 = v11[18];
      if (a3)
      {
        if (v28 != v27)
        {
          v29 = *(v28 - 2);
          *&v173[24] = v29;
          v30 = v28 - 1;
LABEL_45:
          v37 = *v30;
          goto LABEL_56;
        }
      }

      else if (v28 != v27)
      {
        v36 = *v27;
        v30 = v27 + 1;
        v29 = v36;
        *&v173[24] = v36;
        goto LABEL_45;
      }

      v29 = 0.0;
      v37 = 0.0;
LABEL_56:
      *&v173[32] = v37;
      v156 = &v156;
      v157 = &v156;
      v158 = 0;
      v153 = *v11;
      v40 = sub_19B8E5F08(a1 + 2616, &v153, 0);
      v41 = v40;
      v152 = a3;
      if (v40)
      {
        v151 = v7;
        v42 = 8;
        if (a3)
        {
          v42 = 32;
        }

        v43 = v40 + v42;
        v44 = *v43;
        if (*v43 != *(v43 + 8))
        {
          v45 = *v44;
          v46 = v44[1];
          if (v46)
          {
            atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v45)
          {
            memset(buf, 0, 20);
            *&buf[20] = 1;
            LODWORD(v193) = 0;
            memset(v194, 0, 24);
            if (v46)
            {
              atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
              v47 = *&buf[8];
              *buf = v45;
              *&buf[8] = v46;
              if (v47)
              {
                sub_19B8750F8(v47);
              }
            }

            else
            {
              *buf = v45;
              *&buf[8] = 0;
            }

            sub_19B9117CC();
          }

          sub_19B916DC0(&v156);
          if (v46)
          {
            sub_19B8750F8(v46);
          }
        }

        v7 = v151;
        if (v158)
        {
          *(v41 + 56) = *(a1 + 8);
          v48 = 1;
          if (!v151)
          {
LABEL_126:
            for (i = v157; i != &v156; i = i[1])
            {
              v68 = i[2];
              if (*v68 != **a2)
              {
                v70 = v68[17];
                v69 = v68[18];
                if (v69 == v70)
                {
                  v72 = 0.0;
                  v71 = 0.0;
                }

                else
                {
                  v72 = *v70;
                  v71 = v70[1];
                }

                if (vabdd_f64(v29, v72) < 0.0000001 && vabdd_f64(v37, v71) < 0.0000001)
                {
                  v73 = i[3];
                  if (v73)
                  {
                    atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
                    atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  *&buf[8] = v73;
                  *buf = v68;
                  buf[16] = 1;
                  sub_19BA370C8(a4, buf);
LABEL_144:
                  if (v73)
                  {
                    sub_19B8750F8(v73);
                    sub_19B8750F8(v73);
                  }

                  continue;
                }

                if (v69 == v70)
                {
                  v75 = 0.0;
                  v74 = 0.0;
                }

                else
                {
                  v75 = *(v69 - 2);
                  v74 = *(v69 - 1);
                }

                if (vabdd_f64(v29, v75) < 0.0000001 && vabdd_f64(v37, v74) < 0.0000001)
                {
                  v73 = i[3];
                  if (v73)
                  {
                    atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
                    atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  *&buf[8] = v73;
                  *buf = v68;
                  buf[16] = 0;
                  sub_19BA370C8(a4, buf);
                  goto LABEL_144;
                }
              }
            }

            if ((v48 & 1) == 0 && a4[1] != *a4)
            {
              v76 = sub_19B8E5F08(a1 + 2616, &v153, 1);
              v77 = v76;
              if (v76)
              {
                sub_19B8E6054(v76, v152 ^ 1);
                *(v77 + 56) = *(a1 + 8);
                v78 = *a4;
                v79 = a4[1];
                if (*a4 != v79)
                {
                  do
                  {
                    v80 = *v78;
                    v81 = *(v78 + 8);
                    *buf = *v78;
                    *&buf[8] = v81;
                    if (v81)
                    {
                      atomic_fetch_add_explicit((v81 + 8), 1uLL, memory_order_relaxed);
                    }

                    buf[16] = *(v78 + 16);
                    if (v80)
                    {
                      if (*v80 == **a2)
                      {
                        v82 = 27;
                      }

                      else
                      {
                        if (v152)
                        {
                          *v77 = 1;
                          v83 = 32;
                        }

                        else
                        {
                          *(v77 + 1) = 1;
                          v83 = 8;
                        }

                        sub_19B8EAB68((v77 + v83), buf);
                        v82 = 0;
                      }
                    }

                    else
                    {
                      sub_19B8E6054(v77, v152 ^ 1);
                      *(v77 + 56) = 0xBFF0000000000000;
                      v82 = 26;
                    }

                    if (*&buf[8])
                    {
                      sub_19B8750F8(*&buf[8]);
                    }

                    if (v82 != 27 && v82)
                    {
                      break;
                    }

                    v78 += 24;
                  }

                  while (v78 != v79);
                }
              }

              else
              {
                v87 = v7;
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
                }

                v88 = off_1EAFE4708;
                if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
                {
                  v89 = *(a1 + 8);
                  *buf = 134217984;
                  *&buf[4] = v89;
                  _os_log_impl(&dword_19B873000, v88, OS_LOG_TYPE_ERROR, "CLMM,%.1lf,Unexpected,RoadConnectionsEntry could not be created", buf, 0xCu);
                }

                v90 = sub_19B87DD40();
                v7 = v87;
                if ((*(v90 + 160) & 0x80000000) == 0 || (*(v90 + 164) & 0x80000000) == 0 || (*(v90 + 168) & 0x80000000) == 0 || *(v90 + 152))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1EAFE46D0 != -1)
                  {
                    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
                  }

                  v91 = *(a1 + 8);
                  LODWORD(v159[0]) = 134217984;
                  *(v159 + 4) = v91;
                  v92 = _os_log_send_and_compose_impl();
                  sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureAccessGeometryPedestrian::findAllDigitizedRoads(const CLMapRoadPtr, BOOL, double, std::vector<CLMapRoadWithDirection> &, BOOL) const", "CoreLocation: %s\n", v92);
                  if (v92 != buf)
                  {
                    free(v92);
                  }

                  v7 = v87;
                }
              }
            }

            if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) == v7)
            {
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
              }

              v93 = off_1EAFE4708;
              if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
              {
                v94 = *(a1 + 8);
                v95 = **a2;
                v96 = (*a2)[17];
                v97 = (*a2)[18];
                if (v97 == v96)
                {
                  v100 = 0;
                  v98 = 0;
                  v99 = 0;
                  v101 = 0;
                }

                else
                {
                  v98 = *v96;
                  v99 = v96[1];
                  v100 = *(v97 - 2);
                  v101 = *(v97 - 1);
                }

                *buf = 134351105;
                *&buf[4] = v94;
                *&buf[12] = 2049;
                *&buf[14] = v95;
                v192 = 2050;
                v193 = v158;
                *v194 = 2053;
                *&v194[2] = v98;
                *&v194[10] = 2053;
                *&v194[12] = v99;
                *&v194[20] = 2053;
                *&v194[22] = v100;
                v195 = 2053;
                v196 = v101;
                v197 = 2053;
                v198 = v29;
                v199 = 2053;
                v200 = v37;
                _os_log_impl(&dword_19B873000, v93, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.2lf,CLGeoMapFeatureAccessGeometryPedestrian,ConnectedRoads found 0 roads, %{private}lld, totalResults,%{public}lu,roadStartLL,%{sensitive}.7lf,%{sensitive}.7lf,roadEndLL,%{sensitive}.7lf,%{sensitive}.7lf,searchCoordinate,%{sensitive}.7lf,%{sensitive}.7lf", buf, 0x5Cu);
              }

              v102 = sub_19B87DD40();
              if (*(v102 + 160) > 1 || *(v102 + 164) > 1 || *(v102 + 168) > 1 || *(v102 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
                }

                v103 = *(a1 + 8);
                v104 = **a2;
                v105 = (*a2)[17];
                v106 = (*a2)[18];
                if (v106 == v105)
                {
                  v109 = 0;
                  v107 = 0;
                  v108 = 0;
                  v110 = 0;
                }

                else
                {
                  v107 = *v105;
                  v108 = v105[1];
                  v109 = *(v106 - 2);
                  v110 = *(v106 - 1);
                }

                LODWORD(v159[0]) = 134351105;
                *(v159 + 4) = v103;
                WORD2(v159[1]) = 2049;
                *(&v159[1] + 6) = v104;
                HIWORD(v159[2]) = 2050;
                v159[3] = v158;
                v160 = 2053;
                v161 = v107;
                v162 = 2053;
                v163 = v108;
                v164 = 2053;
                v165 = v109;
                v166 = 2053;
                v167 = v110;
                v168 = 2053;
                v169 = v29;
                v170 = 2053;
                v171 = v37;
                v111 = _os_log_send_and_compose_impl();
                sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureAccessGeometryPedestrian::findAllDigitizedRoads(const CLMapRoadPtr, BOOL, double, std::vector<CLMapRoadWithDirection> &, BOOL) const", "CoreLocation: %s\n", v111);
                if (v111 != buf)
                {
                  free(v111);
                }
              }
            }

            v59 = 1;
LABEL_283:
            sub_19B916DC0(&v156);
            goto LABEL_284;
          }

LABEL_89:
          v55 = *a2;
          v56 = a2[1];
          if (v56)
          {
            atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
            *&buf[8] = v56;
            atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          else
          {
            *&buf[8] = 0;
          }

          *buf = v55;
          buf[16] = a3 ^ 1;
          sub_19BA370C8(a4, buf);
          if (*&buf[8])
          {
            sub_19B8750F8(*&buf[8]);
          }

          if (v56)
          {
            sub_19B8750F8(v56);
          }

          goto LABEL_126;
        }
      }

      else if (v158)
      {
        v48 = 0;
        if (!v7)
        {
          goto LABEL_126;
        }

        goto LABEL_89;
      }

      memset(v159, 0, 24);
      if (sub_19BA340C8(a1, a6, v159, v172))
      {
        v50 = v159[0];
        v49 = v159[1];
        if (v159[1] != v159[0] || (v51 = fmin(a6 * 4.0, 250.0), v51 <= a6))
        {
LABEL_82:
          if (v50 != v49)
          {
            memset(buf, 0, 20);
            *&buf[20] = 1;
            LODWORD(v193) = 0;
            memset(v194, 0, 24);
            v52 = *v50;
            v53 = v50[1];
            if (v53)
            {
              atomic_fetch_add_explicit((v53 + 8), 1uLL, memory_order_relaxed);
              v54 = *&buf[8];
              *buf = v52;
              *&buf[8] = v53;
              if (v54)
              {
                sub_19B8750F8(v54);
              }
            }

            else
            {
              *buf = *v50;
              *&buf[8] = 0;
            }

            sub_19B9117CC();
          }

          *buf = v159;
          sub_19B8F0E84(buf);
          v48 = 0;
          if (!v7)
          {
            goto LABEL_126;
          }

          goto LABEL_89;
        }

        if (sub_19BA340C8(a1, v51, v159, v172))
        {
          v50 = v159[0];
          v49 = v159[1];
          goto LABEL_82;
        }

        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
        }

        v146 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v146, OS_LOG_TYPE_DEBUG, "#Warning,CLMMPED, roadsWithinDistance returned false, expanded search", buf, 2u);
        }

        v147 = sub_19B87DD40();
        if (*(v147 + 160) > 1 || *(v147 + 164) > 1 || *(v147 + 168) > 1 || *(v147 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
          }

          v148 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureAccessGeometryPedestrian::findAllDigitizedRoads(const CLMapRoadPtr, BOOL, double, std::vector<CLMapRoadWithDirection> &, BOOL) const", "CoreLocation: %s\n", v148);
          if (v148 != buf)
          {
            free(v148);
          }
        }
      }

      *buf = v159;
      sub_19B8F0E84(buf);
      v59 = 0;
      goto LABEL_283;
    }

LABEL_120:
    v59 = 0;
    goto LABEL_284;
  }

  v12 = a2[1];
  v154 = *a2;
  v155 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    if ((*(a1 + 32) & 1) == 0)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }

      v31 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        v32 = *(a1 + 8);
        *buf = 134349056;
        *&buf[4] = v32;
        _os_log_impl(&dword_19B873000, v31, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometryPedestrian geometry is not initialized, use initialize() function", buf, 0xCu);
      }

      v33 = sub_19B87DD40();
      if ((*(v33 + 160) & 0x80000000) != 0 && (*(v33 + 164) & 0x80000000) != 0 && (*(v33 + 168) & 0x80000000) != 0 && !*(v33 + 152))
      {
        goto LABEL_102;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }

      v34 = *(a1 + 8);
      *v172 = 134349056;
      *&v172[4] = v34;
      v35 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureAccessGeometryPedestrian::findAllDigitizedRoadsUsingRoadBuffer(const CLMapRoadPtr, BOOL, double, std::vector<CLMapRoadWithDirection> &, BOOL) const", "CoreLocation: %s\n", v35);
      goto LABEL_100;
    }
  }

  v13 = *(a1 + 16);
  if (!v13)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v38 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v38, OS_LOG_TYPE_ERROR, "CLMMPED,findAllDigitizedRoadsUsingRoadBuffer,fRoadGeometryBuffer is unexpectedly nullptr", buf, 2u);
    }

    v39 = sub_19B87DD40();
    if ((*(v39 + 160) & 0x80000000) != 0 && (*(v39 + 164) & 0x80000000) != 0 && (*(v39 + 168) & 0x80000000) != 0 && !*(v39 + 152))
    {
      goto LABEL_102;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_99;
    }

    goto LABEL_293;
  }

  if (!v11)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v57 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v57, OS_LOG_TYPE_ERROR, "CLMMPED,findAllDigitizedRoadsUsingRoadBuffer,road is unexpectedly nullptr", buf, 2u);
    }

    v58 = sub_19B87DD40();
    if ((*(v58 + 160) & 0x80000000) != 0 && (*(v58 + 164) & 0x80000000) != 0 && (*(v58 + 168) & 0x80000000) != 0 && !*(v58 + 152))
    {
      goto LABEL_102;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_99;
    }

LABEL_293:
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
LABEL_99:
    *v172 = 0;
    v35 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureAccessGeometryPedestrian::findAllDigitizedRoadsUsingRoadBuffer(const CLMapRoadPtr, BOOL, double, std::vector<CLMapRoadWithDirection> &, BOOL) const", "CoreLocation: %s\n", v35);
LABEL_100:
    if (v35 != buf)
    {
      free(v35);
    }

LABEL_102:
    v59 = 0;
    goto LABEL_268;
  }

  v159[0] = v159;
  v159[1] = v159;
  v159[2] = 0;
  v156 = 0;
  v157 = 0;
  v158 = 0;
  if (!a3)
  {
    if ((sub_19B8EB310(v13, &v154, &v156, a5 ^ 1u) & 1) == 0)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }

      v84 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v84, OS_LOG_TYPE_ERROR, "CLMMPED,findAllDigitizedRoadsUsingRoadBuffer,findRoadsConnectedToStartOfThisRoad returned false", buf, 2u);
      }

      v85 = sub_19B87DD40();
      if ((*(v85 + 160) & 0x80000000) != 0 && (*(v85 + 164) & 0x80000000) != 0 && (*(v85 + 168) & 0x80000000) != 0 && !*(v85 + 152))
      {
        goto LABEL_177;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 == -1)
      {
        goto LABEL_175;
      }

      goto LABEL_294;
    }

LABEL_104:
    v61 = v156;
    for (j = v157; v61 != j; v61 += 2)
    {
      v62 = *v61;
      v63 = v61[1];
      if (v63)
      {
        atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v62)
      {
        memset(buf, 0, 20);
        *&buf[20] = 1;
        LODWORD(v193) = 0;
        memset(v194, 0, 24);
        if (v63)
        {
          atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
          v64 = *&buf[8];
          *buf = v62;
          *&buf[8] = v63;
          if (v64)
          {
            sub_19B8750F8(v64);
          }
        }

        else
        {
          *buf = v62;
          *&buf[8] = 0;
        }

        sub_19B9117CC();
      }

      if (v63)
      {
        sub_19B8750F8(v63);
      }
    }

    if (v7)
    {
      v65 = v154;
      v66 = v155;
      if (v155)
      {
        atomic_fetch_add_explicit(&v155->__shared_owners_, 1uLL, memory_order_relaxed);
        *&buf[8] = v66;
        atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        *&buf[8] = 0;
      }

      *buf = v65;
      buf[16] = a3 ^ 1;
      sub_19BA370C8(a4, buf);
      if (*&buf[8])
      {
        sub_19B8750F8(*&buf[8]);
      }

      if (v66)
      {
        sub_19B8750F8(v66);
      }
    }

    v112 = v154[17];
    v113 = v154[18];
    if (a3)
    {
      if (v113 != v112)
      {
        v112 = v113 - 2;
        v114 = v113 - 1;
LABEL_220:
        v115 = v7;
        v116 = *v112;
        v117 = *v114;
        goto LABEL_222;
      }
    }

    else if (v113 != v112)
    {
      v114 = v112 + 1;
      goto LABEL_220;
    }

    v115 = v7;
    v116 = 0.0;
    v117 = 0.0;
LABEL_222:
    v118 = v159[1];
    if (v159[1] == v159)
    {
LABEL_243:
      if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) == v115)
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
        }

        v127 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          v128 = *(a1 + 8);
          v129 = *v154;
          v130 = v154[17];
          v131 = v154[18];
          if (v131 == v130)
          {
            v134 = 0;
            v132 = 0;
            v133 = 0;
            v135 = 0;
          }

          else
          {
            v132 = *v130;
            v133 = v130[1];
            v134 = *(v131 - 2);
            v135 = *(v131 - 1);
          }

          *buf = 134351105;
          *&buf[4] = v128;
          *&buf[12] = 2049;
          *&buf[14] = v129;
          v192 = 2050;
          v193 = v159[2];
          *v194 = 2053;
          *&v194[2] = v132;
          *&v194[10] = 2053;
          *&v194[12] = v133;
          *&v194[20] = 2053;
          *&v194[22] = v134;
          v195 = 2053;
          v196 = v135;
          v197 = 2053;
          v198 = v116;
          v199 = 2053;
          v200 = v117;
          _os_log_impl(&dword_19B873000, v127, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.2lf,CLGeoMapFeatureAccessGeometryPedestrian,ConnectedRoads found 0 roads in buffer, %{private}lld, totalResults,%{public}lu,roadStartLL,%{sensitive}.7lf,%{sensitive}.7lf,roadEndLL,%{sensitive}.7lf,%{sensitive}.7lf,searchCoordinate,%{sensitive}.7lf,%{sensitive}.7lf", buf, 0x5Cu);
        }

        v136 = sub_19B87DD40();
        if (*(v136 + 160) > 1 || *(v136 + 164) > 1 || *(v136 + 168) > 1 || *(v136 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
          }

          v137 = *(a1 + 8);
          v138 = *v154;
          v139 = v154[17];
          v140 = v154[18];
          if (v140 == v139)
          {
            v143 = 0;
            v141 = 0;
            v142 = 0;
            v144 = 0;
          }

          else
          {
            v141 = *v139;
            v142 = v139[1];
            v143 = *(v140 - 2);
            v144 = *(v140 - 1);
          }

          *v172 = 134351105;
          *&v172[4] = v137;
          *&v172[12] = 2049;
          *&v172[14] = v138;
          *&v172[22] = 2050;
          *&v172[24] = v159[2];
          *v173 = 2053;
          *&v173[2] = v141;
          *&v173[10] = 2053;
          *&v173[12] = v142;
          *&v173[20] = 2053;
          *&v173[22] = v143;
          *&v173[30] = 2053;
          *&v173[32] = v144;
          LOWORD(v174[0]) = 2053;
          *(v174 + 2) = v116;
          HIWORD(v174[2]) = 2053;
          *&v174[3] = v117;
          v145 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureAccessGeometryPedestrian::findAllDigitizedRoadsUsingRoadBuffer(const CLMapRoadPtr, BOOL, double, std::vector<CLMapRoadWithDirection> &, BOOL) const", "CoreLocation: %s\n", v145);
          if (v145 != buf)
          {
            free(v145);
          }
        }
      }

      v59 = 1;
      goto LABEL_267;
    }

    while (1)
    {
      v119 = v118[2];
      if (*v119 != *v154)
      {
        v121 = v119[17];
        v120 = v119[18];
        if (v120 == v121)
        {
          v123 = 0.0;
          v122 = 0.0;
        }

        else
        {
          v123 = *v121;
          v122 = v121[1];
        }

        if (vabdd_f64(v116, v123) < 0.0000001 && vabdd_f64(v117, v122) < 0.0000001)
        {
          v124 = v118[3];
          if (v124)
          {
            atomic_fetch_add_explicit(&v124->__shared_owners_, 1uLL, memory_order_relaxed);
            atomic_fetch_add_explicit(&v124->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          *&buf[8] = v124;
          *buf = v119;
          buf[16] = 1;
          sub_19BA370C8(a4, buf);
LABEL_240:
          if (v124)
          {
            sub_19B8750F8(v124);
            sub_19B8750F8(v124);
          }

          goto LABEL_242;
        }

        if (v120 == v121)
        {
          v126 = 0.0;
          v125 = 0.0;
        }

        else
        {
          v126 = *(v120 - 2);
          v125 = *(v120 - 1);
        }

        if (vabdd_f64(v116, v126) < 0.0000001 && vabdd_f64(v117, v125) < 0.0000001)
        {
          v124 = v118[3];
          if (v124)
          {
            atomic_fetch_add_explicit(&v124->__shared_owners_, 1uLL, memory_order_relaxed);
            atomic_fetch_add_explicit(&v124->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          *&buf[8] = v124;
          *buf = v119;
          buf[16] = 0;
          sub_19BA370C8(a4, buf);
          goto LABEL_240;
        }
      }

LABEL_242:
      v118 = v118[1];
      if (v118 == v159)
      {
        goto LABEL_243;
      }
    }
  }

  if (sub_19B8EAC7C(v13, &v154, &v156, a5 ^ 1u))
  {
    goto LABEL_104;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
  }

  v14 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_ERROR, "CLMMPED,findAllDigitizedRoadsUsingRoadBuffer,findRoadsConnectedToEndOfThisRoad returned false", buf, 2u);
  }

  v15 = sub_19B87DD40();
  if ((*(v15 + 160) & 0x80000000) != 0 && (*(v15 + 164) & 0x80000000) != 0 && (*(v15 + 168) & 0x80000000) != 0 && !*(v15 + 152))
  {
    goto LABEL_177;
  }

  bzero(buf, 0x65CuLL);
  if (qword_1EAFE46D0 != -1)
  {
LABEL_294:
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
  }

LABEL_175:
  *v172 = 0;
  v86 = _os_log_send_and_compose_impl();
  sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureAccessGeometryPedestrian::findAllDigitizedRoadsUsingRoadBuffer(const CLMapRoadPtr, BOOL, double, std::vector<CLMapRoadWithDirection> &, BOOL) const", "CoreLocation: %s\n", v86);
  if (v86 != buf)
  {
    free(v86);
  }

LABEL_177:
  v59 = 0;
LABEL_267:
  *buf = &v156;
  sub_19B8F0E84(buf);
  sub_19B916DC0(v159);
LABEL_268:
  if (v155)
  {
    sub_19B8750F8(v155);
  }

LABEL_284:
  v149 = *MEMORY[0x1E69E9840];
  return v59;
}

void sub_19BA36CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  STACK[0x280] = &a23;
  sub_19B8F0E84(&STACK[0x280]);
  sub_19B916DC0(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_19BA36E14(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v1 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v1, OS_LOG_TYPE_ERROR, "CLGeoMapFeatureAccessGeometryPedestrian::roadsAtIntersection - Code not implemented", buf, 2u);
    }

    v2 = sub_19B87DD40();
    if ((*(v2 + 160) & 0x80000000) == 0 || (*(v2 + 164) & 0x80000000) == 0 || (*(v2 + 168) & 0x80000000) == 0 || *(v2 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }

LABEL_21:
      v7 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometryPedestrian::roadsAtIntersection(CLMapCrumb &, CLMapGeometry::IntersectionQueryResultList *, CLMapGeometry::IntersectionQueryResultList *, BOOL, const CLMapRoadPtr &, BOOL, double, double, double &) const", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  else
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v4 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 8);
      *buf = 134349056;
      v12 = v5;
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometryPedestrian geometry is not initialized, use initialize() function", buf, 0xCu);
    }

    v6 = sub_19B87DD40();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }

      v10 = *(a1 + 8);
      goto LABEL_21;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_19BA370C8(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_19B8B8A40();
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

      sub_19B8B8AB0();
    }

    v11 = *(a2 + 8);
    v12 = 24 * v7;
    *v12 = *a2;
    *(v12 + 8) = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    *(24 * v7 + 0x10) = *(a2 + 16);
    v6 = v12 + 24;
    v13 = *a1;
    v14 = a1[1];
    v15 = v12 + *a1 - v14;
    if (*a1 != v14)
    {
      v16 = v12 + *a1 - v14;
      v17 = *a1;
      do
      {
        v18 = v17[1];
        *v16 = *v17;
        *(v16 + 8) = v18;
        if (v18)
        {
          atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
        }

        *(v16 + 16) = *(v17 + 16);
        v17 += 3;
        v16 += 24;
      }

      while (v17 != v14);
      do
      {
        v19 = v13[1];
        if (v19)
        {
          sub_19B8750F8(v19);
        }

        v13 += 3;
      }

      while (v13 != v14);
      v13 = *a1;
    }

    *a1 = v15;
    a1[1] = v6;
    a1[2] = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v5 = *(a2 + 8);
    *v3 = *a2;
    *(v3 + 8) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    *(v3 + 16) = *(a2 + 16);
    v6 = v3 + 24;
  }

  a1[1] = v6;
}

unint64_t sub_19BA37268(uint64_t a1, uint64_t a2, uint64_t **a3, int a4, double a5, double a6)
{
  v80 = *MEMORY[0x1E69E9840];
  v12 = objc_autoreleasePoolPush();
  v13 = *a3;
  if (!*a3)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v23 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_ERROR, "#Warning,CLMMPED,input road is nullptr", buf, 2u);
    }

    v24 = sub_19B87DD40();
    if ((*(v24 + 160) & 0x80000000) != 0 && (*(v24 + 164) & 0x80000000) != 0 && (*(v24 + 168) & 0x80000000) != 0 && !*(v24 + 152))
    {
      goto LABEL_35;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_32;
    }

    goto LABEL_147;
  }

  sub_19B9F5AA8(*a3);
  v14 = *(v13 + 5);
  if (v14 <= 0.0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v25 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v25, OS_LOG_TYPE_ERROR, "#Warning,CLMMPED, road length is 0.0", buf, 2u);
    }

    v26 = sub_19B87DD40();
    if ((*(v26 + 160) & 0x80000000) != 0 && (*(v26 + 164) & 0x80000000) != 0 && (*(v26 + 168) & 0x80000000) != 0 && !*(v26 + 152))
    {
      goto LABEL_35;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_32;
    }

LABEL_147:
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
LABEL_32:
    LOWORD(v76[0]) = 0;
    v22 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureAccessGeometryPedestrian::moveOnRoadInternal(double, double, const CLMapGeometry::RoadInfoList &, CLMapGeometry::DistanceQueryResult &, int) const", "CoreLocation: %s\n", v22);
    goto LABEL_33;
  }

  v15 = *a3;
  if ((((*a3)[18] - (*a3)[17]) >> 4) <= 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v16 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v17 = **a3;
      v18 = (((*a3)[18] - (*a3)[17]) >> 4);
      *buf = 134283777;
      *&buf[4] = v17;
      v78 = 2050;
      v79 = v18;
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_DEBUG, "#Warning,CLMMPED,GEOMapFeatureRoad id,%{private}lld,has less than two coordinate (moveOnRoadInternal),%{public}ld", buf, 0x16u);
    }

    v19 = sub_19B87DD40();
    if (*(v19 + 160) <= 1 && *(v19 + 164) <= 1 && *(v19 + 168) <= 1 && !*(v19 + 152))
    {
      goto LABEL_35;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v20 = **a3;
    v21 = (((*a3)[18] - (*a3)[17]) >> 4);
    LODWORD(v76[0]) = 134283777;
    *(v76 + 4) = v20;
    WORD2(v76[1]) = 2050;
    *(&v76[1] + 6) = v21;
    v22 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureAccessGeometryPedestrian::moveOnRoadInternal(double, double, const CLMapGeometry::RoadInfoList &, CLMapGeometry::DistanceQueryResult &, int) const", "CoreLocation: %s\n", v22);
LABEL_33:
    if (v22 != buf)
    {
      free(v22);
    }

LABEL_35:
    objc_autoreleasePoolPop(v12);
    LOBYTE(v27) = 0;
    goto LABEL_36;
  }

  v30 = fabs(a6);
  v31 = *(a3 + 20);
  v32 = 1.0 - a5;
  context = v12;
  if (v31 == 1)
  {
    if (a6 < 0.0)
    {
      v32 = a5;
    }

    v33 = v32 * v14;
    if (v32 * v14 <= v30)
    {
      v34 = 0;
      if (a6 < 0.0)
      {
        v35 = 0.0;
      }

      else
      {
        v35 = 1.0;
      }

      goto LABEL_53;
    }
  }

  else
  {
    if (a6 >= 0.0)
    {
      v32 = a5;
    }

    v33 = v32 * v14;
    if (v32 * v14 <= v30)
    {
      v34 = 0;
      if (a6 >= 0.0)
      {
        v35 = 0.0;
      }

      else
      {
        v35 = 1.0;
      }

      goto LABEL_53;
    }
  }

  v36 = a6 / v14;
  if (!*(a3 + 20))
  {
    v36 = -v36;
  }

  v35 = v36 + a5;
  v34 = 1;
LABEL_53:
  memset(v76, 0, 24);
  if ((a4 & 0x80000000) == 0 && v33 <= v30)
  {
    v37 = a3[1];
    v75[0] = v15;
    v75[1] = v37;
    if (v37)
    {
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
      LOBYTE(v31) = *(a3 + 20);
    }

    v38 = sub_19BA35404(a1, v75, v31 & 1, v76, 1, 10.0);
    if (v37)
    {
      sub_19B8750F8(v37);
    }

    if ((v38 & 1) == 0)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }

      v39 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v39, OS_LOG_TYPE_DEBUG, "CLMMPED,Warning,moveOnRoad,findAllDigitizedRoads returned false", buf, 2u);
      }

      v40 = sub_19B87DD40();
      if (*(v40 + 160) > 1 || *(v40 + 164) > 1 || *(v40 + 168) > 1 || *(v40 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
        }

        LOWORD(v74) = 0;
        v41 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureAccessGeometryPedestrian::moveOnRoadInternal(double, double, const CLMapGeometry::RoadInfoList &, CLMapGeometry::DistanceQueryResult &, int) const", "CoreLocation: %s\n", v41);
        if (v41 != buf)
        {
          free(v41);
        }
      }
    }
  }

  v42 = a1;
  if (a6 >= 0.0 || (v43 = v76[0], v44 = v76[1], v76[0] == v76[1]))
  {
    LODWORD(v27) = -1;
    if (v34)
    {
LABEL_106:
      v55 = a3[1];
      v72[0] = *a3;
      v72[1] = &v55->__vftable;
      v73 = 0.0;
      if (v55)
      {
        atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      LOBYTE(v27) = sub_19BA37DD8((v42 + 56), v72, &v74, &v73, v35);
      if (v55)
      {
        sub_19B8750F8(v55);
      }

      if (v27)
      {
        *(a3 + 6) = v35;
        *(a3 + 2) = v74;
        v56 = v73;
        *(a3 + 6) = v56;
        if ((*(a3 + 20) & 1) == 0)
        {
          v57 = fmod((v56 + 180.0), 360.0);
          if (v57 < 0.0)
          {
            v57 = v57 + 360.0;
          }

          v58 = v57;
          *(a3 + 6) = v58;
        }
      }

      else
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
        }

        v59 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v59, OS_LOG_TYPE_DEBUG, "#Warning CLMMPED,moveOnRoadInternal,interpolateProjections returned false", buf, 2u);
        }

        v60 = sub_19B87DD40();
        if (*(v60 + 160) > 1 || *(v60 + 164) > 1 || *(v60 + 168) > 1 || *(v60 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
          }

          v61 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureAccessGeometryPedestrian::moveOnRoadInternal(double, double, const CLMapGeometry::RoadInfoList &, CLMapGeometry::DistanceQueryResult &, int) const", "CoreLocation: %s\n", v61);
          if (v61 != buf)
          {
            free(v61);
          }
        }
      }

      v62 = 0;
      goto LABEL_145;
    }
  }

  else
  {
    v45 = 0;
    LODWORD(v27) = -1;
    do
    {
      v47 = *v43;
      v46 = *(v43 + 8);
      if (v46)
      {
        atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v48 = a2;
      while (1)
      {
        v48 = *(v48 + 8);
        if (v48 == a2)
        {
          break;
        }

        if (*(v48 + 16) == *v47 && (*(v48 + 24) & 1) == *(v43 + 16))
        {
          LODWORD(v27) = v45;
          break;
        }
      }

      if (v46)
      {
        sub_19B8750F8(v46);
      }

      if ((v27 & 0x80000000) == 0)
      {
        break;
      }

      ++v45;
      v43 += 24;
    }

    while (v43 != v44);
    if (v34)
    {
      goto LABEL_106;
    }
  }

  v51 = a6 < 0.0 && v27 == -1;
  if (a4 < 0)
  {
    goto LABEL_106;
  }

  v52 = v76[0];
  if (v76[1] == v76[0] || v51)
  {
    goto LABEL_106;
  }

  v53 = -v33;
  if (a6 < 0.0)
  {
    v53 = v33;
  }

  v54 = v53 + a6;
  if ((v27 & 0x80000000) != 0)
  {
    v63 = sub_19B91408C(v42 + 96);
    v52 = v76[0];
    v27 = v63 % (0xAAAAAAAAAAAAAAABLL * ((v76[1] - v76[0]) >> 3));
    goto LABEL_133;
  }

  if (0xAAAAAAAAAAAAAAABLL * ((v76[1] - v76[0]) >> 3) > v27)
  {
    v27 = v27;
LABEL_133:
    v64 = v52 + 24 * v27;
    v65 = *(v64 + 16);
    v67 = *v64;
    v66 = *(v64 + 8);
    if (v66)
    {
      atomic_fetch_add_explicit(v66 + 1, 1uLL, memory_order_relaxed);
    }

    v68 = a3[1];
    *a3 = v67;
    a3[1] = v66;
    if (v68)
    {
      sub_19B8750F8(v68);
      v52 = v76[0];
    }

    LOBYTE(v27) = *(v52 + 24 * v27 + 16);
    *(a3 + 20) = v27;
    if (v65)
    {
      v35 = 0.0;
    }

    else
    {
      v69 = fmod((*(a3 + 6) + 180.0), 360.0);
      if (v69 < 0.0)
      {
        v69 = v69 + 360.0;
      }

      v70 = v69;
      *(a3 + 6) = v70;
      v35 = 1.0;
    }

    if (a6 < 0.0)
    {
      *(a3 + 20) = v27 ^ 1;
    }
  }

  v62 = 1;
  a6 = v54;
LABEL_145:
  *buf = v76;
  sub_19BA39F60(buf);
  objc_autoreleasePoolPop(context);
  if (v62)
  {
    LOBYTE(v27) = sub_19BA37268(v42, a2, a3, (a4 - 1), v35, a6);
  }

LABEL_36:
  v28 = *MEMORY[0x1E69E9840];
  return v27 & 1;
}

void sub_19BA37D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25)
{
  a25 = &a21;
  sub_19BA39F60(&a25);
  _Unwind_Resume(a1);
}

uint64_t sub_19BA37DD8(float64x2_t *a1, void **a2, double *a3, double *a4, double a5)
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
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
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
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    LOWORD(__y[0]) = 0;
    goto LABEL_17;
  }

  v6 = (v5[18] - v5[17]) >> 4;
  if (v6 <= 0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
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
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
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
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
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
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
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
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
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
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
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
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
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
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
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

unint64_t sub_19BA386B0(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v5 = 1050.0;
    if (a4 <= 1050.0)
    {
      v5 = a4;
      if (a4 < -1050.0)
      {
        v5 = -1050.0;
      }
    }

    v6 = *(a2 + 48);
    v7 = *MEMORY[0x1E69E9840];

    return sub_19BA37268(a1, a3, a2, 30, v6, v5);
  }

  else
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v9 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 8);
      *buf = 134349056;
      v16 = v10;
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometryPedestrian geometry is not initialized, use initialize() function", buf, 0xCu);
    }

    v11 = sub_19B87DD40();
    if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }

      v14 = *(a1 + 8);
      v12 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometryPedestrian::moveOnRoad(struct CLMapGeometry::DistanceQueryResult &, double, const CLMapGeometry::RoadInfoList &) const", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    v13 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

uint64_t sub_19BA38900(uint64_t a1, uint64_t **a2, uint64_t *a3, int *a4, double a5, double a6)
{
  *&v72[813] = *MEMORY[0x1E69E9840];
  if ((*(a1 + 32) & 1) == 0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v21 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v22 = *(a1 + 8);
      *buf = 134349056;
      v70 = v22;
      _os_log_impl(&dword_19B873000, v21, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometryPedestrian geometry is not initialized, use initialize() function", buf, 0xCu);
    }

    v23 = sub_19B87DD40();
    if ((*(v23 + 160) & 0x80000000) != 0 && (*(v23 + 164) & 0x80000000) != 0 && (*(v23 + 168) & 0x80000000) != 0 && !*(v23 + 152))
    {
      goto LABEL_46;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v24 = *(a1 + 8);
    *v68 = 134349056;
    *&v68[4] = v24;
    v20 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometryPedestrian::moveOnRouteRoads(double, CLMapGeometry::DistanceQueryResult &, CLMapGeometry::DistanceQueryResultList &, double, int &) const", "CoreLocation: %s\n", v20);
    goto LABEL_44;
  }

  v8 = *a2;
  if (!*a2)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v25 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v25, OS_LOG_TYPE_ERROR, "#Warning,CLMMPED,input road is nullptr", buf, 2u);
    }

    v26 = sub_19B87DD40();
    if ((*(v26 + 160) & 0x80000000) != 0 && (*(v26 + 164) & 0x80000000) != 0 && (*(v26 + 168) & 0x80000000) != 0 && !*(v26 + 152))
    {
      goto LABEL_46;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_43;
    }

    goto LABEL_120;
  }

  sub_19B9F5AA8(*a2);
  v13 = v8[5];
  if (v13 <= 0.0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v27 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v27, OS_LOG_TYPE_ERROR, "#Warning,CLMMPED, road length is 0.0", buf, 2u);
    }

    v28 = sub_19B87DD40();
    if ((*(v28 + 160) & 0x80000000) != 0 && (*(v28 + 164) & 0x80000000) != 0 && (*(v28 + 168) & 0x80000000) != 0 && !*(v28 + 152))
    {
      goto LABEL_46;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_43;
    }

LABEL_120:
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
LABEL_43:
    *v68 = 0;
    v20 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometryPedestrian::moveOnRouteRoads(double, CLMapGeometry::DistanceQueryResult &, CLMapGeometry::DistanceQueryResultList &, double, int &) const", "CoreLocation: %s\n", v20);
    goto LABEL_44;
  }

  if ((((*a2)[18] - (*a2)[17]) >> 4) <= 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v14 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v15 = **a2;
      v16 = (((*a2)[18] - (*a2)[17]) >> 4);
      *buf = 134283777;
      v70 = v15;
      v71 = 2050;
      *v72 = v16;
      _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_DEBUG, "#Warning,CLMMPED,GEOMapFeatureRoad id,%{private}lld,has less than two coordinate (moveOnRoadInternal),%{public}ld", buf, 0x16u);
    }

    v17 = sub_19B87DD40();
    if (*(v17 + 160) <= 1 && *(v17 + 164) <= 1 && *(v17 + 168) <= 1 && !*(v17 + 152))
    {
      goto LABEL_46;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v18 = **a2;
    v19 = (((*a2)[18] - (*a2)[17]) >> 4);
    *v68 = 134283777;
    *&v68[4] = v18;
    *&v68[12] = 2050;
    *&v68[14] = v19;
    v20 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLGeoMapFeatureAccessGeometryPedestrian::moveOnRouteRoads(double, CLMapGeometry::DistanceQueryResult &, CLMapGeometry::DistanceQueryResultList &, double, int &) const", "CoreLocation: %s\n", v20);
LABEL_44:
    if (v20 != buf)
    {
      free(v20);
    }

LABEL_46:
    v29 = 0;
LABEL_47:
    v30 = *MEMORY[0x1E69E9840];
    return v29;
  }

  v32 = 1.0 - a5;
  if (!*(a2 + 20))
  {
    v32 = a5;
  }

  v33 = v13 * v32;
  if (v13 * v32 > fabs(a6))
  {
    v34 = a6 / v13;
    if (!*(a2 + 20))
    {
      v34 = -v34;
    }

    v35 = a2[1];
    v36 = v34 + a5;
    v66[0] = *a2;
    v66[1] = &v35->__vftable;
    v67 = 0.0;
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v29 = sub_19BA37DD8((a1 + 56), v66, v68, &v67, v34 + a5);
    if (v35)
    {
      sub_19B8750F8(v35);
    }

    if (v29)
    {
      *(a2 + 6) = v36;
      *(a2 + 2) = *v68;
      v37 = v67;
      *(a2 + 6) = v37;
      if ((*(a2 + 20) & 1) == 0)
      {
        v38 = fmod((v37 + 180.0), 360.0);
        if (v38 < 0.0)
        {
          v38 = v38 + 360.0;
        }

        v39 = v38;
        *(a2 + 6) = v39;
      }
    }

    else
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }

      v59 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v59, OS_LOG_TYPE_DEBUG, "#Warning CLMMPED,moveOnRouteRoads,interpolateProjections returned false", buf, 2u);
      }

      v60 = sub_19B87DD40();
      if (*(v60 + 160) > 1 || *(v60 + 164) > 1 || *(v60 + 168) > 1 || *(v60 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
        }

        v61 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLGeoMapFeatureAccessGeometryPedestrian::moveOnRouteRoads(double, CLMapGeometry::DistanceQueryResult &, CLMapGeometry::DistanceQueryResultList &, double, int &) const", "CoreLocation: %s\n", v61);
        if (v61 != buf)
        {
          free(v61);
        }
      }
    }

    goto LABEL_47;
  }

  v40 = *a4;
  v41 = v40 + 1;
  *a4 = v40 + 1;
  if (v40 > 9 || a3[2] <= v41)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v51 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v52 = *(a1 + 8);
      v53 = *a4;
      v54 = a3[2];
      *buf = 134218496;
      v70 = v52;
      v71 = 1024;
      *v72 = v53;
      v72[2] = 2048;
      *&v72[3] = v54;
      _os_log_impl(&dword_19B873000, v51, OS_LOG_TYPE_DEBUG, "CLMMPED,%.3lf, no more route roads available to cover the distance travelled,index,%d,size,%lu", buf, 0x1Cu);
    }

    v55 = sub_19B87DD40();
    if (*(v55 + 160) <= 1 && *(v55 + 164) <= 1 && *(v55 + 168) <= 1 && !*(v55 + 152))
    {
      goto LABEL_46;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v56 = *(a1 + 8);
    v57 = *a4;
    v58 = a3[2];
    *v68 = 134218496;
    *&v68[4] = v56;
    *&v68[12] = 1024;
    *&v68[14] = v57;
    *&v68[18] = 2048;
    *&v68[20] = v58;
    v20 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLGeoMapFeatureAccessGeometryPedestrian::moveOnRouteRoads(double, CLMapGeometry::DistanceQueryResult &, CLMapGeometry::DistanceQueryResultList &, double, int &) const", "CoreLocation: %s\n", v20);
    goto LABEL_44;
  }

  v42 = a3[1];
  if (v40 <= -2)
  {
    do
    {
      v42 = *v42;
    }

    while (!__CFADD__(v41++, 1));
  }

  else if (v40 != -1)
  {
    v43 = v40 + 2;
    do
    {
      v42 = v42[1];
      --v43;
    }

    while (v43 > 1);
  }

  if (v42 == a3)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v62 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v63 = *(a1 + 8);
      *buf = 134217984;
      v70 = v63;
      _os_log_impl(&dword_19B873000, v62, OS_LOG_TYPE_ERROR, "CLMMPED,%.3lf, unexpectedly reached to the end of routeRoadList", buf, 0xCu);
    }

    v64 = sub_19B87DD40();
    if ((*(v64 + 160) & 0x80000000) != 0 && (*(v64 + 164) & 0x80000000) != 0 && (*(v64 + 168) & 0x80000000) != 0 && !*(v64 + 152))
    {
      goto LABEL_46;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v65 = *(a1 + 8);
    *v68 = 134217984;
    *&v68[4] = v65;
    v20 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometryPedestrian::moveOnRouteRoads(double, CLMapGeometry::DistanceQueryResult &, CLMapGeometry::DistanceQueryResultList &, double, int &) const", "CoreLocation: %s\n", v20);
    goto LABEL_44;
  }

  v45 = *(v42 + 36);
  sub_19B911784(a2, v42 + 2);
  *(a2 + 20) = *(v42 + 36);
  v47.n128_u64[0] = 0;
  if ((v45 & 1) == 0)
  {
    v47.n128_f64[0] = fmod((*(a2 + 6) + 180.0), 360.0);
    if (v47.n128_f64[0] < 0.0)
    {
      v47.n128_f64[0] = v47.n128_f64[0] + 360.0;
    }

    v48 = v47.n128_f64[0];
    *(a2 + 6) = v48;
    v47.n128_u64[0] = 1.0;
  }

  v49 = *(*a1 + 56);
  v50 = *MEMORY[0x1E69E9840];

  v46.n128_f64[0] = a6 - v33;
  return v49(a1, a2, a3, a4, v47, v46);
}

void sub_19BA39588(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_19B8750F8(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_19BA395A8(uint64_t a1)
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
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
    }

    v6 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 8);
      *buf = 134349056;
      v13 = v7;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometryPedestrian geometry is not initialized, use initialize() function", buf, 0xCu);
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
      }

      v11 = *(a1 + 8);
      v9 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "virtual void CLGeoMapFeatureAccessGeometryPedestrian::clearStoredStaleConnections()", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    v10 = *MEMORY[0x1E69E9840];
  }
}

void sub_19BA397E8(uint64_t a1)
{
  sub_19B9DE4D8(a1);

  JUMPOUT(0x19EAE98C0);
}

uint64_t sub_19BA39820(uint64_t a1)
{
  if (*(a1 + 2648))
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

os_log_t sub_19BA3983C()
{
  result = os_log_create("com.apple.locationd.Position", "MapMatcher");
  off_1EAFE4708 = result;
  return result;
}

void sub_19BA39888(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
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
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
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
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
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
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
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
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
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
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
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
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
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
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EC50);
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

void sub_19BA39F60(void ***a1)
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
        v6 = *(v4 - 2);
        if (v6)
        {
          sub_19B8750F8(v6);
        }

        v4 -= 24;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

__n128 sub_19BA3A064(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F0E6EC80;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_19BA3A0C0(uint64_t a1, uint64_t a2)
{
  if (sub_19B916FBC(a2, &unk_1F0E6ECE0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

std::string *sub_19BA3A10C(std::string *result, uint64_t a2)
{
  if (result->__r_.__value_.__s.__data_[0] != 1)
  {
    return result;
  }

  v3 = result;
  v4 = &result->__r_.__value_.__r.__words[1];
  v5 = result[1].__r_.__value_.__s.__data_[7];
  if (v5 < 0)
  {
    if (result->__r_.__value_.__r.__words[2])
    {
      goto LABEL_4;
    }
  }

  else if (result[1].__r_.__value_.__s.__data_[7])
  {
LABEL_4:
    v6 = *(a2 + 23);
    if (v6 >= 0)
    {
      v7 = *(a2 + 23);
    }

    else
    {
      v7 = *(a2 + 8);
    }

    v8 = result->__r_.__value_.__r.__words[2];
    if (v5 >= 0)
    {
      v8 = result[1].__r_.__value_.__s.__data_[7];
    }

    if (v7 == v8)
    {
      v9 = v6 >= 0 ? a2 : *a2;
      v10 = v5 >= 0 ? v4 : v4->__r_.__value_.__r.__words[0];
      result = memcmp(v9, v10, v7);
      if (!result)
      {
        ++*(v3 + 288);
        return result;
      }
    }

    sub_19BA3A1F8(v3);
    sub_19BA3A418(v3);
    goto LABEL_20;
  }

  ++LODWORD(result[12].__r_.__value_.__l.__data_);
LABEL_20:

  return std::string::operator=(v4, a2);
}

void sub_19BA3A1F8(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*a1 == 1 && *(a1 + 32) >= 1)
  {
    AnalyticsSendEventLazy();
    sub_19BA3A418(a1);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6ED10);
    }

    v2 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEFAULT, "CLTSP,Analytics Submitted", buf, 2u);
    }

    v3 = sub_19B87DD40();
    if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6ED10);
      }

      v4 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentAnalytics::submitStats()", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_19BA3A418(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
  }

  else
  {
    v2 = (a1 + 8);
    *(a1 + 31) = 0;
  }

  *v2 = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 240) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  v3 = 0uLL;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 304) = -1;
  *(a1 + 312) = 0xBFF0000000000000;
  *(a1 + 320) = 0xBFF0000000000000;
  *(a1 + 408) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 416) = 0;
  *(a1 + 488) = 0;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 496) = 0;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0;
  v4 = *(a1 + 544);
  if (v4)
  {

    v3 = 0uLL;
    *(a1 + 544) = 0;
  }

  *(a1 + 552) = 0;
  *(a1 + 584) = 0;
  *(a1 + 568) = v3;
  *(a1 + 592) = 0;
  *(a1 + 600) = v3;
  *(a1 + 664) = 0;
  *(a1 + 648) = v3;
  *(a1 + 672) = 0;
  *(a1 + 688) = 0;
  *(a1 + 680) = 0;
  v5 = *(a1 + 720);
  if (v5)
  {

    *(a1 + 720) = 0;
  }

  *(a1 + 728) = 0;
  *(a1 + 760) = 0;
  v6 = 0uLL;
  *(a1 + 744) = 0u;
  *(a1 + 768) = 0;
  *(a1 + 776) = 0u;
  *(a1 + 840) = 0;
  *(a1 + 824) = 0u;
  *(a1 + 848) = 0;
  *(a1 + 864) = 0;
  *(a1 + 856) = 0;
  v7 = *(a1 + 896);
  if (v7)
  {

    v6 = 0uLL;
    *(a1 + 896) = 0;
  }

  *(a1 + 904) = 0;
  *(a1 + 936) = 0;
  *(a1 + 920) = v6;
  *(a1 + 944) = 0;
  *(a1 + 952) = v6;
  *(a1 + 1016) = 0;
  *(a1 + 1000) = v6;
  *(a1 + 1024) = 0;
  *(a1 + 1040) = 0;
  *(a1 + 1032) = 0;
  v8 = *(a1 + 1072);
  if (v8)
  {

    *(a1 + 1072) = 0;
  }

  *(a1 + 1080) = 0;
  *(a1 + 1112) = 0;
  v9 = 0uLL;
  *(a1 + 1096) = 0u;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 0u;
  *(a1 + 1192) = 0;
  *(a1 + 1176) = 0u;
  *(a1 + 1200) = 0;
  *(a1 + 1216) = 0;
  *(a1 + 1208) = 0;
  v10 = *(a1 + 1248);
  if (v10)
  {

    v9 = 0uLL;
    *(a1 + 1248) = 0;
  }

  *(a1 + 1280) = 0;
  *(a1 + 1264) = v9;
  *(a1 + 1288) = 0;
  *(a1 + 1296) = v9;
}

void sub_19BA3A614(uint64_t a1, void *a2)
{
  v194 = *MEMORY[0x1E69E9840];
  if (a2 && (*a1 & 1) != 0)
  {
    *(a1 + 32) += [objc_msgSend(a2 "tripLocations")];
    if ([objc_msgSend(a2 "tripLocations")])
    {
      v4 = [objc_msgSend(objc_msgSend(a2 "tripLocations")];
      v5 = [objc_msgSend(objc_msgSend(a2 "tripLocations")];
      if (v4)
      {
        if (v5)
        {
          [v5 timeIntervalSinceDate:v4];
          *(a1 + 40) += fabs(v6);
        }
      }
    }

    *(a1 + 48) = [a2 modeOfTransport];
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    obj = [a2 tripLocations];
    v7 = [obj countByEnumeratingWithState:&v85 objects:v193 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v86;
      v83 = 1;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v86 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v85 + 1) + 8 * i);
          if (*(a1 + 1072))
          {
            [*(*(&v85 + 1) + 8 * i) iOSTime];
            v13 = v12;
            [*(a1 + 1072) iOSTime];
            sub_19B9988CC((a1 + 992), vabdd_f64(v13, v14));
            [v11 distanceFromLocation:*(a1 + 1072)];
            sub_19B9988CC((a1 + 912), v15);
          }

          ++*(a1 + 904);
          sub_19BA3ADC8(a1 + 904, v11);
          v16 = a1 + 376;
          if (([v11 isWiFiLocationType] & 1) == 0)
          {
            v16 = a1 + 552;
            if (([v11 isGPSLocationType] & 1) == 0)
            {
              v16 = a1 + 728;
              if (![v11 isLoiLocationType])
              {
                continue;
              }
            }
          }

          v17 = [objc_msgSend(a2 "tripLocations")];
          if (*(v16 + 168))
          {
            v18 = v17;
            [v11 iOSTime];
            v20 = v19;
            [*(v16 + 168) iOSTime];
            v22 = vabdd_f64(v20, v21);
            if (v11 == v18 && v22 <= 0.000001)
            {
              --*(a1 + 32);
              continue;
            }

            v23 = *(v16 + 168);
            ++*v16;
            if (v23)
            {
              sub_19B9988CC((v16 + 88), v22);
              [v11 distanceFromLocation:*(v16 + 168)];
              v25 = v24;
              sub_19B9988CC((v16 + 8), v24);
              if ([v11 isGPSLocationType])
              {
                if (v22 >= 3.0)
                {
                  ++*(a1 + 1080);
                  sub_19B9988CC((a1 + 1088), v25);
                  sub_19B9988CC((a1 + 1168), v22);
                  sub_19B9988CC((a1 + 1256), v83);
                  v26 = 1;
                }

                else
                {
                  v26 = v83 + 1;
                }

                v83 = v26;
              }
            }
          }

          else
          {
            ++*v16;
          }

          sub_19BA3ADC8(v16, v11);
        }

        v8 = [obj countByEnumeratingWithState:&v85 objects:v193 count:16];
      }

      while (v8);
    }

    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6ED10);
    }

    v27 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
    {
      v28 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v28 = *v28;
      }

      v29 = *(a1 + 32);
      v30 = *(a1 + 552);
      v31 = 0.0;
      v32 = 0.0;
      if (v29)
      {
        v32 = v30 / v29 * 100.0;
      }

      v33 = *(a1 + 944);
      v34 = *(a1 + 1024);
      v35 = *(a1 + 920);
      v36 = *(a1 + 1000);
      v37 = *(a1 + 592);
      v38 = *(a1 + 672);
      v39 = *(a1 + 568);
      v40 = *(a1 + 648);
      v41 = *(a1 + 1080);
      v42 = *(a1 + 1264);
      v43 = *(a1 + 1288);
      v44 = *(a1 + 1272);
      v45 = *(a1 + 1120);
      v46 = *(a1 + 1200);
      v47 = *(a1 + 1096);
      v48 = *(a1 + 1176);
      v49 = *(a1 + 376);
      if (v29)
      {
        v31 = v49 / v29 * 100.0;
      }

      v50 = *(a1 + 416);
      v51 = *(a1 + 496);
      v52 = *(a1 + 392);
      v53 = *(a1 + 472);
      *buf = 136452610;
      v142 = v28;
      v143 = 1026;
      v144 = v29;
      v145 = 2050;
      v146 = v33;
      v147 = 2050;
      v148 = v34;
      v149 = 2050;
      v150 = v35;
      v151 = 2050;
      v152 = v36;
      v153 = 1026;
      v154 = v30;
      v155 = 2050;
      v156 = v32;
      v157 = 2050;
      v158 = v37;
      v159 = 2050;
      v160 = v38;
      v161 = 2050;
      v162 = v39;
      v163 = 2050;
      v164 = v40;
      v165 = 1026;
      v166 = v41;
      v167 = 2050;
      v168 = v42;
      v169 = 2050;
      v170 = v43;
      v171 = 2050;
      v172 = v44;
      v173 = 2050;
      v174 = v45;
      v175 = 2050;
      v176 = v46;
      v177 = 2050;
      v178 = v47;
      v179 = 2050;
      v180 = v48;
      v181 = 1026;
      v182 = v49;
      v183 = 2050;
      v184 = v31;
      v185 = 2050;
      v186 = v50;
      v187 = 2050;
      v188 = v51;
      v189 = 2050;
      v190 = v52;
      v191 = 2050;
      v192 = v53;
      _os_log_impl(&dword_19B873000, v27, OS_LOG_TYPE_INFO, "CLTSP,crumbStatistics,tripID,%{public}s,totalCrumbs,%{public}d,avgCrumbDistance,%{public}.2lf,avgCrumbTimeDiff,%{public}.2lf,maxCrumbDistance,%{public}.2lf,maxCrumbTimeDiff,%{public}.2lf,gpsCount,%{public}d,gpsPercentage,%{public}.2lf,avgGPSCrumbDistance,%{public}.2lf,avgGPSCrumbTimeDiff,%{public}.2lf,maxGPSCrumbDistance,%{public}.2lf,maxGPSCrumbTimeDiff,%{public}.2lf,numGPSSessions,%{public}d,maxFixCountInAGPSSession,%{public}.1lf,avgFixCountInAGPSSession,%{public}.1lf,minFixCountInAGPSSession,%{public}.1lf,avgDistanceBetweenGPSSessions,%{public}.2lf,avgTimeDiffBetweenGPSSessions,%{public}.2lf,maxDistanceBetweenGPSSessions,%{public}.2lf,maxTimeDiffBetweenGPSSessions,%{public}.2lf,wifiCount,%{public}d,wifiPercentage,%{public}.2lf,avgWiFiCrumbDistance,%{public}.2lf,avgWiFiCrumbTimeDiff,%{public}.2lf,maxWiFiCrumbDistance,%{public}.2lf,maxWiFiCrumbTimeDiff,%{public}.2lf", buf, 0xF6u);
    }

    v54 = sub_19B87DD40();
    if (*(v54 + 160) > 1 || *(v54 + 164) > 1 || *(v54 + 168) > 1 || *(v54 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6ED10);
      }

      v55 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v55 = *v55;
      }

      v56 = *(a1 + 32);
      v57 = 0.0;
      v58 = 0.0;
      v59 = *(a1 + 552);
      if (v56)
      {
        v58 = v59 / v56 * 100.0;
      }

      v60 = *(a1 + 944);
      v61 = *(a1 + 1024);
      v62 = *(a1 + 920);
      v63 = *(a1 + 1000);
      v64 = *(a1 + 592);
      v65 = *(a1 + 672);
      v66 = *(a1 + 568);
      v67 = *(a1 + 648);
      v68 = *(a1 + 1080);
      v69 = *(a1 + 1264);
      v70 = *(a1 + 1288);
      v71 = *(a1 + 1272);
      v72 = *(a1 + 1120);
      v73 = *(a1 + 1200);
      v74 = *(a1 + 1096);
      v75 = *(a1 + 1176);
      v76 = *(a1 + 376);
      if (v56)
      {
        v57 = v76 / v56 * 100.0;
      }

      v77 = *(a1 + 416);
      v78 = *(a1 + 496);
      v79 = *(a1 + 392);
      v80 = *(a1 + 472);
      v89 = 136452610;
      v90 = v55;
      v91 = 1026;
      v92 = v56;
      v93 = 2050;
      v94 = v60;
      v95 = 2050;
      v96 = v61;
      v97 = 2050;
      v98 = v62;
      v99 = 2050;
      v100 = v63;
      v101 = 1026;
      v102 = v59;
      v103 = 2050;
      v104 = v58;
      v105 = 2050;
      v106 = v64;
      v107 = 2050;
      v108 = v65;
      v109 = 2050;
      v110 = v66;
      v111 = 2050;
      v112 = v67;
      v113 = 1026;
      v114 = v68;
      v115 = 2050;
      v116 = v69;
      v117 = 2050;
      v118 = v70;
      v119 = 2050;
      v120 = v71;
      v121 = 2050;
      v122 = v72;
      v123 = 2050;
      v124 = v73;
      v125 = 2050;
      v126 = v74;
      v127 = 2050;
      v128 = v75;
      v129 = 1026;
      v130 = v76;
      v131 = 2050;
      v132 = v57;
      v133 = 2050;
      v134 = v77;
      v135 = 2050;
      v136 = v78;
      v137 = 2050;
      v138 = v79;
      v139 = 2050;
      v140 = v80;
      v81 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentAnalytics::fillAnalyticsFromTripSegmentInputData(CLTripSegmentInputData * _Nonnull)", "CoreLocation: %s\n", v81);
      if (v81 != buf)
      {
        free(v81);
      }
    }
  }

  v82 = *MEMORY[0x1E69E9840];
}

id sub_19BA3ADC8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 168);
  if (v4)
  {

    *(a1 + 168) = 0;
  }

  result = a2;
  *(a1 + 168) = result;
  return result;
}

void sub_19BA3AE04(uint64_t a1, void *a2)
{
  v68 = *MEMORY[0x1E69E9840];
  if (a2 && (*a1 & 1) != 0)
  {
    *(a1 + 36) += [objc_msgSend(a2 "tripLocations")];
    [a2 distance_m];
    *(a1 + 44) += v4;
    LODWORD(v60) = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0u;
    *__p = 0u;
    v66 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v5 = [a2 tripLocations];
    v6 = [v5 countByEnumeratingWithState:&v56 objects:v67 count:16];
    v54 = a2;
    if (v6)
    {
      v7 = 0;
      v8 = *v57;
      v9 = 0.0;
      v10 = 0.0;
      v55 = 0.0;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          v12 = v7;
          if (*v57 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v7 = *(*(&v56 + 1) + 8 * i);
          [v7 speed];
          if (v13 < 0.0 || ([v7 speedAccuracy], v14 <= 0.0) || (objc_msgSend(v7, "speed"), (v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL) || (objc_msgSend(v7, "speedAccuracy"), (v16 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000))
          {
            ++*(a1 + 112);
          }

          [v7 course];
          if (v17 < 0.0 || ([v7 courseAccuracy], v18 <= 0.0) || (objc_msgSend(v7, "course"), (v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL) || (objc_msgSend(v7, "courseAccuracy"), (v20 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000))
          {
            ++*(a1 + 116);
          }

          if ([v7 isOriginalLocationType])
          {
            ++*(a1 + 56);
          }

          if ([v7 isInertialIntegrated])
          {
            ++*(a1 + 64);
          }

          if ([v7 isLinearInterpolated])
          {
            ++*(a1 + 60);
          }

          if ([v7 isMapMatched])
          {
            ++*(a1 + 68);
          }

          if (v12)
          {
            [objc_msgSend(v7 "timestamp")];
            v22 = v21;
            sub_19B9988CC((a1 + 208), v21);
            if (v22 > 0.0)
            {
              [v7 speed];
              v23 = 0.0;
              if (v24 >= 0.0)
              {
                [v12 speed];
                if (v25 >= 0.0)
                {
                  [v7 speed];
                  v27 = v26;
                  [v12 speed];
                  v23 = v27 - v28;
                }
              }

              [v7 altitude];
              v30 = v29;
              [v12 altitude];
              v32 = v31;
              [v12 speed];
              v34 = v33;
              [v12 speed];
              v36 = v34 * v35;
              if (v23 > 0.0)
              {
                [v7 speed];
                v38 = v37;
                [v7 speed];
                v55 = v55 + -(v36 - v38 * v39) * 0.5;
              }

              if (v30 - v32 > 0.0)
              {
                v10 = v10 + v30 - v32;
              }

              [v12 speed];
              v41 = v40;
              [v12 speed];
              v43 = v42;
              sub_19B9988CC(&v60, v23 / v22);
              v9 = v9 + (v36 * v41 + v36 * 1.5 * v23 + v43 * (v23 * v23) + v23 * (v23 * v23) * 0.25) * v22;
            }
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v56 objects:v67 count:16];
      }

      while (v6);
    }

    else
    {
      v9 = 0.0;
      v10 = 0.0;
      v55 = 0.0;
    }

    v44 = v54;
    [v54 distance_m];
    if (v45 > 0.001)
    {
      [v44 distance_m];
      *(a1 + 328) = v55 / v46;
      v47 = 0.0;
      if (v9 > 0.0)
      {
        [v44 distance_m];
        v47 = sqrt(v9 / v48);
      }

      *(a1 + 352) = v47;
      [objc_msgSend(objc_msgSend(v44 "tripLocations")];
      v50 = v49;
      [objc_msgSend(objc_msgSend(v44 "tripLocations")];
      *(a1 + 336) = v10;
      *(a1 + 344) = v50 - v51;
      v52 = v64;
      *(a1 + 360) = v61;
      *(a1 + 368) = v52;
    }

    if (__p[1])
    {
      *&v66 = __p[1];
      operator delete(__p[1]);
    }
  }

  v53 = *MEMORY[0x1E69E9840];
}

void sub_19BA3B288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19BA3B2C4(uint64_t a1)
{
  v63[55] = *MEMORY[0x1E69E9840];
  v62[0] = @"modeOfTransport";
  v63[0] = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
  v62[1] = @"breadcrumbCount";
  v63[1] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 32)];
  v62[2] = @"avgCrumbDistance";
  v63[2] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 944)];
  v62[3] = @"maxCrumbDistance";
  v63[3] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 920)];
  v62[4] = @"avgCrumbTimeDiff";
  v63[4] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 1024)];
  v62[5] = @"maxCrumbTimeDiff";
  v63[5] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 1000)];
  v62[6] = @"gpsCrumbsCount";
  v63[6] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 552)];
  v62[7] = @"gpsPercentage";
  v2 = *(a1 + 32);
  v3 = 0.0;
  v4 = 0.0;
  if (v2)
  {
    v5 = *(a1 + 552) / v2 * 100.0;
    v6 = v5 > 1.0 || v5 <= 0.0;
    v4 = llround(v5);
    if (!v6)
    {
      v4 = 1.0;
    }
  }

  v63[7] = [MEMORY[0x1E696AD98] numberWithDouble:v4];
  v62[8] = @"avgGPSCrumbDistance";
  v63[8] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 592)];
  v62[9] = @"maxGPSCrumbDistance";
  v63[9] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 568)];
  v62[10] = @"avgGPSCrumbTimeDiff";
  v63[10] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 672)];
  v62[11] = @"maxGPSCrumbTimeDiff";
  v63[11] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 648)];
  v62[12] = @"numGPSSessions";
  v63[12] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 1080)];
  v62[13] = @"maxFixCountInAGPSSession";
  v63[13] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 1264)];
  v62[14] = @"avgFixCountInAGPSSession";
  v63[14] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 1288)];
  v62[15] = @"minFixCountInAGPSSession";
  v63[15] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 1272)];
  v62[16] = @"avgDistanceBetweenGPSSessions";
  v63[16] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 1120)];
  v62[17] = @"maxDistanceBetweenGPSSessions";
  v63[17] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 1096)];
  v62[18] = @"avgTimeDiffBetweenGPSSessions";
  v63[18] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 1200)];
  v62[19] = @"maxTimeDiffBetweenGPSSessions";
  v63[19] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 1176)];
  v62[20] = @"wiFiCrumbsCount";
  v63[20] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 376)];
  v62[21] = @"wiFiPercentage";
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = *(a1 + 376) / v7 * 100.0;
    v9 = v8 > 1.0 || v8 <= 0.0;
    v10 = llround(v8);
    if (v9)
    {
      v3 = v10;
    }

    else
    {
      v3 = 1.0;
    }
  }

  v63[21] = [MEMORY[0x1E696AD98] numberWithDouble:v3];
  v62[22] = @"avgWiFiCrumbDistance";
  v63[22] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 416)];
  v62[23] = @"maxWiFiCrumbDistance";
  v63[23] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 392)];
  v62[24] = @"avgWiFiCrumbTimeDiff";
  v63[24] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 496)];
  v62[25] = @"maxWiFiCrumbTimeDiff";
  v63[25] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 472)];
  v62[26] = @"tripSegmentDuration";
  v63[26] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 40)];
  v62[27] = @"tripSegmentDistance";
  v63[27] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 44)];
  v62[28] = @"tripSegmentReconstructedLocCount";
  v63[28] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 36)];
  v62[29] = @"originalLocationPercentage";
  v11 = *(a1 + 36);
  v12 = 0.0;
  v13 = 0.0;
  if (v11)
  {
    v14 = *(a1 + 56) / v11 * 100.0;
    v15 = v14 > 1.0 || v14 <= 0.0;
    v13 = llround(v14);
    if (!v15)
    {
      v13 = 1.0;
    }
  }

  v63[29] = [MEMORY[0x1E696AD98] numberWithDouble:v13];
  v62[30] = @"linearInterpolationPercentage";
  v16 = *(a1 + 36);
  if (v16)
  {
    v17 = *(a1 + 60) / v16 * 100.0;
    v18 = v17 > 1.0 || v17 <= 0.0;
    v19 = llround(v17);
    if (v18)
    {
      v12 = v19;
    }

    else
    {
      v12 = 1.0;
    }
  }

  v63[30] = [MEMORY[0x1E696AD98] numberWithDouble:v12];
  v62[31] = @"inertialIntegrationPercentgae";
  v20 = *(a1 + 36);
  v21 = 0.0;
  v22 = 0.0;
  if (v20)
  {
    v23 = *(a1 + 64) / v20 * 100.0;
    v24 = v23 > 1.0 || v23 <= 0.0;
    v22 = llround(v23);
    if (!v24)
    {
      v22 = 1.0;
    }
  }

  v63[31] = [MEMORY[0x1E696AD98] numberWithDouble:v22];
  v62[32] = @"mapmatchedPercentage";
  v25 = *(a1 + 36);
  if (v25)
  {
    v26 = *(a1 + 68) / v25 * 100.0;
    v27 = v26 > 1.0 || v26 <= 0.0;
    v28 = llround(v26);
    if (v27)
    {
      v21 = v28;
    }

    else
    {
      v21 = 1.0;
    }
  }

  v63[32] = [MEMORY[0x1E696AD98] numberWithDouble:v21];
  v62[33] = @"mapmatcherSegmentCount";
  v63[33] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 72)];
  v62[34] = @"aStarAttemptCount";
  v63[34] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 76)];
  v62[35] = @"aStarRejectedPercentage";
  v29 = *(a1 + 76);
  v30 = 0.0;
  v31 = 0.0;
  if (v29)
  {
    v32 = *(a1 + 92) / v29 * 100.0;
    v33 = v32 > 1.0 || v32 <= 0.0;
    v31 = llround(v32);
    if (!v33)
    {
      v31 = 1.0;
    }
  }

  v63[35] = [MEMORY[0x1E696AD98] numberWithDouble:v31];
  v62[36] = @"aStarFailurePercentage";
  v34 = *(a1 + 76);
  if (v34)
  {
    v35 = *(a1 + 80) / v34 * 100.0;
    v36 = v35 > 1.0 || v35 <= 0.0;
    v37 = llround(v35);
    if (v36)
    {
      v30 = v37;
    }

    else
    {
      v30 = 1.0;
    }
  }

  v63[36] = [MEMORY[0x1E696AD98] numberWithDouble:v30];
  v62[37] = @"astarRoadCountExceededMaxPercentage";
  v38 = *(a1 + 76);
  v39 = 0.0;
  v40 = 0.0;
  if (v38)
  {
    v41 = *(a1 + 84) / v38 * 100.0;
    v42 = v41 > 1.0 || v41 <= 0.0;
    v40 = llround(v41);
    if (!v42)
    {
      v40 = 1.0;
    }
  }

  v63[37] = [MEMORY[0x1E696AD98] numberWithDouble:v40];
  v62[38] = @"astarIterationExceededMaxPercentage";
  v43 = *(a1 + 76);
  if (v43)
  {
    v44 = *(a1 + 88) / v43 * 100.0;
    v45 = v44 > 1.0 || v44 <= 0.0;
    v46 = llround(v44);
    if (v45)
    {
      v39 = v46;
    }

    else
    {
      v39 = 1.0;
    }
  }

  v63[38] = [MEMORY[0x1E696AD98] numberWithDouble:v39];
  v62[39] = @"astarMaxIterations";
  v63[39] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 136)];
  v62[40] = @"astarAvgIterations";
  v63[40] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 160)];
  v62[41] = @"aStarProcessingTime";
  v63[41] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 96)];
  v62[42] = @"mapDataQueryCount";
  v63[42] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 104)];
  v62[43] = @"mapDataUnavailablePercentage";
  v47 = *(a1 + 104);
  v48 = 0.0;
  v49 = 0.0;
  if (v47)
  {
    v50 = *(a1 + 108) / v47 * 100.0;
    v51 = v50 > 1.0 || v50 <= 0.0;
    v49 = llround(v50);
    if (!v51)
    {
      v49 = 1.0;
    }
  }

  v63[43] = [MEMORY[0x1E696AD98] numberWithDouble:v49];
  v62[44] = @"maxTimeBetweenEpochs";
  v63[44] = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 216)];
  v62[45] = @"avgTimeBetweenEpochs";
  v63[45] = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 240)];
  v62[46] = @"invalidSpeedPercentage";
  v52 = *(a1 + 36);
  if (v52)
  {
    v53 = *(a1 + 112) / v52 * 100.0;
    v54 = v53 > 1.0 || v53 <= 0.0;
    v55 = llround(v53);
    if (v54)
    {
      v48 = v55;
    }

    else
    {
      v48 = 1.0;
    }
  }

  v63[46] = [MEMORY[0x1E696AD98] numberWithDouble:v48];
  v62[47] = @"invalidCoursePercentage";
  v56 = *(a1 + 36);
  if (v56)
  {
    v57 = *(a1 + 112) / v56 * 100.0;
    v58 = v57 > 1.0 || v57 <= 0.0;
    v59 = llround(v57);
    if (!v58)
    {
      v59 = 1.0;
    }
  }

  else
  {
    v59 = 0.0;
  }

  v63[47] = [MEMORY[0x1E696AD98] numberWithDouble:v59];
  v62[48] = @"tripChunksCount";
  v63[48] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 288)];
  v62[49] = @"processingTime";
  v63[49] = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 120)];
  v62[50] = @"percentageOfRailwaySnap";
  v63[50] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 296)];
  v62[51] = @"routeLengthMatchPercentageComparedTo1HzGPS";
  v63[51] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 304)];
  v62[52] = @"routeDeviationComparedTo1HzGPS";
  v63[52] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 308)];
  v62[53] = @"routeDeviationPerKmComparedTo1HzGPS";
  v63[53] = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 312)];
  v62[54] = @"routeDeviationPerHrComparedTo1HzGPS";
  v63[54] = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 320)];
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:55];
  v61 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19BA3BD08(uint64_t a1)
{
  v124 = *MEMORY[0x1E69E9840];
  if (*a1 == 1)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6ED10);
    }

    v2 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      v3 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v3 = *v3;
      }

      v4 = *(a1 + 36);
      v5 = 0uLL;
      if (v4)
      {
        v6 = *(a1 + 56);
        v7.i64[0] = SDWORD2(v6);
        v7.i64[1] = SHIDWORD(v6);
        v8 = vcvtq_f64_s64(v7);
        v7.i64[0] = v6;
        v7.i64[1] = SDWORD1(v6);
        v9 = vdupq_lane_s64(COERCE__INT64(v4), 0);
        v10 = vdivq_f64(vcvtq_f64_s64(v7), v9);
        v11 = vdivq_f64(v8, v9);
        v12 = vdupq_n_s64(0x4059000000000000uLL);
        v13 = vmulq_f64(v11, v12);
        v14 = vmulq_f64(v10, v12);
      }

      else
      {
        v14 = 0uLL;
        v13 = 0uLL;
      }

      v15 = *(a1 + 76);
      if (v15)
      {
        v16 = *(a1 + 80);
        v17.i64[0] = SDWORD2(v16);
        v17.i64[1] = SHIDWORD(v16);
        v18 = vcvtq_f64_s64(v17);
        v17.i64[0] = v16;
        v17.i64[1] = SDWORD1(v16);
        v19 = vdupq_lane_s64(COERCE__INT64(v15), 0);
        v20 = vdivq_f64(vcvtq_f64_s64(v17), v19);
        v21 = vdivq_f64(v18, v19);
        v22 = vdupq_n_s64(0x4059000000000000uLL);
        v23 = vmulq_f64(v21, v22);
        v5 = vmulq_f64(v20, v22);
      }

      else
      {
        v23 = 0uLL;
      }

      v24 = *(a1 + 104);
      if (v24)
      {
        v25 = *(a1 + 108) / v24 * 100.0;
      }

      else
      {
        v25 = 0.0;
      }

      v26 = *(a1 + 44);
      v27 = *(a1 + 48);
      v28 = *(a1 + 32);
      v29 = *(a1 + 40);
      v30 = *(a1 + 72);
      v31 = *(a1 + 136);
      v32 = *(a1 + 160);
      v33 = *(a1 + 96);
      v34 = *(a1 + 216);
      v35 = *(a1 + 240);
      if (v4)
      {
        v36 = *(a1 + 112);
        v37.i64[0] = v36;
        v37.i64[1] = SHIDWORD(v36);
        v38 = vmulq_f64(vdivq_f64(vcvtq_f64_s64(v37), vdupq_lane_s64(COERCE__INT64(v4), 0)), vdupq_n_s64(0x4059000000000000uLL));
      }

      else
      {
        v38 = 0uLL;
      }

      v39 = *(a1 + 288);
      v40 = *(a1 + 296);
      v41 = *(a1 + 120);
      *buf = 136453122;
      v69 = v3;
      v70 = 1026;
      v71 = v27;
      v72 = 1026;
      v73 = v28;
      v74 = 1026;
      v75 = v29;
      v76 = 1026;
      v77 = v26;
      v78 = 1026;
      v79 = v4;
      v80 = 2050;
      v81 = v14.f64[0];
      v82 = 2050;
      v83 = v14.f64[1];
      v84 = 2050;
      v85 = v13.f64[0];
      v86 = 2050;
      v87 = v13.f64[1];
      v88 = 1026;
      v89 = v30;
      v90 = 1026;
      v91 = v15;
      v92 = 2050;
      v93 = v23.f64[1];
      v94 = 2050;
      v95 = v5.f64[0];
      v96 = 2050;
      v97 = v5.f64[1];
      v98 = 2050;
      v99 = v23.f64[0];
      v100 = 2050;
      v101 = v31;
      v102 = 2050;
      v103 = v32;
      v104 = 2050;
      v105 = v33;
      v106 = 1026;
      v107 = v24;
      v108 = 2050;
      v109 = v25;
      v110 = 2050;
      v111 = v34;
      v112 = 2050;
      v113 = v35;
      v114 = 2050;
      v115 = v38.f64[0];
      v116 = 2050;
      v117 = v38.f64[1];
      v118 = 1026;
      v119 = v39;
      v120 = 2050;
      v121 = v40;
      v122 = 2050;
      v123 = v41;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEFAULT, "CLTSP,Analytics,tripID,%{public}s,modeOfTransport,%{public}d,bcCount,%{public}d,tripDuration,%{public}d,tripDistance,%{public}d,reconstructedCount,%{public}d,origPct,%{public}.2lf,liPct,%{public}.2lf,iiPct,%{public}.2lf,miPct,%{public}.2lf,miSegments,%{public}d,astarAttemptCount,%{public}d,miRouteRejectedPct,%{public}.2lf,astarFailPct,%{public}.2lf,astarIterationExceededMaxPct,%{public}.2lf,astarRoadCountExceededMaxPct,%{public}.2lf,astarMaxIterations,%{public}.2lf,astarAvgIterations,%{public}.2lf,astarProcessingTime,%{public}.2lf,mapQueryCount,%{public}d,mapFailPct,%{public}.2lf,maxTimeBetweenEpochs,%{public}.2lf,avgTimeBetweenEpochs,%{public}.2lf,invalidSpeedPct,%{public}.2lf,invalidCoursePct,%{public}.2lf,tripChunksCount,%{public}d,percentageOfRailwaySnap,%{public}.2lf,processingTime,%{public}.2lf", buf, 0xF6u);
    }

    v42 = sub_19B87DD40();
    if (*(v42 + 160) > 1 || *(v42 + 164) > 1 || *(v42 + 168) > 1 || *(v42 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6ED10);
      }

      if (*(a1 + 31) < 0)
      {
        v43 = *(a1 + 8);
      }

      v44 = *(a1 + 36);
      if (v44)
      {
        v45 = *(a1 + 56);
      }

      if (*(a1 + 76))
      {
        v46 = *(a1 + 80);
      }

      v47 = *(a1 + 104);
      if (v47)
      {
        v48 = *(a1 + 108) / v47 * 100.0;
      }

      if (v44)
      {
        v49 = *(a1 + 112);
      }

      v52 = *(a1 + 48);
      v53 = *(a1 + 32);
      v54 = *(a1 + 40);
      v55 = *(a1 + 44);
      v56 = *(a1 + 36);
      v57 = *(a1 + 72);
      v58 = *(a1 + 76);
      v59 = *(a1 + 136);
      v60 = *(a1 + 160);
      v61 = *(a1 + 96);
      v62 = *(a1 + 104);
      v63 = *(a1 + 216);
      v64 = *(a1 + 240);
      v65 = *(a1 + 288);
      v66 = *(a1 + 296);
      v67 = *(a1 + 120);
      v50 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentAnalytics::debugLog()", "CoreLocation: %s\n", v50);
      if (v50 != buf)
      {
        free(v50);
      }
    }
  }

  v51 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19BA3C324()
{
  if (qword_1ED519D80 != -1)
  {
    dispatch_once(&qword_1ED519D80, &unk_1F0E6ECF0);
  }

  return qword_1ED519D78;
}

void sub_19BA3C480(uint64_t a1, void *a2, void *a3, int a4, void *a5, void *a6, double a7)
{
  v302 = *MEMORY[0x1E69E9840];
  if (*a1 == 1)
  {
    v13 = [objc_msgSend(a2 "UUIDString")];
    v14 = strlen(v13);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_19B890AD4();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v14;
    if (v14)
    {
      memmove(&__dst, v13, v14);
    }

    __dst.__r_.__value_.__s.__data_[v15] = 0;
    v160 = (a1 + 16);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    v17 = *(a1 + 39);
    v18 = v17;
    if ((v17 & 0x80u) != 0)
    {
      v17 = *(a1 + 24);
    }

    if (size != v17 || ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (p_dst = &__dst) : (p_dst = __dst.__r_.__value_.__r.__words[0]), (v20 = v160->__r_.__value_.__r.__words[0], v18 >= 0) ? (v21 = (a1 + 16)) : (v21 = v160->__r_.__value_.__r.__words[0]), memcmp(p_dst, v21, size)))
    {
      if (*(a1 + 608) >= 1)
      {
        sub_19BA3D1E8(a1);
      }
    }

    ++*(a1 + 608);
    std::string::operator=(v160, &__dst);
    v159 = (a1 + 40);
    sub_19B8D7878((a1 + 40), [objc_msgSend(a3 "UUIDString")]);
    *(a1 + 616) = *(a1 + 616) + a7;
    [a6 distance_m];
    *(a1 + 632) = v22 + *(a1 + 632);
    *(a1 + 640) += [objc_msgSend(a6 "tripLocations")];
    *(a1 + 624) += a4;
    *(a1 + 8) = [a6 modeOfTransport];
    v169 = 0u;
    v170 = 0u;
    v171 = 0u;
    v172 = 0u;
    v23 = [a6 tripLocations];
    v24 = [v23 countByEnumeratingWithState:&v169 objects:v301 count:16];
    if (v24)
    {
      v25 = *v170;
      obj = v23;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v170 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v169 + 1) + 8 * i);
          if ([v27 isMapMatched])
          {
            ++*(a1 + 584);
          }

          if ([v27 isInertialIntegrated])
          {
            ++*(a1 + 588);
          }

          if ([v27 isLinearInterpolated])
          {
            ++*(a1 + 592);
          }

          [v27 speed];
          if (v28 < 0.0)
          {
            ++*(a1 + 596);
          }

          if (*(a1 + 600) < 0.0 || ([v27 speed], v29 > *(a1 + 600)))
          {
            [v27 speed];
            *(a1 + 600) = v30;
          }

          if ([v27 isGPSLocationType])
          {
            if (([v27 isOriginalLocationType] & 1) == 0)
            {
              [objc_msgSend(v27 "timestamp")];
              v32 = v31;
              v167 = 0u;
              v168 = 0u;
              v165 = 0u;
              v166 = 0u;
              v33 = [a5 countByEnumeratingWithState:&v165 objects:v300 count:16];
              if (v33)
              {
                v34 = *v166;
                while (2)
                {
                  for (j = 0; j != v33; ++j)
                  {
                    if (*v166 != v34)
                    {
                      objc_enumerationMutation(a5);
                    }

                    v36 = *(*(&v165 + 1) + 8 * j);
                    if ([v36 isGPSLocationType])
                    {
                      if ([v36 isOriginalLocationType])
                      {
                        [objc_msgSend(v36 "timestamp")];
                        if (vabdd_f64(v37, v32) < 0.5)
                        {
                          if (v36)
                          {
                            *buf = 0;
                            *v174 = 0;
                            v162 = 0.0;
                            v163 = 0.0;
                            [v27 latitude];
                            v39 = v38;
                            [v27 longitude];
                            v41 = v40;
                            [v27 altitude];
                            v43 = v42;
                            [v36 latitude];
                            v45 = v44;
                            [v36 longitude];
                            v47 = v46;
                            [v36 altitude];
                            sub_19BA0BE88((a1 + 64), buf, v174, &v164, v39, v41, v43, v45, v47, v48);
                            [v36 latitude];
                            v50 = v49;
                            [v36 longitude];
                            v52 = v51;
                            [v36 altitude];
                            v54 = v53;
                            [v36 course];
                            v56 = v55;
                            [v27 latitude];
                            v58 = v57;
                            [v27 longitude];
                            sub_19BA0C3BC((a1 + 64), &v162, &v163, v50, v52, v54, v56, v58, v59);
                            sub_19B9988CC((a1 + 104), v162);
                            sub_19B9988CC((a1 + 184), v163);
                            sub_19B9988CC((a1 + 264), sqrt(*v174 * *v174 + *buf * *buf));
                            [v27 altitude];
                            v61 = v60;
                            [v36 altitude];
                            sub_19B9988CC((a1 + 424), vabdd_f64(v61, v62));
                            [v27 speed];
                            if (v63 >= 0.0)
                            {
                              [v36 speed];
                              if (v64 >= 0.0)
                              {
                                [v27 speed];
                                v66 = v65;
                                [v36 speed];
                                sub_19B9988CC((a1 + 344), vabdd_f64(v66, v67));
                              }
                            }

                            [v27 course];
                            if (v68 >= 0.0)
                            {
                              [v36 course];
                              if (v69 >= 0.0)
                              {
                                [v27 course];
                                v71 = v70;
                                [v36 course];
                                v73 = fmod(v71 - v72, 360.0);
                                if (v73 < 0.0)
                                {
                                  v73 = v73 + 360.0;
                                }

                                if (v73 > 180.0)
                                {
                                  v73 = v73 + -360.0;
                                }

                                sub_19B9988CC((a1 + 504), fabs(v73));
                              }
                            }
                          }

                          goto LABEL_63;
                        }
                      }
                    }
                  }

                  v33 = [a5 countByEnumeratingWithState:&v165 objects:v300 count:16];
                  if (v33)
                  {
                    continue;
                  }

                  break;
                }
              }
            }
          }

LABEL_63:
          ;
        }

        v24 = [obj countByEnumeratingWithState:&v169 objects:v301 count:16];
      }

      while (v24);
    }

    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6ED10);
    }

    v74 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      v75 = a1 + 16;
      if (*(a1 + 39) < 0)
      {
        v75 = v160->__r_.__value_.__r.__words[0];
      }

      v76 = a1 + 40;
      if (*(a1 + 63) < 0)
      {
        v76 = *v159;
      }

      v77 = 0.0;
      v78 = 0.0;
      if (*(a1 + 128))
      {
        v78 = sqrt(*(a1 + 152));
      }

      if (*(a1 + 208))
      {
        v77 = sqrt(*(a1 + 232));
      }

      v79 = *(a1 + 288);
      v80 = 0.0;
      v81 = 0.0;
      if (v79)
      {
        v81 = sqrt(*(a1 + 312));
      }

      if (*(a1 + 368))
      {
        v80 = sqrt(*(a1 + 392));
      }

      v82 = 0.0;
      v83 = 0.0;
      if (*(a1 + 448))
      {
        v83 = sqrt(*(a1 + 472));
      }

      if (*(a1 + 528))
      {
        v82 = sqrt(*(a1 + 552));
      }

      v84 = *(a1 + 8);
      v85 = *(a1 + 632);
      v86 = fabs(*(a1 + 112));
      v87 = fabs(*(a1 + 136));
      v88 = fabs(*(a1 + 192));
      v89 = fabs(*(a1 + 216));
      v90 = *(a1 + 272);
      v91 = *(a1 + 296);
      v92 = fabs(*(a1 + 352));
      v93 = fabs(*(a1 + 376));
      v94 = fabs(*(a1 + 432));
      v95 = fabs(*(a1 + 456));
      v96 = fabs(*(a1 + 512));
      v97 = fabs(*(a1 + 536));
      v98 = *(a1 + 600);
      v99 = *(a1 + 596);
      v100 = *(a1 + 640);
      if (v100)
      {
        v101 = *(a1 + 584);
        v102.i64[0] = v101;
        v102.i64[1] = SHIDWORD(v101);
        v103 = vmulq_f64(vdivq_f64(vcvtq_f64_s64(v102), vdupq_lane_s64(COERCE__INT64(v100), 0)), vdupq_n_s64(0x4059000000000000uLL));
        __asm { FMOV            V27.2D, #1.0 }

        v109 = vandq_s8(vcgtzq_f64(v103), vcgeq_f64(_Q27, v103));
        *&v103.f64[0] = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(v103)));
        v102.i64[0] = SLODWORD(v103.f64[0]);
        v102.i64[1] = SHIDWORD(v103.f64[0]);
        v110 = vbslq_s8(v109, _Q27, vcvtq_f64_s64(v102));
        v111 = *(a1 + 592) / v100 * 100.0;
        v112 = llround(v111);
        v113 = v111 > 1.0 || v111 <= 0.0;
        v114 = v112;
        if (!v113)
        {
          v114 = 1.0;
        }
      }

      else
      {
        v114 = 0.0;
        v110 = 0uLL;
      }

      v115 = *(a1 + 624);
      v116 = *(a1 + 608);
      v117 = *(a1 + 616);
      *buf = 136454146;
      *&buf[4] = v75;
      v238 = 2082;
      v239 = v76;
      v240 = 1026;
      v241 = v84;
      v242 = 2050;
      v243 = v85;
      v244 = 2050;
      v245 = v86;
      v246 = 2050;
      v247 = v78;
      v248 = 2050;
      v249 = v87;
      v250 = 2050;
      v251 = v88;
      v252 = 2050;
      v253 = v77;
      v254 = 2050;
      v255 = v89;
      v256 = 2050;
      v257 = v90;
      v258 = 2050;
      v259 = v81;
      v260 = 2050;
      v261 = v91;
      v262 = 2050;
      v263 = v92;
      v264 = 2050;
      v265 = v80;
      v266 = 2050;
      v267 = v93;
      v268 = 2050;
      v269 = v94;
      v270 = 2050;
      v271 = v83;
      v272 = 2050;
      v273 = v95;
      v274 = 2050;
      v275 = v96;
      v276 = 2050;
      v277 = v82;
      v278 = 2050;
      v279 = v97;
      v280 = 1026;
      v281 = v79;
      v282 = 2050;
      v283 = v98;
      v284 = 1026;
      v285 = v99;
      v286 = 2050;
      v287 = v110.i64[0];
      v288 = 2050;
      v289 = v110.i64[1];
      v290 = 2050;
      v291 = v114;
      v292 = 1026;
      v293 = v115;
      v294 = 1026;
      v295 = v100;
      v296 = 1026;
      v297 = v116;
      v298 = 2050;
      v299 = v117;
      _os_log_impl(&dword_19B873000, v74, OS_LOG_TYPE_DEFAULT, "CLTSP,AnalyticsSimulated submitted,tripID,%{public}s,simTripID,%{public}s,modeOfTransport,%{public}d,distance,%{public}.2lf,acrossTrackMaxRMSAvg,%{public}.2lf,%{public}.2lf,%{public}.2lf,alongTrackMaxRMSAvg,%{public}.2lf,%{public}.2lf,%{public}.2lf,horizontalMaxRMSAvg,%{public}.2lf,%{public}.2lf,%{public}.2lf,speedMaxRMSAvg,%{public}.2lf,%{public}.2lf,%{public}.2lf,altitudeMaxRMSAvg,%{public}.2lf,%{public}.2lf,%{public}.2lf,courseMaxRMSAvg,%{public}.2lf,%{public}.2lf,%{public}.2lf,count,%{public}d,maxSpeed,%{public}.2lf,invalidSpeed,%{public}d,mmPCT,%{public}.2lf,iiPCT,%{public}.2lf,liPCT,%{public}.2lf,sparseBreadCrumbCount,%{public}d,reconstructedCount,%{public}d,chunkCount,%{public}d,processingTimeMSec,%{public}.2lf", buf, 0x12Au);
    }

    v118 = sub_19B87DD40();
    if (*(v118 + 160) > 1 || *(v118 + 164) > 1 || *(v118 + 168) > 1 || *(v118 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6ED10);
      }

      v119 = a1 + 40;
      if (*(a1 + 39) < 0)
      {
        v160 = v160->__r_.__value_.__r.__words[0];
      }

      if (*(a1 + 63) < 0)
      {
        v119 = *v159;
      }

      v120 = 0.0;
      v121 = 0.0;
      if (*(a1 + 128))
      {
        v121 = sqrt(*(a1 + 152));
      }

      if (*(a1 + 208))
      {
        v120 = sqrt(*(a1 + 232));
      }

      v122 = *(a1 + 288);
      v123 = 0.0;
      v124 = 0.0;
      if (v122)
      {
        v124 = sqrt(*(a1 + 312));
      }

      if (*(a1 + 368))
      {
        v123 = sqrt(*(a1 + 392));
      }

      v125 = 0.0;
      v126 = 0.0;
      if (*(a1 + 448))
      {
        v126 = sqrt(*(a1 + 472));
      }

      if (*(a1 + 528))
      {
        v125 = sqrt(*(a1 + 552));
      }

      v127 = *(a1 + 8);
      v128 = *(a1 + 632);
      v129 = fabs(*(a1 + 112));
      v130 = fabs(*(a1 + 136));
      v131 = fabs(*(a1 + 192));
      v132 = fabs(*(a1 + 216));
      v133 = *(a1 + 272);
      v134 = *(a1 + 296);
      v135 = fabs(*(a1 + 352));
      v136 = fabs(*(a1 + 376));
      v137 = fabs(*(a1 + 432));
      v138 = fabs(*(a1 + 456));
      v139 = fabs(*(a1 + 512));
      v140 = fabs(*(a1 + 536));
      v141 = *(a1 + 600);
      v142 = *(a1 + 596);
      v143 = *(a1 + 640);
      if (v143)
      {
        v144 = *(a1 + 584);
        v145.i64[0] = v144;
        v145.i64[1] = SHIDWORD(v144);
        v146 = vmulq_f64(vdivq_f64(vcvtq_f64_s64(v145), vdupq_lane_s64(COERCE__INT64(v143), 0)), vdupq_n_s64(0x4059000000000000uLL));
        __asm { FMOV            V27.2D, #1.0 }

        v148 = vandq_s8(vcgtzq_f64(v146), vcgeq_f64(_Q27, v146));
        *&v146.f64[0] = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(v146)));
        v145.i64[0] = SLODWORD(v146.f64[0]);
        v145.i64[1] = SHIDWORD(v146.f64[0]);
        v149 = vbslq_s8(v148, _Q27, vcvtq_f64_s64(v145));
        v150 = *(a1 + 592) / v143 * 100.0;
        v151 = llround(v150);
        v152 = v150 > 1.0 || v150 <= 0.0;
        v153 = v151;
        if (!v152)
        {
          v153 = 1.0;
        }
      }

      else
      {
        v153 = 0.0;
        v149 = 0uLL;
      }

      v154 = *(a1 + 624);
      v155 = *(a1 + 608);
      v156 = *(a1 + 616);
      *v174 = 136454146;
      *&v174[4] = v160;
      v175 = 2082;
      v176 = v119;
      v177 = 1026;
      v178 = v127;
      v179 = 2050;
      v180 = v128;
      v181 = 2050;
      v182 = v129;
      v183 = 2050;
      v184 = v121;
      v185 = 2050;
      v186 = v130;
      v187 = 2050;
      v188 = v131;
      v189 = 2050;
      v190 = v120;
      v191 = 2050;
      v192 = v132;
      v193 = 2050;
      v194 = v133;
      v195 = 2050;
      v196 = v124;
      v197 = 2050;
      v198 = v134;
      v199 = 2050;
      v200 = v135;
      v201 = 2050;
      v202 = v123;
      v203 = 2050;
      v204 = v136;
      v205 = 2050;
      v206 = v137;
      v207 = 2050;
      v208 = v126;
      v209 = 2050;
      v210 = v138;
      v211 = 2050;
      v212 = v139;
      v213 = 2050;
      v214 = v125;
      v215 = 2050;
      v216 = v140;
      v217 = 1026;
      v218 = v122;
      v219 = 2050;
      v220 = v141;
      v221 = 1026;
      v222 = v142;
      v223 = 2050;
      v224 = v149.i64[0];
      v225 = 2050;
      v226 = v149.i64[1];
      v227 = 2050;
      v228 = v153;
      v229 = 1026;
      v230 = v154;
      v231 = 1026;
      v232 = v143;
      v233 = 1026;
      v234 = v155;
      v235 = 2050;
      v236 = v156;
      v157 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentAnalyticsSimulatedTripSegment::compareAndSubmitCoreAnalytics(NSUUID * _Nonnull, NSUUID * _Nonnull, const int, NSArray<CLTripSegmentLocation *> * _Nonnull, CLTripSegmentOutputData * _Nonnull, const double)", "CoreLocation: %s\n", v157);
      if (v157 != buf)
      {
        free(v157);
      }
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  v158 = *MEMORY[0x1E69E9840];
}

void sub_19BA3D1A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a41 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_19BA3D1E8(uint64_t a1)
{
  if (*a1 == 1)
  {
    AnalyticsSendEventLazy();
    if (*(a1 + 39) < 0)
    {
      *(a1 + 24) = 0;
      v2 = *(a1 + 16);
    }

    else
    {
      v2 = (a1 + 16);
      *(a1 + 39) = 0;
    }

    *v2 = 0;
    if (*(a1 + 63) < 0)
    {
      *(a1 + 48) = 0;
      v3 = *(a1 + 40);
    }

    else
    {
      v3 = (a1 + 40);
      *(a1 + 63) = 0;
    }

    *v3 = 0;
    *(a1 + 128) = 0;
    result = 0.0;
    *(a1 + 112) = 0u;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0u;
    *(a1 + 192) = 0u;
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
    *(a1 + 224) = 0u;
    *(a1 + 272) = 0u;
    *(a1 + 288) = 0;
    *(a1 + 312) = 0;
    *(a1 + 296) = 0u;
    *(a1 + 368) = 0;
    *(a1 + 352) = 0u;
    *(a1 + 392) = 0;
    *(a1 + 376) = 0u;
    *(a1 + 432) = 0u;
    *(a1 + 448) = 0;
    *(a1 + 472) = 0;
    *(a1 + 456) = 0u;
    *(a1 + 584) = 0u;
    *(a1 + 600) = 0xBFF0000000000000;
    *(a1 + 608) = 0;
    *(a1 + 616) = 0;
    *(a1 + 624) = 0;
    *(a1 + 632) = 0;
    *(a1 + 640) = 0;
  }

  return result;
}

uint64_t sub_19BA3D33C(uint64_t a1)
{
  v36[34] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v35[0] = @"modeOfTransport";
  v36[0] = [MEMORY[0x1E696AD98] numberWithInteger:*(v1 + 8)];
  v35[1] = @"acrossTrackMax";
  v36[1] = [MEMORY[0x1E696AD98] numberWithDouble:fabs(*(v1 + 112))];
  v35[2] = @"acrossTrackRMS";
  if (*(v1 + 128))
  {
    v2 = sqrt(*(v1 + 152));
  }

  else
  {
    v2 = 0;
  }

  v36[2] = [MEMORY[0x1E696AD98] numberWithInt:v2];
  v35[3] = @"acrossTrackAvg";
  v36[3] = [MEMORY[0x1E696AD98] numberWithDouble:fabs(*(v1 + 136))];
  v35[4] = @"alongTrackMax";
  v36[4] = [MEMORY[0x1E696AD98] numberWithDouble:fabs(*(v1 + 192))];
  v35[5] = @"alongTrackRMS";
  if (*(v1 + 208))
  {
    v3 = sqrt(*(v1 + 232));
  }

  else
  {
    v3 = 0;
  }

  v36[5] = [MEMORY[0x1E696AD98] numberWithInt:v3];
  v35[6] = @"alongTrackAvg";
  v36[6] = [MEMORY[0x1E696AD98] numberWithDouble:fabs(*(v1 + 216))];
  v35[7] = @"horizontalErrorMax";
  v36[7] = [MEMORY[0x1E696AD98] numberWithInt:*(v1 + 272)];
  v35[8] = @"horizontalErrorRMS";
  if (*(v1 + 288))
  {
    v4 = sqrt(*(v1 + 312));
  }

  else
  {
    v4 = 0;
  }

  v36[8] = [MEMORY[0x1E696AD98] numberWithInt:v4];
  v35[9] = @"horizontalErrorAvg";
  v36[9] = [MEMORY[0x1E696AD98] numberWithInt:*(v1 + 296)];
  v35[10] = @"speedErrorMax";
  LODWORD(v5) = llround(fabs(*(v1 + 352)));
  v36[10] = [MEMORY[0x1E696AD98] numberWithInt:v5];
  v35[11] = @"speedErrorRMS";
  if (*(v1 + 368))
  {
    v7 = sqrt(*(v1 + 392));
  }

  else
  {
    v7 = 0.0;
  }

  LODWORD(v6) = llround(v7);
  v36[11] = [MEMORY[0x1E696AD98] numberWithInt:v6];
  v35[12] = @"speedErrorAvg";
  LODWORD(v8) = llround(fabs(*(v1 + 376)));
  v36[12] = [MEMORY[0x1E696AD98] numberWithInt:v8];
  v35[13] = @"altitudeErrorMax";
  v36[13] = [MEMORY[0x1E696AD98] numberWithInt:fabs(*(v1 + 432))];
  v35[14] = @"altitudeErrorRMS";
  if (*(v1 + 448))
  {
    v9 = sqrt(*(v1 + 472));
  }

  else
  {
    v9 = 0;
  }

  v36[14] = [MEMORY[0x1E696AD98] numberWithInt:v9];
  v35[15] = @"altitudeErrorAvg";
  v36[15] = [MEMORY[0x1E696AD98] numberWithInt:fabs(*(v1 + 456))];
  v35[16] = @"courseErrorMax";
  LODWORD(v10) = llround(fabs(*(v1 + 512)));
  v36[16] = [MEMORY[0x1E696AD98] numberWithInt:v10];
  v35[17] = @"courseErrorRMS";
  v12 = 0.0;
  v13 = 0.0;
  if (*(v1 + 528))
  {
    v13 = sqrt(*(v1 + 552));
  }

  LODWORD(v11) = llround(v13);
  v36[17] = [MEMORY[0x1E696AD98] numberWithInt:v11];
  v35[18] = @"courseErrorAvg";
  LODWORD(v14) = llround(fabs(*(v1 + 536)));
  v36[18] = [MEMORY[0x1E696AD98] numberWithInt:v14];
  v35[19] = @"positionErrorCount";
  v36[19] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v1 + 288)];
  v35[20] = @"speedErrorCount";
  v36[20] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v1 + 368)];
  v35[21] = @"courseErrorCount";
  v36[21] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v1 + 528)];
  v35[22] = @"maxSpeed";
  v36[22] = [MEMORY[0x1E696AD98] numberWithInt:fabs(*(v1 + 600))];
  v35[23] = @"distance";
  v36[23] = [MEMORY[0x1E696AD98] numberWithInt:fabs(*(v1 + 632))];
  v35[24] = @"invalidSpeed";
  v36[24] = [MEMORY[0x1E696AD98] numberWithInt:*(v1 + 596)];
  v35[25] = @"sparseBreadCrumbCount";
  v36[25] = [MEMORY[0x1E696AD98] numberWithInt:*(v1 + 624)];
  v35[26] = @"sparseBreadCrumbCountPercentage";
  v15 = *(v1 + 640);
  if (v15)
  {
    v16 = *(v1 + 624) / v15 * 100.0;
    v17 = v16 > 1.0 || v16 <= 0.0;
    v18 = llround(v16);
    if (v17)
    {
      v12 = v18;
    }

    else
    {
      v12 = 1.0;
    }
  }

  v36[26] = [MEMORY[0x1E696AD98] numberWithDouble:v12];
  v35[27] = @"reconstructedCount";
  v36[27] = [MEMORY[0x1E696AD98] numberWithInt:*(v1 + 640)];
  v35[28] = @"mapMatchedPercentage";
  v19 = *(v1 + 640);
  v20 = 0.0;
  v21 = 0.0;
  if (v19)
  {
    v22 = *(v1 + 584) / v19 * 100.0;
    v23 = v22 > 1.0 || v22 <= 0.0;
    v21 = llround(v22);
    if (!v23)
    {
      v21 = 1.0;
    }
  }

  v36[28] = [MEMORY[0x1E696AD98] numberWithDouble:v21];
  v35[29] = @"inertialPercentage";
  v24 = *(v1 + 640);
  if (v24)
  {
    v25 = *(v1 + 588) / v24 * 100.0;
    v26 = v25 > 1.0 || v25 <= 0.0;
    v27 = llround(v25);
    if (v26)
    {
      v20 = v27;
    }

    else
    {
      v20 = 1.0;
    }
  }

  v36[29] = [MEMORY[0x1E696AD98] numberWithDouble:v20];
  v35[30] = @"linearInterpolatedPercentage";
  v28 = *(v1 + 640);
  if (v28)
  {
    v29 = *(v1 + 592) / v28 * 100.0;
    v30 = v29 > 1.0 || v29 <= 0.0;
    v31 = llround(v29);
    if (!v30)
    {
      v31 = 1.0;
    }
  }

  else
  {
    v31 = 0.0;
  }

  v36[30] = [MEMORY[0x1E696AD98] numberWithDouble:v31];
  v35[31] = @"chunkCount";
  v36[31] = [MEMORY[0x1E696AD98] numberWithInt:*(v1 + 608)];
  v35[32] = @"processingTimeMSec";
  v32 = [MEMORY[0x1E696AD98] numberWithInt:*(v1 + 616)];
  v35[33] = @"simulated";
  v36[32] = v32;
  v36[33] = &unk_1F0E8CDA8;
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:34];
  v34 = *MEMORY[0x1E69E9840];
  return result;
}

os_log_t sub_19BA3D984()
{
  result = os_log_create("com.apple.locationd.Position", "TripSegmentProcessor");
  qword_1EAFE46E8 = result;
  return result;
}

void sub_19BA3F7F8()
{
  __cxa_end_catch();
  v1 = *(v0 - 105);
  JUMPOUT(0x19BA3F890);
}

void sub_19BA3F808(void *a1, int a2)
{
  if (a2)
  {
    sub_19B890AB0(a1);
  }

  JUMPOUT(0x19BA3F8D8);
}

void sub_19BA3F8E0(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (objc_loadWeak((*(a1 + 32) + 24)))
  {
    Weak = objc_loadWeak((*(a1 + 32) + 24));
    v3 = *MEMORY[0x1E69E9840];

    MEMORY[0x1EEE66B58](Weak, sel_locationSelectorDidSelectLocation_);
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v4 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      *buf = 138477827;
      v11 = v5;
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_ERROR, "#CLELS,CLEmergencyLocationSelector,sendLocationCB,self:%{private}@,nil fDelegate,early return", buf, 0xCu);
    }

    v6 = sub_19B87DD40();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      v9 = *(a1 + 32);
      v7 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLEmergencyLocationSelector initWithConfig:bundle:delegate:queue:]_block_invoke", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    v8 = *MEMORY[0x1E69E9840];
  }
}

void sub_19BA410E8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_19B890AB0(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_19BA41B08(const char *a1, int a2, const char *a3, NSObject *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v23 = a2;
  if (a4 & 1 | a3)
  {
    v4 = a4;
    v5 = a3;
    LODWORD(v6) = a2;
    if (qword_1EAFE4778 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (qword_1EAFE4778 != -1)
    {
      dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
    }

    v19 = qword_1EAFE4780;
    a1 = "";
    v6 = "assert";
    v5 = "h && invalid handler";
    if (os_log_type_enabled(qword_1EAFE4780, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      v30 = 2082;
      v31 = "assert";
      v32 = 2081;
      v33 = "h && invalid handler";
      _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE4778 != -1)
      {
        dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
      }
    }

    v20 = qword_1EAFE4780;
    if (os_signpost_enabled(qword_1EAFE4780))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      v30 = 2082;
      v31 = "assert";
      v32 = 2081;
      v33 = "h && invalid handler";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE4778 != -1)
      {
        dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
      }
    }

    v4 = qword_1EAFE4780;
    if (os_log_type_enabled(qword_1EAFE4780, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      v30 = 2082;
      v31 = "assert";
      v32 = 2081;
      v33 = "h && invalid handler";
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    __break(1u);
  }

  dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
LABEL_3:
  v8 = qword_1EAFE4780;
  v9 = a1[120];
  if (os_log_type_enabled(qword_1EAFE4780, v9))
  {
    v10 = a1 + 96;
    if (a1[119] < 0)
    {
      v10 = *v10;
    }

    sub_19BA46990(__p, v6);
    if (SBYTE3(v28) >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = *__p;
    }

    *buf = 136315650;
    *&buf[4] = v10;
    *&buf[12] = 1024;
    *&buf[14] = v6;
    v30 = 2080;
    v31 = v11;
    _os_log_impl(&dword_19B873000, v8, v9, "%sstate,%d,%s", buf, 0x1Cu);
    if (SBYTE3(v28) < 0)
    {
      operator delete(*__p);
    }
  }

  v12 = sub_19B87DD40();
  if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4778 != -1)
    {
      dispatch_once(&qword_1EAFE4778, &unk_1F0E6EDD0);
    }

    v13 = a1 + 96;
    if (a1[119] < 0)
    {
      v13 = *v13;
    }

    v14 = *(a1 + 120);
    sub_19BA46990(v21, v6);
    if (v22 >= 0)
    {
      v15 = v21;
    }

    else
    {
      v15 = v21[0];
    }

    *__p = 136315650;
    *&__p[4] = v13;
    v25 = 1024;
    v26 = v6;
    v27 = 2080;
    v28 = v15;
    v16 = _os_log_send_and_compose_impl();
    if (v22 < 0)
    {
      operator delete(v21[0]);
    }

    sub_19B885924("Generic", 1, 0, 2, "void CLStateMachine<CLEmergencyLocationSelectorInternal>::setStateHandler(State, StateHandler) [T = CLEmergencyLocationSelectorInternal]", "CoreLocation: %s\n", v16);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  *buf = &v23;
  result = sub_19BA4BCDC((a1 + 8), v6);
  result[5] = v5;
  result[6] = v4;
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19BA41FC8(uint64_t a1, int a2)
{
  v3 = 0;
  v39 = *MEMORY[0x1E69E9840];
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_82;
      }

      sub_19BA4759C(a1 + 24, 4);
    }

    else
    {
      [*a1 firstLocationTimeout];
      sub_19BA469A0(a1 + 24, v13);
    }

    goto LABEL_81;
  }

  if (a2 == 2)
  {
    v3 = 3;
    goto LABEL_82;
  }

  if (a2 == 3)
  {
    if (!sub_19BA47A64(a1, [*a1 firstLocationUsabilityCriteria], *(a1 + 152)))
    {
      goto LABEL_81;
    }

    *(a1 + 176) = *(a1 + 152);
    if ([objc_msgSend(*a1 "firstLocationUsabilityCriteria")] && sub_19BA48598(a1, objc_msgSend(*a1, "firstLocationUsabilityCriteria"), *(a1 + 152)))
    {

      *(a1 + 184) = *(a1 + 152);
    }

    if (!*a1)
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      v17 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
      {
        *buf = 134283521;
        v38 = a1;
        _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_ERROR, "#CLELS,CLEmergencyLocationSelectorInternal,shouldSendFirstLocationEarly,this:%{private}p,nil fConfig,early return", buf, 0xCu);
      }

      v18 = sub_19B87DD40();
      if ((*(v18 + 160) & 0x80000000) != 0 && (*(v18 + 164) & 0x80000000) != 0 && (*(v18 + 168) & 0x80000000) != 0 && !*(v18 + 152))
      {
        goto LABEL_81;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      v16 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLEmergencyLocationSelectorInternal::shouldSendFirstLocationEarly()", "CoreLocation: %s\n", v16);
      goto LABEL_58;
    }

    v6 = *(a1 + 176);
    if (v6)
    {
      [v6 coordinate];
      if (CLLocationCoordinate2DIsValid(v40))
      {
        if (![*a1 firstLocationEarlyReturnEnabled])
        {
          goto LABEL_81;
        }

        [*(a1 + 176) horizontalAccuracy];
        v8 = v7;
        [*a1 firstLocationMaxEarlyReturnHunc];
        if (v8 <= v9)
        {
          [*(a1 + 176) verticalAccuracy];
          v28 = v27;
          [*a1 firstLocationMaxEarlyReturnVunc];
          if (v28 <= v29)
          {
            if (qword_1ED519088 != -1)
            {
              dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
            }

            v33 = qword_1ED519090;
            if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
            {
              v34 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
              *buf = 138543362;
              v38 = v34;
              _os_log_impl(&dword_19B873000, v33, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,shouldSendFirstLocationEarly,can send first location early", buf, 0xCu);
            }

            v35 = sub_19B87DD40();
            if (*(v35 + 160) > 1 || *(v35 + 164) > 1 || *(v35 + 168) > 1 || *(v35 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1ED519088 != -1)
              {
                dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
              }

              +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
              v36 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 2, "BOOL CLEmergencyLocationSelectorInternal::shouldSendFirstLocationEarly()", "CoreLocation: %s\n", v36);
              if (v36 != buf)
              {
                free(v36);
              }
            }

            v3 = 1;
            *(a1 + 209) = 1;
            v5 = [*a1 firstLocationUsabilityCriteria];
            goto LABEL_10;
          }

          if (qword_1ED519088 != -1)
          {
            dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
          }

          v30 = qword_1ED519090;
          if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
          {
            v31 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
            *buf = 138543362;
            v38 = v31;
            _os_log_impl(&dword_19B873000, v30, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,shouldSendFirstLocationEarly,not sending,First location early return Vunc not satisfied", buf, 0xCu);
          }

          v32 = sub_19B87DD40();
          if (*(v32 + 160) <= 1 && *(v32 + 164) <= 1 && *(v32 + 168) <= 1 && !*(v32 + 152))
          {
            goto LABEL_81;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1ED519088 == -1)
          {
LABEL_79:
            +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
            v16 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLEmergencyLocationSelectorInternal::shouldSendFirstLocationEarly()", "CoreLocation: %s\n", v16);
            if (v16 != buf)
            {
LABEL_80:
              free(v16);
            }

LABEL_81:
            v3 = 0;
            goto LABEL_82;
          }
        }

        else
        {
          if (qword_1ED519088 != -1)
          {
            dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
          }

          v10 = qword_1ED519090;
          if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
          {
            v11 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
            *buf = 138543362;
            v38 = v11;
            _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,shouldSendFirstLocationEarly,not sending,First location early return Hunc not satisfied", buf, 0xCu);
          }

          v12 = sub_19B87DD40();
          if (*(v12 + 160) <= 1 && *(v12 + 164) <= 1 && *(v12 + 168) <= 1 && !*(v12 + 152))
          {
            goto LABEL_81;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1ED519088 == -1)
          {
            goto LABEL_79;
          }
        }
      }

      else
      {
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
        }

        v22 = qword_1ED519090;
        if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
        {
          v23 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
          *buf = 138543362;
          v38 = v23;
          _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,shouldSendFirstLocationEarly,not sending,invalid coordinates", buf, 0xCu);
        }

        v24 = sub_19B87DD40();
        if (*(v24 + 160) <= 1 && *(v24 + 164) <= 1 && *(v24 + 168) <= 1 && !*(v24 + 152))
        {
          goto LABEL_81;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1ED519088 == -1)
        {
          goto LABEL_79;
        }
      }
    }

    else
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      v19 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        v20 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
        *buf = 138543362;
        v38 = v20;
        _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,shouldSendFirstLocationEarly,not sending,invalid cached location", buf, 0xCu);
      }

      v21 = sub_19B87DD40();
      if (*(v21 + 160) <= 1 && *(v21 + 164) <= 1 && *(v21 + 168) <= 1 && !*(v21 + 152))
      {
        goto LABEL_81;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 == -1)
      {
        goto LABEL_79;
      }
    }

    dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    goto LABEL_79;
  }

  if (a2 != 4)
  {
    goto LABEL_82;
  }

  v4 = *a1;
  if (!*a1)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v14 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      v38 = a1;
      _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_ERROR, "#CLELS,CLEmergencyLocationSelectorInternal,FirstLocation,SendLocationTimeout,this:%{private}p,nil fConfig,early return", buf, 0xCu);
    }

    v15 = sub_19B87DD40();
    if ((*(v15 + 160) & 0x80000000) != 0 && (*(v15 + 164) & 0x80000000) != 0 && (*(v15 + 168) & 0x80000000) != 0 && !*(v15 + 152))
    {
      goto LABEL_81;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v16 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "CLEmergencyLocationSelectorInternal::State CLEmergencyLocationSelectorInternal::handler_FirstLocation(CLEmergencyLocationSelectorInternal::Event)", "CoreLocation: %s\n", v16);
LABEL_58:
    if (v16 == buf)
    {
      goto LABEL_81;
    }

    goto LABEL_80;
  }

  if (*(a1 + 176) && (sub_19BA4962C(a1, [v4 firstLocationUsabilityCriteria], *(a1 + 176)) & 1) == 0)
  {

    *(a1 + 176) = 0;
  }

  *(a1 + 209) = 0;
  v5 = [*a1 firstLocationUsabilityCriteria];
  v3 = 1;
LABEL_10:
  sub_19BA48CA4(a1, v5, 1);
  if (([*a1 firstUpdateEnabled] & 1) == 0)
  {
    if ([*a1 periodicUpdatesEnabled])
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }
  }

LABEL_82:
  v25 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t sub_19BA42B88(uint64_t a1, int a2)
{
  v83 = *MEMORY[0x1E69E9840];
  result = 1;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_123;
      }

      *(a1 + 192) = 0;
      *(a1 + 200) = 0;
      sub_19BA4759C(a1 + 24, 4);
    }

    else
    {
      [*a1 firstUpdateTimeout];
      sub_19BA469A0(a1 + 24, v35);
      if (*(a1 + 160))
      {
        if (sub_19BA49B28(a1, [*a1 locationUpdateUsabilityCriteria], *(a1 + 160)))
        {

          *(a1 + 192) = *(a1 + 160);
        }

        if (sub_19BA48598(a1, [*a1 locationUpdateUsabilityCriteria], *(a1 + 160)))
        {

          *(a1 + 200) = *(a1 + 160);
        }
      }
    }

LABEL_122:
    result = 1;
    goto LABEL_123;
  }

  if (a2 == 2)
  {
    result = 3;
    goto LABEL_123;
  }

  if (a2 == 3)
  {
    if (sub_19BA49B28(a1, [*a1 locationUpdateUsabilityCriteria], *(a1 + 152)))
    {

      *(a1 + 192) = *(a1 + 152);
    }

    v18 = [*a1 locationUpdateUsabilityCriteria];
    if (!*a1)
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      v36 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
      {
        *buf = 134283521;
        *&buf[4] = a1;
        _os_log_impl(&dword_19B873000, v36, OS_LOG_TYPE_ERROR, "#CLELS,CLEmergencyLocationSelectorInternal,isAltitudeUsableForFirstUpdate,this:%{private}p,nil fConfig,early return", buf, 0xCu);
      }

      v37 = sub_19B87DD40();
      if ((*(v37 + 160) & 0x80000000) != 0 && (*(v37 + 164) & 0x80000000) != 0 && (*(v37 + 168) & 0x80000000) != 0 && !*(v37 + 152))
      {
        goto LABEL_118;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      LODWORD(v73[2]) = 134283521;
      *(&v73[2] + 4) = a1;
      v34 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLEmergencyLocationSelectorInternal::isAltitudeUsableForFirstUpdate(CLEmergencyLocationUsabilityCriteria *, CLLocation *)", "CoreLocation: %s\n");
LABEL_59:
      if (v34 != buf)
      {
        free(v34);
      }

      goto LABEL_118;
    }

    v19 = *(a1 + 152);
    if (!sub_19BA48598(a1, v18, v19))
    {
LABEL_118:
      if (sub_19BA47A64(a1, [*a1 locationUpdateUsabilityCriteria], *(a1 + 152)))
      {

        *(a1 + 176) = *(a1 + 152);
        if ([objc_msgSend(*a1 "locationUpdateUsabilityCriteria")])
        {
          if (sub_19BA48598(a1, [*a1 locationUpdateUsabilityCriteria], *(a1 + 152)))
          {

            *(a1 + 184) = *(a1 + 152);
          }
        }
      }

      goto LABEL_122;
    }

    v20 = *(a1 + 200);
    if (v20)
    {
      [v20 verticalAccuracy];
      v22 = v21;
      [v19 verticalAccuracy];
      if (v22 < v23)
      {
        [*(a1 + 200) ellipsoidalAltitude];
        v25 = v24;
        [v19 ellipsoidalAltitude];
        v27 = vabdd_f64(v25, v26);
        [*a1 locationUpdateChangeInAltitudeToSendEarly];
        if (v27 < v28 || ([v19 verticalAccuracy], v27 < v29 * 0.5))
        {
          if (qword_1ED519088 != -1)
          {
            dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
          }

          v30 = qword_1ED519090;
          if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
          {
            v31 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
            *buf = 138543362;
            *&buf[4] = v31;
            _os_log_impl(&dword_19B873000, v30, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,isAltitudeUsableForFirstUpdate,NO", buf, 0xCu);
          }

          v32 = sub_19B87DD40();
          if (*(v32 + 160) <= 1 && *(v32 + 164) <= 1 && *(v32 + 168) <= 1 && !*(v32 + 152))
          {
            goto LABEL_118;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1ED519088 != -1)
          {
            dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
          }

          v33 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
          LODWORD(v73[2]) = 138543362;
          *(&v73[2] + 4) = v33;
          v34 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLEmergencyLocationSelectorInternal::isAltitudeUsableForFirstUpdate(CLEmergencyLocationUsabilityCriteria *, CLLocation *)", "CoreLocation: %s\n");
          goto LABEL_59;
        }

        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6ED50);
        }

        v68 = qword_1EAFE4718;
        if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
        {
          v69 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
          *buf = 138543618;
          *&buf[4] = v69;
          *&buf[12] = 2050;
          *&buf[14] = v27;
          _os_log_impl(&dword_19B873000, v68, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,isAltitudeUsableForFirstUpdate,YES,altitude change significant,%{public}f", buf, 0x16u);
        }

        v70 = sub_19B87DD40();
        if (*(v70 + 160) <= 1 && *(v70 + 164) <= 1 && *(v70 + 168) <= 1 && !*(v70 + 152))
        {
          goto LABEL_117;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6ED50);
        }

        v71 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
        LODWORD(v73[2]) = 138543618;
        *(&v73[2] + 4) = v71;
        WORD6(v73[2]) = 2050;
        *(&v73[2] + 14) = v27;
        goto LABEL_115;
      }

      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      v53 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        v54 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
        *buf = 138543362;
        *&buf[4] = v54;
        _os_log_impl(&dword_19B873000, v53, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,isAltitudeUsableForFirstUpdate,YES,received Vunc better than cached Vunc", buf, 0xCu);
      }

      v55 = sub_19B87DD40();
      if (*(v55 + 160) <= 1 && *(v55 + 164) <= 1 && *(v55 + 168) <= 1 && !*(v55 + 152))
      {
        goto LABEL_117;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 == -1)
      {
LABEL_114:
        v56 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
        LODWORD(v73[2]) = 138543362;
        *(&v73[2] + 4) = v56;
LABEL_115:
        v57 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLEmergencyLocationSelectorInternal::isAltitudeUsableForFirstUpdate(CLEmergencyLocationUsabilityCriteria *, CLLocation *)", "CoreLocation: %s\n", v57);
        if (v57 != buf)
        {
          free(v57);
        }

LABEL_117:

        *(a1 + 200) = *(a1 + 152);
        goto LABEL_118;
      }
    }

    else
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      v50 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        v51 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
        *buf = 138543362;
        *&buf[4] = v51;
        _os_log_impl(&dword_19B873000, v50, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,isAltitudeUsableForFirstUpdate,YES,FirstUpdateVerticalLocation being saved first time", buf, 0xCu);
      }

      v52 = sub_19B87DD40();
      if (*(v52 + 160) <= 1 && *(v52 + 164) <= 1 && *(v52 + 168) <= 1 && !*(v52 + 152))
      {
        goto LABEL_117;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 == -1)
      {
        goto LABEL_114;
      }
    }

    dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    goto LABEL_114;
  }

  if (a2 != 4)
  {
    goto LABEL_123;
  }

  if (!*a1)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v38 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      *&buf[4] = a1;
      _os_log_impl(&dword_19B873000, v38, OS_LOG_TYPE_ERROR, "#CLELS,CLEmergencyLocationSelectorInternal,FirstUpdate,SendLocationTimeout,this:%{private}p,nil fConfig,early return", buf, 0xCu);
    }

    v39 = sub_19B87DD40();
    if ((*(v39 + 160) & 0x80000000) == 0 || (*(v39 + 164) & 0x80000000) == 0 || (*(v39 + 168) & 0x80000000) == 0 || *(v39 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      LODWORD(v73[2]) = 134283521;
      *(&v73[2] + 4) = a1;
      v40 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "CLEmergencyLocationSelectorInternal::State CLEmergencyLocationSelectorInternal::handler_FirstUpdate(CLEmergencyLocationSelectorInternal::Event)", "CoreLocation: %s\n", v40);
      if (v40 != buf)
      {
        free(v40);
      }
    }

    goto LABEL_122;
  }

  v4 = *(a1 + 192);
  if (!v4)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v41 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v42 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
      *buf = 138543362;
      *&buf[4] = v42;
      _os_log_impl(&dword_19B873000, v41, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,sendFirstUpdateLocation,send nil Location", buf, 0xCu);
    }

    v43 = sub_19B87DD40();
    if (*(v43 + 160) > 1 || *(v43 + 164) > 1 || *(v43 + 168) > 1 || *(v43 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      v44 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
      LODWORD(v73[2]) = 138543362;
      *(&v73[2] + 4) = v44;
      v45 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "void CLEmergencyLocationSelectorInternal::sendFirstUpdateLocation()", "CoreLocation: %s\n", v45);
      if (v45 != buf)
      {
        free(v45);
      }
    }

    sub_19BA4B368(a1, 0);
    goto LABEL_138;
  }

  [v4 trustedTimestamp];
  v6 = v5;
  v78 = 0u;
  memset(v79, 0, 28);
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  memset(&v73[2], 0, 48);
  v7 = *(a1 + 192);
  if (v7)
  {
    [v7 clientLocation];
  }

  v8 = *(a1 + 200);
  if (!v8)
  {
    *(&v73[3] + 12) = 0;
    *&v79[1] = 0;
    [*(a1 + 184) verticalAccuracy];
    *(&v73[4] + 4) = v46;
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v47 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v48 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
      *buf = 138543362;
      *&buf[4] = v48;
      _os_log_impl(&dword_19B873000, v47, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,sendFirstUpdateLocation,FirstUpdateHorizontalLocation,with altitude cleared", buf, 0xCu);
    }

    v49 = sub_19B87DD40();
    if (*(v49 + 160) <= 1 && *(v49 + 164) <= 1 && *(v49 + 168) <= 1 && !*(v49 + 152))
    {
      goto LABEL_135;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 == -1)
    {
      goto LABEL_133;
    }

    goto LABEL_159;
  }

  [v8 verticalAccuracy];
  v10 = v9;
  [*(a1 + 192) verticalAccuracy];
  if (v10 == v11)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
    }

    v59 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v60 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
      *buf = 138543362;
      *&buf[4] = v60;
      _os_log_impl(&dword_19B873000, v59, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,sendFirstUpdateLocation,FirstUpdateHorizontalLocation,as-is", buf, 0xCu);
    }

    v61 = sub_19B87DD40();
    if (*(v61 + 160) <= 1 && *(v61 + 164) <= 1 && *(v61 + 168) <= 1 && !*(v61 + 152))
    {
      goto LABEL_135;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 == -1)
    {
      goto LABEL_133;
    }

    goto LABEL_159;
  }

  [*(a1 + 200) altitude];
  *(&v73[3] + 12) = v12;
  [*(a1 + 200) ellipsoidalAltitude];
  *&v79[1] = v13;
  [*(a1 + 200) verticalAccuracy];
  *(&v73[4] + 4) = v14;
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
  }

  v15 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v16 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
    *buf = 138543362;
    *&buf[4] = v16;
    _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,sendFirstUpdateLocation,FirstUpdateHorizontalLocation,with altitude stitching", buf, 0xCu);
  }

  v17 = sub_19B87DD40();
  if (*(v17 + 160) <= 1 && *(v17 + 164) <= 1 && *(v17 + 168) <= 1 && !*(v17 + 152))
  {
    goto LABEL_135;
  }

  bzero(buf, 0x65CuLL);
  if (qword_1ED519088 != -1)
  {
LABEL_159:
    dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
  }

LABEL_133:
  v62 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
  LODWORD(v72[0]) = 138543362;
  *(v72 + 4) = v62;
  v63 = _os_log_send_and_compose_impl();
  sub_19B885924("Generic", 1, 0, 2, "void CLEmergencyLocationSelectorInternal::sendFirstUpdateLocation()", "CoreLocation: %s\n", v63);
  if (v63 != buf)
  {
    free(v63);
  }

LABEL_135:
  v64 = objc_alloc(MEMORY[0x1E6985C40]);
  v72[6] = v77;
  v72[7] = v78;
  v73[0] = v79[0];
  *(v73 + 12) = *(v79 + 12);
  v72[2] = v73[4];
  v72[3] = v74;
  v72[4] = v75;
  v72[5] = v76;
  v72[0] = v73[2];
  v72[1] = v73[3];
  *buf = xmmword_19BA8A740;
  *&buf[16] = 0xBFF0000000000000;
  v81 = v6;
  memcpy(v82, &unk_19BA8A760, sizeof(v82));
  v65 = [v64 initWithClientLocation:v72 clientLocationPrivate:buf];
  sub_19BA4B368(a1, v65);
  if (v65)
  {
    *(a1 + 232) = 1;
    *(a1 + 248) = [v65 integrity];
    *(a1 + 236) = [v65 type];
    [v65 horizontalAccuracy];
    *(a1 + 240) = v66;
    [v65 verticalAccuracy];
    *(a1 + 244) = v67;
    *(a1 + 252) = sub_19BA4A7E8(a1, v65);
  }

LABEL_138:
  if ([*a1 periodicUpdatesEnabled])
  {
    result = 2;
  }

  else
  {
    result = 3;
  }

LABEL_123:
  v58 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19BA43E20(uint64_t a1, int a2)
{
  v84 = *MEMORY[0x1E69E9840];
  result = 2;
  if (a2 <= 1)
  {
    if (!a2)
    {
      if (*(a1 + 176) && (sub_19BA47A64(a1, [*a1 locationUpdateUsabilityCriteria], *(a1 + 176)) & 1) == 0)
      {

        *(a1 + 176) = 0;
      }

      if (*(a1 + 184) && (!sub_19BA47A64(a1, [*a1 locationUpdateUsabilityCriteria], *(a1 + 184)) || (sub_19BA48598(a1, objc_msgSend(*a1, "locationUpdateUsabilityCriteria"), *(a1 + 184)) & 1) == 0))
      {

        *(a1 + 184) = 0;
      }

      goto LABEL_153;
    }

    if (a2 != 1)
    {
      goto LABEL_155;
    }

    sub_19BA4759C(a1 + 24, 4);
LABEL_154:
    result = 2;
    goto LABEL_155;
  }

  switch(a2)
  {
    case 2:
      result = 3;
      break;
    case 3:
      if (!sub_19BA47A64(a1, [*a1 locationUpdateUsabilityCriteria], *(a1 + 152)))
      {
        goto LABEL_154;
      }

      *(a1 + 176) = *(a1 + 152);
      if ([objc_msgSend(*a1 "locationUpdateUsabilityCriteria")] && sub_19BA48598(a1, objc_msgSend(*a1, "locationUpdateUsabilityCriteria"), *(a1 + 152)))
      {

        *(a1 + 184) = *(a1 + 152);
      }

      if (!*a1)
      {
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
        }

        v14 = qword_1ED519090;
        if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
        {
          *buf = 134283521;
          v79 = a1;
          _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_ERROR, "#CLELS,CLEmergencyLocationSelectorInternal,shouldSendLocationUpdateEarly,this:%{private}p,nil fConfig,early return", buf, 0xCu);
        }

        v15 = sub_19B87DD40();
        if ((*(v15 + 160) & 0x80000000) != 0 && (*(v15 + 164) & 0x80000000) != 0 && (*(v15 + 168) & 0x80000000) != 0 && !*(v15 + 152))
        {
          goto LABEL_154;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
        }

        v72 = 134283521;
        v73 = a1;
        v13 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLEmergencyLocationSelectorInternal::shouldSendLocationUpdateEarly()", "CoreLocation: %s\n", v13);
LABEL_59:
        if (v13 == buf)
        {
          goto LABEL_154;
        }

        goto LABEL_73;
      }

      if (!*(a1 + 176))
      {
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
        }

        v16 = qword_1ED519090;
        if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
        {
          v17 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
          *buf = 138543362;
          v79 = v17;
          _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,shouldSendLocationUpdateEarly,not sending,invalid cached location", buf, 0xCu);
        }

        v18 = sub_19B87DD40();
        if (*(v18 + 160) <= 1 && *(v18 + 164) <= 1 && *(v18 + 168) <= 1 && !*(v18 + 152))
        {
          goto LABEL_154;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
        }

        v19 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
        v72 = 138543362;
        v73 = v19;
        goto LABEL_72;
      }

      if (!*(a1 + 160))
      {
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
        }

        v20 = qword_1ED519090;
        if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
        {
          v21 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
          *buf = 138543362;
          v79 = v21;
          _os_log_impl(&dword_19B873000, v20, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,shouldSendLocationUpdateEarly,sending,first valid fix being sent after sending no fix or nil fix", buf, 0xCu);
        }

        v22 = sub_19B87DD40();
        if (*(v22 + 160) <= 1 && *(v22 + 164) <= 1 && *(v22 + 168) <= 1 && !*(v22 + 152))
        {
          goto LABEL_152;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
        }

        v23 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
        v72 = 138543362;
        v73 = v23;
        goto LABEL_150;
      }

      v4 = mach_continuous_time();
      v5 = sub_19B994BF4(v4) - *(a1 + 168);
      [*a1 locationUpdateMinDelay];
      if (v5 < v6)
      {
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
        }

        v7 = qword_1ED519090;
        if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
        {
          v8 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
          *buf = 138543618;
          v79 = v8;
          v80 = 2050;
          v81 = v5;
          _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,shouldSendLocationUpdateEarly,not sending,last send was too recent,tDiff,%{public}f", buf, 0x16u);
        }

        v9 = sub_19B87DD40();
        if (*(v9 + 160) <= 1 && *(v9 + 164) <= 1 && *(v9 + 168) <= 1 && !*(v9 + 152))
        {
          goto LABEL_154;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
        }

        v10 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
        v72 = 138543618;
        v73 = v10;
        v74 = 2050;
        v75 = v5;
LABEL_72:
        v13 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLEmergencyLocationSelectorInternal::shouldSendLocationUpdateEarly()", "CoreLocation: %s\n", v13);
        if (v13 != buf)
        {
LABEL_73:
          free(v13);
          goto LABEL_154;
        }

        goto LABEL_154;
      }

      v70 = 0.0;
      v71 = 0.0;
      sub_19BA4ABBC(*(a1 + 176), &v71, &v70);
      v68 = 0.0;
      v69 = 0.0;
      sub_19BA4ABBC(*(a1 + 160), &v69, &v68);
      v24 = v69;
      v25 = v71;
      v26 = v69 - v71;
      [*a1 locationUpdateHuncReductionToSendEarly];
      if (v26 >= v27)
      {
        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6ED50);
        }

        v49 = qword_1EAFE4718;
        if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
        {
          v50 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
          *buf = 138543874;
          v79 = v50;
          v80 = 2050;
          v81 = v24;
          v82 = 2050;
          v83 = v25;
          _os_log_impl(&dword_19B873000, v49, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,shouldSendLocationUpdateEarly,sending,higher hunc reduction,previous,%{public}f,current,%{public}f", buf, 0x20u);
        }

        v51 = sub_19B87DD40();
        if (*(v51 + 160) <= 1 && *(v51 + 164) <= 1 && *(v51 + 168) <= 1 && !*(v51 + 152))
        {
          goto LABEL_152;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 == -1)
        {
          goto LABEL_149;
        }
      }

      else
      {
        [*(a1 + 160) coordinate];
        v29 = v28;
        [*(a1 + 160) coordinate];
        v31 = v30;
        [*(a1 + 176) coordinate];
        v33 = v32;
        [*(a1 + 176) coordinate];
        v35 = sub_19B87E164(v29, v31, v33, v34);
        [*a1 locationUpdateDistanceMovedToSendEarly];
        if (v35 >= v36)
        {
          [*(a1 + 160) horizontalAccuracy];
          if (v35 >= v52 || ([*(a1 + 176) horizontalAccuracy], v35 >= v53))
          {
            if (qword_1EAFE46E0 != -1)
            {
              dispatch_once(&qword_1EAFE46E0, &unk_1F0E6ED50);
            }

            v54 = qword_1EAFE4718;
            if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
            {
              v55 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
              *buf = 138543618;
              v79 = v55;
              v80 = 2050;
              v81 = v35;
              _os_log_impl(&dword_19B873000, v54, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,shouldSendLocationUpdateEarly,sending,location changed significantly,dist,%{public}f", buf, 0x16u);
            }

            v56 = sub_19B87DD40();
            if (*(v56 + 160) <= 1 && *(v56 + 164) <= 1 && *(v56 + 168) <= 1 && !*(v56 + 152))
            {
              goto LABEL_152;
            }

            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46E0 == -1)
            {
              goto LABEL_102;
            }

LABEL_159:
            dispatch_once(&qword_1EAFE46E0, &unk_1F0E6ED50);
LABEL_102:
            v48 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
            v72 = 138543618;
            v73 = v48;
            v74 = 2050;
            v75 = v35;
            goto LABEL_150;
          }
        }

        if (!sub_19BA48598(a1, [*a1 locationUpdateUsabilityCriteria], *(a1 + 176)))
        {
          goto LABEL_154;
        }

        if ((sub_19BA48598(a1, [*a1 locationUpdateUsabilityCriteria], *(a1 + 160)) & 1) == 0)
        {
          if (qword_1EAFE46E0 != -1)
          {
            dispatch_once(&qword_1EAFE46E0, &unk_1F0E6ED50);
          }

          v57 = qword_1EAFE4718;
          if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
          {
            v58 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
            *buf = 138543362;
            v79 = v58;
            _os_log_impl(&dword_19B873000, v57, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,shouldSendLocationUpdateEarly,sending,altitude is usable now", buf, 0xCu);
          }

          v59 = sub_19B87DD40();
          if (*(v59 + 160) <= 1 && *(v59 + 164) <= 1 && *(v59 + 168) <= 1 && !*(v59 + 152))
          {
            goto LABEL_152;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46E0 != -1)
          {
            dispatch_once(&qword_1EAFE46E0, &unk_1F0E6ED50);
          }

          v60 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
          v72 = 138543362;
          v73 = v60;
          goto LABEL_150;
        }

        v24 = v68;
        v25 = v70;
        v37 = v68 - v70;
        [*a1 locationUpdateVuncReductionToSendEarly];
        if (v37 < v38)
        {
          [*(a1 + 160) ellipsoidalAltitude];
          v40 = v39;
          [*(a1 + 176) ellipsoidalAltitude];
          v35 = vabdd_f64(v40, v41);
          [*a1 locationUpdateChangeInAltitudeToSendEarly];
          if (v35 < v42)
          {
            goto LABEL_154;
          }

          [*(a1 + 160) verticalAccuracy];
          if (v35 < v43 * 0.5)
          {
            [*(a1 + 176) verticalAccuracy];
            if (v35 < v44 * 0.5)
            {
              goto LABEL_154;
            }
          }

          if (qword_1EAFE46E0 != -1)
          {
            dispatch_once(&qword_1EAFE46E0, &unk_1F0E6ED50);
          }

          v45 = qword_1EAFE4718;
          if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
          {
            v46 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
            *buf = 138543618;
            v79 = v46;
            v80 = 2050;
            v81 = v35;
            _os_log_impl(&dword_19B873000, v45, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,shouldSendLocationUpdateEarly,sending,higher altitude change,%{public}f", buf, 0x16u);
          }

          v47 = sub_19B87DD40();
          if (*(v47 + 160) <= 1 && *(v47 + 164) <= 1 && *(v47 + 168) <= 1 && !*(v47 + 152))
          {
            goto LABEL_152;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46E0 == -1)
          {
            goto LABEL_102;
          }

          goto LABEL_159;
        }

        if (qword_1EAFE46E0 != -1)
        {
          dispatch_once(&qword_1EAFE46E0, &unk_1F0E6ED50);
        }

        v61 = qword_1EAFE4718;
        if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_DEFAULT))
        {
          v62 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
          *buf = 138543874;
          v79 = v62;
          v80 = 2050;
          v81 = v24;
          v82 = 2050;
          v83 = v25;
          _os_log_impl(&dword_19B873000, v61, OS_LOG_TYPE_DEFAULT, "#CLELS,%{public}@,shouldSendLocationUpdateEarly,sending,higher vunc reduction,previous,%{public}f,current,%{public}f", buf, 0x20u);
        }

        v63 = sub_19B87DD40();
        if (*(v63 + 160) <= 1 && *(v63 + 164) <= 1 && *(v63 + 168) <= 1 && !*(v63 + 152))
        {
          goto LABEL_152;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46E0 == -1)
        {
LABEL_149:
          v64 = +[CLEmergencyLocationSelectorConfig featureString:](CLEmergencyLocationSelectorConfig, "featureString:", [*a1 feature]);
          v72 = 138543874;
          v73 = v64;
          v74 = 2050;
          v75 = v24;
          v76 = 2050;
          v77 = v25;
LABEL_150:
          v65 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLEmergencyLocationSelectorInternal::shouldSendLocationUpdateEarly()", "CoreLocation: %s\n", v65);
          if (v65 != buf)
          {
            free(v65);
          }

          goto LABEL_152;
        }
      }

      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6ED50);
      goto LABEL_149;
    case 4:
      if (*a1)
      {
        if (*(a1 + 176) && (sub_19BA4962C(a1, [*a1 locationUpdateUsabilityCriteria], *(a1 + 176)) & 1) == 0)
        {

          *(a1 + 176) = 0;
        }

LABEL_152:
        sub_19BA48CA4(a1, [*a1 locationUpdateUsabilityCriteria], 0);
LABEL_153:
        [*a1 locationUpdateTimeout];
        sub_19BA469A0(a1 + 24, v66);
        goto LABEL_154;
      }

      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      v11 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
      {
        *buf = 134283521;
        v79 = a1;
        _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_ERROR, "#CLELS,CLEmergencyLocationSelectorInternal,PeriodicUpdates,SendLocationTimeout,this:%{private}p,nil fConfig,early return", buf, 0xCu);
      }

      v12 = sub_19B87DD40();
      if ((*(v12 + 160) & 0x80000000) != 0 && (*(v12 + 164) & 0x80000000) != 0 && (*(v12 + 168) & 0x80000000) != 0 && !*(v12 + 152))
      {
        goto LABEL_154;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6ED30);
      }

      v72 = 134283521;
      v73 = a1;
      v13 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "CLEmergencyLocationSelectorInternal::State CLEmergencyLocationSelectorInternal::handler_PeriodicUpdates(CLEmergencyLocationSelectorInternal::Event)", "CoreLocation: %s\n", v13);
      goto LABEL_59;
  }

LABEL_155:
  v67 = *MEMORY[0x1E69E9840];
  return result;
}