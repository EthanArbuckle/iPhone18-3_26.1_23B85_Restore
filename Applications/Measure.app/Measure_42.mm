const void **sub_1002CD3FC(const void **result, unint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v4 == v3)
  {
    v5 = a2 + 1;
  }

  else
  {
    v5 = a2;
  }

  if (v4 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v3) << 6) - 1;
  }

  if ((v5 & 0x1FF) != 0)
  {
    v7 = (v5 >> 9) + 1;
  }

  else
  {
    v7 = v5 >> 9;
  }

  v8 = result[4];
  v9 = v6 - &v8[result[5]];
  if (v7 >= v9 >> 9)
  {
    v10 = v9 >> 9;
  }

  else
  {
    v10 = v7;
  }

  if (v7 <= v9 >> 9)
  {
    for (result[4] = &v8[512 * v10]; v10; --v10)
    {
      v15 = v2[2];
      v17 = *(v15 - 1);
      v2[2] = v15 - 1;
      result = sub_1002CCB04(v2, &v17);
    }
  }

  else
  {
    v11 = v7 - v10;
    v12 = result[3] - *result;
    v13 = (v4 - v3) >> 3;
    if (v7 - v10 > (v12 >> 3) - v13)
    {
      if (v12 >> 2 <= v11 + v13)
      {
        v14 = v11 + v13;
      }

      else
      {
        v14 = v12 >> 2;
      }

      if (v14)
      {
        if (!(v14 >> 61))
        {
          operator new();
        }

        sub_10000927C();
      }

      operator new();
    }

    if (v11)
    {
      if (v3 != *result)
      {
        operator new();
      }

      operator new();
    }

    for (result[4] = &v8[512 * v10]; v10; --v10)
    {
      v16 = v2[2];
      v17 = *(v16 - 1);
      v2[2] = v16 - 1;
      result = sub_1002CCB04(v2, &v17);
    }
  }

  return result;
}

void sub_1002CDAA4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002CDB10(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0x1FF) != 0)
  {
    v5 = (v4 >> 9) + 1;
  }

  else
  {
    v5 = v4 >> 9;
  }

  v6 = result[4];
  if (v5 >= v6 >> 9)
  {
    v7 = v6 >> 9;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 9)
  {
    for (result[4] = v6 - (v7 << 9); v7; --v7)
    {
      v12 = v2[1];
      v14 = *v12;
      v2[1] = v12 + 1;
      result = sub_1002CC978(v2, &v14);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    v10 = v3 >> 3;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      if (v9 >> 2 <= v8 + v10)
      {
        v11 = v8 + v10;
      }

      else
      {
        v11 = v9 >> 2;
      }

      if (v11)
      {
        if (!(v11 >> 61))
        {
          operator new();
        }

        sub_10000927C();
      }

      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= v7 << 9; v7; --v7)
    {
      v13 = v2[1];
      v14 = *v13;
      v2[1] = v13 + 1;
      result = sub_1002CC978(v2, &v14);
    }
  }

  return result;
}

void sub_1002CE1A0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1002CE20C(const void **result, char *__len, const void **a3, char *a4, uint64_t a5)
{
  v7 = __len;
  if (result == a3)
  {
    v9 = *a5;
    v8 = *(a5 + 8);
    if (__len != a4)
    {
      v11 = *v9++;
      v10 = v11;
      while (1)
      {
        v12 = (v10 - v8 + 4096) >> 3;
        if ((a4 - v7) >> 3 < v12)
        {
          v12 = (a4 - v7) >> 3;
        }

        v13 = 8 * v12;
        if (v12)
        {
          result = memmove(v8, v7, 8 * v12);
        }

        v7 += v13;
        if (v7 == a4)
        {
          break;
        }

        v14 = *v9++;
        v10 = v14;
        v8 = v14;
      }

      v8 += v13;
      if (*(v9 - 1) + 4096 != v8)
      {
        *a5 = v9 - 1;
        goto LABEL_50;
      }

      v8 = *v9;
    }

    *a5 = v9;
    goto LABEL_50;
  }

  v16 = result;
  v17 = *result + 4096;
  v18 = *a5;
  v8 = *(a5 + 8);
  if (v17 == __len)
  {
    goto LABEL_20;
  }

  v20 = *v18++;
  v19 = v20;
  while (1)
  {
    v21 = (v19 - v8 + 4096) >> 3;
    if ((v17 - v7) >> 3 < v21)
    {
      v21 = (v17 - v7) >> 3;
    }

    v22 = 8 * v21;
    if (v21)
    {
      result = memmove(v8, v7, 8 * v21);
    }

    v7 += v22;
    if (v7 == v17)
    {
      break;
    }

    v23 = *v18++;
    v19 = v23;
    v8 = v23;
  }

  v8 += v22;
  if (*(v18 - 1) + 4096 != v8)
  {
    --v18;
LABEL_20:
    *a5 = v18;
    *(a5 + 8) = v8;
    for (i = v16 + 1; i != a3; ++i)
    {
LABEL_23:
      while (1)
      {
        v25 = 0;
        v26 = *i;
        v28 = *v18++;
        v27 = v28;
        while (1)
        {
          v29 = (v27 - v8 + 4096) >> 3;
          if ((4096 - v25) >> 3 < v29)
          {
            v29 = (4096 - v25) >> 3;
          }

          v30 = 8 * v29;
          if (v29)
          {
            result = memmove(v8, &v26[v25], 8 * v29);
          }

          v25 += v30;
          if (v25 == 4096)
          {
            break;
          }

          v31 = *v18++;
          v27 = v31;
          v8 = v31;
        }

        v8 += v30;
        v32 = v18 - 1;
        if (*(v18 - 1) + 4096 != v8)
        {
          break;
        }

        v8 = *v18;
        *a5 = v18;
        *(a5 + 8) = v8;
        if (++i == a3)
        {
          goto LABEL_32;
        }
      }

      --v18;
      *a5 = v32;
      *(a5 + 8) = v8;
    }

    goto LABEL_32;
  }

  v8 = *v18;
  *a5 = v18;
  *(a5 + 8) = v8;
  i = v16 + 1;
  if (i != a3)
  {
    goto LABEL_23;
  }

LABEL_32:
  v33 = *i;
  if (*i != a4)
  {
    v35 = *v18++;
    v34 = v35;
    while (1)
    {
      v36 = (v34 - v8 + 4096) >> 3;
      if ((a4 - v33) >> 3 < v36)
      {
        v36 = (a4 - v33) >> 3;
      }

      v37 = 8 * v36;
      if (v36)
      {
        result = memmove(v8, v33, 8 * v36);
      }

      v33 += v37;
      if (v33 == a4)
      {
        break;
      }

      v38 = *v18++;
      v34 = v38;
      v8 = v38;
    }

    v8 += v37;
    if (*(v18 - 1) + 4096 == v8)
    {
      v8 = *v18;
    }

    else
    {
      --v18;
    }
  }

  *a5 = v18;
LABEL_50:
  *(a5 + 8) = v8;
  return result;
}

void *sub_1002CE4BC@<X0>(const void **a1@<X1>, char *a2@<X2>, const void **a3@<X3>, char *a4@<X4>, const void **a5@<X5>, char *a6@<X6>, const void ***a7@<X8>)
{
  v8 = a5;
  if (a1 == a3)
  {
    if (a2 == a4)
    {
      goto LABEL_42;
    }

    v13 = *a5;
    v14 = a4;
    while (1)
    {
      v15 = &a6[-v13] >> 3;
      if ((v14 - a2) >> 3 < v15)
      {
        v15 = (v14 - a2) >> 3;
      }

      v14 -= 8 * v15;
      a6 -= 8 * v15;
      if (v15)
      {
        result = memmove(a6, v14, 8 * v15);
      }

      if (v14 == a2)
      {
        break;
      }

      v17 = *--v8;
      v13 = v17;
      a6 = (v17 + 4096);
    }

    goto LABEL_40;
  }

  v19 = *a3;
  if (*a3 != a4)
  {
    v20 = *a5;
    v21 = a4;
    while (1)
    {
      v22 = &a6[-v20] >> 3;
      if ((v21 - v19) >> 3 < v22)
      {
        v22 = (v21 - v19) >> 3;
      }

      v21 -= 8 * v22;
      a6 -= 8 * v22;
      if (v22)
      {
        result = memmove(a6, v21, 8 * v22);
      }

      if (v21 == v19)
      {
        break;
      }

      v23 = *--v8;
      v20 = v23;
      a6 = (v23 + 4096);
    }

    if (*v8 + 4096 == a6)
    {
      v24 = v8[1];
      ++v8;
      a6 = v24;
    }
  }

  v25 = a3 - 1;
  if (a3 - 1 != a1)
  {
    v26 = *v8;
    do
    {
      while (1)
      {
        v27 = *v25;
        v28 = *v25 + 4096;
        while (1)
        {
          v29 = (a6 - v26) >> 3;
          if ((v28 - v27) >> 3 < v29)
          {
            v29 = (v28 - v27) >> 3;
          }

          v28 -= 8 * v29;
          a6 -= 8 * v29;
          if (v29)
          {
            result = memmove(a6, v28, 8 * v29);
          }

          if (v28 == v27)
          {
            break;
          }

          v30 = *--v8;
          v26 = v30;
          a6 = v30 + 4096;
        }

        v26 = *v8;
        if (*v8 + 4096 == a6)
        {
          break;
        }

        if (--v25 == a1)
        {
          goto LABEL_32;
        }
      }

      v31 = v8[1];
      ++v8;
      v26 = v31;
      a6 = v31;
      --v25;
    }

    while (v25 != a1);
  }

LABEL_32:
  v32 = *v25 + 4096;
  if (v32 != a2)
  {
    v33 = *v8;
    while (1)
    {
      v34 = &a6[-v33] >> 3;
      if ((v32 - a2) >> 3 < v34)
      {
        v34 = (v32 - a2) >> 3;
      }

      v32 -= 8 * v34;
      a6 -= 8 * v34;
      if (v34)
      {
        result = memmove(a6, v32, 8 * v34);
      }

      if (v32 == a2)
      {
        break;
      }

      v35 = *--v8;
      v33 = v35;
      a6 = (v35 + 4096);
    }

LABEL_40:
    if (*v8 + 4096 == a6)
    {
      v36 = v8[1];
      ++v8;
      a6 = v36;
    }
  }

LABEL_42:
  *a7 = a3;
  a7[1] = a4;
  a7[2] = v8;
  a7[3] = a6;
  return result;
}

void sub_1002CE6F0(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

uint64_t sub_1002CE728(uint64_t result, int *a2)
{
  v2 = *a2;
  if (v2 < a2[1])
  {
    v3 = *(result + 16);
    v4 = v2 + 1;
    v5.i64[0] = 0x202020202020202;
    v5.i64[1] = 0x202020202020202;
    do
    {
      v6 = *(v3 + 16) + **(v3 + 72) * v2;
      v7 = *(result + 8);
      ++v2;
      v8 = *(v7 + 16);
      v9 = **(v7 + 72);
      if (*(result + 24))
      {
        v10 = 16;
      }

      else
      {
        v10 = 1;
      }

      if (*(result + 24))
      {
        v11 = *(v3 + 12);
        if (v11 >= 16)
        {
          v12 = 0;
          do
          {
            *(v6 + v12) = vceqq_s8(*(v8 + v10 + v9 * v4 + v12), v5);
            v12 += 16;
            v3 = *(result + 16);
            v13 = *(v3 + 12);
          }

          while (v12 <= v13 - 16);
          v12 = v12;
          if (v12 > v13 - 8)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v12 = 0;
          if (v11 - 8 < 0)
          {
            goto LABEL_16;
          }
        }

        *(v6 + v12) = vceq_s8(*(v8 + v9 * v2 + v10 + v12), 0x202020202020202);
        v12 |= 8uLL;
        v3 = *(result + 16);
      }

      else
      {
        v12 = 0;
      }

LABEL_16:
      if (v12 < *(v3 + 12))
      {
        v14 = v8 + v10 + v9 * v4;
        do
        {
          *(v6 + v12) = -(*(v14 + v12) >> 1);
          ++v12;
          v3 = *(result + 16);
        }

        while (v12 < *(v3 + 12));
      }

      ++v4;
    }

    while (v2 < a2[1]);
  }

  return result;
}

uint64_t sub_1002CE854(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 512;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1002CE920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, int a9, char a10)
{
  sub_1002ACE7C(v19, &off_100476EA0);
  if (a10)
  {
    v18 = 2;
  }

  else
  {
    v18 = 0;
  }

  if (a7 == 2)
  {
    v30 = a8;
    v31 = a9;
    v32 = v18;
    v28 = 0;
    v29 = a6;
    v21 = &off_100477230;
    v22 = a1;
    v23 = a2;
    v24 = a3;
    v25 = a4;
    v26 = a5;
    v27 = &v30;
    sub_1002829C8(&v28, &v21, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
  }

  else
  {
    v30 = a8;
    v31 = a9;
    v32 = v18;
    if (a7)
    {
      v28 = 0;
      v29 = a6;
      v21 = &off_100477290;
      v22 = a1;
      v23 = a2;
      v24 = a3;
      v25 = a4;
      v26 = a5;
      v27 = &v30;
      sub_1002829C8(&v28, &v21, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
    }

    else
    {
      v33 = -1;
      v34 = -1;
      v35 = -1;
      v28 = 0;
      v29 = a6;
      v21 = &off_1004771D0;
      v22 = a1;
      v23 = a2;
      v24 = a3;
      v25 = a4;
      v26 = a5;
      v27 = &v30;
      sub_1002829C8(&v28, &v21, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
    }
  }

  nullsub_1(&v21);
  if (v20)
  {
    sub_1002ACC1C(v19);
  }
}

void sub_1002CEB00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  nullsub_1(&a11);
  sub_1001D8BF4(&a9);
  _Unwind_Resume(a1);
}

void sub_1002CEB24(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002CEB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, int a9)
{
  sub_1002ACE7C(v25, &off_100476EC0);
  if (a8)
  {
    v17 = 2;
  }

  else
  {
    v17 = 0;
  }

  v19[0] = a7;
  v19[1] = v17;
  v19[2] = a9;
  v20 = 0xFCFCFCFCFCFCFCFCLL;
  v21 = 0xF8F8F8F8F8F8F8F8;
  *&v18 = 0x8000800080008000;
  *(&v18 + 1) = 0x8000800080008000;
  v22 = v18;
  v23 = 0u;
  *&v18 = -1;
  *(&v18 + 1) = -1;
  v24 = v18;
  v30[0] = 0;
  v30[1] = a6;
  v27[0] = &off_1004772F0;
  v27[1] = a1;
  v27[2] = a2;
  v27[3] = a3;
  v27[4] = a4;
  v28 = a5;
  v29 = v19;
  sub_1002829C8(v30, v27, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
  nullsub_1(v27);
  if (v26)
  {
    sub_1002ACC1C(v25);
  }
}

void sub_1002CEC54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  nullsub_1(va1);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1002CEC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, int a9)
{
  sub_1002ACE7C(v26, &off_100476EE0);
  if (a8)
  {
    v17 = 2;
  }

  else
  {
    v17 = 0;
  }

  v20[0] = a7;
  v20[1] = v17;
  v20[2] = a9;
  *&v18 = 0x3000300030003;
  *(&v18 + 1) = 0x3000300030003;
  *&v19 = 0x7000700070007;
  *(&v19 + 1) = 0x7000700070007;
  v21 = v18;
  v22 = v19;
  *&v18 = -1;
  *(&v18 + 1) = -1;
  v24 = v18;
  v25 = 0u;
  *&v19 = 0x8000800080008000;
  *(&v19 + 1) = 0x8000800080008000;
  v23 = v19;
  v31[0] = 0;
  v31[1] = a6;
  v28[0] = &off_100477350;
  v28[1] = a1;
  v28[2] = a2;
  v28[3] = a3;
  v28[4] = a4;
  v29 = a5;
  v30 = v20;
  sub_1002829C8(v31, v28, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
  nullsub_1(v28);
  if (v27)
  {
    sub_1002ACC1C(v26);
  }
}

void sub_1002CED84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  nullsub_1(va1);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1002CEDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, char a9)
{
  sub_1002ACE7C(v41, &off_100476F00);
  if (a7 == 2)
  {
    v37 = a8;
    *v38 = 0x259100001323;
    v34 = 1868;
    *&v38[8] = 1868;
    v35 = 4899;
    if ((a9 & 1) == 0)
    {
      *v38 = 1868;
      *&v38[8] = 4899;
      v35 = 1868;
      v34 = 4899;
    }

    *&v38[12] = vdup_n_s16(v35);
    *&v38[20] = vdup_n_s16(0x2591u);
    *v39.i8 = vdup_n_s16(v34);
    v36.i64[0] = 0x200000002000;
    v36.i64[1] = 0x200000002000;
    v40 = v36;
    v50 = 0;
    v51 = a6;
    v43 = &off_100477410;
    v44 = a1;
    v45 = a2;
    v46 = a3;
    v47 = a4;
    v48 = a5;
    v49 = &v37;
    sub_1002829C8(&v50, &v43, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
  }

  else if (a7)
  {
    v37 = a8;
    *&v38[8] = 1038710997;
    *v38 = 0x3F1645A23E991687;
    if (a9)
    {
      v18.i32[0] = 1050220167;
      v17.i32[0] = 1038710997;
    }

    else
    {
      *v38 = 1038710997;
      *&v38[8] = 1050220167;
      v18.i32[0] = 1038710997;
      v17.i32[0] = 1050220167;
    }

    *&v38[12] = vdupq_lane_s32(v18, 0);
    v39 = vdupq_lane_s32(*&v38[4], 0);
    v40 = vdupq_lane_s32(v17, 0);
    v50 = 0;
    v51 = a6;
    v43 = &off_100477470;
    v44 = a1;
    v45 = a2;
    v46 = a3;
    v47 = a4;
    v48 = a5;
    v49 = &v37;
    sub_1002829C8(&v50, &v43, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
  }

  else
  {
    if (a9)
    {
      v19 = 2;
    }

    else
    {
      v19 = 0;
    }

    v20 = dword_1003E6958[v19];
    v21 = dword_1003E6958[v19 ^ 2];
    v37 = a8;
    v22 = vdupq_n_s32(4 * v21);
    v23 = vmulq_s32(vdupq_n_s32(v21), xmmword_1003E3950);
    v24.i64[0] = 0x200000002000;
    v24.i64[1] = 0x200000002000;
    v25 = vmlaq_s32(v24, vdupq_n_s32(v20), xmmword_1003E3950);
    v26 = vdupq_n_s32(4 * v20);
    v27 = xmmword_1003E6810;
    v28 = 1028;
    v29 = vdupq_n_s32(0x9644u);
    v30 = vdupq_n_s32(0x12C88u);
    do
    {
      v31 = vaddq_s32(v23, v22);
      v32 = &v38[v28 - 4];
      *&v38[v28 - 1028] = v23;
      *&v38[v28 - 1012] = v31;
      v33 = vaddq_s32(v25, v26);
      *v32 = v27;
      v32[1] = vaddq_s32(v27, v29);
      v32[64] = v25;
      v32[65] = v33;
      v23 = vaddq_s32(v31, v22);
      v27 = vaddq_s32(v27, v30);
      v25 = vaddq_s32(v33, v26);
      v28 += 32;
    }

    while (v28 != 2052);
    v50 = 0;
    v51 = a6;
    v43 = &off_1004773B0;
    v44 = a1;
    v45 = a2;
    v46 = a3;
    v47 = a4;
    v48 = a5;
    v49 = &v37;
    sub_1002829C8(&v50, &v43, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
  }

  nullsub_1(&v43);
  if (v42)
  {
    sub_1002ACC1C(v41);
  }
}

void sub_1002CF090(_Unwind_Exception *a1)
{
  nullsub_1(v1 - 144);
  sub_1001D8BF4(v1 - 160);
  _Unwind_Resume(a1);
}

void sub_1002CF0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  sub_1002ACE7C(v17, &off_100476F20);
  if (a7 == 2)
  {
    v16 = a8;
    v26 = 0;
    v27 = a6;
    v19 = &off_100477530;
    v20 = a1;
    v21 = a2;
    v22 = a3;
    v23 = a4;
    v24 = a5;
    v25 = &v16;
    sub_1002829C8(&v26, &v19, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
  }

  else
  {
    v16 = a8;
    v26 = 0;
    v27 = a6;
    if (a7)
    {
      v19 = &off_100477590;
      v20 = a1;
      v21 = a2;
      v22 = a3;
      v23 = a4;
      v24 = a5;
      v25 = &v16;
      sub_1002829C8(&v26, &v19, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
    }

    else
    {
      v19 = &off_1004774D0;
      v20 = a1;
      v21 = a2;
      v22 = a3;
      v23 = a4;
      v24 = a5;
      v25 = &v16;
      sub_1002829C8(&v26, &v19, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
    }
  }

  nullsub_1(&v19);
  if (v18)
  {
    sub_1002ACC1C(v17);
  }
}

void sub_1002CF240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  nullsub_1(va1);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1002CF268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7)
{
  sub_1002ACE7C(v23, &off_100476F40);
  v16 = a7;
  v17 = vdup_n_s16(0x74Cu);
  v18 = vdup_n_s16(0x2591u);
  v19 = vdup_n_s16(0x1323u);
  *&v14 = 0x200000002000;
  *(&v14 + 1) = 0x200000002000;
  *&v15 = 0xF800F800F800F8;
  *(&v15 + 1) = 0xF800F800F800F8;
  v20 = v14;
  v21 = v15;
  *&v14 = 0xFC00FC00FC00FCLL;
  *(&v14 + 1) = 0xFC00FC00FC00FCLL;
  v22 = v14;
  v28[0] = 0;
  v28[1] = a6;
  v25[0] = &off_1004775F0;
  v25[1] = a1;
  v25[2] = a2;
  v25[3] = a3;
  v25[4] = a4;
  v26 = a5;
  v27 = &v16;
  sub_1002829C8(v28, v25, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
  nullsub_1(v25);
  if (v24)
  {
    sub_1002ACC1C(v23);
  }
}

void sub_1002CF370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  nullsub_1(va1);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1002CF38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7)
{
  sub_1002ACE7C(v17, &off_100476F60);
  v14 = a7;
  v15 = 0xF8F8F8F8F8F8F8F8;
  v16 = 0xFCFCFCFCFCFCFCFCLL;
  v22[0] = 0;
  v22[1] = a6;
  v19[0] = &off_100477650;
  v19[1] = a1;
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = a4;
  v20 = a5;
  v21 = &v14;
  sub_1002829C8(v22, v19, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
  nullsub_1(v19);
  if (v18)
  {
    sub_1002ACC1C(v17);
  }
}

void sub_1002CF46C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  nullsub_1(va1);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1002CF488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, char a9, char a10)
{
  sub_1002ACE7C(v52, &off_100476F80);
  if (a9)
  {
    v19 = 2;
  }

  else
  {
    v19 = 0;
  }

  if (a7 == 2)
  {
    v43 = a8;
    v44 = v19;
    v45[20] = a10;
    v23 = &unk_1003E69AC;
    if (a10)
    {
      v23 = &unk_1003E6998;
    }

    *v45 = *v23;
    *&v45[16] = v23[4];
    if (a9)
    {
      v24 = *v45;
      v25 = *&v45[8];
    }

    else
    {
      v25 = *v45;
      v24 = *&v45[8];
      *v45 = *&v45[8];
      *&v45[8] = v25;
    }

    v35 = (&v43 | 0xC);
    v36 = vld1q_dup_f32(v35);
    *&v45[24] = vdupq_n_s32(v24);
    v46 = v36;
    v37 = vdupq_n_s32(v25);
    v38 = &v45[12];
    v39 = vld1q_dup_f32(v38);
    v47 = v37;
    v48 = v39;
    v40 = &v45[16];
    v41 = vld1q_dup_f32(v40);
    v39.i64[0] = 0x2000000020000000;
    v39.i64[1] = 0x2000000020000000;
    v49 = v41;
    v50 = v39;
    v41.i64[0] = 0x200000002000;
    v41.i64[1] = 0x200000002000;
    v51 = v41;
    v61 = 0;
    v62 = a6;
    v54 = &off_100477710;
    v55 = a1;
    v56 = a2;
    v57 = a3;
    v58 = a4;
    v59 = a5;
    v60 = &v43;
    sub_1002829C8(&v61, &v54, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
  }

  else if (a7)
  {
    v43 = a8;
    v44 = v19;
    v45[0] = a10;
    v26 = &unk_1003E69D4;
    if (a10)
    {
      v26 = &unk_1003E69C0;
    }

    v27 = *v26;
    *&v45[4] = *v26;
    *&v45[20] = v26[4];
    v28 = *&v45[4];
    v18.i32[0] = *&v45[12];
    if (a9)
    {
      LODWORD(v27) = *&v45[12];
      v18.i32[0] = *&v45[4];
    }

    else
    {
      *&v45[4] = *&v45[12];
      *&v45[12] = v28;
      LODWORD(v27) = v28;
    }

    *&v45[24] = vdupq_lane_s32(v18, 0);
    v46 = vdupq_lane_s32(*&v45[8], 0);
    v47 = vdupq_lane_s32(*&v27, 0);
    v48 = vdupq_lane_s32(*&v45[16], 0);
    v42.i64[0] = 0x3F0000003F000000;
    v42.i64[1] = 0x3F0000003F000000;
    v49 = vdupq_lane_s32(*&v45[20], 0);
    v50 = v42;
    v61 = 0;
    v62 = a6;
    v54 = &off_100477770;
    v55 = a1;
    v56 = a2;
    v57 = a3;
    v58 = a4;
    v59 = a5;
    v60 = &v43;
    sub_1002829C8(&v61, &v54, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
  }

  else
  {
    v43 = a8;
    v44 = v19;
    v45[20] = a10;
    v20 = &unk_1003E6984;
    if (a10)
    {
      v20 = &unk_1003E6970;
    }

    *v45 = *v20;
    *&v45[16] = v20[4];
    if (a9)
    {
      v21 = *v45;
      v22 = *&v45[8];
    }

    else
    {
      v22 = *v45;
      v21 = *&v45[8];
      *v45 = *&v45[8];
      *&v45[8] = v22;
    }

    v29 = (&v43 | 0xC);
    v30 = vld1_dup_s16(v29);
    *&v45[24] = vdup_n_s16(v21);
    *&v45[32] = v30;
    *v46.i8 = vdup_n_s16(v22);
    v31 = &v45[12];
    v32 = vld1q_dup_f32(v31);
    v33 = &v45[16];
    v34 = vld1q_dup_f32(v33);
    v47 = v32;
    v48 = v34;
    v32.i64[0] = 0x20000000200000;
    v32.i64[1] = 0x20000000200000;
    v34.i64[0] = 0x200000002000;
    v34.i64[1] = 0x200000002000;
    v49 = v32;
    v50 = v34;
    v61 = 0;
    v62 = a6;
    v54 = &off_1004776B0;
    v55 = a1;
    v56 = a2;
    v57 = a3;
    v58 = a4;
    v59 = a5;
    v60 = &v43;
    sub_1002829C8(&v61, &v54, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
  }

  nullsub_1(&v54);
  if (v53)
  {
    sub_1002ACC1C(v52);
  }
}

void sub_1002CF7B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  nullsub_1(v28 - 152);
  sub_1001D8BF4(&a28);
  _Unwind_Resume(a1);
}

void sub_1002CF7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, char a9, char a10)
{
  sub_1002ACE7C(v45, &off_100476FA0);
  if (a9)
  {
    v18 = 2;
  }

  else
  {
    v18 = 0;
  }

  if (a7 == 2)
  {
    v56 = a8;
    v57 = v18;
    v58 = a10;
    if (a10)
    {
      v30 = &unk_1003E6A08;
    }

    else
    {
      v30 = &unk_1003E6A18;
    }

    *v59 = *v30;
    v29 = (&v56 | 0xC);
    v31 = vld1q_dup_f32(v29);
    v32 = &v59[4];
    v33 = vld1q_dup_f32(v32);
    v60 = v31;
    v61 = v33;
    v34 = &v59[8];
    v35 = vld1q_dup_f32(v34);
    v36 = &v59[12];
    v37 = vld1q_dup_f32(v36);
    v62 = v35;
    v63 = v37;
    v35.i64[0] = 0x800000008000;
    v35.i64[1] = 0x800000008000;
    v37.i64[0] = 0x200000002000;
    v37.i64[1] = 0x200000002000;
    v64 = v37;
    v65 = v35;
    v66 = -1;
    v67 = -1;
    v68 = -1;
    v54 = 0;
    v55 = a6;
    v47 = &off_100477830;
    v48 = a1;
    v49 = a2;
    v50 = a3;
    v51 = a4;
    v52 = a5;
    v53 = &v56;
    sub_1002829C8(&v54, &v47, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
  }

  else if (a7)
  {
    v56 = a8;
    v57 = v18;
    v58 = a10;
    if (a10)
    {
      v38 = &unk_1003E6A28;
    }

    else
    {
      v38 = &unk_1003E6A38;
    }

    *v59 = *v38;
    v60 = vdupq_lane_s32(*v59, 0);
    v61 = vdupq_lane_s32(*&v59[4], 0);
    v62 = vdupq_lane_s32(*&v59[8], 0);
    v63 = vdupq_lane_s32(*&v59[12], 0);
    v39.i64[0] = 0x3F0000003F000000;
    v39.i64[1] = 0x3F0000003F000000;
    __asm { FMOV            V1.4S, #1.0 }

    v64 = _Q1;
    v65 = v39;
    v54 = 0;
    v55 = a6;
    v47 = &off_100477890;
    v48 = a1;
    v49 = a2;
    v50 = a3;
    v51 = a4;
    v52 = a5;
    v53 = &v56;
    sub_1002829C8(&v54, &v47, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
  }

  else
  {
    v19 = &unk_1003E69F8;
    if (a10)
    {
      v19 = &unk_1003E69E8;
    }

    v20 = *v19;
    v21 = (&v56 | 0xC);
    *v59 = v20;
    v22 = vld1q_dup_f32(v21);
    v56 = a8;
    v57 = v18;
    v23 = &v59[4];
    v24 = vld1q_dup_f32(v23);
    v60 = v22;
    v61 = v24;
    v25 = &v59[8];
    v26 = vld1q_dup_f32(v25);
    v27 = &v59[12];
    v28 = vld1q_dup_f32(v27);
    v58 = a10;
    v62 = v26;
    v63 = v28;
    v28.i64[0] = 0x200000002000;
    v28.i64[1] = 0x200000002000;
    v64 = v28;
    v65.i64[0] = 0x80008000800080;
    v65.i64[1] = -1;
    v54 = 0;
    v55 = a6;
    v47 = &off_1004777D0;
    v48 = a1;
    v49 = a2;
    v50 = a3;
    v51 = a4;
    v52 = a5;
    v53 = &v56;
    sub_1002829C8(&v54, &v47, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
  }

  nullsub_1(&v47);
  if (v46)
  {
    sub_1002ACC1C(v45);
  }
}

void sub_1002CFAC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  nullsub_1(&a11);
  sub_1001D8BF4(&a9);
  _Unwind_Resume(a1);
}

void sub_1002CFAEC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002CFB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, char a9)
{
  sub_1002ACE7C(v56, &off_100476FC0);
  if (a7 == 2)
  {
    v42 = a8;
    v43 = xmmword_1003E6820;
    v44 = xmmword_1003E6830;
    v27 = 3892;
    v45 = 3892;
    v28 = 739;
    v29 = 79;
    if (a9)
    {
      v30 = 1689;
      v31 = 871;
      v32 = 296;
    }

    else
    {
      LODWORD(v43) = 739;
      *(&v43 + 1) = 0x12800000699;
      v30 = 739;
      v28 = 1689;
      *(&v44 + 4) = 0xF3400000367;
      v45 = 79;
      v31 = 296;
      v32 = 871;
      v29 = 3892;
      v27 = 79;
    }

    v46 = vdup_n_s16(v30);
    *v47.i8 = vdup_n_s16(0x5B9u);
    v47.u64[1] = vdup_n_s16(v28);
    *v48.i8 = vdup_n_s16(v31);
    v48.u64[1] = vdup_n_s16(0xB71u);
    *v49.i8 = vdup_n_s16(v32);
    v49.u64[1] = vdup_n_s16(v29);
    *v50.i8 = vdup_n_s16(0x1E8u);
    v50.u64[1] = vdup_n_s16(v27);
    v41.i64[0] = 0x80000000800;
    v41.i64[1] = 0x80000000800;
    v51 = v41;
    v65 = 0;
    v66 = a6;
    v58 = &off_100477950;
    v59 = a1;
    v60 = a2;
    v61 = a3;
    v62 = a4;
    v63 = a5;
    v64 = &v42;
    sub_1002829C8(&v65, &v58, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
  }

  else if (a7)
  {
    v42 = a8;
    v33 = vcvt_f32_f64(unk_1004D3FB0);
    v34 = vcvt_f32_f64(xmmword_1004D3FA0);
    v35 = vcvt_hight_f32_f64(v34, unk_1004D3FB0);
    v43 = v35;
    v36 = vcvt_f32_f64(unk_1004D3FD0).u32[0];
    v37 = vcvt_f32_f64(xmmword_1004D3FC0);
    v17.i32[0] = v37.i32[1];
    v38 = vcvt_hight_f32_f64(v37, unk_1004D3FD0);
    v44 = v38;
    v39.i32[1] = HIDWORD(qword_1004D3FE0);
    *v39.i32 = *&qword_1004D3FE0;
    v45 = v39.i32[0];
    if (a9)
    {
      *v18.i32 = *&qword_1004D3FE0;
      v39.i32[0] = v36;
      v19.i32[0] = v17.i32[0];
      v17.i32[0] = v33.i32[1];
      v20.i32[0] = v33.i32[0];
      v33.i32[0] = v34.i32[0];
    }

    else
    {
      LODWORD(v43) = v33.i32[0];
      *(&v43 + 1) = __PAIR64__(v17.u32[0], v34.u32[0]);
      DWORD1(v44) = v33.i32[1];
      *(&v44 + 2) = *&qword_1004D3FE0;
      v18.i32[0] = v36;
      v19.i32[0] = v33.i32[1];
      v20.i32[0] = v34.i32[0];
      v45 = v36;
    }

    v47 = vdupq_lane_s32(v33, 0);
    v48 = vdupq_lane_s32(*v35.f32, 1);
    v49 = vdupq_lane_s32(v20, 0);
    v50 = vdupq_lane_s32(v17, 0);
    v51 = vdupq_lane_s32(*v38.i8, 0);
    v52 = vdupq_lane_s32(v19, 0);
    v53 = vdupq_lane_s32(v39, 0);
    v54 = vdupq_laneq_s32(v38, 3);
    v55 = vdupq_lane_s32(v18, 0);
    v65 = 0;
    v66 = a6;
    v58 = &off_1004779B0;
    v59 = a1;
    v60 = a2;
    v61 = a3;
    v62 = a4;
    v63 = a5;
    v64 = &v42;
    sub_1002829C8(&v65, &v58, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
  }

  else
  {
    v42 = a8;
    v43 = xmmword_1003E6820;
    v44 = xmmword_1003E6830;
    v21 = 3892;
    v45 = 3892;
    v22 = 739;
    v23 = 79;
    if (a9)
    {
      v24 = 1689;
      v25 = 871;
      v26 = 296;
    }

    else
    {
      LODWORD(v43) = 739;
      *(&v43 + 1) = 0x12800000699;
      v24 = 739;
      v22 = 1689;
      *(&v44 + 4) = 0xF3400000367;
      v45 = 79;
      v25 = 296;
      v26 = 871;
      v23 = 3892;
      v21 = 79;
    }

    v46 = vdup_n_s16(v24);
    *v47.i8 = vdup_n_s16(0x5B9u);
    v47.u64[1] = vdup_n_s16(v22);
    *v48.i8 = vdup_n_s16(v25);
    v48.u64[1] = vdup_n_s16(0xB71u);
    *v49.i8 = vdup_n_s16(v26);
    v49.u64[1] = vdup_n_s16(v23);
    *v50.i8 = vdup_n_s16(0x1E8u);
    v50.u64[1] = vdup_n_s16(v21);
    v40.i64[0] = 0x80000000800;
    v40.i64[1] = 0x80000000800;
    v51 = v40;
    v65 = 0;
    v66 = a6;
    v58 = &off_1004778F0;
    v59 = a1;
    v60 = a2;
    v61 = a3;
    v62 = a4;
    v63 = a5;
    v64 = &v42;
    sub_1002829C8(&v65, &v58, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
  }

  nullsub_1(&v58);
  if (v57)
  {
    sub_1002ACC1C(v56);
  }
}

void sub_1002CFED8(_Unwind_Exception *a1)
{
  nullsub_1(v1 - 144);
  sub_1001D8BF4(v1 - 160);
  _Unwind_Resume(a1);
}

void sub_1002CFF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, unsigned int a8, char a9)
{
  sub_1002ACE7C(v53, &off_100476FE0);
  if (a9)
  {
    v17 = 2;
  }

  else
  {
    v17 = 0;
  }

  if (a7 == 2)
  {
    v37 = __PAIR64__(v17, a8);
    v38 = xmmword_1003E6840;
    v39 = xmmword_1003E6850;
    v24 = 4331;
    v40 = 4331;
    v25 = -2042;
    if (a9)
    {
      v26 = 13273;
      v27 = -6296;
      v28 = 228;
      v29 = -836;
    }

    else
    {
      *&v38 = 0xFFFFFCBC000000E4;
      *(&v39 + 1) = 0xFFFFE768000033D9;
      v26 = 228;
      v27 = -836;
      DWORD2(v38) = 4331;
      v40 = -2042;
      v25 = 4331;
      v28 = 13273;
      v29 = -6296;
      v24 = -2042;
    }

    v41 = vdupq_n_s32(v26);
    v42 = vdupq_n_s32(v27);
    v43 = vdupq_n_s32(v25);
    v44 = vdupq_n_s32(0xFFFFF07E);
    *&v35 = 0xAA000000AALL;
    *(&v35 + 1) = 0xAA000000AALL;
    v45 = vdupq_n_s32(0x1E04u);
    v46 = v35;
    v47 = vdupq_n_s32(v28);
    v48 = vdupq_n_s32(v29);
    *&v36 = 0x80000000800;
    *(&v36 + 1) = 0x80000000800;
    v49 = vdupq_n_s32(v24);
    v50 = v36;
    *&v36 = -1;
    *(&v36 + 1) = -1;
    v52 = v36;
    v51 = -1;
    v61 = 0;
    v62 = a6;
    v55 = &off_100477A70;
    v56 = a1;
    v57.i64[0] = a2;
    v57.i64[1] = a3;
    v58 = a4;
    v59 = *&a5;
    v60 = &v37;
    sub_1002829C8(&v61, &v55, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
LABEL_18:
    nullsub_1(&v55);
    if (!v54)
    {
      return;
    }

    goto LABEL_19;
  }

  if (!a7)
  {
    v37 = __PAIR64__(v17, a8);
    v38 = xmmword_1003E6840;
    v39 = xmmword_1003E6850;
    v18 = 4331;
    v40 = 4331;
    if (a9)
    {
      v19 = 13273;
      v20 = 59240;
      v21 = 63494;
      v22 = 228;
      v23 = 64700;
    }

    else
    {
      *&v38 = 0xFFFFFCBC000000E4;
      *(&v39 + 1) = 0xFFFFE768000033D9;
      v19 = 228;
      v20 = 64700;
      DWORD2(v38) = 4331;
      v40 = -2042;
      v21 = 4331;
      v22 = 13273;
      v23 = 59240;
      v18 = 63494;
    }

    *v41.i8 = vdup_n_s16(v19);
    v41.u64[1] = vdup_n_s16(v20);
    *v42.i8 = vdup_n_s16(v21);
    v42.u64[1] = vdup_n_s16(0xF07Eu);
    *v43.i8 = vdup_n_s16(0x1E04u);
    v43.i64[1] = 0xAA00AA00AA00AALL;
    *v44.i8 = vdup_n_s16(v22);
    v44.u64[1] = vdup_n_s16(v23);
    *&v34 = 0x80000000800;
    *(&v34 + 1) = 0x80000000800;
    v46 = v34;
    *v45.i8 = vdup_n_s16(v18);
    v45.i64[1] = -1;
    v61 = 0;
    v62 = a6;
    v55 = &off_100477A10;
    v56 = a1;
    v57.i64[0] = a2;
    v57.i64[1] = a3;
    v58 = a4;
    v59 = *&a5;
    v60 = &v37;
    sub_1002829C8(&v61, &v55, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
    goto LABEL_18;
  }

  v55 = __PAIR64__(v17, a8);
  v30 = vcvt_f32_f64(xmmword_1004D3FF0);
  v56 = v30;
  v31 = vcvt_hight_f32_f64(vcvt_f32_f64(*&qword_1004D4000), xmmword_1004D4010);
  v57 = v31;
  v32 = vcvt_f32_f64(*&qword_1004D4020);
  v58 = v32;
  v33 = *&qword_1004D4030;
  v59 = v33;
  if ((a9 & 1) == 0)
  {
    v56 = v32;
    v58 = v30;
    v57.f32[0] = *&qword_1004D4030;
    v59 = v31.f32[0];
  }

  v61 = 0;
  v62 = a6;
  v37 = &off_100477AD0;
  *&v38 = a1;
  *(&v38 + 1) = a2;
  *&v39 = a3;
  *(&v39 + 1) = a4;
  v40 = a5;
  v41.i64[0] = &v55;
  sub_1002829C8(&v61, &v37, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
  nullsub_1(&v37);
  if (v54)
  {
LABEL_19:
    sub_1002ACC1C(v53);
  }
}

void sub_1002D0284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  nullsub_1(&a9);
  sub_1001D8BF4(v9 - 160);
  _Unwind_Resume(a1);
}

void sub_1002D02A0(_Unwind_Exception *a1)
{
  nullsub_1(v1 - 144);
  sub_1001D8BF4(v1 - 160);
  _Unwind_Resume(a1);
}

void sub_1002D02C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int32 a5, int a6, int a7, unsigned int a8, char a9, char a10, char a11)
{
  sub_1002ACE7C(v22, &off_100477000);
  if (a10)
  {
    v19 = 256;
  }

  else
  {
    v19 = 180;
  }

  if (a7 == 5)
  {
    v20 = 360;
  }

  else
  {
    v20 = v19;
  }

  if (a9)
  {
    v21 = 2;
  }

  else
  {
    v21 = 0;
  }

  if (a11)
  {
    v24 = __PAIR64__(v21, a8);
    if (a7)
    {
      *&v25 = v20;
      v31 = 0;
      v32 = a6;
      v33 = &off_100477B90;
      v34 = a1;
      v35.i64[0] = a2;
      v35.i64[1] = a3;
      v36.i64[0] = a4;
      v36.i32[2] = a5;
      v37 = &v24;
      sub_1002829C8(&v31, &v33, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
    }

    else
    {
      LODWORD(v25) = v19;
      v31 = 0;
      v32 = a6;
      v33 = &off_100477B30;
      v34 = a1;
      v35.i64[0] = a2;
      v35.i64[1] = a3;
      v36.i64[0] = a4;
      v36.i32[2] = a5;
      v37 = &v24;
      sub_1002829C8(&v31, &v33, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
    }

LABEL_16:
    nullsub_1(&v33);
    if (!v23)
    {
      return;
    }

    goto LABEL_17;
  }

  if (a7)
  {
    v24 = __PAIR64__(v21, a8);
    *&v25 = v20 / 360.0;
    v31 = 0;
    v32 = a6;
    v33 = &off_100477C50;
    v34 = a1;
    v35.i64[0] = a2;
    v35.i64[1] = a3;
    v36.i64[0] = a4;
    v36.i32[2] = a5;
    v37 = &v24;
    sub_1002829C8(&v31, &v33, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
    goto LABEL_16;
  }

  v33 = (a8 | 0x300000000);
  LODWORD(v34) = v21;
  *(&v34 + 1) = v19 / 360.0;
  v35 = vdupq_n_s32(0x437F0000u);
  v36 = vdupq_n_s32(0x3B808081u);
  v37 = -1;
  v31 = 0;
  v32 = a6;
  v24 = &off_100477BF0;
  v25 = a1;
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = &v33;
  sub_1002829C8(&v31, &v24, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
  nullsub_1(&v24);
  if (!v23)
  {
    return;
  }

LABEL_17:
  sub_1002ACC1C(v22);
}

void sub_1002D056C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  nullsub_1(&a11);
  sub_1001D8BF4(&a9);
  _Unwind_Resume(a1);
}

void sub_1002D0588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  nullsub_1(&a19);
  sub_1001D8BF4(&a9);
  _Unwind_Resume(a1);
}

void sub_1002D05AC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D05C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int32 a5, int a6, int a7, unsigned int a8, char a9, char a10, char a11)
{
  sub_1002ACE7C(v22, &off_100477020);
  if (a10)
  {
    v19 = 255;
  }

  else
  {
    v19 = 180;
  }

  if (a7 == 5)
  {
    v20 = 360;
  }

  else
  {
    v20 = v19;
  }

  if (a9)
  {
    v21 = 2;
  }

  else
  {
    v21 = 0;
  }

  if (a11)
  {
    if (a7)
    {
      v24 = __PAIR64__(v21, a8);
      *&v25 = 6.0 / v20;
      v31 = 0;
      v32 = a6;
      v33 = &off_100477D10;
      v34 = a1;
      v35.i64[0] = a2;
      v35.i64[1] = a3;
      v36.i64[0] = a4;
      v36.i32[2] = a5;
      v37 = &v24;
      sub_1002829C8(&v31, &v33, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
      goto LABEL_15;
    }

    v33 = (a8 | 0x300000000);
    LODWORD(v34) = v21;
    *(&v34 + 1) = 6.0 / v19;
    v35 = vdupq_n_s32(0x437F0000u);
    v36 = vdupq_n_s32(0x3B808081u);
    v37 = -1;
    v31 = 0;
    v32 = a6;
    v24 = &off_100477CB0;
    v25 = a1;
    v26 = a2;
    v27 = a3;
    v28 = a4;
    v29 = a5;
    v30 = &v33;
    sub_1002829C8(&v31, &v24, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
LABEL_19:
    nullsub_1(&v24);
    if (!v23)
    {
      return;
    }

    goto LABEL_20;
  }

  if (!a7)
  {
    v33 = (a8 | 0x300000000);
    LODWORD(v34) = v21;
    *(&v34 + 1) = 6.0 / v19;
    v35 = vdupq_n_s32(0x437F0000u);
    v36 = vdupq_n_s32(0x3B808081u);
    v37 = -1;
    v31 = 0;
    v32 = a6;
    v24 = &off_100477D70;
    v25 = a1;
    v26 = a2;
    v27 = a3;
    v28 = a4;
    v29 = a5;
    v30 = &v33;
    sub_1002829C8(&v31, &v24, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
    goto LABEL_19;
  }

  v24 = __PAIR64__(v21, a8);
  *&v25 = 6.0 / v20;
  v31 = 0;
  v32 = a6;
  v33 = &off_100477DD0;
  v34 = a1;
  v35.i64[0] = a2;
  v35.i64[1] = a3;
  v36.i64[0] = a4;
  v36.i32[2] = a5;
  v37 = &v24;
  sub_1002829C8(&v31, &v33, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
LABEL_15:
  nullsub_1(&v33);
  if (v23)
  {
LABEL_20:
    sub_1002ACC1C(v22);
  }
}

void sub_1002D08A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  nullsub_1(&a11);
  sub_1001D8BF4(&a9);
  _Unwind_Resume(a1);
}

void sub_1002D08C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  nullsub_1(&a19);
  sub_1001D8BF4(&a9);
  _Unwind_Resume(a1);
}

void sub_1002D08E4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D0900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, char a9, char a10, char a11)
{
  sub_1002ACE7C(v26, &off_100477040);
  if (a9)
  {
    v18 = 2;
  }

  else
  {
    v18 = 0;
  }

  if (a10)
  {
    if (a7)
    {
      sub_1002D8D4C(v28, a8, v18, 0, 0, a11);
      v31 = 0;
      v32 = a6;
      v20.i64[0] = &off_100477E90;
      v20.i64[1] = a1;
      v21 = a2;
      v22 = a3;
      v23 = a4;
      v24 = a5;
      v25 = v28;
      sub_1002829C8(&v31, &v20, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
    }

    else
    {
      sub_1002D620C(v28, a8, v18, 0, 0, a11);
      v31 = 0;
      v32 = a6;
      v20.i64[0] = &off_100477E30;
      v20.i64[1] = a1;
      v21 = a2;
      v22 = a3;
      v23 = a4;
      v24 = a5;
      v25 = v28;
      sub_1002829C8(&v31, &v20, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
    }

LABEL_10:
    nullsub_1(&v20);
    if (!v27)
    {
      return;
    }

    goto LABEL_11;
  }

  if (a7)
  {
    sub_1002D923C(v28, a8, v18, 0, 0, a11);
    HIDWORD(v30) = a8;
    v31 = 0;
    v32 = a6;
    v20.i64[0] = &off_100477F50;
    v20.i64[1] = a1;
    v21 = a2;
    v22 = a3;
    v23 = a4;
    v24 = a5;
    v25 = v28;
    sub_1002829C8(&v31, &v20, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
    goto LABEL_10;
  }

  sub_1002D90D8(&v20, a8, v18, 0, 0, a11);
  v31 = 0;
  v32 = a6;
  v28[0] = &off_100477EF0;
  v28[1] = a1;
  v28[2] = a2;
  v28[3] = a3;
  v28[4] = a4;
  v29 = a5;
  v30 = &v20;
  sub_1002829C8(&v31, v28, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
  nullsub_1(v28);
  if (!v27)
  {
    return;
  }

LABEL_11:
  sub_1002ACC1C(v26);
}

void sub_1002D0B70(_Unwind_Exception *a1)
{
  nullsub_1(v1 - 152);
  sub_1001D8BF4(v1 - 168);
  _Unwind_Resume(a1);
}

void sub_1002D0B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  nullsub_1(va);
  sub_1001D8BF4(v3 - 168);
  _Unwind_Resume(a1);
}

void sub_1002D0C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, char a9, char a10, unsigned __int8 a11)
{
  sub_1002ACE7C(v23, &off_100477060);
  if (a9)
  {
    v19 = 2;
  }

  else
  {
    v19 = 0;
  }

  if (a10)
  {
    if (a7)
    {
      sub_1002D9798(v34, a8, v19, 0, 0, a11);
      v37[0] = a8;
      v32 = 0;
      v33 = a6;
      v25 = &off_100478010;
      v26 = a1;
      v27 = a2;
      v28 = a3;
      v29 = a4;
      v30 = a5;
      v31 = v34;
      sub_1002829C8(&v32, &v25, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
    }

    else
    {
      v20 = v19;
      sub_1002D9798(v34, 3, v19, 0, 0, a11);
      sub_1002D9AD0(v37, a8, v20, 0, 0, a11);
      v43 = a8;
      v39 = vdupq_n_s32(0x437F0000u);
      v40 = vdupq_n_s32(0x3EC8C8C9u);
      v42 = -1;
      *&v21 = 0x4300000043000000;
      *(&v21 + 1) = 0x4300000043000000;
      v41 = v21;
      v32 = 0;
      v33 = a6;
      v25 = &off_100477FB0;
      v26 = a1;
      v27 = a2;
      v28 = a3;
      v29 = a4;
      v30 = a5;
      v31 = v34;
      sub_1002829C8(&v32, &v25, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
    }

LABEL_12:
    nullsub_1(&v25);
    if (!v24)
    {
      return;
    }

    goto LABEL_13;
  }

  if (!a7)
  {
    LODWORD(v34[0]) = a8;
    v22 = v19;
    sub_1002D9ED8(v34 + 4, a8, v19, 0, 0, a11);
    sub_1002DA2A8(v37, a8, v22, 0, 0, a11);
    v38 = 1;
    v32 = 0;
    v33 = a6;
    v25 = &off_100478070;
    v26 = a1;
    v27 = a2;
    v28 = a3;
    v29 = a4;
    v30 = a5;
    v31 = v34;
    sub_1002829C8(&v32, &v25, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
    goto LABEL_12;
  }

  sub_1002D9ED8(&v25, a8, v19, 0, 0, a11);
  HIDWORD(v31) = a8;
  v32 = 0;
  v33 = a6;
  v34[0] = &off_1004780D0;
  v34[1] = a1;
  v34[2] = a2;
  v34[3] = a3;
  v34[4] = a4;
  v35 = a5;
  v36 = &v25;
  sub_1002829C8(&v32, v34, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
  nullsub_1(v34);
  if (v24)
  {
LABEL_13:
    sub_1002ACC1C(v23);
  }
}

void sub_1002D0F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  nullsub_1(&a11);
  sub_1001D8BF4(&a9);
  _Unwind_Resume(a1);
}

void sub_1002D0F9C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002D0FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, char a9, int a10)
{
  sub_1002ACE7C(v20, &off_1004770A0);
  if (a9)
  {
    v18 = 20;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18 + 100 * a8 + a10;
  if (v19 <= 399)
  {
    if (v19 > 319)
    {
      if (v19 == 320)
      {
        v24 = &off_1004781B0;
        v25 = a4;
        v26 = a5;
        v27 = a6;
        v28 = a1;
        v29 = a2;
        v30 = a3;
        v22 = 0;
        v23 = a7 / 2;
        if (a7 * a6 > 76799)
        {
          goto LABEL_30;
        }

        sub_1002E83B4(&v24, &v22);
        goto LABEL_40;
      }

      if (v19 == 321)
      {
        v24 = &off_1004781F0;
        v25 = a4;
        v26 = a5;
        v27 = a6;
        v28 = a1;
        v29 = a2;
        v30 = a3;
        v22 = 0;
        v23 = a7 / 2;
        if (a7 * a6 > 76799)
        {
          goto LABEL_30;
        }

        sub_1002E8694(&v24, &v22);
        goto LABEL_40;
      }
    }

    else
    {
      if (v19 == 300)
      {
        v24 = &off_100478130;
        v25 = a4;
        v26 = a5;
        v27 = a6;
        v28 = a1;
        v29 = a2;
        v30 = a3;
        v22 = 0;
        v23 = a7 / 2;
        if (a7 * a6 > 76799)
        {
          goto LABEL_30;
        }

        sub_1002E7E08(&v24, &v22);
        goto LABEL_40;
      }

      if (v19 == 301)
      {
        v24 = &off_100478170;
        v25 = a4;
        v26 = a5;
        v27 = a6;
        v28 = a1;
        v29 = a2;
        v30 = a3;
        v22 = 0;
        v23 = a7 / 2;
        if (a7 * a6 > 76799)
        {
          goto LABEL_30;
        }

        sub_1002E80E8(&v24, &v22);
        goto LABEL_40;
      }
    }

LABEL_31:
    v24 = 0;
    v25 = 0;
    qmemcpy(sub_1002A80E0(&v24, 41), "Unknown/unsupported color conversion code", 41);
    sub_1002A8980(-206, &v24, "cvtTwoPlaneYUVtoBGR", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 10858);
  }

  if (v19 <= 419)
  {
    if (v19 == 400)
    {
      v24 = &off_100478230;
      v25 = a4;
      v26 = a5;
      v27 = a6;
      v28 = a1;
      v29 = a2;
      v30 = a3;
      v22 = 0;
      v23 = a7 / 2;
      if (a7 * a6 > 76799)
      {
        goto LABEL_30;
      }

      sub_1002E8960(&v24, &v22);
      goto LABEL_40;
    }

    if (v19 == 401)
    {
      v24 = &off_100478270;
      v25 = a4;
      v26 = a5;
      v27 = a6;
      v28 = a1;
      v29 = a2;
      v30 = a3;
      v22 = 0;
      v23 = a7 / 2;
      if (a7 * a6 > 76799)
      {
        goto LABEL_30;
      }

      sub_1002E8C40(&v24, &v22);
      goto LABEL_40;
    }

    goto LABEL_31;
  }

  if (v19 != 420)
  {
    if (v19 == 421)
    {
      v24 = &off_1004782F0;
      v25 = a4;
      v26 = a5;
      v27 = a6;
      v28 = a1;
      v29 = a2;
      v30 = a3;
      v22 = 0;
      v23 = a7 / 2;
      if (a7 * a6 > 76799)
      {
        goto LABEL_30;
      }

      sub_1002E91FC(&v24, &v22);
      goto LABEL_40;
    }

    goto LABEL_31;
  }

  v24 = &off_1004782B0;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v28 = a1;
  v29 = a2;
  v30 = a3;
  v22 = 0;
  v23 = a7 / 2;
  if (a7 * a6 > 76799)
  {
LABEL_30:
    sub_1002829C8(&v22, &v24, -1.0);
    goto LABEL_40;
  }

  sub_1002E8F1C(&v24, &v22);
LABEL_40:
  nullsub_1(&v24);
  if (v21)
  {
    sub_1002ACC1C(v20);
  }
}

void sub_1002D14D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  nullsub_1(&a12);
  sub_1001D8BF4(&a9);
  _Unwind_Resume(a1);
}

void sub_1002D1530(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002A8124(va);
  JUMPOUT(0x1002D151CLL);
}

void sub_1002D155C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, int a9)
{
  sub_1002ACE7C(v26, &off_1004770C0);
  v18 = a6 - (v17 & 0xFFFFFFFC);
  v19 = a1 + (a6 + a6 / 4) * a2 + a5 / 2 * ((v18 + ((v18 & 0x80) >> 7)) << 24 >> 25);
  v20 = v18 == 2;
  if (a9 == 1)
  {
    v21 = a1 + (a6 + a6 / 4) * a2 + a5 / 2 * ((v18 + ((v18 & 0x80) >> 7)) << 24 >> 25);
  }

  else
  {
    v21 = a1 + a6 * a2;
  }

  if (a9 == 1)
  {
    v19 = a1 + a6 * a2;
    v22 = v18 == 2;
  }

  else
  {
    v22 = 0;
  }

  v23 = a9 != 1 && v20;
  if (a8)
  {
    v24 = 2;
  }

  else
  {
    v24 = 0;
  }

  v25 = (v24 + 10 * a7 - 30) >> 1;
  if (v25 <= 4)
  {
    if (!v25)
    {
      v30 = &off_100478330;
      v31 = a3;
      v32 = a4;
      v33 = a5;
      v34 = a1;
      v35 = v21;
      v36 = v19;
      v37 = a2;
      v38 = v22;
      v39 = v23;
      v28 = 0;
      v29 = a6 / 2;
      if (a6 * a5 > 76799)
      {
        goto LABEL_26;
      }

      sub_1002E94D8(&v30, &v28);
      goto LABEL_31;
    }

    if (v25 == 1)
    {
      v30 = &off_100478370;
      v31 = a3;
      v32 = a4;
      v33 = a5;
      v34 = a1;
      v35 = v21;
      v36 = v19;
      v37 = a2;
      v38 = v22;
      v39 = v23;
      v28 = 0;
      v29 = a6 / 2;
      if (a6 * a5 > 76799)
      {
        goto LABEL_26;
      }

      sub_1002E985C(&v30, &v28);
      goto LABEL_31;
    }

LABEL_22:
    v30 = 0;
    v31 = 0;
    qmemcpy(sub_1002A80E0(&v30, 41), "Unknown/unsupported color conversion code", 41);
    sub_1002A8980(-206, &v30, "cvtThreePlaneYUVtoBGR", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 10885);
  }

  if (v25 != 5)
  {
    if (v25 == 6)
    {
      v30 = &off_1004783F0;
      v31 = a3;
      v32 = a4;
      v33 = a5;
      v34 = a1;
      v35 = v21;
      v36 = v19;
      v37 = a2;
      v38 = v22;
      v39 = v23;
      v28 = 0;
      v29 = a6 / 2;
      if (a6 * a5 > 76799)
      {
        goto LABEL_26;
      }

      sub_1002E9F7C(&v30, &v28);
      goto LABEL_31;
    }

    goto LABEL_22;
  }

  v30 = &off_1004783B0;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v34 = a1;
  v35 = v21;
  v36 = v19;
  v37 = a2;
  v38 = v22;
  v39 = v23;
  v28 = 0;
  v29 = a6 / 2;
  if (a6 * a5 > 76799)
  {
LABEL_26:
    sub_1002829C8(&v28, &v30, -1.0);
    goto LABEL_31;
  }

  sub_1002E9BE0(&v30, &v28);
LABEL_31:
  nullsub_1(&v30);
  if (v27)
  {
    sub_1002ACC1C(v26);
  }
}

void sub_1002D18D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  nullsub_1(&a12);
  sub_1001D8BF4(&a9);
  _Unwind_Resume(a1);
}

void sub_1002D1910(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002A8124(va);
  JUMPOUT(0x1002D18FCLL);
}

void sub_1002D193C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, char a8, int a9)
{
  sub_1002ACE7C(v24, &off_1004770E0);
  v17[0] = &off_100477190;
  v17[1] = a1;
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a3 + a6 * a4;
  v17[5] = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9 == 2;
  v23 = 0;
  v26[0] = 0;
  v26[1] = a6 / 2;
  if (a6 * a5 < 76800)
  {
    sub_1002DA6FC(v17, v26);
  }

  else
  {
    sub_1002829C8(v26, v17, -1.0);
  }

  nullsub_1(v17);
  if (v25)
  {
    sub_1002ACC1C(v24);
  }
}

void sub_1002D1A60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  nullsub_1(va);
  sub_1001D8BF4(va1);
  _Unwind_Resume(a1);
}

void sub_1002D1A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, int a9, int a10)
{
  sub_1002ACE7C(v20, &off_100477100);
  if (a8)
  {
    v18 = 200;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18 + 1000 * a7 + 10 * a9 + a10;
  if (v19 <= 3999)
  {
    if (v19 > 3199)
    {
      switch(v19)
      {
        case 3200:
          v24 = &off_1004784F0;
          v25 = a3;
          v26 = a4;
          v27 = a1;
          v28 = a2;
          v29 = a5;
          v22 = 0;
          v23 = a6;
          if (a6 * a5 > 76799)
          {
            goto LABEL_42;
          }

          sub_1002EA878(&v24, &v22);
          goto LABEL_56;
        case 3201:
          v24 = &off_100478530;
          v25 = a3;
          v26 = a4;
          v27 = a1;
          v28 = a2;
          v29 = a5;
          v22 = 0;
          v23 = a6;
          if (a6 * a5 > 76799)
          {
            goto LABEL_42;
          }

          sub_1002EAA3C(&v24, &v22);
          goto LABEL_56;
        case 3210:
          v24 = &off_100478570;
          v25 = a3;
          v26 = a4;
          v27 = a1;
          v28 = a2;
          v29 = a5;
          v22 = 0;
          v23 = a6;
          if (a6 * a5 > 76799)
          {
            goto LABEL_42;
          }

          sub_1002EABFC(&v24, &v22);
          goto LABEL_56;
      }
    }

    else
    {
      switch(v19)
      {
        case 3000:
          v24 = &off_100478430;
          v25 = a3;
          v26 = a4;
          v27 = a1;
          v28 = a2;
          v29 = a5;
          v22 = 0;
          v23 = a6;
          if (a6 * a5 > 76799)
          {
            goto LABEL_42;
          }

          sub_1002EA318(&v24, &v22);
          goto LABEL_56;
        case 3001:
          v24 = &off_100478470;
          v25 = a3;
          v26 = a4;
          v27 = a1;
          v28 = a2;
          v29 = a5;
          v22 = 0;
          v23 = a6;
          if (a6 * a5 > 76799)
          {
            goto LABEL_42;
          }

          sub_1002EA4E4(&v24, &v22);
          goto LABEL_56;
        case 3010:
          v24 = &off_1004784B0;
          v25 = a3;
          v26 = a4;
          v27 = a1;
          v28 = a2;
          v29 = a5;
          v22 = 0;
          v23 = a6;
          if (a6 * a5 > 76799)
          {
            goto LABEL_42;
          }

          sub_1002EA6AC(&v24, &v22);
          goto LABEL_56;
      }
    }

LABEL_43:
    v24 = 0;
    v25 = 0;
    qmemcpy(sub_1002A80E0(&v24, 41), "Unknown/unsupported color conversion code", 41);
    sub_1002A8980(-206, &v24, "cvtOnePlaneYUVtoBGR", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 10935);
  }

  if (v19 <= 4199)
  {
    switch(v19)
    {
      case 4000:
        v24 = &off_1004785B0;
        v25 = a3;
        v26 = a4;
        v27 = a1;
        v28 = a2;
        v29 = a5;
        v22 = 0;
        v23 = a6;
        if (a6 * a5 > 76799)
        {
          goto LABEL_42;
        }

        sub_1002EADC0(&v24, &v22);
        goto LABEL_56;
      case 4001:
        v24 = &off_1004785F0;
        v25 = a3;
        v26 = a4;
        v27 = a1;
        v28 = a2;
        v29 = a5;
        v22 = 0;
        v23 = a6;
        if (a6 * a5 > 76799)
        {
          goto LABEL_42;
        }

        sub_1002EAF94(&v24, &v22);
        goto LABEL_56;
      case 4010:
        v24 = &off_100478630;
        v25 = a3;
        v26 = a4;
        v27 = a1;
        v28 = a2;
        v29 = a5;
        v22 = 0;
        v23 = a6;
        if (a6 * a5 > 76799)
        {
          goto LABEL_42;
        }

        sub_1002EB164(&v24, &v22);
        goto LABEL_56;
    }

    goto LABEL_43;
  }

  if (v19 == 4200)
  {
    v24 = &off_100478670;
    v25 = a3;
    v26 = a4;
    v27 = a1;
    v28 = a2;
    v29 = a5;
    v22 = 0;
    v23 = a6;
    if (a6 * a5 > 76799)
    {
      goto LABEL_42;
    }

    sub_1002EB338(&v24, &v22);
    goto LABEL_56;
  }

  if (v19 != 4201)
  {
    if (v19 == 4210)
    {
      v24 = &off_1004786F0;
      v25 = a3;
      v26 = a4;
      v27 = a1;
      v28 = a2;
      v29 = a5;
      v22 = 0;
      v23 = a6;
      if (a6 * a5 > 76799)
      {
        goto LABEL_42;
      }

      sub_1002EB6CC(&v24, &v22);
      goto LABEL_56;
    }

    goto LABEL_43;
  }

  v24 = &off_1004786B0;
  v25 = a3;
  v26 = a4;
  v27 = a1;
  v28 = a2;
  v29 = a5;
  v22 = 0;
  v23 = a6;
  if (a6 * a5 > 76799)
  {
LABEL_42:
    sub_1002829C8(&v22, &v24, -1.0);
    goto LABEL_56;
  }

  sub_1002EB504(&v24, &v22);
LABEL_56:
  nullsub_1(&v24);
  if (v21)
  {
    sub_1002ACC1C(v20);
  }
}

void sub_1002D2120(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  nullsub_1(va1);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1002D219C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1002A8124(va);
  JUMPOUT(0x1002D2188);
}

void sub_1002D21B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1002D21C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  sub_1002ACE7C(v13, &off_100477120);
  v18[0] = 0;
  v18[1] = a6;
  v15[0] = &off_100478730;
  v15[1] = a1;
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a4;
  v16 = a5;
  v17 = &v12;
  sub_1002829C8(v18, v15, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
  nullsub_1(v15);
  if (v14)
  {
    sub_1002ACC1C(v13);
  }
}

void sub_1002D228C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  nullsub_1(va1);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1002D22A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  sub_1002ACE7C(v13, &off_100477140);
  v18[0] = 0;
  v18[1] = a6;
  v15[0] = &off_100478790;
  v15[1] = a1;
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a4;
  v16 = a5;
  v17 = &v12;
  sub_1002829C8(v18, v15, vcvtd_n_f64_s32(a6 * a5, 0x10uLL));
  nullsub_1(v15);
  if (v14)
  {
    sub_1002ACC1C(v13);
  }
}

void sub_1002D236C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  nullsub_1(va1);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1002D2388(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  sub_1002ACE7C(v357, &off_100477160);
  v8 = sub_100271A88(a1, -1);
  *v353 = 1124007936;
  memset(&v353[4], 0, 60);
  v354 = &v353[8];
  v355 = v356;
  v356[0] = 0;
  v356[1] = 0;
  *v349 = 1124007936;
  memset(&v349[4], 0, 60);
  v350 = &v349[8];
  v351 = v352;
  v352[0] = 0;
  v352[1] = 0;
  if (*(a1 + 8) != *(a2 + 8))
  {
    if (sub_100271148(a1) != 0x10000)
    {
      sub_1002703C0(a1, -1, v344);
      goto LABEL_10;
    }

    v9 = *(a1 + 8);
    v10 = *v9;
    v11 = *(v9 + 16);
    *v344 = *v9;
    *&v344[16] = v11;
    *&v344[32] = *(v9 + 32);
    v12 = *(v9 + 56);
    *&v344[48] = *(v9 + 48);
    *&v344[56] = v12;
    v345 = &v344[8];
    v346 = &v347;
    v347 = 0;
    v348 = 0;
    if (v12)
    {
      atomic_fetch_add((v12 + 20), 1u);
      if (*(v9 + 4) <= 2)
      {
LABEL_5:
        v13 = *(v9 + 72);
        v14 = v346;
        *v346 = *v13;
        v14[1] = v13[1];
LABEL_10:
        if (*&v353[56] && atomic_fetch_add((*&v353[56] + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(v353);
        }

        if (*&v353[4] >= 1)
        {
          v15 = 0;
          v16 = v354;
          do
          {
            v16[v15++] = 0;
          }

          while (v15 < *&v353[4]);
        }

        *v353 = *v344;
        *&v353[16] = *&v344[16];
        *&v353[32] = *&v344[32];
        *&v353[48] = *&v344[48];
        v17 = v355;
        if (v355 == v356)
        {
          v18 = v346;
          if (*&v344[4] <= 2)
          {
            goto LABEL_18;
          }
        }

        else
        {
          j__free(v355);
          v354 = &v353[8];
          v355 = v356;
          v17 = v356;
          v18 = v346;
          if (*&v344[4] <= 2)
          {
LABEL_18:
            *v17 = *v18;
            v17[1] = v18[1];
            goto LABEL_21;
          }
        }

        v354 = v345;
        v355 = v18;
        v345 = &v344[8];
        v346 = &v347;
LABEL_21:
        *v344 = 1124007936;
        memset(&v344[4], 0, 60);
        if (v346 != &v347)
        {
          j__free(v346);
        }

        goto LABEL_23;
      }
    }

    else if (SDWORD1(v10) <= 2)
    {
      goto LABEL_5;
    }

    *&v344[4] = 0;
    sub_100269B58(v344, v9);
    goto LABEL_10;
  }

  *v344 = 33619968;
  *&v344[8] = v353;
  *&v344[16] = 0;
  sub_100274944(a1, v344);
LABEL_23:
  v19 = v8 & 7;
  v20 = *v354;
  v21 = v354[1];
  if (v19 > 5 || ((1 << v19) & 0x25) == 0)
  {
    *v344 = 0uLL;
    qmemcpy(sub_1002A80E0(v344, 38), "depth == 0 || depth == 2 || depth == 5", 38);
    sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11073);
  }

  v22 = (v8 >> 3) & 0x1FF;
  v23 = v22 + 1;
  switch(a3)
  {
    case 0u:
    case 1u:
    case 2u:
    case 3u:
    case 4u:
    case 5u:
      if ((v8 & 0xFF0) != 0x10)
      {
        *v344 = 0uLL;
        v46 = sub_1002A80E0(v344, 20);
        *(v46 + 16) = 874528061;
        *v46 = *"scn == 3 || scn == 4";
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11079);
      }

      if ((a3 & 0xFFFFFFFD) == 0 || a3 == 5)
      {
        v48 = 4;
      }

      else
      {
        v48 = 3;
      }

      *v344 = v354[1];
      *&v344[4] = v20;
      sub_100275370(a2, v344, (v19 | (8 * v48)) - 8, -1, 0, 0);
      if (sub_100271148(a2) == 0x10000)
      {
        v49 = *(a2 + 8);
        v50 = *v49;
        v51 = *(v49 + 16);
        *v344 = *v49;
        *&v344[16] = v51;
        *&v344[32] = *(v49 + 32);
        v52 = *(v49 + 56);
        *&v344[48] = *(v49 + 48);
        *&v344[56] = v52;
        v345 = &v344[8];
        v346 = &v347;
        v347 = 0;
        v348 = 0;
        if (v52)
        {
          atomic_fetch_add((v52 + 20), 1u);
          v53 = *(v49 + 4);
        }

        else
        {
          v53 = DWORD1(v50);
        }

        if (v53 > 2)
        {
          *&v344[4] = 0;
          sub_100269B58(v344, v49);
        }

        else
        {
          v255 = *(v49 + 72);
          v256 = v346;
          *v346 = *v255;
          v256[1] = v255[1];
        }
      }

      else
      {
        sub_1002703C0(a2, -1, v344);
      }

      if (*&v349[56] && atomic_fetch_add((*&v349[56] + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(v349);
      }

      if (*&v349[4] >= 1)
      {
        v257 = 0;
        v258 = v350;
        do
        {
          *&v258[4 * v257++] = 0;
        }

        while (v257 < *&v349[4]);
      }

      *v349 = *v344;
      *&v349[16] = *&v344[16];
      *&v349[32] = *&v344[32];
      *&v349[48] = *&v344[48];
      v259 = v351;
      if (v351 == v352)
      {
        v260 = v346;
        v342 = v23;
        if (*&v344[4] <= 2)
        {
          goto LABEL_412;
        }
      }

      else
      {
        j__free(v351);
        v350 = &v349[8];
        v351 = v352;
        v259 = v352;
        v260 = v346;
        v342 = v23;
        if (*&v344[4] <= 2)
        {
LABEL_412:
          *v259 = *v260;
          v259[1] = v260[1];
          goto LABEL_415;
        }
      }

      v350 = v345;
      v351 = v260;
      v345 = &v344[8];
      v346 = &v347;
LABEL_415:
      v261 = v48;
      *v344 = 1124007936;
      memset(&v344[4], 0, 60);
      if (v346 != &v347)
      {
        j__free(v346);
      }

      v262 = *&v353[16];
      v263 = v356[0];
      v264 = *&v349[16];
      v265 = v352[0];
      v267 = *&v353[8];
      v266 = *&v353[12];
      v268 = sub_1002D5FB0();
      sub_1002CE920(v262, v263, v264, v265, v266, v267, v19, v342, v261, v268);
      goto LABEL_534;
    case 6u:
    case 7u:
    case 0xAu:
    case 0xBu:
      if ((v8 & 0xFF0) != 0x10)
      {
        sub_1001FA81C(v344, "scn == 3 || scn == 4");
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11111);
      }

      *v344 = v354[1];
      *&v344[4] = v20;
      sub_100275370(a2, v344, v8 & 7, -1, 0, 0);
      if (sub_100271148(a2) == 0x10000)
      {
        v59 = *(a2 + 8);
        v60 = *v59;
        v61 = *(v59 + 16);
        *v344 = *v59;
        *&v344[16] = v61;
        *&v344[32] = *(v59 + 32);
        v62 = *(v59 + 56);
        *&v344[48] = *(v59 + 48);
        *&v344[56] = v62;
        v345 = &v344[8];
        v346 = &v347;
        v347 = 0;
        v348 = 0;
        if (v62)
        {
          atomic_fetch_add((v62 + 20), 1u);
          v63 = *(v59 + 4);
        }

        else
        {
          v63 = DWORD1(v60);
        }

        if (v63 > 2)
        {
          *&v344[4] = 0;
          sub_100269B58(v344, v59);
        }

        else
        {
          v309 = *(v59 + 72);
          v310 = v346;
          *v346 = *v309;
          v310[1] = v309[1];
        }
      }

      else
      {
        sub_1002703C0(a2, -1, v344);
      }

      if (*&v349[56] && atomic_fetch_add((*&v349[56] + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(v349);
      }

      if (*&v349[4] >= 1)
      {
        v311 = 0;
        v312 = v350;
        do
        {
          *&v312[4 * v311++] = 0;
        }

        while (v311 < *&v349[4]);
      }

      *v349 = *v344;
      *&v349[16] = *&v344[16];
      *&v349[32] = *&v344[32];
      *&v349[48] = *&v344[48];
      v313 = v351;
      if (v351 != v352)
      {
        j__free(v351);
        v350 = &v349[8];
        v351 = v352;
        v313 = v352;
      }

      v314 = v346;
      if (*&v344[4] > 2)
      {
        v350 = v345;
        v351 = v346;
        v345 = &v344[8];
        v346 = &v347;
      }

      else
      {
        *v313 = *v346;
        v313[1] = v314[1];
      }

      *v344 = 1124007936;
      memset(&v344[4], 0, 60);
      if (v346 != &v347)
      {
        j__free(v346);
      }

      v315 = *&v353[16];
      v316 = v356[0];
      v317 = *&v349[16];
      v318 = v352[0];
      v320 = *&v353[8];
      v319 = *&v353[12];
      v321 = sub_1002D5FB0();
      sub_1002CEDA0(v315, v316, v317, v318, v319, v320, v19, v23, v321);
      goto LABEL_534;
    case 8u:
    case 9u:
      if (a3 == 9)
      {
        v116 = 4;
      }

      else
      {
        v116 = 3;
      }

      if (a4 >= 1)
      {
        v117 = a4;
      }

      else
      {
        v117 = v116;
      }

      if (v22 || (v117 - 3) >= 2)
      {
        sub_1001FA81C(v344, "scn == 1 && (dcn == 3 || dcn == 4)");
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11128);
      }

      *v344 = v354[1];
      *&v344[4] = v20;
      sub_100275370(a2, v344, (v19 | (8 * v117)) - 8, -1, 0, 0);
      sub_10026E0C8(a2, -1, v344);
      sub_10025DAEC(v349, v344, v118);
      sub_100006D14(v344);
      sub_1002CF0B8(*&v353[16], v356[0], *&v349[16], v352[0], *&v353[12], *&v353[8], v8 & 7, v117);
      goto LABEL_534;
    case 0xCu:
    case 0xDu:
    case 0x10u:
    case 0x11u:
    case 0x16u:
    case 0x17u:
    case 0x1Au:
    case 0x1Bu:
      if ((v8 & 0xFF7) != 0x10)
      {
        *v344 = 0uLL;
        qmemcpy(sub_1002A80E0(v344, 36), "(scn == 3 || scn == 4) && depth == 0", 36);
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11089);
      }

      if (a3 <= 0x10 && ((1 << a3) & 0x13000) != 0)
      {
        v29 = 6;
      }

      else if (a3 == 17)
      {
        v29 = 6;
      }

      else
      {
        v29 = 5;
      }

      *v344 = v354[1];
      *&v344[4] = v20;
      sub_100275370(a2, v344, 8, -1, 0, 0);
      if (sub_100271148(a2) == 0x10000)
      {
        v127 = *(a2 + 8);
        v128 = *v127;
        v129 = *(v127 + 16);
        *v344 = *v127;
        *&v344[16] = v129;
        *&v344[32] = *(v127 + 32);
        v130 = *(v127 + 56);
        *&v344[48] = *(v127 + 48);
        *&v344[56] = v130;
        v345 = &v344[8];
        v346 = &v347;
        v347 = 0;
        v348 = 0;
        if (v130)
        {
          atomic_fetch_add((v130 + 20), 1u);
          v131 = *(v127 + 4);
        }

        else
        {
          v131 = DWORD1(v128);
        }

        if (v131 <= 2)
        {
          v149 = *(v127 + 72);
          v150 = v346;
          *v346 = *v149;
          v150[1] = v149[1];
          v132 = *&v349[56];
          if (!*&v349[56])
          {
            goto LABEL_268;
          }

LABEL_266:
          if (atomic_fetch_add((v132 + 20), 0xFFFFFFFF) == 1)
          {
            sub_100269BC8(v349);
          }

LABEL_268:
          if (*&v349[4] >= 1)
          {
            v151 = 0;
            v152 = v350;
            do
            {
              *&v152[4 * v151++] = 0;
            }

            while (v151 < *&v349[4]);
          }

          *v349 = *v344;
          *&v349[16] = *&v344[16];
          *&v349[32] = *&v344[32];
          *&v349[48] = *&v344[48];
          v153 = v351;
          if (v351 == v352)
          {
            v154 = v346;
            v341 = v23;
            if (*&v344[4] <= 2)
            {
              goto LABEL_273;
            }
          }

          else
          {
            j__free(v351);
            v350 = &v349[8];
            v351 = v352;
            v153 = v352;
            v154 = v346;
            v341 = v23;
            if (*&v344[4] <= 2)
            {
LABEL_273:
              *v153 = *v154;
              v153[1] = v154[1];
LABEL_276:
              v155 = v29;
              *v344 = 1124007936;
              memset(&v344[4], 0, 60);
              if (v346 != &v347)
              {
                j__free(v346);
              }

              v156 = *&v353[16];
              v157 = v356[0];
              v158 = *&v349[16];
              v159 = v352[0];
              v161 = *&v353[8];
              v160 = *&v353[12];
              v162 = sub_1002D5FB0();
              sub_1002CEB40(v156, v157, v158, v159, v160, v161, v341, v162, v155);
              goto LABEL_534;
            }
          }

          v350 = v345;
          v351 = v154;
          v345 = &v344[8];
          v346 = &v347;
          goto LABEL_276;
        }

        *&v344[4] = 0;
        sub_100269B58(v344, v127);
      }

      else
      {
        sub_1002703C0(a2, -1, v344);
      }

      v132 = *&v349[56];
      if (!*&v349[56])
      {
        goto LABEL_268;
      }

      goto LABEL_266;
    case 0xEu:
    case 0xFu:
    case 0x12u:
    case 0x13u:
    case 0x18u:
    case 0x19u:
    case 0x1Cu:
    case 0x1Du:
      if (a4 <= 0)
      {
        if (a3 <= 0x1C && ((1 << a3) & 0x100C0000) != 0)
        {
          a4 = 4;
        }

        else if (a3 == 29)
        {
          a4 = 4;
        }

        else
        {
          a4 = 3;
        }
      }

      if ((v8 & 7) != 0 || (a4 - 3) > 1 || v22 != 1)
      {
        *v344 = 0uLL;
        qmemcpy(sub_1002A80E0(v344, 48), "(dcn == 3 || dcn == 4) && scn == 2 && depth == 0", 48);
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11101);
      }

      if (a3 <= 0x12 && ((1 << a3) & 0x4C000) != 0)
      {
        v275 = 6;
      }

      else if (a3 == 19)
      {
        v275 = 6;
      }

      else
      {
        v275 = 5;
      }

      *v344 = v354[1];
      *&v344[4] = v20;
      sub_100275370(a2, v344, 8 * a4 - 8, -1, 0, 0);
      if (sub_100271148(a2) != 0x10000)
      {
        sub_1002703C0(a2, -1, v344);
        goto LABEL_461;
      }

      v276 = *(a2 + 8);
      v277 = *v276;
      v278 = *(v276 + 16);
      *v344 = *v276;
      *&v344[16] = v278;
      *&v344[32] = *(v276 + 32);
      v279 = *(v276 + 56);
      *&v344[48] = *(v276 + 48);
      *&v344[56] = v279;
      v345 = &v344[8];
      v346 = &v347;
      v347 = 0;
      v348 = 0;
      if (v279)
      {
        atomic_fetch_add((v279 + 20), 1u);
        v280 = *(v276 + 4);
      }

      else
      {
        v280 = DWORD1(v277);
      }

      if (v280 > 2)
      {
        *&v344[4] = 0;
        sub_100269B58(v344, v276);
LABEL_461:
        v281 = *&v349[56];
        if (!*&v349[56])
        {
          goto LABEL_468;
        }

        goto LABEL_466;
      }

      v282 = *(v276 + 72);
      v283 = v346;
      *v346 = *v282;
      v283[1] = v282[1];
      v281 = *&v349[56];
      if (!*&v349[56])
      {
        goto LABEL_468;
      }

LABEL_466:
      if (atomic_fetch_add((v281 + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(v349);
      }

LABEL_468:
      if (*&v349[4] >= 1)
      {
        v284 = 0;
        v285 = v350;
        do
        {
          *&v285[4 * v284++] = 0;
        }

        while (v284 < *&v349[4]);
      }

      *v349 = *v344;
      *&v349[16] = *&v344[16];
      *&v349[32] = *&v344[32];
      *&v349[48] = *&v344[48];
      v286 = v351;
      if (v351 != v352)
      {
        j__free(v351);
        v350 = &v349[8];
        v351 = v352;
        v286 = v352;
      }

      v287 = v346;
      if (*&v344[4] > 2)
      {
        v350 = v345;
        v351 = v346;
        v345 = &v344[8];
        v346 = &v347;
      }

      else
      {
        *v286 = *v346;
        v286[1] = v287[1];
      }

      v288 = v275;
      *v344 = 1124007936;
      memset(&v344[4], 0, 60);
      if (v346 != &v347)
      {
        j__free(v346);
      }

      v289 = *&v353[16];
      v290 = v356[0];
      v291 = *&v349[16];
      v292 = v352[0];
      v294 = *&v353[8];
      v293 = *&v353[12];
      v295 = sub_1002D5FB0();
      sub_1002CEC70(v289, v290, v291, v292, v293, v294, a4, v295, v288);
LABEL_534:
      if (*&v349[56] && atomic_fetch_add((*&v349[56] + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(v349);
      }

      *&v349[56] = 0;
      memset(&v349[16], 0, 32);
      if (*&v349[4] >= 1)
      {
        v335 = 0;
        v336 = v350;
        do
        {
          *&v336[4 * v335++] = 0;
        }

        while (v335 < *&v349[4]);
      }

      if (v351 != v352)
      {
        j__free(v351);
      }

      if (*&v353[56] && atomic_fetch_add((*&v353[56] + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(v353);
      }

      *&v353[56] = 0;
      memset(&v353[16], 0, 32);
      if (*&v353[4] >= 1)
      {
        v337 = 0;
        v338 = v354;
        do
        {
          v338[v337++] = 0;
        }

        while (v337 < *&v353[4]);
      }

      if (v355 != v356)
      {
        j__free(v355);
      }

      if (v358)
      {
        sub_1002ACC1C(v357);
      }

      return;
    case 0x14u:
    case 0x1Eu:
      if (v22 | v19)
      {
        sub_1001FA81C(v344, "scn == 1 && depth == 0");
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11135);
      }

      if (a3 == 20)
      {
        v112 = 6;
      }

      else
      {
        v112 = 5;
      }

      *v344 = v354[1];
      *&v344[4] = v20;
      sub_100275370(a2, v344, 8, -1, 0, 0);
      sub_10026E0C8(a2, -1, v344);
      sub_10025DAEC(v349, v344, v113);
      sub_100006D14(v344);
      sub_1002CF38C(*&v353[16], v356[0], *&v349[16], v352[0], *&v353[12], *&v353[8], v112);
      goto LABEL_534;
    case 0x15u:
    case 0x1Fu:
      if ((v8 & 7) != 0 || v22 != 1)
      {
        sub_1001FA81C(v344, "scn == 2 && depth == 0");
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11119);
      }

      if (a3 == 21)
      {
        v114 = 6;
      }

      else
      {
        v114 = 5;
      }

      *v344 = v354[1];
      *&v344[4] = v20;
      sub_100275370(a2, v344, 0, -1, 0, 0);
      sub_10026E0C8(a2, -1, v344);
      sub_10025DAEC(v349, v344, v115);
      sub_100006D14(v344);
      sub_1002CF268(*&v353[16], v356[0], *&v349[16], v352[0], *&v353[12], *&v353[8], v114);
      goto LABEL_534;
    case 0x20u:
    case 0x21u:
      if ((v8 & 0xFF0) != 0x10)
      {
        sub_1001FA81C(v344, "scn == 3 || scn == 4");
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11162);
      }

      *v344 = v354[1];
      *&v344[4] = v20;
      sub_100275370(a2, v344, v19 | 0x10, -1, 0, 0);
      sub_10026E0C8(a2, -1, v344);
      sub_10025DAEC(v349, v344, v119);
      sub_100006D14(v344);
      v120 = *&v353[16];
      v121 = v356[0];
      v122 = *&v349[16];
      v123 = v352[0];
      v125 = *&v353[8];
      v124 = *&v353[12];
      v126 = sub_1002D5FB0();
      sub_1002CFB08(v120, v121, v122, v123, v124, v125, v19, v23, v126);
      goto LABEL_534;
    case 0x22u:
    case 0x23u:
      if (a4 < 1)
      {
        a4 = 3;
      }

      if (v22 != 2 || (a4 - 3) >= 2)
      {
        sub_1001FA81C(v344, "scn == 3 && (dcn == 3 || dcn == 4)");
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11170);
      }

      *v344 = v354[1];
      *&v344[4] = v20;
      sub_100275370(a2, v344, (v19 | (8 * a4)) - 8, -1, 0, 0);
      sub_10026E0C8(a2, -1, v344);
      sub_10025DAEC(v349, v344, v104);
      sub_100006D14(v344);
      v105 = *&v353[16];
      v106 = v356[0];
      v107 = *&v349[16];
      v108 = v352[0];
      v110 = *&v353[8];
      v109 = *&v353[12];
      v111 = sub_1002D5FB0();
      sub_1002CFF00(v105, v106, v107, v108, v109, v110, v19, a4, v111);
      goto LABEL_534;
    case 0x24u:
    case 0x25u:
    case 0x52u:
    case 0x53u:
      if ((v8 & 0xFF0) != 0x10)
      {
        sub_1001FA81C(v344, "scn == 3 || scn == 4");
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11144);
      }

      *v344 = v354[1];
      *&v344[4] = v20;
      sub_100275370(a2, v344, v19 | 0x10, -1, 0, 0);
      if (sub_100271148(a2) == 0x10000)
      {
        v54 = *(a2 + 8);
        v55 = *v54;
        v56 = *(v54 + 16);
        *v344 = *v54;
        *&v344[16] = v56;
        *&v344[32] = *(v54 + 32);
        v57 = *(v54 + 56);
        *&v344[48] = *(v54 + 48);
        *&v344[56] = v57;
        v345 = &v344[8];
        v346 = &v347;
        v347 = 0;
        v348 = 0;
        if (v57)
        {
          atomic_fetch_add((v57 + 20), 1u);
          v58 = *(v54 + 4);
        }

        else
        {
          v58 = DWORD1(v55);
        }

        if (v58 > 2)
        {
          *&v344[4] = 0;
          sub_100269B58(v344, v54);
        }

        else
        {
          v296 = *(v54 + 72);
          v297 = v346;
          *v346 = *v296;
          v297[1] = v296[1];
        }
      }

      else
      {
        sub_1002703C0(a2, -1, v344);
      }

      if (*&v349[56] && atomic_fetch_add((*&v349[56] + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(v349);
      }

      if (*&v349[4] >= 1)
      {
        v298 = 0;
        v299 = v350;
        do
        {
          *&v299[4 * v298++] = 0;
        }

        while (v298 < *&v349[4]);
      }

      *v349 = *v344;
      *&v349[16] = *&v344[16];
      *&v349[32] = *&v344[32];
      *&v349[48] = *&v344[48];
      v300 = v351;
      if (v351 != v352)
      {
        j__free(v351);
        v350 = &v349[8];
        v351 = v352;
        v300 = v352;
      }

      v301 = v346;
      if (*&v344[4] > 2)
      {
        v350 = v345;
        v351 = v346;
        v345 = &v344[8];
        v346 = &v347;
      }

      else
      {
        *v300 = *v346;
        v300[1] = v301[1];
      }

      *v344 = 1124007936;
      memset(&v344[4], 0, 60);
      if (v346 != &v347)
      {
        j__free(v346);
      }

      v302 = *&v353[16];
      v303 = v356[0];
      v304 = *&v349[16];
      v305 = v352[0];
      v307 = *&v353[8];
      v306 = *&v353[12];
      v308 = sub_1002D5FB0();
      sub_1002CF488(v302, v303, v304, v305, v306, v307, v19, v23, v308, (a3 & 0xFFFFFFFE) == 36);
      goto LABEL_534;
    case 0x26u:
    case 0x27u:
    case 0x54u:
    case 0x55u:
      if (a4 < 1)
      {
        a4 = 3;
      }

      if (v22 != 2 || (a4 - 3) >= 2)
      {
        sub_1001FA81C(v344, "scn == 3 && (dcn == 3 || dcn == 4)");
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11154);
      }

      *v344 = v354[1];
      *&v344[4] = v20;
      sub_100275370(a2, v344, (v19 | (8 * a4)) - 8, -1, 0, 0);
      if (sub_100271148(a2) == 0x10000)
      {
        v64 = *(a2 + 8);
        v65 = *v64;
        v66 = *(v64 + 16);
        *v344 = *v64;
        *&v344[16] = v66;
        *&v344[32] = *(v64 + 32);
        v67 = *(v64 + 56);
        *&v344[48] = *(v64 + 48);
        *&v344[56] = v67;
        v345 = &v344[8];
        v346 = &v347;
        v347 = 0;
        v348 = 0;
        if (v67)
        {
          atomic_fetch_add((v67 + 20), 1u);
          v68 = *(v64 + 4);
        }

        else
        {
          v68 = DWORD1(v65);
        }

        if (v68 > 2)
        {
          *&v344[4] = 0;
          sub_100269B58(v344, v64);
        }

        else
        {
          v322 = *(v64 + 72);
          v323 = v346;
          *v346 = *v322;
          v323[1] = v322[1];
        }
      }

      else
      {
        sub_1002703C0(a2, -1, v344);
      }

      if (*&v349[56] && atomic_fetch_add((*&v349[56] + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(v349);
      }

      if (*&v349[4] >= 1)
      {
        v324 = 0;
        v325 = v350;
        do
        {
          *&v325[4 * v324++] = 0;
        }

        while (v324 < *&v349[4]);
      }

      *v349 = *v344;
      *&v349[16] = *&v344[16];
      *&v349[32] = *&v344[32];
      *&v349[48] = *&v344[48];
      v326 = v351;
      if (v351 != v352)
      {
        j__free(v351);
        v350 = &v349[8];
        v351 = v352;
        v326 = v352;
      }

      v327 = v346;
      if (*&v344[4] > 2)
      {
        v350 = v345;
        v351 = v346;
        v345 = &v344[8];
        v346 = &v347;
      }

      else
      {
        *v326 = *v346;
        v326[1] = v327[1];
      }

      *v344 = 1124007936;
      memset(&v344[4], 0, 60);
      if (v346 != &v347)
      {
        j__free(v346);
      }

      v328 = *&v353[16];
      v329 = v356[0];
      v330 = *&v349[16];
      v331 = v352[0];
      v333 = *&v353[8];
      v332 = *&v353[12];
      v334 = sub_1002D5FB0();
      sub_1002CF7DC(v328, v329, v330, v331, v332, v333, v19, a4, v334, (a3 & 0xFFFFFFFE) == 38);
      goto LABEL_534;
    case 0x28u:
    case 0x29u:
    case 0x34u:
    case 0x35u:
    case 0x42u:
    case 0x43u:
    case 0x44u:
    case 0x45u:
      if ((v8 & 0xFF0) != 0x10 || (v8 & 7) != 0 && v19 != 5)
      {
        *v344 = 0uLL;
        qmemcpy(sub_1002A80E0(v344, 52), "(scn == 3 || scn == 4) && (depth == 0 || depth == 5)", 52);
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11178);
      }

      *v344 = v354[1];
      *&v344[4] = v20;
      sub_100275370(a2, v344, v19 | 0x10, -1, 0, 0);
      if (sub_100271148(a2) == 0x10000)
      {
        v35 = *(a2 + 8);
        v36 = *v35;
        v37 = *(v35 + 16);
        *v344 = *v35;
        *&v344[16] = v37;
        *&v344[32] = *(v35 + 32);
        v38 = *(v35 + 56);
        *&v344[48] = *(v35 + 48);
        *&v344[56] = v38;
        v345 = &v344[8];
        v346 = &v347;
        v347 = 0;
        v348 = 0;
        if (v38)
        {
          atomic_fetch_add((v38 + 20), 1u);
          v39 = *(v35 + 4);
        }

        else
        {
          v39 = DWORD1(v36);
        }

        if (v39 <= 2)
        {
          v189 = *(v35 + 72);
          v190 = v346;
          *v346 = *v189;
          v190[1] = v189[1];
          v71 = *&v349[56];
          if (!*&v349[56])
          {
            goto LABEL_319;
          }

LABEL_317:
          if (atomic_fetch_add((v71 + 20), 0xFFFFFFFF) == 1)
          {
            sub_100269BC8(v349);
          }

LABEL_319:
          if (*&v349[4] >= 1)
          {
            v191 = 0;
            v192 = v350;
            do
            {
              *&v192[4 * v191++] = 0;
            }

            while (v191 < *&v349[4]);
          }

          *v349 = *v344;
          *&v349[16] = *&v344[16];
          *&v349[32] = *&v344[32];
          *&v349[48] = *&v344[48];
          v193 = v351;
          if (v351 == v352)
          {
            v194 = v346;
            if (*&v344[4] <= 2)
            {
              goto LABEL_324;
            }
          }

          else
          {
            j__free(v351);
            v350 = &v349[8];
            v351 = v352;
            v193 = v352;
            v194 = v346;
            if (*&v344[4] <= 2)
            {
LABEL_324:
              *v193 = *v194;
              v193[1] = v194[1];
LABEL_327:
              *v344 = 1124007936;
              memset(&v344[4], 0, 60);
              if (v346 != &v347)
              {
                j__free(v346);
              }

              v195 = *&v353[16];
              v196 = v356[0];
              v197 = *&v349[16];
              v198 = v352[0];
              v200 = *&v353[8];
              v199 = *&v353[12];
              v201 = sub_1002D5FB0();
              sub_1002D02C4(v195, v196, v197, v198, v199, v200, v19, v23, v201, a3 - 66 < 8, (a3 - 40 < 0x20) & (0xCC00C003 >> (a3 - 40)));
              goto LABEL_534;
            }
          }

          v350 = v345;
          v351 = v194;
          v345 = &v344[8];
          v346 = &v347;
          goto LABEL_327;
        }

        *&v344[4] = 0;
        sub_100269B58(v344, v35);
      }

      else
      {
        sub_1002703C0(a2, -1, v344);
      }

      v71 = *&v349[56];
      if (!*&v349[56])
      {
        goto LABEL_319;
      }

      goto LABEL_317;
    case 0x2Cu:
    case 0x2Du:
    case 0x32u:
    case 0x33u:
    case 0x4Au:
    case 0x4Bu:
    case 0x4Cu:
    case 0x4Du:
      if ((v8 & 0xFF0) != 0x10 || (v8 & 7) != 0 && v19 != 5)
      {
        *v344 = 0uLL;
        qmemcpy(sub_1002A80E0(v344, 52), "(scn == 3 || scn == 4) && (depth == 0 || depth == 5)", 52);
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11197);
      }

      *v344 = v354[1];
      *&v344[4] = v20;
      sub_100275370(a2, v344, v19 | 0x10, -1, 0, 0);
      if (sub_100271148(a2) == 0x10000)
      {
        v40 = *(a2 + 8);
        v41 = *v40;
        v42 = *(v40 + 16);
        *v344 = *v40;
        *&v344[16] = v42;
        *&v344[32] = *(v40 + 32);
        v43 = *(v40 + 56);
        *&v344[48] = *(v40 + 48);
        *&v344[56] = v43;
        v345 = &v344[8];
        v346 = &v347;
        v347 = 0;
        v348 = 0;
        if (v43)
        {
          atomic_fetch_add((v43 + 20), 1u);
          v44 = *(v40 + 4);
        }

        else
        {
          v44 = DWORD1(v41);
        }

        if (v44 <= 2)
        {
          v202 = *(v40 + 72);
          v203 = v346;
          *v346 = *v202;
          v203[1] = v202[1];
          v72 = *&v349[56];
          if (!*&v349[56])
          {
            goto LABEL_336;
          }

LABEL_334:
          if (atomic_fetch_add((v72 + 20), 0xFFFFFFFF) == 1)
          {
            sub_100269BC8(v349);
          }

LABEL_336:
          if (*&v349[4] >= 1)
          {
            v204 = 0;
            v205 = v350;
            do
            {
              *&v205[4 * v204++] = 0;
            }

            while (v204 < *&v349[4]);
          }

          *v349 = *v344;
          *&v349[16] = *&v344[16];
          *&v349[32] = *&v344[32];
          *&v349[48] = *&v344[48];
          v206 = v351;
          if (v351 == v352)
          {
            v207 = v346;
            if (*&v344[4] <= 2)
            {
              goto LABEL_341;
            }
          }

          else
          {
            j__free(v351);
            v350 = &v349[8];
            v351 = v352;
            v206 = v352;
            v207 = v346;
            if (*&v344[4] <= 2)
            {
LABEL_341:
              *v206 = *v207;
              v206[1] = v207[1];
LABEL_344:
              *v344 = 1124007936;
              memset(&v344[4], 0, 60);
              if (v346 != &v347)
              {
                j__free(v346);
              }

              v208 = *&v353[16];
              v209 = v356[0];
              v210 = *&v349[16];
              v211 = v352[0];
              v213 = *&v353[8];
              v212 = *&v353[12];
              v214 = sub_1002D5FB0();
              sub_1002D0900(v208, v209, v210, v211, v212, v213, v19, v23, v214, (a3 - 44 < 0x24) & (0xCC0003003uLL >> (a3 - 44)), (a3 < 0x3C) & (0xF0C300000000000uLL >> a3));
              goto LABEL_534;
            }
          }

          v350 = v345;
          v351 = v207;
          v345 = &v344[8];
          v346 = &v347;
          goto LABEL_344;
        }

        *&v344[4] = 0;
        sub_100269B58(v344, v40);
      }

      else
      {
        sub_1002703C0(a2, -1, v344);
      }

      v72 = *&v349[56];
      if (!*&v349[56])
      {
        goto LABEL_336;
      }

      goto LABEL_334;
    case 0x2Eu:
    case 0x2Fu:
    case 0x30u:
    case 0x31u:
    case 0x3Eu:
    case 0x3Fu:
    case 0x40u:
    case 0x41u:
    case 0x56u:
    case 0x57u:
    case 0x58u:
    case 0x59u:
    case 0x87u:
    case 0x88u:
    case 0x89u:
    case 0x8Au:
    case 0x8Bu:
    case 0x8Cu:
    case 0x8Du:
    case 0x8Eu:
      *v344 = 16842752;
      *&v344[8] = v353;
      *&v344[16] = 0;
      sub_1002F3120(v344, a2, a3, a4);
      goto LABEL_534;
    case 0x36u:
    case 0x37u:
    case 0x3Cu:
    case 0x3Du:
    case 0x46u:
    case 0x47u:
    case 0x48u:
    case 0x49u:
      if (a4 < 1)
      {
        a4 = 3;
      }

      if (v22 != 2 || (a4 - 3) > 1 || (v8 & 7) != 0 && v19 != 5)
      {
        *v344 = 0uLL;
        qmemcpy(sub_1002A80E0(v344, 64), "scn == 3 && (dcn == 3 || dcn == 4) && (depth == 0 || depth == 5)", 64);
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11188);
      }

      *v344 = v354[1];
      *&v344[4] = v20;
      sub_100275370(a2, v344, (v19 | (8 * a4)) - 8, -1, 0, 0);
      if (sub_100271148(a2) == 0x10000)
      {
        v30 = *(a2 + 8);
        v31 = *v30;
        v32 = *(v30 + 16);
        *v344 = *v30;
        *&v344[16] = v32;
        *&v344[32] = *(v30 + 32);
        v33 = *(v30 + 56);
        *&v344[48] = *(v30 + 48);
        *&v344[56] = v33;
        v345 = &v344[8];
        v346 = &v347;
        v347 = 0;
        v348 = 0;
        if (v33)
        {
          atomic_fetch_add((v33 + 20), 1u);
          v34 = *(v30 + 4);
        }

        else
        {
          v34 = DWORD1(v31);
        }

        if (v34 <= 2)
        {
          v176 = *(v30 + 72);
          v177 = v346;
          *v346 = *v176;
          v177[1] = v176[1];
          v70 = *&v349[56];
          if (!*&v349[56])
          {
            goto LABEL_302;
          }

LABEL_300:
          if (atomic_fetch_add((v70 + 20), 0xFFFFFFFF) == 1)
          {
            sub_100269BC8(v349);
          }

LABEL_302:
          if (*&v349[4] >= 1)
          {
            v178 = 0;
            v179 = v350;
            do
            {
              *&v179[4 * v178++] = 0;
            }

            while (v178 < *&v349[4]);
          }

          *v349 = *v344;
          *&v349[16] = *&v344[16];
          *&v349[32] = *&v344[32];
          *&v349[48] = *&v344[48];
          v180 = v351;
          if (v351 == v352)
          {
            v181 = v346;
            if (*&v344[4] <= 2)
            {
              goto LABEL_307;
            }
          }

          else
          {
            j__free(v351);
            v350 = &v349[8];
            v351 = v352;
            v180 = v352;
            v181 = v346;
            if (*&v344[4] <= 2)
            {
LABEL_307:
              *v180 = *v181;
              v180[1] = v181[1];
LABEL_310:
              *v344 = 1124007936;
              memset(&v344[4], 0, 60);
              if (v346 != &v347)
              {
                j__free(v346);
              }

              v182 = *&v353[16];
              v183 = v356[0];
              v184 = *&v349[16];
              v185 = v352[0];
              v187 = *&v353[8];
              v186 = *&v353[12];
              v188 = sub_1002D5FB0();
              sub_1002D05C8(v182, v183, v184, v185, v186, v187, v19, a4, v188, a3 - 66 < 8, (a3 - 40 < 0x20) & (0xCC00C003 >> (a3 - 40)));
              goto LABEL_534;
            }
          }

          v350 = v345;
          v351 = v181;
          v345 = &v344[8];
          v346 = &v347;
          goto LABEL_310;
        }

        *&v344[4] = 0;
        sub_100269B58(v344, v30);
      }

      else
      {
        sub_1002703C0(a2, -1, v344);
      }

      v70 = *&v349[56];
      if (!*&v349[56])
      {
        goto LABEL_302;
      }

      goto LABEL_300;
    case 0x38u:
    case 0x39u:
    case 0x3Au:
    case 0x3Bu:
    case 0x4Eu:
    case 0x4Fu:
    case 0x50u:
    case 0x51u:
      if (a4 < 1)
      {
        a4 = 3;
      }

      if (v22 != 2 || (a4 - 3) > 1 || (v8 & 7) != 0 && v19 != 5)
      {
        *v344 = 0uLL;
        qmemcpy(sub_1002A80E0(v344, 64), "scn == 3 && (dcn == 3 || dcn == 4) && (depth == 0 || depth == 5)", 64);
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11207);
      }

      *v344 = v354[1];
      *&v344[4] = v20;
      sub_100275370(a2, v344, (v19 | (8 * a4)) - 8, -1, 0, 0);
      if (sub_100271148(a2) == 0x10000)
      {
        v24 = *(a2 + 8);
        v25 = *v24;
        v26 = *(v24 + 16);
        *v344 = *v24;
        *&v344[16] = v26;
        *&v344[32] = *(v24 + 32);
        v27 = *(v24 + 56);
        *&v344[48] = *(v24 + 48);
        *&v344[56] = v27;
        v345 = &v344[8];
        v346 = &v347;
        v347 = 0;
        v348 = 0;
        if (v27)
        {
          atomic_fetch_add((v27 + 20), 1u);
          v28 = *(v24 + 4);
        }

        else
        {
          v28 = DWORD1(v25);
        }

        if (v28 <= 2)
        {
          v163 = *(v24 + 72);
          v164 = v346;
          *v346 = *v163;
          v164[1] = v163[1];
          v69 = *&v349[56];
          if (!*&v349[56])
          {
            goto LABEL_285;
          }

LABEL_283:
          if (atomic_fetch_add((v69 + 20), 0xFFFFFFFF) == 1)
          {
            sub_100269BC8(v349);
          }

LABEL_285:
          if (*&v349[4] >= 1)
          {
            v165 = 0;
            v166 = v350;
            do
            {
              *&v166[4 * v165++] = 0;
            }

            while (v165 < *&v349[4]);
          }

          *v349 = *v344;
          *&v349[16] = *&v344[16];
          *&v349[32] = *&v344[32];
          *&v349[48] = *&v344[48];
          v167 = v351;
          if (v351 == v352)
          {
            v168 = v346;
            if (*&v344[4] <= 2)
            {
              goto LABEL_290;
            }
          }

          else
          {
            j__free(v351);
            v350 = &v349[8];
            v351 = v352;
            v167 = v352;
            v168 = v346;
            if (*&v344[4] <= 2)
            {
LABEL_290:
              *v167 = *v168;
              v167[1] = v168[1];
LABEL_293:
              *v344 = 1124007936;
              memset(&v344[4], 0, 60);
              if (v346 != &v347)
              {
                j__free(v346);
              }

              v169 = *&v353[16];
              v170 = v356[0];
              v171 = *&v349[16];
              v172 = v352[0];
              v174 = *&v353[8];
              v173 = *&v353[12];
              v175 = sub_1002D5FB0();
              sub_1002D0C04(v169, v170, v171, v172, v173, v174, v19, a4, v175, (a3 - 44 < 0x24) & (0xCC0003003uLL >> (a3 - 44)), (a3 < 0x3C) & (0xF0C300000000000uLL >> a3));
              goto LABEL_534;
            }
          }

          v350 = v345;
          v351 = v168;
          v345 = &v344[8];
          v346 = &v347;
          goto LABEL_293;
        }

        *&v344[4] = 0;
        sub_100269B58(v344, v24);
      }

      else
      {
        sub_1002703C0(a2, -1, v344);
      }

      v69 = *&v349[56];
      if (!*&v349[56])
      {
        goto LABEL_285;
      }

      goto LABEL_283;
    case 0x5Au:
    case 0x5Bu:
    case 0x5Cu:
    case 0x5Du:
    case 0x5Eu:
    case 0x5Fu:
    case 0x60u:
    case 0x61u:
      if (a4 <= 0)
      {
        if (a3 - 95 >= 3)
        {
          if (a3 == 94)
          {
            a4 = 4;
          }

          else
          {
            a4 = 3;
          }
        }

        else
        {
          a4 = 4;
        }
      }

      if (a3 - 92 <= 5 && (v141 = 1, ((1 << (a3 - 92)) & 0x23) != 0))
      {
        if ((a4 - 3) >= 2)
        {
          goto LABEL_252;
        }
      }

      else
      {
        v141 = a3 == 96;
        if ((a4 - 3) >= 2)
        {
LABEL_252:
          *v344 = 0uLL;
          v142 = sub_1002A80E0(v344, 20);
          *(v142 + 16) = 874528061;
          *v142 = *"dcn == 3 || dcn == 4";
          sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11228);
        }
      }

      if ((v21 & 1) != 0 || (v20 % 3) | v19)
      {
        *v344 = 0uLL;
        qmemcpy(sub_1002A80E0(v344, 53), "sz.width % 2 == 0 && sz.height % 3 == 0 && depth == 0", 53);
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11229);
      }

      v340 = v141;
      *v344 = v354[1];
      *&v344[4] = 2 * v20 / 3;
      sub_100275370(a2, v344, (v19 | (8 * a4)) - 8, -1, 0, 0);
      if (sub_100271148(a2) == 0x10000)
      {
        v143 = *(a2 + 8);
        v144 = *v143;
        v145 = *(v143 + 16);
        *v344 = *v143;
        *&v344[16] = v145;
        *&v344[32] = *(v143 + 32);
        v146 = *(v143 + 56);
        *&v344[48] = *(v143 + 48);
        *&v344[56] = v146;
        v345 = &v344[8];
        v346 = &v347;
        v347 = 0;
        v348 = 0;
        if (v146)
        {
          atomic_fetch_add((v146 + 20), 1u);
          v147 = *(v143 + 4);
        }

        else
        {
          v147 = DWORD1(v144);
        }

        if (v147 <= 2)
        {
          v229 = *(v143 + 72);
          v230 = v346;
          *v346 = *v229;
          v230[1] = v229[1];
          v148 = *&v349[56];
          if (!*&v349[56])
          {
            goto LABEL_370;
          }

LABEL_368:
          if (atomic_fetch_add((v148 + 20), 0xFFFFFFFF) == 1)
          {
            sub_100269BC8(v349);
          }

LABEL_370:
          if (*&v349[4] >= 1)
          {
            v231 = 0;
            v232 = v350;
            do
            {
              *&v232[4 * v231++] = 0;
            }

            while (v231 < *&v349[4]);
          }

          *v349 = *v344;
          *&v349[16] = *&v344[16];
          *&v349[32] = *&v344[32];
          *&v349[48] = *&v344[48];
          v233 = v351;
          if (v351 == v352)
          {
            v234 = v346;
            if (*&v344[4] <= 2)
            {
              goto LABEL_375;
            }
          }

          else
          {
            j__free(v351);
            v350 = &v349[8];
            v351 = v352;
            v233 = v352;
            v234 = v346;
            if (*&v344[4] <= 2)
            {
LABEL_375:
              *v233 = *v234;
              v233[1] = v234[1];
LABEL_378:
              *v344 = 1124007936;
              memset(&v344[4], 0, 60);
              if (v346 != &v347)
              {
                j__free(v346);
              }

              v235 = *&v353[16];
              v236 = v356[0];
              v237 = *&v349[16];
              v238 = v352[0];
              v239 = *&v349[12];
              v240 = *&v349[8];
              sub_1002ACE7C(v344, &off_100477080);
              v241 = sub_1002D5FB0();
              sub_1002D0FB8(v235, v235 + v236 * v240, v236, v237, v238, v239, v240, a4, v241, v340);
              if (*&v344[8])
              {
                sub_1002ACC1C(v344);
              }

              goto LABEL_534;
            }
          }

          v350 = v345;
          v351 = v234;
          v345 = &v344[8];
          v346 = &v347;
          goto LABEL_378;
        }

        *&v344[4] = 0;
        sub_100269B58(v344, v143);
      }

      else
      {
        sub_1002703C0(a2, -1, v344);
      }

      v148 = *&v349[56];
      if (!*&v349[56])
      {
        goto LABEL_370;
      }

      goto LABEL_368;
    case 0x62u:
    case 0x63u:
    case 0x64u:
    case 0x65u:
    case 0x66u:
    case 0x67u:
    case 0x68u:
    case 0x69u:
      if (a4 <= 0)
      {
        if (a3 - 102 >= 3)
        {
          if (a3 == 105)
          {
            a4 = 4;
          }

          else
          {
            a4 = 3;
          }
        }

        else
        {
          a4 = 4;
        }
      }

      if (a3 - 98 <= 5 && (v133 = 1, ((1 << (a3 - 98)) & 0x23) != 0))
      {
        if ((a4 - 3) >= 2)
        {
          goto LABEL_235;
        }
      }

      else
      {
        v133 = a3 == 102;
        if ((a4 - 3) >= 2)
        {
LABEL_235:
          *v344 = 0uLL;
          v134 = sub_1002A80E0(v344, 20);
          *(v134 + 16) = 874528061;
          *v134 = *"dcn == 3 || dcn == 4";
          sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11241);
        }
      }

      if ((v21 & 1) != 0 || (v20 % 3) | v19)
      {
        *v344 = 0uLL;
        qmemcpy(sub_1002A80E0(v344, 53), "sz.width % 2 == 0 && sz.height % 3 == 0 && depth == 0", 53);
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11242);
      }

      *v344 = v354[1];
      *&v344[4] = 2 * v20 / 3;
      sub_100275370(a2, v344, (v19 | (8 * a4)) - 8, -1, 0, 0);
      if (sub_100271148(a2) == 0x10000)
      {
        v135 = *(a2 + 8);
        v136 = *v135;
        v137 = *(v135 + 16);
        *v344 = *v135;
        *&v344[16] = v137;
        *&v344[32] = *(v135 + 32);
        v138 = *(v135 + 56);
        *&v344[48] = *(v135 + 48);
        *&v344[56] = v138;
        v345 = &v344[8];
        v346 = &v347;
        v347 = 0;
        v348 = 0;
        if (v138)
        {
          atomic_fetch_add((v138 + 20), 1u);
          v139 = *(v135 + 4);
        }

        else
        {
          v139 = DWORD1(v136);
        }

        if (v139 <= 2)
        {
          v215 = *(v135 + 72);
          v216 = v346;
          *v346 = *v215;
          v216[1] = v215[1];
          v140 = *&v349[56];
          if (*&v349[56])
          {
LABEL_351:
            if (atomic_fetch_add((v140 + 20), 0xFFFFFFFF) == 1)
            {
              sub_100269BC8(v349);
            }
          }

LABEL_353:
          if (*&v349[4] >= 1)
          {
            v217 = 0;
            v218 = v350;
            do
            {
              *&v218[4 * v217++] = 0;
            }

            while (v217 < *&v349[4]);
          }

          *v349 = *v344;
          *&v349[16] = *&v344[16];
          *&v349[32] = *&v344[32];
          *&v349[48] = *&v344[48];
          v219 = v351;
          if (v351 != v352)
          {
            j__free(v351);
            v350 = &v349[8];
            v351 = v352;
            v219 = v352;
          }

          v220 = v346;
          if (*&v344[4] > 2)
          {
            v350 = v345;
            v351 = v346;
            v345 = &v344[8];
            v346 = &v347;
          }

          else
          {
            *v219 = *v346;
            v219[1] = v220[1];
          }

          v221 = v133;
          *v344 = 1124007936;
          memset(&v344[4], 0, 60);
          if (v346 != &v347)
          {
            j__free(v346);
          }

          v222 = *&v353[16];
          v223 = v356[0];
          v224 = *&v349[16];
          v225 = v352[0];
          v227 = *&v349[8];
          v226 = *&v349[12];
          v228 = sub_1002D5FB0();
          sub_1002D155C(v222, v223, v224, v225, v226, v227, a4, v228, v221);
          goto LABEL_534;
        }

        *&v344[4] = 0;
        sub_100269B58(v344, v135);
      }

      else
      {
        sub_1002703C0(a2, -1, v344);
      }

      v140 = *&v349[56];
      if (*&v349[56])
      {
        goto LABEL_351;
      }

      goto LABEL_353;
    case 0x6Au:
      if (a4 <= 1)
      {
        v269 = 1;
      }

      else
      {
        v269 = a4;
      }

      if (a4 >= 2)
      {
        sub_1001FA81C(v344, "dcn == 1");
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11253);
      }

      if ((v21 & 1) != 0 || (v20 % 3) | v19)
      {
        sub_1001FA81C(v344, "sz.width % 2 == 0 && sz.height % 3 == 0 && depth == 0");
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11254);
      }

      *v344 = v354[1];
      *&v344[4] = 2 * v20 / 3;
      sub_100275370(a2, v344, (v19 | (8 * v269)) - 8, -1, 0, 0);
      sub_10026E0C8(a2, -1, v344);
      sub_10025DAEC(v349, v344, v270);
      sub_100006D14(v344);
      v343[0] = (2 * v20 / 3) << 32;
      v359[0] = 0x7FFFFFFF80000000;
      sub_10026A3FC(v344, v353, v343, v359);
      LODWORD(v343[0]) = 33619968;
      v343[1] = v349;
      v343[2] = 0;
      sub_10022B754(v344, v343);
      sub_100006D14(v344);
      goto LABEL_534;
    case 0x6Bu:
    case 0x6Cu:
    case 0x6Fu:
    case 0x70u:
    case 0x73u:
    case 0x74u:
    case 0x75u:
    case 0x76u:
    case 0x77u:
    case 0x78u:
    case 0x79u:
    case 0x7Au:
      if (a4 <= 0)
      {
        if (a3 - 111 < 0xB && ((0x703u >> (a3 - 111)) & 1) != 0)
        {
          a4 = 4;
        }

        else if (a3 == 122)
        {
          a4 = 4;
        }

        else
        {
          a4 = 3;
        }
      }

      if (a3 - 107 <= 4 && (v73 = 1, ((1 << (a3 - 107)) & 0x13) != 0))
      {
        v74 = a3 - 117;
        if (a3 - 117 > 4)
        {
          goto LABEL_139;
        }
      }

      else
      {
        v73 = a3 == 112;
        v74 = a3 - 117;
        if (a3 - 117 > 4)
        {
          goto LABEL_139;
        }
      }

      v75 = 1;
      if (((1 << v74) & 0x13) != 0)
      {
        if ((a4 - 3) >= 2)
        {
          goto LABEL_137;
        }

        goto LABEL_140;
      }

LABEL_139:
      v75 = a3 == 122;
      if ((a4 - 3) >= 2)
      {
LABEL_137:
        *v344 = 0uLL;
        v76 = sub_1002A80E0(v344, 20);
        *(v76 + 16) = 874528061;
        *v76 = *"dcn == 3 || dcn == 4";
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11290);
      }

LABEL_140:
      if (v19 || v23 != 2)
      {
        *v344 = 0uLL;
        qmemcpy(sub_1002A80E0(v344, 22), "scn == 2 && depth == 0", 22);
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11291);
      }

      *v344 = v354[1];
      *&v344[4] = v20;
      sub_100275370(a2, v344, 8 * a4 - 8, -1, 0, 0);
      if (sub_100271148(a2) == 0x10000)
      {
        v77 = *(a2 + 8);
        v78 = *v77;
        v79 = *(v77 + 16);
        *v344 = *v77;
        *&v344[16] = v79;
        *&v344[32] = *(v77 + 32);
        v80 = *(v77 + 56);
        *&v344[48] = *(v77 + 48);
        *&v344[56] = v80;
        v345 = &v344[8];
        v346 = &v347;
        v347 = 0;
        v348 = 0;
        if (v80)
        {
          atomic_fetch_add((v80 + 20), 1u);
          if (*(v77 + 4) <= 2)
          {
LABEL_146:
            v81 = *(v77 + 72);
            v82 = v346;
            *v346 = *v81;
            v82[1] = v81[1];
            goto LABEL_151;
          }
        }

        else if (SDWORD1(v78) <= 2)
        {
          goto LABEL_146;
        }

        *&v344[4] = 0;
        sub_100269B58(v344, v77);
      }

      else
      {
        sub_1002703C0(a2, -1, v344);
      }

LABEL_151:
      if (*&v349[56] && atomic_fetch_add((*&v349[56] + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(v349);
      }

      if (*&v349[4] >= 1)
      {
        v83 = 0;
        v84 = v350;
        do
        {
          *&v84[4 * v83++] = 0;
        }

        while (v83 < *&v349[4]);
      }

      *v349 = *v344;
      *&v349[16] = *&v344[16];
      *&v349[32] = *&v344[32];
      *&v349[48] = *&v344[48];
      v85 = v351;
      if (v351 != v352)
      {
        j__free(v351);
        v350 = &v349[8];
        v351 = v352;
        v85 = v352;
      }

      v86 = v346;
      v87 = a4;
      if (*&v344[4] > 2)
      {
        v350 = v345;
        v351 = v346;
        v345 = &v344[8];
        v346 = &v347;
      }

      else
      {
        *v85 = *v346;
        v85[1] = v86[1];
      }

      v88 = v75;
      v89 = v73;
      *v344 = 1124007936;
      memset(&v344[4], 0, 60);
      if (v346 != &v347)
      {
        j__free(v346);
      }

      v90 = *&v353[16];
      v91 = v356[0];
      v92 = *&v349[16];
      v93 = v352[0];
      v95 = *&v353[8];
      v94 = *&v353[12];
      v96 = sub_1002D5FB0();
      sub_1002D1A80(v90, v91, v92, v93, v94, v95, v87, v96, v88, v89);
      goto LABEL_534;
    case 0x7Bu:
    case 0x7Cu:
      if (a4 >= 2)
      {
        sub_1001FA81C(v344, "dcn == 1");
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11301);
      }

      if ((v8 & 7) != 0 || v22 != 1)
      {
        sub_1001FA81C(v344, "scn == 2 && depth == 0");
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11302);
      }

      sub_100269498(v353);
      sub_100200C20(a1, a2, a3 == 123);
      goto LABEL_534;
    case 0x7Du:
      if (a4 >= 1)
      {
        v271 = a4;
      }

      else
      {
        v271 = 4;
      }

      if ((v8 & 7) != 0 || v271 != 4 || v22 != 3)
      {
        sub_1001FA81C(v344, "scn == 4 && dcn == 4 && depth == 0");
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11310);
      }

      *v344 = v354[1];
      *&v344[4] = v20;
      sub_100275370(a2, v344, 24, -1, 0, 0);
      sub_10026E0C8(a2, -1, v344);
      sub_10025DAEC(v349, v344, v272);
      sub_100006D14(v344);
      sub_1002D21C8(*&v353[16], v356[0], *&v349[16], v352[0], *&v353[12], *&v353[8]);
      goto LABEL_534;
    case 0x7Eu:
      if (a4 >= 1)
      {
        v273 = a4;
      }

      else
      {
        v273 = 4;
      }

      if ((v8 & 7) != 0 || v273 != 4 || v22 != 3)
      {
        sub_1001FA81C(v344, "scn == 4 && dcn == 4 && depth == 0");
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11317);
      }

      *v344 = v354[1];
      *&v344[4] = v20;
      sub_100275370(a2, v344, 24, -1, 0, 0);
      sub_10026E0C8(a2, -1, v344);
      sub_10025DAEC(v349, v344, v274);
      sub_100006D14(v344);
      sub_1002D22A8(*&v353[16], v356[0], *&v349[16], v352[0], *&v353[12], *&v353[8]);
      goto LABEL_534;
    case 0x7Fu:
    case 0x80u:
    case 0x81u:
    case 0x82u:
    case 0x83u:
    case 0x84u:
    case 0x85u:
    case 0x86u:
      if (a4 <= 1)
      {
        v45 = 1;
      }

      else
      {
        v45 = a4;
      }

      v339 = 1;
      if (a3 - 127 > 3 || a3 == 129)
      {
        if (a3 == 129)
        {
          v97 = 1;
        }

        else
        {
          v97 = 2;
        }

        v339 = v97;
        if ((v8 & 0xFF7) != 0x10)
        {
LABEL_87:
          *v344 = 0uLL;
          qmemcpy(sub_1002A80E0(v344, 36), "(scn == 3 || scn == 4) && depth == 0", 36);
          sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11273);
        }
      }

      else if ((v8 & 0xFF7) != 0x10)
      {
        goto LABEL_87;
      }

      if (a4 >= 2)
      {
        *v344 = 0uLL;
        *sub_1002A80E0(v344, 8) = 0x31203D3D206E6364;
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11274);
      }

      if ((v21 | v20))
      {
        *v344 = 0uLL;
        qmemcpy(sub_1002A80E0(v344, 39), "sz.width % 2 == 0 && sz.height % 2 == 0", 39);
        sub_1002A8980(-215, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11275);
      }

      *v344 = v354[1];
      *&v344[4] = ((v20 + (v20 >> 31)) & 0xFFFFFFFE) + v20 / 2;
      sub_100275370(a2, v344, (v19 | (8 * v45)) - 8, -1, 0, 0);
      if (sub_100271148(a2) == 0x10000)
      {
        v98 = *(a2 + 8);
        v99 = *v98;
        v100 = *(v98 + 16);
        *v344 = *v98;
        *&v344[16] = v100;
        *&v344[32] = *(v98 + 32);
        v101 = *(v98 + 56);
        *&v344[48] = *(v98 + 48);
        *&v344[56] = v101;
        v345 = &v344[8];
        v346 = &v347;
        v347 = 0;
        v348 = 0;
        if (v101)
        {
          atomic_fetch_add((v101 + 20), 1u);
          v102 = *(v98 + 4);
        }

        else
        {
          v102 = DWORD1(v99);
        }

        if (v102 <= 2)
        {
          v242 = *(v98 + 72);
          v243 = v346;
          *v346 = *v242;
          v243[1] = v242[1];
          v103 = *&v349[56];
          if (!*&v349[56])
          {
            goto LABEL_388;
          }

LABEL_386:
          if (atomic_fetch_add((v103 + 20), 0xFFFFFFFF) == 1)
          {
            sub_100269BC8(v349);
          }

LABEL_388:
          if (*&v349[4] >= 1)
          {
            v244 = 0;
            v245 = v350;
            do
            {
              *&v245[4 * v244++] = 0;
            }

            while (v244 < *&v349[4]);
          }

          *v349 = *v344;
          *&v349[16] = *&v344[16];
          *&v349[32] = *&v344[32];
          *&v349[48] = *&v344[48];
          v246 = v351;
          if (v351 == v352)
          {
            v247 = v346;
            if (*&v344[4] <= 2)
            {
              goto LABEL_393;
            }
          }

          else
          {
            j__free(v351);
            v350 = &v349[8];
            v351 = v352;
            v246 = v352;
            v247 = v346;
            if (*&v344[4] <= 2)
            {
LABEL_393:
              *v246 = *v247;
              v246[1] = v247[1];
LABEL_396:
              *v344 = 1124007936;
              memset(&v344[4], 0, 60);
              if (v346 != &v347)
              {
                j__free(v346);
              }

              v248 = *&v353[16];
              v249 = v356[0];
              v250 = *&v349[16];
              v251 = v352[0];
              v253 = *&v353[8];
              v252 = *&v353[12];
              v254 = sub_1002D5FB0();
              sub_1002D193C(v248, v249, v250, v251, v252, v253, v23, v254, v339);
              goto LABEL_534;
            }
          }

          v350 = v345;
          v351 = v247;
          v345 = &v344[8];
          v346 = &v347;
          goto LABEL_396;
        }

        *&v344[4] = 0;
        sub_100269B58(v344, v98);
      }

      else
      {
        sub_1002703C0(a2, -1, v344);
      }

      v103 = *&v349[56];
      if (!*&v349[56])
      {
        goto LABEL_388;
      }

      goto LABEL_386;
    default:
      sub_1001FA81C(v344, "Unknown/unsupported color conversion code");
      sub_1002A8980(-206, v344, "cvtColor", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 11323);
  }
}

void sub_1002D5894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_1002A8124(&a17);
  sub_100006D14(&a29);
  sub_100006D14(v29 - 224);
  sub_1001D8BF4(v29 - 120);
  _Unwind_Resume(a1);
}

uint64_t sub_1002D620C(uint64_t a1, int a2, int a3, uint64_t a4, float32x2_t *a5, char a6)
{
  *a1 = a2;
  *(a1 + 40) = a6;
  sub_1002D6570(a1);
  if (a5)
  {
    v26 = vcvtq_f64_f32(*a5);
    v27 = a5[1].f32[0];
    if (atomic_load_explicit(&qword_1004B0280, memory_order_acquire))
    {
      goto LABEL_5;
    }
  }

  else
  {
    v26 = xmmword_1004D3F70;
    v27 = *&qword_1004D3F80;
    if (atomic_load_explicit(&qword_1004B0280, memory_order_acquire))
    {
      goto LABEL_5;
    }
  }

  if (__cxa_guard_acquire(&qword_1004B0280))
  {
    sub_10029DA40(&qword_1004B0278, 4096);
    __cxa_guard_release(&qword_1004B0280);
  }

LABEL_5:
  if (dword_1004B0270 >= 1)
  {
    v9 = 0;
    v10 = 0;
    v21 = a1 + 4 * (a3 ^ 2) + 4;
    v11 = a1 + 4 * a3 + 4;
    v12 = (a1 + 8);
    v13 = &v26;
    do
    {
      v24 = 0uLL;
      v25[0] = 0;
      if (a4)
      {
        v14 = 4 * v9;
        v24 = vcvtq_f64_f32(*(a4 + v14));
        *v25 = *(a4 + 8 + v14);
      }

      else
      {
        v15 = &byte_1004D3E00[8 * v9];
        if (v15 + 416 != &v24)
        {
          v24.f64[0] = *(v15 + 52);
        }

        if (v15 + 424 != &v24.f64[1])
        {
          v24.f64[1] = *(v15 + 53);
        }

        v16 = (v15 + 432);
        if (v16 != v25)
        {
          v25[0] = *v16;
        }
      }

      sub_10029E004(&qword_1004B0278, &v24, &v23);
      sub_10029E2BC(&v23, v13, v22);
      *(v21 + 4 * v9) = sub_10029DC5C(v22);
      sub_10029E004(&qword_1004B0278, &v24.f64[1], &v23);
      sub_10029E2BC(&v23, v13, v22);
      *v12 = sub_10029DC5C(v22);
      sub_10029E004(&qword_1004B0278, v25, &v23);
      sub_10029E2BC(&v23, v13, v22);
      *(v11 + 4 * v9) = sub_10029DC5C(v22);
      v17 = *(v12 - 1);
      if (v17 < 0 || (*v12 & 0x80000000) != 0 || (v18 = v12[1], v18 < 0) || (*v12 + v17 + v18) >= 0x2000)
      {
        v22[0] = 0;
        v22[1] = 0;
        qmemcpy(sub_1002A80E0(v22, 128), "coeffs[i*3] >= 0 && coeffs[i*3+1] >= 0 && coeffs[i*3+2] >= 0 && coeffs[i*3] + coeffs[i*3+1] + coeffs[i*3+2] < 2*(1 << xyz_shift)", 128);
        sub_1002A8980(-215, v22, "RGB2Lab_b", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 6378);
      }

      ++v10;
      v9 += 3;
      v12 += 3;
      ++v13;
    }

    while (v10 < dword_1004B0270);
  }

  return a1;
}

void sub_1002D6548(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_100008E3C(a1);
  }

  _Unwind_Resume(a1);
}

double sub_1002D6570(uint64_t a1)
{
  *&result = __chkstk_darwin(a1).n128_u64[0];
  if ((byte_1004D3E00[0] & 1) == 0)
  {
    bzero(v68, 0x1004uLL);
    bzero(v67, 0x1004uLL);
    bzero(v66, 0x1004uLL);
    LODWORD(v58[0]) = 1065353216;
    LODWORD(v57) = dword_1004D3E04;
    sub_10029D700(v58, &v57, &v56);
    v2 = -1025;
    for (i = v68; ; i = (i + 4))
    {
      sub_10029D334(&v57, v2 + 1025);
      sub_10029D4B4(&v56, &v57, v58);
      if (sub_10029D9C4(v58, &dword_1004D3E20))
      {
        sub_10029E6F4(v58, dword_1004D3E24, &dword_1004D3E24[1], &v57);
      }

      else
      {
        sub_10029FD58(v58, &v57);
      }

      if (i != &v57)
      {
        *i = v57;
      }

      v4 = __CFADD__(v2++, 1);
      if (v4)
      {
        qword_1004D3EA0 = sub_1002D8934(v68);
        LODWORD(v57) = 1065353216;
        LODWORD(v69) = 1149239296;
        sub_10029D700(&v57, &v69, v58);
        v5 = 0;
        v56 = v58[0];
        for (j = -1025; ; ++j)
        {
          sub_10029D334(&v57, j + 1025);
          sub_10029D4B4(&v56, &v57, v58);
          LODWORD(v69) = v58[0];
          sub_1002D8BB8(&v57, &v69);
          if (&v67[v5] != &v57)
          {
            *&v67[v5] = v57;
          }

          LODWORD(v69) = v58[0];
          sub_1002D8C74(&v57, &v69);
          if (&v66[v5] != &v57)
          {
            *&v66[v5] = v57;
          }

          v5 += 4;
          v4 = __CFADD__(j, 1);
          if (v4)
          {
            qword_1004D3EA8 = sub_1002D8934(v67);
            qword_1004D3EB0 = sub_1002D8934(v66);
            if ((atomic_load_explicit(&qword_1004D3EB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004D3EB8))
            {
              sub_10029D334(&dword_1004D3E30, 2040);
              __cxa_guard_release(&qword_1004D3EB8);
            }

            for (k = 0; k != 256; ++k)
            {
              sub_10029D334(&v57, k);
              sub_10029D700(&v57, &dword_1004D3E2C, v58);
              LODWORD(v57) = v58[0];
              sub_1002D8BB8(&v69, &v57);
              sub_10029D4B4(&dword_1004D3E30, &v69, &v57);
              v8 = sub_10029DB98(&v57);
              v9 = &byte_1004D3E00[2 * k];
              *(v9 + 284) = v8;
              *(v9 + 540) = 8 * k;
            }

            if ((atomic_load_explicit(&qword_1004D3EC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004D3EC0))
            {
              LODWORD(v58[0]) = 1065353216;
              sub_10029D334(&v57, 4096);
              sub_10029D700(v58, &v57, &dword_1004D3E34);
              __cxa_guard_release(&qword_1004D3EC0);
            }

            for (m = 0; m != 4096; ++m)
            {
              sub_10029D334(&v57, m);
              sub_10029D4B4(&dword_1004D3E34, &v57, v58);
              LODWORD(v57) = v58[0];
              sub_1002D8C74(&v69, &v57);
              sub_10029D4B4(&dword_1004D3E2C, &v69, &v57);
              word_1004BE600[m] = sub_10029DB98(&v57);
              sub_10029D4B4(&dword_1004D3E2C, v58, &v57);
              word_1004C0600[m] = sub_10029DB28(&v57);
            }

            if ((atomic_load_explicit(&qword_1004D3EC8, memory_order_acquire) & 1) == 0)
            {
              sub_1003C8E24();
            }

            if ((atomic_load_explicit(&qword_1004D3ED0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004D3ED0))
            {
              sub_10029D334(&dword_1004D3E3C, 0x8000);
              __cxa_guard_release(&qword_1004D3ED0);
            }

            for (n = 0; n != 3072; ++n)
            {
              sub_10029D334(&v57, n);
              sub_10029D4B4(&dword_1004D3E38, &v57, v58);
              if (sub_10029D9C4(v58, &dword_1004D3E20))
              {
                sub_10029E6F4(v58, dword_1004D3E24, &dword_1004D3E24[1], &v69);
              }

              else
              {
                sub_10029FD58(v58, &v69);
              }

              sub_10029D4B4(&dword_1004D3E3C, &v69, &v57);
              word_1004C2600[n] = sub_10029DB98(&v57);
            }

            v12 = 0;
            v13 = 0;
            v14 = 0;
            v15 = 0;
            v16 = &word_1004D443A;
            do
            {
              if (v15 > 0x14)
              {
                sub_10029D334(&v69, v12);
                sub_10029D334(&v65, 29580);
                sub_10029D700(&v69, &v65, &v57);
                sub_10029D334(&v63, 0x40000);
                sub_10029D334(&v62, 116);
                sub_10029D700(&v63, &v62, &v64);
                sub_10029D46C(&v57, &v64, v58);
                v18 = sub_10029DB98(v58);
                sub_10029D4B4(v58, v58, &v65);
                sub_10029D4B4(&v65, v58, &v69);
                sub_10029D334(&v64, 0x10000000);
                sub_10029D700(&v69, &v64, &v57);
                v17 = sub_10029DB98(&v57);
              }

              else
              {
                sub_10029D334(&v57, v13);
                sub_10029D334(&v69, 414613);
                sub_10029D700(&v57, &v69, v58);
                v17 = sub_10029DB98(v58);
                sub_10029D334(&v57, 0x4000);
                sub_10029D334(&v64, 16);
                sub_10029D334(&v63, 116);
                sub_10029D700(&v64, &v63, &v65);
                sub_10029D334(&v61, v14);
                sub_10029D334(&v60, 1479);
                sub_10029D700(&v61, &v60, &v62);
                sub_10029D46C(&v65, &v62, &v69);
                sub_10029D4B4(&v57, &v69, v58);
                v18 = sub_10029DB98(v58);
              }

              ++v15;
              v14 += 5;
              *(v16 - 1) = v17;
              *v16 = v18;
              v16 += 2;
              v13 += 2949120;
              v12 += 1638400;
            }

            while (v15 != 256);
            v19 = sub_1001D8FE8(0x24000uLL);
            v20 = 0;
            v21 = -8145;
            for (ii = -879660; ; ii += 108)
            {
              v23 = (((v21 * v21) >> 14) * v21) >> 14;
              if (v21 <= 3390)
              {
                v23 = ii / 841 - 290;
              }

              *&v19[v20] = v23;
              ++v21;
              v20 += 4;
              if (v20 == 147456)
              {
                qword_1004D3ED8 = v19;
                sub_10029DA40(&v65, 15);
                sub_10029E004(&xmmword_1004D3F70 + 1, &v65, &v69);
                sub_10029DFB4(&xmmword_1004D3F70, &v69, &v57);
                sub_10029DA40(&v63, 3);
                sub_10029E004(&qword_1004D3F80, &v63, &v64);
                sub_10029DFB4(&v57, &v64, v58);
                sub_10029DE94(v58, &v55);
                LODWORD(v57) = 1065353216;
                LODWORD(v65) = 872415232;
                if (sub_10029D948(&v55, &v65))
                {
                  v24 = &v55;
                }

                else
                {
                  v24 = &v65;
                }

                LODWORD(v69) = *v24;
                sub_10029D700(&v57, &v69, v58);
                v55 = v58[0];
                sub_10029D334(&v57, 52);
                sub_10029D4B4(&v55, &v57, v58);
                sub_10029DE94(&xmmword_1004D3F70, &v69);
                sub_10029D4B4(v58, &v69, &v54);
                sub_10029D334(&v57, 117);
                sub_10029D4B4(&v55, &v57, v58);
                sub_10029DE94(&xmmword_1004D3F70 + 1, &v69);
                sub_10029D4B4(v58, &v69, &v53);
                LODWORD(v57) = 1065353216;
                sub_10029D334(&v69, 4);
                sub_10029D700(&v57, &v69, v58);
                v49 = sub_1001D8FE8(0x40000uLL);
                v25 = sub_1001D8FE8(0x40000uLL);
                v26 = sub_1001D8FE8(0x80000uLL);
                v51 = 0;
                v27 = 0;
                for (jj = v49; ; jj += 256)
                {
                  v29 = sub_10029D334(&v69, 100 * v27);
                  sub_10029D700(v29, &dword_1004D3E2C, &v57);
                  for (kk = 0; kk != 256; ++kk)
                  {
                    sub_10029D334(&v63, kk);
                    sub_10029D4B4(&v63, &dword_1004D3E10, &v64);
                    sub_10029D700(&v64, &dword_1004D3E2C, &v65);
                    sub_10029D46C(&v65, &dword_1004D3E08, &v69);
                    sub_10029D334(&v64, 9);
                    sub_10029D4B4(&v57, &v54, &v62);
                    sub_10029D46C(&v69, &v62, &v63);
                    sub_10029D4B4(&v64, &v63, &v65);
                    sub_10029D334(&v63, 16);
                    sub_10029D4B4(&v65, &v63, &v64);
                    jj[kk] = sub_10029DB98(&v64);
                  }

                  v31 = -256;
                  v32 = v51;
                  do
                  {
                    sub_10029D334(&v63, v31 + 256);
                    sub_10029D4B4(&v63, &dword_1004D3E1C, &v64);
                    sub_10029D700(&v64, &dword_1004D3E2C, &v65);
                    sub_10029D46C(&v65, &dword_1004D3E14, &v69);
                    sub_10029D4B4(&v57, &v53, &v63);
                    sub_10029D46C(&v69, &v63, &v64);
                    sub_10029D700(v58, &v64, &v65);
                    if (sub_10029D948(&v65, v58))
                    {
                      LODWORD(v65) = v58[0];
                    }

                    LODWORD(v64) = LODWORD(v58[0]) ^ 0x80000000;
                    if (sub_10029D9C4(&v65, &v64))
                    {
                      LODWORD(v65) = LODWORD(v58[0]) ^ 0x80000000;
                    }

                    sub_10029D334(&v63, 0x1000000);
                    sub_10029D4B4(&v65, &v63, &v64);
                    v33 = sub_10029DB98(&v64);
                    v25[v32] = v33;
                    v26[v32++] = 249600 * v33 * v27;
                    v4 = __CFADD__(v31++, 1);
                  }

                  while (!v4);
                  ++v27;
                  v51 += 256;
                  if (v27 == 256)
                  {
                    qword_1004D3EE0 = v49;
                    *algn_1004D3EE8 = v25;
                    qword_1004D3EF0 = v26;
                    v58[0] = 0x3FF0000000000000;
                    sub_10029E2BC(v58, &xmmword_1004D3F70, &v69);
                    v70 = 0x3FF0000000000000;
                    v57 = 0x3FF0000000000000;
                    sub_10029E2BC(&v57, &qword_1004D3F80, &v71);
                    sub_10029DE94(&xmmword_1004D3FA0, v58);
                    v52 = v58[0];
                    sub_10029DE94(&xmmword_1004D3FA0 + 1, v58);
                    v50 = v58[0];
                    sub_10029DE94(&qword_1004D3FB0, v58);
                    v48 = v58[0];
                    sub_10029E004(&qword_1004D3FB0, &v69, v58);
                    sub_10029DE94(v58, &v57);
                    v47 = v57;
                    sub_10029E004(&xmmword_1004D3FA0 + 1, &v69, v58);
                    sub_10029DE94(v58, &v57);
                    v46 = v57;
                    sub_10029E004(&xmmword_1004D3FA0, &v69, v58);
                    sub_10029DE94(v58, &v57);
                    v45 = v57;
                    sub_10029DE94(&qword_1004D3FB8, v58);
                    v44 = v58[0];
                    sub_10029DE94(&xmmword_1004D3FC0, v58);
                    v43 = v58[0];
                    sub_10029DE94(&xmmword_1004D3FC0 + 1, v58);
                    v34 = v58[0];
                    sub_10029E004(&xmmword_1004D3FC0 + 1, &v70, v58);
                    sub_10029DE94(v58, &v57);
                    v35 = v57;
                    sub_10029E004(&xmmword_1004D3FC0, &v70, v58);
                    sub_10029DE94(v58, &v57);
                    v36 = v57;
                    sub_10029E004(&qword_1004D3FB8, &v70, v58);
                    sub_10029DE94(v58, &v57);
                    v37 = v57;
                    sub_10029DE94(&qword_1004D3FD0, v58);
                    v38 = v58[0];
                    sub_10029DE94(&qword_1004D3FD8, v58);
                    v39 = v58[0];
                    sub_10029DE94(&qword_1004D3FE0, v58);
                    v40 = v58[0];
                    sub_10029E004(&qword_1004D3FE0, &v71, v58);
                    sub_10029DE94(v58, &v57);
                    v41 = v57;
                    sub_10029E004(&qword_1004D3FD8, &v71, v58);
                    sub_10029DE94(v58, &v57);
                    v42 = v57;
                    sub_10029E004(&qword_1004D3FD0, &v71, v58);
                    sub_10029DE94(v58, &v57);
                    v59[277] = v47;
                    v59[276] = v46;
                    v59[275] = v45;
                    v59[274] = v35;
                    v59[273] = v36;
                    v59[272] = v37;
                    v59[271] = v41;
                    v59[270] = v42;
                    v59[269] = v57;
                    v59[268] = v48;
                    v59[267] = v50;
                    v59[266] = v52;
                    v59[265] = v34;
                    v59[264] = v43;
                    v59[263] = v44;
                    v59[262] = v40;
                    v59[261] = v39;
                    v59[260] = v38;
                    if ((atomic_load_explicit(&qword_1004D3EF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004D3EF8))
                    {
                      sub_10029D334(&dword_1004D3E40, 32);
                      __cxa_guard_release(&qword_1004D3EF8);
                    }

                    if ((atomic_load_explicit(&qword_1004D3F00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004D3F00))
                    {
                      sub_10029D334(&dword_1004D3E44, 116);
                      __cxa_guard_release(&qword_1004D3F00);
                    }

                    if ((atomic_load_explicit(&qword_1004D3F08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004D3F08))
                    {
                      sub_10029D334(&dword_1004D3E48, 16);
                      __cxa_guard_release(&qword_1004D3F08);
                    }

                    if ((atomic_load_explicit(&qword_1004D3F10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004D3F10))
                    {
                      sub_10029D334(&dword_1004D3E4C, 500);
                      __cxa_guard_release(&qword_1004D3F10);
                    }

                    if ((atomic_load_explicit(&qword_1004D3F18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004D3F18))
                    {
                      sub_10029D334(&dword_1004D3E50, 200);
                      __cxa_guard_release(&qword_1004D3F18);
                    }

                    if ((atomic_load_explicit(&qword_1004D3F20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004D3F20))
                    {
                      sub_10029D334(&dword_1004D3E54, 100);
                      __cxa_guard_release(&qword_1004D3F20);
                    }

                    if ((atomic_load_explicit(&qword_1004D3F28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004D3F28))
                    {
                      sub_10029D334(&dword_1004D3E58, 128);
                      __cxa_guard_release(&qword_1004D3F28);
                    }

                    if ((atomic_load_explicit(&qword_1004D3F30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004D3F30))
                    {
                      sub_10029D334(&dword_1004D3E5C, 256);
                      __cxa_guard_release(&qword_1004D3F30);
                    }

                    if ((atomic_load_explicit(&qword_1004D3F38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004D3F38))
                    {
                      sub_10029D334(&dword_1004D3E60, 0x4000);
                      __cxa_guard_release(&qword_1004D3F38);
                    }

                    if ((atomic_load_explicit(&qword_1004D3F40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004D3F40))
                    {
                      sub_10029D334(v58, 24389);
                      sub_10029D334(&v57, 27);
                      sub_10029D700(v58, &v57, &dword_1004D3E64);
                      __cxa_guard_release(&qword_1004D3F40);
                    }

                    if ((atomic_load_explicit(&qword_1004D3F48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004D3F48))
                    {
                      sub_10029D334(v58, 9);
                      sub_10029D334(&v57, 4);
                      sub_10029D700(v58, &v57, &dword_1004D3E68);
                      __cxa_guard_release(&qword_1004D3F48);
                    }

                    if ((atomic_load_explicit(&qword_1004D3F50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004D3F50))
                    {
                      sub_10029D334(&dword_1004D3E6C, 15);
                      __cxa_guard_release(&qword_1004D3F50);
                    }

                    if ((atomic_load_explicit(&qword_1004D3F58, memory_order_acquire) & 1) == 0)
                    {
                      if (__cxa_guard_acquire(&qword_1004D3F58))
                      {
                        sub_10029D334(&unk_1004D3E70, 3);
                        __cxa_guard_release(&qword_1004D3F58);
                      }
                    }

                    v58[0] = v59;
                    v58[1] = 107811;
                    operator new[]();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1002D8808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  if (a41 != a12 && a41 != 0)
  {
    operator delete[]();
  }

  if (STACK[0x520] != a13 && STACK[0x520] != 0)
  {
    operator delete[]();
  }

  _Unwind_Resume(a1);
}

void *sub_1002D8934(uint64_t a1)
{
  v2 = sub_1001D8FE8(0x4000uLL);
  sub_10029D334(&v23, 2);
  sub_10029D334(&v22, 3);
  sub_10029D334(&v21, 4);
  sub_10029D334(&v20, 0);
  v3 = 0;
  v4 = 1023;
  *v2 = 0;
  v5 = a1;
  do
  {
    sub_10029D4B4((v5 + 4), &v23, &v16);
    sub_10029D490((v5 + 8), &v16, &v17);
    sub_10029D46C(&v17, v5, &v18);
    sub_10029D4B4(&v18, &v22, &v19);
    v17 = 1065353216;
    v6 = &v2[v3];
    sub_10029D490(&v21, &v2[v3], &v16);
    sub_10029D700(&v17, &v16, &v18);
    if (&v2[v3 + 2] != &v18)
    {
      v6[4] = v18;
    }

    sub_10029D490(&v19, v6 + 1, &v16);
    sub_10029D4B4(&v16, &v18, &v17);
    if (v6 + 5 != &v17)
    {
      v6[5] = v17;
    }

    v5 += 4;
    v3 += 2;
    --v4;
  }

  while (v4);
  v7 = (a1 + 4092);
  v8 = 2048;
  do
  {
    v9 = &v2[v8 - 1] - 1;
    v10 = &v2[v8 - 2];
    sub_10029D4B4(v10, &v20, &v18);
    sub_10029D490(v9, &v18, &v19);
    sub_10029D490(v7 + 1, v7, &v17);
    sub_10029D4B4(&v19, &v23, &v14);
    sub_10029D46C(&v20, &v14, &v15);
    sub_10029D700(&v15, &v22, &v16);
    sub_10029D490(&v17, &v16, &v18);
    sub_10029D490(&v20, &v19, &v16);
    sub_10029D700(&v16, &v22, &v17);
    if (v7 != v10)
    {
      *v10 = *v7;
    }

    if (v9 != &v18)
    {
      *v9 = v18;
    }

    v11 = &v2[v8 - 1];
    if (v11 != &v19)
    {
      *v11 = v19;
    }

    v12 = &v2[v8 - 1] + 1;
    if (v12 != &v17)
    {
      *v12 = v17;
    }

    v20 = v19;
    --v7;
    v8 -= 2;
  }

  while (v8 * 8);
  return v2;
}

uint64_t *sub_1002D8BB8(_DWORD *a1, unsigned int *a2)
{
  sub_10029D39C(a2, &v9);
  if (sub_10029E66C(&v9, &qword_1004D3E78))
  {
    sub_10029E2BC(&v9, &qword_1004D3E88, &v8);
  }

  else
  {
    sub_10029DFB4(&v9, &qword_1004D3E98, &v6);
    v4 = 0x3FF0000000000000;
    sub_10029DFB4(&v4, &qword_1004D3E98, &v5);
    sub_10029E2BC(&v6, &v5, &v7);
    sub_10029F608(&v7, &qword_1004D3E90, &v8);
  }

  return sub_10029DE94(&v8, a1);
}

uint64_t *sub_1002D8C74(_DWORD *a1, unsigned int *a2)
{
  sub_10029D39C(a2, &v11);
  if (sub_10029E66C(&v11, &qword_1004D3E80))
  {
    sub_10029E004(&v11, &qword_1004D3E88, &v10);
  }

  else
  {
    v6 = 0x3FF0000000000000;
    sub_10029E2BC(&v6, &qword_1004D3E90, &v7);
    sub_10029F608(&v11, &v7, &v8);
    v4 = 0x3FF0000000000000;
    sub_10029DFB4(&v4, &qword_1004D3E98, &v5);
    sub_10029E004(&v8, &v5, &v9);
    sub_10029DFDC(&v9, &qword_1004D3E98, &v10);
  }

  return sub_10029DE94(&v10, a1);
}

uint64_t sub_1002D8D4C(uint64_t a1, int a2, int a3, uint64_t a4, float32x2_t *a5, char a6)
{
  *a1 = a2;
  *(a1 + 40) = a6;
  *(a1 + 44) = a3;
  v24 = 3;
  sub_1002D6570(a1);
  if (a4 | a5)
  {
    *(a1 + 41) = 0;
    if (a5)
    {
      v29 = vcvtq_f64_f32(*a5);
      v30 = a5[1].f32[0];
      goto LABEL_6;
    }
  }

  else
  {
    *(a1 + 41) = *(a1 + 40);
  }

  v29 = xmmword_1004D3F70;
  v30 = *&qword_1004D3F80;
LABEL_6:
  v21[0] = 0x3FF0000000000000;
  sub_10029E2BC(v21, &v29, v27);
  v27[1] = 0x3FF0000000000000;
  v25 = 0x3FF0000000000000;
  sub_10029E2BC(&v25, &v30, &v28);
  if (v24 >= 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = a1 + 4;
    v13 = (a4 + 4);
    v14 = &qword_1004D3FB0;
    do
    {
      v26 = 0.0;
      v25 = 0;
      if (a4)
      {
        v22 = *(v13 - 1);
        sub_10029E004(&v27[v9], &v22, v21);
        sub_10029DE94(v21, &v23);
        LODWORD(v25) = v23;
        v22 = *v13;
        sub_10029E004(&v27[v9], &v22, v21);
        sub_10029DE94(v21, &v23);
        HIDWORD(v25) = v23;
        v22 = v13[1];
        sub_10029E004(&v27[v9], &v22, v21);
        sub_10029DE94(v21, &v23);
        v15 = v10 + 1;
        v16 = v23;
      }

      else
      {
        sub_10029E004(&v27[v9], v14 - 2, v21);
        sub_10029DE94(v21, &v22);
        LODWORD(v25) = LODWORD(v22);
        sub_10029E004(&v27[v9], v14 - 1, v21);
        sub_10029DE94(v21, &v22);
        HIDWORD(v25) = LODWORD(v22);
        sub_10029E004(&v27[v9], v14, v21);
        sub_10029DE94(v21, &v22);
        v15 = 3 * v11 + 1;
        v16 = LODWORD(v22);
      }

      v26 = *&v16;
      v17 = *(a1 + 44);
      v18 = v25;
      *(v12 + 4 * (v10 + (v17 ^ 2))) = v25;
      *(v12 + 4 * v15) = HIDWORD(v18);
      v19 = v26;
      *(v12 + 4 * (v10 + v17)) = v26;
      if (*&v18 < 0.0 || *(&v18 + 1) < 0.0 || v19 < 0.0 || (sub_10029D46C(&v25, &v25 + 1, &v22), sub_10029D46C(&v22, &v26, v21), sub_10029D334(&v23, 1024), !sub_10029D9C4(v21, &v23)))
      {
        v21[0] = 0;
        v21[1] = 0;
        qmemcpy(sub_1002A80E0(v21, 93), "c[0] >= 0 && c[1] >= 0 && c[2] >= 0 && c[0] + c[1] + c[2] < softfloat((int)LAB_CBRT_TAB_SIZE)", 93);
        sub_1002A8980(-215, v21, "RGB2Lab_f", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 6454);
      }

      ++v11;
      v10 += 3;
      v13 += 3;
      v14 += 3;
      ++v9;
    }

    while (v11 < v24);
  }

  return a1;
}

void sub_1002D90B0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_100008E3C(a1);
  }

  _Unwind_Resume(a1);
}

float32x4_t *sub_1002D90D8(float32x4_t *a1, __int32 a2, int a3, uint64_t a4, uint64_t a5, char a6)
{
  a1->i32[0] = a2;
  v12 = sub_1002D923C(a1->i64 + 4, 3, a3, a4, a5, a6);
  a1[3].i32[2] = a2;
  a1[3].i32[3] = a3;
  sub_1002D6570(v12);
  if (a4 | a5)
  {
    v13 = 0;
  }

  else
  {
    v13 = a6;
  }

  a1[10].i8[8] = v13;
  v22 = 1065353216;
  sub_10029D700(&v22, &dword_1004D3E2C, &v23);
  v14 = vld1q_dup_f32(&v23);
  a1[5] = v14;
  sub_10029D334(&v22, 100);
  sub_10029D700(&dword_1004D3E2C, &v22, &v23);
  v15 = vld1q_dup_f32(&v23);
  a1[4] = v15;
  sub_10029D700(&dword_1004D3E2C, &dword_1004D3E10, &v23);
  v16 = vld1q_dup_f32(&v23);
  a1[6] = v16;
  v21 = dword_1004D3E08 ^ 0x80000000;
  sub_10029D4B4(&v21, &dword_1004D3E2C, &v22);
  sub_10029D700(&v22, &dword_1004D3E10, &v23);
  v17 = vld1q_dup_f32(&v23);
  a1[7] = v17;
  sub_10029D700(&dword_1004D3E2C, &dword_1004D3E1C, &v23);
  v18 = vld1q_dup_f32(&v23);
  a1[8] = v18;
  v21 = dword_1004D3E14 ^ 0x80000000;
  sub_10029D4B4(&v21, &dword_1004D3E2C, &v22);
  sub_10029D700(&v22, &dword_1004D3E1C, &v23);
  v19 = vld1q_dup_f32(&v23);
  a1[9] = v19;
  a1[10].i64[0] = -1;
  return a1;
}

uint64_t sub_1002D923C(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, char a6)
{
  *a1 = a2;
  *(a1 + 48) = a6;
  sub_1002D6570(a1);
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v28 = 0;
  if (a5)
  {
    do
    {
      *(&v29 + v28) = *(a5 + 4 * v28);
      ++v28;
    }

    while (v28 < 3);
  }

  else
  {
    do
    {
      v17 = &byte_1004D3E00[8 * v28 + 368];
      v18 = &v29 + v28;
      if (v17 != v18)
      {
        *v18 = *v17;
      }

      ++v28;
    }

    while (v28 < 3);
  }

  v28 = 0;
  v9 = a1 + 4;
  do
  {
    if (a4)
    {
      *(v9 + 12 * v28) = *(a4 + 12 * v28);
      *(v9 + 12 * v28 + 4) = *(a4 + 4 + 12 * v28);
      *(v9 + 12 * v28 + 8) = *(a4 + 8 + 12 * v28);
      if (a3)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v10 = *(&xmmword_1004D3FA0 + 3 * v28);
      *(v9 + 12 * v28) = v10;
      v11 = *(&xmmword_1004D3FA0 + 3 * v28 + 1);
      *(v9 + 12 * v28 + 4) = v11;
      v12 = *(&xmmword_1004D3FA0 + 3 * v28 + 2);
      *(v9 + 12 * v28 + 8) = v12;
      if (a3)
      {
LABEL_6:
        if (*(v9 + 12 * v28) < 0.0)
        {
          goto LABEL_13;
        }

        goto LABEL_10;
      }
    }

    v13 = 12 * v28;
    v14 = *(v9 + v13);
    *(v9 + v13) = *(v9 + v13 + 8);
    *(v9 + v13 + 8) = v14;
    if (*(v9 + 12 * v28) < 0.0)
    {
      goto LABEL_13;
    }

LABEL_10:
    if (*(v9 + 12 * v28 + 4) < 0.0 || *(v9 + 12 * v28 + 8) < 0.0 || (LODWORD(v23) = *(v9 + 12 * v28), LODWORD(v22) = *(v9 + 12 * v28 + 4), sub_10029D46C(&v23, &v22, &v24), LODWORD(v21) = *(v9 + 12 * v28 + 8), sub_10029D46C(&v24, &v21, &v26), LODWORD(v20) = 1069547520, !sub_10029D9C4(&v26, &v20)))
    {
LABEL_13:
      v26 = 0;
      v27 = 0;
      qmemcpy(sub_1002A80E0(&v26, 158), "coeffs[i*3] >= 0 && coeffs[i*3+1] >= 0 && coeffs[i*3+2] >= 0 && softfloat(coeffs[i*3]) + softfloat(coeffs[i*3+1]) + softfloat(coeffs[i*3+2]) < softfloat(1.5f)", 158);
      sub_1002A8980(-215, &v26, "RGB2Luvfloat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 7532);
    }

    ++v28;
  }

  while (v28 < 3);
  sub_10029DA40(&v22, 15);
  sub_10029E004(&v30, &v22, &v23);
  sub_10029DFB4(&v29, &v23, &v24);
  sub_10029DA40(&v20, 3);
  sub_10029E004(&v31, &v20, &v21);
  sub_10029DFB4(&v24, &v21, &v26);
  sub_10029DE94(&v26, &v25);
  LODWORD(v24) = 1065353216;
  LODWORD(v22) = 872415232;
  if (sub_10029D948(&v25, &v22))
  {
    v15 = &v25;
  }

  else
  {
    v15 = &v22;
  }

  LODWORD(v23) = *v15;
  sub_10029D700(&v24, &v23, &v26);
  v25 = v26;
  sub_10029D334(&v23, 52);
  sub_10029D4B4(&v25, &v23, &v24);
  sub_10029DE94(&v29, &v22);
  sub_10029D4B4(&v24, &v22, &v26);
  *(a1 + 40) = v26;
  sub_10029D334(&v23, 117);
  sub_10029D4B4(&v25, &v23, &v24);
  sub_10029DE94(&v30, &v22);
  sub_10029D4B4(&v24, &v22, &v26);
  *(a1 + 44) = v26;
  v26 = 0x3FF0000000000000;
  if (!sub_10029E5A0(&v30, &v26))
  {
    v26 = 0;
    v27 = 0;
    qmemcpy(sub_1002A80E0(&v26, 31), "whitePt[1] == softdouble::one()", 31);
    sub_1002A8980(-215, &v26, "RGB2Luvfloat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 7546);
  }

  return a1;
}

void sub_1002D9750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002D9798(uint64_t a1, int a2, int a3, float *a4, float32x2_t *a5, char a6)
{
  *a1 = a2;
  *(a1 + 40) = a6;
  *(a1 + 52) = a3;
  sub_1002D6570(a1);
  if (a5)
  {
    v31 = vcvtq_f64_f32(*a5);
    v32 = a5[1].f32[0];
    v9 = a1 + 4;
    v28 = 0.0;
    v29 = 0;
    v30 = 0;
    if (a4)
    {
LABEL_3:
      *&v10 = a4[3];
      v28 = *a4;
      v29 = v10;
      *&v11 = a4[6];
      goto LABEL_6;
    }
  }

  else
  {
    v31 = xmmword_1004D3F70;
    v32 = *&qword_1004D3F80;
    v9 = a1 + 4;
    v28 = 0.0;
    v29 = 0;
    v30 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v28 = *&xmmword_1004D3FF0;
  v29 = qword_1004D4008;
  v11 = qword_1004D4020;
LABEL_6:
  v30 = v11;
  sub_10029E004(&v28, &v31, &v27);
  v12 = v27;
  *(v9 + 12 * (*(a1 + 52) ^ 2)) = v12;
  sub_10029E004(&v29, &v31, &v27);
  v13 = v27;
  *(a1 + 16) = v13;
  sub_10029E004(&v30, &v31, &v27);
  v14 = v27;
  *(v9 + 12 * *(a1 + 52)) = v14;
  v28 = 0.0;
  v29 = 0;
  v30 = 0;
  if (a4)
  {
    *&v15 = a4[4];
    v28 = a4[1];
    v29 = v15;
    *&v16 = a4[7];
  }

  else
  {
    v28 = *(&xmmword_1004D3FF0 + 1);
    v29 = xmmword_1004D4010;
    v16 = qword_1004D4028;
  }

  v30 = v16;
  sub_10029E004(&v28, &v31.f64[1], &v27);
  v17 = v27;
  *(v9 + 12 * (*(a1 + 52) ^ 2) + 4) = v17;
  sub_10029E004(&v29, &v31.f64[1], &v27);
  v18 = v27;
  *(a1 + 20) = v18;
  sub_10029E004(&v30, &v31.f64[1], &v27);
  v19 = v27;
  *(v9 + 12 * *(a1 + 52) + 4) = v19;
  v28 = 0.0;
  v29 = 0;
  v30 = 0;
  if (a4)
  {
    *&v20 = a4[5];
    v28 = a4[2];
    v29 = v20;
    *&v21 = a4[8];
  }

  else
  {
    v28 = *&qword_1004D4000;
    v29 = *(&xmmword_1004D4010 + 1);
    v21 = qword_1004D4030;
  }

  v30 = v21;
  sub_10029E004(&v28, &v32, &v27);
  v22 = v27;
  *(v9 + 12 * (*(a1 + 52) ^ 2) + 8) = v22;
  sub_10029E004(&v29, &v32, &v27);
  v23 = v27;
  *(a1 + 24) = v23;
  sub_10029E004(&v30, &v32, &v27);
  v24 = v27;
  *(v9 + 12 * *(a1 + 52) + 8) = v24;
  sub_10029D334(&v28, 8);
  *(a1 + 44) = LODWORD(v28);
  sub_10029D334(&v27, 6);
  sub_10029D334(&v26, 29);
  sub_10029D700(&v27, &v26, &v28);
  *(a1 + 48) = LODWORD(v28);
  return a1;
}

uint64_t sub_1002D9AD0(uint64_t a1, int a2, int a3, float *a4, float32x2_t *a5, int a6)
{
  *a1 = a2;
  if (a5)
  {
    v26 = vcvtq_f64_f32(*a5);
    v27 = a5[1].f32[0];
    if (atomic_load_explicit(&qword_1004B0290, memory_order_acquire))
    {
      goto LABEL_5;
    }
  }

  else
  {
    v26 = xmmword_1004D3F70;
    v27 = *&qword_1004D3F80;
    if (atomic_load_explicit(&qword_1004B0290, memory_order_acquire))
    {
      goto LABEL_5;
    }
  }

  if (__cxa_guard_acquire(&qword_1004B0290))
  {
    sub_10029DA40(&qword_1004B0288, 4096);
    __cxa_guard_release(&qword_1004B0290);
  }

LABEL_5:
  v23 = 0.0;
  v24 = 0.0;
  v25 = 0;
  if (a4)
  {
    v10 = a4[3];
    v23 = *a4;
    v24 = v10;
    *&v11 = a4[6];
  }

  else
  {
    v23 = *&xmmword_1004D3FF0;
    v24 = *&qword_1004D4008;
    v11 = qword_1004D4020;
  }

  v25 = v11;
  sub_10029E004(&qword_1004B0288, &v23, &v21);
  sub_10029E004(&v21, &v26, &v22);
  v12 = a1 + 4;
  *(a1 + 4 + 12 * a3) = sub_10029DC5C(&v22);
  sub_10029E004(&qword_1004B0288, &v24, &v21);
  sub_10029E004(&v21, &v26, &v22);
  *(a1 + 16) = sub_10029DC5C(&v22);
  sub_10029E004(&qword_1004B0288, &v25, &v21);
  sub_10029E004(&v21, &v26, &v22);
  *(a1 + 4 + 12 * (a3 ^ 2)) = sub_10029DC5C(&v22);
  v23 = 0.0;
  v24 = 0.0;
  v25 = 0;
  if (a4)
  {
    v13 = a4[4];
    v23 = a4[1];
    v24 = v13;
    *&v14 = a4[7];
  }

  else
  {
    v23 = *(&xmmword_1004D3FF0 + 1);
    v24 = *&xmmword_1004D4010;
    v14 = qword_1004D4028;
  }

  v25 = v14;
  sub_10029E004(&qword_1004B0288, &v23, &v21);
  sub_10029E004(&v21, &v26.f64[1], &v22);
  v15 = v12 + 12 * a3;
  *(v15 + 4) = sub_10029DC5C(&v22);
  sub_10029E004(&qword_1004B0288, &v24, &v21);
  sub_10029E004(&v21, &v26.f64[1], &v22);
  *(a1 + 20) = sub_10029DC5C(&v22);
  sub_10029E004(&qword_1004B0288, &v25, &v21);
  sub_10029E004(&v21, &v26.f64[1], &v22);
  v16 = v12 + 12 * (a3 ^ 2);
  *(v16 + 4) = sub_10029DC5C(&v22);
  v23 = 0.0;
  v24 = 0.0;
  v25 = 0;
  if (a4)
  {
    v17 = a4[5];
    v23 = a4[2];
    v24 = v17;
    *&v18 = a4[8];
  }

  else
  {
    v23 = *&qword_1004D4000;
    v24 = *(&xmmword_1004D4010 + 1);
    v18 = qword_1004D4030;
  }

  v25 = v18;
  sub_10029E004(&qword_1004B0288, &v23, &v21);
  sub_10029E004(&v21, &v27, &v22);
  *(v15 + 8) = sub_10029DC5C(&v22);
  sub_10029E004(&qword_1004B0288, &v24, &v21);
  sub_10029E004(&v21, &v27, &v22);
  *(a1 + 24) = sub_10029DC5C(&v22);
  sub_10029E004(&qword_1004B0288, &v25, &v21);
  sub_10029E004(&v21, &v27, &v22);
  *(v16 + 8) = sub_10029DC5C(&v22);
  v19 = word_1004C0600;
  if (a6)
  {
    v19 = word_1004BE600;
  }

  *(a1 + 40) = v19;
  return a1;
}

uint64_t sub_1002D9ED8(uint64_t a1, int a2, int a3, _DWORD *a4, float32x2_t *a5, char a6)
{
  *a1 = a2;
  *(a1 + 48) = a6;
  sub_1002D6570(a1);
  if (a5)
  {
    v38 = vcvtq_f64_f32(*a5);
    v39 = a5[1].f32[0];
  }

  else
  {
    v38 = xmmword_1004D3F70;
    v39 = *&qword_1004D3F80;
  }

  v10 = a1 + 4;
  v11 = a3 ^ 2;
  v12 = 3 * v11;
  v13 = 3 * a3;
  v14 = (a1 + 4 + 12 * v11);
  v15 = (a1 + 4 + 12 * a3);
  if (a4)
  {
    v16 = a4[3];
    v17 = a4[6];
    *v14 = *a4;
    *(a1 + 16) = v16;
    *v15 = v17;
    v18 = a4[4];
    v19 = a4[7];
    v14[1] = a4[1];
    *(a1 + 20) = v18;
    v15[1] = v19;
    v20 = a4[2];
    v21 = a4[5];
    v22 = a4[8];
  }

  else
  {
    sub_10029DE94(&xmmword_1004D3FF0, v31);
    v23 = v31[0];
    sub_10029DE94(&qword_1004D4008, v31);
    v24 = v31[0];
    sub_10029DE94(&qword_1004D4020, v31);
    v25 = v31[0];
    *(v10 + 4 * v12) = v23;
    *(a1 + 16) = v24;
    *(v10 + 4 * v13) = v25;
    sub_10029DE94(&xmmword_1004D3FF0 + 1, v31);
    v26 = v31[0];
    sub_10029DE94(&xmmword_1004D4010, v31);
    v27 = v31[0];
    sub_10029DE94(&qword_1004D4028, v31);
    v28 = v31[0];
    v14[1] = v26;
    *(a1 + 20) = v27;
    v15[1] = v28;
    sub_10029DE94(&qword_1004D4000, v31);
    v20 = v31[0];
    sub_10029DE94(&xmmword_1004D4010 + 1, v31);
    v21 = v31[0];
    sub_10029DE94(&qword_1004D4030, v31);
    v22 = v31[0];
  }

  v14[2] = v20;
  *(a1 + 24) = v21;
  v15[2] = v22;
  sub_10029DA40(&v34, 15);
  sub_10029E004(&v38.f64[1], &v34, &v35);
  sub_10029DFB4(&v38, &v35, &v36);
  sub_10029DA40(&v32, 3);
  sub_10029E004(&v39, &v32, &v33);
  sub_10029DFB4(&v36, &v33, v31);
  sub_10029DE94(v31, &v37);
  LODWORD(v36) = 1065353216;
  LODWORD(v34) = 872415232;
  if (sub_10029D948(&v37, &v34))
  {
    v29 = &v37;
  }

  else
  {
    v29 = &v34;
  }

  LODWORD(v35) = *v29;
  sub_10029D700(&v36, &v35, v31);
  v37 = v31[0];
  sub_10029D334(&v35, 52);
  sub_10029D4B4(&v35, &v37, &v36);
  sub_10029DE94(&v38, &v34);
  sub_10029D4B4(&v36, &v34, v31);
  *(a1 + 40) = v31[0];
  sub_10029D334(&v35, 117);
  sub_10029D4B4(&v35, &v37, &v36);
  sub_10029DE94(&v38.f64[1], &v34);
  sub_10029D4B4(&v36, &v34, v31);
  *(a1 + 44) = v31[0];
  v31[0] = 0x3FF0000000000000;
  if (!sub_10029E5A0(&v38.f64[1], v31))
  {
    v31[0] = 0;
    v31[1] = 0;
    qmemcpy(sub_1002A80E0(v31, 31), "whitePt[1] == softdouble::one()", 31);
    sub_1002A8980(-215, v31, "Luv2RGBfloat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 7871);
  }

  return a1;
}

void sub_1002DA278(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002DA2A8(uint64_t a1, int a2, int a3, float *a4, uint64_t a5, int a6)
{
  *a1 = a2;
  sub_1002D6570(a1);
  if ((atomic_load_explicit(&qword_1004B02A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004B02A0))
  {
    sub_10029DA40(&qword_1004B0298, 4096);
    __cxa_guard_release(&qword_1004B02A0);
  }

  v10 = a1 + 4;
  if (a4)
  {
    v11 = a4[3];
    v20 = *a4;
    v21 = v11;
    v22 = a4[6];
    sub_10029E004(&qword_1004B0298, &v20, &v19);
    *(v10 + 12 * a3) = sub_10029DC5C(&v19);
    sub_10029E004(&qword_1004B0298, &v21, &v19);
    *(a1 + 16) = sub_10029DC5C(&v19);
    sub_10029E004(&qword_1004B0298, &v22, &v19);
    *(v10 + 12 * (a3 ^ 2)) = sub_10029DC5C(&v19);
    v20 = a4[1];
    v12 = a4[7];
    v21 = a4[4];
    v22 = v12;
    sub_10029E004(&qword_1004B0298, &v20, &v19);
    v13 = v10 + 12 * a3;
    *(v13 + 4) = sub_10029DC5C(&v19);
    sub_10029E004(&qword_1004B0298, &v21, &v19);
    *(a1 + 20) = sub_10029DC5C(&v19);
    sub_10029E004(&qword_1004B0298, &v22, &v19);
    v14 = v10 + 12 * (a3 ^ 2);
    *(v14 + 4) = sub_10029DC5C(&v19);
    v20 = a4[2];
    v15 = a4[8];
    v21 = a4[5];
    v22 = v15;
    sub_10029E004(&qword_1004B0298, &v20, &v19);
    *(v13 + 8) = sub_10029DC5C(&v19);
  }

  else
  {
    v20 = *&xmmword_1004D3FF0;
    v21 = *&qword_1004D4008;
    v22 = *&qword_1004D4020;
    sub_10029E004(&qword_1004B0298, &v20, &v19);
    *(v10 + 12 * a3) = sub_10029DC5C(&v19);
    sub_10029E004(&qword_1004B0298, &v21, &v19);
    *(a1 + 16) = sub_10029DC5C(&v19);
    sub_10029E004(&qword_1004B0298, &v22, &v19);
    *(v10 + 12 * (a3 ^ 2)) = sub_10029DC5C(&v19);
    v20 = *(&xmmword_1004D3FF0 + 1);
    v21 = *&xmmword_1004D4010;
    v22 = *&qword_1004D4028;
    sub_10029E004(&qword_1004B0298, &v20, &v19);
    v16 = v10 + 12 * a3;
    *(v16 + 4) = sub_10029DC5C(&v19);
    sub_10029E004(&qword_1004B0298, &v21, &v19);
    *(a1 + 20) = sub_10029DC5C(&v19);
    sub_10029E004(&qword_1004B0298, &v22, &v19);
    v14 = v10 + 12 * (a3 ^ 2);
    *(v14 + 4) = sub_10029DC5C(&v19);
    v20 = *&qword_1004D4000;
    v21 = *(&xmmword_1004D4010 + 1);
    v22 = *&qword_1004D4030;
    sub_10029E004(&qword_1004B0298, &v20, &v19);
    *(v16 + 8) = sub_10029DC5C(&v19);
  }

  sub_10029E004(&qword_1004B0298, &v21, &v19);
  *(a1 + 24) = sub_10029DC5C(&v19);
  sub_10029E004(&qword_1004B0298, &v22, &v19);
  *(v14 + 8) = sub_10029DC5C(&v19);
  v17 = word_1004C0600;
  if (a6)
  {
    v17 = word_1004BE600;
  }

  *(a1 + 40) = v17;
  return a1;
}

void sub_1002DA6C4(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

uint64_t sub_1002DA6FC(uint64_t result, int *a2)
{
  v2 = a2[1];
  v3 = *a2;
  if (v3 < v2)
  {
    v4 = *(result + 56);
    v5 = *(result + 48);
    v59 = *(result + 52) / 2;
    v60 = v5 / 2;
    v6 = 2 * v4;
    v7 = v4 * v5;
    v8 = 2 * v3;
    v57 = v4;
    v56 = v4 + 1;
    v9 = (2 * v3) | 1;
    do
    {
      v11 = *(result + 8);
      v10 = *(result + 16);
      v12 = v11 + v10 * 2 * v3;
      v13 = v11 + v10 * ((2 * v3) | 1);
      v14 = *(result + 60);
      if (v14 == 1)
      {
        v15 = v12 + 2;
      }

      else
      {
        v15 = v11 + v10 * 2 * v3;
      }

      v68 = v15;
      if (v14 == 1)
      {
        v16 = v11 + v10 * 2 * v3;
      }

      else
      {
        v16 = v12 + 2;
      }

      v67 = v16;
      if (v14 == 1)
      {
        v17 = v13 + 2;
      }

      else
      {
        v17 = v11 + v10 * ((2 * v3) | 1);
      }

      v66 = v17;
      if (v14 == 1)
      {
        v18 = v11 + v10 * ((2 * v3) | 1);
      }

      else
      {
        v18 = v13 + 2;
      }

      v65 = v18;
      v19 = *(result + 62);
      v21 = *(result + 32);
      v20 = *(result + 40);
      v22 = v21 + v20 * ((v3 + (v3 >> 31)) >> 1) + v3 % 2 * v60;
      v23 = v59 + v3 + ((v59 + v3) >> 31);
      v24 = v21 + v20 * (v23 >> 1);
      v25 = v23 & 0xFFFFFFFE;
      v26 = v21 + v20 * v3;
      v27 = v19 == 1;
      if (v19 == 1)
      {
        v28 = v26;
      }

      else
      {
        v28 = v22;
      }

      if (v27)
      {
        v29 = v26 + 1;
      }

      else
      {
        v29 = v24 + (v59 + v3 - v25) * v60;
      }

      if (*(result + 61))
      {
        v30 = v29;
      }

      else
      {
        v30 = v28;
      }

      if (*(result + 61))
      {
        v31 = v28;
      }

      else
      {
        v31 = v29;
      }

      if (v7 >= 1)
      {
        v62 = v8;
        v63 = v3;
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v64 = *(result + 24) + v20 * v8;
        v35 = v10 * v8;
        v36 = v11 + v56 + v10 * v8;
        v37 = v18 + v57;
        v61 = v9;
        v38 = v10 * v9;
        v39 = v11 + v56 + v10 * v9;
        v40 = v11 + 1;
        v41 = v11 + 1 + v35;
        v42 = v40 + v38;
        do
        {
          v43 = *(v67 + v34);
          v44 = *(v41 + v34);
          v45 = *(v68 + v34);
          v46 = *(v37 + v34);
          v47 = *(v39 + v34);
          v48 = 528482 * *(v36 + v34) + 269484 * *(v67 + v57 + v34) + 102760 * *(v68 + v57 + v34);
          v49 = *(v66 + v57 + v34);
          v50 = 528482 * *(v42 + v34) + 269484 * *(v65 + v34) + 102760 * *(v66 + v34);
          v51 = (v64 + v32);
          *v51 = (528482 * v44 + 269484 * v43 + 102760 * v45 + 17301504) >> 20;
          v51[1] = (v48 + 17301504) >> 20;
          v51[*(result + 40)] = (v50 + 17301504) >> 20;
          v51[*(result + 40) + 1] = (528482 * v47 + 269484 * v46 + 102760 * v49 + 17301504) >> 20;
          v52 = 268130321 * v44 + 268280268 * v43;
          v53 = 268049581 * v44 + 460324 * v43 + 268361008 * v45;
          v54 = (v52 + 460324 * v45 + 134742016) >> 20;
          if (*(result + 62))
          {
            v55 = v32;
          }

          else
          {
            v55 = v33;
          }

          *(v30 + v55) = v54;
          *(v31 + v55) = (v53 + 134742016) >> 20;
          v34 += v6;
          ++v33;
          v32 += 2;
        }

        while (v34 < v7);
        v2 = a2[1];
        v8 = v62;
        v3 = v63;
        v9 = v61;
      }

      ++v3;
      v8 += 2;
      v9 += 2;
    }

    while (v3 < v2);
  }

  return result;
}

void sub_1002DAA34(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

void sub_1002DAA6C(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v7, &off_100477200);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = (*(a1 + 24) + *(a1 + 32) * v4);
    v6 = *(a1 + 8) + *(a1 + 16) * v4;
    do
    {
      sub_1002DAB20(*(a1 + 48), v6, v5, *(a1 + 40));
      ++v4;
      v6 += *(a1 + 16);
      v5 += *(a1 + 32);
    }

    while (v4 < a2[1]);
  }

  if (v8)
  {
    sub_1002ACC1C(v7);
  }
}

int *sub_1002DAB20(int *result, uint64_t a2, char *a3, int a4)
{
  v4 = *result;
  v5 = result[2];
  if (result[1] == 3)
  {
    v6 = 3 * a4;
    if (v4 == 3)
    {
      if (a4 >= 16)
      {
        v7 = 0;
        do
        {
          v14 = (a2 + v7);
          v45 = vld3q_s8(v14);
          *v43.val[0].i8 = v45;
          v45.val[0] = v43.val[v5];
          v45.val[2] = v43.val[(v5 ^ 2)];
          v15 = &a3[v7];
          vst3q_s8(v15, v45);
          v7 += 48;
        }

        while (v7 <= v6 - 48);
        a2 += v7;
        v8 = v6 - 24;
        if (v7 > v6 - 24)
        {
LABEL_18:
          if (v7 < v6)
          {
            v17 = &a3[v7 + 2];
            do
            {
              v18 = *(a2 + 1);
              v19 = *(a2 + (v5 ^ 2));
              *(v17 - 2) = *(a2 + v5);
              *(v17 - 1) = v18;
              *v17 = v19;
              v17 += 3;
              a2 += 3;
              LODWORD(v7) = v7 + 3;
            }

            while (v6 > v7);
          }

          return result;
        }
      }

      else
      {
        LODWORD(v7) = 0;
        v8 = v6 - 24;
        if (v6 - 24 < 0)
        {
          goto LABEL_18;
        }
      }

      v7 = v7;
      do
      {
        v44 = vld3_s8(a2);
        a2 += 24;
        *v43.val[0].i8 = v44;
        v44.val[0] = v43.val[0].i64[v5];
        v44.val[2] = v43.val[0].i64[(v5 ^ 2)];
        v16 = &a3[v7];
        vst3_s8(v16, v44);
        v7 += 24;
      }

      while (v7 <= v8);
      goto LABEL_18;
    }

    if (a4 >= 16)
    {
      v11 = 0;
      do
      {
        v50 = vld4q_s8(a2);
        a2 += 64;
        v43 = v50;
        v50.val[0] = v43.val[v5];
        v50.val[2] = v43.val[(v5 ^ 2)];
        v26 = &a3[v11];
        vst3q_s8(v26, *v50.val[0].i8);
        v11 += 48;
      }

      while (v11 <= v6 - 48);
    }

    else
    {
      LODWORD(v11) = 0;
    }

    if (v11 <= v6 - 24)
    {
      v11 = v11;
      do
      {
        v47 = vld4_s8(a2);
        a2 += 32;
        *v43.val[0].i8 = v47;
        v47.val[0] = v43.val[0].i64[v5];
        v47.val[2] = v43.val[0].i64[(v5 ^ 2)];
        v27 = &a3[v11];
        vst3_s8(v27, *v47.val[0].i8);
        v11 += 24;
      }

      while (v11 <= v6 - 24);
    }

    if (v11 < v6)
    {
      v28 = &a3[v11 + 2];
      do
      {
        v29 = *(a2 + 1);
        v30 = *(a2 + (v5 ^ 2));
        *(v28 - 2) = *(a2 + v5);
        *(v28 - 1) = v29;
        *v28 = v30;
        v28 += 3;
        a2 += 4;
        LODWORD(v11) = v11 + 3;
      }

      while (v6 > v11);
    }
  }

  else if (v4 == 3)
  {
    v9 = 3 * a4;
    if (a4 >= 16)
    {
      v10 = 0;
      do
      {
        v20 = (a2 + v10);
        *v49.val[0].i8 = vld3q_s8(v20);
        v43.val[v5] = v49.val[0];
        v43.val[1] = v49.val[1];
        v43.val[(v5 ^ 2)] = v49.val[2];
        v49.val[3] = *(result + 1);
        v49.val[0] = v43.val[0];
        v49.val[1] = v43.val[1];
        v49.val[2] = v43.val[2];
        vst4q_s8(a3, v49);
        a3 += 64;
        v10 += 48;
      }

      while (v10 <= v9 - 48);
    }

    else
    {
      LODWORD(v10) = 0;
    }

    if (v10 <= v9 - 24)
    {
      v10 = v10;
      do
      {
        v21 = (a2 + v10);
        *v46.val[0].i8 = vld3_s8(v21);
        v43.val[0].i64[v5] = v46.val[0];
        v43.val[0].i64[1] = v46.val[1];
        v43.val[0].i64[(v5 ^ 2)] = v46.val[2];
        v46.val[3] = *(result + 4);
        *v46.val[0].i8 = v43.val[0];
        v46.val[2] = v43.val[1].i64[0];
        vst4_s8(a3, v46);
        a3 += 32;
        v10 += 24;
      }

      while (v10 <= v9 - 24);
    }

    if (v10 < v9)
    {
      v22 = (a2 + v10 + 2);
      do
      {
        v23 = *(v22 - 2);
        v24 = *(v22 - 1);
        v25 = *v22;
        v22 += 3;
        a3[v5] = v23;
        a3[1] = v24;
        a3[v5 ^ 2] = v25;
        a3[3] = -1;
        a3 += 4;
        LODWORD(v10) = v10 + 3;
      }

      while (v9 > v10);
    }
  }

  else
  {
    v12 = 4 * a4;
    if (a4 >= 16)
    {
      v13 = 0;
      do
      {
        v31 = (a2 + v13);
        v51 = vld4q_s8(v31);
        v43 = v51;
        v51.val[0] = v43.val[v5];
        v51.val[2] = v43.val[(v5 ^ 2)];
        v32 = &a3[v13];
        vst4q_s8(v32, v51);
        v13 += 64;
      }

      while (v13 <= v12 - 64);
    }

    else
    {
      LODWORD(v13) = 0;
    }

    if (v13 <= v12 - 32)
    {
      v13 = v13;
      do
      {
        v33 = (a2 + v13);
        v48 = vld4_s8(v33);
        *v43.val[0].i8 = v48;
        v48.val[0] = v43.val[0].i64[v5];
        v48.val[2] = v43.val[0].i64[(v5 ^ 2)];
        v34 = &a3[v13];
        vst4_s8(v34, v48);
        v13 += 32;
      }

      while (v13 <= v12 - 32);
    }

    if (v13 < v12)
    {
      v35 = v13;
      v36 = &a3[v13];
      v37 = v35 + 3;
      v38 = (v35 + a2 + 1);
      do
      {
        v39 = *v38;
        v40 = v38[1];
        v41 = v38[2];
        v36[v5] = *(v38 - 1);
        v36[1] = v39;
        v36[v5 ^ 2] = v40;
        v36[3] = v41;
        v36 += 4;
        v42 = v37 + 1;
        v37 += 4;
        v38 += 4;
      }

      while (v42 < v12);
    }
  }

  return result;
}

void sub_1002DAEEC(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

void sub_1002DAF24(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v43, &off_100477260);
  v4 = a2[1];
  v5 = *a2;
  if (v5 < v4)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    v8 = v6 + v7 * v5;
    v10 = *(a1 + 24);
    v9 = *(a1 + 32);
    v11 = v9 * v5;
    v12 = *(a1 + 48);
    v13 = *(a1 + 40);
    v14 = v12[1];
    v15 = *v12;
    v16 = v12[2];
    v17 = v16 ^ 2;
    v18 = 3 * v13;
    if (v14 == 3)
    {
      if (v13 >= 1)
      {
        v19 = 2 * v15;
        v20 = v11 + v10 + 4;
        do
        {
          v21 = 0;
          v22 = v20;
          v23 = v8;
          do
          {
            v24 = *(v23 + 2);
            v25 = *(v23 + 2 * v17);
            *(v22 - 2) = *(v23 + 2 * v16);
            *(v22 - 1) = v24;
            *v22 = v25;
            v22 += 3;
            v21 += 3;
            v23 += v19;
          }

          while (v21 < v18);
          LODWORD(v5) = v5 + 1;
          v8 += v7;
          v20 += v9;
        }

        while (v5 != v4);
      }
    }

    else
    {
      v26 = v10 + v11;
      if (v15 == 3)
      {
        if (v13 >= 1)
        {
          v27 = v7 * v5 + v6 + 4;
          do
          {
            v28 = 0;
            v29 = v27;
            v30 = v26;
            do
            {
              v31 = *(v29 - 2);
              v32 = *(v29 - 1);
              v33 = *v29;
              v29 += 3;
              *(v30 + 2 * v16) = v31;
              *(v30 + 2) = v32;
              *(v30 + 2 * v17) = v33;
              *(v30 + 6) = -1;
              v28 += 3;
              v30 += 8;
            }

            while (v28 < v18);
            LODWORD(v5) = v5 + 1;
            v26 += v9;
            v27 += v7;
          }

          while (v5 != v4);
        }
      }

      else if (v13 >= 1)
      {
        v34 = (4 * v13);
        v35 = v10 + v11 + 2 * v17;
        v36 = v10 + v11 + 2 * v16;
        do
        {
          v37 = 0;
          v38 = 0;
          do
          {
            v39 = *(v8 + v37 + 2);
            v40 = *(v8 + v37 + 4);
            v41 = *(v8 + v37 + 6);
            *(v36 + 2 * v38) = *(v8 + v37);
            v42 = v26 + v37;
            *(v42 + 2) = v39;
            *(v35 + 2 * v38) = v40;
            *(v42 + 6) = v41;
            v38 += 4;
            v37 += 8;
          }

          while (v38 < v34);
          LODWORD(v5) = v5 + 1;
          v8 += v7;
          v26 += v9;
          v35 += v9;
          v36 += v9;
        }

        while (v5 != v4);
      }
    }
  }

  if (v44)
  {
    sub_1002ACC1C(v43);
  }
}

void sub_1002DB108(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

void sub_1002DB140(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v41, &off_1004772C0);
  v4 = a2[1];
  v5 = *a2;
  if (v5 < v4)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    v8 = v6 + v7 * v5;
    v10 = *(a1 + 24);
    v9 = *(a1 + 32);
    v11 = v9 * v5;
    v12 = *(a1 + 48);
    v13 = *(a1 + 40);
    v14 = v12[1];
    v15 = *v12;
    v16 = v12[2];
    v17 = v16 ^ 2;
    v18 = 3 * v13;
    if (v14 == 3)
    {
      if (v13 >= 1)
      {
        v19 = v11 + v10 + 8;
        do
        {
          v20 = 0;
          v21 = v19;
          v22 = v8;
          do
          {
            v23 = *(v22 + 4);
            v24 = *(v22 + 4 * v17);
            *(v21 - 2) = *(v22 + 4 * v16);
            *(v21 - 1) = v23;
            *v21 = v24;
            v21 += 3;
            v20 += 3;
            v22 += 4 * v15;
          }

          while (v20 < v18);
          LODWORD(v5) = v5 + 1;
          v8 += v7;
          v19 += v9;
        }

        while (v5 != v4);
      }
    }

    else
    {
      v25 = v10 + v11;
      if (v15 == 3)
      {
        if (v13 >= 1)
        {
          v26 = v7 * v5 + v6 + 8;
          do
          {
            v27 = 0;
            v28 = v26;
            v29 = v25;
            do
            {
              v30 = *(v28 - 2);
              v31 = *(v28 - 1);
              v32 = *v28;
              v28 += 3;
              *(v29 + 4 * v16) = v30;
              *(v29 + 4) = v31;
              *(v29 + 4 * v17) = v32;
              *(v29 + 12) = 1065353216;
              v27 += 3;
              v29 += 16;
            }

            while (v27 < v18);
            LODWORD(v5) = v5 + 1;
            v25 += v9;
            v26 += v7;
          }

          while (v5 != v4);
        }
      }

      else if (v13 >= 1)
      {
        v33 = v10 + v11 + 4 * v17;
        v34 = v10 + v11 + 4 * v16;
        do
        {
          v35 = 0;
          v36 = 0;
          do
          {
            v37 = *(v8 + v35 + 4);
            v38 = *(v8 + v35 + 8);
            v39 = *(v8 + v35 + 12);
            *(v34 + 4 * v36) = *(v8 + v35);
            v40 = v25 + v35;
            *(v40 + 4) = v37;
            *(v33 + 4 * v36) = v38;
            *(v40 + 12) = v39;
            v36 += 4;
            v35 += 16;
          }

          while (v36 < (4 * v13));
          LODWORD(v5) = v5 + 1;
          v8 += v7;
          v25 += v9;
          v33 += v9;
          v34 += v9;
        }

        while (v5 != v4);
      }
    }
  }

  if (v42)
  {
    sub_1002ACC1C(v41);
  }
}

void sub_1002DB314(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

void sub_1002DB34C(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v7, &off_100477320);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = (*(a1 + 24) + *(a1 + 32) * v4);
    v6 = *(a1 + 8) + *(a1 + 16) * v4;
    do
    {
      sub_1002DB414(*(a1 + 48), v6, v5, *(a1 + 40));
      ++v4;
      v6 += *(a1 + 16);
      v5 = (v5 + *(a1 + 32));
    }

    while (v4 < a2[1]);
  }

  if (v8)
  {
    sub_1002ACC1C(v7);
  }
}

unint64_t sub_1002DB414(unint64_t result, uint64_t a2, int8x16_t *a3, unsigned int a4)
{
  v4 = *result;
  v5 = *(result + 4);
  if (*(result + 8) != 6)
  {
    if (v4 == 3)
    {
      if (a4 >= 8)
      {
        v7 = 0;
        v22 = a3;
        do
        {
          v181 = vld3_s8(a2);
          a2 += 24;
          *v179.val[0].i8 = v181;
          *v22++ = vorrq_s8(vorrq_s8(vshll_n_u8(vand_s8(*(result + 24), v181.val[1]), 2uLL), vmovl_u8(vshr_n_u8(v179.val[v5], 3uLL))), vshll_n_u8(vand_s8(v179.val[(v5 ^ 2)], *(result + 24)), 7uLL));
          v7 += 8;
        }

        while (v7 <= a4 - 8);
      }

      else
      {
        LODWORD(v7) = 0;
      }

      if (v7 >= a4)
      {
        return result;
      }

      v23 = v5 ^ 2;
      v24 = v7;
      v25 = a4 - v7;
      if (v25 >= 9)
      {
        v26 = a3 + 2 * v7;
        v27 = a3 + 2 * a4;
        result = 3 * a4 + v23 - 3 * v7 + a2 - 2;
        v28 = v26 >= a2 + 3 * a4 + ~(3 * v7) || a2 + 1 >= v27;
        v29 = !v28;
        v30 = v26 >= 3 * a4 + v5 - 3 * v7 + a2 - 2 || a2 + v5 >= v27;
        v31 = !v30;
        v32 = a2 + v23 >= v27 || v26 >= result;
        if (v32 && !v29 && !v31)
        {
          if (v25 < 0x11)
          {
            v33 = 0;
LABEL_133:
            if ((v25 & 7) != 0)
            {
              v108 = v25 & 7;
            }

            else
            {
              v108 = 8;
            }

            v109 = v25 - v108;
            v110 = a4 - v108;
            v111 = a2 + 3 * v109;
            v112 = (a3 + 2 * v33 + 2 * v7);
            v113 = v108 + v33 + v7 - a4;
            v114 = a2 + v33 + 2 * v33;
            do
            {
              v115 = (v114 + v5);
              v116 = vld3_s8(v115);
              v117 = (v114 + 1);
              v118 = vld3_s8(v117);
              v119 = (v114 + v23);
              v120 = vld3_s8(v119);
              *v112++ = vorrq_s8(vorrq_s8(vshll_n_u8(vand_s8(v118, 0xF8F8F8F8F8F8F8F8), 2uLL), vmovl_u8(vshr_n_u8(v116, 3uLL))), vshll_n_u8(vand_s8(v120, 0xF8F8F8F8F8F8F8F8), 7uLL));
              v114 += 24;
              v113 += 8;
            }

            while (v113);
            v24 = v110;
            a2 = v111;
            goto LABEL_139;
          }

          v95 = 16;
          if ((v25 & 0xF) != 0)
          {
            v95 = v25 & 0xF;
          }

          v33 = v25 - v95;
          v96 = (a3 + 2 * v7);
          v97 = v95 + v7 - a4;
          v98.i64[0] = 0xF8F8F8F8F8F8F8F8;
          v98.i64[1] = 0xF8F8F8F8F8F8F8F8;
          v99 = a2;
          do
          {
            v100 = (v99 + v5);
            v101 = vld3q_s8(v100);
            v102 = vshrq_n_u8(v101, 3uLL);
            v103 = (v99 + 1);
            v104 = vld3q_s8(v103);
            v105 = vandq_s8(v104, v98);
            result = v99 + v23;
            v106 = vld3q_s8(result);
            v107 = vandq_s8(v106, v98);
            *v96 = vorrq_s8(vorrq_s8(vshll_n_u8(*v105.i8, 2uLL), vmovl_u8(*v102.i8)), vshll_n_u8(*v107.i8, 7uLL));
            v96[1] = vorrq_s8(vorrq_s8(vshll_high_n_u8(v105, 2uLL), vmovl_high_u8(v102)), vshll_high_n_u8(v107, 7uLL));
            v96 += 2;
            v99 += 48;
            v97 += 16;
          }

          while (v97);
          if (v95 > 8)
          {
            goto LABEL_133;
          }

          a2 += 3 * v33;
          v24 = v33 + v7;
        }
      }

LABEL_139:
      v121 = &a3->i16[v24];
      v122 = a4 - v24;
      do
      {
        *v121++ = (*(a2 + v5) >> 3) & 0x1F | (32 * (((*(a2 + 1) & 0xF8) >> 3) & 0x1F)) & 0x83FF | ((((*(a2 + v23) & 0xF8) >> 3) & 0x1F) << 10);
        a2 += 3;
        --v122;
      }

      while (v122);
      return result;
    }

    if (a4 >= 8)
    {
      v9 = 0;
      v48 = a3;
      do
      {
        v183 = vld4_s8(a2);
        a2 += 32;
        v179 = v183;
        v49 = *(result + 24);
        v50 = vshll_n_u8(vand_s8(v49, v183.val[1]), 2uLL);
        *v183.val[1].i8 = *(result + 48);
        *v183.val[0].i8 = veorq_s8(*(result + 64), vceqq_s16(*v183.val[1].i8, vmovl_u8(v183.val[3])));
        *v48++ = vorrq_s8(vorrq_s8(vorrq_s8(v50, vmovl_u8(vshr_n_u8(v179.val[v5], 3uLL))), vshll_n_u8(vand_s8(v179.val[(v5 ^ 2)], v49), 7uLL)), vorrq_s8(vbicq_s8(*v183.val[1].i8, *v183.val[0].i8), vandq_s8(*v183.val[0].i8, *(result + 32))));
        v9 += 8;
      }

      while (v9 <= a4 - 8);
    }

    else
    {
      LODWORD(v9) = 0;
    }

    if (v9 >= a4)
    {
      return result;
    }

    v51 = v5 ^ 2;
    v52 = v9;
    v53 = a4 - v9;
    if (v53 >= 9)
    {
      v54 = (a3 + 2 * v9);
      v55 = a3 + 2 * a4;
      result = a2 + 4 * a4 - 4 * v9;
      v56 = v54 >= 4 * a4 + v51 - 4 * v9 + a2 - 3 || a2 + v51 >= v55;
      v57 = !v56;
      v58 = v54 >= 4 * a4 + v5 - 4 * v9 + a2 - 3 || a2 + v5 >= v55;
      v59 = !v58;
      v60 = a2 + 1 >= v55 || v54 >= result;
      if (v60 && !v57 && !v59)
      {
        if (v53 < 0x11)
        {
          v61 = 0;
LABEL_163:
          if ((v53 & 7) != 0)
          {
            v167 = v53 & 7;
          }

          else
          {
            v167 = 8;
          }

          v168 = (a3 + 2 * v61 + 2 * v9);
          v169 = a2 + 4 * v61;
          v170 = v167 + v61 + v9 - a4;
          v171.i64[0] = 0x8000800080008000;
          v171.i64[1] = 0x8000800080008000;
          do
          {
            v172 = (v169 + v5);
            v173 = vld4_s8(v172);
            v174 = (v169 + 1);
            v184 = vld4_s8(v174);
            v175 = (v169 + v51);
            v176 = vld4_s8(v175);
            *v168++ = vorrq_s8(vorrq_s8(vorrq_s8(vshll_n_u8(vand_s8(v184.val[0], 0xF8F8F8F8F8F8F8F8), 2uLL), vmovl_u8(vshr_n_u8(v173, 3uLL))), vshll_n_u8(vand_s8(v176, 0xF8F8F8F8F8F8F8F8), 7uLL)), vbicq_s8(v171, vmovl_s8(vceqz_s8(v184.val[2]))));
            v169 += 32;
            v170 += 8;
          }

          while (v170);
          v52 = a4 - v167;
          a2 += 4 * (v53 - v167);
          goto LABEL_169;
        }

        v152 = 16;
        if ((v53 & 0xF) != 0)
        {
          v152 = v53 & 0xF;
        }

        v61 = v53 - v152;
        v153 = v152 + v9 - a4;
        v154.i64[0] = 0xF8F8F8F8F8F8F8F8;
        v154.i64[1] = 0xF8F8F8F8F8F8F8F8;
        v155.i64[0] = 0x8000800080008000;
        v155.i64[1] = 0x8000800080008000;
        v156 = a2;
        do
        {
          v157 = (v156 + v5);
          v158 = vld4q_s8(v157);
          v159 = vshrq_n_u8(v158, 3uLL);
          v160 = vmovl_high_u8(v159);
          v161 = (v156 + 1);
          v185 = vld4q_s8(v161);
          v162 = vandq_s8(v185.val[0], v154);
          v163 = vorrq_s8(vshll_n_u8(*v162.i8, 2uLL), vmovl_u8(*v159.i8));
          result = v156 + v51;
          v164 = vld4q_s8(result);
          v165 = vorrq_s8(vshll_high_n_u8(v162, 2uLL), v160);
          v166 = vandq_s8(v164, v154);
          v185.val[0] = vceqzq_s8(v185.val[2]);
          *v54 = vorrq_s8(vorrq_s8(v163, vshll_n_u8(*v166.i8, 7uLL)), vbicq_s8(v155, vmovl_s8(*v185.val[0].i8)));
          v54[1] = vorrq_s8(vorrq_s8(v165, vshll_high_n_u8(v166, 7uLL)), vbicq_s8(v155, vmovl_high_s8(v185.val[0])));
          v54 += 2;
          v156 += 64;
          v153 += 16;
        }

        while (v153);
        if (v152 > 8)
        {
          goto LABEL_163;
        }

        a2 += 4 * v61;
        v52 = v61 + v9;
      }
    }

LABEL_169:
    v177 = &a3->i16[v52];
    v178 = a4 - v52;
    do
    {
      *v177++ = (*(a2 + v5) >> 3) & 0x1F | (32 * (((*(a2 + 1) & 0xF8) >> 3) & 0x1F)) & 0x83FF | ((((*(a2 + v51) & 0xF8) >> 3) & 0x1F) << 10) | ((*(a2 + 3) != 0) << 15);
      a2 += 4;
      --v178;
    }

    while (v178);
    return result;
  }

  if (v4 != 3)
  {
    if (a4 >= 8)
    {
      v8 = 0;
      v34 = a3;
      do
      {
        v182 = vld4_s8(a2);
        a2 += 32;
        v179 = v182;
        *v34++ = vorrq_s8(vorrq_s8(vshll_n_u8(vand_s8(*(result + 16), v182.val[1]), 3uLL), vmovl_u8(vshr_n_u8(v179.val[v5], 3uLL))), vshll_n_s8(vand_s8(*(result + 24), v179.val[(v5 ^ 2)]), 8uLL));
        v8 += 8;
      }

      while (v8 <= a4 - 8);
    }

    else
    {
      LODWORD(v8) = 0;
    }

    if (v8 >= a4)
    {
      return result;
    }

    v35 = v5 ^ 2;
    v36 = v8;
    v37 = a4;
    v38 = a4 - v36;
    if (v38 >= 9)
    {
      v39 = (a3 + 2 * v36);
      v40 = a3 + 2 * a4;
      v41 = 4 * a4 + v35 - 4 * v36 + a2 - 3;
      result = 4 * v37 + v5 - 4 * v36 + a2 - 3;
      v42 = v39 >= 4 * v37 - 4 * v36 + a2 - 2 || a2 + 1 >= v40;
      v43 = !v42;
      v44 = v39 >= result || a2 + v5 >= v40;
      v45 = !v44;
      v46 = a2 + v35 >= v40 || v39 >= v41;
      if (v46 && !v43 && !v45)
      {
        if (v38 < 0x11)
        {
          v47 = 0;
LABEL_148:
          if ((v38 & 7) != 0)
          {
            v137 = v38 & 7;
          }

          else
          {
            v137 = 8;
          }

          v138 = v38 - v137;
          v139 = v38 - v137 + v36;
          v140 = a2 + 4 * v138;
          v141 = (a3 + 2 * v47 + 2 * v36);
          v142 = a2 + 4 * v47;
          v143 = v137 + v47 + v36 - v37;
          do
          {
            v144 = (v142 + v5);
            v145 = vld4_s8(v144);
            v146 = (v142 + 1);
            v147 = vld4_s8(v146);
            v148 = (v142 + v35);
            v149 = vld4_s8(v148);
            *v141++ = vorrq_s8(vorrq_s8(vshll_n_u8(vand_s8(v147, 0xFCFCFCFCFCFCFCFCLL), 3uLL), vmovl_u8(vshr_n_u8(v145, 3uLL))), vshll_n_s8(vand_s8(v149, 0xF8F8F8F8F8F8F8F8), 8uLL));
            v142 += 32;
            v143 += 8;
          }

          while (v143);
          v36 = v139;
          a2 = v140;
          goto LABEL_154;
        }

        v123 = 16;
        if ((v38 & 0xF) != 0)
        {
          v123 = v38 & 0xF;
        }

        v47 = v38 - v123;
        v124 = v123 + v36 - v37;
        v125.i64[0] = 0xFCFCFCFCFCFCFCFCLL;
        v125.i64[1] = 0xFCFCFCFCFCFCFCFCLL;
        v126.i64[0] = 0xF8F8F8F8F8F8F8F8;
        v126.i64[1] = 0xF8F8F8F8F8F8F8F8;
        v127 = a2;
        do
        {
          v128 = (v127 + v5);
          v129 = vld4q_s8(v128);
          v130 = vshrq_n_u8(v129, 3uLL);
          v131 = (v127 + 1);
          v132 = vld4q_s8(v131);
          v133 = vandq_s8(v132, v125);
          result = v127 + v35;
          v134 = vld4q_s8(result);
          _Q4 = vandq_s8(v134, v126);
          __asm { SHLL2           V5.8H, V4.16B, #8 }

          *v39 = vorrq_s8(vorrq_s8(vshll_n_u8(*v133.i8, 3uLL), vmovl_u8(*v130.i8)), vshll_n_s8(*_Q4.i8, 8uLL));
          v39[1] = vorrq_s8(vorrq_s8(vshll_high_n_u8(v133, 3uLL), vmovl_high_u8(v130)), _Q5);
          v39 += 2;
          v127 += 64;
          v124 += 16;
        }

        while (v124);
        if (v123 > 8)
        {
          goto LABEL_148;
        }

        a2 += 4 * v47;
        v36 += v47;
      }
    }

LABEL_154:
    v150 = &a3->i16[v36];
    v151 = v37 - v36;
    do
    {
      *v150++ = (*(a2 + v5) >> 3) & 0x1F | (32 * (((*(a2 + 1) & 0xFC) >> 2) & 0x3F)) & 0x7FF | ((((*(a2 + v35) & 0xF8) >> 3) & 0x1F) << 11);
      a2 += 4;
      --v151;
    }

    while (v151);
    return result;
  }

  if (a4 >= 8)
  {
    v6 = 0;
    v10 = a3;
    do
    {
      v180 = vld3_s8(a2);
      a2 += 24;
      *v179.val[0].i8 = v180;
      *v10++ = vorrq_s8(vorrq_s8(vshll_n_u8(vand_s8(*(result + 16), v180.val[1]), 3uLL), vmovl_u8(vshr_n_u8(v179.val[v5], 3uLL))), vshll_n_s8(vand_s8(*(result + 24), v179.val[(v5 ^ 2)]), 8uLL));
      v6 += 8;
    }

    while (v6 <= a4 - 8);
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 < a4)
  {
    v11 = v5 ^ 2;
    v12 = v6;
    v13 = a4 - v6;
    if (v13 < 9)
    {
      goto LABEL_124;
    }

    v14 = a3 + 2 * v6;
    v15 = a3 + 2 * a4;
    result = 3 * a4 + v11 - 3 * v6 + a2 - 2;
    _CF = v14 >= a2 + 3 * a4 + ~(3 * v6) || a2 + 1 >= v15;
    v17 = !_CF;
    v18 = v14 >= 3 * a4 + v5 - 3 * v6 + a2 - 2 || a2 + v5 >= v15;
    v19 = !v18;
    v20 = a2 + v11 >= v15 || v14 >= result;
    if (!v20 || v17 || v19)
    {
      goto LABEL_124;
    }

    if (v13 >= 0x11)
    {
      v62 = 16;
      if ((v13 & 0xF) != 0)
      {
        v62 = v13 & 0xF;
      }

      v21 = v13 - v62;
      v63 = (a3 + 2 * v6);
      v64 = v62 + v6 - a4;
      v65.i64[0] = 0xFCFCFCFCFCFCFCFCLL;
      v65.i64[1] = 0xFCFCFCFCFCFCFCFCLL;
      v66.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v66.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v67 = a2;
      do
      {
        v68 = (v67 + v5);
        v69 = vld3q_s8(v68);
        v70 = vshrq_n_u8(v69, 3uLL);
        v71 = (v67 + 1);
        v72 = vld3q_s8(v71);
        v73 = vandq_s8(v72, v65);
        result = v67 + v11;
        v74 = vld3q_s8(result);
        _Q4 = vandq_s8(v74, v66);
        __asm { SHLL2           V5.8H, V4.16B, #8 }

        *v63 = vorrq_s8(vorrq_s8(vshll_n_u8(*v73.i8, 3uLL), vmovl_u8(*v70.i8)), vshll_n_s8(*_Q4.i8, 8uLL));
        v63[1] = vorrq_s8(vorrq_s8(vshll_high_n_u8(v73, 3uLL), vmovl_high_u8(v70)), _Q5);
        v63 += 2;
        v67 += 48;
        v64 += 16;
      }

      while (v64);
      if (v62 <= 8)
      {
        a2 += 3 * v21;
        v12 = v21 + v6;
LABEL_124:
        v93 = &a3->i16[v12];
        v94 = a4 - v12;
        do
        {
          *v93++ = (*(a2 + v5) >> 3) & 0x1F | (32 * (((*(a2 + 1) & 0xFC) >> 2) & 0x3F)) & 0x7FF | ((((*(a2 + v11) & 0xF8) >> 3) & 0x1F) << 11);
          a2 += 3;
          --v94;
        }

        while (v94);
        return result;
      }
    }

    else
    {
      v21 = 0;
    }

    if ((v13 & 7) != 0)
    {
      v80 = v13 & 7;
    }

    else
    {
      v80 = 8;
    }

    v81 = v13 - v80;
    v82 = a4 - v80;
    v83 = a2 + 3 * v81;
    v84 = (a3 + 2 * v21 + 2 * v6);
    v85 = v80 + v21 + v6 - a4;
    v86 = a2 + v21 + 2 * v21;
    do
    {
      v87 = (v86 + v5);
      v88 = vld3_s8(v87);
      v89 = (v86 + 1);
      v90 = vld3_s8(v89);
      v91 = (v86 + v11);
      v92 = vld3_s8(v91);
      *v84++ = vorrq_s8(vorrq_s8(vshll_n_u8(vand_s8(v90, 0xFCFCFCFCFCFCFCFCLL), 3uLL), vmovl_u8(vshr_n_u8(v88, 3uLL))), vshll_n_s8(vand_s8(v92, 0xF8F8F8F8F8F8F8F8), 8uLL));
      v86 += 24;
      v85 += 8;
    }

    while (v85);
    v12 = v82;
    a2 = v83;
    goto LABEL_124;
  }

  return result;
}

void sub_1002DBE88(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

void sub_1002DBEC0(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v7, &off_100477380);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = (*(a1 + 24) + *(a1 + 32) * v4);
    v6 = (*(a1 + 8) + *(a1 + 16) * v4);
    do
    {
      sub_1002DBF88(*(a1 + 48), v6, v5, *(a1 + 40));
      ++v4;
      v6 = (v6 + *(a1 + 16));
      v5 += *(a1 + 32);
    }

    while (v4 < a2[1]);
  }

  if (v8)
  {
    sub_1002ACC1C(v7);
  }
}

int8x16_t *sub_1002DBF88(int8x16_t *result, int8x16_t *a2, char *a3, int a4)
{
  v4 = result->i32[0];
  v5 = result->i32[1];
  if (result->i32[2] == 6)
  {
    v6 = (a4 - 16);
    if (a4 >= 16)
    {
      v7 = 0;
      v10 = v5 ^ 2;
      v11 = 16 * v4;
      v12 = a2 + 1;
      do
      {
        while (1)
        {
          v13 = v12[-1];
          v14 = vshlq_n_s8(vuzp1q_s8(v13, *v12), 3uLL);
          v15 = vuzp1q_s8(vandq_s8(result[1], vshrq_n_u16(v13, 3uLL)), vandq_s8(vshrq_n_u16(*v12, 3uLL), result[1]));
          v16 = vuzp1q_s8(vandq_s8(result[2], vshrq_n_u16(v13, 8uLL)), vandq_s8(result[2], vshrq_n_u16(*v12, 8uLL)));
          if (v4 == 3)
          {
            break;
          }

          v38.val[v5] = v14;
          v38.val[1] = v15;
          v38.val[v10] = v16;
          v41.val[3] = result[4];
          v41.val[0] = v38.val[0];
          v41.val[1] = v38.val[1];
          v41.val[2] = v38.val[2];
          vst4q_s8(a3, v41);
          v7 += 16;
          a3 += v11;
          v12 += 2;
          if (v7 > v6)
          {
            goto LABEL_10;
          }
        }

        v38.val[v5] = v14;
        v38.val[1] = v15;
        v38.val[v10] = v16;
        v39 = v38;
        vst3q_s8(a3, v39);
        v7 += 16;
        a3 += v11;
        v12 += 2;
      }

      while (v7 <= v6);
    }

    else
    {
      LODWORD(v7) = 0;
    }

LABEL_10:
    if (v7 < a4)
    {
      v17 = v5 ^ 2;
      v18 = v7;
      v19 = a2 + v7;
      v20 = a4 - v18;
      if (v4 == 4)
      {
        do
        {
          v21 = *v19++;
          a3[v5] = 8 * v21;
          a3[1] = (v21 >> 3) & 0xFC;
          a3[v17] = BYTE1(v21) & 0xF8;
          a3[3] = -1;
          a3 += v4;
          --v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v22 = *v19++;
          a3[v5] = 8 * v22;
          a3[1] = (v22 >> 3) & 0xFC;
          a3[v17] = BYTE1(v22) & 0xF8;
          a3 += v4;
          --v20;
        }

        while (v20);
      }
    }
  }

  else
  {
    v8 = (a4 - 16);
    if (a4 >= 16)
    {
      v9 = 0;
      v23 = v5 ^ 2;
      v24 = 16 * v4;
      v25 = a2 + 1;
      do
      {
        while (1)
        {
          v27 = v25[-1];
          v26 = *v25;
          v28 = vshlq_n_s8(vuzp1q_s8(v27, *v25), 3uLL);
          v29 = result[2];
          v30 = vuzp1q_s8(vandq_s8(v29, vshrq_n_u16(v27, 2uLL)), vandq_s8(vshrq_n_u16(*v25, 2uLL), v29));
          v31 = vuzp1q_s8(vandq_s8(v29, vshrq_n_u16(v27, 7uLL)), vandq_s8(vshrq_n_u16(*v25, 7uLL), v29));
          if (v4 == 3)
          {
            break;
          }

          v38.val[v5] = v28;
          v38.val[1] = v30;
          v38.val[v23] = v31;
          v42.val[3] = vbslq_s8(vqmovn_high_u16(vqmovn_u16(vandq_s8(result[3], v27)), vandq_s8(result[3], v26)), result[4], result[5]);
          v42.val[0] = v38.val[0];
          v42.val[1] = v38.val[1];
          v42.val[2] = v38.val[2];
          vst4q_s8(a3, v42);
          v9 += 16;
          a3 += v24;
          v25 += 2;
          if (v9 > v8)
          {
            goto LABEL_20;
          }
        }

        v38.val[v5] = v28;
        v38.val[1] = v30;
        v38.val[v23] = v31;
        v40 = v38;
        vst3q_s8(a3, v40);
        v9 += 16;
        a3 += v24;
        v25 += 2;
      }

      while (v9 <= v8);
    }

    else
    {
      LODWORD(v9) = 0;
    }

LABEL_20:
    if (v9 < a4)
    {
      v32 = v5 ^ 2;
      v33 = v9;
      v34 = a2 + v9;
      v35 = a4 - v33;
      if (v4 == 4)
      {
        do
        {
          v36 = *v34++;
          a3[v5] = 8 * v36;
          a3[1] = (v36 >> 2) & 0xF8;
          a3[v32] = (v36 >> 7) & 0xF8;
          a3[3] = v36 >> 15;
          a3 += v4;
          --v35;
        }

        while (v35);
      }

      else
      {
        do
        {
          v37 = *v34++;
          a3[v5] = 8 * v37;
          a3[1] = (v37 >> 2) & 0xF8;
          a3[v32] = (v37 >> 7) & 0xF8;
          a3 += v4;
          --v35;
        }

        while (v35);
      }
    }
  }

  return result;
}

void sub_1002DC26C(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

void sub_1002DC2A4(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v16, &off_1004773E0);
  v4 = *a2;
  v5 = a2[1];
  if (*a2 < v5 && *(a1 + 40) >= 1)
  {
    v6 = *(a1 + 32);
    v7 = (*(a1 + 24) + v6 * v4);
    v8 = *(a1 + 16);
    v9 = *(a1 + 8) + v8 * v4;
    do
    {
      v10 = *(a1 + 40);
      if (v10 >= 1)
      {
        v11 = *(a1 + 48);
        v12 = v11 + 1;
        v13 = *v11;
        v14 = (v9 + 2);
        v15 = v7;
        do
        {
          *v15++ = (v12[*(v14 - 1) + 256] + v12[*(v14 - 2)] + v12[*v14 + 512]) >> 14;
          v14 += v13;
          --v10;
        }

        while (v10);
        v8 = *(a1 + 16);
        v6 = *(a1 + 32);
        v5 = a2[1];
      }

      ++v4;
      v9 += v8;
      v7 += v6;
    }

    while (v4 < v5);
  }

  if (v17)
  {
    sub_1002ACC1C(v16);
  }
}

void sub_1002DC3A8(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

void sub_1002DC3E0(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v7, &off_100477440);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = (*(a1 + 24) + *(a1 + 32) * v4);
    v6 = (*(a1 + 8) + *(a1 + 16) * v4);
    do
    {
      sub_1002DC4A8(*(a1 + 48), v6, v5, *(a1 + 40));
      ++v4;
      v6 = (v6 + *(a1 + 16));
      v5 = (v5 + *(a1 + 32));
    }

    while (v4 < a2[1]);
  }

  if (v8)
  {
    sub_1002ACC1C(v7);
  }
}

int32x4_t *sub_1002DC4A8(int32x4_t *result, const __int16 *a2, int16x8_t *a3, int a4)
{
  v4 = result->i32[1];
  v5 = result->i32[0];
  v6 = result->i32[2];
  v7 = result->i32[3];
  if (a4 >= 8)
  {
    v8 = 0;
    v16 = a3;
    do
    {
      if (v5 == 3)
      {
        *v19.val[0].i8 = vld3q_s16(a2);
      }

      else
      {
        v19 = vld4q_s16(a2);
      }

      *v16++ = vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(*v19.val[1].i8, result[1].u64[1]), *v19.val[0].i8, *result[1].i8), *v19.val[2].i8, *result[2].i8), result[3]), 0xEuLL), vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(*&vextq_s8(v19.val[1], v19.val[1], 8uLL), result[1].u64[1]), *&vextq_s8(v19.val[0], v19.val[0], 8uLL), *result[1].i8), *&vextq_s8(v19.val[2], v19.val[2], 8uLL), *result[2].i8), result[3]), 0xEuLL);
      v8 += 8;
      a2 += 8 * v5;
    }

    while (v8 <= (a4 - 8));
  }

  else
  {
    LODWORD(v8) = 0;
  }

  v9 = a4 - 4;
  if (v8 <= a4 - 4)
  {
    v8 = v8;
    v10 = 8 * v5;
    v11 = (a3 + 2 * v8);
    if (v5 == 3)
    {
      do
      {
        v17 = vld3_s16(a2);
        a2 = (a2 + v10);
        *v11++ = vshrn_n_s32(vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(v17.val[1], result[1].u64[1]), v17.val[0], *result[1].i8), v17.val[2], *result[2].i8), result[3]), 0xEuLL);
        v8 += 4;
      }

      while (v8 <= v9);
    }

    else
    {
      do
      {
        v18 = vld4_s16(a2);
        a2 = (a2 + v10);
        *v11++ = vshrn_n_s32(vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(v18.val[1], result[1].u64[1]), v18.val[0], *result[1].i8), v18.val[2], *result[2].i8), result[3]), 0xEuLL);
        v8 += 4;
      }

      while (v8 <= v9);
    }
  }

  if (v8 < a4)
  {
    v12 = &a3->i16[v8];
    v13 = (a2 + 2);
    v14 = 2 * v5;
    v15 = a4 - v8;
    do
    {
      *v12++ = (v6 * *(v13 - 1) + v4 * *(v13 - 2) + v7 * *v13 + 0x2000) >> 14;
      v13 = (v13 + v14);
      --v15;
    }

    while (v15);
  }

  return result;
}

void sub_1002DC628(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

void sub_1002DC660(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v30, &off_1004774A0);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = (*(a1 + 24) + *(a1 + 32) * v4);
    v6 = (*(a1 + 8) + *(a1 + 16) * v4);
    do
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      v9 = v8;
      v10 = v7->i32[0];
      v11 = v7->f32[1];
      v12 = v7->f32[2];
      v13 = v7->f32[3];
      if (v10 == 3)
      {
        if (v8 >= 8)
        {
          v14 = 0;
          v18 = v5 + 1;
          v15 = v6;
          do
          {
            v19 = v15;
            v32 = vld3q_f32(v19);
            v19 += 12;
            v18[-1] = vmlaq_f32(vmlaq_f32(vmulq_f32(v32.val[0], v7[1]), v7[2], v32.val[1]), v7[3], v32.val[2]);
            v33 = vld3q_f32(v19);
            *v18 = vmlaq_f32(vmlaq_f32(vmulq_f32(v33.val[0], v7[1]), v7[2], v33.val[1]), v7[3], v33.val[2]);
            v18 += 2;
            v14 += 8;
            v15 += 24;
          }

          while (v14 <= (v8 - 8));
          v14 = v14;
          v16 = v8 - 4;
          if (v14 > v16)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v14 = 0;
          v15 = v6;
          v16 = v8 - 4;
          if (v16 < 0)
          {
            goto LABEL_23;
          }
        }

        v20 = (v5 + 4 * v14);
        do
        {
          v34 = vld3q_f32(v15);
          v15 += 12;
          *v20++ = vmlaq_f32(vmlaq_f32(vmulq_f32(v34.val[0], v7[1]), v7[2], v34.val[1]), v7[3], v34.val[2]);
          v14 += 4;
        }

        while (v14 <= v16);
      }

      else
      {
        if (v8 >= 8)
        {
          v14 = 0;
          v21 = v5 + 1;
          v15 = v6;
          do
          {
            v23 = &v15[4 * v10];
            v35 = vld4q_f32(v15);
            v22 = 32 * v10;
            v15 = (v15 + v22);
            v21[-1] = vmlaq_f32(vmlaq_f32(vmulq_f32(v35.val[0], v7[1]), v7[2], v35.val[1]), v7[3], v35.val[2]);
            v36 = vld4q_f32(v23);
            *v21 = vmlaq_f32(vmlaq_f32(vmulq_f32(v36.val[0], v7[1]), v7[2], v36.val[1]), v7[3], v36.val[2]);
            v21 += 2;
            v14 += 8;
          }

          while (v14 <= (v8 - 8));
          v14 = v14;
          v17 = v8 - 4;
          if (v14 > v17)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v14 = 0;
          v15 = v6;
          v17 = v8 - 4;
          if (v17 < 0)
          {
            goto LABEL_23;
          }
        }

        v24 = (v5 + 4 * v14);
        do
        {
          v37 = vld4q_f32(v15);
          v25 = 16 * v10;
          v15 = (v15 + v25);
          *v24++ = vmlaq_f32(vmlaq_f32(vmulq_f32(v37.val[0], v7[1]), v7[2], v37.val[1]), v7[3], v37.val[2]);
          v14 += 4;
        }

        while (v14 <= v17);
      }

      v14 = v14;
LABEL_23:
      if (v14 < v9)
      {
        v26 = v9 - v14;
        v27 = (v15 + 2);
        v28 = 4 * v10;
        v29 = &v5->f32[v14];
        do
        {
          *v29++ = ((v12 * *(v27 - 1)) + (*(v27 - 2) * v11)) + (*v27 * v13);
          v27 = (v27 + v28);
          --v26;
        }

        while (v26);
      }

      ++v4;
      v6 = (v6 + *(a1 + 16));
      v5 = (v5 + *(a1 + 32));
    }

    while (v4 < a2[1]);
  }

  if (v31)
  {
    sub_1002ACC1C(v30);
  }
}

void sub_1002DC8E4(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

void sub_1002DC91C(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v49, &off_100477500);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = (*(a1 + 24) + *(a1 + 32) * v4);
    v6 = *(a1 + 8) + *(a1 + 16) * v4;
    v7.i64[0] = -1;
    v7.i64[1] = -1;
    v8 = -1;
    do
    {
      v9 = *(a1 + 40);
      if (**(a1 + 48) == 3)
      {
        if (v9 >= 1)
        {
          if (v9 < 8 || (v5 < v6 + v9 ? (v10 = v6 >= &v5[3 * v9]) : (v10 = 1), !v10))
          {
            v11 = 0;
            v14 = v5;
            goto LABEL_24;
          }

          if (v9 >= 0x20)
          {
            v11 = v9 & 0x7FFFFFE0;
            v24 = (v6 + 16);
            v25 = v5;
            v26 = v11;
            do
            {
              v52.val[0] = v24[-1];
              v53.val[0] = *v24;
              v52.val[1] = v52.val[0];
              v52.val[2] = v52.val[0];
              v53.val[1] = *v24;
              v53.val[2] = *v24;
              v27 = v25 + 96;
              vst3q_s8(v25, v52);
              v28 = v25 + 48;
              vst3q_s8(v28, v53);
              v24 += 2;
              v25 = v27;
              v26 -= 32;
            }

            while (v26);
            if (v11 == v9)
            {
              goto LABEL_3;
            }

            if ((v9 & 0x18) == 0)
            {
              v14 = &v5[3 * v11];
LABEL_24:
              v15 = v9 - v11;
              v16 = (v6 + v11);
              v17 = v14 + 2;
              do
              {
                v18 = *v16++;
                *v17 = v18;
                *(v17 - 1) = v18;
                *(v17 - 2) = v18;
                v17 += 3;
                --v15;
              }

              while (v15);
              goto LABEL_3;
            }
          }

          else
          {
            v11 = 0;
          }

          v29 = v11;
          v11 = v9 & 0x7FFFFFF8;
          v14 = &v5[3 * v11];
          v30 = (v6 + v29);
          v31 = v29 - v11;
          v32 = &v5[3 * v29];
          do
          {
            v33 = *v30++;
            v51.val[0] = v33;
            v51.val[1] = v33;
            v51.val[2] = v33;
            vst3_s8(v32, v51);
            v32 += 24;
            v31 += 8;
          }

          while (v31);
          if (v11 == v9)
          {
            goto LABEL_3;
          }

          goto LABEL_24;
        }
      }

      else if (v9 >= 1)
      {
        if (v9 < 8 || (v5 < v6 + v9 ? (v12 = v6 >= &v5[4 * v9]) : (v12 = 1), !v12))
        {
          v13 = 0;
          v19 = v5;
          goto LABEL_28;
        }

        if (v9 >= 0x20)
        {
          v13 = v9 & 0x7FFFFFE0;
          v34 = v5 + 64;
          v35 = (v6 + 16);
          v36 = v13;
          do
          {
            v37 = v34 - 64;
            v38 = v35[-1];
            v54.val[0] = *v35;
            v39 = v38;
            v40 = v38;
            v54.val[1] = *v35;
            v54.val[2] = *v35;
            v54.val[3] = v7;
            vst4q_s8(v37, *(&v7 - 3));
            vst4q_s8(v34, v54);
            v34 += 128;
            v35 += 2;
            v36 -= 32;
          }

          while (v36);
          if (v13 == v9)
          {
            goto LABEL_3;
          }

          if ((v9 & 0x18) == 0)
          {
            v19 = &v5[4 * v13];
LABEL_28:
            v20 = v9 - v13;
            v21 = (v6 + v13);
            v22 = v19 + 3;
            do
            {
              v23 = *v21++;
              *(v22 - 1) = v23;
              *(v22 - 2) = v23;
              *(v22 - 3) = v23;
              *v22 = -1;
              v22 += 4;
              --v20;
            }

            while (v20);
            goto LABEL_3;
          }
        }

        else
        {
          v13 = 0;
        }

        v41 = v13;
        v13 = v9 & 0x7FFFFFF8;
        v19 = &v5[4 * v13];
        v42 = &v5[4 * v41];
        v43 = (v6 + v41);
        v44 = v41 - v13;
        do
        {
          v45 = *v43++;
          v46 = v45;
          v47 = v45;
          v48 = v45;
          vst4_s8(v42, *(&v8 - 3));
          v42 += 32;
          v44 += 8;
        }

        while (v44);
        if (v13 == v9)
        {
          goto LABEL_3;
        }

        goto LABEL_28;
      }

LABEL_3:
      ++v4;
      v6 += *(a1 + 16);
      v5 += *(a1 + 32);
    }

    while (v4 < a2[1]);
  }

  if (v50)
  {
    sub_1002ACC1C(v49);
  }
}

void sub_1002DCBE0(uint64_t a1)
{
  nullsub_1(a1);

  operator delete();
}

void sub_1002DCC18(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v77, &off_100477560);
  v4 = *a2;
  v5 = a2[1];
  v6 = v5 - *a2;
  if (v5 <= *a2)
  {
    goto LABEL_66;
  }

  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = v8 * v4;
  v10 = v7 + v9;
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = v12 * v4;
  v14 = v11 + v13;
  v15 = *(a1 + 40);
  if (**(a1 + 48) == 3)
  {
    if (v15 < 1)
    {
      goto LABEL_66;
    }

    if (v15 <= 3)
    {
      v16 = (v9 + v7 + 4);
      v17 = (v13 + v11 + 8);
      do
      {
        v18 = *(v16 - 2);
        *(v17 - 2) = v18;
        *(v17 - 3) = v18;
        *(v17 - 4) = v18;
        if (v15 != 1)
        {
          v19 = *(v16 - 1);
          v17[1] = v19;
          *v17 = v19;
          *(v17 - 1) = v19;
          if (v15 != 2)
          {
            v20 = *v16;
            v17[4] = *v16;
            v17[3] = v20;
            v17[2] = v20;
          }
        }

        v16 = (v16 + v8);
        v17 = (v17 + v12);
        --v6;
      }

      while (v6);
      goto LABEL_66;
    }

    v26 = v4 + (v5 + ~v4);
    v27 = v10 >= v11 + v12 * v26 + 6 * v15 || v14 >= v7 + v8 * v26 + 2 * v15;
    if (!v27 || (v12 | v8) < 0)
    {
      v67 = 2 * v15;
      v68 = v13 + v11 + 2;
      do
      {
        v69 = 0;
        v70 = v68;
        do
        {
          v71 = *(v10 + v69);
          v70[1] = v71;
          *v70 = v71;
          *(v70 - 1) = v71;
          v69 += 2;
          v70 += 3;
        }

        while (v67 != v69);
        ++v4;
        v10 += v8;
        v68 += v12;
      }

      while (v4 != v5);
      goto LABEL_66;
    }

    v28 = v9 + v7 + 16;
    while (v15 >= 0x10)
    {
      v30 = v15 & 0x7FFFFFF0;
      v31 = v28;
      v32 = v14;
      do
      {
        v80.val[0] = v31[-1];
        v81.val[0] = *v31;
        v80.val[1] = v80.val[0];
        v80.val[2] = v80.val[0];
        v81.val[1] = *v31;
        v81.val[2] = *v31;
        v33 = v32 + 48;
        vst3q_s16(v32, v80);
        v34 = v32 + 24;
        vst3q_s16(v34, v81);
        v31 += 2;
        v32 = v33;
        v30 -= 16;
      }

      while (v30);
      if ((v15 & 0x7FFFFFF0) == v15)
      {
        goto LABEL_24;
      }

      v29 = v15 & 0x7FFFFFF0;
      v35 = v29;
      if ((v15 & 0xC) != 0)
      {
        goto LABEL_31;
      }

LABEL_34:
      v40 = 6 * v35;
      do
      {
        v41 = (v14 + v40);
        v42 = *(v10 + 2 * v35);
        v41[2] = v42;
        v41[1] = v42;
        *v41 = v42;
        ++v35;
        v40 += 6;
      }

      while (v15 != v35);
LABEL_24:
      ++v4;
      v10 += v8;
      v14 += v12;
      v28 += v8;
      if (v4 == v5)
      {
        goto LABEL_66;
      }
    }

    v29 = 0;
LABEL_31:
    v36 = 2 * v29;
    v37 = v29 - (v15 & 0x7FFFFFFC);
    v38 = 6 * v29;
    do
    {
      v39 = (v14 + v38);
      v79.val[0] = *(v10 + v36);
      v79.val[1] = v79.val[0];
      v79.val[2] = v79.val[0];
      vst3_s16(v39, v79);
      v36 += 8;
      v38 += 24;
      v37 += 4;
    }

    while (v37);
    v35 = v15 & 0x7FFFFFFC;
    if (v35 == v15)
    {
      goto LABEL_24;
    }

    goto LABEL_34;
  }

  if (v15 < 1)
  {
    goto LABEL_66;
  }

  if (v15 > 3)
  {
    v43 = v4 + (v5 + ~v4);
    v44 = v10 >= v11 + v12 * v43 + 8 * v15 || v14 >= v7 + v8 * v43 + 2 * v15;
    if (!v44 || (v12 | v8) < 0)
    {
      v72 = 2 * v15;
      v73 = v13 + v11 + 4;
      do
      {
        v74 = 0;
        v75 = v73;
        do
        {
          v76 = *(v10 + v74);
          *v75 = v76;
          *(v75 - 1) = v76;
          *(v75 - 2) = v76;
          v75[1] = -1;
          v74 += 2;
          v75 += 4;
        }

        while (v72 != v74);
        ++v4;
        v10 += v8;
        v73 += v12;
      }

      while (v4 != v5);
      goto LABEL_66;
    }

    v45 = v13 + v11 + 64;
    v46 = v9 + v7 + 16;
    v47.i64[0] = -1;
    v47.i64[1] = -1;
    v48 = -1;
    while (v15 >= 0x10)
    {
      v50 = v46;
      v51 = v45;
      v52 = v15 & 0x7FFFFFF0;
      do
      {
        v53 = v51 - 32;
        v54 = v50[-1];
        v82.val[0] = *v50;
        v55 = v54;
        v56 = v54;
        v82.val[1] = *v50;
        v82.val[2] = *v50;
        v82.val[3] = v47;
        vst4q_s16(v53, *(&v47 - 3));
        vst4q_s16(v51, v82);
        v51 += 64;
        v50 += 2;
        v52 -= 16;
      }

      while (v52);
      if ((v15 & 0x7FFFFFF0) == v15)
      {
        goto LABEL_44;
      }

      v49 = v15 & 0x7FFFFFF0;
      v57 = v49;
      if ((v15 & 0xC) != 0)
      {
        goto LABEL_51;
      }

LABEL_54:
      v65 = (v14 + 8 * v57);
      do
      {
        v66 = *(v10 + 2 * v57);
        v65[2] = v66;
        v65[1] = v66;
        *v65 = v66;
        v65[3] = -1;
        ++v57;
        v65 += 4;
      }

      while (v15 != v57);
LABEL_44:
      ++v4;
      v10 += v8;
      v14 += v12;
      v45 += v12;
      v46 += v8;
      if (v4 == v5)
      {
        goto LABEL_66;
      }
    }

    v49 = 0;
LABEL_51:
    v58 = 8 * v49;
    v59 = 2 * v49;
    v60 = v49 - (v15 & 0x7FFFFFFC);
    do
    {
      v61 = (v14 + v58);
      v62 = *(v10 + v59);
      v63 = v62;
      v64 = v62;
      vst4_s16(v61, *(&v48 - 3));
      v58 += 32;
      v59 += 8;
      v60 += 4;
    }

    while (v60);
    v57 = v15 & 0x7FFFFFFC;
    if (v57 == v15)
    {
      goto LABEL_44;
    }

    goto LABEL_54;
  }

  v21 = (v9 + v7 + 4);
  v22 = (v13 + v11 + 12);
  do
  {
    v23 = *(v21 - 2);
    *(v22 - 4) = v23;
    *(v22 - 5) = v23;
    *(v22 - 6) = v23;
    *(v22 - 3) = -1;
    if (v15 != 1)
    {
      v24 = *(v21 - 1);
      *v22 = v24;
      *(v22 - 1) = v24;
      *(v22 - 2) = v24;
      v22[1] = -1;
      if (v15 != 2)
      {
        v25 = *v21;
        v22[4] = *v21;
        v22[3] = v25;
        v22[2] = v25;
        v22[5] = -1;
      }
    }

    v21 = (v21 + v8);
    v22 = (v22 + v12);
    --v6;
  }

  while (v6);
LABEL_66:
  if (v78)
  {
    sub_1002ACC1C(v77);
  }
}