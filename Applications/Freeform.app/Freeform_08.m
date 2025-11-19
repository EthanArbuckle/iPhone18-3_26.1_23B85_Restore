uint64_t *sub_1000D9B48(void *a1, unint64_t *a2)
{
  result = sub_1000D9B80(a1, a2);
  if (result)
  {
    sub_1000D9C38(a1, result);
    return 1;
  }

  return result;
}

void *sub_1000D9B80(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *&v2 <= v3 ? v3 % *&v2 : *a2;
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_1000D9C38(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_1000D9A0C(a1, a2, &v5);
  v3 = v5;
  v5 = 0;
  if (v3)
  {
    sub_1000D8B08(&v6, v3);
  }

  return v2;
}

uint64_t sub_1000D9C84(uint64_t a1)
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

void sub_1000D9CD0(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1000D9D2C(exception, a1);
}

std::logic_error *sub_1000D9D2C(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

uint64_t *sub_1000D9D60(void *a1, unint64_t *a2)
{
  result = sub_1000D9958(a1, a2);
  if (result)
  {
    sub_1000D9D98(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_1000D9D98(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_1000D9A0C(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *sub_1000D9DDC(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
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

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_1000DA030(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_1000C1E4C();
}

uint64_t sub_1000DA08C(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

uint64_t sub_1000DA0FC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1000DA178(result, a4);
  }

  return result;
}

void sub_1000DA15C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000DA178(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    sub_1000DA030(a1, a2);
  }

  sub_1000C1D48();
}

uint64_t sub_1000DA1C8(uint64_t a1, uint64_t a2)
{
  v2 = *sub_1000D9128(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_1000DA264(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 40 * a3;
    do
    {
      sub_1000D8E24(a1, v4, a2);
      a2 += 40;
      v6 -= 40;
    }

    while (v6);
  }

  return a1;
}

double *sub_1000DA2E8(void *a1, double *a2)
{
  v2 = a2[1];
  v3 = *a2;
  if (*a2 == 0.0)
  {
    v3 = 0.0;
  }

  v4 = *(a2 + 1);
  if (v2 == 0.0)
  {
    v4 = 0;
  }

  v5 = v4 ^ *&v3;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_26;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4 ^ *&v3;
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (result = *v9) == 0)
  {
LABEL_26:
    sub_1000DA534();
  }

  while (1)
  {
    v11 = *(result + 1);
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_26;
    }

LABEL_25:
    result = *result;
    if (!result)
    {
      goto LABEL_26;
    }
  }

  if (result[2] != *a2 || result[3] != v2)
  {
    goto LABEL_25;
  }

  return result;
}

void sub_1000DA510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11)
{
  if (a10)
  {
    sub_1000DA5D4(&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000DA5D4(uint64_t a1, void **a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_1000D87F0((a2 + 4), a2[5]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void *sub_1000DA634(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
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

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_1000DA87C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000D8550(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DA890(uint64_t a1)
{
  sub_1000DA8CC(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1000DA8CC(uint64_t a1, void **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_1000D87F0((v2 + 4), v2[5]);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_1000DA914(uint64_t a1)
{
  sub_1000DA950(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1000DA950(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_1000DA994(uint64_t a1)
{
  sub_1000DA9D0(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1000DA9D0(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_1000D87F0(v2 + 24, *(v2 + 4));

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_1000DAA88(void *a1, unint64_t a2)
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
    sub_1000DB3C4(a1, a2 - v2);
  }
}

void sub_1000DACAC(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_1000C1D48();
    }

    v9 = v4 - *a1;
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

    if (v10)
    {
      sub_1000DB4D8(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
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

__n128 *sub_1000DAED0(void *a1, __n128 *__src, __n128 *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = ((v6 - *a1) >> 4) + 1;
    if (v11 >> 60)
    {
      sub_1000C1D48();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 3 > v11)
    {
      v11 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 4;
    v29 = a1;
    if (v14)
    {
      sub_1000DB4D8(a1, v14);
    }

    v26 = 0;
    v27 = 16 * v15;
    v28 = (16 * v15);
    sub_1000DB688(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 1;
  }

  else
  {
    v8 = __src + 1;
    if (v6 < 0x10)
    {
      v9 = a1[1];
    }

    else
    {
      v9 = v6 + 1;
      *v6 = v6[-1];
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(&__src[1], __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 1;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = a3[v24];
  }

  return v4;
}

void sub_1000DB06C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000DB3C4(uint64_t a1, unint64_t a2)
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
      sub_1000C1D48();
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
      sub_1000DB4D8(a1, v9);
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

void sub_1000DB4D8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1000C1E4C();
}

void *sub_1000DB520(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
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

      sub_1000DB64C(v6, v10);
    }

    sub_1000C1D48();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
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

void sub_1000DB64C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_1000DB4D8(a1, a2);
  }

  sub_1000C1D48();
}

__n128 sub_1000DB688(__n128 **a1, __n128 *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = v5 - *a1;
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = (v4 - *a1) >> 3;
      }

      sub_1000DB4D8(a1[4], v11);
    }

    v7 = ((v6 >> 4) + 1) / -2;
    v8 = ((v6 >> 4) + 1) / 2;
    v9 = &v5[-v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = (v9 + v10);
    a1[1] = &v5[v7];
    a1[2] = (v9 + v10);
  }

  result = *a2;
  *v4 = *a2;
  ++a1[2];
  return result;
}

id sub_1000DC498(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = CRLiOSCanvasViewControllerAccessibility;
  return objc_msgSendSuper2(&v3, "showEditMenuForSelectionPath:", v1);
}

void sub_1000DD254(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000DD298(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000DD824(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000DD868(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000DD8AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000DD8F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000DE658(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 168));
  _Unwind_Resume(a1);
}

uint64_t sub_1000DE6D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained crlaxKnobPositionAdjustedByDistance:0 inDirection:*(a1 + 48)];
  [v4 crlaxMoveKnobToRepPositionInNaturalSpace:?];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DE7B8;
  v7[3] = &unk_10183AF10;
  objc_copyWeak(&v8, (a1 + 40));
  CRLAccessibilityPerformBlockOnMainThreadAfterDelay(v7, 0.5);
  objc_destroyWeak(&v8);

  return 1;
}

void sub_1000DE7B8(uint64_t a1)
{
  v1 = UIAccessibilityLayoutChangedNotification;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  UIAccessibilityPostNotification(v1, WeakRetained);
}

uint64_t sub_1000DE814(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained crlaxKnobPositionAdjustedByDistance:1 inDirection:*(a1 + 48)];
  [v4 crlaxMoveKnobToRepPositionInNaturalSpace:?];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DE8F4;
  v7[3] = &unk_10183AF10;
  objc_copyWeak(&v8, (a1 + 40));
  CRLAccessibilityPerformBlockOnMainThreadAfterDelay(v7, 0.5);
  objc_destroyWeak(&v8);

  return 1;
}

void sub_1000DE8F4(uint64_t a1)
{
  v1 = UIAccessibilityLayoutChangedNotification;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  UIAccessibilityPostNotification(v1, WeakRetained);
}

uint64_t sub_1000DE950(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained crlaxKnobPositionAdjustedByDistance:2 inDirection:*(a1 + 48)];
  [v4 crlaxMoveKnobToRepPositionInNaturalSpace:?];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DEA30;
  v7[3] = &unk_10183AF10;
  objc_copyWeak(&v8, (a1 + 40));
  CRLAccessibilityPerformBlockOnMainThreadAfterDelay(v7, 0.5);
  objc_destroyWeak(&v8);

  return 1;
}

void sub_1000DEA30(uint64_t a1)
{
  v1 = UIAccessibilityLayoutChangedNotification;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  UIAccessibilityPostNotification(v1, WeakRetained);
}

uint64_t sub_1000DEA8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained crlaxKnobPositionAdjustedByDistance:3 inDirection:*(a1 + 48)];
  [v4 crlaxMoveKnobToRepPositionInNaturalSpace:?];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DEB6C;
  v7[3] = &unk_10183AF10;
  objc_copyWeak(&v8, (a1 + 40));
  CRLAccessibilityPerformBlockOnMainThreadAfterDelay(v7, 0.5);
  objc_destroyWeak(&v8);

  return 1;
}

void sub_1000DEB6C(uint64_t a1)
{
  v1 = UIAccessibilityLayoutChangedNotification;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  UIAccessibilityPostNotification(v1, WeakRetained);
}

uint64_t sub_1000DEBC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = 0;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained knob];
  v6 = [v5 crlaxCreateKnobTracker];

  v7 = objc_opt_class();
  v8 = __CRLAccessibilityCastAsClass(v7, v6, 1, &v12);
  if (v12 == 1)
  {
    abort();
  }

  v9 = v8;

  v10 = [*(a1 + 32) knob];
  [v10 crlaxPositionInUnscaledCanvas];
  [v9 crlaxAccessibilityRequestsDuplicateItemInsertFromKnobAt:?];

  return 1;
}

BOOL sub_1000DEEE8(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = 0;
  v4 = [*(a1 + 32) knob];
  v5 = [v4 crlaxCreateKnobTracker];

  v6 = objc_opt_class();
  v7 = __CRLAccessibilityCastAsClass(v6, v5, 1, &v10);
  if (v10 == 1)
  {
    abort();
  }

  v8 = v7;

  if (v8)
  {
    [v8 crlaxAccessibilityRequestsConnectionTo:{*(a1 + 40), *(a1 + 48)}];
  }

  return v8 != 0;
}

id sub_1000DEFA0(uint64_t a1)
{
  v2 = [*(a1 + 32) knob];
  v3 = [*(a1 + 32) parentRep];
  [v3 crlaxConvertNaturalPointFromUnscaledCanvas:{*(a1 + 48), *(a1 + 56)}];
  [v2 crlaxMoveKnobToRepPositionInNaturalSpace:1 shouldSnapToMagnets:?];

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v4 i_crlaxEnsureReciprocalConnectionsAfterConnectingConnectionLineToRep:v5];
}

uint64_t sub_1000DF118(uint64_t a1)
{
  v2 = [*(a1 + 32) knob];
  v3 = [*(a1 + 32) parentRep];
  [v3 crlaxConvertNaturalPointFromUnscaledCanvas:{*(a1 + 40), *(a1 + 48)}];
  [v2 crlaxMoveKnobToRepPositionInNaturalSpace:1 shouldSnapToMagnets:?];

  return 1;
}

void sub_1000DFD2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  objc_destroyWeak((v42 + 80));
  objc_destroyWeak((v41 + 80));
  _Block_object_dispose((v43 - 176), 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose((v43 - 224), 8);
  objc_destroyWeak((v43 - 184));
  _Unwind_Resume(a1);
}

void sub_1000DFDA8(id a1)
{
  v1 = sub_1004BD804("PHPickerViewControllerCRLAdditionsLogCat");
  v2 = off_1019EC470;
  off_1019EC470 = v1;
}

uint64_t sub_1000DFDE8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000DFE00(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000DFF5C;
  v20[3] = &unk_10183B128;
  v25 = *(a1 + 48);
  v26 = *(a1 + 64);
  v20[4] = *(a1 + 32);
  objc_copyWeak(&v28, (a1 + 80));
  v10 = *(a1 + 40);
  v11 = *(a1 + 72);
  v24 = v10;
  v27 = v11;
  v12 = v7;
  v21 = v12;
  v13 = v8;
  v22 = v13;
  v14 = v9;
  v23 = v14;
  v15 = objc_retainBlock(v20);
  (v15[2])(v15, v16, v17, v18, v19);

  objc_destroyWeak(&v28);
}

void sub_1000DFF5C(uint64_t a1)
{
  os_unfair_lock_lock((*(*(a1 + 72) + 8) + 32));
  *(*(*(a1 + 80) + 8) + 24) = 1;
  if (*(*(*(a1 + 88) + 8) + 24) == 1)
  {
    if (qword_101AD59E0 != -1)
    {
      sub_101310B6C();
    }

    v2 = off_1019EC470;
    if (os_log_type_enabled(off_1019EC470, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = v2;
      v5 = [v3 publicString];
      v6 = [*(a1 + 32) privateString];
      *buf = 138543618;
      v38 = v5;
      v39 = 2112;
      v40 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %@ Ignoring results because user cancelled asset loading", buf, 0x16u);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 104));

    if (WeakRetained)
    {
      if (*(*(*(a1 + 96) + 8) + 40))
      {
        if (qword_101AD59E0 != -1)
        {
          sub_101310B30();
        }

        v8 = off_1019EC470;
        if (os_log_type_enabled(off_1019EC470, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(a1 + 32);
          v10 = v8;
          v11 = [v9 publicString];
          v12 = [*(a1 + 32) privateString];
          *buf = 138543618;
          v38 = v11;
          v39 = 2112;
          v40 = v12;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ %@ Dismissing progress UI.", buf, 0x16u);
        }

        v13 = *(*(*(a1 + 96) + 8) + 40);
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_1000E04B8;
        v33[3] = &unk_10183B0E0;
        v32 = *(a1 + 32);
        v36 = *(a1 + 64);
        v14 = *(a1 + 40);
        v15 = *(a1 + 48);
        v16 = *(a1 + 56);
        *&v17 = v15;
        *(&v17 + 1) = v16;
        *&v18 = v32;
        *(&v18 + 1) = v14;
        v34 = v18;
        v35 = v17;
        [v13 dismissViewControllerAnimated:1 completion:v33];
      }

      else
      {
        if (qword_101AD59E0 != -1)
        {
          sub_101310B44();
        }

        v26 = off_1019EC470;
        if (os_log_type_enabled(off_1019EC470, OS_LOG_TYPE_DEFAULT))
        {
          v27 = *(a1 + 32);
          v28 = v26;
          v29 = [v27 publicString];
          v30 = [*(a1 + 32) privateString];
          *buf = 138543618;
          v38 = v29;
          v39 = 2112;
          v40 = v30;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ %@ Assets loaded. Calling completion handler.", buf, 0x16u);
        }

        v31 = *(a1 + 64);
        if (v31)
        {
          (*(v31 + 16))(v31, *(a1 + 40), *(a1 + 48), *(a1 + 56));
        }
      }
    }

    else
    {
      if (qword_101AD59E0 != -1)
      {
        sub_101310B58();
      }

      v19 = off_1019EC470;
      if (os_log_type_enabled(off_1019EC470, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(a1 + 32);
        v21 = v19;
        v22 = [v20 publicString];
        v23 = [*(a1 + 32) privateString];
        *buf = 138543618;
        v38 = v22;
        v39 = 2112;
        v40 = v23;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ %@ User dismissed picker before assets loaded", buf, 0x16u);
      }

      v24 = *(a1 + 64);
      if (v24)
      {
        v25 = [NSError errorWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
        (*(v24 + 16))(v24, 0, 0, v25);
      }
    }
  }

  os_unfair_lock_unlock((*(*(a1 + 72) + 8) + 32));
}

void sub_1000E03F8(id a1)
{
  v1 = sub_1004BD804("PHPickerViewControllerCRLAdditionsLogCat");
  v2 = off_1019EC470;
  off_1019EC470 = v1;
}

void sub_1000E0438(id a1)
{
  v1 = sub_1004BD804("PHPickerViewControllerCRLAdditionsLogCat");
  v2 = off_1019EC470;
  off_1019EC470 = v1;
}

void sub_1000E0478(id a1)
{
  v1 = sub_1004BD804("PHPickerViewControllerCRLAdditionsLogCat");
  v2 = off_1019EC470;
  off_1019EC470 = v1;
}

uint64_t sub_1000E04B8(uint64_t a1)
{
  if (qword_101AD59E0 != -1)
  {
    sub_101310B80();
  }

  v2 = off_1019EC470;
  if (os_log_type_enabled(off_1019EC470, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 publicString];
    v6 = [*(a1 + 32) privateString];
    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %@ Finished dismissing progress UI. Calling completion handler.", &v8, 0x16u);
  }

  result = *(a1 + 64);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40), *(a1 + 48), *(a1 + 56));
  }

  return result;
}

void sub_1000E05D8(id a1)
{
  v1 = sub_1004BD804("PHPickerViewControllerCRLAdditionsLogCat");
  v2 = off_1019EC470;
  off_1019EC470 = v1;
}

void sub_1000E0618(id a1)
{
  v1 = sub_1004BD804("PHPickerViewControllerCRLAdditionsLogCat");
  v2 = off_1019EC470;
  off_1019EC470 = v1;
}

void sub_1000E0658(uint64_t a1)
{
  os_unfair_lock_lock((*(*(a1 + 32) + 8) + 32));
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v2 = (*(*(a1 + 32) + 8) + 32);

  os_unfair_lock_unlock(v2);
}

void sub_1000E06B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  os_unfair_lock_lock((*(*(a1 + 56) + 8) + 32));
  if (WeakRetained)
  {
    v3 = *(*(*(a1 + 64) + 8) + 24);
    os_unfair_lock_unlock((*(*(a1 + 56) + 8) + 32));
    if ((v3 & 1) == 0)
    {
      v4 = +[NSBundle mainBundle];
      v5 = [v4 localizedStringForKey:@"Inserting…" value:0 table:0];

      [*(a1 + 32) fractionCompleted];
      if (v6 == 1.0 || fabs(v6 + -1.0) < 0.01)
      {
        v7 = [NSProgress discreteProgressWithTotalUnitCount:-1];
      }

      else
      {
        v7 = *(a1 + 32);
      }

      v8 = v7;
      v9 = [UIAlertController crl_progressAlertControllerWithTitle:v5 message:0 preferredStyle:1 progress:v7];
      v10 = *(*(a1 + 72) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      v12 = +[NSBundle mainBundle];
      v13 = [v12 localizedStringForKey:@"Cancel" value:0 table:0];
      v21 = _NSConcreteStackBlock;
      v22 = 3221225472;
      v23 = sub_1000E09C8;
      v24 = &unk_10183B1C0;
      v14 = *(a1 + 48);
      v25 = *(a1 + 40);
      v26 = v14;
      v15 = [UIAlertAction actionWithTitle:v13 style:1 handler:&v21];

      [*(*(*(a1 + 72) + 8) + 40) addAction:{v15, v21, v22, v23, v24, v25}];
      if (qword_101AD59E0 != -1)
      {
        sub_101310B94();
      }

      v16 = off_1019EC470;
      if (os_log_type_enabled(off_1019EC470, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 40);
        v18 = v16;
        v19 = [v17 publicString];
        v20 = [*(a1 + 40) privateString];
        *buf = 138543618;
        v28 = v19;
        v29 = 2112;
        v30 = v20;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ %@ Presenting progress", buf, 0x16u);
      }

      [WeakRetained presentViewController:*(*(*(a1 + 72) + 8) + 40) animated:1 completion:0];
    }
  }

  else
  {
    os_unfair_lock_unlock((*(*(a1 + 56) + 8) + 32));
  }
}

void sub_1000E09C8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_101AD59E0 != -1)
  {
    sub_101310BBC();
  }

  v4 = off_1019EC470;
  if (os_log_type_enabled(off_1019EC470, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 publicString];
    v8 = [*(a1 + 32) privateString];
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ %@ User cancelled asset loading", &v9, 0x16u);
  }

  [*(a1 + 40) cancel];
}

void sub_1000E0AE8(id a1)
{
  v1 = sub_1004BD804("PHPickerViewControllerCRLAdditionsLogCat");
  v2 = off_1019EC470;
  off_1019EC470 = v1;
}

void sub_1000E0B28(id a1)
{
  v1 = sub_1004BD804("PHPickerViewControllerCRLAdditionsLogCat");
  v2 = off_1019EC470;
  off_1019EC470 = v1;
}

void sub_1000E0E34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = CRLWPRenderer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1000E17C4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000E1808(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_1000E184C(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    v8 = result;
    v9 = 1;
    do
    {
      v10 = *(v4 + 8);
      v11 = *(v4 + 16);
      sub_10026EC00(v20, v4);
      v12 = *(*(v8 + 40) + 40);
      v13 = *(v8 + 48);
      CGContextSaveGState(*(*(v8 + 32) + 16));
      CGContextTranslateCTM(*(*(v8 + 32) + 16), v10 + v12, v11 + v13);
      [*(v8 + 32) p_setCTMAndTextPositionForFragment:*(v8 + 40) state:*(v8 + 56)];
      if ((*(v8 + 64) & 1) != 0 || (*(*(v8 + 40) + 24) & 0x420) != 0 || *(*(v8 + 56) + 56) || *(v8 + 65) == 1)
      {
        v14 = *(v8 + 32);
        sub_10026EC00(v19, v20);
        LOBYTE(v17) = v9 & 1;
        [v14 p_drawTextInRunsForLine:v19 fragment:*(v8 + 40) state:*(v8 + 56) listLabel:0 tateChuYoko:a3 ruby:a4 baseRange:*(v4 + 24) isFirstLineRef:{*(v4 + 32), v17}];
        sub_10026EC38(v19);
      }

      else
      {
        v15 = *(*(v8 + 32) + 16);
        CGAffineTransformMakeScale(&transform, 1.0, -1.0);
        CGContextConcatCTM(v15, &transform);
        v16 = sub_10026ECB4(v20);
        CTLineDraw(v16, *(*(v8 + 32) + 16));
      }

      CGContextRestoreGState(*(*(v8 + 32) + 16));
      result = sub_10026EC38(v20);
      v9 = 0;
      v4 += 104;
    }

    while (v4 != v5);
  }

  return result;
}

void sub_1000E19E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_10026EC38(&a19);
  sub_10026EC38(&a32);
  _Unwind_Resume(a1);
}

void sub_1000E2058(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000E209C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000E29C4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000E2A08(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000E2A4C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000E2A90(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000E31E8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000E322C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000E3270(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000E32B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000E3A84(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000E3AC8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000E3F38(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000E3F7C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000E4374(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000E43B8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000E43FC(int a1, NSRange range1)
{
  length = range1.length;
  location = range1.location;
  v5 = v4;
  range1.length = *(v4 + 40);
  v6 = *(v4 + 48);
  v7 = range1.location;
  range1.location = length;
  if (!NSIntersectionRange(range1, *(&range1 + 8)).length)
  {
    v19.location = location;
    v19.length = length;
    v8 = NSIntersectionRange(v19, *(v5 + 56));
    if (v8.length)
    {
      v9 = sub_10020CC28(*(v5 + 72), v8.location, 1, 1, 0);
      v10 = rint(sub_10020CC28(*(v5 + 72), v8.location + v8.length, 1, 1, 0) - v9);
      if (v10 < 0.0)
      {
        v9 = v9 + v10;
      }

      if (v10 != 0.0)
      {
        if (v10 >= 0.0)
        {
          v11 = v10;
        }

        else
        {
          v11 = -v10;
        }

        v12 = fmod(v11, 4.0);
        if (v12 <= 1.0)
        {
          v13 = -v12;
        }

        else
        {
          v13 = 4.0 - v12;
        }

        v14 = fmax(v11 + v13, 4.0);
        v15 = sub_10020BDE0(*(v5 + 72));
        if (*(v5 + 184) == 1)
        {
          v16 = floor(v15 - *(v5 + 104)) - 1.79999995;
        }

        else if (*(v5 + 185) == 1)
        {
          v16 = floor(v15 + *(v5 + 120));
        }

        else
        {
          v16 = floor(v15) + 1.79999995;
        }

        v17 = *(v5 + 32);

        [v17 p_strokeLineFromPoint:v9 toPoint:v16 width:{v9 + v14, v16}];
      }
    }
  }
}

void sub_1000E5A48(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000E5A8C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000E6754(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1000E6798(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000E67DC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000E6DC4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000E6E08(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000E757C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000E75C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void *sub_1000E7C60(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_1000E7CD8(result, a2);
  }

  return result;
}

void sub_1000E7CBC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E7CD8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_1000E7D14(a1, a2);
  }

  sub_1000C1D48();
}

void sub_1000E7D14(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1000C1E4C();
}

void *sub_1000E7D5C(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_1000DB64C(result, a2);
  }

  return result;
}

void sub_1000E7DB8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E7E18(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("CRLPasteboard.ActivePasteboards", v3);
  v2 = qword_101A344E8;
  qword_101A344E8 = v1;
}

void sub_1000E7EC0(id a1)
{
  v1 = [[NSMapTable alloc] initWithKeyOptions:0 valueOptions:5 capacity:1];
  v2 = qword_101A344F8;
  qword_101A344F8 = v1;
}

void sub_1000E8038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E8050(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000E8068(uint64_t a1)
{
  v5 = [*(a1 + 48) activePasteboards];
  v2 = [v5 objectForKey:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000E8180(uint64_t a1)
{
  v2 = [objc_alloc(objc_msgSend(*(a1 + 32) "pasteboardClass"))];
  v3 = qword_101A34508;
  qword_101A34508 = v2;

  v4 = [*(a1 + 32) activePasteboardsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E8230;
  block[3] = &unk_10183B690;
  block[4] = *(a1 + 32);
  dispatch_async(v4, block);
}

void sub_1000E8230(uint64_t a1)
{
  v3 = [*(a1 + 32) activePasteboards];
  v1 = qword_101A34508;
  v2 = [qword_101A34508 name];
  [v3 setObject:v1 forKey:v2];
}

void sub_1000E83E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000E83F8(uint64_t a1)
{
  v9 = [*(a1 + 48) activePasteboards];
  v2 = [v9 objectForKey:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [objc_alloc(objc_msgSend(*(a1 + 48) "pasteboardClass"))];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = *(*(*(a1 + 40) + 8) + 40);
    if (v8)
    {
      [v9 setObject:v8 forKey:*(a1 + 32)];
    }
  }
}

void sub_1000E858C(uint64_t a1)
{
  v2 = [*(a1 + 40) activePasteboards];
  v3 = [*(a1 + 32) name];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    v5 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131135C();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101311370(v3, v5, v6);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131141C();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v7);
    }

    v8 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLPasteboard pasteboardWithUniqueName]_block_invoke");
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboard.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:186 isFatal:0 description:"Pasteboard already exists with unique name %{public}@", v3];
  }

  [v2 setObject:*(a1 + 32) forKey:v3];
}

void sub_1000E8718(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000E875C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000E88CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000E88E4(uint64_t a1)
{
  v10 = [*(a1 + 48) activePasteboards];
  v2 = [*(a1 + 32) name];
  v3 = [v10 objectForKey:v2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v6 = [objc_alloc(objc_msgSend(*(a1 + 48) "pasteboardClass"))];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = *(*(*(a1 + 40) + 8) + 40);
    if (v9)
    {
      [v10 setObject:v9 forKey:v2];
    }
  }
}

void sub_1000E90B0(uint64_t a1)
{
  v1 = [*(a1 + 32) pasteboardWithName:@"com.apple.freeform.stylepasteboard" create:1];
  v2 = qword_101A34518;
  qword_101A34518 = v1;
}

void sub_1000E9208(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1000E9A00(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000E9A44(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000EA19C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000EA1E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000EB9F8(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1000EBA3C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000EBA80(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000EBAC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) pasteboardPropertyListForType:v3];
  v6 = v5;
  if (v5)
  {
    *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 40) + 32);
    v7 = *(a1 + 40);
    v9 = v3;
    v10 = v5;
    v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    ++*(*(*(a1 + 48) + 8) + 24);
    [v7 addPasteboardItem:v8 atIndex:?];
  }

  objc_autoreleasePoolPop(v4);
}

void sub_1000EBBC4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000EBC08(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000EC0A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000EC0E4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000EC2A4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000EC2E8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000EC60C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000EC650(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_1000ECBA0(uint64_t a1)
{
  if (a1)
  {
    return 2;
  }

  else
  {
    return (a1 << 62 >> 63) & 3;
  }
}

id sub_1000ECC48()
{
  if (qword_101A34530 != -1)
  {
    sub_101311894();
  }

  v1 = qword_101A34528;

  return v1;
}

void sub_1000ECC8C(id a1)
{
  v1 = [UTType typeWithIdentifier:kUTTypePICT];
  v2 = qword_101A34528;
  qword_101A34528 = v1;

  if (!qword_101A34528)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013118A8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013118BC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101311950();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"UTType * _Nonnull CRLPICTUTType(void)_block_invoke"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLIngestionTypes.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:111 isFatal:0 description:"invalid nil value for '%{public}s'", "pictUTType"];
  }
}

void sub_1000ECDF0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000ECE34(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_1000ECE78()
{
  if (qword_101A34540 != -1)
  {
    sub_101311978();
  }

  v1 = qword_101A34538;

  return v1;
}

void sub_1000ECEBC(id a1)
{
  v1 = [UTType typeWithIdentifier:@"com.apple.mail.email"];
  v2 = qword_101A34538;
  qword_101A34538 = v1;

  if (!qword_101A34538)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131198C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013119A0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101311A34();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"UTType * _Nonnull CRLMailEmailMessageUTType(void)_block_invoke"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLIngestionTypes.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:141 isFatal:0 description:"invalid nil value for '%{public}s'", "CRLMailEmailMessageType"];
  }
}

void sub_1000ED01C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000ED060(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_1000ED0A4()
{
  if (qword_101A34550 != -1)
  {
    sub_101311A5C();
  }

  v1 = qword_101A34548;

  return v1;
}

void sub_1000ED0E8(id a1)
{
  v1 = [UTType typeWithIdentifier:@"com.apple.notes.richtext"];
  v2 = qword_101A34548;
  qword_101A34548 = v1;

  if (!qword_101A34548)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101311A70();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101311A84();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101311B18();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"UTType * _Nonnull CRLNotesRichTextUTType(void)_block_invoke"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLIngestionTypes.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:151 isFatal:0 description:"invalid nil value for '%{public}s'", "CRLRichTextType"];
  }
}

void sub_1000ED248(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000ED28C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_1000ED2D0()
{
  if (qword_101A34560 != -1)
  {
    sub_101311B40();
  }

  v1 = qword_101A34558;

  return v1;
}

void sub_1000ED314(id a1)
{
  v1 = [UTType typeWithIdentifier:@"com.apple.drawing"];
  v2 = qword_101A34558;
  qword_101A34558 = v1;

  if (!qword_101A34558)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101311B54();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101311B68();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101311BFC();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"UTType * _Nonnull CRLDrawingUTType(void)_block_invoke"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLIngestionTypes.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:161 isFatal:0 description:"invalid nil value for '%{public}s'", "CRLDrawingType"];
  }
}

void sub_1000ED474(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000ED4B8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_1000ED4FC()
{
  if (qword_101A34570 != -1)
  {
    sub_101311C24();
  }

  v1 = qword_101A34568;

  return v1;
}

void sub_1000ED540(id a1)
{
  v1 = [UTType typeWithIdentifier:@"com.apple.notes.table"];
  v2 = qword_101A34568;
  qword_101A34568 = v1;

  if (!qword_101A34568)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101311C38();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101311C4C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101311CE0();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"UTType * _Nonnull CRLNotesTableUTType(void)_block_invoke"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLIngestionTypes.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:171 isFatal:0 description:"invalid nil value for '%{public}s'", "CRLTableType"];
  }
}

void sub_1000ED6A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000ED6E4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_1000ED728()
{
  if (qword_101A34580 != -1)
  {
    sub_101311D08();
  }

  v1 = qword_101A34578;

  return v1;
}

void sub_1000ED76C(id a1)
{
  v1 = [UTType typeWithIdentifier:@"com.apple.ical.ics"];
  v2 = qword_101A34578;
  qword_101A34578 = v1;

  if (!qword_101A34578)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101311D1C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101311D30();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101311DC4();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"UTType * _Nonnull CRLiCalICSEventUTType(void)_block_invoke"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLIngestionTypes.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:183 isFatal:0 description:"invalid nil value for '%{public}s'", "CRLiCalEventType"];
  }
}

void sub_1000ED8CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000ED910(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000ED998(id a1)
{
  v3[0] = @"com.apple.freeform.CRLNativeMetadata";
  v3[1] = @"com.apple.freeform.CRLNativeData";
  v1 = [NSArray arrayWithObjects:v3 count:2];
  v2 = qword_101A34588;
  qword_101A34588 = v1;
}

void sub_1000EDA68(id a1)
{
  v1 = CGImageSourceCopyTypeIdentifiers();
  v2 = [UTTypePDF identifier];
  v6[0] = v2;
  v6[1] = @"com.adobe.illustrator.ai-image";
  v3 = [NSArray arrayWithObjects:v6 count:2];
  v4 = [(__CFArray *)v1 arrayByAddingObjectsFromArray:v3];
  v5 = qword_101A34598;
  qword_101A34598 = v4;
}

void sub_1000EDBD4(uint64_t a1)
{
  v1 = [*(a1 + 32) supportedImageTypes];
  v2 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [UTType typeWithIdentifier:*(*(&v11 + 1) + 8 * v7), v11];
        if (v8)
        {
          [v2 addObject:v8];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];
  v10 = qword_101A345A8;
  qword_101A345A8 = v9;
}

void sub_1000EDD6C(id a1)
{
  v3[0] = @"com.apple.atx";
  v3[1] = @"org.khronos.astc";
  v3[2] = @"org.khronos.ktx";
  v3[3] = @"com.microsoft.cur";
  v3[4] = @"public.radiance";
  v3[5] = @"public.pbm";
  v3[6] = @"public.pvr";
  v3[7] = @"com.microsoft.dds";
  v3[8] = @"org.khronos.ktx2";
  v3[9] = @"public.avis";
  v1 = [NSArray arrayWithObjects:v3 count:10];
  v2 = qword_101A345B8;
  qword_101A345B8 = v1;
}

id sub_1000EEB38()
{
  if (qword_101A345D0 != -1)
  {
    sub_101311E28();
  }

  v1 = qword_101A345C8;

  return v1;
}

void sub_1000EEB7C(id a1)
{
  v1 = [UTType typeWithIdentifier:@"com.apple.mapkit.map-item"];
  v2 = qword_101A345C8;
  qword_101A345C8 = v1;

  if (!qword_101A345C8)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101311E3C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101311E50();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101311EE4();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"UTType * _Nonnull CRLMapKitMapItemUTType(void)_block_invoke"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLIngestionTypes.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:353 isFatal:0 description:"invalid nil value for '%{public}s'", "CRLMapKitMapItemUTType"];
  }
}

void sub_1000EECDC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000EED20(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_1000EED64()
{
  if (qword_101A345E0 != -1)
  {
    sub_101311F0C();
  }

  v1 = qword_101A345D8;

  return v1;
}

void sub_1000EEDA8(id a1)
{
  v1 = [UTType typeWithIdentifier:@"public.heics"];
  v2 = qword_101A345D8;
  qword_101A345D8 = v1;

  if (!qword_101A345D8)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101311F20();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101311F34();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101311FC8();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"UTType * _Nonnull CRLHEICSUTType(void)_block_invoke"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLIngestionTypes.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:368 isFatal:0 description:"invalid nil value for '%{public}s'", "CRLHEICSUTType"];
  }
}

void sub_1000EEF08(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000EEF4C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000EF5A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000EF5E4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000EF628(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000EF66C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000EF9AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000EF9F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000EFB80(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000EFBC4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000EFF44(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1000F0564(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000F05A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000F0864(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000F08A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000F0DE0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000F0E24(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000F0E68(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000F0EAC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000F13C4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000F1408(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000F144C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000F1490(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000F14D4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000F1518(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000F1A50(uint64_t a1)
{
  v1 = [*(a1 + 32) smartSelectionView];
  [v1 setAlpha:0.0];
}

void sub_1000F1FB0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000F1FF4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000F2374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000F2390(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    [a1[4] setRecognitionEnabled:1];
    v3 = [a1[4] indexableContent];
    v4 = [v3 presentableTextRepresentation];
    v5 = [v4 componentsSeparatedByString:@"\n"];
    v6 = +[NSMutableArray array];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000F2564;
    v10[3] = &unk_10183C078;
    v10[4] = v6;
    [v5 enumerateObjectsUsingBlock:v10];
    if (v5 && [a1[5] length])
    {
      v7 = +[NSNotificationCenter defaultCenter];
      v8 = a1[5];
      v11[0] = @"CRLActiveBoardDidUpdateDrawingIndexedContentsBoardIdentifierString";
      v11[1] = @"CRLActiveBoardDidUpdateDrawingIndexedContents";
      v12[0] = v8;
      v12[1] = v6;
      v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
      [v7 postNotificationName:@"CRLActiveBoardDidUpdateDrawingIndexedContentsNotification" object:0 userInfo:v9];
    }

    [a1[4] cancelOngoingRecognitionRequests];
  }
}

void sub_1000F2564(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 length])
  {
    [*(a1 + 32) addObject:v3];
  }
}

void sub_1000F2670(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1000F2768(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

id sub_1000F36EC(id a1, id a2)
{
  v2 = a2;
  v3 = +[NSCharacterSet whitespaceCharacterSet];
  v4 = [v2 stringByTrimmingCharactersInSet:v3];

  return v4;
}

void sub_1000F47AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000F47F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000F4A90(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000F4AD4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_1000F4FE8(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 4)
  {
    return 0;
  }

  else
  {
    return *(*a1 + 16 * a2);
  }
}

uint64_t sub_1000F500C(void *a1)
{
  v1 = a1[1];
  if (v1 == *a1)
  {
    return 0;
  }

  else
  {
    return *(v1 - 16);
  }
}

void **sub_1000F5028(void **result, __int128 *a2)
{
  v2 = result;
  v16 = *a2;
  v3 = *(a2 + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = *result;
    v8 = v5 - *result;
    v9 = (v8 >> 4) + 1;
    if (v9 >> 60)
    {
      sub_1000C1D48();
    }

    v10 = v4 - v7;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF0;
    v12 = 0xFFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    v17[4] = result;
    if (v12)
    {
      sub_1000F5398(result, v12);
    }

    v13 = (16 * (v8 >> 4));
    *v13 = v16;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *v2;
    *v2 = 0;
    v2[1] = v6;
    v15 = v2[2];
    v2[2] = 0;
    v17[2] = v14;
    v17[3] = v15;
    v17[0] = v14;
    v17[1] = v14;
    result = sub_1000F53E0(v17);
  }

  else
  {
    *v5 = v16;
    *(v5 + 1) = v3;
    v6 = v5 + 16;
  }

  v2[1] = v6;
  return result;
}

void sub_1000F5144(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1000F532C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000F5160(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      sub_1000F532C(v4);
    }
  }

  a1[1] = v2;
}

__n64 sub_1000F51AC(uint64_t *a1, char a2)
{
  result.n64_u64[0] = *&CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v7 = *a1;
  v6 = a1[1];
  if (v6 != *a1)
  {
    if (a2)
    {
      v9 = *(v6 - 16);
      v6 -= 16;
      v11.origin.x = v9[9];
      v11.origin.y = v9[10];
      v11.size.width = v9[11];
      v11.size.height = v9[12] - v9[20];
      *result.n64_u64 = CGRectUnion(*result.n64_u64, v11);
      v7 = *a1;
    }

    while (v6 != v7)
    {
      v10 = *(v6 - 16);
      v6 -= 16;
      *result.n64_u64 = CGRectUnion(*result.n64_u64, *(v10 + 72));
    }
  }

  return result;
}

void sub_1000F522C(uint64_t **a1, float64_t a2, float64x2_t a3)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v5 = *&a3.f64[0];
    do
    {
      v7 = *v3;
      v3 += 2;
      *&a3.f64[0] = v5;
      sub_100216250(v7, a2, a3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_1000F527C(uint64_t *a1, double a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
    return 0;
  }

  v4 = 0;
  do
  {
    v5 = *(*v2 + 32);
    if (v5 == a2)
    {
      ++v4;
    }

    else if (v5 > a2)
    {
      return v4;
    }

    v2 += 16;
  }

  while (v2 != v3);
  return v4;
}

NSUInteger sub_1000F52C4(uint64_t a1)
{
  v1 = &xmmword_101464828;
  v2 = *(a1 + 8);
  v3 = v2 - *a1;
  if (v2 == *a1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = **a1;
  if (*(v4 + 3) < 0)
  {
    v4 = &xmmword_101464828;
  }

  v5.location = *v4;
  if (v3 >= 0x11)
  {
    v6 = *(v2 - 16);
    if ((v6[1].length & 0x8000000000000000) == 0)
    {
      v1 = v6;
    }

    v5.length = *(v4 + 1);
    v5.location = NSUnionRange(v5, *v1).location;
  }

  return v5.location;
}

void sub_1000F532C(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_1000F5398(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1000C1E4C();
}

void **sub_1000F53E0(void **a1)
{
  sub_1000F5414(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1000F5414(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      sub_1000F532C(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void sub_1000F5634(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000F5678(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000F6694(uint64_t a1)
{
  v1 = [*(a1 + 32) crlaxTarget];
  [v1 i_togglePlayPauseTriggeredFromKnob];
}

UIPointerStyle *__cdecl sub_1000F6D28(id a1, UIButton *a2, UIPointerEffect *a3, UIPointerShape *a4)
{
  v5 = a3;
  v6 = a2;
  +[UIPointerInteraction crl_toolbarRoundedRectWidth];
  v8 = v7;
  +[UIPointerInteraction crl_toolbarRoundedRectHeight];
  v9 = [(UIButton *)v6 imageView];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  v12 = v11;

  v13 = [(UIPointerEffect *)v5 preview];
  v14 = [v13 target];
  v15 = [v14 container];

  [v12 bounds];
  [v12 convertPoint:v15 toView:{sub_100120414(v16, v17, v18, v19)}];
  v21 = v20;
  v23 = v22;

  v24 = sub_10011EC70(v21, v23, v8);
  v26 = v25;
  v28 = v27;
  v30 = v29;
  +[UIPointerInteraction crl_toolbarRoundedRectCornerRadius];
  v32 = [UIPointerShape shapeWithRoundedRect:v24 cornerRadius:v26, v28, v30, v31];
  v33 = [UIPointerStyle styleWithEffect:v5 shape:v32];

  return v33;
}

void sub_1000F71D4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000F7218(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000F725C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000F72A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000F7470(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000F74B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000F7DD8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000F7E1C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000F7E60(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000F7EA4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000F81C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000F820C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_1000F82E4(uint64_t a1)
{
  *(*(a1 + 32) + 17) = *(a1 + 40);
  [*(a1 + 32) didChangeConfiguration];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

id sub_1000FAE40(void *a1)
{
  v1 = a1;
  v2 = +[CRLDescription descriptionWithObject:format:](CRLDescription, "descriptionWithObject:format:", v1, @" count=%lu", [v1 count]);;
  if ([v1 count])
  {
    v3 = 0;
    do
    {
      v4 = [NSString stringWithFormat:@"[%lu]", v3];
      v5 = [v1 objectAtIndexedSubscript:v3];
      [v2 addField:v4 format:{@"%@", v5}];

      ++v3;
    }

    while (v3 < [v1 count]);
  }

  [v2 setFieldOptionCommaSeparated];
  v6 = [v2 descriptionString];

  return v6;
}

__CFString *sub_1000FAF64(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    ClassName = object_getClassName(v1);
    if (isKindOfClass)
    {
      +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"(%s*)%p; count=%lu", ClassName, v1, [v1 count]);
    }

    else
    {
      [NSString stringWithFormat:@"(%s*)%p", ClassName, v1, v6];
    }
    v4 = ;
  }

  else
  {
    v4 = @"<nil>";
  }

  return v4;
}

void sub_1000FBEEC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000FBF30(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

__n128 sub_1000FC0BC(uint64_t a1)
{
  result = *(*(a1 + 32) + 72);
  *(*(*(a1 + 40) + 8) + 32) = result;
  return result;
}

void sub_1000FC16C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 120);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FC1E8;
  block[3] = &unk_10183AB38;
  block[4] = v1;
  dispatch_sync(v2, block);
}

void sub_1000FC1E8(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (*(v2 + 5) || (v4 = [*(v2 + 7) count], v2 = *v3, v4))
  {
    *(v2 + 97) = 1;
    *(*v3 + 13) = 1;
    goto LABEL_4;
  }

  v13 = *(v2 + 13);
  if (!*(v2 + 4))
  {
    if (v13)
    {
      goto LABEL_4;
    }

    v19 = 2;
    goto LABEL_40;
  }

  if (!v13)
  {
    if (CRLWPShapeLayout.columnsAreLeftToRight.getter())
    {
      v14 = [*v3 imageData];
      v15 = [v14 length];
      v1 = sub_10050CF20();

      if (v15 > v1)
      {
        v16 = CGImageSourceGetType(*(*v3 + 4));
        if (v16)
        {
          v17 = sub_1000ECC38();
          v1 = [v16 crl_conformsToUTI:v17];

          if (v1)
          {
            *(*v3 + 13) = 4;
            *(*v3 + 97) = 0;
          }
        }
      }
    }

    if (!*(*v3 + 13))
    {
      v18 = [*v3 p_newImageFromSource:*(*v3 + 4)];
      *(*v3 + 97) = v18 != 0;
      CGImageRelease(v18);
      v2 = *v3;
      if (*(*v3 + 97) == 1)
      {
        v19 = 1;
      }

      else
      {
        v19 = 3;
      }

LABEL_40:
      *(v2 + 13) = v19;
    }
  }

LABEL_4:
  v5 = *v3;
  if (!*(*v3 + 13))
  {
    v6 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101313200();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101313214(v3, v6);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013132D4();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLBitmapImageProvider isValid]_block_invoke"];
    v1 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBitmapImageProvider.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v1 lineNumber:175 isFatal:0 description:"Didn't update validation failure type during validation! isValid? %i", *(*v3 + 97)];

    v5 = *v3;
  }

  if ((v5[97] & 1) == 0)
  {
    if (qword_101AD59F8 != -1)
    {
      sub_1013132FC();
    }

    v9 = off_1019EC788;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*v3 imageData];
      if (v10)
      {
        v1 = [*v3 imageData];
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
      }

      else
      {
        v12 = @"Nil";
      }

      v20 = [*v3 imageData];
      v21 = [v20 filename];
      v22 = [*v3 imageData];
      v23 = [v22 assetUUID];
      v24 = [v23 UUIDString];
      v25 = [*v3 validationStatus];
      *buf = 138544130;
      v27 = v12;
      v28 = 2112;
      v29 = v21;
      v30 = 2114;
      v31 = v24;
      v32 = 2048;
      v33 = v25;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "bitmap image <%{public}@: filename=%@, assetUUID=%{public}@>  not valid. status %zi", buf, 0x2Au);

      if (v10)
      {
      }
    }
  }
}

void sub_1000FC610(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000FC654(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000FC698(id a1)
{
  v1 = sub_1004BD804("CRLBitmapImageProviderValidationCat");
  v2 = off_1019EC788;
  off_1019EC788 = v1;
}

void sub_1000FC88C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000FC8D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000FCE10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000FCE30(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000FCE74(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000FCEB8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000FCEFC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000FCF40(id a1)
{
  v1 = sub_1004BD804("CRLBitmapImageResampleCat");
  v2 = off_1019EC778;
  off_1019EC778 = v1;
}

void sub_1000FCF80(void *a1)
{
  v2 = a1[4];
  if (a1[6] == 1)
  {
    *(*(a1[5] + 8) + 24) = *(v2 + 40);
    CGImageRetain(*(*(a1[5] + 8) + 24));
  }

  else if ([*(v2 + 56) count] >= 2)
  {
    v3 = *(a1[4] + 56);
    v4 = [NSNumber numberWithInteger:a1[6]];
    v5 = [v3 objectForKeyedSubscript:v4];

    if (v5)
    {
      *(*(a1[5] + 8) + 24) = CGImageRetain([v5 CGImage]);
    }
  }

  if (!*(*(a1[5] + 8) + 24) && [*(a1[4] + 56) count])
  {
    v6 = a1[6];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = [*(a1[4] + 56) allKeys];
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = v6 ^ 0x7FFFFFFFFFFFFFFFLL;
      v11 = *v23;
      v12 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v14 = [*(*(&v22 + 1) + 8 * i) integerValue];
          v15 = a1[6];
          v16 = &v14[-v15];
          if (&v14[-v15] < 0)
          {
            v16 = (v15 - v14);
          }

          if (v10 >= 0)
          {
            v17 = v10;
          }

          else
          {
            v17 = -v10;
          }

          if (v16 <= v17)
          {
            if (v14 >= v12)
            {
              v18 = v12;
            }

            else
            {
              v18 = v14;
            }

            if (v16 == v17)
            {
              v12 = v18;
            }

            else
            {
              v12 = v14;
            }

            v10 = v12 - v15;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }

    else
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v19 = *(a1[4] + 56);
    v20 = [NSNumber numberWithInteger:v12];
    v21 = [v19 objectForKeyedSubscript:v20];
    *(*(a1[5] + 8) + 24) = [v21 CGImage];

    CGImageRetain(*(*(a1[5] + 8) + 24));
  }
}

void sub_1000FD36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000FD64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000FD664(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000FD6A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000FD91C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000FD934(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000FD978(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000FE108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000FE12C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000FE170(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000FE1B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000FE1F8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000FE23C(id a1)
{
  v1 = sub_1004BD804("CRLBitmapImageResampleCat");
  v2 = off_1019EC778;
  off_1019EC778 = v1;
}

void sub_1000FE27C(id a1)
{
  v1 = sub_1004BD804("CRLBitmapImageResampleCat");
  v2 = off_1019EC778;
  off_1019EC778 = v1;
}

void sub_1000FE2BC(id a1)
{
  v1 = sub_1004BD804("CRLBitmapImageResampleCat");
  v2 = off_1019EC778;
  off_1019EC778 = v1;
}

void sub_1000FE324(id a1)
{
  v1 = sub_1004BD804("CRLImageResampleOptimizationCat");
  v2 = off_1019EC780;
  off_1019EC780 = v1;
}

void sub_1000FE5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1000FE96C(id a1)
{
  v1 = sub_1004BD804("CRLBitmapImageResampleCat");
  v2 = off_1019EC778;
  off_1019EC778 = v1;
}

void sub_1000FEB80(void *a1)
{
  v2 = *(a1[4] + 56);
  v3 = [NSNumber numberWithUnsignedInteger:a1[6]];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    *(*(a1[5] + 8) + 24) = CGImageRetain([v4 CGImage]);
    if (qword_101AD59E8 != -1)
    {
      sub_101313D44();
    }

    v5 = off_1019EC778;
    if (os_log_type_enabled(off_1019EC778, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[6];
      v7 = *(*(a1[5] + 8) + 24);
      v8 = v5;
      Width = CGImageGetWidth(v7);
      Height = CGImageGetHeight(*(*(a1[5] + 8) + 24));
      v11 = 134218496;
      v12 = v6;
      v13 = 2048;
      v14 = Width;
      v15 = 2048;
      v16 = Height;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "using existing 1/%zu image (%zu, %zu)", &v11, 0x20u);
    }
  }
}

void sub_1000FECF0(id a1)
{
  v1 = sub_1004BD804("CRLBitmapImageResampleCat");
  v2 = off_1019EC778;
  off_1019EC778 = v1;
}

void sub_1000FED30(void *a1)
{
  v2 = *(a1[4] + 56);
  if (!v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    v4 = a1[4];
    v5 = *(v4 + 56);
    *(v4 + 56) = v3;

    v2 = *(a1[4] + 56);
  }

  v6 = [NSNumber numberWithUnsignedInteger:a1[6]];
  v7 = [v2 objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = a1[5];
    v9 = *(a1[4] + 56);
    v10 = [NSNumber numberWithUnsignedInteger:a1[6]];
    [v9 setObject:v8 forKeyedSubscript:v10];

    dispatch_semaphore_wait(*(a1[4] + 136), 0xFFFFFFFFFFFFFFFFLL);
    *(a1[4] + 144) = 1;
    dispatch_semaphore_signal(*(a1[4] + 136));
    v11 = a1[4];

    [v11 p_updateEstimatedSize];
  }
}

BOOL sub_1000FF178(uint64_t a1)
{
  result = CGColorSpaceIsWideGamutRGB(*(a1 + 48));
  v3 = 1;
  if (!result)
  {
    v3 = 2;
  }

  *(*(a1 + 32) + 64) = v3;
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 64);
  return result;
}

intptr_t sub_1000FF52C(uint64_t a1)
{
  if (qword_101AD59E8 != -1)
  {
    sub_101313D58();
  }

  v2 = off_1019EC778;
  if (os_log_type_enabled(off_1019EC778, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Beginning to flush provider %p", &v6, 0xCu);
  }

  v4 = *(a1 + 32);
  if (v4[5])
  {
    CFRelease(v4[5]);
    *(*(a1 + 32) + 40) = 0;
    v4 = *(a1 + 32);
  }

  if (v4[6])
  {
    CFRelease(v4[6]);
    *(*(a1 + 32) + 48) = 0;
    v4 = *(a1 + 32);
  }

  if (v4[4])
  {
    CFRelease(v4[4]);
    *(*(a1 + 32) + 32) = 0;
    v4 = *(a1 + 32);
  }

  if ([(CFTypeRef *)v4 i_loadState]== 1)
  {
    [*(a1 + 32) setI_loadState:0];
  }

  [*(*(a1 + 32) + 56) removeAllObjects];
  *(*(a1 + 32) + 152) = 0;
  dispatch_semaphore_wait(*(*(a1 + 32) + 136), 0xFFFFFFFFFFFFFFFFLL);
  *(*(a1 + 32) + 144) = 0;
  return dispatch_semaphore_signal(*(*(a1 + 32) + 136));
}

void sub_1000FF6C8(id a1)
{
  v1 = sub_1004BD804("CRLBitmapImageResampleCat");
  v2 = off_1019EC778;
  off_1019EC778 = v1;
}

void sub_1000FFA5C(id a1)
{
  v1 = sub_1004BD804("CRLImageResampleOptimizationCat");
  v2 = off_1019EC780;
  off_1019EC780 = v1;
}

void *sub_1000FFA9C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[6])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101313D80();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101313D94();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101313E1C();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLBitmapImageProvider p_loadFullSizedImageIfNecessary]_block_invoke"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBitmapImageProvider.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:755 isFatal:0 description:"Should never load full-sized image if we have been asked to load the largest safe image!"];

    result = *(a1 + 32);
  }

  if (!result[5])
  {
    result = [result i_loadState];
    if (result != 2)
    {
      v6 = *(a1 + 32);
      v7 = v6[4];
      if (v7)
      {
        CFRetain(v6[4]);
      }

      else
      {
        v7 = [(CFTypeRef *)v6 p_newCGImageSource];
        if (!v7)
        {
          v8 = 0;
LABEL_19:
          *(*(a1 + 32) + 40) = v8;
          v9 = 1;
          if (v8)
          {
            v10 = 1;
          }

          else
          {
            v10 = 2;
          }

          [*(a1 + 32) setI_loadState:v10];
          dispatch_semaphore_wait(*(*(a1 + 32) + 136), 0xFFFFFFFFFFFFFFFFLL);
          v11 = *(a1 + 32);
          if ((*(v11 + 144) & 1) == 0)
          {
            v9 = *(v11 + 40) != 0;
          }

          *(v11 + 144) = v9;
          dispatch_semaphore_signal(*(*(a1 + 32) + 136));
          return [*(a1 + 32) p_updateEstimatedSize];
        }
      }

      v8 = [*(a1 + 32) p_newImageFromSource:v7];
      if (v8)
      {
        [*(a1 + 32) p_configureOrientationAndSizeFromImageSource:v7 andImage:v8];
      }

      CFRelease(v7);
      goto LABEL_19;
    }
  }

  return result;
}

void sub_1000FFCBC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000FFD00(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1000FFEE0(id a1)
{
  v1 = sub_1004BD804("CRLImageResampleOptimizationCat");
  v2 = off_1019EC780;
  off_1019EC780 = v1;
}

void *sub_1000FFF20(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[5])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101313E58();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101313E6C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101313EF4();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLBitmapImageProvider p_loadLargestSafeImageIfNecessary]_block_invoke"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBitmapImageProvider.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:804 isFatal:0 description:"Should never load largestSafeImage if we can load the full-sized image!"];

    result = *(a1 + 32);
  }

  if (!result[6])
  {
    result = [result i_loadState];
    if (result != 2)
    {
      v6 = *(a1 + 32);
      v7 = v6[4];
      if (v7)
      {
        CFRetain(v6[4]);
      }

      else
      {
        v7 = [(CFTypeRef *)v6 p_newCGImageSource];
        if (!v7)
        {
          v14 = 0;
LABEL_21:
          *(*(a1 + 32) + 48) = v14;
          v15 = 1;
          if (v14)
          {
            v16 = 1;
          }

          else
          {
            v16 = 2;
          }

          [*(a1 + 32) setI_loadState:v16];
          dispatch_semaphore_wait(*(*(a1 + 32) + 136), 0xFFFFFFFFFFFFFFFFLL);
          v17 = *(a1 + 32);
          if ((*(v17 + 144) & 1) == 0)
          {
            v15 = *(v17 + 48) != 0;
          }

          *(v17 + 144) = v15;
          dispatch_semaphore_signal(*(*(a1 + 32) + 136));
          return [*(a1 + 32) p_updateEstimatedSize];
        }
      }

      if (qword_101AD59E8 != -1)
      {
        sub_101313F1C();
      }

      v8 = off_1019EC778;
      if (os_log_type_enabled(off_1019EC778, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 32);
        v10 = *(a1 + 40);
        v11 = *(a1 + 48);
        v12 = v8;
        v22.width = v10;
        v22.height = v11;
        v13 = NSStringFromCGSize(v22);
        v18 = 134218242;
        v19 = v9;
        v20 = 2114;
        v21 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "provider:%p creating new largest safe image of size:%{public}@ ", &v18, 0x16u);
      }

      v14 = [*(a1 + 32) p_newImageOfSize:v7 fromSource:{*(a1 + 40), *(a1 + 48)}];
      CFRelease(v7);
      goto LABEL_21;
    }
  }

  return result;
}

void sub_100100208(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10010024C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100100290(id a1)
{
  v1 = sub_1004BD804("CRLBitmapImageResampleCat");
  v2 = off_1019EC778;
  off_1019EC778 = v1;
}

void *sub_10010034C(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[4])
  {
    result = [result i_loadState];
    if (result != 2)
    {
      if (CRLWPShapeLayout.columnsAreLeftToRight.getter())
      {
        v3 = [*(a1 + 32) imageData];
        v4 = sub_10050E9FC(v3);

        if ((v4 & 1) == 0)
        {
          [*(a1 + 32) setI_loadState:2];
          *(*(a1 + 32) + 104) = 4;
        }
      }

      result = [*(a1 + 32) i_loadState];
      if (result != 2)
      {
        v5 = [*(a1 + 32) p_newCGImageSource];
        if (v5)
        {
          [*(a1 + 32) p_configureOrientationAndSizeFromImageSource:v5 andImage:0];
          v6 = 1;
        }

        else
        {
          v6 = 2;
        }

        *(*(a1 + 32) + 32) = v5;
        [*(a1 + 32) setI_loadState:v6];
        dispatch_semaphore_wait(*(*(a1 + 32) + 136), 0xFFFFFFFFFFFFFFFFLL);
        v7 = *(a1 + 32);
        v8 = (*(v7 + 144) & 1) != 0 || *(v7 + 32) != 0;
        *(v7 + 144) = v8;
        v9 = *(*(a1 + 32) + 136);

        return dispatch_semaphore_signal(v9);
      }
    }
  }

  return result;
}

intptr_t sub_100100870(uint64_t a1)
{
  *(*(a1 + 32) + 40) = *(a1 + 40);
  dispatch_semaphore_wait(*(*(a1 + 32) + 136), 0xFFFFFFFFFFFFFFFFLL);
  v2 = *(a1 + 32);
  v3 = (*(v2 + 144) & 1) != 0 || *(v2 + 40) != 0;
  *(v2 + 144) = v3;
  v4 = *(*(a1 + 32) + 136);

  return dispatch_semaphore_signal(v4);
}

void sub_1001009D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1001009E8(void *result)
{
  v1 = *(result[4] + 32);
  if (v1)
  {
    *(*(result[5] + 8) + 24) = v1;
    result = *(*(result[5] + 8) + 24);
    if (result)
    {
      return CFRetain(result);
    }
  }

  return result;
}

void sub_100100C38(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100100C7C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100100E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFTypeRef sub_100100EB0(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 32);
  result = *(*(*(a1 + 40) + 8) + 24);
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void sub_100100F84(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

uint64_t sub_100100FA4(double a1, double a2)
{
  if (a1 == 0.0 && a2 == -1.0)
  {
    return 0;
  }

  if (a1 == 1.0 && a2 == -1.0)
  {
    return 1;
  }

  if (a1 == 1.0 && a2 == 0.0)
  {
    return 2;
  }

  if (a1 == 1.0 && a2 == 1.0)
  {
    return 3;
  }

  if (a1 == 0.0 && a2 == 1.0)
  {
    return 4;
  }

  if (a1 == -1.0 && a2 == 1.0)
  {
    return 5;
  }

  if (a1 == -1.0 && a2 == 0.0)
  {
    return 6;
  }

  if (a1 == -1.0 && a2 == -1.0)
  {
    return 7;
  }

  v7 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101314028();
  }

  v8 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    *buf = 67110402;
    v14 = v7;
    v15 = 2082;
    v16 = "CRLTracingDirection directionForVector(CGPoint)";
    v17 = 2082;
    v18 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageTracer.mm";
    v19 = 1024;
    v20 = 73;
    v21 = 2048;
    v22 = a1;
    v23 = 2048;
    v24 = a2;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d can't find direction for invalid vector (%f, %f)", buf, 0x36u);
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10131403C();
  }

  v9 = off_1019EDA68;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = +[CRLAssertionHandler packedBacktraceString];
    sub_101314064(v10, buf, v7);
  }

  v11 = [NSString stringWithUTF8String:"CRLTracingDirection directionForVector(CGPoint)"];
  v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageTracer.mm"];
  [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:73 isFatal:0 description:"can't find direction for invalid vector (%f, %f)", *&a1, *&a2];

  return 8;
}

void sub_100101280(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001012C4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

__n128 sub_100101308(__int128 *a1, __int128 *a2, double a3, double a4, double a5, double a6)
{
  v6 = a5 - a3;
  v7 = a6 - a4;
  if (v6 == -0.5 && v7 == -0.5)
  {
    v19 = xmmword_101462848;
    v20 = &xmmword_101462858;
LABEL_30:
    *a1 = v19;
    result = *v20;
    *a2 = *v20;
    return result;
  }

  if (v6 == 0.5 && v7 == -0.5)
  {
    v19 = xmmword_101462858;
    v20 = &xmmword_101462868;
    goto LABEL_30;
  }

  if (v6 == 0.5 && v7 == 0.5)
  {
    v19 = xmmword_101462868;
    v20 = &xmmword_101462878;
    goto LABEL_30;
  }

  if (v6 == -0.5 && v7 == 0.5)
  {
    v19 = xmmword_101462878;
    v20 = &xmmword_101462848;
    goto LABEL_30;
  }

  v12 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_1013140BC();
  }

  v13 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_1013140D0(v12, v13);
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10131417C();
  }

  v14 = off_1019EDA68;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = +[CRLAssertionHandler packedBacktraceString];
    sub_101314064(v15, &v21, v12);
  }

  v16 = [NSString stringWithUTF8String:"void nextPivotAndBlackVectors(CGPoint, CGPoint, CGPoint &, CGPoint &)"];
  v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageTracer.mm"];
  [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:106 isFatal:0 description:"unexpected pivot and black points while tracing"];

  return result;
}

void sub_100101540(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100101584(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001015C8(void *a1, __int128 **a2, double a3)
{
  v5 = a1;
  v6 = v5;
  v8 = *a2;
  v7 = a2[1];
  v44 = a2;
  v9 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a2) >> 3);
  if (v9 > 0x31)
  {
    goto LABEL_12;
  }

  v10 = v5;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  if (v7 != v8)
  {
    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    if (v9 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 3);
    }

    v16 = v8 + 1;
    do
    {
      x = sub_100120604(x, y, width, height, *(v16 - 1));
      v16 += 3;
      --v15;
    }

    while (v15);
  }

  v17 = width < 5.0 || height < 5.0;
  v6 = v10;
  if (!v17)
  {
LABEL_12:
    __p = 0;
    v46 = 0;
    v47 = 0;
    sub_100101898(&__p, v8);
    for (i = 0; i < v9 - 1; sub_100101898(&__p, (v19 + 24 * i)))
    {
      v19 = *v44;
      v20 = i + 1;
      v21 = i + 2;
      if (i + 2 < v9)
      {
        v22 = v19 + 3 * i;
        v23 = *v22;
        v24 = v22[1];
        v25 = v22 + 4;
        ++i;
        v26 = v21;
        while (1)
        {
          if (v20 >= v26)
          {
            LOBYTE(v36) = 1;
          }

          else
          {
            v27 = v19 + 3 * v26;
            v29 = *v27;
            v28 = v27[1];
            v30 = *v27 - v23;
            v31 = v25;
            v32 = v21;
            do
            {
              v33 = (v28 - v24) * (*(v31 - 1) - v23);
              v34 = v30 * (*v31 - v24);
              if (v33 == v34)
              {
                v36 = 1;
              }

              else
              {
                v35 = vabdd_f64(v33, v34) / sub_100120090(v29, v28, v23, v24);
                v36 = v35 <= a3;
              }

              if (v32 >= v26)
              {
                break;
              }

              ++v32;
              v31 += 3;
            }

            while (v36);
            if (!v36)
            {
              goto LABEL_27;
            }
          }

          i = v26;
LABEL_27:
          if (++v26 >= v9 || !v36)
          {
            goto LABEL_31;
          }
        }
      }

      ++i;
LABEL_31:
      ;
    }

    v37 = __p;
    v38 = 0xAAAAAAAAAAAAAAABLL * ((v46 - __p) >> 3);
    if (v38 < 3)
    {
      if (!__p)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    v39 = *__p;
    v40 = *(__p + 1);
    if (v46 - __p == 72 && v39 == *(__p + 6) && v40 == *(__p + 7))
    {
      goto LABEL_43;
    }

    [v6 moveToPoint:{v39, v40, v6}];
    v42 = 0;
    v43 = v38 - 1;
    do
    {
      [v6 lineToPoint:{*(__p + v42 + 24), *(__p + v42 + 32)}];
      v42 += 24;
      --v43;
    }

    while (v43);
    [v6 closePath];
    v37 = __p;
    if (__p)
    {
LABEL_43:
      v46 = v37;
      operator delete(v37);
    }
  }

LABEL_44:
}

void sub_100101868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100101898(uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1000C1D48();
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
      sub_10010244C(a1, v11);
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

void sub_100101EBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000D87F0(v31 - 152, *(v31 - 144));

  _Unwind_Resume(a1);
}

void sub_1001023F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, char a24, void *a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000D87F0(&a24, a25);

  _Unwind_Resume(a1);
}

void sub_10010244C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1000C1E4C();
}

uint64_t sub_1001024A4(uint64_t a1, double *a2)
{
  v2 = *sub_100102538(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_100102538(uint64_t a1, void *a2, double *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v7 = *a3;
    v6 = a3[1];
    while (1)
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 5);
        if (v6 >= v9)
        {
          break;
        }

LABEL_6:
        v4 = *v4;
        result = v8;
        if (!*v8)
        {
          goto LABEL_18;
        }
      }

      if (v6 == v9)
      {
        v10 = *(v4 + 4);
        if (v7 < v10)
        {
          goto LABEL_6;
        }

        if (v9 >= v6 && v10 >= v7)
        {
          goto LABEL_18;
        }
      }

      else if (v9 >= v6)
      {
        goto LABEL_18;
      }

      result = v4 + 1;
      v4 = v4[1];
      if (!v4)
      {
        goto LABEL_18;
      }
    }
  }

  v8 = result;
LABEL_18:
  *a2 = v8;
  return result;
}

uint64_t sub_1001025A8(uint64_t **a1, double *a2)
{
  v3 = sub_1001025FC(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_1000D9518(a1, v3);
  operator delete(v4);
  return 1;
}

double *sub_1001025FC(uint64_t a1, double *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = v2;
  do
  {
    v8 = v3[5];
    if (v8 >= v6)
    {
      if (v8 == v6)
      {
        v9 = v3[4];
        if (v9 >= v5)
        {
          v7 = v3;
        }

        v3 += v9 < v5;
      }

      else
      {
        v7 = v3;
      }
    }

    else
    {
      ++v3;
    }

    v3 = *v3;
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v10 = v7[5];
  if (v6 < v10 || v6 == v10 && v5 < v7[4])
  {
    return v2;
  }

  return v7;
}

void sub_100102984(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001029C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100102F58(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100102F9C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100103154(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100103198(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100103860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

void sub_1001038A4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001038E8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10010392C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100103970(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001039B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001039F8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_100103A3C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100103A54(uint64_t a1)
{
  v2 = (a1 + 32);
  dispatch_semaphore_wait(*(*(a1 + 32) + 16), 0xFFFFFFFFFFFFFFFFLL);
  v3 = *(*v2 + 3);
  if (v3 != 1)
  {
    if (v3)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013148B8();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013148CC();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101314960();
      }

      v4 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v4);
      }

      v5 = [NSString stringWithUTF8String:"[CRLCanvasGuideController beginAlignmentOperationForReps:preventCenterGuides:preventSpacingGuides:preventSizingGuides:]_block_invoke"];
      v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasGuideController.m"];
      [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:493 isFatal:0 description:"Guide state unexpected when do second pass on begin generation! %lu", *(*v2 + 3)];
    }

    else
    {
      *(*v2 + 3) = 1;
    }
  }

  dispatch_semaphore_signal(*(*v2 + 2));
  if (*(*v2 + 14))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101314988();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013149B0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101314A38();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLCanvasGuideController beginAlignmentOperationForReps:preventCenterGuides:preventSpacingGuides:preventSizingGuides:]_block_invoke"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasGuideController.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:499 isFatal:0 description:"Did not end previous alignment operation before beginning new one"];
  }

  v10 = objc_alloc_init(NSMutableSet);
  v11 = *(a1 + 32);
  v12 = *(v11 + 176);
  *(v11 + 176) = v10;

  v13 = objc_alloc_init(NSMutableDictionary);
  v14 = *(a1 + 32);
  v15 = *(v14 + 88);
  *(v14 + 88) = v13;

  v16 = objc_alloc_init(NSMutableDictionary);
  v17 = *(a1 + 32);
  v18 = *(v17 + 80);
  *(v17 + 80) = v16;

  v19 = objc_alloc_init(NSMutableArray);
  v20 = *(a1 + 32);
  v21 = *(v20 + 112);
  *(v20 + 112) = v19;

  v22 = objc_alloc_init(NSMutableArray);
  v23 = *(a1 + 32);
  v24 = *(v23 + 120);
  *(v23 + 120) = v22;

  v25 = objc_alloc_init(NSMutableArray);
  v26 = *(a1 + 32);
  v27 = *(v26 + 128);
  *(v26 + 128) = v25;

  v28 = objc_alloc_init(NSMutableArray);
  v29 = *(a1 + 32);
  v30 = *(v29 + 136);
  *(v29 + 136) = v28;

  v31 = objc_alloc_init(NSMutableArray);
  v32 = *(a1 + 32);
  v33 = *(v32 + 144);
  *(v32 + 144) = v31;

  v34 = objc_alloc_init(NSMutableArray);
  v35 = *(a1 + 32);
  v36 = *(v35 + 152);
  *(v35 + 152) = v34;

  if (*(a1 + 88))
  {
    v37 = 0;
  }

  else
  {
    v37 = [objc_opt_class() shouldAlignCenters];
  }

  *(*(a1 + 32) + 185) = v37;
  *(*(a1 + 32) + 184) = [objc_opt_class() shouldAlignEdges];
  if (*(a1 + 89))
  {
    v38 = 0;
  }

  else
  {
    v38 = [objc_opt_class() shouldAlignToSpacingGuides];
  }

  *(*(a1 + 32) + 186) = v38;
  if (*(a1 + 90))
  {
    v39 = 0;
  }

  else
  {
    v39 = [objc_opt_class() shouldAlignToSizingGuides];
  }

  *(*v2 + 187) = v39;
  *(*v2 + 188) = [objc_opt_class() shouldAlignEdgesToTemplateGuides];
  if (*(*v2 + 187) == 1)
  {
    v40 = objc_alloc_init(NSMutableArray);
    v41 = *(*v2 + 13);
    *(*v2 + 13) = v40;

    v42 = objc_alloc_init(NSMutableArray);
    v43 = *(*v2 + 12);
    *(*v2 + 12) = v42;
  }

  v44 = [*(a1 + 40) anyObject];
  v45 = [v44 layout];
  v46 = [v45 parentLayoutForProvidingGuides];
  v47 = *(*(a1 + 56) + 8);
  v48 = *(v47 + 40);
  *(v47 + 40) = v46;

  v49 = *(*(*(a1 + 56) + 8) + 40);
  if (!v49)
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    return;
  }

  v50 = [v49 layoutsForProvidingGuidesForChildLayouts];
  v51 = [v50 mutableCopy];
  v52 = *(*(a1 + 72) + 8);
  v53 = *(v52 + 40);
  *(v52 + 40) = v51;

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 208));
  [WeakRetained visibleUnscaledRect];
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;

  v63 = *(a1 + 48);
  if (v63)
  {
    v64 = *v2;
    v65 = [v63 layout];
    [v64 p_alignmentFrameInRootForLayout:v65];
    y = v67;
    x = v66;
    height = v69;
    width = v68;
  }

  else
  {
    y = CGRectNull.origin.y;
    x = CGRectNull.origin.x;
    height = CGRectNull.size.height;
    width = CGRectNull.size.width;
  }

  v163 = 0u;
  v164 = 0u;
  v161 = 0u;
  v162 = 0u;
  v70 = *(a1 + 40);
  v71 = [v70 countByEnumeratingWithState:&v161 objects:v169 count:16];
  if (v71)
  {
    v72 = v71;
    v73 = *v162;
LABEL_41:
    v74 = 0;
    while (1)
    {
      if (*v162 != v73)
      {
        objc_enumerationMutation(v70);
      }

      v75 = *(*(&v161 + 1) + 8 * v74);
      v76 = *(*(*(a1 + 56) + 8) + 40);
      v77 = [v75 layout];
      v78 = [v77 parentLayoutForProvidingGuides];

      if (v76 != v78)
      {
        break;
      }

      v79 = [v75 layout];
      [*v2 p_alignmentFrameInRootForLayout:v79];
      v81 = v80;
      v83 = v82;
      v85 = v84;
      v87 = v86;
      if (![v75 providesGuidesWhileAligning] || !sub_10011FF38(v81, v83, v85, v87, v56, v58, v60, v62))
      {
        [*(*(*(a1 + 72) + 8) + 40) removeObject:v79];
      }

      if (v72 == ++v74)
      {
        v72 = [v70 countByEnumeratingWithState:&v161 objects:v169 count:16];
        if (!v72)
        {
          goto LABEL_50;
        }

        goto LABEL_41;
      }
    }

    *(*(*(a1 + 64) + 8) + 24) = 0;
LABEL_88:

    return;
  }

LABEL_50:

  if (*(*v2 + 24))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101314A60();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101314A88();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101314B24();
    }

    v88 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v88);
    }

    v89 = [NSString stringWithUTF8String:"[CRLCanvasGuideController beginAlignmentOperationForReps:preventCenterGuides:preventSpacingGuides:preventSizingGuides:]_block_invoke"];
    v90 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasGuideController.m"];
    [CRLAssertionHandler handleFailureInFunction:v89 file:v90 lineNumber:562 isFatal:0 description:"expected nil value for '%{public}s'", "_alignmentFrameInRootByLayout"];
  }

  v91 = [[NSMapTable alloc] initWithKeyOptions:0 valueOptions:0 capacity:0];
  v92 = *(a1 + 32);
  v93 = *(v92 + 192);
  *(v92 + 192) = v91;

  v159 = 0u;
  v160 = 0u;
  v157 = 0u;
  v158 = 0u;
  v94 = *(*(*(a1 + 72) + 8) + 40);
  v95 = [v94 countByEnumeratingWithState:&v157 objects:v168 count:16];
  if (v95)
  {
    v96 = v95;
    v97 = *v158;
    do
    {
      for (i = 0; i != v96; i = i + 1)
      {
        if (*v158 != v97)
        {
          objc_enumerationMutation(v94);
        }

        v99 = *(*(&v157 + 1) + 8 * i);
        [v99 alignmentFrameForProvidingGuidesInRoot];
        v100 = *(*v2 + 24);
        v101 = [NSValue valueWithCGRect:?];
        [v100 setObject:v101 forKey:v99];
      }

      v96 = [v94 countByEnumeratingWithState:&v157 objects:v168 count:16];
    }

    while (v96);
  }

  v102 = *(a1 + 48);
  if (!v102)
  {
    v151 = 0u;
    v152 = 0u;
    v149 = 0u;
    v150 = 0u;
    v120 = *(*(*(a1 + 72) + 8) + 40);
    v121 = [v120 countByEnumeratingWithState:&v149 objects:v166 count:16];
    if (v121)
    {
      v122 = v121;
      v123 = *v150;
      do
      {
        for (j = 0; j != v122; j = j + 1)
        {
          if (*v150 != v123)
          {
            objc_enumerationMutation(v120);
          }

          [*v2 p_addGuidesForLayout:*(*(&v149 + 1) + 8 * j)];
        }

        v122 = [v120 countByEnumeratingWithState:&v149 objects:v166 count:16];
      }

      while (v122);
    }

    v125 = [*(*(*(a1 + 72) + 8) + 40) mutableCopy];
    v126 = *(*(a1 + 80) + 8);
    v127 = *(v126 + 40);
    *(v126 + 40) = v125;

    v128 = *(*(*(a1 + 80) + 8) + 40);
    v148[0] = _NSConcreteStackBlock;
    v148[1] = 3221225472;
    v148[2] = sub_1001048C0;
    v148[3] = &unk_10183CBD0;
    v148[4] = *(a1 + 32);
    v129 = [NSPredicate predicateWithBlock:v148];
    [v128 filterUsingPredicate:v129];

    if (([*(*(*(a1 + 56) + 8) + 40) exclusivelyProvidesGuidesForChildLayouts] & 1) == 0)
    {
      v130 = objc_loadWeakRetained((*(a1 + 32) + 208));
      v131 = [v130 provideDynamicGuidesForLayout:*(*(*(a1 + 56) + 8) + 40)];

      v146 = 0u;
      v147 = 0u;
      v144 = 0u;
      v145 = 0u;
      v132 = v131;
      v133 = [v132 countByEnumeratingWithState:&v144 objects:v165 count:16];
      if (v133)
      {
        v134 = v133;
        v135 = *v145;
        do
        {
          for (k = 0; k != v134; k = k + 1)
          {
            if (*v145 != v135)
            {
              objc_enumerationMutation(v132);
            }

            v137 = *(*(&v144 + 1) + 8 * k);
            v138 = *(*v2 + 184);
            [v137 setSnapsToMax:v138];
            [v137 setSnapsToMin:v138];
            [v137 setSnapsToMid:*(*v2 + 185)];
            if ([v137 guideType])
            {
              v139 = 120;
            }

            else
            {
              v139 = 112;
            }

            [*v2 p_addAlignmentGuide:v137 toSortedArray:*(*v2 + v139)];
          }

          v134 = [v132 countByEnumeratingWithState:&v144 objects:v165 count:16];
        }

        while (v134);
      }
    }

    return;
  }

  if ([v102 providesGuidesWhileAligning])
  {
    v70 = [*(a1 + 48) layout];
    if (([v70 shouldDisplayGuides] & 1) == 0)
    {
      goto LABEL_88;
    }

    v103 = sub_10011FF38(x, y, width, height, v56, v58, v60, v62);

    if (v103)
    {
      v104 = *(a1 + 32);
      v105 = [*(a1 + 48) layout];
      [v104 p_addGuidesForLayout:v105];

      v106 = objc_loadWeakRetained((*(a1 + 32) + 208));
      v107 = [v106 infosForGuides];

      v155 = 0u;
      v156 = 0u;
      v153 = 0u;
      v154 = 0u;
      v70 = v107;
      v108 = [v70 countByEnumeratingWithState:&v153 objects:v167 count:16];
      if (!v108)
      {
        goto LABEL_86;
      }

      v109 = v108;
      v110 = *v154;
      while (1)
      {
        v111 = 0;
        do
        {
          if (*v154 != v110)
          {
            objc_enumerationMutation(v70);
          }

          v112 = *(*(&v153 + 1) + 8 * v111);
          v113 = objc_loadWeakRetained((*(a1 + 32) + 208));
          v114 = [v113 layoutForInfo:v112];

          v115 = *(*(*(a1 + 56) + 8) + 40);
          if (v115 == v114)
          {
            if (![v114 shouldProvideGuidesDuringExclusiveAlignmentOperation])
            {
              goto LABEL_81;
            }

LABEL_80:
            [*v2 p_addGuidesForLayout:v114];
            goto LABEL_81;
          }

          v116 = [v114 parentLayoutForProvidingGuides];
          v117 = v116;
          if (v115 != v116)
          {

            goto LABEL_81;
          }

          v118 = [v114 shouldProvideGuidesDuringExclusiveAlignmentOperation];

          if (v118)
          {
            goto LABEL_80;
          }

LABEL_81:

          v111 = v111 + 1;
        }

        while (v109 != v111);
        v119 = [v70 countByEnumeratingWithState:&v153 objects:v167 count:16];
        v109 = v119;
        if (!v119)
        {
LABEL_86:

          goto LABEL_88;
        }
      }
    }
  }
}

void sub_100104728(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10010476C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001047B0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001047F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100104838(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10010487C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_1001048C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = sub_100014370(v4, v3);

  v6 = [*(a1 + 32) interactiveCanvasController];
  LODWORD(v3) = [v6 shouldGenerateGuidesForLayout:v5];

  if (v3)
  {
    v7 = [v5 shouldDisplayGuides];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_100104954(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v3 = objc_alloc_init(CRLBidirectionalGeometricOperator);
    [(CRLBidirectionalGeometricOperator *)v3 setOrientationDependentValueForKey:@"CRLCanvasGuideControllerHorizontalGuideDictionaryKey" withStandardValue:*(*(a1 + 40) + 112) andSwappedValue:*(*(a1 + 40) + 120)];
    [(CRLBidirectionalGeometricOperator *)v3 setOrientationDependentValueForKey:@"CRLCanvasGuideControllerVerticalSpacingDictionaryKey" withStandardValue:*(*(a1 + 40) + 80) andSwappedValue:*(*(a1 + 40) + 88)];
    [(CRLBidirectionalGeometricOperator *)v3 setOrientationDependentValueForKey:@"CRLCanvasGuideControllerHorizontalCenterSpacingGuideDictionaryKey" withStandardValue:*(*(a1 + 40) + 152) andSwappedValue:*(*(a1 + 40) + 144)];
    dispatch_semaphore_wait(*(*(a1 + 40) + 16), 0xFFFFFFFFFFFFFFFFLL);
    v4 = *(a1 + 40);
    v5 = *(v4 + 24);
    dispatch_semaphore_signal(*(v4 + 16));
    if (v5 == 1)
    {
      v6 = *(a1 + 40);
      if (*(v6 + 187) == 1)
      {
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v7 = *(*(*(a1 + 48) + 8) + 40);
        v8 = [v7 countByEnumeratingWithState:&v52 objects:v56 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v53;
          do
          {
            for (i = 0; i != v9; i = i + 1)
            {
              if (*v53 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v52 + 1) + 8 * i);
              [*(a1 + 40) p_alignmentFrameInRootForLayout:v12];
              v14 = v13;
              v16 = v15;
              v18 = v17;
              v20 = v19;
              if ([v12 shouldProvideSizingGuides])
              {
                v21 = [[CRLCanvasSizingGuide alloc] initWithType:0 frame:v14, v16, v18, v20];
                [*(a1 + 40) p_addSizingGuide:v21 toSortedArray:*(*(a1 + 40) + 104)];
                v22 = [[CRLCanvasSizingGuide alloc] initWithType:1 frame:v14, v16, v18, v20];

                [*(a1 + 40) p_addSizingGuide:v22 toSortedArray:*(*(a1 + 40) + 96)];
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v52 objects:v56 count:16];
          }

          while (v9);
        }

        v6 = *(a1 + 40);
      }

      dispatch_semaphore_wait(*(v6 + 16), 0xFFFFFFFFFFFFFFFFLL);
      v23 = *(a1 + 40);
      v24 = *(v23 + 24);
      dispatch_semaphore_signal(*(v23 + 16));
      if (v24 == 1)
      {
        v25 = [*(*(*(a1 + 56) + 8) + 40) count];
        v26 = *(a1 + 40);
        if (v25 && *(v26 + 186) == 1)
        {
          v27 = v25;
          v48 = v25 - 1;
          if (v25 != 1)
          {
            v28 = 0;
            while (1)
            {
              dispatch_semaphore_wait(*(*(a1 + 40) + 16), 0xFFFFFFFFFFFFFFFFLL);
              v29 = *(a1 + 40);
              v30 = *(v29 + 24);
              dispatch_semaphore_signal(*(v29 + 16));
              if (v30 != 1)
              {
                goto LABEL_30;
              }

              v31 = [*(*(*(a1 + 56) + 8) + 40) objectAtIndexedSubscript:v28];
              [*(a1 + 40) p_alignmentFrameInRootForLayout:v31];
              v33 = v32;
              v35 = v34;
              v37 = v36;
              v39 = v38;
              v40 = ++v28;
              do
              {
                v41 = [*(*(*(a1 + 56) + 8) + 40) objectAtIndexedSubscript:{v40, v48}];
                [*(a1 + 40) p_alignmentFrameInRootForLayout:v41];
                v51[0] = _NSConcreteStackBlock;
                v51[1] = 3221225472;
                v51[2] = sub_100104E2C;
                v51[3] = &unk_10183CC20;
                v51[5] = v33;
                v51[6] = v35;
                v51[7] = v37;
                v51[8] = v39;
                v51[9] = v42;
                v51[10] = v43;
                v51[11] = v44;
                v51[12] = v45;
                v51[4] = *(a1 + 40);
                [(CRLBidirectionalGeometricOperator *)v3 executeBidirectionalOperation:v51];

                ++v40;
              }

              while (v27 != v40);

              if (v28 == v48)
              {
                v26 = *(a1 + 40);
                break;
              }
            }
          }

          v50[0] = _NSConcreteStackBlock;
          v50[1] = 3221225472;
          v50[2] = sub_100105108;
          v50[3] = &unk_10183CC48;
          v50[4] = v26;
          [(CRLBidirectionalGeometricOperator *)v3 executeBidirectionalOperation:v50, v48];
          v26 = *(a1 + 40);
        }

        dispatch_semaphore_wait(*(v26 + 16), 0xFFFFFFFFFFFFFFFFLL);
        v46 = *(a1 + 40);
        v47 = *(v46 + 24);
        dispatch_semaphore_signal(*(v46 + 16));
        if (v47 == 1)
        {

          goto LABEL_2;
        }
      }
    }

LABEL_30:

    return;
  }

LABEL_2:
  dispatch_semaphore_wait(*(*(a1 + 40) + 16), 0xFFFFFFFFFFFFFFFFLL);
  v2 = *(a1 + 40);
  if (*(v2 + 24) == 1)
  {
    *(v2 + 24) = 2;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10010533C;
    block[3] = &unk_10183AB38;
    block[4] = *(a1 + 40);
    dispatch_async(&_dispatch_main_q, block);
    v2 = *(a1 + 40);
  }

  dispatch_semaphore_signal(*(v2 + 16));
}

void sub_100104E2C(uint64_t a1, void *a2, void *a3)
{
  v28 = a2;
  v5 = a3;
  if ([v28 rect:*(a1 + 40) verticallyOverlapsRect:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}])
  {
    if (([v28 rect:*(a1 + 40) horizontallyOverlapsRect:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}] & 1) == 0)
    {
      [v28 makeVerticalSpacingRectBetweenRect:*(a1 + 40) andRect:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      [v28 rectWidth:?];
      if (v14 >= 1.0)
      {
        [v28 rectHeight:{v7, v9, v11, v13}];
        if (v15 >= 1.0)
        {
          [v28 rectHeight:{v7, v9, v11, v13}];
          v17 = sub_1004C31F4(v16);
          v18 = sub_100570CAC([v28 verticalOrientation]);
          v19 = [v5 valueForKey:@"CRLCanvasGuideControllerVerticalSpacingDictionaryKey"];
          v20 = [NSNumber numberWithInt:v17];
          v21 = [v19 objectForKey:v20];

          if (v21)
          {
            [(CRLCanvasSpacing *)v21 addSpacingRect:v7 forFrame:v9 andFrame:v11, v13, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)];
          }

          else
          {
            v21 = [[CRLCanvasSpacing alloc] initWithGuideType:v18 withSpacingRect:v7 forFrame:v9 andFrame:v11, v13, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)];
            v22 = [NSNumber numberWithInt:[(CRLCanvasSpacing *)v21 integerOffset]];
            [v19 setObject:v21 forKey:v22];
          }

          v23 = [[CRLCanvasCenterAlignmentGuide alloc] initBetweenRect:v18 andRect:*(a1 + 40) withGuideType:*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)];
          v24 = *(a1 + 32);
          v25 = [v5 valueForKey:@"CRLCanvasGuideControllerHorizontalGuideDictionaryKey"];
          [v24 p_addCenterAlignmentGuide:v23 toSortedArray:v25];

          v26 = *(a1 + 32);
          v27 = [v5 valueForKey:@"CRLCanvasGuideControllerHorizontalCenterSpacingGuideDictionaryKey"];
          [v26 p_addCenterAlignmentGuide:v23 toSortedArray:v27];
        }
      }
    }
  }
}

void sub_100105108(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [v4 valueForKey:@"CRLCanvasGuideControllerVerticalSpacingDictionaryKey"];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v22 = v34 = 0u;
  obj = [v22 allValues];
  v25 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v25)
  {
    v24 = *v32;
    do
    {
      v5 = 0;
      do
      {
        if (*v32 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = v5;
        v6 = *(*(&v31 + 1) + 8 * v5);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v7 = [v6 associatedFrames];
        v8 = [v7 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v28;
          do
          {
            v11 = 0;
            do
            {
              if (*v28 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(a1 + 32);
              [*(*(&v27 + 1) + 8 * v11) CGRectValue];
              v14 = v13;
              v16 = v15;
              v18 = v17;
              v20 = v19;
              v21 = [v4 valueForKey:@"kCRLBidirectionalGeometricOperatorValuesAreSwapped"];
              [v12 p_addSpacingGuidesForFrame:v6 spacing:objc_msgSend(v21 isVerticalSpacing:{"BOOLValue") ^ 1, v14, v16, v18, v20}];

              v11 = v11 + 1;
            }

            while (v9 != v11);
            v9 = [v7 countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v9);
        }

        v5 = v26 + 1;
      }

      while ((v26 + 1) != v25);
      v25 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v25);
  }
}

intptr_t sub_10010533C(uint64_t a1)
{
  dispatch_semaphore_wait(*(*(a1 + 32) + 16), 0xFFFFFFFFFFFFFFFFLL);
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  result = dispatch_semaphore_signal(*(v2 + 16));
  if (v3 == 2)
  {
    v13.origin.x = CGRectNull.origin.x;
    v13.origin.y = CGRectNull.origin.y;
    v13.size.width = CGRectNull.size.width;
    v13.size.height = CGRectNull.size.height;
    result = CGRectEqualToRect(*(*(a1 + 32) + 32), v13);
    if ((result & 1) == 0)
    {
      v5 = *(a1 + 32);
      v6 = *(v5 + 64);
      v7 = *(v5 + 72);
      v8 = *(v5 + 32);
      v9 = *(v5 + 40);
      v10 = *(v5 + 48);
      v11 = *(v5 + 56);

      return [v5 showGuidesAlignedWithRect:v6 forKnobTag:1 shouldRenderX:1 shouldRenderY:v7 shouldRenderSizeGuides:{v8, v9, v10, v11}];
    }
  }

  return result;
}

void sub_100105BA0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100105BE4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100105C28(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100105C6C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100105CB0(uint64_t a1, void *a2, void *a3)
{
  v76 = a2;
  v5 = a3;
  [v5 setValue:&off_1018E20A0 forKey:@"CRLCanvasGuideControllerHorizontalSnapOffsetKey"];
  [v5 setValue:&__kCFBooleanFalse forKey:@"CRLCanvasGuideControllerDidSnapHorizontalKey"];
  v6 = *(a1 + 40);
  v7 = [v76 edgeForStandardRectEdge:0];
  v8 = [v76 edgeForStandardRectEdge:1];
  v9 = [v76 edgeForStandardRectEdge:2];
  if ([*(a1 + 32) p_guidesAreRelevantForEdge:v7 whileDraggingKnobTag:*(a1 + 48)])
  {
    [v76 rectMinX:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
    v11 = v10;
    v12 = [*(a1 + 32) p_guideClosestToEdge:v7 ofFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
    v13 = v12;
    if (v12 && ([v12 offset], vabdd_f64(v14, v11) < fabs(v6)))
    {
      v6 = v14 - v11;
      v15 = v13;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  if ([*(a1 + 32) p_guidesAreRelevantForEdge:v9 whileDraggingKnobTag:*(a1 + 48)])
  {
    [v76 rectMaxX:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
    v17 = v16;
    v18 = [*(a1 + 32) p_guideClosestToEdge:v9 ofFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
    v19 = v18;
    if (v18)
    {
      [v18 offset];
      if (vabdd_f64(v20, v17) < fabs(v6))
      {
        v6 = v20 - v17;
        v21 = v19;

        v15 = v21;
      }
    }
  }

  v22 = 1.0;
  if ([*(a1 + 32) p_guidesAreRelevantForEdge:v8 whileDraggingKnobTag:*(a1 + 48)])
  {
    [v76 rectMidX:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
    v24 = v23;
    v25 = [*(a1 + 32) p_guideClosestToEdge:v8 ofFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
    v26 = v25;
    if (v25)
    {
      [v25 offset];
      v28 = vabdd_f64(v27, v24);
      v29 = fabs(v6);
      if (v28 > 0.001 && v28 < v29)
      {
        v6 = v27 - v24;
        v31 = v26;

        if (*(a1 + 48))
        {
          v22 = 2.0;
        }

        else
        {
          v22 = 1.0;
        }

        v15 = v31;
      }
    }
  }

  if (*(*(a1 + 32) + 186) == 1)
  {
    v32 = [v76 isFlipped];
    v33 = 128;
    if (v32)
    {
      v33 = 136;
    }

    v34 = *(*(a1 + 32) + v33);
    v35 = [v76 isFlipped];
    v36 = 144;
    if (v35)
    {
      v36 = 152;
    }

    v37 = *(*(a1 + 32) + v36);
    v38 = [v76 knobTagForStandardKnobTag:*(a1 + 48)];
    v39 = v38;
    if ((*(*(a1 + 32) + 184) & 1) == 0)
    {
      if (!*(a1 + 48) || (sub_100345928(v38) & 0x92) != 0)
      {
        v75 = v37;
        [v76 rectMinX:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
        v41 = v40;
        v42 = *(a1 + 32);
        v43 = [v42 p_predicateCanBeSnappedToByEdge:v7 ofFrame:*(a1 + 56) inVisibleUnscaledRect:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112)}];
        v44 = [v42 p_closestGuideForOffset:v43 predicate:v34 inArray:v41];

        if (v44)
        {
          [v44 offset];
          if (vabdd_f64(v45, v41) < fabs(v6))
          {
            v6 = v45 - v41;
            v46 = v44;

            v22 = 1.0;
            v15 = v46;
          }
        }

        v37 = v75;
      }

      if (!*(a1 + 48) || (sub_100345928(v39) & 0x248) != 0)
      {
        [v76 rectMaxX:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
        v48 = v47;
        v49 = *(a1 + 32);
        v50 = [v49 p_predicateCanBeSnappedToByEdge:v9 ofFrame:*(a1 + 56) inVisibleUnscaledRect:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112)}];
        v51 = [v49 p_closestGuideForOffset:v50 predicate:v34 inArray:v48];

        if (v51)
        {
          [v51 offset];
          if (vabdd_f64(v52, v48) < fabs(v6))
          {
            v6 = v52 - v48;
            v53 = v51;

            v22 = 1.0;
            v15 = v53;
          }
        }
      }
    }

    if ((*(*(a1 + 32) + 185) & 1) == 0 && (!*(a1 + 48) || (sub_100345928(v39) & 4) == 0 && (sub_100345928(v39) & 0x100) == 0))
    {
      [v76 rectMidX:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
      v55 = v54;
      v56 = *(a1 + 32);
      v57 = [v56 p_predicateCanBeSnappedToByEdge:v8 ofFrame:*(a1 + 56) inVisibleUnscaledRect:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112)}];
      v58 = [v56 p_closestGuideForOffset:v57 predicate:v37 inArray:v55];

      if (v58)
      {
        [v58 offset];
        if (vabdd_f64(v59, v55) < fabs(v6))
        {
          v6 = v59 - v55;
          v60 = v58;

          if (*(a1 + 48))
          {
            v22 = 2.0;
          }

          else
          {
            v22 = 1.0;
          }

          v15 = v60;
        }
      }
    }
  }

  if (*(a1 + 120) == 1 && *(*(a1 + 32) + 187) == 1 && (sub_100345928(*(a1 + 48)) & 0x3DE) != 0)
  {
    [v76 rectWidth:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
    v62 = v61;
    if ([*(a1 + 32) p_sizingGuidesAreRelevantForOrientation:objc_msgSend(v76 whileDraggingKnobTag:{"horizontalOrientation"), *(a1 + 48)}])
    {
      v63 = [v5 valueForKey:@"kCRLBidirectionalGeometricOperatorValuesAreSwapped"];
      v64 = [v63 BOOLValue];
      v65 = 104;
      if (v64)
      {
        v65 = 96;
      }

      v66 = *(*(a1 + 32) + v65);

      v67 = *(a1 + 32);
      v68 = [v67 p_predicateCanBeSnappedToInVisibleUnscaledRect:{*(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112)}];
      v69 = [v67 p_closestGuideForOffset:v68 predicate:v66 inArray:v62];

      if (v69)
      {
        v70 = sub_100345928([v76 knobTagForStandardKnobTag:*(a1 + 48)]);
        [v69 offset];
        if (vabdd_f64(v71, v62) < fabs(v6))
        {
          v72 = v71 - v62;
          if ((v70 & 0x92) != 0)
          {
            v6 = -v72;
          }

          else
          {
            v6 = v72;
          }

          v73 = v69;

          v22 = 1.0;
          v15 = v73;
        }
      }
    }
  }

  if (v15 && fabs(v6) < *(a1 + 40))
  {
    v74 = [NSNumber numberWithDouble:v22 * v6];
    [v5 setValue:v74 forKey:@"CRLCanvasGuideControllerHorizontalSnapOffsetKey"];

    [v5 setValue:&__kCFBooleanTrue forKey:@"CRLCanvasGuideControllerDidSnapHorizontalKey"];
  }
}

void sub_1001072A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a47, 8);
  _Unwind_Resume(a1);
}

void sub_1001072F8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10010733C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100107380(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001073C4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_100107408(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = sub_100014370(v4, v3);
  v6 = objc_opt_class();
  v7 = sub_100014370(v6, v3);

  if (v5)
  {
    if ([v5 guideType] == 1)
    {
      v8 = a1 + 40;
      v9 = *(*(a1 + 40) + 8);
      if (*(v9 + 40))
      {
        [*(a1 + 32) p_spacingForCenterOrSpacingGuide:v5];
        v11 = v10;
        v12 = *(a1 + 40);
        goto LABEL_11;
      }
    }

    else
    {
      v8 = a1 + 48;
      v9 = *(*(a1 + 48) + 8);
      if (*(v9 + 40))
      {
        [*(a1 + 32) p_spacingForCenterOrSpacingGuide:v5];
        v11 = v16;
        v12 = *(a1 + 48);
LABEL_11:
        v17 = [*(*(v12 + 8) + 40) parentSpacing];
        [v17 exactOffset];
        v19 = v18;

        v20 = v5;
        if (v19 <= v11)
        {
          goto LABEL_21;
        }

LABEL_18:
        v9 = *(*v8 + 8);
        goto LABEL_20;
      }
    }

    v20 = v5;
LABEL_20:
    objc_storeStrong((v9 + 40), v20);
    goto LABEL_21;
  }

  if (v7)
  {
    if ([v7 guideType])
    {
      v8 = a1 + 64;
      v9 = *(*(a1 + 64) + 8);
      if (*(v9 + 40))
      {
        [*(a1 + 32) p_spacingForCenterOrSpacingGuide:v7];
        v14 = v13;
        v15 = *(a1 + 64);
        goto LABEL_17;
      }
    }

    else
    {
      v8 = a1 + 56;
      v9 = *(*(a1 + 56) + 8);
      if (*(v9 + 40))
      {
        [*(a1 + 32) p_spacingForCenterOrSpacingGuide:v7];
        v14 = v22;
        v15 = *(a1 + 56);
LABEL_17:
        [*(*(v15 + 8) + 40) exactOffset];
        v20 = v7;
        if (v23 <= v14)
        {
LABEL_21:
          v21 = 0;
          goto LABEL_22;
        }

        goto LABEL_18;
      }
    }

    v20 = v7;
    goto LABEL_20;
  }

  v21 = 1;
LABEL_22:

  return v21;
}

void sub_100107994(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001079D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100107EC0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100107F04(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

intptr_t sub_100107F48(uint64_t a1)
{
  v1 = (a1 + 32);
  dispatch_semaphore_wait(*(*(a1 + 32) + 16), 0xFFFFFFFFFFFFFFFFLL);
  v2 = *v1;
  v3 = *(*v1 + 24);
  if (v3)
  {
    v4 = v3 == 3;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013151EC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101315200();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101315294();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLCanvasGuideController endAlignmentOperation]_block_invoke"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasGuideController.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:1477 isFatal:0 description:"Working on cancellation/cleanup when state doesn't expect it! %lu", *(*v1 + 24)];

    v2 = *v1;
  }

  dispatch_semaphore_signal(*(v2 + 16));
  v8 = *(*v1 + 160);
  *(*v1 + 160) = 0;

  v9 = *(*v1 + 168);
  *(*v1 + 168) = 0;

  v10 = *(*v1 + 176);
  *(*v1 + 176) = 0;

  v11 = *(*v1 + 88);
  *(*v1 + 88) = 0;

  v12 = *(*v1 + 80);
  *(*v1 + 80) = 0;

  v13 = *(*v1 + 120);
  *(*v1 + 120) = 0;

  v14 = *(*v1 + 112);
  *(*v1 + 112) = 0;

  v15 = *(*v1 + 128);
  *(*v1 + 128) = 0;

  v16 = *(*v1 + 136);
  *(*v1 + 136) = 0;

  v17 = *(*v1 + 144);
  *(*v1 + 144) = 0;

  v18 = *(*v1 + 152);
  *(*v1 + 152) = 0;

  v19 = *(*v1 + 192);
  *(*v1 + 192) = 0;

  v20 = *v1;
  if (*(*v1 + 187) == 1)
  {
    v21 = *(v20 + 96);
    *(v20 + 96) = 0;

    v22 = *(*v1 + 104);
    *(*v1 + 104) = 0;

    v20 = *v1;
  }

  dispatch_semaphore_wait(*(v20 + 16), 0xFFFFFFFFFFFFFFFFLL);
  *(*v1 + 24) = 0;
  return dispatch_semaphore_signal(*(*v1 + 16));
}

void sub_1001081C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100108204(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100108A30(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100108A74(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100108AB8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100108AFC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100108CE0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100108D24(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100109618(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10010965C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100109A58(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100109A9C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100109EA0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100109EE4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10010A12C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10010A170(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_10010A278(double *a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = sub_100014370(v4, v3);

  v6 = [v5 isAssociatedContentVisibleInUnscaledRect:{a1[4], a1[5], a1[6], a1[7]}];
  return v6;
}

BOOL sub_10010A528()
{
  v2 = *v0;

  return os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
}

uint64_t sub_10010A598()
{

  return +[CRLAssertionHandler _atomicIncrementAssertCount];
}

void sub_10010AC18(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10010AC5C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10010B3C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10010B404(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10010B5D4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10010B618(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10010BA08(uint64_t a1, char a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v4 = sub_10010BABC;
  v5 = &unk_10183D140;
  v6 = *(a1 + 32);
  v7 = a2;
  if ([NSThread isMainThread:_NSConcreteStackBlock])
  {
    v4(v3);
  }

  else
  {
    dispatch_async(&_dispatch_main_q, v3);
  }
}

void sub_10010BC68(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10010BCAC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10010BE14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_10010BF54(uint64_t a1)
{
  result = *(*(a1 + 32) + 48);
  *(*(*(a1 + 40) + 8) + 32) = result;
  return result;
}

void sub_10010C2E4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10010C328(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

intptr_t sub_10010C3E8(uint64_t a1)
{
  CGPDFDocumentRelease(*(*(a1 + 32) + 40));
  *(*(a1 + 32) + 40) = 0;
  if ([*(a1 + 32) i_loadState] == 1)
  {
    [*(a1 + 32) setI_loadState:0];
  }

  dispatch_semaphore_wait(*(*(a1 + 32) + 64), 0xFFFFFFFFFFFFFFFFLL);
  *(*(a1 + 32) + 72) = 0;
  v2 = *(*(a1 + 32) + 64);

  return dispatch_semaphore_signal(v2);
}

void *sub_10010C4FC(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[5])
  {
    result = [result i_loadState];
    if (result != 2)
    {
      v3 = [*(a1 + 32) p_load];
      *(*(a1 + 32) + 40) = v3;
      if (v3)
      {
        v4 = 1;
      }

      else
      {
        v4 = 2;
      }

      [*(a1 + 32) setI_loadState:v4];
      dispatch_semaphore_wait(*(*(a1 + 32) + 64), 0xFFFFFFFFFFFFFFFFLL);
      *(*(a1 + 32) + 72) = 1;
      v5 = *(*(a1 + 32) + 64);

      return dispatch_semaphore_signal(v5);
    }
  }

  return result;
}

void sub_10010C964(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10010C9A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10010CC08(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 scrollViewDidEndScrollingAnimation:*(a1 + 32)];
  }
}

id sub_10010DCA4(uint64_t a1)
{
  [*(a1 + 32) setCenter:{*(a1 + 40), *(a1 + 48)}];
  v5.origin.x = sub_10011ECB4();
  v6 = CGRectIntegral(v5);
  v2 = *(a1 + 32);

  return [v2 setBounds:{v6.origin.x, v6.origin.y, v6.size.width, v6.size.height}];
}

id sub_10010DDCC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 p_growTransform];
    v2 = *(a1 + 32);
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
    v5 = 0u;
  }

  v4[0] = v5;
  v4[1] = v6;
  v4[2] = v7;
  return [v2 setTransform:v4];
}

id sub_10010DE30(uint64_t a1)
{
  v2 = [*(a1 + 32) pointDidLeaveOriginalLine];
  v3 = 0.33;
  if (v2)
  {
    v3 = 0.0;
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10010DF1C;
  v6[3] = &unk_10183AB38;
  v7 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10010DF80;
  v5[3] = &unk_10183D270;
  v5[4] = v7;
  return [UIView animateWithDuration:0x20000 delay:v6 options:v5 animations:v3 completion:0.0];
}

id sub_10010DF1C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 p_shrinkTransform];
    v2 = *(a1 + 32);
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
    v5 = 0u;
  }

  v4[0] = v5;
  v4[1] = v6;
  v4[2] = v7;
  return [v2 setTransform:v4];
}

id sub_10010DF80(uint64_t a1)
{
  v2 = [*(a1 + 32) pointDidLeaveOriginalLine];
  v3 = 0.35;
  if (v2)
  {
    v3 = 0.0;
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10010E06C;
  v6[3] = &unk_10183AB38;
  v7 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10010E0AC;
  v5[3] = &unk_10183D270;
  v5[4] = v7;
  return [UIView animateWithDuration:0x20000 delay:v6 options:v5 animations:v3 completion:0.0];
}

id sub_10010E06C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *&CGAffineTransformIdentity.c;
  v4[0] = *&CGAffineTransformIdentity.a;
  v4[1] = v2;
  v4[2] = *&CGAffineTransformIdentity.tx;
  return [v1 setTransform:v4];
}

void sub_10010F1C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10010F20C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10010F550(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10010F594(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10010F9F8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10010FA3C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10010FA80(uint64_t a1)
{
  if (atomic_load((*(a1 + 32) + 24)))
  {
    v3 = 0;
    v4 = 0;
    v5 = 1;
  }

  else
  {
    v6 = *(a1 + 32);
    v9 = *(a1 + 48);
    v10 = *(a1 + 64);
    v11 = 0;
    v4 = [v6 p_copyCGImageForTime:&v9 error:&v11];
    v3 = v11;
    v5 = v4 == 0;
  }

  if (atomic_load((*(a1 + 32) + 24)))
  {
    v8 = 2;
  }

  else
  {
    v8 = v5;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v4, v8, v3);
  CGImageRelease(v4);
}

void sub_10010FDD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10010FDF8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10010FE10(uint64_t a1)
{
  v5 = [*(a1 + 32) crlaxStorage];
  v2 = [v5 smartFieldAtCharIndex:*(a1 + 56) attributeKind:6 effectiveRange:*(*(a1 + 48) + 8) + 32];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id sub_10010FFEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = CRLTextEditorAccessibility;
  return objc_msgSendSuper2(&v3, "cut:", v1);
}

id sub_1001100D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = CRLTextEditorAccessibility;
  return objc_msgSendSuper2(&v3, "copy:", v1);
}

id sub_1001101BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = CRLTextEditorAccessibility;
  return objc_msgSendSuper2(&v3, "paste:", v1);
}

void sub_10011053C(uint64_t a1)
{
  if (+[CRLTextEditorAccessibility crlaxCommittingRemoteCommand](CRLTextEditorAccessibility, "crlaxCommittingRemoteCommand") || ([*(a1 + 32) _crlaxIsDictating] & 1) != 0)
  {
    v4 = @"AXValueChangeUserInfoKeyIsQuiet";
    v5 = &__kCFBooleanTrue;
    v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
    UIAccessibilityPostNotification(CRLAccessibilityValueChangedNotification, v2);
  }

  else
  {
    v3 = CRLAccessibilityValueChangedNotification;

    UIAccessibilityPostNotification(v3, 0);
  }
}

void sub_100111644(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100111688(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100111814(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100111858(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100112844(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100112888(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001128CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100112910(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100112E84(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100112EC8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10011313C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100113180(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001133E4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100113428(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_10011346C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001134DC;
  v3[3] = &unk_10183D580;
  v3[4] = v1;
  return [v1 p_createSearchIndexWithCompletionHandler:v3];
}

void sub_1001134DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100113578;
  v5[3] = &unk_10183AE28;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);
}

void sub_1001136DC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100113720(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10011391C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [CRLShapeLibraryShape shapeIDForShapeFromDictionary:v4];
  v6 = [CRLShapeLibraryShape localizedNameForShapeFromDictionary:v4];
  v7 = [*(a1 + 32) p_shapeIDsToRemove];
  v8 = [v7 containsObject:v5];

  if ((v8 & 1) == 0)
  {
    v9 = [CRLShapeLibraryShape localizedKeywordsForShapeFromDictionary:v4 keywordDelimiter:*(a1 + 40)];
    v10 = [v9 crl_arrayByMappingObjectsUsingBlock:&stru_10183D620];
    if (*(a1 + 56) == 1)
    {
      v11 = [CRLShapeLibraryShape baseKeywordsForShapeFromDictionary:v4 keywordDelimiter:*(a1 + 40)];
      v12 = [v9 arrayByAddingObjectsFromArray:v11];

      v13 = [v11 crl_arrayByMappingObjectsUsingBlock:&stru_10183D640];
      v14 = [v10 arrayByAddingObjectsFromArray:v13];

      v10 = v14;
      v9 = v12;
    }

    v15 = [v9 arrayByAddingObject:v6];

    v16 = [v10 arrayByAddingObject:&off_1018E2100];

    if (*(a1 + 56) == 1)
    {
      v17 = [CRLShapeLibraryShape baseNameForShapeFromDictionary:v4];
      v18 = v17;
      if (v17)
      {
        v25 = v17;
        v19 = [NSArray arrayWithObjects:&v25 count:1];
        v20 = [v15 arrayByAddingObjectsFromArray:v19];

        v21 = [v16 arrayByAddingObject:&off_1018E2118];

        v16 = v21;
        v15 = v20;
      }
    }

    v23[0] = @"CRLShapeSearchIndexIdentifierKey";
    v23[1] = @"CRLShapeSearchIndexKeywords";
    v24[0] = v5;
    v24[1] = v15;
    v23[2] = @"CRLShapeSearchIndexPriorities";
    v24[2] = v16;
    v22 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:3];
    [*(a1 + 48) addObject:v22];
  }
}

void sub_100113BDC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100113C20(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100113C64(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100113CA8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100113CEC(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_100114610(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100114654(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100114698(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 p_shapeIDsToRemove];
  v8 = [v7 containsObject:v6];

  if (v8)
  {
    v9 = *(a1 + 40);

    [v9 addIndex:a3];
  }
}

void sub_10011472C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100114770(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001147B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001147F8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100114ADC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100114B20(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100114B64(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100114BA8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001150C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100115104(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100115924(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v12 = sub_100115A30;
  v13 = &unk_10183D8F8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v14 = v5;
  v15 = v7;
  v18 = *(a1 + 48);
  v16 = v8;
  v17 = v6;
  v9 = v6;
  v10 = v5;
  if ([NSThread isMainThread:_NSConcreteStackBlock])
  {
    v12(v11);
  }

  else
  {
    dispatch_async(&_dispatch_main_q, v11);
  }
}

void sub_100115A30(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) p_transitionToItemPromiseState:2];
    [*(a1 + 40) insertDroppedNativeBoardItemsFromProviders:*(a1 + 32) atUnscaledPoint:*(a1 + 48) onRep:0 isCrossAppSource:0 isCrossDocument:{*(a1 + 64), *(a1 + 72)}];
    v2 = *(a1 + 40);

    [v2 cleanupEndOfDragOperation];
  }

  else
  {
    if (qword_101AD5A08 != -1)
    {
      sub_101317248();
    }

    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
    {
      sub_10131725C();
    }

    [*(a1 + 40) p_transitionToItemPromiseState:3];
    [*(a1 + 40) cleanupEndOfDragOperation];
    if ([*(a1 + 56) count])
    {
      v3 = [*(a1 + 40) interactiveCanvasController];
      v4 = [v3 layerHost];
      [v4 presentErrors:*(a1 + 56) withLocalizedDescription:0 completionHandler:0];
    }
  }
}

void sub_100115B40(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_100115B84(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100115BC8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100115C0C(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v5 = sub_100115CF8;
  v6 = &unk_10183D8F8;
  v7 = a2;
  v10 = *(a1 + 56);
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v3 = v7;
  if ([NSThread isMainThread:_NSConcreteStackBlock])
  {
    v5(v4);
  }

  else
  {
    dispatch_async(&_dispatch_main_q, v4);
  }
}

id sub_100115CF8(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [[CRLBoardItemProviderFactory alloc] initWithBoardItemFactory:*(a1 + 40)];
    v10 = *(a1 + 32);
    v3 = [NSArray arrayWithObjects:&v10 count:1];
    v4 = [(CRLBoardItemProviderFactory *)v2 providersForBoardItemsFromTextStorages:v3 position:0 keepHighlights:*(a1 + 64), *(a1 + 72)];

    v5 = [v4 count];
    v6 = *(a1 + 48);
    if (v5 && (v7 = [v6 insertDroppedNativeBoardItemsFromProviders:v4 atUnscaledPoint:*(a1 + 56) onRep:0 isCrossAppSource:0 isCrossDocument:{*(a1 + 64), *(a1 + 72)}], v6 = *(a1 + 48), v7))
    {
      v8 = 2;
    }

    else
    {
      v8 = 3;
    }

    [v6 p_transitionToItemPromiseState:v8];
  }

  else
  {
    [*(a1 + 48) p_transitionToItemPromiseState:3];
  }

  return [*(a1 + 48) cleanupEndOfDragOperation];
}

void sub_100115E20(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100115E64(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100115EA8(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  v8 = sub_100115F8C;
  v9 = &unk_10183D9F0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10 = v3;
  v11 = v4;
  v13 = *(a1 + 48);
  v12 = v5;
  v6 = v3;
  if (+[NSThread isMainThread])
  {
    v8(block);
  }

  else
  {
    dispatch_async(&_dispatch_main_q, block);
  }
}

id sub_100115F8C(uint64_t a1)
{
  v2 = [*(a1 + 32) count];
  v3 = *(a1 + 40);
  if (v2)
  {
    if (v3[21])
    {
      [v3[21] endIgnoringUserInteractionSafely];
      v4 = *(a1 + 40);
      v5 = *(v4 + 168);
      *(v4 + 168) = 0;

      v3 = *(a1 + 40);
    }

    v6 = *(a1 + 32);
    v7 = *(a1 + 48);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10011607C;
    v10[3] = &unk_10183AB38;
    v10[4] = v3;
    return [v3 insertDroppedImportableBoardItemsFromProviders:v6 atUnscaledPoint:v7 onRep:v10 completionHandler:{*(a1 + 56), *(a1 + 64)}];
  }

  else
  {
    [v3 p_transitionToItemPromiseState:3];
    v9 = *(a1 + 40);

    return [v9 cleanupEndOfDragOperation];
  }
}

id sub_10011607C(uint64_t a1)
{
  v2 = [*(a1 + 32) interactiveCanvasController];
  v3 = [v2 layerHost];
  v4 = [v3 asiOSCVC];
  v5 = [v4 crl_windowWrapper];
  v6 = [v5 newWrapperBeginningIgnoringUserInteractionSafely];
  v7 = *(a1 + 32);
  v8 = *(v7 + 168);
  *(v7 + 168) = v6;

  [*(a1 + 32) p_transitionToItemPromiseState:2];
  v9 = *(a1 + 32);

  return [v9 cleanupEndOfDragOperation];
}

void sub_10011612C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100116170(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100116328(id a1)
{
  v1 = sub_1004BD804("CRLDragAndDropCat");
  v2 = off_1019EDBC0;
  off_1019EDBC0 = v1;
}

void sub_10011636C(id a1)
{
  v1 = sub_1004BD804("CRLDragAndDropCat");
  v2 = off_1019EDBC0;
  off_1019EDBC0 = v1;
}

void sub_100116A1C(id a1)
{
  v1 = sub_1004BD804("CRLDragAndDropCat");
  v2 = off_1019EDBC0;
  off_1019EDBC0 = v1;
}

void sub_100116A60(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100116AA4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100116AE8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100116B2C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100116B70(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100116BB4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100116BF8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100116C3C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100116C80(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100116CC4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100116F78(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100116FBC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001171E8(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_1001174B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001174F8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100117778(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1001177BC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100117BD8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100117C1C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100118000(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100118044(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100118218(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10011825C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100118430(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100118474(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100118644(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100118688(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100118854(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100118898(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_100119608(uint64_t a1)
{
  result = [*(a1 + 32) canBeginEditingChildRepOnDoubleTap:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

id CRLAccessibilityStringsDictKey(void *a1)
{
  v1 = a1;
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:v1 value:&stru_1018BCA28 table:@"CRLAccessibility"];

  return v3;
}

id CRLAccessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:v1 value:&stru_1018BCA28 table:@"CRLAccessibility"];

  if (CRLAccessibilityShouldPerformValidationChecks())
  {
    if (v3 == v1)
    {
      ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
      if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"error: String could not be found for key: %@", v5, v6, v7, v8, v9, v1))
      {
        abort();
      }
    }
  }

  return v3;
}

id CRLAccessibilitySpecializedStringsDictKey(void *a1)
{
  v1 = a1;
  v2 = +[CRLAccessibility sharedInstance];
  v3 = objc_opt_class();

  if ([v3 conformsToProtocol:&OBJC_PROTOCOL___CRLAccessibilitySpecializer] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v3 specializedStringsTable];
    v6 = [v4 localizedStringForKey:v1 value:&stru_1018BCA28 table:v5];
  }

  else
  {
    if (CRLAccessibilityShouldPerformValidationChecks())
    {
      ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
      if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"error: does not respond to specializedStringsTable for key: %@", v8, v9, v10, v11, v12, v1))
      {
        abort();
      }
    }

    v6 = 0;
  }

  return v6;
}

id CRLAccessibilitySpecializedLocalizedString(void *a1)
{
  v1 = a1;
  v2 = CRLAccessibilitySpecializedStringsDictKey(v1);
  if (CRLAccessibilityShouldPerformValidationChecks())
  {
    if (v2 == v1)
    {
      ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch();
      if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"error: String could not be found for key: %@", v4, v5, v6, v7, v8, v1))
      {
        abort();
      }
    }
  }

  return v2;
}

id CRLAccessibilityStringForTimeInterval(uint64_t a1, double a2)
{
  if (a2 < 0.0)
  {
    a2 = 0.0;
  }

  v3 = floor(a2 / 3600.0);
  v4 = a2 - v3 * 3600.0;
  v5 = floor(v4 / 60.0);
  v6 = CRLAccessibilityLocalizedString(@"hours.format");
  v7 = CRLAccessibilityLocalizedString(@"minutes.format");
  v8 = CRLAccessibilityLocalizedString(@"seconds.format");
  v9 = [NSNumber numberWithUnsignedInteger:a1];
  v10 = [NSString stringWithFormat:@"%@", v9];
  v11 = [v8 stringByReplacingOccurrencesOfString:@"2" withString:v10];

  if (v3 <= 0.0)
  {
    v12 = 0;
  }

  else
  {
    v12 = [NSString localizedStringWithFormat:v6, *&v3];
  }

  if (v5 <= 0.0)
  {
    v13 = 0;
  }

  else
  {
    v13 = [NSString localizedStringWithFormat:v7, *&v5];
  }

  v22 = [NSString localizedStringWithFormat:v11, v4 + v5 * -60.0];
  v20 = __CRLAccessibilityStringForVariables(1, v12, v14, v15, v16, v17, v18, v19, v13);

  return v20;
}

id __CRLAccessibilityStringForVariables(int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a2;
  objc_opt_class();
  objc_opt_class();
  v11 = [NSMutableString stringWithString:&stru_1018BCA28];
  if (objc_opt_isKindOfClass())
  {
    v12 = v10;
  }

  else
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = 0;
      goto LABEL_7;
    }

    v12 = [v10 string];
  }

  v13 = v12;
LABEL_7:
  if ([v13 length])
  {
    [v11 appendString:v13];
  }

  v20 = &a9;
  if (a1)
  {
    v14 = @", ";
  }

  else
  {
    v14 = @" ";
  }

  while (1)
  {
    v15 = v20++;
    v16 = *v15;
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
LABEL_16:
      v18 = v17;
      goto LABEL_18;
    }

    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 string];
      goto LABEL_16;
    }

    v18 = 0;
LABEL_18:
    if (![v18 length])
    {
      goto LABEL_23;
    }

    if ([v18 isEqualToString:@"__CRLAccessibilityStringForVariablesSentinel"])
    {
      break;
    }

    if ([v11 length])
    {
      [v11 appendString:v14];
    }

    [v11 appendString:v18];
LABEL_23:
  }

  return v11;
}

id __CRLAccessibilityStringForArraysAndVariables(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  objc_opt_class();
  objc_opt_class();
  objc_opt_class();
  v10 = +[NSMutableString string];
  if (objc_opt_isKindOfClass())
  {
    v11 = v9;
  }

  else if (objc_opt_isKindOfClass())
  {
    v11 = [v9 string];
  }

  else
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = 0;
      goto LABEL_8;
    }

    v11 = [v9 componentsJoinedByString:{@", "}];
  }

  v12 = v11;
LABEL_8:
  if ([v12 length])
  {
    [v10 appendString:v12];
  }

  v18 = &a9;
  while (1)
  {
    v13 = v18++;
    v14 = *v13;
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
LABEL_17:
      v16 = v15;
      goto LABEL_18;
    }

    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 string];
      goto LABEL_17;
    }

    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 componentsJoinedByString:{@", "}];
      goto LABEL_17;
    }

    v16 = 0;
LABEL_18:
    if (![v16 length])
    {
      goto LABEL_23;
    }

    if ([v16 isEqualToString:@"__CRLAccessibilityStringForArraysAndVariablesSentinel"])
    {
      break;
    }

    if ([v10 length])
    {
      [v10 appendString:{@", "}];
    }

    [v10 appendString:v16];
LABEL_23:
  }

  return v10;
}

id CRLAccessibilityFriendlyFilename(void *a1)
{
  v1 = [a1 mutableCopy];
  if ([v1 length])
  {
    v2 = [NSRegularExpression regularExpressionWithPattern:@"\\.([a-zA-Z0-9]+)$" options:16 error:0];
    [v2 replaceMatchesInString:v1 options:0 range:0 withTemplate:{objc_msgSend(v1, "length"), &stru_1018BCA28}];

    v3 = [NSRegularExpression regularExpressionWithPattern:@"[\\s|\\-|\\_|.]{0 options:1}2x" error:16, 0];
    [v3 replaceMatchesInString:v1 options:0 range:0 withTemplate:{objc_msgSend(v1, "length"), &stru_1018BCA28}];

    v4 = [NSRegularExpression regularExpressionWithPattern:@"[\\-\\_]+" options:0 error:0];
    [v4 replaceMatchesInString:v1 options:0 range:0 withTemplate:{objc_msgSend(v1, "length"), @" "}];
  }

  return v1;
}

void CRLAccessibilityPostAnnouncementNotificationWithPriorityAndSound(void *a1, void *a2, uint64_t a3, void *a4)
{
  v10 = a1;
  v7 = a2;
  v8 = a4;
  v9 = +[CRLAccessibility sharedInstance];
  if ([v9 crlaxRespondsToSelector:"handlePostingAnnouncement:sender:priority:sound:" fromExtrasProtocol:&OBJC_PROTOCOL___CRLAccessibilityExtras])
  {
    [v9 handlePostingAnnouncement:v7 sender:v10 priority:a3 sound:v8];
  }
}

void CRLAccessibilityPerformBlockOnMainThread(void *a1)
{
  block = a1;
  if (+[NSThread isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_async(&_dispatch_main_q, block);
  }
}

void CRLAccessibilityPerformBlockOnMainThreadAfterDelay(void *a1, double a2)
{
  v2 = (a2 * 1000000000.0);
  block = a1;
  v3 = dispatch_time(0, v2);
  dispatch_after(v3, &_dispatch_main_q, block);
}

void sub_10011B0B8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10011B0FC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10011B308(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10011B34C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10011B558(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10011B59C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10011B7A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10011B7EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

id sub_10011B8F4(uint64_t a1)
{
  v2 = objc_opt_new();
  [v2 setMinFilter:1];
  [v2 setMagFilter:1];
  [v2 setMipFilter:2];
  [v2 setRAddressMode:0];
  [v2 setSAddressMode:0];
  [v2 setTAddressMode:0];
  [v2 setLabel:@"Linear Clamp To Edge Sampler"];
  v3 = [*(a1 + 32) device];
  v4 = [v3 newSamplerStateWithDescriptor:v2];

  return v4;
}

id sub_10011BA68(uint64_t a1)
{
  v2 = objc_opt_new();
  [v2 setMinFilter:1];
  [v2 setMagFilter:1];
  [v2 setMipFilter:2];
  [v2 setRAddressMode:4];
  [v2 setSAddressMode:4];
  [v2 setTAddressMode:4];
  [v2 setLabel:@"Linear Clamp To Zero Sampler"];
  v3 = [*(a1 + 32) device];
  v4 = [v3 newSamplerStateWithDescriptor:v2];

  return v4;
}

id sub_10011BBDC(uint64_t a1)
{
  v2 = objc_opt_new();
  [v2 setMinFilter:0];
  [v2 setMagFilter:0];
  [v2 setMipFilter:2];
  [v2 setRAddressMode:0];
  [v2 setSAddressMode:0];
  [v2 setTAddressMode:0];
  [v2 setLabel:@"Nearest Clamp To Edge Sampler"];
  v3 = [*(a1 + 32) device];
  v4 = [v3 newSamplerStateWithDescriptor:v2];

  return v4;
}

id sub_10011BD50(uint64_t a1)
{
  v2 = objc_opt_new();
  [v2 setMinFilter:0];
  [v2 setMagFilter:0];
  [v2 setMipFilter:2];
  [v2 setRAddressMode:4];
  [v2 setSAddressMode:4];
  [v2 setTAddressMode:4];
  [v2 setLabel:@"Nearest Clamp To Zero Sampler"];
  v3 = [*(a1 + 32) device];
  v4 = [v3 newSamplerStateWithDescriptor:v2];

  return v4;
}

uint64_t sub_10011BE84(uint64_t a1)
{
  sub_1002406C0(a1 + 24);
  *(a1 + 600) = 0;
  *(a1 + 712) = 0;
  *(a1 + 624) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  bzero(a1, 0x2D0uLL);
  return a1;
}

uint64_t sub_10011BED0(uint64_t a1, uint64_t a2)
{
  sub_1002406C0(a1 + 24);
  *(a1 + 600) = 0;
  *(a1 + 712) = 0;
  *(a1 + 624) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  bzero(a1, 0x2D0uLL);
  sub_10011BF80(a1, a2);
  return a1;
}

void sub_10011BF80(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    *a1 = *a2;
    v6 = *(a2 + 16);
    v5 = *(a2 + 24);
    *(a1 + 16) = v6;
    objc_storeStrong((a1 + 24), v5);
    objc_storeStrong((a1 + 32), *(a2 + 32));
    v7 = *(a2 + 40);
    v8 = *(a2 + 56);
    v9 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v9;
    *(a1 + 56) = v8;
    *(a1 + 40) = v7;
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    v10 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v10;
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 320) = *(a2 + 320);
    *(a1 + 256) = *(a2 + 256);
    *&v10 = *(a2 + 344);
    *(a1 + 336) = *(a2 + 336);
    *(a1 + 344) = v10;
    *(a1 + 352) = *(a2 + 352);
    *(a1 + 360) = *(a2 + 360);
    *(a1 + 368) = *(a2 + 368);
    *(a1 + 376) = *(a2 + 376);
    *(a1 + 384) = *(a2 + 384);
    *(a1 + 392) = *(a2 + 392);
    *(a1 + 400) = *(a2 + 400);
    *&v10 = *(a2 + 416);
    *(a1 + 408) = *(a2 + 408);
    *(a1 + 416) = v10;
    *(a1 + 424) = *(a2 + 424);
    *(a1 + 432) = *(a2 + 432);
    *(a1 + 433) = *(a2 + 433);
    *(a1 + 434) = *(a2 + 434);
    v11 = *(a2 + 448);
    *(a1 + 440) = *(a2 + 440);
    *(a1 + 448) = v11;
    *(a1 + 456) = *(a2 + 456);
    *(a1 + 457) = *(a2 + 457);
    v12 = *(a2 + 480);
    *(a1 + 464) = *(a2 + 464);
    *(a1 + 480) = v12;
    *(a1 + 496) = *(a2 + 496);
    *(a1 + 504) = *(a2 + 504);
    v13 = *(a2 + 528);
    *(a1 + 512) = *(a2 + 512);
    *(a1 + 528) = v13;
    *(a1 + 544) = *(a2 + 544);
    *(a1 + 548) = *(a2 + 548);
    *(a1 + 552) = *(a2 + 552);
    *(a1 + 560) = *(a2 + 560);
    *(a1 + 576) = *(a2 + 576);
    *(a1 + 584) = *(a2 + 584);
    *(a1 + 592) = *(a2 + 592);
    *(a1 + 594) = *(a2 + 594);
    *(a1 + 593) = *(a2 + 593);
    objc_storeStrong((a1 + 600), *(a2 + 600));
    *(a1 + 608) = *(a2 + 608);
    objc_storeStrong((a1 + 624), *(a2 + 624));
    objc_storeStrong((a1 + 632), *(a2 + 632));
    *(a1 + 640) = *(a2 + 640);
    objc_storeStrong((a1 + 656), *(a2 + 656));
    objc_storeStrong((a1 + 672), *(a2 + 672));
    objc_storeStrong((a1 + 680), *(a2 + 680));
    v14 = *(a2 + 704);
    *(a1 + 696) = *(a2 + 696);
    *(a1 + 704) = v14;
    objc_storeStrong((a1 + 712), *(a2 + 712));
    v15 = [*(a2 + 664) mutableCopy];
    v16 = *(a1 + 664);
    *(a1 + 664) = v15;
  }
}

void sub_10011C314(uint64_t a1)
{
  v1 = *(a1 + 664);
  *(a1 + 664) = 0;
}

uint64_t sub_10011C358(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 696) = a2;
  *(result + 704) = a3;
  return result;
}

void sub_10011C4F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10011C538(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10011C6C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10011C704(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10011D40C(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x260], 8);
  _Block_object_dispose(&STACK[0x290], 8);
  _Unwind_Resume(a1);
}

void sub_10011D438(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10011D47C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10011D4C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10011D504(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10011D550(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void *sub_10011D594(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10011D644;
  v7[3] = &unk_10183E148;
  v8 = *(a1 + 32);
  v9 = v3;
  v4 = v3;
  v5 = objc_retainBlock(v7);

  return v5;
}