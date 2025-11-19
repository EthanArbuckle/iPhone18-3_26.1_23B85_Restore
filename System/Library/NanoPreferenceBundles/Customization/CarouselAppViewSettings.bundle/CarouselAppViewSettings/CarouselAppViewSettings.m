double CSLUIIconMaximumIconDiameter()
{
  if (qword_46578 != -1)
  {
    sub_23718();
  }

  return *&qword_46570;
}

void sub_1354(id a1)
{
  v1 = +[UIScreen mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;

  qword_46570 = sqrt(v5 * v5 + v3 * v3);
}

void sub_15D4(uint64_t a1, void *a2)
{
  v2 = a2;
  if (a2)
  {
    v2 = [[UIImage alloc] initWithCGImage:a2 scale:0 orientation:*(a1 + 56)];
  }

  v4 = cslprf_icon_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    [v2 size];
    *buf = 138412802;
    v14 = v5;
    v15 = 2048;
    v16 = v2;
    v17 = 2048;
    v18 = v6;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "CSLUIApplicationIconGenerator iconImageForApplication bundleID=%@ image=%p size=%lf", buf, 0x20u);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1740;
  v10[3] = &unk_3C8D0;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v11 = v2;
  v12 = v8;
  v9 = v2;
  dispatch_async(v7, v10);
}

void sub_1830(id a1)
{
  v1 = dispatch_queue_create("CSLUIApplicationIconGenerator", 0);
  v2 = qword_46580;
  qword_46580 = v1;
}

void sub_1870(uint64_t a1)
{
  v2 = +[CSLUICalendarIconSource sharedInstance];
  v3 = [v2 circularCalendarIcon];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_193C;
  v7[3] = &unk_3C8D0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

_DWORD *sub_1BC4(_DWORD *result, float a2, float a3, float a4)
{
  v4 = roundf(a2);
  v5 = roundf(a3);
  v6 = roundf(a4);
  v7 = vabds_f32(v4, a2);
  v8 = vabds_f32(v5, a3);
  v9 = vabds_f32(v6, a4);
  if (v7 <= v8 || v7 <= v9)
  {
    if (v8 <= v9)
    {
      v6 = -v4 - v5;
    }
  }

  else
  {
    v4 = -v5 - v6;
  }

  *result = v4;
  result[1] = v6;
  return result;
}

id sub_1F20(uint64_t a1)
{
  [*(a1 + 32) setCenter:{*(a1 + 40), *(a1 + 48)}];
  v2 = [*(a1 + 32) layer];
  [v2 setTransform:&v4];

  return [*(a1 + 32) setAlpha:0.9];
}

id sub_20AC(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 48);
  v5[0] = *(a1 + 32);
  v5[1] = v3;
  [v2 applyLayoutAttributes:v5];
  return [*(a1 + 64) setAlpha:1.0];
}

id sub_23C0(uint64_t a1)
{
  [*(a1 + 32) setCenter:{*(a1 + 40), *(a1 + 48)}];
  v2 = *(a1 + 72);
  v4[0] = *(a1 + 56);
  v4[1] = v2;
  v4[2] = *(a1 + 88);
  [*(a1 + 32) setTransform:v4];
  return [*(a1 + 32) setAlpha:0.9];
}

id sub_24D0(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 48);
  v5[0] = *(a1 + 32);
  v5[1] = v3;
  [v2 applyLayoutAttributes:v5];
  return [*(a1 + 64) setAlpha:1.0];
}

__n128 sub_2A94(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 8 * (v5 - v6) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    sub_34D8(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = *(v6 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((v8 & 0x3F) << 6);
  result = *a2;
  v11 = *(a2 + 16);
  v12 = *(a2 + 48);
  *(v9 + 32) = *(a2 + 32);
  *(v9 + 48) = v12;
  *v9 = result;
  *(v9 + 16) = v11;
  ++*(a1 + 40);
  return result;
}

uint64_t sub_2B2C(_DWORD *a1)
{
  if (a1[3] >= a1[2])
  {
    v7[0] = 0;
    *&v7[4] = 0;
  }

  else
  {
    sub_3448(a1 + 6, a1[8], 1);
    v2 = a1[4];
    v3 = a1[3];
    v4 = v3 - a1[5];
    if (v4 >= 6 * v2)
    {
      v4 = 0;
      a1[4] = ++v2;
      a1[5] = v3;
      ++a1[7];
    }

    v5 = v4 / v2 % 6;
    if (v5 <= 5)
    {
      a1[8] = dword_2BD00[v5];
    }

    a1[3] = v3 + 1;
    v7[0] = 1;
    *&v7[4] = *(a1 + 3);
  }

  return *v7;
}

_DWORD *sub_3448(_DWORD *result, int a2, int a3)
{
  if (a2 > 2)
  {
    if (a2 != 3)
    {
      if (a2 != 4)
      {
        if (a2 != 5)
        {
          return result;
        }

        v3 = *result - a3;
        v4 = result[1] + a3;
        goto LABEL_10;
      }

      v6 = *result - a3;
      goto LABEL_16;
    }

    v5 = result[1] - a3;
LABEL_13:
    result[1] = v5;
    return result;
  }

  if (!a2)
  {
    v5 = result[1] + a3;
    goto LABEL_13;
  }

  if (a2 != 1)
  {
    if (a2 != 2)
    {
      return result;
    }

    v3 = *result + a3;
    v4 = result[1] - a3;
LABEL_10:
    *result = v3;
    result[1] = v4;
    return result;
  }

  v6 = *result + a3;
LABEL_16:
  *result = v6;
  return result;
}

void *sub_34D8(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x40;
  v3 = v1 - 64;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_3B08(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_36AC(a1, &v10);
}

void sub_3660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_36AC(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_3B08(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_37B4(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_3B08(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *sub_38C0(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_3B08(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_39C8(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_3B08(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void sub_3AD4()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_3B08(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_3AD4();
}

uint64_t sub_3BCC(void *a1, uint64_t a2)
{
  v4 = (a2 + 16);
  v5 = (*(a2 + 20) | (*(a2 + 16) << 16));
  *(a2 + 8) = v5;
  v6 = sub_3C1C(a1, v5, v4);
  sub_3D80(a1, a2, v6);
  return a2;
}

uint64_t sub_3C1C(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    sub_3E68(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = *(v16 + 8);
    if (v14.u32[0] > 1uLL)
    {
      v20 = *(v16 + 8);
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    if (v19 == a2)
    {
      v21 = *(v16 + 16) == *a3 && *(v16 + 20) == a3[1];
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22 != (v17 & 1);
    v24 = v17 & v23;
    v17 |= v23;
  }

  while (v24 != 1);
  return result;
}

void *sub_3D80(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void sub_3E68(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_3F58(a1, prime);
    }
  }
}

void sub_3F58(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_3AD4();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t *sub_40D8(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a2[1];
  v5 = v4 | (*a2 << 16);
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v4 | (v3 << 16);
    if (*&v2 <= v5)
    {
      v7 = v5 % v2.i32[0];
    }
  }

  else
  {
    v7 = (v2.i32[0] - 1) & v5;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v10 == v5)
    {
      if (*(result + 4) == v3 && *(result + 5) == v4)
      {
        return result;
      }
    }

    else
    {
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }
      }

      else
      {
        v10 &= *&v2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_4194(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_41D8(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *sub_41D8@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t sub_4314(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x40)
  {
    a2 = 1;
  }

  if (v2 < 0x80)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 64;
  }

  return v4 ^ 1u;
}

uint64_t sub_4374(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 32;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 64;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_4420(a1);
}

uint64_t sub_4420(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_4470(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
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

id sub_47F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *&CGAffineTransformIdentity.c;
  v4[0] = *&CGAffineTransformIdentity.a;
  v4[1] = v2;
  v4[2] = *&CGAffineTransformIdentity.tx;
  return [v1 setTransform:v4];
}

id sub_4830(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v2;
  v4[2] = *(a1 + 72);
  return [v1 setTransform:v4];
}

void sub_5D1C(id a1)
{
  v2 = +[UIScreen mainScreen];
  [v2 scale];
  qword_46590 = v1;
}

void sub_5DB0(id a1)
{
  v1 = objc_alloc_init(CSLDateLabelStringFormatCache);
  v2 = qword_465A0;
  qword_465A0 = v1;

  v3 = cslprf_startup_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_237F0(v3);
  }
}

void sub_5FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_600C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_6024(uint64_t a1)
{
  v10 = +[NSLocale currentLocale];
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 72));
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (!v2 || ([v2 locale], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isEqual:", v10), v3, (v4 & 1) == 0))
  {
    v5 = objc_alloc_init(NSDateFormatter);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    [*(*(*(a1 + 40) + 8) + 40) setLocale:v10];
    v8 = *(*(*(a1 + 40) + 8) + 40);
    v9 = [NSDateFormatter dateFormatFromTemplate:@"cccc" options:0 locale:v10];
    [v8 setDateFormat:v9];

    objc_storeStrong((*(a1 + 32) + 72), *(*(*(a1 + 40) + 8) + 40));
  }
}

void sub_622C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_6244(uint64_t a1)
{
  v10 = +[NSLocale currentLocale];
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 80));
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (!v2 || ([v2 locale], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isEqual:", v10), v3, (v4 & 1) == 0))
  {
    v5 = objc_alloc_init(NSDateFormatter);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    [*(*(*(a1 + 40) + 8) + 40) setLocale:v10];
    v8 = *(*(*(a1 + 40) + 8) + 40);
    v9 = [NSDateFormatter dateFormatFromTemplate:@"EEEjmm" options:0 locale:v10];
    [v8 setDateFormat:v9];

    objc_storeStrong((*(a1 + 32) + 80), *(*(*(a1 + 40) + 8) + 40));
  }
}

void sub_644C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_6464(uint64_t a1)
{
  v10 = +[NSLocale currentLocale];
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 88));
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (!v2 || ([v2 locale], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isEqual:", v10), v3, (v4 & 1) == 0))
  {
    v5 = objc_alloc_init(NSDateFormatter);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    [*(*(*(a1 + 40) + 8) + 40) setLocale:v10];
    v8 = *(*(*(a1 + 40) + 8) + 40);
    v9 = [NSDateFormatter dateFormatFromTemplate:@"yMd" options:0 locale:v10];
    [v8 setDateFormat:v9];

    objc_storeStrong((*(a1 + 32) + 88), *(*(*(a1 + 40) + 8) + 40));
  }
}

void sub_666C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_6684(uint64_t a1)
{
  v10 = +[NSLocale currentLocale];
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 96));
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (!v2 || ([v2 locale], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isEqual:", v10), v3, (v4 & 1) == 0))
  {
    v5 = objc_alloc_init(NSDateFormatter);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    [*(*(*(a1 + 40) + 8) + 40) setLocale:v10];
    v8 = *(*(*(a1 + 40) + 8) + 40);
    v9 = [NSDateFormatter dateFormatFromTemplate:@"Md" options:0 locale:v10];
    [v8 setDateFormat:v9];

    objc_storeStrong((*(a1 + 32) + 96), *(*(*(a1 + 40) + 8) + 40));
  }
}

void sub_688C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_68A4(uint64_t a1)
{
  v10 = +[NSLocale currentLocale];
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 104));
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (!v2 || ([v2 locale], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isEqual:", v10), v3, (v4 & 1) == 0))
  {
    v5 = objc_alloc_init(NSDateFormatter);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    [*(*(*(a1 + 40) + 8) + 40) setLocale:v10];
    v8 = *(*(*(a1 + 40) + 8) + 40);
    v9 = [NSDateFormatter dateFormatFromTemplate:@"Mdjmm" options:0 locale:v10];
    [v8 setDateFormat:v9];

    objc_storeStrong((*(a1 + 32) + 104), *(*(*(a1 + 40) + 8) + 40));
  }
}

void sub_6AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_6AC4(uint64_t a1)
{
  v10 = +[NSLocale currentLocale];
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 112));
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (!v2 || ([v2 locale], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isEqual:", v10), v3, (v4 & 1) == 0))
  {
    v5 = objc_alloc_init(NSDateFormatter);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    [*(*(*(a1 + 40) + 8) + 40) setLocale:v10];
    v8 = *(*(*(a1 + 40) + 8) + 40);
    v9 = [NSDateFormatter dateFormatFromTemplate:@"MMMd" options:0 locale:v10];
    [v8 setDateFormat:v9];

    objc_storeStrong((*(a1 + 32) + 112), *(*(*(a1 + 40) + 8) + 40));
  }
}

void sub_6CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_6CE4(uint64_t a1)
{
  v10 = +[NSLocale currentLocale];
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 120));
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (!v2 || ([v2 locale], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isEqual:", v10), v3, (v4 & 1) == 0))
  {
    v5 = objc_alloc_init(NSDateFormatter);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    [*(*(*(a1 + 40) + 8) + 40) setLocale:v10];
    v8 = *(*(*(a1 + 40) + 8) + 40);
    v9 = [NSDateFormatter dateFormatFromTemplate:@"MMMdjmm" options:0 locale:v10];
    [v8 setDateFormat:v9];

    objc_storeStrong((*(a1 + 32) + 120), *(*(*(a1 + 40) + 8) + 40));
  }
}

void sub_6EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_6F04(uint64_t a1)
{
  v10 = +[NSLocale currentLocale];
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 152));
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (!v2 || ([v2 locale], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isEqual:", v10), v3, (v4 & 1) == 0))
  {
    v5 = objc_alloc_init(NSDateFormatter);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    [*(*(*(a1 + 40) + 8) + 40) setLocale:v10];
    v8 = *(*(*(a1 + 40) + 8) + 40);
    v9 = [NSDateFormatter dateFormatFromTemplate:@"EEEEMMMMd" options:0 locale:v10];
    [v8 setDateFormat:v9];

    objc_storeStrong((*(a1 + 32) + 152), *(*(*(a1 + 40) + 8) + 40));
  }
}

void sub_710C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_7124(uint64_t a1)
{
  v8 = +[NSLocale currentLocale];
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 160));
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (!v2 || ([v2 locale], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isEqual:", v8), v3, (v4 & 1) == 0))
  {
    v5 = objc_alloc_init(NSDateFormatter);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    [*(*(*(a1 + 40) + 8) + 40) setLocale:v8];
    [*(*(*(a1 + 40) + 8) + 40) setAMSymbol:&stru_3D170];
    [*(*(*(a1 + 40) + 8) + 40) setPMSymbol:&stru_3D170];
    [*(*(*(a1 + 40) + 8) + 40) setTimeStyle:1];
    objc_storeStrong((*(a1 + 32) + 160), *(*(*(a1 + 40) + 8) + 40));
  }
}

void sub_7334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_734C(uint64_t a1)
{
  v8 = +[NSLocale currentLocale];
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 128));
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (!v2 || ([v2 locale], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isEqual:", v8), v3, (v4 & 1) == 0))
  {
    v5 = objc_alloc_init(NSDateFormatter);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    [*(*(*(a1 + 40) + 8) + 40) setLocale:v8];
    [*(*(*(a1 + 40) + 8) + 40) setDateStyle:0];
    [*(*(*(a1 + 40) + 8) + 40) setTimeStyle:1];
    objc_storeStrong((*(a1 + 32) + 128), *(*(*(a1 + 40) + 8) + 40));
  }
}

void sub_7540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_7558(uint64_t a1)
{
  v8 = +[NSLocale currentLocale];
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 136));
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (!v2 || ([v2 locale], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isEqual:", v8), v3, (v4 & 1) == 0))
  {
    v5 = objc_alloc_init(NSDateFormatter);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    [*(*(*(a1 + 40) + 8) + 40) setLocale:v8];
    [*(*(*(a1 + 40) + 8) + 40) setDateStyle:1];
    [*(*(*(a1 + 40) + 8) + 40) setTimeStyle:1];
    [*(*(*(a1 + 40) + 8) + 40) setDoesRelativeDateFormatting:1];
    objc_storeStrong((*(a1 + 32) + 136), *(*(*(a1 + 40) + 8) + 40));
  }
}

void sub_7760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_7778(uint64_t a1)
{
  v8 = +[NSLocale currentLocale];
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 144));
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (!v2 || ([v2 locale], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isEqual:", v8), v3, (v4 & 1) == 0))
  {
    v5 = objc_alloc_init(NSDateFormatter);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    [*(*(*(a1 + 40) + 8) + 40) setLocale:v8];
    [*(*(*(a1 + 40) + 8) + 40) setDateStyle:1];
    [*(*(*(a1 + 40) + 8) + 40) setTimeStyle:0];
    [*(*(*(a1 + 40) + 8) + 40) setDoesRelativeDateFormatting:1];
    objc_storeStrong((*(a1 + 32) + 144), *(*(*(a1 + 40) + 8) + 40));
  }
}

void sub_7980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_7998(uint64_t a1)
{
  v8 = +[NSLocale currentLocale];
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 184));
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (!v2 || ([v2 locale], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isEqual:", v8), v3, (v4 & 1) == 0))
  {
    v5 = objc_alloc_init(NSNumberFormatter);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    [*(*(*(a1 + 40) + 8) + 40) setLocale:v8];
    [*(*(*(a1 + 40) + 8) + 40) setNumberStyle:1];
    objc_storeStrong((*(a1 + 32) + 184), *(*(*(a1 + 40) + 8) + 40));
  }
}

void sub_7B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_7B90(uint64_t a1)
{
  v11 = +[NSLocale currentLocale];
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 192));
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (!v2 || ([v2 locale], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isEqual:", v11), v3, (v4 & 1) == 0))
  {
    v5 = objc_alloc_init(NSDateFormatter);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    [*(*(*(a1 + 40) + 8) + 40) setLocale:v11];
    [*(*(*(a1 + 40) + 8) + 40) setDateFormat:@"H:mm:ss"];
    objc_storeStrong((*(a1 + 32) + 192), *(*(*(a1 + 40) + 8) + 40));
    if (!*(*(a1 + 32) + 224))
    {
      v8 = [*(*(*(a1 + 40) + 8) + 40) dateFromString:@"0:00:00"];
      v9 = *(a1 + 32);
      v10 = *(v9 + 224);
      *(v9 + 224) = v8;
    }
  }
}

void sub_7DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_7DC4(uint64_t a1)
{
  v11 = +[NSLocale currentLocale];
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 200));
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (!v2 || ([v2 locale], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isEqual:", v11), v3, (v4 & 1) == 0))
  {
    v5 = objc_alloc_init(NSDateFormatter);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    [*(*(*(a1 + 40) + 8) + 40) setLocale:v11];
    [*(*(*(a1 + 40) + 8) + 40) setDateFormat:@"mm:ss"];
    objc_storeStrong((*(a1 + 32) + 200), *(*(*(a1 + 40) + 8) + 40));
    if (!*(*(a1 + 32) + 224))
    {
      v8 = [*(*(*(a1 + 40) + 8) + 40) dateFromString:@"00:00"];
      v9 = *(a1 + 32);
      v10 = *(v9 + 224);
      *(v9 + 224) = v8;
    }
  }
}

void sub_7FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_7FF8(uint64_t a1)
{
  v11 = +[NSLocale currentLocale];
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 208));
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (!v2 || ([v2 locale], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isEqual:", v11), v3, (v4 & 1) == 0))
  {
    v5 = objc_alloc_init(NSDateFormatter);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    [*(*(*(a1 + 40) + 8) + 40) setLocale:v11];
    [*(*(*(a1 + 40) + 8) + 40) setDateFormat:@"H:m:ss"];
    objc_storeStrong((*(a1 + 32) + 208), *(*(*(a1 + 40) + 8) + 40));
    if (!*(*(a1 + 32) + 232))
    {
      v8 = [*(*(*(a1 + 40) + 8) + 40) dateFromString:@"0:0:00"];
      v9 = *(a1 + 32);
      v10 = *(v9 + 232);
      *(v9 + 232) = v8;
    }
  }
}

void sub_8214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_822C(uint64_t a1)
{
  v11 = +[NSLocale currentLocale];
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 216));
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (!v2 || ([v2 locale], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isEqual:", v11), v3, (v4 & 1) == 0))
  {
    v5 = objc_alloc_init(NSDateFormatter);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    [*(*(*(a1 + 40) + 8) + 40) setLocale:v11];
    [*(*(*(a1 + 40) + 8) + 40) setDateFormat:@"m:ss"];
    objc_storeStrong((*(a1 + 32) + 216), *(*(*(a1 + 40) + 8) + 40));
    if (!*(*(a1 + 32) + 232))
    {
      v8 = [*(*(*(a1 + 40) + 8) + 40) dateFromString:@"0:00"];
      v9 = *(a1 + 32);
      v10 = *(v9 + 232);
      *(v9 + 232) = v8;
    }
  }
}

void sub_8448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_8460(uint64_t a1)
{
  v8 = +[NSLocale currentLocale];
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 168));
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (!v2 || ([v2 locale], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isEqual:", v8), v3, (v4 & 1) == 0))
  {
    v5 = objc_alloc_init(NSDateFormatter);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    [*(*(*(a1 + 40) + 8) + 40) setLocale:v8];
    [*(*(*(a1 + 40) + 8) + 40) setDateFormat:@"yyyy-MM-dd HH:mm:ss zzz"];
    objc_storeStrong((*(a1 + 32) + 168), *(*(*(a1 + 40) + 8) + 40));
  }
}

void sub_8644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_865C(uint64_t a1)
{
  v8 = +[NSLocale currentLocale];
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 176));
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (!v2 || ([v2 locale], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isEqual:", v8), v3, (v4 & 1) == 0))
  {
    v5 = objc_alloc_init(NSDateFormatter);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    [*(*(*(a1 + 40) + 8) + 40) setLocale:v8];
    [*(*(*(a1 + 40) + 8) + 40) setDateFormat:@"yyyy-MM-dd-HHmmss"];
    objc_storeStrong((*(a1 + 32) + 176), *(*(*(a1 + 40) + 8) + 40));
  }
}

void sub_9194(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_98E8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

id sub_9924(void *a1)
{
  v1 = a1;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:v1 value:&stru_3D170 table:@"CarouselLayoutSettings"];

  return v3;
}

void sub_A1EC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_A5D0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_AD58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = CSLIconPositionsStore;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_D59C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

int64_t sub_D5C8(id a1, CSLHexAppNode *a2, CSLHexAppNode *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(CSLHexAppNode *)v4 hex];
  v7 = [(CSLHexAppNode *)v5 hex];
  if (HIDWORD(*&v6) == HIDWORD(*&v7))
  {
    if (v6.q < v7.q)
    {
LABEL_3:
      v8 = -1;
      goto LABEL_8;
    }
  }

  else if (v6.r < v7.r)
  {
    goto LABEL_3;
  }

  v9 = [(CSLHexAppNode *)v4 hex];
  v10 = [(CSLHexAppNode *)v5 hex];
  if (HIDWORD(*&v10) == HIDWORD(*&v9))
  {
    v8 = v10.q < v9.q;
  }

  else
  {
    v8 = v10.r < v9.r;
  }

LABEL_8:

  return v8;
}

id sub_D69C(id a1, CSLHexAppNode *a2)
{
  v2 = [(CSLHexAppNode *)a2 bundleIdentifier];

  return v2;
}

void sub_DAB8(_Unwind_Exception *a1)
{
  v8 = v7;

  _Unwind_Resume(a1);
}

void sub_E4C4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_E4E0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id CSLHexNodesAbbreviatedDescription(void *a1)
{
  v21 = [a1 sortedArrayUsingComparator:&stru_3CC70];
  v23 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v21 count]);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v21;
  v1 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v1)
  {
    v2 = *v25;
    do
    {
      for (i = 0; i != v1; i = i + 1)
      {
        if (*v25 != v2)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v24 + 1) + 8 * i);
        v5 = [v4 bundleIdentifier];
        v6 = [v5 componentsSeparatedByString:@"."];
        if ([v6 count] < 2)
        {
          v14 = v5;
        }

        else
        {
          v7 = [v6 count];
          v8 = [v6 objectAtIndexedSubscript:v7 - 1];
          v9 = [v8 isEqual:@"watchkitapp"];

          if (v9)
          {
            v10 = v7 - 2;
          }

          else
          {
            v10 = v7 - 1;
          }

          v11 = [v6 objectAtIndexedSubscript:1];
          v12 = [v11 isEqual:@"apple"];

          if (v10)
          {
            v13 = v12;
          }

          else
          {
            v13 = 1;
          }

          if (v13)
          {
            v14 = [v6 objectAtIndexedSubscript:v10];
          }

          else
          {
            v15 = [v6 objectAtIndexedSubscript:v10 - 1];
            v16 = [v6 objectAtIndexedSubscript:v10];
            v14 = [NSString stringWithFormat:@"%@.%@", v15, v16];

            v5 = v15;
          }
        }

        v17 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@:%d,%d", v14, [v4 hex], objc_msgSend(v4, "hex") >> 32);
        [v23 addObject:v17];
      }

      v1 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v1);
  }

  v18 = [v23 componentsJoinedByString:@""];;
  v19 = [NSString stringWithFormat:@"{ %@ }", v18];

  return v19;
}

void sub_EF88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, char a26)
{
  sub_4470(&a26);

  _Unwind_Resume(a1);
}

void sub_F530(int *a1@<X0>, std::string *a2@<X8>)
{
  sub_17330(&v25, "hex {");
  std::to_string(&v24, *a1);
  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v24;
  }

  else
  {
    v4 = v24.__r_.__value_.__r.__words[0];
  }

  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v24.__r_.__value_.__l.__size_;
  }

  v6 = std::string::append(&v25, v4, size);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  sub_17330(v22, ",");
  if ((v23 & 0x80u) == 0)
  {
    v8 = v22;
  }

  else
  {
    v8 = v22[0];
  }

  if ((v23 & 0x80u) == 0)
  {
    v9 = v23;
  }

  else
  {
    v9 = v22[1];
  }

  v10 = std::string::append(&v26, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v21, a1[1]);
  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v21;
  }

  else
  {
    v12 = v21.__r_.__value_.__r.__words[0];
  }

  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v13 = v21.__r_.__value_.__l.__size_;
  }

  v14 = std::string::append(&v27, v12, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  sub_17330(__p, "}");
  if ((v20 & 0x80u) == 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  if ((v20 & 0x80u) == 0)
  {
    v17 = v20;
  }

  else
  {
    v17 = __p[1];
  }

  v18 = std::string::append(&v28, v16, v17);
  *a2 = *v18;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }
}

void sub_F720(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v45 - 41) < 0)
  {
    operator delete(*(v45 - 64));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v45 - 73) < 0)
  {
    operator delete(*(v45 - 96));
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_F8B4(unsigned int *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v2 < -2 || (v2 + 3 + 2 * v1) >= 7)
  {
    if (v2 >= -2)
    {
      v4 = -((v2 + 3) >> 1);
      v5 = v1 < v4;
      if (v1 >= v4)
      {
        v1 = -((v2 + 4) >> 1);
      }

      else
      {
        v1 = v4;
      }

      if (!v5)
      {
        ++v2;
      }
    }

    else
    {
      v1 = 0;
      v2 = -2;
    }

    a1[1] = v2;
  }

  *a1 = v1 + 1;
  return (v1 << 32) | 1;
}

uint64_t sub_F914(uint64_t a1)
{
  v1 = *(a1 + 52);
  if (v1 >= *(a1 + 48))
  {
LABEL_4:
    LOBYTE(v12) = 0;
    HIDWORD(v12) = 0;
  }

  else
  {
    v2 = *(a1 + 44);
    if (v1 >= v2)
    {
      if (v1 == v2)
      {
        v3 = *(a1 + 8);
        v4 = *(a1 + 12);
        *(a1 + 20) = 0x300000024;
        *(a1 + 36) = v4 + 3;
        *(a1 + 40) = 1;
        *(a1 + 28) = 18;
        *(a1 + 32) = v3 - 1;
      }

      *(a1 + 52) = v1 + 1;
      return sub_2B2C((a1 + 8));
    }

    else
    {
      *(a1 + 52) = v1 + 1;
      switch(v1)
      {
        case 0:
        case 17:
          v9 = 1;
          LOBYTE(v12) = 1;
          goto LABEL_55;
        case 1:
          LOBYTE(v12) = 1;
          goto LABEL_27;
        case 2:
          LOBYTE(v12) = 1;
          goto LABEL_38;
        case 3:
          v5 = 1;
          LOBYTE(v12) = 1;
          goto LABEL_49;
        case 4:
          LOBYTE(v12) = 1;
          HIDWORD(v12) = 0;
          return v12;
        case 5:
          LOBYTE(v12) = 1;
LABEL_27:
          v9 = -1;
          goto LABEL_55;
        case 6:
          v8 = 1;
          LOBYTE(v12) = 1;
          goto LABEL_46;
        case 7:
          LOBYTE(v12) = 1;
          v7 = -1;
          goto LABEL_40;
        case 8:
          v10 = 1;
          LOBYTE(v12) = 1;
          goto LABEL_35;
        case 9:
          LOBYTE(v12) = 1;
          v5 = 2;
          goto LABEL_49;
        case 10:
          LOBYTE(v12) = 1;
          v10 = -1;
LABEL_35:
          HIDWORD(v12) = v10;
          return v12;
        case 11:
          LOBYTE(v12) = 1;
          goto LABEL_29;
        case 12:
          LOBYTE(v12) = 1;
          HIDWORD(v12) = 0;
          return v12;
        case 13:
          LOBYTE(v12) = 1;
          v8 = 2;
          goto LABEL_46;
        case 14:
          LOBYTE(v12) = 1;
          HIDWORD(v12) = 0;
          return v12;
        case 15:
          LOBYTE(v12) = 1;
          v7 = -2;
          goto LABEL_40;
        case 16:
        case 20:
          LOBYTE(v12) = 1;
          goto LABEL_54;
        case 18:
          LOBYTE(v12) = 1;
          v6 = -2;
          goto LABEL_43;
        case 19:
          LOBYTE(v12) = 1;
          v6 = -1;
          goto LABEL_43;
        case 21:
          LOBYTE(v12) = 1;
LABEL_29:
          v9 = -2;
          goto LABEL_55;
        case 22:
          v7 = 1;
          LOBYTE(v12) = 1;
          goto LABEL_40;
        case 23:
          LOBYTE(v12) = 1;
          v8 = 3;
          goto LABEL_46;
        case 24:
          LOBYTE(v12) = 1;
          v8 = -1;
LABEL_46:
          HIDWORD(v12) = v8;
          return v12;
        case 25:
          LOBYTE(v12) = 1;
          v7 = -3;
LABEL_40:
          HIDWORD(v12) = v7;
          return v12;
        case 26:
          LOBYTE(v12) = 1;
LABEL_54:
          v9 = 2;
          goto LABEL_55;
        case 27:
          LOBYTE(v12) = 1;
          v5 = 3;
          goto LABEL_49;
        case 28:
          LOBYTE(v12) = 1;
          v5 = -2;
LABEL_49:
          HIDWORD(v12) = v5;
          return v12;
        case 29:
          LOBYTE(v12) = 1;
          goto LABEL_52;
        case 30:
          LOBYTE(v12) = 1;
          HIDWORD(v12) = 0;
          return v12;
        case 31:
        case 34:
          LOBYTE(v12) = 1;
          v9 = 3;
          goto LABEL_55;
        case 32:
          LOBYTE(v12) = 1;
LABEL_38:
          HIDWORD(v12) = 0;
          return v12;
        case 33:
          LOBYTE(v12) = 1;
          v6 = -3;
LABEL_43:
          HIDWORD(v12) = v6;
          return v12;
        case 35:
          LOBYTE(v12) = 1;
LABEL_52:
          v9 = -3;
LABEL_55:
          HIDWORD(v12) = v9;
          break;
        default:
          goto LABEL_4;
      }
    }
  }

  return v12;
}

uint64_t sub_104B4(uint64_t *a1)
{
  v1 = 0;
  v2 = *(a1 + 3);
  if (v2 > 4)
  {
    if (v2 <= 7)
    {
      if (v2 != 5)
      {
        if (v2 == 6)
        {
          v3 = *(a1 + 2);
          *(a1 + 2) = v3 + 1;
          if (v3 < 3)
          {
            v4 = &unk_2BE50;
            goto LABEL_39;
          }
        }

        else
        {
          v3 = *(a1 + 2);
          *(a1 + 2) = v3 + 1;
          if (v3 < 3)
          {
            v4 = &unk_2BE5C;
LABEL_39:
            v1 = v4[v3];
            goto LABEL_40;
          }
        }

        goto LABEL_41;
      }

      v7 = *(a1 + 2);
      *(a1 + 2) = v7 + 1;
      if (v7)
      {
        if (v7 != 1)
        {
          goto LABEL_41;
        }

LABEL_36:
        v1 = 3;
        goto LABEL_40;
      }

LABEL_43:
      v1 = 2;
      goto LABEL_40;
    }

    switch(v2)
    {
      case 8:
        v3 = *(a1 + 2);
        *(a1 + 2) = v3 + 1;
        if (v3 < 3)
        {
          v4 = &unk_2BE68;
          goto LABEL_39;
        }

        goto LABEL_41;
      case 9:
        v1 = *(a1 + 2);
        *(a1 + 2) = v1 + 1;
        if (!v1)
        {
          goto LABEL_40;
        }

        if (v1 != 1)
        {
          goto LABEL_41;
        }

        break;
      case 10:
        v6 = *(a1 + 2);
        *(a1 + 2) = v6 + 1;
        if (v6)
        {
          if (v6 != 1)
          {
            goto LABEL_41;
          }

          v1 = 0;
          goto LABEL_40;
        }

        break;
      default:
        goto LABEL_40;
    }

    v1 = 5;
    goto LABEL_40;
  }

  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = *(a1 + 2);
      *(a1 + 2) = v3 + 1;
      if (v3 < 3)
      {
        v4 = &unk_2BE38;
        goto LABEL_39;
      }

      goto LABEL_41;
    }

    if (v2 == 3)
    {
      v3 = *(a1 + 2);
      *(a1 + 2) = v3 + 1;
      if (v3 < 3)
      {
        v4 = &unk_2BE44;
        goto LABEL_39;
      }

      goto LABEL_41;
    }

    v5 = *(a1 + 2);
    *(a1 + 2) = v5 + 1;
    if (!v5)
    {
      goto LABEL_36;
    }

    if (v5 != 1)
    {
      goto LABEL_41;
    }

    goto LABEL_43;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v3 = *(a1 + 2);
      *(a1 + 2) = v3 + 1;
      if (v3 < 3)
      {
        v4 = &unk_2BE2C;
        goto LABEL_39;
      }

LABEL_41:
      LOBYTE(v10[0]) = 0;
      *(v10 + 4) = 0;
      return v10[0];
    }
  }

  else
  {
    v1 = *(a1 + 2);
    *(a1 + 2) = v1 + 1;
    if (v1 >= 6)
    {
      goto LABEL_41;
    }
  }

LABEL_40:
  LOBYTE(v10[0]) = 1;
  v9 = *a1;
  *(v10 + 4) = *sub_3448(&v9, v1, 1);
  return v10[0];
}

uint64_t sub_106DC(uint64_t *a1)
{
  v1 = *(a1 + 2);
  if (v1 < 6)
  {
    LOBYTE(v4[0]) = 1;
    v3 = *a1;
    *(a1 + 2) = v1 + 1;
    *(v4 + 4) = *sub_3448(&v3, v1, 1);
  }

  else
  {
    LOBYTE(v4[0]) = 0;
    *(v4 + 4) = 0;
  }

  return v4[0];
}

void sub_10B38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_11A2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 <= *(a1 + 20))
  {
    *(a1 + 16) = v1 + 1;
    v3 = *(a1 + 24) + (*(a1 + 40) * v1);
    v4 = *(a1 + 28) + (*(a1 + 44) * v1);
    v5 = *(a1 + 32) + (*(a1 + 48) * v1);
    v7 = 0;
    *(v8 + 4) = *sub_1BC4(&v7, v3, v4, v5);
    v2 = 1;
  }

  else
  {
    v2 = 0;
    *(v8 + 4) = 0;
  }

  LOBYTE(v8[0]) = v2;
  return v8[0];
}

uint64_t sub_121AC(int *a1)
{
  v1 = a1[1];
  v2 = v1 + 3;
  if (v1 >= -2 && (v1 + 3 + 2 * *a1) < 7)
  {
    goto LABEL_12;
  }

  if (v1 > -3)
  {
    v4 = 3 - ((v1 + 4) >> 1);
    if (*a1 <= v4)
    {
      if (v1 == -2)
      {
        goto LABEL_7;
      }

      --v1;
      v4 = 3 - (v2 >> 1);
    }

    *a1 = v4;
    a1[1] = v1;
LABEL_12:
    v6[0] = 1;
    *&v6[4] = *a1;
    *a1 = *a1 - 1;
    return *v6;
  }

LABEL_7:
  v6[0] = 0;
  *&v6[4] = 0;
  return *v6;
}

void sub_12230(id *a1, void *a2, uint64_t a3, void *a4)
{
  v11 = a3;
  v6 = a2;
  v7 = a4;
  v8 = cslprf_icon_field_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_F530(&v11, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 138412802;
    v13 = v6;
    v14 = 2080;
    v15 = p_p;
    v16 = 2112;
    v17 = v7;
    _os_log_debug_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "[343 move] move %@ -> %s; next:%@; ", buf, 0x20u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  [*a1 setNode:v6 toHex:v11];
}

uint64_t sub_12CA4(_DWORD *a1)
{
  v2 = a1[6];
  if (!v2)
  {
    goto LABEL_8;
  }

  if (v2 <= a1[8])
  {
    v3 = 9;
LABEL_7:
    sub_3448(a1 + 4, a1[v3], 1);
LABEL_8:
    ++a1[6];
    v5[0] = 1;
    *&v5[4] = *(a1 + 2);
    return *v5;
  }

  if (v2 <= a1[7])
  {
    v3 = 10;
    goto LABEL_7;
  }

  v5[0] = 0;
  *&v5[4] = 0;
  return *v5;
}

uint64_t sub_12D3C(uint64_t a1)
{
  v8[0] = 1;
  v2 = a1 + 12;
  do
  {
    v3 = *(a1 + 60);
    *(a1 + 60) = v3 + 1;
    v4 = v3 % 6;
    v5 = (v2 + 8 * (v3 % 6));
    sub_3448(v5, v3 % 6, 1);
    if (*(a1 + 8) != 1)
    {
      break;
    }

    v6 = *(a1 + 64);
    if (v6 < 0 && !*v5 && !v5[1])
    {
      *(a1 + 64) = v4;
      v6 = v4;
    }
  }

  while (v4 == v6);
  *&v8[4] = *v5;
  return *v8;
}

void sub_14AA0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (([*(a1 + 32) containsObject:v4] & 1) == 0 && (objc_msgSend(v4, "isEqual:", *(a1 + 40)) & 1) == 0)
  {
    v5 = cslprf_icon_field_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_24440();
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

void sub_15020(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  v4 = *(a1 + 32);
  v8 = [v3 hex];
  sub_18A34((v4 + 32), &v8);
  v5 = [*(a1 + 32) nodesByBundle];
  v6 = v9;
  v7 = [v9 bundleIdentifier];
  [v5 setObject:v6 forKey:v7];
}

void sub_150C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

int64_t sub_15378(id a1, CSLHexAppNode *a2, CSLHexAppNode *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(CSLHexAppNode *)v4 hex];
  v7 = [(CSLHexAppNode *)v5 hex];
  if (HIDWORD(*&v6) == HIDWORD(*&v7))
  {
    if (v6.q < v7.q)
    {
LABEL_3:
      v8 = -1;
      goto LABEL_8;
    }
  }

  else if (v6.r < v7.r)
  {
    goto LABEL_3;
  }

  v9 = [(CSLHexAppNode *)v4 hex];
  v10 = [(CSLHexAppNode *)v5 hex];
  if (HIDWORD(*&v10) == HIDWORD(*&v9))
  {
    v8 = v10.q < v9.q;
  }

  else
  {
    v8 = v10.r < v9.r;
  }

LABEL_8:

  return v8;
}

void sub_159D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v31 - 160), 8);

  _Unwind_Resume(a1);
}

void sub_15A6C(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  *(*(*(a1 + 40) + 8) + 24) = objc_opt_isKindOfClass() & 1;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v9 = cslprf_icon_field_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_24718();
    }

    goto LABEL_7;
  }

  if ([v7 isEqualToString:@"verticalOnly"])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *(*(*(a1 + 40) + 8) + 24) = objc_opt_respondsToSelector() & 1;
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      *(*(a1 + 32) + 112) = [v8 BOOLValue];
      goto LABEL_8;
    }

    v9 = cslprf_icon_field_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_24A78();
    }

LABEL_7:

    *a4 = 1;
    goto LABEL_8;
  }

  if ([v7 isEqualToString:@"lastReason"])
  {
    *(*(*(a1 + 40) + 8) + 24) = objc_opt_respondsToSelector() & 1;
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      *(*(a1 + 32) + 128) = [v8 integerValue];
      goto LABEL_8;
    }

    v9 = cslprf_icon_field_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_249FC();
    }

    goto LABEL_7;
  }

  if ([v7 isEqualToString:@"nodes"])
  {
    objc_opt_class();
    *(*(*(a1 + 40) + 8) + 24) = objc_opt_isKindOfClass() & 1;
    if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
    {
      v9 = cslprf_icon_field_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_248BC();
      }

      goto LABEL_7;
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
    *(*(*(a1 + 64) + 8) + 24) = [v8 count];
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = v8;
    v10 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
    if (v10)
    {
      v11 = *v42;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v42 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v41 + 1) + 8 * i);
          objc_opt_class();
          *(*(*(a1 + 40) + 8) + 24) = objc_opt_isKindOfClass() & 1;
          if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
          {
            v25 = cslprf_icon_field_log();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              sub_24938();
            }

            *a4 = 1;
            goto LABEL_51;
          }

          __p.__r_.__value_.__r.__words[0] = [CSLHexAppNode unarchiveFromDictionary:v13];
          v40 = [__p.__r_.__value_.__l.__data_ hex];
          v14 = [*(a1 + 32) nodeAtHex:v40];
          *(*(*(a1 + 40) + 8) + 24) = v14 == 0;

          if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
          {
            v26 = cslprf_icon_field_log();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              [*(a1 + 32) nodeAtHex:v40];
              objc_claimAutoreleasedReturnValue();
              sub_249A8();
            }

            *a4 = 1;
            goto LABEL_51;
          }

          sub_18A34((*(a1 + 32) + 32), &v40);
          v15 = *(*(a1 + 32) + 136);
          v16 = [__p.__r_.__value_.__l.__data_ bundleIdentifier];
          [v15 setObject:__p.__r_.__value_.__r.__words[0] forKey:v16];
        }

        v10 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_51:
  }

  else
  {
    objc_opt_class();
    *(*(*(a1 + 40) + 8) + 24) = objc_opt_isKindOfClass() & 1;
    if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
    {
      v9 = cslprf_icon_field_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_24788();
      }

      goto LABEL_7;
    }

    v17 = v7;
    v18 = v8;
    *(*(*(a1 + 40) + 8) + 24) = [v18 count] == &dword_0 + 2;
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      v19 = [v18 firstObject];
      *(*(*(a1 + 40) + 8) + 24) = objc_opt_respondsToSelector() & 1;
      if (*(*(*(a1 + 40) + 8) + 24))
      {
        v20 = [v18 lastObject];
        *(*(*(a1 + 40) + 8) + 24) = objc_opt_respondsToSelector() & 1;
        if (*(*(*(a1 + 40) + 8) + 24))
        {
          v21 = v19;
          v22 = v20;
          obja = v21;
          LODWORD(v40) = [v21 intValue];
          HIDWORD(v40) = [v22 intValue];
          v23 = [*(a1 + 32) nodeAtHex:v40];
          *(*(*(a1 + 40) + 8) + 24) = v23 == 0;

          if (*(*(*(a1 + 40) + 8) + 24))
          {
            *buf = [[CSLHexAppNode alloc] initWithBundleIdentifier:v17 hex:v40];
            sub_18A34((*(a1 + 32) + 32), &v40);
            [*(*(a1 + 32) + 136) setObject:*buf forKey:v17];
          }

          else
          {
            v31 = cslprf_icon_field_log();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              sub_F530(&v40, &__p);
              v35 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
              v36 = __p.__r_.__value_.__r.__words[0];
              v32 = [*(a1 + 32) nodeAtHex:v40];
              v33 = v32;
              p_p = &__p;
              *buf = 138412802;
              if (v35 < 0)
              {
                p_p = v36;
              }

              *&buf[4] = v17;
              v46 = 2080;
              v47 = p_p;
              v48 = 2112;
              v49 = v32;
              _os_log_error_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "invalid defaults (%@ %s repeated location from %@)", buf, 0x20u);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            *a4 = 1;
          }
        }

        else
        {
          v29 = cslprf_icon_field_log();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v30 = objc_opt_class();
            sub_24868(v20, v30, buf);
          }

          *a4 = 1;
        }
      }

      else
      {
        v27 = cslprf_icon_field_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = objc_opt_class();
          sub_24868(v19, v28, buf);
        }

        *a4 = 1;
      }
    }

    else
    {
      v24 = cslprf_icon_field_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_247F8();
      }

      *a4 = 1;
    }
  }

LABEL_8:
}

void sub_16288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_168D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  sub_4470(&a18);

  _Unwind_Resume(a1);
}

void sub_1697C(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_18244();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_1825C(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void *sub_16A50(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      sub_1825C(result, a2);
    }

    sub_18244();
  }

  return result;
}

int64_t sub_1725C(id a1, CSLHexAppNode *a2, CSLHexAppNode *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(CSLHexAppNode *)v4 hex];
  v7 = [(CSLHexAppNode *)v5 hex];
  if (HIDWORD(*&v6) == HIDWORD(*&v7))
  {
    if (v6.q < v7.q)
    {
LABEL_3:
      v8 = -1;
      goto LABEL_8;
    }
  }

  else if (v6.r < v7.r)
  {
    goto LABEL_3;
  }

  v9 = [(CSLHexAppNode *)v4 hex];
  v10 = [(CSLHexAppNode *)v5 hex];
  if (HIDWORD(*&v10) == HIDWORD(*&v9))
  {
    v8 = v10.q < v9.q;
  }

  else
  {
    v8 = v10.r < v9.r;
  }

LABEL_8:

  return v8;
}

_BYTE *sub_17330(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_173E8();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void sub_17400(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1745C(exception, a1);
}

std::logic_error *sub_1745C(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

uint64_t sub_17490(int a1, int a2, int a3)
{
  if (a2 < a1)
  {
    v3 = 4;
  }

  else
  {
    v3 = 5;
  }

  if (a2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  if (a2 <= 0)
  {
    v3 = v4;
  }

  if (a2)
  {
    v5 = 7;
  }

  else
  {
    v5 = 8;
  }

  if (a1)
  {
    v6 = 10;
  }

  else
  {
    v5 = 6;
    v6 = 1;
  }

  if (a2 > a1)
  {
    v6 = 9;
  }

  if (a2 < 0)
  {
    v5 = v6;
  }

  if (a1 <= 0)
  {
    v3 = v5;
  }

  if (a1 | a3 | a2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_174F8(uint64_t a1, int *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 8 * a3;
    do
    {
      sub_17570(a1, a2);
      a2 += 2;
      v5 -= 8;
    }

    while (v5);
  }

  return a1;
}

uint64_t *sub_17570(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = v3 | (*a2 << 16);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v3 | (v2 << 16);
    if (*&v5 <= v4)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (*(v9 + 4) != v2 || *(v9 + 5) != v3)
  {
    goto LABEL_21;
  }

  return v9;
}

void sub_177A8(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_17898(a1, prime);
    }
  }
}

void sub_17898(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_3AD4();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

float sub_179FC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  *a1 = *a2;
  v9 = *a3;
  *(a1 + 8) = *a3;
  v5 = v9 - v3;
  v4 = v9 - v3 < 0;
  v6 = HIDWORD(v3);
  v7 = HIDWORD(v9) + v9;
  v8 = v3 - (HIDWORD(v9) + v9) + HIDWORD(v3);
  LODWORD(v9) = HIDWORD(v9) - HIDWORD(v3);
  if (v4)
  {
    v10 = -v5;
  }

  else
  {
    v10 = v5;
  }

  if (v8 < 0)
  {
    v8 = -v8;
  }

  if (v9 >= 0)
  {
    v11 = HIDWORD(v9) - HIDWORD(v3);
  }

  else
  {
    v11 = HIDWORD(v3) - HIDWORD(v9);
  }

  if (v10 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  v13 = v8 >= v11 && v8 >= v10;
  v14 = v3;
  if (v13)
  {
    v15 = v8;
  }

  else
  {
    v15 = v12;
  }

  v16 = HIDWORD(v3) + v3;
  *(a1 + 16) = 0;
  *(a1 + 20) = v15;
  *(a1 + 24) = v14;
  *(a1 + 28) = -v16;
  *(a1 + 32) = v6;
  if (v15)
  {
    v17 = 1.0 / v15;
  }

  else
  {
    v17 = 0.0;
  }

  *(a1 + 36) = v17;
  *(a1 + 40) = v17 * v5;
  v18 = v17 * (v16 - v7);
  result = v17 * v9;
  *(a1 + 44) = v18;
  *(a1 + 48) = result;
  return result;
}

uint64_t *sub_17AB4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a2;
  a1[3] = 0;
  *(a1 + 8) = 0;
  v6 = a3 - a2;
  v7 = HIDWORD(a2) + a2 - (a3 + HIDWORD(a3));
  v8 = HIDWORD(a3) - HIDWORD(a2);
  v9 = sub_17C94(a3 - a2, v7, HIDWORD(a3) - HIDWORD(a2));
  v10 = HIDWORD(v9);
  *(a1 + 7) = v9;
  v11 = HIDWORD(v9) - 6;
  if ((HIDWORD(v9) - 6) < 6)
  {
    if ((HIDWORD(v9) - 5) >= 6)
    {
      v13 = HIDWORD(v9) - 11;
    }

    else
    {
      v13 = HIDWORD(v9) - 5;
    }

    if (v11 >= 3)
    {
      v14 = HIDWORD(v9) - 9;
    }

    else
    {
      v14 = HIDWORD(v9) - 6;
    }

    v15 = v8;
    if (v14)
    {
      if (v14 == 1)
      {
        v15 = v7;
      }

      else
      {
        v15 = v6;
      }
    }

    if (v15 >= 0)
    {
      v16 = v15;
    }

    else
    {
      v16 = -v15;
    }

    if ((v13 + 1) % 3u)
    {
      v8 = v7;
      if ((v13 + 1) % 3u != 1)
      {
        v8 = v6;
      }
    }

    if (v8 >= 0)
    {
      v17 = v8;
    }

    else
    {
      v17 = -v8;
    }

    v27 = *a1;
    v18 = *sub_3448(&v27, v11, v16);
    v27 = *a1;
    v19 = *sub_3448(&v27, v13, v17);
    v20 = sub_17D34(a2, v18, 0);
    v21 = sub_17D34(v18, a3, 0);
    if (v21 >= v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = v21;
    }

    v23 = sub_17D34(a2, v19, 0);
    v24 = sub_17D34(v19, a3, 0);
    if (v24 >= v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = v24;
    }

    if (v22 >= v25)
    {
      *(a1 + 8) = v16;
      *(a1 + 9) = v11;
      v12 = 40;
      LODWORD(v10) = v13;
    }

    else
    {
      *(a1 + 8) = v17;
      *(a1 + 9) = v13;
      v12 = 40;
      LODWORD(v10) = v11;
    }

    goto LABEL_32;
  }

  if (HIDWORD(v9) <= 5)
  {
    *(a1 + 8) = v9;
    v12 = 36;
LABEL_32:
    *(a1 + v12) = v10;
  }

  return a1;
}

uint64_t sub_17C94(int a1, int a2, int a3)
{
  if (a1 >= 0)
  {
    LODWORD(v3) = a1;
  }

  else
  {
    LODWORD(v3) = -a1;
  }

  if (a2 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = -a2;
  }

  if (a3 >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = -a3;
  }

  v6 = 0x800000000;
  if (a3 > 0)
  {
    v6 = 0xB00000000;
  }

  v7 = 0xA00000000;
  if (a1 > 0)
  {
    v7 = 0x700000000;
  }

  v8 = 0x500000000;
  if (a1 > 0)
  {
    v8 = 0x200000000;
  }

  if (v3 == v5)
  {
    v7 = v8;
  }

  if (v3 >= v5)
  {
    v9 = v3;
  }

  else
  {
    v9 = v5;
  }

  if (v3 >= v5)
  {
    v6 = v7;
  }

  v10 = 0x600000000;
  if (a2 > 0)
  {
    v10 = 0x900000000;
  }

  v11 = 0x300000000;
  if (a2 <= 0)
  {
    v11 = 0;
  }

  if (v4 == v5)
  {
    v10 = v11;
  }

  v12 = 0x400000000;
  if (a2 < 1)
  {
    v12 = 0x100000000;
  }

  v13 = v4 >= v3;
  if (v4 == v3)
  {
    v10 = v12;
  }

  else
  {
    LODWORD(v3) = v4;
  }

  v14 = v13 && v4 >= v5;
  if (v14)
  {
    v3 = v3;
  }

  else
  {
    v3 = v9;
  }

  if (v14)
  {
    v15 = v10;
  }

  else
  {
    v15 = v6;
  }

  return v15 | v3;
}

uint64_t sub_17D34(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = HIDWORD(a3);
  v5 = sub_17D9C(a1, a2, a3);
  v6 = v5 - v3;
  v7 = v4 + v3 - (v5 + HIDWORD(v5));
  v8 = HIDWORD(v5) - v4;
  if (v5 - v3 < 0)
  {
    v6 = v3 - v5;
  }

  if ((v7 & 0x80000000) != 0)
  {
    v7 = v5 + HIDWORD(v5) - (v4 + v3);
  }

  if (v8 < 0)
  {
    v8 = v4 - HIDWORD(v5);
  }

  if (v6 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  if (v7 >= v8 && v7 >= v6)
  {
    return v7;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_17D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  v9 = (a3 - a1) | ((HIDWORD(a3) - HIDWORD(a1)) << 32);
  v10 = a2;
  v3 = HIDWORD(a2) - HIDWORD(a1) + a2 - a1;
  v4 = HIDWORD(a3) - HIDWORD(a1) + a3 - a1;
  v5 = (a2 - a1) * (a3 - a1) + (HIDWORD(a3) - HIDWORD(a1)) * (HIDWORD(a2) - HIDWORD(a1)) + v4 * v3;
  if (v5 < 1)
  {
    v7 = &v11;
  }

  else
  {
    v6 = (a3 - a1) * (a3 - a1) + (HIDWORD(a3) - HIDWORD(a1)) * (HIDWORD(a3) - HIDWORD(a1)) + v4 * v4;
    if (v6 <= v5)
    {
      v7 = &v10;
    }

    else
    {
      v7 = sub_1BC4(&v9, a1 + ((v5 / v6) * (a2 - a1)), (-a1 - HIDWORD(a1)) + ((v5 / v6) * -v3), SHIDWORD(a1) + ((v5 / v6) * (HIDWORD(a2) - HIDWORD(a1))));
    }
  }

  return *v7;
}

uint64_t sub_17E6C(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_177A8(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_17EE4(a1, i + 4);
  }

  return a1;
}

uint64_t *sub_17EE4(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = v3 | (*a2 << 16);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v3 | (v2 << 16);
    if (*&v5 <= v4)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (*(v9 + 4) != v2 || *(v9 + 5) != v3)
  {
    goto LABEL_21;
  }

  return v9;
}

uint64_t sub_1811C(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_177A8(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_17570(a1, i + 4);
  }

  return a1;
}

uint64_t sub_18194(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_18208(result, a4);
  }

  return result;
}

void sub_181EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_18208(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_1825C(a1, a2);
  }

  sub_18244();
}

void sub_1825C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_3AD4();
}

char *sub_182A4(void *a1, char *__src, void *a3, void *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return __src;
  }

  v7 = a3;
  v9 = a1[1];
  v10 = a1[2];
  if (a5 <= (v10 - v9) >> 3)
  {
    v16 = (v9 - __src) >> 3;
    if (v16 >= a5)
    {
      v21 = &__src[8 * a5];
      v22 = &v9[-8 * a5];
      v23 = a1[1];
      while (v22 < v9)
      {
        v24 = *v22;
        v22 += 8;
        *v23++ = v24;
      }

      a1[1] = v23;
      if (v9 != v21)
      {
        memmove(&__src[8 * a5], __src, v9 - v21);
      }

      *__src = v7[2];
      if (a5 != 1)
      {
        v25 = __src + 8;
        v26 = a5 + 1;
        do
        {
          v7 = *v7;
          *v25++ = v7[2];
          --v26;
        }

        while (v26 > 2);
      }
    }

    else
    {
      v17 = a3;
      if (v16 >= 1)
      {
        v18 = v16 + 1;
        v17 = a3;
        do
        {
          v17 = *v17;
          --v18;
        }

        while (v18 > 1);
      }

      v19 = a1[1];
      if (v17 == a4)
      {
        v20 = a1[1];
      }

      else
      {
        v35 = v17;
        v20 = a1[1];
        do
        {
          *v20 = v35[2];
          v20 += 8;
          v35 = *v35;
          ++v19;
        }

        while (v35 != a4);
      }

      a1[1] = v19;
      if (v16 >= 1)
      {
        v36 = &__src[8 * a5];
        v37 = &v19[-a5];
        v38 = v19;
        while (v37 < v9)
        {
          v39 = *v37;
          v37 += 8;
          *v38++ = v39;
        }

        a1[1] = v38;
        if (v20 != v36)
        {
          memmove(&__src[8 * a5], __src, v19 - v36);
        }

        if (v17 != v7)
        {
          v40 = __src;
          do
          {
            *v40++ = v7[2];
            v7 = *v7;
          }

          while (v7 != v17);
        }
      }
    }

    return __src;
  }

  v11 = *a1;
  v12 = a5 + (&v9[-*a1] >> 3);
  if (v12 >> 61)
  {
    sub_18244();
  }

  v13 = __src - v11;
  v14 = v10 - v11;
  if (v14 >> 2 > v12)
  {
    v12 = v14 >> 2;
  }

  if (v14 >= 0x7FFFFFFFFFFFFFF8)
  {
    v15 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    sub_1825C(a1, v15);
  }

  v27 = 8 * (v13 >> 3);
  v28 = 8 * a5;
  v29 = v27;
  do
  {
    *v29++ = v7[2];
    v7 = *v7;
    v28 -= 8;
  }

  while (v28);
  memcpy((v27 + 8 * a5), __src, a1[1] - __src);
  v30 = *a1;
  v31 = v27 + 8 * a5 + a1[1] - __src;
  a1[1] = __src;
  v32 = (__src - v30);
  v33 = (v27 - (__src - v30));
  memcpy(v33, v30, v32);
  v34 = *a1;
  *a1 = v33;
  a1[1] = v31;
  a1[2] = 0;
  if (v34)
  {
    operator delete(v34);
  }

  return v27;
}

void *sub_18508(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

uint64_t *sub_18574(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = v3 | (*a2 << 16);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v3 | (v2 << 16);
    if (*&v5 <= v4)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (*(v9 + 4) != v2 || *(v9 + 5) != v3)
  {
    goto LABEL_21;
  }

  return v9;
}

uint64_t *sub_187C0(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = v3 | (*a2 << 16);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v3 | (v2 << 16);
    if (*&v5 <= v4)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (*(v9 + 4) != v2 || *(v9 + 5) != v3)
  {
    goto LABEL_21;
  }

  return v9;
}

uint64_t *sub_189FC(void *a1, int *a2)
{
  result = sub_40D8(a1, a2);
  if (result)
  {
    sub_4194(a1, result);
    return (&dword_0 + 1);
  }

  return result;
}

uint64_t *sub_18A34(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = v3 | (*a2 << 16);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v3 | (v2 << 16);
    if (*&v5 <= v4)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (*(v9 + 4) != v2 || *(v9 + 5) != v3)
  {
    goto LABEL_21;
  }

  return v9;
}

uint64_t sub_18C7C(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
  while (2)
  {
    v8 = a2 - 1;
    v115 = a2;
    v116 = a2 - 2;
    v114 = a2 - 3;
    v9 = v7;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v9;
          v10 = a2 - v9;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3:
                return sub_194EC(v9, v9 + 1, v8);
              case 4:
                return sub_19630(v9, v9 + 1, v9 + 2, v8);
              case 5:
                return sub_19720(v9, v9 + 1, v9 + 2, v9 + 3, v8);
            }
          }

          else
          {
            if (v10 < 2)
            {
              return result;
            }

            if (v10 == 2)
            {
              v50 = *(a2 - 1);
              v119 = *v9;
              v120 = v50;
              v51 = sub_19A28(&v120);
              result = sub_19A28(&v119);
              if (v51 < result)
              {
                v52 = *v9;
                *v9 = *(a2 - 1);
                *(a2 - 1) = v52;
              }

              return result;
            }
          }

          if (v10 <= 23)
          {
            v53 = v9 + 1;
            v55 = v9 == a2 || v53 == a2;
            if (a4)
            {
              if (!v55)
              {
                v56 = 0;
                v57 = v9;
                do
                {
                  v59 = *v57;
                  v58 = v57[1];
                  v57 = v53;
                  v119 = v59;
                  v120 = v58;
                  v60 = sub_19A28(&v120);
                  result = sub_19A28(&v119);
                  if (v60 < result)
                  {
                    v61 = *v57;
                    v62 = v56;
                    while (1)
                    {
                      *(v9 + v62 + 8) = *(v9 + v62);
                      if (!v62)
                      {
                        break;
                      }

                      v119 = *(v9 + v62 - 8);
                      v120 = v61;
                      v63 = sub_19A28(&v120);
                      result = sub_19A28(&v119);
                      v62 -= 8;
                      if (v63 >= result)
                      {
                        v64 = (v9 + v62 + 8);
                        goto LABEL_80;
                      }
                    }

                    v64 = v9;
LABEL_80:
                    *v64 = v61;
                    a2 = v115;
                  }

                  v53 = v57 + 1;
                  v56 += 8;
                }

                while (v57 + 1 != a2);
              }
            }

            else if (!v55)
            {
              do
              {
                v107 = *v7;
                v106 = v7[1];
                v7 = v53;
                v119 = v107;
                v120 = v106;
                v108 = sub_19A28(&v120);
                result = sub_19A28(&v119);
                if (v108 < result)
                {
                  v109 = *v7;
                  v110 = v7;
                  do
                  {
                    v111 = v110;
                    v112 = *--v110;
                    *v111 = v112;
                    v119 = *(v111 - 2);
                    v120 = v109;
                    v113 = sub_19A28(&v120);
                    result = sub_19A28(&v119);
                  }

                  while (v113 < result);
                  *v110 = v109;
                }

                v53 = v7 + 1;
              }

              while (v7 + 1 != a2);
            }

            return result;
          }

          if (!a3)
          {
            if (v9 != a2)
            {
              v65 = (v10 - 2) >> 1;
              v117 = v65;
              do
              {
                v66 = v65;
                if (v117 >= v65)
                {
                  v67 = (2 * v65) | 1;
                  v68 = &v7[v67];
                  if (2 * v65 + 2 < v10)
                  {
                    v69 = *v68;
                    v119 = v68[1];
                    v120 = v69;
                    v70 = sub_19A28(&v120);
                    v71 = sub_19A28(&v119);
                    if (v70 < v71)
                    {
                      ++v68;
                    }

                    a2 = v115;
                    if (v70 < v71)
                    {
                      v67 = 2 * v66 + 2;
                    }
                  }

                  v72 = &v7[v66];
                  v73 = *v68;
                  v119 = *v72;
                  v120 = v73;
                  v74 = sub_19A28(&v120);
                  result = sub_19A28(&v119);
                  if (v74 >= result)
                  {
                    v75 = *v72;
                    do
                    {
                      v76 = v68;
                      *v72 = *v68;
                      if (v117 < v67)
                      {
                        break;
                      }

                      v77 = (2 * v67) | 1;
                      v68 = &v7[v77];
                      v78 = 2 * v67 + 2;
                      if (v78 < v10)
                      {
                        v79 = *v68;
                        v119 = v68[1];
                        v120 = v79;
                        v80 = sub_19A28(&v120);
                        if (v80 < sub_19A28(&v119))
                        {
                          ++v68;
                          v77 = v78;
                        }
                      }

                      v81 = *v68;
                      v119 = v75;
                      v120 = v81;
                      v82 = sub_19A28(&v120);
                      result = sub_19A28(&v119);
                      v72 = v76;
                      v67 = v77;
                    }

                    while (v82 >= result);
                    *v76 = v75;
                    a2 = v115;
                  }
                }

                v65 = v66 - 1;
              }

              while (v66);
              do
              {
                v83 = a2;
                v84 = 0;
                v118 = *v7;
                v85 = v7;
                do
                {
                  v86 = &v85[v84];
                  v87 = v86 + 1;
                  v88 = (2 * v84) | 1;
                  v89 = 2 * v84 + 2;
                  if (v89 >= v10)
                  {
                    v84 = (2 * v84) | 1;
                  }

                  else
                  {
                    v91 = v86[2];
                    v90 = v86 + 2;
                    v92 = *(v90 - 1);
                    v119 = v91;
                    v120 = v92;
                    v93 = sub_19A28(&v120);
                    result = sub_19A28(&v119);
                    if (v93 >= result)
                    {
                      v84 = v88;
                    }

                    else
                    {
                      v87 = v90;
                      v84 = v89;
                    }
                  }

                  *v85 = *v87;
                  v85 = v87;
                }

                while (v84 <= ((v10 - 2) >> 1));
                a2 = v83 - 1;
                if (v87 == v83 - 1)
                {
                  *v87 = v118;
                }

                else
                {
                  *v87 = *a2;
                  *a2 = v118;
                  v94 = (v87 - v7 + 8) >> 3;
                  v95 = v94 < 2;
                  v96 = v94 - 2;
                  if (!v95)
                  {
                    v97 = v96 >> 1;
                    v98 = &v7[v96 >> 1];
                    v99 = *v98;
                    v119 = *v87;
                    v120 = v99;
                    v100 = sub_19A28(&v120);
                    result = sub_19A28(&v119);
                    if (v100 < result)
                    {
                      v101 = a2;
                      v102 = *v87;
                      do
                      {
                        v103 = v98;
                        *v87 = *v98;
                        if (!v97)
                        {
                          break;
                        }

                        v97 = (v97 - 1) >> 1;
                        v98 = &v7[v97];
                        v104 = *v98;
                        v119 = v102;
                        v120 = v104;
                        v105 = sub_19A28(&v120);
                        result = sub_19A28(&v119);
                        v87 = v103;
                      }

                      while (v105 < result);
                      *v103 = v102;
                      a2 = v101;
                    }
                  }
                }

                v95 = v10-- <= 2;
              }

              while (!v95);
            }

            return result;
          }

          v11 = v10 >> 1;
          v12 = &v9[v10 >> 1];
          if (v10 < 0x81)
          {
            sub_194EC(&v7[v10 >> 1], v7, v8);
          }

          else
          {
            sub_194EC(v7, &v7[v10 >> 1], v8);
            sub_194EC(v7 + 1, v12 - 1, v116);
            sub_194EC(v7 + 2, &v7[v11 + 1], v114);
            sub_194EC(v12 - 1, &v7[v10 >> 1], &v7[v11 + 1]);
            v13 = *v7;
            *v7 = *v12;
            *v12 = v13;
          }

          --a3;
          if (a4)
          {
            break;
          }

          v14 = *(v7 - 1);
          v119 = *v7;
          v120 = v14;
          v15 = sub_19A28(&v120);
          if (v15 < sub_19A28(&v119))
          {
            break;
          }

          v35 = *v7;
          v119 = *v8;
          v120 = v35;
          v36 = sub_19A28(&v120);
          result = sub_19A28(&v119);
          if (v36 >= result)
          {
            v39 = v7 + 1;
            do
            {
              v9 = v39;
              if (v39 >= a2)
              {
                break;
              }

              ++v39;
              v119 = *v9;
              v120 = v35;
              v40 = sub_19A28(&v120);
              result = sub_19A28(&v119);
            }

            while (v40 >= result);
          }

          else
          {
            v9 = v7;
            do
            {
              v37 = v9[1];
              ++v9;
              v119 = v37;
              v120 = v35;
              v38 = sub_19A28(&v120);
              result = sub_19A28(&v119);
            }

            while (v38 >= result);
          }

          v41 = a2;
          if (v9 < a2)
          {
            v41 = a2;
            do
            {
              v42 = *--v41;
              v119 = v42;
              v120 = v35;
              v43 = sub_19A28(&v120);
              result = sub_19A28(&v119);
            }

            while (v43 < result);
          }

          while (v9 < v41)
          {
            v44 = *v9;
            *v9 = *v41;
            *v41 = v44;
            do
            {
              v45 = v9[1];
              ++v9;
              v119 = v45;
              v120 = v35;
              v46 = sub_19A28(&v120);
            }

            while (v46 >= sub_19A28(&v119));
            do
            {
              v47 = *--v41;
              v119 = v47;
              v120 = v35;
              v48 = sub_19A28(&v120);
              result = sub_19A28(&v119);
            }

            while (v48 < result);
          }

          v49 = v9 - 1;
          if (v9 - 1 != v7)
          {
            *v7 = *v49;
          }

          a4 = 0;
          *v49 = v35;
        }

        v16 = 0;
        v17 = *v7;
        do
        {
          v18 = v7[v16 + 1];
          v119 = v17;
          v120 = v18;
          v19 = sub_19A28(&v120);
          ++v16;
        }

        while (v19 < sub_19A28(&v119));
        v20 = &v7[v16];
        if (v16 == 1)
        {
          a2 = v115;
          do
          {
            if (v20 >= a2)
            {
              break;
            }

            v23 = *--a2;
            v119 = v17;
            v120 = v23;
            v24 = sub_19A28(&v120);
          }

          while (v24 >= sub_19A28(&v119));
        }

        else
        {
          do
          {
            v21 = *--a2;
            v119 = v17;
            v120 = v21;
            v22 = sub_19A28(&v120);
          }

          while (v22 >= sub_19A28(&v119));
        }

        if (v20 >= a2)
        {
          v32 = v20 - 1;
        }

        else
        {
          v25 = &v7[v16];
          v26 = a2;
          do
          {
            v27 = *v25;
            *v25 = *v26;
            *v26 = v27;
            do
            {
              v28 = v25[1];
              ++v25;
              v119 = v17;
              v120 = v28;
              v29 = sub_19A28(&v120);
            }

            while (v29 < sub_19A28(&v119));
            do
            {
              v30 = *--v26;
              v119 = v17;
              v120 = v30;
              v31 = sub_19A28(&v120);
            }

            while (v31 >= sub_19A28(&v119));
          }

          while (v25 < v26);
          v32 = v25 - 1;
        }

        if (v32 != v7)
        {
          *v7 = *v32;
        }

        *v32 = v17;
        v33 = v20 >= a2;
        a2 = v115;
        if (v33)
        {
          break;
        }

LABEL_39:
        result = sub_18C7C(v7, v32, a3, a4 & 1);
        a4 = 0;
        v9 = v32 + 1;
      }

      v34 = sub_1984C(v7, v32);
      v9 = v32 + 1;
      result = sub_1984C(v32 + 1, v115);
      if (result)
      {
        break;
      }

      if (!v34)
      {
        goto LABEL_39;
      }
    }

    a2 = v32;
    if (!v34)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_194EC(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a2;
  v21 = *a1;
  v22 = v6;
  v7 = sub_19A28(&v22);
  v8 = sub_19A28(&v21);
  v9 = *a3;
  v10 = *a2;
  if (v7 >= v8)
  {
    v21 = *a2;
    v22 = v9;
    v14 = sub_19A28(&v22);
    result = sub_19A28(&v21);
    if (v14 < result)
    {
      v15 = *a2;
      *a2 = *a3;
      *a3 = v15;
      v16 = *a2;
      v21 = *a1;
      v22 = v16;
      v17 = sub_19A28(&v22);
      result = sub_19A28(&v21);
      if (v17 < result)
      {
        v18 = *a1;
        *a1 = *a2;
        *a2 = v18;
      }
    }
  }

  else
  {
    v21 = *a2;
    v22 = v9;
    v11 = sub_19A28(&v22);
    result = sub_19A28(&v21);
    v13 = *a1;
    if (v11 >= result)
    {
      *a1 = *a2;
      *a2 = v13;
      v19 = *a3;
      v21 = v13;
      v22 = v19;
      v20 = sub_19A28(&v22);
      result = sub_19A28(&v21);
      if (v20 >= result)
      {
        return result;
      }

      v13 = *a2;
      *a2 = *a3;
    }

    else
    {
      *a1 = *a3;
    }

    *a3 = v13;
  }

  return result;
}

uint64_t sub_19630(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  sub_194EC(a1, a2, a3);
  v8 = *a4;
  v18 = *a3;
  v19 = v8;
  v9 = sub_19A28(&v19);
  result = sub_19A28(&v18);
  if (v9 < result)
  {
    v11 = *a3;
    *a3 = *a4;
    *a4 = v11;
    v12 = *a3;
    v18 = *a2;
    v19 = v12;
    v13 = sub_19A28(&v19);
    result = sub_19A28(&v18);
    if (v13 < result)
    {
      v14 = *a2;
      *a2 = *a3;
      *a3 = v14;
      v15 = *a2;
      v18 = *a1;
      v19 = v15;
      v16 = sub_19A28(&v19);
      result = sub_19A28(&v18);
      if (v16 < result)
      {
        v17 = *a1;
        *a1 = *a2;
        *a2 = v17;
      }
    }
  }

  return result;
}

uint64_t sub_19720(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  sub_19630(a1, a2, a3, a4);
  v10 = *a5;
  v23 = *a4;
  v24 = v10;
  v11 = sub_19A28(&v24);
  result = sub_19A28(&v23);
  if (v11 < result)
  {
    v13 = *a4;
    *a4 = *a5;
    *a5 = v13;
    v14 = *a4;
    v23 = *a3;
    v24 = v14;
    v15 = sub_19A28(&v24);
    result = sub_19A28(&v23);
    if (v15 < result)
    {
      v16 = *a3;
      *a3 = *a4;
      *a4 = v16;
      v17 = *a3;
      v23 = *a2;
      v24 = v17;
      v18 = sub_19A28(&v24);
      result = sub_19A28(&v23);
      if (v18 < result)
      {
        v19 = *a2;
        *a2 = *a3;
        *a3 = v19;
        v20 = *a2;
        v23 = *a1;
        v24 = v20;
        v21 = sub_19A28(&v24);
        result = sub_19A28(&v23);
        if (v21 < result)
        {
          v22 = *a1;
          *a1 = *a2;
          *a2 = v22;
        }
      }
    }
  }

  return result;
}

BOOL sub_1984C(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *(a2 - 1);
        v19 = *a1;
        v20 = v5;
        v6 = sub_19A28(&v20);
        if (v6 < sub_19A28(&v19))
        {
          v7 = *a1;
          *a1 = *(a2 - 1);
          *(a2 - 1) = v7;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      sub_194EC(a1, a1 + 1, a2 - 1);
      return 1;
    case 4:
      sub_19630(a1, a1 + 1, a1 + 2, a2 - 1);
      return 1;
    case 5:
      sub_19720(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
  }

LABEL_11:
  v8 = a1 + 2;
  sub_194EC(a1, a1 + 1, a1 + 2);
  v9 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = *v9;
    v19 = *v8;
    v20 = v12;
    v13 = sub_19A28(&v20);
    if (v13 < sub_19A28(&v19))
    {
      v14 = *v9;
      v15 = v10;
      while (1)
      {
        *(a1 + v15 + 24) = *(a1 + v15 + 16);
        if (v15 == -16)
        {
          break;
        }

        v19 = *(a1 + v15 + 8);
        v20 = v14;
        v16 = sub_19A28(&v20);
        v15 -= 8;
        if (v16 >= sub_19A28(&v19))
        {
          v17 = (a1 + v15 + 24);
          goto LABEL_19;
        }
      }

      v17 = a1;
LABEL_19:
      *v17 = v14;
      if (++v11 == 8)
      {
        return v9 + 1 == a2;
      }
    }

    v8 = v9;
    v10 += 8;
    if (++v9 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_19A28(int *a1)
{
  v1 = *a1;
  if (*a1 < 0)
  {
    switch(v1)
    {
      case -3:
        v2 = a1[1];
        if (v2 < 4)
        {
          v3 = &unk_2BEF0;
          return v3[v2];
        }

        goto LABEL_35;
      case -2:
        v8 = a1[1];
        if (v8 < 4)
        {
          return dword_2BEE0[v8];
        }

        if (v8 == -1)
        {
          return 28;
        }

        break;
      case -1:
        v4 = a1[1];
        v2 = v4 + 1;
        if ((v4 + 1) < 5)
        {
          v3 = &unk_2BEB8;
          return v3[v2];
        }

        if (v4 == -2)
        {
          return 24;
        }

        break;
    }

    goto LABEL_34;
  }

  if (v1 <= 1)
  {
    if (!v1)
    {
      v2 = a1[1] + 2;
      if (v2 < 5)
      {
        v3 = &unk_2BE8C;
        return v3[v2];
      }

      v2 = a1[1];
      if (v2 == -3)
      {
        return 32;
      }

      if (v2 == 3)
      {
        return 30;
      }

      goto LABEL_35;
    }

    if (v1 == 1)
    {
      v2 = a1[1] + 3;
      if (v2 < 6)
      {
        v3 = &unk_2BEA0;
        return v3[v2];
      }
    }

    goto LABEL_34;
  }

  if (v1 == 2)
  {
    v7 = a1[1];
    v2 = v7 + 3;
    if ((v7 + 3) < 4)
    {
      v3 = &unk_2BED0;
      return v3[v2];
    }

    if (v7 == 1)
    {
      return 26;
    }

    goto LABEL_34;
  }

  if (v1 != 3)
  {
LABEL_34:
    v2 = a1[1];
    goto LABEL_35;
  }

  v5 = a1[1];
  if (v5 == -2)
  {
    return 23;
  }

  if (v5 == -1)
  {
    return 27;
  }

  v2 = a1[1];
  if (v2 == -3)
  {
    return 31;
  }

  if (!v2)
  {
    return 34;
  }

LABEL_35:
  v9 = v2 + v1;
  if (v1 < 0)
  {
    v1 = -v1;
  }

  if (v9 < 0)
  {
    v9 = -v9;
  }

  if ((v2 & 0x80000000) != 0)
  {
    v2 = -v2;
  }

  if (v1 <= v2)
  {
    v10 = v2;
  }

  else
  {
    v10 = v1;
  }

  if (v9 >= v2 && v9 >= v1)
  {
    v12 = v9;
  }

  else
  {
    v12 = v10;
  }

  return (v12 + 100);
}

void *sub_19BE8(void *result, uint64_t a2, uint64_t a3, float a4)
{
  if (v4 >= 0)
  {
    v5 = result;
  }

  else
  {
    v5 = *result;
  }

  *a3 = a4;
  *(a3 + 4) = v5;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

uint64_t *sub_19C18(uint64_t *result)
{
  v1 = *(result + 23);
  v2 = *result;
  return result;
}

void sub_19C68(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x16u);
}

uint64_t sub_19C90(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 8) = 2112;
  *(a3 + 10) = a2;
  return result;
}

id sub_19CA8(uint64_t a1, void *a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;

  return a2;
}

void sub_19CCC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_19CE8(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void sub_19D04(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

void sub_19D20(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0x16u);
}

void sub_19D84(id a1)
{
  v1 = objc_alloc_init(CSLUICalendarIconSource);
  v2 = qword_465B0;
  qword_465B0 = v1;
}

void sub_1A0A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1A16C;
  v7[3] = &unk_3CCB8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = *(a1 + 48);
  v6 = v3;
  dispatch_async(&_dispatch_main_q, v7);
}

void sub_1A220(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = [v1 objectForKey:@"calendarIconOverrideDate"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&qword_465C0, v2);
    v3 = cslprf_icon_field_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138543618;
      v5 = qword_465C0;
      v6 = 2114;
      v7 = @"calendarIconOverrideDate";
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "_calendarOverrideDate: using override date %{public}@ from com.apple.Carousel:%{public}@", &v4, 0x16u);
    }
  }
}

const __CFString *NSStringFromCSLHexAppPlacementReason(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return @"unknown";
  }

  else
  {
    return off_3CD48[a1 - 1];
  }
}

BOOL sub_1ACC0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) hex];
  return *(v1 + 24) == v2 && *(v1 + 28) == HIDWORD(v2);
}

BOOL sub_1AD08(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) savedHex];
  return *(v1 + 32) == v2 && *(v1 + 36) == HIDWORD(v2);
}

id CSLDiagnosticFilenameWithSuffix(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = +[CSLDateLabelStringFormatCache sharedInstance];
  v6 = +[NSDate date];
  v7 = [v5 formatDateAsLongYMDHMSNoSpacesWithDate:v6];

  v8 = [(__CFString *)v3 length];
  v9 = @".";
  v10 = &stru_3D170;
  if (!v8)
  {
    v9 = &stru_3D170;
  }

  if (v3)
  {
    v10 = v3;
  }

  v11 = [NSString stringWithFormat:@"%@-%@%@%@", v4, v7, v9, v10];

  return v11;
}

id sub_1BC5C(void *a1, int a2)
{
  v3 = a1;
  v4 = 0;
  if (os_variant_has_internal_diagnostics())
  {
    v5 = [NSString stringWithFormat:@"%@/Library/Logs/CrashReporter/DiagnosticLogs/Carousel", CPSharedResourcesDirectory()];
    v6 = [NSURL fileURLWithPath:v5];

    v7 = [v6 URLByAppendingPathComponent:v3];
    v8 = v7;
    if (a2)
    {
      v9 = v7;
    }

    else
    {
      v9 = v6;
    }

    v10 = v9;
    v11 = +[NSFileManager defaultManager];
    v16 = NSFileProtectionKey;
    v17 = NSFileProtectionNone;
    v12 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v13 = [v11 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:v12 error:0];

    if (v13)
    {
      v4 = v8;
    }

    else
    {
      v14 = cslprf_diagnostics_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_24D60(v10, v14);
      }

      v4 = 0;
    }
  }

  return v4;
}

void sub_1C124(uint64_t a1, void *a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1C1E8;
  block[3] = &unk_3CD88;
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v3 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1C1E8(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);

    [v2 setRawIcon:?];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_24DF8(a1);
  }
}

uint64_t sub_1C250(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void sub_1C268(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_24E88(a1);
  }
}

double sub_1D030(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    [a1 touchPoint];
    [v3 convertPoint:0 fromView:?];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

void sub_1D688(uint64_t a1)
{
  if (a1)
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v3 = [WeakRetained countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v3)
    {
      v4 = *v8;
      do
      {
        v5 = 0;
        do
        {
          if (*v8 != v4)
          {
            objc_enumerationMutation(WeakRetained);
          }

          v6 = sub_1DB80(a1, *(*(&v7 + 1) + 8 * v5));
          v5 = v5 + 1;
        }

        while (v3 != v5);
        v3 = [WeakRetained countByEnumeratingWithState:&v7 objects:v11 count:16];
      }

      while (v3);
    }
  }
}

void sub_1D818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = CSLUIFieldOfIconsView;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id sub_1DA9C(void *a1, double a2, double a3)
{
  if (!a1)
  {
    return 0;
  }

  v5 = [a1 layout];
  v6 = [v5 hexAtPoint:{a2, a3}];

  return v6;
}

id sub_1DB08(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained isVerticalOnly];

  return v2;
}

id sub_1DB80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 bundleIdentifier];
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v7 = [WeakRetained createIconViewWithBundleIdentifier:v5];

    if (v7)
    {
      [v7 setNode:v4];
      [*(a1 + 32) setObject:v7 forKey:v5];
      [v4 hex];
      sub_1DC80(a1, v7);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_1DC80(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    [*(a1 + 16) addSubview:v3];
    [v3 setJiggling:(*(a1 + 8) >> 4) & 1];
  }
}

id sub_1DD40(id *a1, uint64_t a2)
{
  v2 = a1;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 5);
    v5 = [WeakRetained nodeAtHex:a2];

    if (v5)
    {
      v6 = [v5 bundleIdentifier];
      v2 = [v2 iconViewForBundleIdentifier:v6];
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

void sub_1E35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  _Block_object_dispose(&a27, 8);

  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1E44C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1E464(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = +[NSMutableArray array];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = sub_1DB80(a1, *(*(&v13 + 1) + 8 * i));
          [a1 layoutIconView:v9 forcedApply:1 forcedSubview:1];
          [v4 addObject:v9];
          v10 = [v9 layer];
          CATransform3DMakeScale(&v12, 0.01, 0.01, 1.0);
          [v10 setTransform:&v12];

          [v9 setAlpha:0.0];
        }

        v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1E66C(uint64_t a1)
{
  sub_1E6D8(*(a1 + 32), *(*(*(a1 + 56) + 8) + 40));
  v2 = sub_1E81C(*(a1 + 32), *(a1 + 40));
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);
  v6 = *(a1 + 48);

  sub_1EB64(v5, v6);
}

void sub_1E6D8(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v10 + 1) + 8 * i);
          [a1 layoutIconView:v9 forcedApply:1 forcedSubview:{1, v10}];
          [v9 setAlpha:1.0];
        }

        v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

id sub_1E81C(uint64_t a1, void *a2)
{
  v16 = a2;
  if (a1)
  {
    v18 = +[NSMutableArray array];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v3 = v16;
    obj = v3;
    v4 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (!v4)
    {
LABEL_18:

      goto LABEL_19;
    }

    v5 = 0;
    v6 = *v20;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [*(*(&v19 + 1) + 8 * i) bundleIdentifier];
        v9 = [v8 isEqualToString:*(a1 + 368)];
        v10 = [a1 iconViewForBundleIdentifier:v8];
        if (v10)
        {
          WeakRetained = objc_loadWeakRetained((a1 + 248));
          v12 = v10 == WeakRetained;

          if (v12)
          {
            [a1 endDragging];
          }

          [*(a1 + 32) removeObjectForKey:v8];
          v13 = [v10 layer];
          CATransform3DMakeScale(&v23, 0.01, 0.01, 1.0);
          [v13 setTransform:&v23];

          [v10 setAlpha:0.0];
          [v18 addObject:v10];
        }

        else
        {
          v14 = cslprf_ui_log();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            LODWORD(v23.m11) = 138412290;
            *(&v23.m11 + 4) = v8;
            _os_log_error_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "ERROR: no view for '%@'", &v23, 0xCu);
          }
        }

        v5 |= v9;
      }

      v4 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v4);

    if (v5)
    {
      v3 = [NSString stringWithFormat:@"removed target:%@", *(a1 + 368)];
      [a1 setTargetHexToScrolledCenterForReason:v3];
      goto LABEL_18;
    }
  }

  else
  {
    v18 = 0;
  }

LABEL_19:

  return v18;
}

void sub_1EB64(id *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [*(*(&v12 + 1) + 8 * v8) bundleIdentifier];
          v10 = [a1 iconViewForBundleIdentifier:v9];

          WeakRetained = objc_loadWeakRetained(a1 + 31);
          LOBYTE(v9) = v10 == WeakRetained;

          if ((v9 & 1) == 0)
          {
            [a1 layoutIconView:v10 forcedApply:1 forcedSubview:1];
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }
}

void sub_1ED1C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v6)
    {
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v9 + 1) + 8 * v8) removeFromSuperview];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

void sub_1EE3C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (a1)
  {
    sub_1EF18(a1);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1EF8C;
    v5[3] = &unk_3CEC8;
    v5[4] = a1;
    v6 = v4;
    [UIView _animateUsingDefaultTimingWithOptions:4 animations:v5 completion:0];
  }
}

id sub_1EF18(id result)
{
  if (result)
  {
    v1[0] = _NSConcreteStackBlock;
    v1[1] = 3221225472;
    v1[2] = sub_1F780;
    v1[3] = &unk_3CF38;
    v1[4] = result;
    return [result enumerateIconViewsWithBlock:v1];
  }

  return result;
}

uint64_t sub_1F330(uint64_t result, unint64_t a2)
{
  if (result)
  {
    v2 = a2;
    v3 = result;
    v4 = HIDWORD(a2);
    if (sub_1DB08(result))
    {
      if ((v2 & 0x8000000000000000) != 0)
      {
        v4 = 0;
        LODWORD(v2) = -1;
      }

      else
      {
        WeakRetained = objc_loadWeakRetained((v3 + 40));
        v6 = [WeakRetained rowCount] - *(v3 + 24);

        if (v6 < v4)
        {
          LODWORD(v2) = -((v6 + 3) >> 1);
          v4 = v6;
        }
      }
    }

    return v2 | (v4 << 32);
  }

  return result;
}

void sub_1F3D4(uint64_t a1, void *a2)
{
  v5 = a2;
  if ((*(a1 + 32) & 1) == 0)
  {
    v3 = [v5 node];
    v4 = [v3 hex];
    if (v4)
    {
    }

    else
    {

      if (!v4)
      {
        goto LABEL_6;
      }
    }
  }

  [v5 setJiggling:*(a1 + 33)];
LABEL_6:
}

id sub_1F650(uint64_t a1)
{
  [UIView setAnimationPreventsAdditive:1];
  v2 = *(a1 + 32);

  return [v2 layoutIconsForcedApply:1 forcedSubview:1];
}

BOOL _isIconWithAttributesOnScreen(float32x2_t *a1)
{
  if (COERCE_FLOAT(*&a1[1]) < 0.2)
  {
    return 0;
  }

  v2 = vcgt_f32(vabs_f32(*a1), vadd_f32(vdup_laneq_s32(*a1->f32, 2), qword_465D0));
  return vpmax_u32(v2, v2).i32[0] >= 0;
}

void sub_1FAEC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    [v3 removeFromSuperview];
  }
}

void sub_1FBCC(uint64_t a1, void *a2)
{
  v26 = a2;
  if (!a1)
  {
    goto LABEL_12;
  }

  v3 = [v26 state];
  if (v3 <= 3)
  {
    if (v3 == &dword_0 + 1)
    {
      [*(a1 + 192) setState:4];
      [*(a1 + 192) reset];
      *(a1 + 232) = sub_1D030(v26, *(a1 + 16));
      *(a1 + 240) = v12 + -50.0;
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v14 = objc_loadWeakRetained((a1 + 248));
      v15 = [v14 node];
      [WeakRetained commitMovedNode:v15 withReason:2];

      [v26 locationInView:a1];
      v17 = v16;
      v19 = v18;
      [v26 translationInView:a1];
    }

    else
    {
      if (v3 != &dword_0 + 2)
      {
        if (v3 == &dword_0 + 3)
        {
          sub_25668(a1);
          [v26 locationInView:a1];
          v5 = v4;
          v7 = v6;
          [v26 translationInView:*(a1 + 16)];
          sub_22380(a1, v5, v7 + -50.0, v8, v9);
          [a1 endDragging];
          v10 = objc_loadWeakRetained((a1 + 344));
          [v10 iconsEdited];
        }

        goto LABEL_12;
      }

      [v26 locationInView:a1];
      sub_254FC(a1, v22, v23);
      [v26 locationInView:a1];
      v17 = v24;
      v19 = v25;
      [v26 translationInView:*(a1 + 16)];
    }

    sub_22380(a1, v17, v19 + -50.0, v20, v21);
    goto LABEL_12;
  }

  if ((v3 - 4) < 2)
  {
    v11 = objc_loadWeakRetained((a1 + 40));
    [v11 revertMove];

    [a1 endDragging];
  }

LABEL_12:
}

void sub_1FE58(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    [*(a1 + 184) cancel];
    v3 = [v4 state];
    if ((v3 - 3) >= 3)
    {
      if (v3 == &dword_0 + 2)
      {
        sub_20DC4(a1, v4);
      }

      else if (v3 == &dword_0 + 1)
      {
        [*(a1 + 192) setState:4];
        [*(a1 + 192) reset];
        sub_258C0(a1);
      }
    }

    else
    {
      [*(a1 + 88) endDragging];
    }
  }
}

void sub_1FF38(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    v6 = v4;
    objc_storeStrong((a1 + 336), a2);
    if (v6)
    {
      *(a1 + 224) = 1;
      v7 = [v6 bundleIdentifier];
      v8 = [a1 iconViewForBundleIdentifier:v7];

      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_20144;
      v12[3] = &unk_3CE28;
      v13 = v8;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_20150;
      v10[3] = &unk_3CF60;
      v10[4] = a1;
      v9 = v13;
      v11 = v9;
      [UIView animateWithDuration:327680 delay:v12 options:v10 animations:0.1 completion:0.0];
      objc_storeStrong((a1 + 208), v8);
      if (([a1 isEditing] & 1) == 0)
      {
        [*(a1 + 216) setPressedHex:{objc_msgSend(v6, "hex")}];
      }

      [a1 layoutAnimated:0];
    }
  }
}

void sub_20150(uint64_t a1)
{
  *(*(a1 + 32) + 224) = 0;
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 208) != v2)
  {
    [v2 alpha];
    if (fabs(v4 + -1.0) >= 2.22044605e-16)
    {
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_20248;
      v5[3] = &unk_3CE28;
      v6 = *(a1 + 40);
      [UIView _animateUsingDefaultTimingWithOptions:4 animations:v5 completion:0];
    }
  }
}

void sub_20254(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = cslprf_icon_field_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 208) node];
      v6 = *(a1 + 224);
      v7 = [a1 isEditing];
      v8 = (*(a1 + 8) >> 4) & 1;
      *buf = 138544386;
      v12 = v3;
      v13 = 2114;
      v14 = v5;
      v15 = 1024;
      v16 = v6;
      v17 = 1024;
      v18 = v7;
      v19 = 1024;
      v20 = v8;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Ending press state for reason:%{public}@ pressedIconNode:%{public}@ animating:%{BOOL}u isEditing:%{BOOL}u jiggling:%{BOOL}u", buf, 0x28u);
    }

    if ((*(a1 + 224) & 1) == 0)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_20458;
      v10[3] = &unk_3CE28;
      v10[4] = a1;
      [UIView _animateUsingDefaultTimingWithOptions:4 animations:v10 completion:0];
    }

    v9 = *(a1 + 208);
    *(a1 + 208) = 0;

    [*(a1 + 216) clearPressedHex];
    [a1 layoutAnimated:0];
  }
}

void sub_20B14(void *a1, void *a2, double a3, double a4)
{
  v9 = a2;
  if (a1 && ([v9 hex] || sub_1DB08(a1)))
  {
    v7 = [v9 bundleIdentifier];
    v8 = [a1 iconViewForBundleIdentifier:v7];

    if (v8)
    {
      sub_224F8(a1, v8, v9, a3, a4 + -50.0);
    }
  }
}

void sub_20D4C(uint64_t a1)
{
  v1 = [*(a1 + 32) layer];
  v2 = *&CATransform3DIdentity.m33;
  v6[4] = *&CATransform3DIdentity.m31;
  v6[5] = v2;
  v3 = *&CATransform3DIdentity.m43;
  v6[6] = *&CATransform3DIdentity.m41;
  v6[7] = v3;
  v4 = *&CATransform3DIdentity.m13;
  v6[0] = *&CATransform3DIdentity.m11;
  v6[1] = v4;
  v5 = *&CATransform3DIdentity.m23;
  v6[2] = *&CATransform3DIdentity.m21;
  v6[3] = v5;
  [v1 setTransform:v6];
}

void sub_20DC4(uint64_t a1, void *a2)
{
  v11 = a2;
  if (a1)
  {
    [v11 translationInView:0];
    v5 = v4;
    v6 = v3;
    if (v4 != *(a1 + 128) || v3 != *(a1 + 136))
    {
      v8 = [a1 isEditing];
      v9 = 0.0;
      if ((v8 & 1) == 0)
      {
        v9 = *(a1 + 128) - v5;
      }

      v10 = *(a1 + 136) - v6;
      *(a1 + 128) = v5;
      *(a1 + 136) = v6;
      [*(a1 + 88) addDragDelta:{v9, v10}];
    }
  }
}

unint64_t sub_21090(void *a1, double a2, double a3)
{
  if (!a1)
  {
    return 0;
  }

  v6 = [a1 layout];
  v7 = sub_1F330(a1, [v6 hexAtPoint:{a2, a3}]);
  v8 = sub_1DD40(a1, v7);
  v9 = v8;
  if (v8)
  {
    [v8 center];
    v10 = HIDWORD(v7);
    v11 = v7;
  }

  else
  {
    LODWORD(v10) = 0;
    v11 = 0;
    v14 = 0;
    v15 = 0;
    v34 = v7;
    v35 = xmmword_2BF60;
    v36 = v7;
    v37 = 0;
    v16 = HIDWORD(v7) + v7;
    v17 = 1.79769313e308;
LABEL_7:
    v9 = v15;
    while (1)
    {
      v18 = sub_2B2C(&v34);
      v33 = __PAIR64__(v19, HIDWORD(v18));
      if ((v18 & 1) == 0)
      {
        break;
      }

      if (v14)
      {
        v20 = HIDWORD(v18) - v7;
        v21 = v16 - v19 - HIDWORD(v18);
        v22 = v19 - HIDWORD(v7);
        if (HIDWORD(v18) - v7 < 0)
        {
          v20 = v7 - HIDWORD(v18);
        }

        if (v21 < 0)
        {
          v21 = HIDWORD(v18) - (v16 - v19);
        }

        if (v22 < 0)
        {
          v22 = HIDWORD(v7) - v19;
        }

        if (v20 <= v22)
        {
          v23 = v22;
        }

        else
        {
          v23 = v20;
        }

        if (v21 < v22 || v21 < v20)
        {
          v21 = v23;
        }

        if (v21 > v14)
        {
          break;
        }
      }

      v15 = sub_1DD40(a1, __SPAIR64__(v19, HIDWORD(v18)));

      v9 = v15;
      if (v15)
      {
        if (!v14)
        {
          v25 = v33 - v7;
          v26 = v16 - (v33 + HIDWORD(v33));
          v27 = HIDWORD(v33) - HIDWORD(v7);
          if (v33 - v7 < 0)
          {
            v25 = v7 - v33;
          }

          if (v26 < 0)
          {
            v26 = v33 + HIDWORD(v33) - v16;
          }

          if (v27 < 0)
          {
            v27 = HIDWORD(v7) - HIDWORD(v33);
          }

          if (v25 <= v27)
          {
            v28 = v27;
          }

          else
          {
            v28 = v25;
          }

          if (v26 < v27 || v26 < v25)
          {
            v26 = v28;
          }

          v14 = v26 + 1;
        }

        [v15 center];
        *&v30 = (v31 - a3) * (v31 - a3) + (v30 - a2) * (v30 - a2);
        v32 = sqrtf(*&v30);
        if (v17 > v32)
        {
          v11 = v33;
          v10 = HIDWORD(v33);
          v17 = v32;
        }

        goto LABEL_7;
      }
    }
  }

  return v11 | (v10 << 32);
}

void sub_212D0(uint64_t a1, float32x2_t a2, float32x2_t a3)
{
  if (a1)
  {
    v6 = *(a1 + 112);
    v5 = *(a1 + 120);
    v7 = *&a2 + v6;
    v8 = *&a3 + v5;
    if (sub_1DB08(a1))
    {
      v9 = *(a1 + 376);
      if (v9)
      {
        [v9 configuration];
      }

      else
      {
        v39 = 0.0;
        v10.i32[1] = 0;
        v10.i64[1] = 0;
        memset(buf, 0, sizeof(buf));
      }

      v11.f32[0] = v7;
      v10.f32[0] = v8;
      v11.i32[1] = v10.i32[0];
      v12 = 0;
      if (v10.f32[0] > 0.0)
      {
        v35 = v10;
        [*(a1 + 16) frame];
        v15 = v14;
        v10.i64[1] = v35.i64[1];
        if (v35.f32[0] >= v15)
        {
          v16 = v13;
          WeakRetained = objc_loadWeakRetained((a1 + 40));
          v18 = [WeakRetained rowCount];

          v10.i64[1] = 0;
          v19 = *(a1 + 72);
          if (v19)
          {
            [v19 layoutAttributesForItemAtHex:{-(v18 >> 1) | ((v18 - 3) << 32), 0.0}];
          }

          v20 = v15 - v16;
          v21 = (buf[6].f32[0] + 0.0) - v20;
          v11.f32[0] = v7;
          v12.i32[0] = 0;
          v12.i32[1] = fminf(v21, v35.f32[0]);
          v11.i32[1] = fmaxf(v35.f32[0] - v21, 0.0);
        }

        else
        {
          v12.i32[0] = 0;
          v12.i32[1] = v35.i32[0];
          v11.f32[0] = v7;
          v11.i32[1] = 0;
        }
      }

      v22 = vabs_f32(v11);
      v23 = vcgt_f32(v22, buf[7]);
      if ((vpmax_u32(v23, v23).u32[0] & 0x80000000) != 0)
      {
        v36 = v12;
        __asm { FMOV            V1.2S, #1.0 }

        v32 = vand_s8(vorr_s8(vand_s8(v11, 0x8000000080000000), _D1), vorr_s8(vcltz_f32(v11), vcgtz_f32(v11)));
        *v10.f32 = vdiv_f32(vmul_f32(buf[1], vmul_f32(v32, vmaxnm_f32(vsub_f32(v22, buf[7]), 0))), vdup_lane_s32(buf[6], 0));
        v34 = vdiv_f32(*&_simd_atan_f4(v10), vdup_n_s32(0x3FC90FDBu));
        [*(a1 + 376) setRubberbandVector:?];
        v24 = cslprf_ui_log();
        v33 = vmla_f32(v36, vminnm_f32(v22, buf[7]), v32);
        v26 = v33.f32[0];
        v25 = v33.f32[1];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          buf[0].i32[0] = 134220288;
          *(buf + 4) = *&v26;
          buf[1].i16[2] = 2048;
          *(&buf[1] + 6) = *&v25;
          buf[2].i16[3] = 2048;
          buf[3] = *&v7;
          buf[4].i16[0] = 2048;
          *(&buf[4] + 2) = *&v8;
          buf[5].i16[1] = 2048;
          *(&buf[5] + 4) = a2;
          buf[6].i16[2] = 2048;
          *(&buf[6] + 6) = a3;
          buf[7].i16[3] = 2048;
          v39 = v6;
          v40 = 2048;
          v41 = v5;
          v42 = 2048;
          v43 = v34.f32[0];
          v44 = 2048;
          v45 = v34.f32[1];
          _os_log_debug_impl(&dword_0, v24, OS_LOG_TYPE_DEBUG, "inertial updater: setContentOffset:{%.4f, %.4f} rubberbanded from rawOffset:{%.4f, %.4f} from delta:{%.4f, %.4f} to originalOffset:{%.4f, %.4f} rubberBandVector:{%.4f, %.4f}", buf, 0x66u);
        }

        goto LABEL_17;
      }

      [*(a1 + 376) setRubberbandVector:0.0];
    }

    v24 = cslprf_ui_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      buf[0].i32[0] = 134219264;
      *(buf + 4) = *&v7;
      buf[1].i16[2] = 2048;
      *(&buf[1] + 6) = *&v8;
      buf[2].i16[3] = 2048;
      buf[3] = a2;
      buf[4].i16[0] = 2048;
      *(&buf[4] + 2) = a3;
      buf[5].i16[1] = 2048;
      *(&buf[5] + 4) = *&v6;
      buf[6].i16[2] = 2048;
      *(&buf[6] + 6) = *&v5;
      _os_log_debug_impl(&dword_0, v24, OS_LOG_TYPE_DEBUG, "inertial updater: setContentOffset:{%.4f, %.4f} from delta:{%.4f, %.4f} to originalOffset:{%.4f, %.4f}", buf, 0x3Eu);
    }

    v25 = v8;
    v26 = v7;
LABEL_17:

    sub_216C8(a1, 0, v26, v25, v7, v8);
  }
}

void sub_216C8(uint64_t a1, int a2, double a3, double a4, double a5, double a6)
{
  if (a1)
  {
    if (a2)
    {

      sub_217FC(a1, a3, a4);
    }

    else
    {
      *(a1 + 96) = a3;
      *(a1 + 104) = a4;
      *(a1 + 112) = a5;
      *(a1 + 120) = a6;
      [*(a1 + 376) setContentOffset:{*(a1 + 96), *(a1 + 104)}];
      [a1 layoutAnimated:0];
      if (!*(a1 + 320))
      {
        v7 = [*(a1 + 80) state] == &dword_0 + 2;
        WeakRetained = objc_loadWeakRetained((a1 + 360));
        [WeakRetained fieldOfIconsViewDidScroll:a1 touchTracking:v7];
      }
    }
  }
}

void sub_217FC(uint64_t a1, double a2, double a3)
{
  if (a1)
  {
    [*(a1 + 88) endUpdating];
    v6 = *(a1 + 96);
    v7 = *(a1 + 104);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_21A08;
    v11[3] = &unk_3CFB0;
    v11[4] = a1;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_21A1C;
    v10[3] = &unk_3CE28;
    v10[4] = a1;
    v8 = [CSLUIPointAnimator animateFromPoint:v11 toPoint:v10 withApplier:v6 completion:v7, a2, a3];
    v9 = *(a1 + 184);
    *(a1 + 184) = v8;
  }
}

id sub_219D4(float32x2_t *a1, float a2)
{
  if (a2 >= 1.0)
  {
    v2 = a1[6];
  }

  else
  {
    v2 = vmla_n_f32(a1[5], vsub_f32(a1[6], a1[5]), a2);
  }

  return [*&a1[4] setContentOffset:0 animated:vcvtq_f64_f32(v2)];
}

void sub_21A1C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 184);
  *(v1 + 184) = 0;
}

id sub_21AA4(id *a1, uint64_t a2)
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 5);
    v5 = [WeakRetained nodeAtHex:a2];

    if (!v5)
    {
      v6 = [a1 closestIconHexToHex:a2];
      v7 = cslprf_icon_field_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v10[0] = 67109888;
        v10[1] = a2;
        v11 = 1024;
        v12 = HIDWORD(a2);
        v13 = 1024;
        v14 = v6;
        v15 = 1024;
        v16 = HIDWORD(v6);
        _os_log_error_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "ERROR: no icon at {%d,%d} (scrolling did not settle with icon centered) will use {%d,%d}", v10, 0x1Au);
      }

      v8 = objc_loadWeakRetained(a1 + 5);
      v5 = [v8 nodeAtHex:v6];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_21E00(uint64_t a1)
{
  if (a1)
  {
    if ((*(a1 + 168) & 1) == 0)
    {
      v2 = [CADisplayLink displayLinkWithTarget:a1 selector:"autoScroll"];
      v3 = *(a1 + 160);
      *(a1 + 160) = v2;

      v4 = *(a1 + 160);
      v5 = +[NSRunLoop currentRunLoop];
      [v4 addToRunLoop:v5 forMode:NSRunLoopCommonModes];

      *(a1 + 168) = 1;
    }
  }
}

uint64_t sub_21EC0(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    if (sub_1DB08(result))
    {
      if (a2 == 2)
      {
        WeakRetained = objc_loadWeakRetained((v3 + 40));
        if (!sub_258DC(v3, WeakRetained, [WeakRetained rowCount]))
        {
          return 1;
        }
      }

      else if (a2 == 1 && *(v3 + 104) > 2.0)
      {
        return 1;
      }
    }

    else
    {
      [v3 bounds];
      v5 = v4;
      v7 = v6;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v8 = objc_loadWeakRetained((v3 + 40));
      v9 = [v8 allNodes];

      v10 = v9;
      v11 = [v9 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v11)
      {
        v12 = *v39;
        while (2)
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v39 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v38 + 1) + 8 * i);
            v15 = objc_loadWeakRetained((v3 + 248));
            v16 = [v15 node];
            v17 = v14 == v16;

            if (!v17)
            {
              v18 = [v14 hex];
              v19 = *(v3 + 376);
              if (v19)
              {
                [v19 layoutAttributesForItemAtHex:v18];
                v20 = 0u;
              }

              else
              {
                *&v20 = 0;
                DWORD2(v20) = 0;
              }

              x = CGRectZero.origin.x;
              y = CGRectZero.origin.y;
              width = CGRectZero.size.width;
              height = CGRectZero.size.height;
              v25 = *(&v20 + 2) * 0.5;
              v26 = v7 + *(&v20 + 2);
              if (a2 == 8)
              {
                v27 = *(&v20 + 2) * 0.5;
              }

              else
              {
                v27 = CGRectZero.origin.x;
              }

              if (a2 == 8)
              {
                v28 = 0.0 - v25;
              }

              else
              {
                v28 = CGRectZero.origin.y;
              }

              if (a2 == 8)
              {
                v29 = v5;
              }

              else
              {
                v29 = CGRectZero.size.width;
              }

              if (a2 == 8)
              {
                v30 = v7 + *(&v20 + 2);
              }

              else
              {
                v30 = CGRectZero.size.height;
              }

              if (a2 == 4)
              {
                v27 = 0.0 - v25;
                v28 = 0.0 - v25;
                v29 = v5;
              }

              else
              {
                v26 = v30;
              }

              if (a2 == 2)
              {
                x = 0.0 - v25;
                y = *(&v20 + 2) * 0.5;
                width = v5 + *(&v20 + 2);
                height = v7;
              }

              if (a2 == 1)
              {
                x = 0.0 - v25;
                y = 0.0 - v25;
                width = v5 + *(&v20 + 2);
                height = v7;
              }

              v31 = a2 <= 3 ? x : v27;
              v32 = a2 <= 3 ? y : v28;
              v33 = a2 <= 3 ? width : v29;
              v34 = a2 <= 3 ? height : v26;
              [*(v3 + 16) convertPoint:v3 toView:{*&v20, *(&v20 + 1), y, width, height, v5 + *(&v20 + 2), 0, 0, v38}];
              v43.x = v35;
              v43.y = v36;
              v44.origin.x = v31;
              v44.origin.y = v32;
              v44.size.width = v33;
              v44.size.height = v34;
              if (CGRectContainsPoint(v44, v43))
              {

                return 1;
              }
            }

            v9 = v10;
          }

          v11 = [v10 countByEnumeratingWithState:&v38 objects:v42 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }
    }

    return 0;
  }

  return result;
}

void sub_22380(uint64_t a1, double a2, double a3, double a4, double a5)
{
  if (a1)
  {
    *(a1 + 256) = 1;
    WeakRetained = objc_loadWeakRetained((a1 + 248));
    [WeakRetained dragToPoint:{a2, a3}];

    if ((*(a1 + 168) & 1) == 0)
    {
      v10 = sub_1DA9C(a1, a4 + *(a1 + 232), a5 + *(a1 + 240));
      if (v10 || sub_1DB08(a1))
      {
        v14 = objc_loadWeakRetained((a1 + 40));
        v11 = objc_loadWeakRetained((a1 + 248));
        v12 = [v11 node];
        [v14 moveNode:v12 toHex:v10 final:0];
      }
    }
  }
}

void sub_224F8(uint64_t a1, void *a2, void *a3, double a4, double a5)
{
  obj = a2;
  v9 = a3;
  if (a1)
  {
    objc_storeWeak((a1 + 248), obj);
    *(a1 + 256) = 0;
    if (obj)
    {
      v10 = *(a1 + 16);
      [obj center];
      [v10 convertPoint:a1 toView:?];
      v12 = v11;
      v14 = v13;
      [a1 addSubview:obj];
      [obj setCenter:{v12, v14}];
      [obj beginDraggingAtPoint:{a4, a5}];
    }
  }
}

double sub_226D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    [v3 locationInView:*(a1 + 16)];
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

void sub_23740(os_log_t log, double a2, double a3)
{
  v3 = 134218240;
  v4 = a2;
  v5 = 2048;
  v6 = a3;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "inertial updater: scrolledWithDelta:{%.4f, %.4f}", &v3, 0x16u);
}

void sub_23948()
{
  sub_E4B8();
  v2 = 2112;
  v3 = @"plist";
  _os_log_error_impl(&dword_0, v0, OS_LOG_TYPE_ERROR, "failed to find default icon position plist: %@.%@", v1, 0x16u);
}

void sub_23BF0()
{
  sub_19C84();
  *v1 = 138412290;
  *(v1 + 4) = v2;
  sub_19CE8(&dword_0, v1, v3, "invalid nodes: %@", v4);
}

void sub_23C38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  sub_E4B8();
  sub_E4E0(&dword_0, v3, v4, "cannot add %@ already have node at that location: %@");
}

void sub_23D24()
{
  sub_E4B8();
  sub_19C0C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_23E44(uint64_t *a1)
{
  v2 = sub_19C18(a1);
  if (v7 != v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v2;
  }

  *v3 = 136315138;
  *(v3 + 4) = v9;
  sub_19D04(&dword_0, v3, v4, "[collapse] %s start", v5);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_23E9C(uint64_t *a1)
{
  v2 = sub_19C18(a1);
  if (v7 != v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v2;
  }

  *v3 = 136315138;
  *(v3 + 4) = v9;
  sub_19D04(&dword_0, v3, v4, "[collapse] %s has no further occupied hexes", v5);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_23EFC()
{
  sub_19C30();
  sub_19C90(v1, v2, v3, 1.5047e-36);
  _os_log_debug_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "changed count:%d (delegate=%@)", v4, 0x12u);
}

void sub_23F4C(uint64_t *a1)
{
  v2 = sub_19C18(a1);
  if (v7 != v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v2;
  }

  *v3 = 136315138;
  *(v3 + 4) = v9;
  sub_19D04(&dword_0, v3, v4, "[push up] found empty: %s", v5);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_23FA4()
{
  sub_19C30();
  if (*(v2 + 23) >= 0)
  {
    v6 = v2;
  }

  else
  {
    v6 = *v2;
  }

  *v3 = 138412546;
  *(v3 + 4) = v1;
  *(v3 + 12) = 2080;
  *(v3 + 14) = v6;
  _os_log_debug_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "[unoccupied] move %@ -> %s", v4, 0x16u);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_240F0()
{
  sub_19C30();
  sub_19C90(v1, v2, v3, 1.5047e-36);
  _os_log_debug_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "[_changedNodes count] %d (delegate=%@)", v4, 0x12u);
}

void sub_24140(uint64_t a1)
{
  v2 = sub_19C40(a1);
  sub_19BE8(v2, v3, v4, 4.8151e-34);
  sub_19C68(&dword_0, "%s or %@ is zero", v5, v6);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_24190()
{
  sub_19C84();
  *v1 = 138412290;
  *(v1 + 4) = v2;
  sub_19CE8(&dword_0, v1, v3, "failed integrity check: %@ will not change", v4);
}

void sub_241D8(uint64_t a1)
{
  v2 = sub_19C40(a1);
  sub_19BE8(v2, v3, v4, 4.8151e-34);
  sub_19C68(&dword_0, "hex not valid for vertical only:%s node:%@", v5, v6);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_24228(uint64_t a1)
{
  v2 = sub_19C40(a1);
  sub_19BE8(v2, v3, v4, 4.8151e-34);
  sub_19C68(&dword_0, "hexes do not match %s or %@", v5, v6);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }
}

void sub_242EC()
{
  sub_E4B8();
  sub_19C0C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_2435C()
{
  sub_19C84();
  if (*(v1 + 23) >= 0)
  {
    v6 = v1;
  }

  else
  {
    v6 = *v1;
  }

  *v2 = 136315394;
  *(v2 + 4) = v6;
  *(v2 + 12) = 2048;
  *(v2 + 14) = v3;
  sub_19C68(&dword_0, "no node at hex:%s remainingNodes:%ld", v4, v5);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_243D0()
{
  sub_E4B8();
  sub_19C0C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_24440()
{
  sub_E4B8();
  sub_19C0C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_24534()
{
  sub_E4B8();
  sub_19C0C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_245A4()
{
  sub_19C84();
  *v1 = 67109378;
  *(v1 + 4) = v2;
  *(v1 + 8) = 2112;
  *(v1 + 10) = v3;
  _os_log_error_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "invalid icon positions (%d), intialization failed: %@", v4, 0x12u);
}

void sub_24608(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  *a1 = 134218240;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2048;
  *(a1 + 14) = a3;
  sub_19C68(&dword_0, "invalid count (%ld != %ld)", a1, a4);
}

void sub_24654(void *a1, uint64_t a2, NSObject *a3)
{
  *v3 = 134218240;
  *&v3[4] = *a1;
  *&v3[12] = 2048;
  *&v3[14] = *(*a2 + 24);
  sub_E4E0(&dword_0, a2, a3, "invalid nodes count (%ld != %ld)", *v3, *&v3[8]);
}

void sub_24718()
{
  sub_E4B8();
  sub_19C0C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_24788()
{
  sub_E4B8();
  sub_19C0C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_247F8()
{
  sub_E4B8();
  sub_19C0C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_24868(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = sub_19CA8(a1, a2, a3, 5.778e-34);
  sub_19D20(&dword_0, v4, v5, "invalid defaults (%@:%@ not have intValue)");
}

void sub_248BC()
{
  sub_19C54();
  sub_19C0C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_24938()
{
  sub_E4B8();
  sub_19C0C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_249A8()
{
  sub_19C30();
  *v1 = 138412546;
  *(v1 + 4) = v2;
  *(v1 + 12) = 2112;
  *(v1 + 14) = v3;
  sub_19C68(&dword_0, "invalid defaults (node %@ repeated location from %@)", v4, v5);
}

void sub_249FC()
{
  sub_19C54();
  sub_19C0C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_24A78()
{
  sub_19C54();
  sub_19C0C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

BOOL sub_24AF4(uint64_t a1, uint64_t *a2)
{
  *a2 = [NSString stringWithFormat:@"%p does not make sense to collapseAll343Holes for non-vertical graphs %@", a1, a1];
  return os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
}

void sub_24B50()
{
  sub_19C84();
  *v1 = 138412290;
  *(v1 + 4) = v2;
  sub_19CE8(&dword_0, v1, v3, "[343 collapse] failed to find all nodes (likely non-valid nodes) exist: %@", v4);
}

void sub_24D60(void *a1, NSObject *a2)
{
  v3 = [a1 path];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Failed to create diagnostic log, could not create directory: %@", &v4, 0xCu);
}

void sub_24DF8(uint64_t a1)
{
  v1 = *(*(a1 + 48) + 64);
  v2 = 138412290;
  v3 = v1;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "ERROR: failed to find icon for %@", &v2, 0xCu);
}

void sub_24E88(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 64);
  v2 = 138412290;
  v3 = v1;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "ERROR: failed to find icon for %@", &v2, 0xCu);
}

void sub_24F18(uint64_t a1)
{
  if (a1)
  {
    [*(a1 + 32) invalidate];
    v2 = *(a1 + 32);
    *(a1 + 32) = 0;
  }
}

void sub_24F6C(uint64_t a1)
{
  sub_24F18(*(a1 + 32));
  v2 = *(a1 + 32);
  if (*(v2 + 8))
  {
    *(v2 + 40) = 1;
    v3 = *(a1 + 32);

    [v3 setState:2];
  }
}

uint64_t sub_24FDC(uint64_t result)
{
  if (result)
  {
    *(result + 168) = 0;
    *(result + 176) = 0;
  }

  return result;
}

double sub_24FFC(uint64_t a1)
{
  if (a1)
  {
    [a1 bounds];
    v3 = v2;
    width = v4;
    height = v6;
    if (*(a1 + 9))
    {
      [a1 safeAreaInsets];
      v3 = ceil(v3 + v8 + v3 + v8) * 0.5;
      width = floor(width - (v9 + v10) + width - (v9 + v10)) * 0.5;
      height = floor(height - (v8 + v11) + height - (v8 + v11)) * 0.5;
    }

    x = width * 0.5;
    if (sub_1DB08(a1) && (*(a1 + 8) & 0x80) != 0)
    {
      v14 = 0.0;
      v25.origin.x = width * 0.5;
      v25.origin.y = v3;
      v25.size.width = width;
      v25.size.height = height;
      v26 = CGRectInset(v25, 0.0, 8.0);
      x = v26.origin.x;
      y = v26.origin.y;
      width = v26.size.width;
      height = v26.size.height;
      [sub_22EBC() hexSideSize];
      v17 = v16 * 1.5 * 0.5;
      v18 = sub_22EBC();
      if (v18)
      {
        [v18 layoutAttributesForItemAtHex:0xFFFFFFFE00000000];
        v19 = sub_22EBC();
        if (v19)
        {
          [v19 layoutAttributesForItemAtHex:0xFFFFFFFE00000000];
          v14 = v24;
        }
      }

      v13 = y + floor(v14 - v17 + v14 - v17) * -0.5;
    }

    else
    {
      v13 = height * 0.5;
    }

    v20.f32[0] = width;
    v21 = height;
    v20.f32[1] = v21;
    qword_465D0 = vadd_f32(v20, 0x4100000041000000);
    [*(a1 + 16) setFrame:{x, v13, width, height}];
    [sub_22EBC() hexSideSize];
    result = (height + v22 * 1.5 * 0.25) / (v22 * 1.5);
    *(a1 + 24) = result;
  }

  return result;
}

id *sub_251E4(id *result)
{
  if (result)
  {
    return [result[23] cancel];
  }

  return result;
}

uint64_t sub_251FC(uint64_t result)
{
  if (result)
  {
    return (*(result + 8) >> 4) & 1;
  }

  return result;
}

double sub_25270(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = *(a2 + 8);
  [*(a1 + 72) hexSideSize];
  result = v3 * 1.5;
  if (result < v2)
  {
    return v2;
  }

  return result;
}

id *sub_252C4(id *result)
{
  if (result)
  {
    v1 = result;
    [result[24] setEnabled:0];
    [v1[33] setEnabled:0];
    [v1[10] setEnabled:0];

    return sub_2533C(v1);
  }

  return result;
}

id *sub_2533C(id *result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 56);
    if (v2 == 1)
    {
      v3 = result[1] & 9;
      v4 = &OBJC_IVAR___CSLUIFieldOfIconsView__tapRecognizer;
      [result[24] setLongPressEnabled:v3 != 0];
      [v1[33] setEnabled:(v1[1] >> 1) & 1];
      v5 = (v1[1] & 4 | v3) != 0;
    }

    else
    {
      [result[24] setEnabled:0];
      v5 = 0;
      v4 = &OBJC_IVAR___CSLUIFieldOfIconsView__pinchRecognizer;
    }

    [*(v1 + *v4) setEnabled:v5];
    v6 = v1[10];

    return [v6 setEnabled:v2];
  }

  return result;
}

void sub_254FC(uint64_t a1, CGFloat a2, CGFloat a3)
{
  if (!a1)
  {
    return;
  }

  v6 = (*(a1 + 64) + *(a1 + 64)) / 3.0;
  [a1 bounds];
  width = v13.size.width;
  height = v13.size.height;
  v14 = CGRectInset(v13, v6, v6);
  v12.x = a2;
  v12.y = a3;
  if (CGRectContainsPoint(v14, v12))
  {

    sub_25668(a1);
    return;
  }

  *(a1 + 176) = 0;
  if ((sub_1DB08(a1) & 1) == 0)
  {
    if (vabdd_f64(a2, width) < v6)
    {
      v9 = 8;
LABEL_8:
      *(a1 + 176) |= v9;
      goto LABEL_9;
    }

    if (fabs(a2) < v6)
    {
      v9 = 4;
      goto LABEL_8;
    }
  }

LABEL_9:
  if (vabdd_f64(a3, height) >= v6)
  {
    v10 = *(a1 + 176);
    if (fabs(a3) >= v6)
    {
      if (!v10)
      {
        return;
      }
    }

    else
    {
      *(a1 + 176) = v10 | 1;
    }
  }

  else
  {
    *(a1 + 176) |= 2uLL;
  }

  sub_21E00(a1);
}

void sub_25668(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 168) == 1)
    {
      [*(a1 + 160) invalidate];
      v2 = *(a1 + 160);
      *(a1 + 160) = 0;

      *(a1 + 168) = 0;
    }
  }
}

void sub_256D4(uint64_t a1)
{
  if (a1)
  {
    sub_25668(a1);
  }
}

__n128 sub_258C0(CGPoint *a1)
{
  result = CGPointZero;
  a1[8] = CGPointZero;
  return result;
}

BOOL sub_258DC(uint64_t a1, void *a2, int a3)
{
  v5 = *(a1 + 24);

  v6 = *(a1 + 72);
  if (v6)
  {
    [v6 layoutAttributesForItemAtHex:{-((a3 - v5 + 3) >> 1) | ((a3 - v5) << 32), 0, 0}];
    v7 = v9 + -2.0;
  }

  else
  {
    v7 = -2.0;
  }

  return *(a1 + 104) >= v7;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}