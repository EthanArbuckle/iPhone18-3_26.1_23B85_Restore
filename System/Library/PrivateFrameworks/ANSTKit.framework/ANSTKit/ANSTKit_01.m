void *sub_22E6120FC(void *a1)
{
  *a1 = &unk_28431E2B8;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_22E61215C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_22E5D9B24();
}

void **sub_22E6121A4(void **a1)
{
  sub_22E6121D8(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_22E6121D8(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      sub_22E612C1C(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void *sub_22E61222C(void *a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_22E6122AC(a1, *a2, a2[1], (a2[1] - *a2) >> 4);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_22E6122AC((a1 + 3), *a3, a3[1], (a3[1] - *a3) >> 4);
  return a1;
}

void sub_22E612294(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22E6120A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_22E6122AC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_22E612334(result, a4);
  }

  return result;
}

void sub_22E612314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_22E6120A8(&a9);
  _Unwind_Resume(a1);
}

void sub_22E612334(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_22E61215C(a1, a2);
  }

  sub_22E61047C();
}

void *sub_22E612370(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_22E6123F8(v7);
  return v4;
}

uint64_t sub_22E6123F8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_22E612430(a1);
  }

  return a1;
}

void sub_22E612430(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      sub_22E612C1C(v3);
    }

    v1 -= 16;
  }
}

void sub_22E612474(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_22E6124C8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_22E6124C8(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void sub_22E612520(uint64_t *a1)
{
  if (*a1)
  {
    sub_22E60BD80(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_22E612560(uint64_t *a1)
{
  if (*a1)
  {
    sub_22E6124C8(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_22E6125A0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_22E61261C(result, a4);
  }

  return result;
}

void sub_22E612600(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E61261C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_22E612658(a1, a2);
  }

  sub_22E61047C();
}

void sub_22E612658(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_22E5D9B24();
}

uint64_t sub_22E6126A0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_22E61271C(result, a4);
  }

  return result;
}

void sub_22E612700(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E61271C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_22E610C54(a1, a2);
  }

  sub_22E61047C();
}

void *sub_22E612758(void *result, char *__src, char *a3, unint64_t a4)
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

      sub_22E61261C(v6, v10);
    }

    sub_22E61047C();
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

void *sub_22E612884(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
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

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_22E61271C(v6, v10);
    }

    sub_22E61047C();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
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

void sub_22E6129B0(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    sub_22E612520(a1);
    if (!(a4 >> 60))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 3;
      if (v9 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_22E612334(a1, v11);
    }

    sub_22E61047C();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 4)
  {
    sub_22E612AF0(&v18, a2, a3, v8);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      do
      {
        v16 = *(v15 - 8);
        if (v16)
        {
          sub_22E612C1C(v16);
        }

        v15 -= 16;
      }

      while (v15 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    sub_22E612AF0(&v17, a2, (a2 + v12), v8);
    a1[1] = sub_22E612370(a1, (a2 + v12), a3, a1[1]);
  }
}

uint64_t *sub_22E612AF0(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v8 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = a4[1];
      *a4 = v8;
      a4[1] = v7;
      if (v9)
      {
        sub_22E612C1C(v9);
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void **sub_22E612B68(void **a1)
{
  v3 = a1 + 3;
  sub_22E6120A8(&v3);
  v3 = a1;
  sub_22E6120A8(&v3);
  return a1;
}

__int128 *sub_22E612BB0(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        sub_22E612C1C(v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_22E612C1C(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void *sub_22E612CE4(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28431E2E8;
  KCFHelper::STrack::STrack((a1 + 4));
  return a1;
}

void sub_22E612D60(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28431E2E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318EA430);
}

uint64_t *sub_22E612DDC(uint64_t a1, unsigned int *a2)
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
      v5 = *(v2 + 32);
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

uint64_t *sub_22E612EE0(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_22E612F38(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_22E612F38(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void KCFHelper::KalmanFilterXYAH::initiate(float32x2_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v21 = 0;
  v22 = 0;
  v23 = 0;
  *v24 = *a2;
  *&v24[16] = 0;
  v25 = 0;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  sub_22E6155E0(&v18, v24, v26, 8uLL);
  v6 = *(a2 + 12);
  *&v24[8] = 1008981770;
  v7 = vmul_n_f32(vmul_f32(a1[7], 0x4120000040000000), v6);
  *v24 = vdup_lane_s32(v7, 0);
  *&v24[12] = v7;
  *&v24[20] = v7.i32[1];
  LODWORD(v25) = 925353388;
  HIDWORD(v25) = v7.i32[1];
  v16 = 0;
  v17 = 0;
  __p = 0;
  sub_22E6155E0(&__p, v24, v26, 8uLL);
  *v24 = 0;
  sub_22E611DF8(&v21, 0x40uLL, v24, v8);
  v9 = 0;
  v10 = 0;
  do
  {
    v11 = __p;
    v12 = v21;
    v13 = 8;
    do
    {
      if (v9 + v13 == 8)
      {
        v12[9 * v9] = v11[v10] * v11[v10];
        ++v10;
      }

      --v13;
    }

    while (v13);
    ++v9;
  }

  while (v9 != 8);
  sub_22E615654(a3, &v18, &v21);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_22E613274(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void KCFHelper::KalmanFilterXYAH::predict(void *a1@<X8>)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  __p = 0;
  v2 = 0;
  v3 = 0;
  sub_22E615654(a1, &v4, &__p);
  if (__p)
  {
    v2 = __p;
    operator delete(__p);
  }

  if (v4)
  {
    v5 = v4;
    operator delete(v4);
  }
}

void sub_22E613328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
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

void KCFHelper::KalmanFilterXYAH::project(uint64_t a1@<X0>, uint64_t *a2@<X1>, float **a3@<X2>, void *a4@<X8>, int16x4_t a5@<D0>)
{
  v19 = 0;
  v20 = 0;
  v21 = 0;
  __p = 0;
  v17 = 0;
  v18 = 0;
  v15 = 0;
  sub_22E611DF8(&__p, 0x10uLL, &v15, a5);
  v9 = *a2;
  v10 = *a3;
  v11 = __p;
  *__p = **a3 + ((*(a1 + 56) * (*(a1 + 56) * *(*a2 + 12))) * *(*a2 + 12));
  v11[5] = v10[9] + ((*(a1 + 56) * (*(a1 + 56) * *(v9 + 12))) * *(v9 + 12));
  v12 = v10[18] + 0.01;
  *&v12 = v12;
  v11[10] = *&v12;
  *&v12 = v10[27] + ((*(a1 + 56) * (*(a1 + 56) * *(v9 + 12))) * *(v9 + 12));
  v11[15] = *&v12;
  v15 = 0;
  sub_22E611DF8(&v19, 4uLL, &v15, *&v12);
  v13 = ((*(a1 + 40) - *(a1 + 32)) >> 2) / *(a1 + 64);
  v14 = *a2;
  cblas_sgemm_NEWLAPACK();
  sub_22E615654(a4, &v19, &__p);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }
}

void sub_22E6134C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void KCFHelper::KalmanFilterXYAH::multi_predict(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, int a4@<W3>, void *a5@<X8>, int16x4_t a6@<D0>)
{
  LODWORD(v6) = a4;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v11 = ((a2[1] - *a2) >> 2) / a4;
  v12 = v11 * v11;
  LODWORD(__p) = 0;
  sub_22E611DF8(&v37, v11 * v11 * a4, &__p, a6);
  v14 = *a2;
  if (v6 >= 1)
  {
    v15 = (v14 + 12);
    v16 = v37;
    v17 = v11;
    v18 = v6;
    do
    {
      v19 = *v15;
      v20 = *(a1 + 60);
      v21 = (*v15 * *(a1 + 56)) * (*v15 * *(a1 + 56));
      *v16 = v21;
      v16[v17 + 1] = v21;
      *v13.i32 = (v19 * v20) * (v19 * v20);
      v16[2 * v11 + 2] = 0.0001;
      v16[3 * v11 + 3] = v21;
      v16[4 * v11 + 4] = *v13.i32;
      v16[5 * v11 + 5] = *v13.i32;
      v16[6 * v11 + 6] = 1.0e-10;
      v16[7 * v11 + 7] = *v13.i32;
      v15 = (v15 + v17 * 4);
      v16 += v11 * v11;
      --v18;
    }

    while (v18);
  }

  v22 = (a2[1] - v14) >> 2;
  LODWORD(__p) = 0;
  sub_22E611DF8(&v40, v22, &__p, v13);
  v23 = *a2;
  v30 = *(a1 + 8);
  cblas_sgemm_NEWLAPACK();
  __p = 0;
  v35 = 0;
  v36 = 0;
  v24 = (a3[1] - *a3) >> 2;
  v33 = 0;
  sub_22E611DF8(&__p, v24, &v33, v25);
  if (v6 >= 1)
  {
    v26 = 0;
    v6 = v6;
    v27 = v6;
    do
    {
      v28 = *(a1 + 8);
      v31 = *a3 + 4 * v26;
      cblas_sgemm_NEWLAPACK();
      v26 += v12;
      --v27;
    }

    while (v27);
    v29 = 0;
    do
    {
      v32 = *(a1 + 8);
      cblas_sgemm_NEWLAPACK();
      v29 += v12;
      --v6;
    }

    while (v6);
  }

  sub_22E615654(a5, &v40, &v37);
  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }
}

void sub_22E6137DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void KCFHelper::KalmanFilterXYAH::update(uint64_t a1@<X0>, uint64_t *a2@<X1>, float **a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>, int16x4_t a6@<D0>)
{
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  KCFHelper::KalmanFilterXYAH::project(a1, a2, a3, &v61, a6);
  v58 = 0;
  v59 = 0;
  v60 = 0;
  sub_22E6156D0(&v58, v61, v62, (v62 - v61) >> 2);
  v55 = 0;
  v56 = 0;
  v57 = 0;
  sub_22E6156D0(&v55, v63, v64, (v64 - v63) >> 2);
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v11 = v55;
  v12 = v56;
  if (v55 != v56)
  {
    do
    {
      *&v47 = *v11;
      sub_22E613DBC(&v52, &v47);
      ++v11;
    }

    while (v11 != v12);
  }

  v13 = *(a1 + 64);
  v50 = 0;
  v51 = v13;
  dpotrf_NEWLAPACK();
  v14 = a2[1] - *a2;
  *&v47 = 0.0;
  v48 = 0;
  v49 = 0;
  v15 = (v14 >> 2);
  v16 = v15 * *(a1 + 64);
  LODWORD(v44) = 0;
  sub_22E611DF8(&v47, v16, &v44, v17);
  v18 = v14 >> 2;
  v19 = *(a1 + 64);
  v20 = *(a1 + 32);
  v33 = *a3;
  cblas_sgemm_NEWLAPACK();
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v21 = v47;
  v22 = v48;
  if (v47 != v48)
  {
    do
    {
      *&v40 = *v21;
      sub_22E613DBC(&v44, &v40);
      ++v21;
    }

    while (v21 != v22);
  }

  v43 = v18;
  dpotrs_NEWLAPACK();
  v23 = 0;
  *&v40 = 0.0;
  v41 = 0;
  v42 = 0;
  do
  {
    *&v37 = *(a4 + 4 * (v23 & 3)) - v58[v23];
    sub_22E613E9C(&v40, &v37);
    ++v23;
  }

  while (v23 != 4);
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v24 = v44;
  v25 = v45;
  while (v24 != v25)
  {
    v26 = *v24;
    *&__p = v26;
    sub_22E613E9C(&v37, &__p);
    ++v24;
  }

  v69 = v68;
  v28 = *a2;
  v27 = a2[1];
  for (__p = &v68; v28 != v27; ++v28)
  {
    sub_22E61574C(&__p, v28);
  }

  cblas_sgemm_NEWLAPACK();
  __p = 0;
  v35 = 0;
  v36 = 0;
  v29 = *(a1 + 64) * v15;
  LODWORD(v71) = 0;
  sub_22E611DF8(&__p, v29, &v71, v30);
  cblas_sgemm_NEWLAPACK();
  v32 = *a3;
  v31 = a3[1];
  v71 = &v65;
  while (v32 != v31)
  {
    sub_22E61574C(&v71, v32++);
  }

  cblas_sgemm_NEWLAPACK();
  sub_22E615654(a5, &v68, &v65);
  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  if (*&v40 != 0.0)
  {
    v41 = v40;
    operator delete(v40);
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  if (*&v47 != 0.0)
  {
    v48 = v47;
    operator delete(v47);
  }

  if (v52)
  {
    v53 = v52;
    operator delete(v52);
  }

  if (v55)
  {
    v56 = v55;
    operator delete(v55);
  }

  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }

  if (v63)
  {
    v64 = v63;
    operator delete(v63);
  }

  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }

  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }
}

void sub_22E613CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a20)
  {
    operator delete(a20);
  }

  if (a24)
  {
    operator delete(a24);
  }

  if (a27)
  {
    operator delete(a27);
  }

  if (a31)
  {
    operator delete(a31);
  }

  if (a34)
  {
    operator delete(a34);
  }

  v37 = *(v35 - 208);
  if (v37)
  {
    *(v35 - 200) = v37;
    operator delete(v37);
  }

  sub_22E613F7C(v35 - 184);
  v38 = *(v35 - 136);
  if (v38)
  {
    *(v35 - 128) = v38;
    operator delete(v38);
  }

  v39 = *(v35 - 112);
  if (v39)
  {
    *(v35 - 104) = v39;
    operator delete(v39);
  }

  _Unwind_Resume(a1);
}

void sub_22E613DBC(const void **a1, void *a2)
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
      sub_22E61047C();
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
      sub_22E612658(a1, v12);
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

void sub_22E613E9C(const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_22E61047C();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_22E610C54(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
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

uint64_t sub_22E613F7C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

void KCFHelper::KalmanFilterXYAH::gating_distance(void *a1@<X8>)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  __p = 0;
  v2 = 0;
  v3 = 0;
  sub_22E615654(a1, &v4, &__p);
  if (__p)
  {
    v2 = __p;
    operator delete(__p);
  }

  if (v4)
  {
    v5 = v4;
    operator delete(v4);
  }
}

void sub_22E614024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
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

double KCFHelper::STrack::STrack(KCFHelper::STrack *this)
{
  *(this + 2) = 0;
  *(this + 12) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = &unk_28431E338;
  *(this + 296) = 0;
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 25) = 0;
  *(this + 224) = 0;
  result = 0.0;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  return result;
}

{
  *(this + 2) = 0;
  *(this + 12) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = &unk_28431E338;
  *(this + 296) = 0;
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 25) = 0;
  *(this + 224) = 0;
  result = 0.0;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  return result;
}

void KCFHelper::STrack::~STrack(KCFHelper::STrack *this)
{
  *this = &unk_28431E338;
  v2 = *(this + 41);
  if (v2)
  {
    *(this + 42) = v2;
    operator delete(v2);
  }

  v3 = *(this + 38);
  if (v3)
  {
    *(this + 39) = v3;
    operator delete(v3);
  }

  if (*(this + 296) == 1)
  {
    sub_22E6120FC(this + 28);
  }

  if (*(this + 223) < 0)
  {
    operator delete(*(this + 25));
  }
}

{
  KCFHelper::STrack::~STrack(this);

  JUMPOUT(0x2318EA430);
}

std::string *KCFHelper::STrack::init(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[2];
  *(a1 + 48) = a2[1];
  *(a1 + 64) = v5;
  *(a1 + 32) = v4;
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[6];
  *(a1 + 112) = a2[5];
  *(a1 + 128) = v8;
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  v9 = a2[7];
  v10 = a2[8];
  v11 = a2[9];
  *(a1 + 189) = *(a2 + 157);
  *(a1 + 160) = v10;
  *(a1 + 176) = v11;
  *(a1 + 144) = v9;
  result = std::string::operator=((a1 + 200), a2 + 7);
  *(a1 + 352) = *(a2 + 12);
  *(a1 + 12) = 0;
  *(a1 + 368) = 0;
  if (*(a1 + 296) == 1)
  {
    result = sub_22E6120FC((a1 + 224));
    *(a1 + 296) = 0;
  }

  return result;
}

void KCFHelper::STrack::activate(KCFHelper::STrack *this, int a2, unsigned int *a3, int a4)
{
  sub_22E611AC8(&v10);
  sub_22E6143E0(this + 224, &v10);
  sub_22E6120FC(&v10);
  *(this + 2) = *a3;
  if ((*(this + 296) & 1) == 0)
  {
    sub_22E61583C();
  }

  *&v8 = vadd_f32(*(this + 352), vmul_f32(*&vextq_s8(*(this + 22), *(this + 22), 8uLL), 0x3F0000003F000000));
  *(&v8 + 2) = COERCE_FLOAT(*(this + 45)) / COERCE_FLOAT(HIDWORD(*(this + 22)));
  HIDWORD(v8) = HIDWORD(*(this + 22));
  v9 = v8;
  KCFHelper::KalmanFilterXYAH::initiate(this + 28, &v9, &v10);
  if ((this + 304) != &v10)
  {
    sub_22E612884(this + 38, v10, v11, (v11 - v10) >> 2);
  }

  if ((this + 328) != &__p)
  {
    sub_22E612884(this + 41, __p, v13, (v13 - __p) >> 2);
  }

  *(this + 92) = 0;
  *(this + 4) = 1;
  if (a2 == 1 || a4)
  {
    *(this + 12) = 1;
  }

  *(this + 5) = a2;
  *(this + 6) = a2;
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }
}

void sub_22E6143BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_22E6120FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_22E6143E0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 72) == 1)
  {
    if (a1 != a2)
    {
      sub_22E612884((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
      sub_22E612884((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 2);
    }

    *(a1 + 56) = *(a2 + 56);
  }

  else
  {
    *a1 = &unk_28431E2B8;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    sub_22E6156D0(a1 + 8, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    sub_22E6156D0(a1 + 32, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 2);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = 1;
  }

  return a1;
}

void sub_22E6144C0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void KCFHelper::STrack::update(KCFHelper::STrack *this, const KCFHelper::STrack *a2, int a3)
{
  if (*(this + 296) == 1)
  {
    *(this + 6) = a3;
    ++*(this + 92);
    v5 = *(a2 + 38);
    if (*(a2 + 39) == v5)
    {
      v7 = *(a2 + 22);
    }

    else
    {
      v6.i32[0] = vmul_lane_f32(v5[1], v5[1], 1).u32[0];
      v6.i32[1] = HIDWORD(*&v5[1]);
      *v7.i8 = vadd_f32(*v5, vmul_f32(v6, 0xBF000000BF000000));
      v7.u64[1] = v6;
    }

    v8 = (this + 304);
    v9 = (this + 328);
    *&v10 = vadd_f32(*v7.i8, vmul_f32(*&vextq_s8(v7, v7, 8uLL), 0x3F0000003F000000));
    *(&v10 + 2) = *&v7.i32[2] / *&v7.i32[3];
    HIDWORD(v10) = v7.i32[3];
    v17 = v10;
    KCFHelper::KalmanFilterXYAH::update(this + 224, this + 38, this + 41, &v17, &v18, *v7.i8);
    if (v8 != &v18)
    {
      sub_22E612884(this + 38, v18, v19, (v19 - v18) >> 2);
    }

    if (v9 != &__p)
    {
      sub_22E612884(this + 41, __p, v21, (v21 - __p) >> 2);
    }

    *(this + 4) = 1;
    *(this + 12) = 1;
    *(this + 15) = *(a2 + 15);
    *(this + 10) = *(a2 + 10);
    v11 = *(a2 + 68);
    v12 = *(a2 + 84);
    v13 = *(a2 + 100);
    *(this + 116) = *(a2 + 116);
    *(this + 100) = v13;
    *(this + 84) = v12;
    *(this + 68) = v11;
    v14 = *(a2 + 132);
    v15 = *(a2 + 148);
    v16 = *(a2 + 164);
    *(this + 180) = *(a2 + 180);
    *(this + 164) = v16;
    *(this + 148) = v15;
    *(this + 132) = v14;
    if (__p)
    {
      v21 = __p;
      operator delete(__p);
    }

    if (v18)
    {
      v19 = v18;
      operator delete(v18);
    }
  }
}

void sub_22E614670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22E613F7C(va);
  _Unwind_Resume(a1);
}

void KCFHelper::STrack::re_activate(KCFHelper::STrack *this, const KCFHelper::STrack *a2, int a3, unsigned int *a4, int a5)
{
  if (*(this + 296) == 1)
  {
    v10 = *(a2 + 38);
    if (*(a2 + 39) == v10)
    {
      v12 = *(a2 + 22);
    }

    else
    {
      v11.i32[0] = vmul_lane_f32(v10[1], v10[1], 1).u32[0];
      v11.i32[1] = HIDWORD(*&v10[1]);
      *v12.i8 = vadd_f32(*v10, vmul_f32(v11, 0xBF000000BF000000));
      v12.u64[1] = v11;
    }

    v13 = (this + 304);
    v14 = (this + 328);
    *&v15 = vadd_f32(*v12.i8, vmul_f32(*&vextq_s8(v12, v12, 8uLL), 0x3F0000003F000000));
    *(&v15 + 2) = *&v12.i32[2] / *&v12.i32[3];
    HIDWORD(v15) = v12.i32[3];
    v22 = v15;
    KCFHelper::KalmanFilterXYAH::update(this + 224, this + 38, this + 41, &v22, &v23, *v12.i8);
    if (v13 != &v23)
    {
      sub_22E612884(this + 38, v23, v24, (v24 - v23) >> 2);
    }

    if (v14 != &__p)
    {
      sub_22E612884(this + 41, __p, v26, (v26 - __p) >> 2);
    }

    *(this + 92) = 0;
    *(this + 4) = 1;
    *(this + 12) = 1;
    *(this + 6) = a3;
    if (a5)
    {
      *(this + 2) = *a4;
    }

    *(this + 15) = *(a2 + 15);
    *(this + 10) = *(a2 + 10);
    v16 = *(a2 + 68);
    v17 = *(a2 + 84);
    v18 = *(a2 + 100);
    *(this + 116) = *(a2 + 116);
    *(this + 100) = v18;
    *(this + 84) = v17;
    *(this + 68) = v16;
    v19 = *(a2 + 132);
    v20 = *(a2 + 148);
    v21 = *(a2 + 164);
    *(this + 180) = *(a2 + 180);
    *(this + 164) = v21;
    *(this + 148) = v20;
    *(this + 132) = v19;
    if (__p)
    {
      v26 = __p;
      operator delete(__p);
    }

    if (v23)
    {
      v24 = v23;
      operator delete(v23);
    }
  }
}

void sub_22E614830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22E613F7C(va);
  _Unwind_Resume(a1);
}

void KCFHelper::multi_predict(uint64_t *a1, uint64_t a2, int16x4_t a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = v4 - *a1;
  if (v4 != *a1)
  {
    v8 = 0;
    v9 = v5 >> 4;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    do
    {
      v10 = v3 + 16 * v8;
      v11 = *(*v10 + 328);
      v12 = *(*v10 + 336);
      v35 = &v39;
      while (v11 != v12)
      {
        sub_22E61574C(&v35, v11++);
      }

      v13 = *(*v10 + 304);
      v14 = *(*v10 + 312);
      v35 = &v42;
      while (v13 != v14)
      {
        sub_22E61574C(&v35, v13++);
      }

      if (*(*v10 + 16) != 1)
      {
        *(v43 - 1) = 0;
      }

      ++v8;
      v3 = *a1;
    }

    while (v8 < (a1[1] - *a1) >> 4);
    KCFHelper::KalmanFilterXYAH::multi_predict(a2, &v42, &v39, v5 >> 4, &v35, a3);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    sub_22E6156D0(&v32, v35, v36, (v36 - v35) >> 2);
    __p = 0;
    v30 = 0;
    v31 = 0;
    sub_22E6156D0(&__p, v37, v38, (v38 - v37) >> 2);
    if (v9 >= 1)
    {
      v15 = 0;
      v16 = ((v33 - v32) >> 2) / v9;
      v17 = (v5 >> 4) & 0x7FFFFFFF;
      do
      {
        v18 = *a1 + 16 * v15;
        v19 = (*v18 + 304);
        *(*v18 + 312) = *v19;
        v20 = v15 * v16;
        v21 = 4 * v15 * v16;
        v22 = ++v15 * v16;
        v45[0] = v19;
        if (v21 != 4 * v15 * v16)
        {
          v23 = v32 + 4 * v22;
          v24 = v32 + v21;
          do
          {
            sub_22E61574C(v45, v24);
            v24 += 4;
          }

          while (v24 != v23);
        }

        v25 = (*v18 + 328);
        *(*v18 + 336) = *v25;
        v26 = 4 * v20 * v16;
        v45[0] = v25;
        if (v26 != 4 * v22 * v16)
        {
          v27 = __p + 4 * v22 * v16;
          v28 = __p + v26;
          do
          {
            sub_22E61574C(v45, v28);
            v28 += 4;
          }

          while (v28 != v27);
        }
      }

      while (v15 != v17);
    }

    if (__p)
    {
      v30 = __p;
      operator delete(__p);
    }

    if (v32)
    {
      v33 = v32;
      operator delete(v32);
    }

    if (v37)
    {
      v38 = v37;
      operator delete(v37);
    }

    if (v35)
    {
      v36 = v35;
      operator delete(v35);
    }

    if (v39)
    {
      v40 = v39;
      operator delete(v39);
    }

    if (v42)
    {
      v43 = v42;
      operator delete(v42);
    }
  }
}

void sub_22E614ABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_22E613F7C(&a15);
  if (a21)
  {
    a22 = a21;
    operator delete(a21);
  }

  if (a24)
  {
    a25 = a24;
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

void KCFHelper::matching::linear_assignment(void *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v5 = a1[1] - *a1;
  if (v5)
  {
    v6 = ((*(*a1 + 8) - **a1) >> 2) - 1431655765 * (v5 >> 3);
    operator new[]();
  }

  if (a2)
  {
    LODWORD(v11) = 0;
    do
    {
      sub_22E60BF14(&v15, &v11);
      v9 = v11 + 1;
      LODWORD(v11) = v11 + 1;
    }

    while (v9 < a2);
  }

  if (a3)
  {
    LODWORD(v11) = 0;
    do
    {
      sub_22E60BF14(&v12, &v11);
      v10 = v11 + 1;
      LODWORD(v11) = v11 + 1;
    }

    while (v10 < a3);
  }

  sub_22E615888(a4, &v18, &v15, &v12);
  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }
}

void sub_22E6150F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  v35 = *(v33 - 152);
  if (v35)
  {
    v32[1] = v35;
    operator delete(v35);
  }

  v36 = v32[3];
  if (v36)
  {
    v32[4] = v36;
    operator delete(v36);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E6151AC(void *a1, unint64_t a2, int *a3)
{
  v3 = (a1[1] - *a1) >> 2;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    sub_22E615948(a1, a2 - v3, a3);
  }
}

float KCFHelper::matching::bbox_ious(int8x16_t *a1, int8x16_t *a2, float a3)
{
  v3 = vextq_s8(*a2, *a2, 8uLL).u64[0];
  v4 = vextq_s8(*a1, *a1, 8uLL).u64[0];
  v5 = vsub_f32(vbsl_s8(vcgt_f32(v4, v3), v3, v4), vbsl_s8(vcgt_f32(*a2->i8, *a1->i8), *a2->i8, *a1->i8));
  v6 = vbic_s8(v5, vcltz_f32(v5));
  v7 = vsub_f32(v3, *a2->i8);
  v8 = vdup_lane_s32(v6, 0);
  v8.f32[0] = COERCE_FLOAT(a1->i64[1]) - COERCE_FLOAT(*a1);
  v6.f32[0] = COERCE_FLOAT(HIDWORD(*a1)) - COERCE_FLOAT(HIDWORD(a1->i64[0]));
  v9 = vmul_f32(v8, v6);
  return v9.f32[1] / ((vadd_f32(v9, vmul_lane_f32(v7, v7, 1)).f32[0] - v9.f32[1]) + a3);
}

void KCFHelper::matching::iou_distance(int8x16_t ***a1@<X0>, int8x16_t ***a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = *a1;
  v3 = a1[1];
  if (v3 != *a1 && a2[1] != *a2)
  {
    do
    {
      __p = 0;
      v25 = 0;
      v26 = 0;
      v7 = (*v4)[19].i64[0];
      if ((*v4)[19].i64[1] == v7)
      {
        v22 = (*v4)[22];
      }

      else
      {
        v8.i32[0] = vmul_lane_f32(v7[1], v7[1], 1).u32[0];
        v8.i32[1] = HIDWORD(*&v7[1]);
        *v9.i8 = vadd_f32(*v7, vmul_f32(v8, 0xBF000000BF000000));
        v9.u64[1] = v8;
        v22 = v9;
      }

      v10 = *a2;
      v11 = a2[1];
      if (*a2 != v11)
      {
        v21 = vadd_f32(*&vextq_s8(v22, v22, 8uLL), *v22.i8);
        do
        {
          v12 = (*v10)[19].i64[0];
          if ((*v10)[19].i64[1] == v12)
          {
            v14 = (*v10)[22];
          }

          else
          {
            v13.i32[0] = vmul_lane_f32(v12[1], v12[1], 1).u32[0];
            v13.i32[1] = HIDWORD(*&v12[1]);
            *v14.i8 = vadd_f32(*v12, vmul_f32(v13, 0xBF000000BF000000));
            v14.u64[1] = v13;
          }

          v15 = vadd_f32(*&vextq_s8(v14, v14, 8uLL), *v14.i8);
          v16 = vsub_f32(vbsl_s8(vcgt_f32(v21, v15), v15, v21), vbsl_s8(vcgt_f32(*v14.i8, *v22.i8), *v14.i8, *v22.i8));
          v17 = vbic_s8(v16, vcltz_f32(v16));
          *v14.i32 = v15.f32[0] - *v14.i32;
          v18 = v15.f32[1] - *&v14.i32[1];
          v19 = vdup_lane_s32(v17, 0);
          v19.i32[0] = v14.i32[0];
          v17.f32[0] = v18;
          v20 = vmul_f32(v19, v17);
          v23 = 1.0 - (v20.f32[1] / (((((v21.f32[0] - *v22.i32) * (v21.f32[1] - *&v22.i32[1])) + v20.f32[0]) - v20.f32[1]) + 0.0000001));
          sub_22E613E9C(&__p, &v23);
          v10 += 2;
        }

        while (v10 != v11);
      }

      sub_22E615448(a3, &__p);
      if (__p)
      {
        v25 = __p;
        operator delete(__p);
      }

      v4 += 2;
    }

    while (v4 != v3);
  }
}

void sub_22E61541C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  sub_22E612474(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_22E615448(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_22E615BE4(a1, a2);
  }

  else
  {
    sub_22E615B90(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void KCFHelper::matching::fuse_score(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = *a1;
  if (a1[1] != *a1)
  {
    v7 = 0;
    do
    {
      __p = 0;
      v14 = 0;
      v15 = 0;
      v8 = (v4 + 24 * v7);
      v9 = *v8;
      if (v8[1] != *v8)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          v12 = (((1.0 - *(v9 + 4 * v11)) * *(*(*a2 + v10) + 60)) / -1000.0) + 1.0;
          sub_22E613E9C(&__p, &v12);
          ++v11;
          v9 = *v8;
          v10 += 16;
        }

        while (v11 < (v8[1] - *v8) >> 2);
      }

      sub_22E615448(a3, &__p);
      if (__p)
      {
        v14 = __p;
        operator delete(__p);
      }

      ++v7;
      v4 = *a1;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) > v7);
  }
}

void sub_22E6155B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  sub_22E612474(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_22E6155E0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_22E61271C(result, a4);
  }

  return result;
}

void sub_22E615638(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_22E615654(void *a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_22E6156D0(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_22E6156D0((a1 + 3), *a3, a3[1], (a3[1] - *a3) >> 2);
  return a1;
}

void sub_22E6156B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_22E6156D0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_22E61271C(result, a4);
  }

  return result;
}

void sub_22E615730(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_22E61574C(uint64_t *a1, _DWORD *a2)
{
  v4 = *a1;
  v6 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  if (v6 >= v5)
  {
    v8 = *v4;
    v9 = v6 - *v4;
    v10 = (v9 >> 2) + 1;
    if (v10 >> 62)
    {
      sub_22E61047C();
    }

    v11 = v5 - v8;
    if (v11 >> 1 > v10)
    {
      v10 = v11 >> 1;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFFCLL;
    v13 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      sub_22E610C54(*a1, v13);
    }

    v14 = (4 * (v9 >> 2));
    *v14 = *a2;
    v7 = v14 + 1;
    memcpy(0, v8, v9);
    v15 = *v4;
    *v4 = 0;
    *(v4 + 8) = v7;
    *(v4 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v6 = *a2;
    v7 = v6 + 1;
  }

  *(v4 + 8) = v7;
  return a1;
}

void sub_22E61583C()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
  __cxa_throw(exception, MEMORY[0x277D82770], MEMORY[0x277D82618]);
}

void *sub_22E615888(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_22E6125A0(a1, *a2, a2[1], (a2[1] - *a2) >> 3);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_22E6126A0((a1 + 3), *a3, a3[1], (a3[1] - *a3) >> 2);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  sub_22E6126A0((a1 + 6), *a4, a4[1], (a4[1] - *a4) >> 2);
  return a1;
}

void sub_22E615914(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E615948(uint64_t a1, unint64_t a2, int *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 2)
  {
    if (a2)
    {
      v12 = 0;
      v13 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v14 = v13 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3);
      v15 = vdupq_n_s64(v13);
      v16 = v6 + 4 * a2;
      v17 = *a3;
      v18 = v14 + 4;
      v19 = (v6 + 8);
      do
      {
        v20 = vdupq_n_s64(v12);
        v21 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_22E661C90)));
        if (vuzp1_s16(v21, *v15.i8).u8[0])
        {
          *(v19 - 2) = v17;
        }

        if (vuzp1_s16(v21, *&v15).i8[2])
        {
          *(v19 - 1) = v17;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_22E661C80)))).i32[1])
        {
          *v19 = v17;
          v19[1] = v17;
        }

        v12 += 4;
        v19 += 4;
      }

      while (v18 != v12);
    }

    else
    {
      v16 = *(a1 + 8);
    }

    *(a1 + 8) = v16;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      sub_22E61047C();
    }

    v9 = v7 >> 2;
    v10 = v5 - *a1;
    if (v10 >> 1 > v8)
    {
      v8 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      sub_22E610C54(a1, v11);
    }

    v22 = 0;
    v23 = 4 * v9;
    v24 = 4 * v9 + 4 * a2;
    v25 = *a3;
    v26 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v27 = vdupq_n_s64(v26);
    v28 = v26 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v29 = (v23 + 8);
    do
    {
      v30 = vdupq_n_s64(v22);
      v31 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_22E661C90)));
      if (vuzp1_s16(v31, *v27.i8).u8[0])
      {
        *(v29 - 2) = v25;
      }

      if (vuzp1_s16(v31, *&v27).i8[2])
      {
        *(v29 - 1) = v25;
      }

      if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_22E661C80)))).i32[1])
      {
        *v29 = v25;
        v29[1] = v25;
      }

      v22 += 4;
      v29 += 4;
    }

    while (v28 != v22);
    v32 = *(a1 + 8) - *a1;
    v33 = v23 - v32;
    memcpy((v23 - v32), *a1, v32);
    v34 = *a1;
    *a1 = v33;
    *(a1 + 8) = v24;
    *(a1 + 16) = 0;
    if (v34)
    {

      operator delete(v34);
    }
  }
}

uint64_t sub_22E615B90(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = sub_22E6156D0(v3, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t sub_22E615BE4(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_22E61047C();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_22E615D14(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_22E6156D0(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 2);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_22E615D6C(&v14);
  return v8;
}

void sub_22E615D00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22E615D6C(va);
  _Unwind_Resume(a1);
}

void sub_22E615D14(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_22E5D9B24();
}

uint64_t sub_22E615D6C(uint64_t a1)
{
  sub_22E615DA4(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_22E615DA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

uint64_t fastBPE::bytes_to_unicode@<X0>(void *a1@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  memcpy(__dst, &unk_22E661E70, sizeof(__dst));
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  result = sub_22E61E33C(a1, __dst, &v6, 0x100uLL);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void fastBPE::imagenet_templates(void *a1@<X8>)
{
  v85 = *MEMORY[0x277D85DE8];
  sub_22E5D8EB4(v5, "a bad photo of a _");
  sub_22E5D8EB4(v6, "a photo of many _");
  sub_22E5D8EB4(v7, "a sculpture of a _");
  sub_22E5D8EB4(v8, "a photo of the hard to see _");
  sub_22E5D8EB4(v9, "a low resolution photo of the _");
  sub_22E5D8EB4(v10, "a rendering of a _");
  sub_22E5D8EB4(v11, "graffiti of a _");
  sub_22E5D8EB4(v12, "a bad photo of the _");
  sub_22E5D8EB4(v13, "a cropped photo of the _");
  sub_22E5D8EB4(v14, "a tattoo of a _");
  sub_22E5D8EB4(v15, "the embroidered _");
  sub_22E5D8EB4(v16, "a photo of a hard to see _");
  sub_22E5D8EB4(v17, "a bright photo of a _");
  sub_22E5D8EB4(v18, "a photo of a clean _");
  sub_22E5D8EB4(v19, "a photo of a dirty _");
  sub_22E5D8EB4(v20, "a dark photo of the _");
  sub_22E5D8EB4(v21, "a drawing of a _");
  sub_22E5D8EB4(v22, "a photo of my _");
  sub_22E5D8EB4(v23, "the plastic _");
  sub_22E5D8EB4(v24, "a photo of the cool _");
  sub_22E5D8EB4(v25, "a close - up photo of a _");
  sub_22E5D8EB4(v26, "a black and white photo of the _");
  sub_22E5D8EB4(v27, "a painting of the _");
  sub_22E5D8EB4(v28, "a painting of a _");
  sub_22E5D8EB4(v29, "a pixelated photo of the _");
  sub_22E5D8EB4(v30, "a sculpture of the _");
  sub_22E5D8EB4(v31, "a bright photo of the _");
  sub_22E5D8EB4(v32, "a cropped photo of a _");
  sub_22E5D8EB4(v33, "a plastic _");
  sub_22E5D8EB4(v34, "a photo of the dirty _");
  sub_22E5D8EB4(v35, "a jpeg corrupted photo of a _");
  sub_22E5D8EB4(v36, "a blurry photo of the _");
  sub_22E5D8EB4(v37, "a photo of the _");
  sub_22E5D8EB4(v38, "a good photo of the _");
  sub_22E5D8EB4(v39, "a rendering of the _");
  sub_22E5D8EB4(v40, "a _ in a video game");
  sub_22E5D8EB4(v41, "a photo of one _");
  sub_22E5D8EB4(v42, "a doodle of a _");
  sub_22E5D8EB4(v43, "a close - up photo of the _");
  sub_22E5D8EB4(v44, "a photo of a _");
  sub_22E5D8EB4(v45, "the origami _");
  sub_22E5D8EB4(v46, "the _ in a video game");
  sub_22E5D8EB4(v47, "a sketch of a _");
  sub_22E5D8EB4(v48, "a doodle of the _");
  sub_22E5D8EB4(v49, "a origami _");
  sub_22E5D8EB4(v50, "a low resolution photo of a _");
  sub_22E5D8EB4(v51, "the toy _");
  sub_22E5D8EB4(v52, "a rendition of the _");
  sub_22E5D8EB4(v53, "a photo of the clean _");
  sub_22E5D8EB4(v54, "a photo of a large _");
  sub_22E5D8EB4(v55, "a rendition of a _");
  sub_22E5D8EB4(v56, "a photo of a nice _");
  sub_22E5D8EB4(v57, "a photo of a weird _");
  sub_22E5D8EB4(v58, "a blurry photo of a _");
  sub_22E5D8EB4(v59, "a cartoon _");
  sub_22E5D8EB4(v60, "art of a _");
  sub_22E5D8EB4(v61, "a sketch of the _");
  sub_22E5D8EB4(v62, "a embroidered _");
  sub_22E5D8EB4(v63, "a pixelated photo of a _");
  sub_22E5D8EB4(v64, "itap of the _");
  sub_22E5D8EB4(v65, "a jpeg corrupted photo of the _");
  sub_22E5D8EB4(v66, "a good photo of a _");
  sub_22E5D8EB4(v67, "a plushie _");
  sub_22E5D8EB4(v68, "a photo of the nice _");
  sub_22E5D8EB4(v69, "a photo of the small _");
  sub_22E5D8EB4(v70, "a photo of the weird _");
  sub_22E5D8EB4(v71, "the cartoon _");
  sub_22E5D8EB4(v72, "art of the _");
  sub_22E5D8EB4(v73, "a drawing of the _");
  sub_22E5D8EB4(v74, "a photo of the large _");
  sub_22E5D8EB4(v75, "a black and white photo of a _");
  sub_22E5D8EB4(v76, "the plushie _");
  sub_22E5D8EB4(v77, "a dark photo of a _");
  sub_22E5D8EB4(v78, "itap of a _");
  sub_22E5D8EB4(v79, "graffiti of the _");
  sub_22E5D8EB4(v80, "a toy _");
  sub_22E5D8EB4(v81, "itap of my _");
  sub_22E5D8EB4(v82, "a photo of a cool _");
  sub_22E5D8EB4(v83, "a photo of a small _");
  sub_22E5D8EB4(v84, "a tattoo of the _");
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_22E61E3B0(a1, v5, &v85, 0x50uLL);
  v3 = 1920;
  do
  {
    if (v5[v3 - 1] < 0)
    {
      operator delete(*&v5[v3 - 24]);
    }

    v3 -= 24;
  }

  while (v3);
  v4 = *MEMORY[0x277D85DE8];
}

void sub_22E61660C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = (v10 + 1919);
  v13 = -1920;
  v14 = v12;
  while (1)
  {
    v15 = *v14;
    v14 -= 24;
    if (v15 < 0)
    {
      operator delete(*(v12 - 23));
    }

    v12 = v14;
    v13 += 24;
    if (!v13)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t fastBPE::utf8_encode(fastBPE *this, char *a2)
{
  if (a2 > 0x7F)
  {
    if (a2 > 0x7FF)
    {
      if (a2 >> 16)
      {
        if (a2 >> 16 > 0x10)
        {
          v3 = 0;
          *this = -16401;
          *(this + 2) = -67;
          v2 = 3;
        }

        else
        {
          *this = (a2 >> 18) | 0xF0;
          *(this + 1) = (a2 >> 12) & 0x3F | 0x80;
          *(this + 2) = (a2 >> 6) & 0x3F | 0x80;
          *(this + 3) = a2 & 0x3F | 0x80;
          v2 = 4;
          v3 = 4;
        }
      }

      else
      {
        *this = (a2 >> 12) | 0xE0;
        *(this + 1) = (a2 >> 6) & 0x3F | 0x80;
        *(this + 2) = a2 & 0x3F | 0x80;
        v2 = 3;
        v3 = 3;
      }
    }

    else
    {
      *this = (a2 >> 6) | 0xC0;
      *(this + 1) = a2 & 0x3F | 0x80;
      v2 = 2;
      v3 = 2;
    }
  }

  else
  {
    *this = a2;
    v2 = 1;
    v3 = 1;
  }

  *(this + v2) = 0;
  return v3;
}

uint64_t fastBPE::safeOpen(fastBPE *this, const char *a2, uint64_t a3)
{
  result = open(this, a2, a3);
  if ((result & 0x80000000) != 0)
  {
    fprintf(*MEMORY[0x277D85DF8], "Cannot open text file %s\n", this);
    exit(1);
  }

  return result;
}

void fastBPE::tokenize_str(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return;
  }

  do
  {
    v4 = v2 + 2;
    memset(&v16, 0, sizeof(v16));
    v17 = v2 + 2;
    v5 = sub_22E620744(a2, v2 + 2);
    sub_22E61E6C0((v5 + 5));
    *(v5 + 5) = v16;
    memset(&v16, 0, sizeof(v16));
    v15.__r_.__value_.__r.__words[0] = &v16;
    sub_22E61E61C(&v15);
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = v2 + 2;
      if (*(v2 + 39) < 0)
      {
        v8 = *v4;
      }

      if (!*(v8 + v6))
      {
        break;
      }

      v9 = v2 + 2;
      if (*(v2 + 39) < 0)
      {
        v9 = *v4;
        if (!v6)
        {
          goto LABEL_14;
        }
      }

      else if (!v6)
      {
        goto LABEL_14;
      }

      if ((*(v9 + v6) & 0xC0) != 0x80)
      {
        std::string::basic_string(&v16, (v2 + 2), v7, (v6 - v7), &v15);
        v15.__r_.__value_.__r.__words[0] = (v2 + 2);
        v10 = sub_22E620744(a2, v2 + 2);
        sub_22E6169F0(v10 + 5, &v16);
        if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v16.__r_.__value_.__l.__data_);
        }

        v7 = v6;
      }

LABEL_14:
      ++v6;
    }

    std::string::basic_string(&v15, (v2 + 2), v7, 0xFFFFFFFFFFFFFFFFLL, &v17);
    v11 = strlen(fastBPE::kEndWord);
    v12 = std::string::append(&v15, fastBPE::kEndWord, v11);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v16.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v16.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    v15.__r_.__value_.__r.__words[0] = (v2 + 2);
    v14 = sub_22E620744(a2, v2 + 2);
    sub_22E6169F0(v14 + 5, &v16);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    v2 = *v2;
  }

  while (v2);
}

void sub_22E6169A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_22E6169F0(void *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_22E61E760(a1, a2);
  }

  else
  {
    sub_22E61E700(a1, a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

void fastBPE::split(uint64_t a1, std::string *this, std::string::value_type __c)
{
  v6 = std::string::find(this, __c, 0);
  if (v6 == -1)
  {
    v8 = 0;
LABEL_10:
    size = HIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) != 0)
    {
      size = this->__r_.__value_.__l.__size_;
    }

    if (v8 < size)
    {
      std::string::basic_string(&__p, this, v8, 0xFFFFFFFFFFFFFFFFLL, &v11);
      sub_22E616B68(a1, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    return;
  }

  v7 = v6;
  v8 = 0;
  do
  {
    if (v7 != v8)
    {
      std::string::basic_string(&__p, this, v8, v7 - v8, &v11);
      sub_22E616B68(a1, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v8 = v7 + 1;
    v7 = std::string::find(this, __c, v7 + 1);
  }

  while (v7 != -1);
  if (v8 != -1)
  {
    goto LABEL_10;
  }
}

void sub_22E616B48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_22E616B68(uint64_t result, __int128 *a2)
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
      sub_22E61047C();
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
      sub_22E61E484(result, v11);
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
    result = sub_22E61E8A0(v18);
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

uint64_t fastBPE::readCodes(const char *a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  sub_22E61721C(v29);
  v6 = *MEMORY[0x277D85DF8];
  if ((v30[*(v29[0] - 24) + 16] & 5) != 0)
  {
    fprintf(v6, "Cannot open codes file %s\n", a1);
    exit(1);
  }

  fprintf(v6, "Loading codes from %s ...\n", a1);
  for (i = 0; i != 256; ++i)
  {
    memcpy(__dst, &unk_22E661E70, sizeof(__dst));
    memset(&__p, 0, sizeof(__p));
    sub_22E61E33C(&__p, __dst, &v33, 0x100uLL);
    v8 = __p.__r_.__value_.__r.__words[0];
    fastBPE::utf8_encode(__s, *(__p.__r_.__value_.__r.__words[0] + 4 * i));
    __p.__r_.__value_.__l.__size_ = v8;
    operator delete(v8);
    sub_22E5D8EB4(__dst, __s);
    __p.__r_.__value_.__r.__words[0] = __dst;
    *(sub_22E620B00(a3, &__dst[0].__locale_) + 10) = i;
    v9 = fastBPE::kEndWord;
    if (SHIBYTE(__dst[2].__locale_) >= 0)
    {
      locale_high = HIBYTE(__dst[2].__locale_);
    }

    else
    {
      locale_high = __dst[1].__locale_;
    }

    v11 = strlen(fastBPE::kEndWord);
    sub_22E61E934(&__p, locale_high + v11);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (locale_high)
    {
      if (SHIBYTE(__dst[2].__locale_) >= 0)
      {
        locale = __dst;
      }

      else
      {
        locale = __dst[0].__locale_;
      }

      memmove(p_p, locale, locale_high);
    }

    v14 = p_p + locale_high;
    if (v11)
    {
      memmove(v14, v9, v11);
    }

    v14[v11] = 0;
    v25[0] = &__p;
    *(sub_22E620B00(a3, &__p.__r_.__value_.__l.__data_) + 10) = i + 256;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst[2].__locale_) < 0)
    {
      operator delete(__dst[0].__locale_);
    }
  }

  memset(&__p, 0, sizeof(__p));
  v15 = MEMORY[0x277D82680];
  while (1)
  {
    std::ios_base::getloc((v29 + *(v29[0] - 24)));
    v16 = std::locale::use_facet(__dst, v15);
    v17 = (v16->__vftable[2].~facet_0)(v16, 10);
    std::locale::~locale(__dst);
    v18 = sub_22E620E38(v29, &__p, v17);
    if ((*(v18 + *(*v18 - 24) + 32) & 5) != 0)
    {
      break;
    }

    memset(v25, 0, sizeof(v25));
    fastBPE::split(v25, &__p, 32);
    sub_22E61E9C0(__dst, v25[0], (v25[0] + 3));
    sub_22E6173E0(v25[0], v25[0] + 3, v23);
    v19 = a2[3];
    v28 = v23;
    *(sub_22E620B00(a3, v23) + 10) = v19 + 512;
    v20 = a2[3];
    v28 = __dst;
    *(sub_22E62102C(a2, __dst) + 16) = v20;
    if (v24 < 0)
    {
      operator delete(v23[0]);
    }

    if (SHIBYTE(__dst[5].__locale_) < 0)
    {
      operator delete(__dst[3].__locale_);
    }

    if (SHIBYTE(__dst[2].__locale_) < 0)
    {
      operator delete(__dst[0].__locale_);
    }

    __dst[0].__locale_ = v25;
    sub_22E61E61C(__dst);
  }

  fprintf(*MEMORY[0x277D85DF8], "Read %lu codes from the codes file.\n", a2[3]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v29[0] = *MEMORY[0x277D82808];
  *(v29 + *(v29[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x2318EA330](v30);
  std::istream::~istream();
  result = MEMORY[0x2318EA3F0](&v31);
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22E617148(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_22E61EA58(va, MEMORY[0x277D82808]);
  MEMORY[0x2318EA3F0](&STACK[0x208]);
  _Unwind_Resume(a1);
}

uint64_t *sub_22E61721C(uint64_t *a1)
{
  a1[59] = 0;
  v2 = MEMORY[0x277D82858] + 64;
  a1[53] = MEMORY[0x277D82858] + 64;
  v3 = *(MEMORY[0x277D82808] + 16);
  v4 = *(MEMORY[0x277D82808] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  a1[1] = 0;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 2);
  v6 = MEMORY[0x277D82858] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[53] = v2;
  MEMORY[0x2318EA320](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_22E6173A8(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x2318EA3F0](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_22E6173E0@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = sub_22E61E934(a3, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

uint64_t sub_22E6174AC(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void fastBPE::process_bpe(std::string **a1@<X0>, void *a2@<X1>, void *a3@<X2>, const void **a4@<X8>)
{
  v4 = a4;
  v49 = 0uLL;
  v50 = 0;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  v6 = *a1;
  v5 = a1[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3) >= 2)
  {
    do
    {
      if (v5 - v6 == 24)
      {
        break;
      }

      v9 = 0;
      v10 = 0;
      v11 = -1;
      v12 = 1;
      do
      {
        sub_22E61E9C0(__dst, &v6[v12 - 1], &v6[v12]);
        v13 = sub_22E62150C(a2, __dst);
        if (v13)
        {
          v14 = *(v13 + 16);
          if ((v14 & 0x80000000) == 0 && (v11 == -1 || *(v10 + 16) > v14))
          {
            v10 = v13;
            v11 = v9;
          }
        }

        if (v48 < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v46) < 0)
        {
          operator delete(__dst[0]);
        }

        ++v9;
        v6 = *a1;
        v5 = a1[1];
        ++v12;
      }

      while (v9 < -1 - 0x5555555555555555 * ((v5 - *a1) >> 3));
      if (v11 == -1)
      {
        break;
      }

      __dst[0] = 0;
      __dst[1] = 0;
      v46 = 0;
      sub_22E61E6C0(&v49);
      v49 = *__dst;
      v50 = v46;
      __dst[1] = 0;
      v46 = 0;
      __dst[0] = 0;
      v51 = __dst;
      sub_22E61E61C(&v51);
      v6 = *a1;
      v5 = a1[1];
      if (v5 != *a1)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
        v43 = (v10 + 5);
        v44 = (v10 + 2);
        v18 = 47;
        do
        {
          ++v15;
          if ((v16 & 1) != 0 || v15 >= v17)
          {
            goto LABEL_45;
          }

          v19 = v6 + v18;
          v20 = v6[-1].__r_.__value_.__s.__data_[v18];
          if (v20 >= 0)
          {
            v21 = v6[-1].__r_.__value_.__s.__data_[v18];
          }

          else
          {
            v21 = *(&v6[-1] + v18 - 15);
          }

          v22 = *(v10 + 39);
          v23 = v22;
          if (v22 < 0)
          {
            v22 = v10[3];
          }

          if (v21 != v22)
          {
            goto LABEL_45;
          }

          v24 = (v19 - 47);
          v25 = *(v19 - 47);
          v26 = v20 >= 0 ? v24 : v25;
          v27 = *v44;
          v28 = v23 >= 0 ? v10 + 2 : *v44;
          if (memcmp(v26, v28, v21))
          {
            goto LABEL_45;
          }

          v29 = v6 + v18;
          v30 = v6->__r_.__value_.__s.__data_[v18];
          if (v30 >= 0)
          {
            v31 = v6->__r_.__value_.__s.__data_[v18];
          }

          else
          {
            v31 = *(&v6->__r_.__value_.__r.__words[-1] + v18 - 7);
          }

          v32 = *(v10 + 63);
          v33 = v32;
          if (v32 < 0)
          {
            v32 = v10[6];
          }

          if (v31 == v32 && ((v34 = (v29 - 23), v35 = *(v29 - 23), v30 >= 0) ? (v36 = v34) : (v36 = v35), (v37 = *v43, v33 >= 0) ? (v38 = v10 + 5) : (v38 = *v43), !memcmp(v36, v38, v31)))
          {
            sub_22E6173E0(v24, v34, __dst);
            sub_22E616B68(&v49, __dst);
            if (SHIBYTE(v46) < 0)
            {
              operator delete(__dst[0]);
            }

            v16 = 1;
          }

          else
          {
LABEL_45:
            if ((v16 & 1) == 0)
            {
              sub_22E6169F0(&v49, (&v6[-1] + v18 - 23));
            }

            v16 = 0;
          }

          v6 = *a1;
          v5 = a1[1];
          v17 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
          v18 += 24;
        }

        while (v15 < v17);
        v4 = a4;
      }

      if (&v49 != a1)
      {
        sub_22E61EB20(a1, v49, *(&v49 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v49 + 1) - v49) >> 3));
        v6 = *a1;
        v5 = a1[1];
      }
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 3) > 1);
  }

  for (; v6 != v5; ++v6)
  {
    if (SHIBYTE(v6->__r_.__value_.__r.__words[2]) < 0)
    {
      sub_22E5DAE38(__dst, v6->__r_.__value_.__l.__data_, v6->__r_.__value_.__l.__size_);
    }

    else
    {
      v39 = *&v6->__r_.__value_.__l.__data_;
      v46 = v6->__r_.__value_.__r.__words[2];
      *__dst = v39;
    }

    v51 = __dst;
    v40 = sub_22E620B00(a3, __dst);
    sub_22E60BF14(v4, v40 + 10);
    if (SHIBYTE(v46) < 0)
    {
      operator delete(__dst[0]);
    }
  }

  __dst[0] = &v49;
  sub_22E61E61C(__dst);
}

void sub_22E6178B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  v23 = *a10;
  if (*a10)
  {
    *(a10 + 8) = v23;
    operator delete(v23);
  }

  __p = &a22;
  sub_22E61E61C(&__p);
  _Unwind_Resume(a1);
}

uint64_t fastBPE::applybpe_stream(fastBPE *this, const char *a2)
{
  sub_22E5D8EB4(__p, this);
  sub_22E61ED80(v17, __p);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = 0;
  __p[1] = 0;
  v2 = MEMORY[0x277D82668];
  v16 = 0;
  v3 = MEMORY[0x277D82680];
  v4 = MEMORY[0x277D82678];
  while (1)
  {
    std::ios_base::getloc((v2 + *(*v2 - 24)));
    v5 = std::locale::use_facet(&v13, v3);
    v6 = (v5->__vftable[2].~facet_0)(v5, 10);
    std::locale::~locale(&v13);
    v7 = sub_22E620E38(v2, __p, v6);
    if ((*(v7 + *(*v7 - 24) + 32) & 5) != 0)
    {
      break;
    }

    sub_22E617BB0(v17, __p, &v13);
    locale = v13.__locale_;
    v9 = v14;
    if (v13.__locale_ != v14)
    {
      do
      {
        v10 = MEMORY[0x2318EA380](v4, *locale);
        std::ios_base::getloc((v10 + *(*v10 - 24)));
        v11 = std::locale::use_facet(&v20, v3);
        (v11->__vftable[2].~facet_0)(v11, 10);
        std::locale::~locale(&v20);
        std::ostream::put();
        std::ostream::flush();
        locale = (locale + 4);
      }

      while (locale != v9);
      locale = v13.__locale_;
    }

    if (locale)
    {
      v14 = locale;
      operator delete(locale);
    }
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  sub_22E5DAEDC(&v19);
  sub_22E61EE1C(&v18);
  return sub_22E61EEF4(v17);
}

void sub_22E617B38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E617BB0(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  LODWORD(v37.__r_.__value_.__l.__data_) = 49406;
  sub_22E60BF14(a3, &v37);
  memset(&v37, 0, sizeof(v37));
  if (a2[23] >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    v6 = *(a2 + 1);
  }

  std::string::resize(&v37, v6, 0);
  v7 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v8 = a2[23];
  }

  else
  {
    a2 = *a2;
    v8 = v7;
  }

  if (v8)
  {
    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v37;
    }

    else
    {
      v9 = v37.__r_.__value_.__r.__words[0];
    }

    do
    {
      v9->__r_.__value_.__s.__data_[0] = __tolower(*a2);
      v9 = (v9 + 1);
      ++a2;
      --v8;
    }

    while (v8);
  }

  v34 = 0;
  v35 = 0;
  v36 = 0;
  fastBPE::split(&v34, &v37, 32);
  v10 = v34;
  if (v35 != v34)
  {
    v11 = 0;
    do
    {
      v12 = (v10 + 24 * v11);
      if (*(v12 + 23) < 0)
      {
        sub_22E5DAE38(&__str, *v12, *(v12 + 1));
      }

      else
      {
        v13 = *v12;
        __str.__r_.__value_.__r.__words[2] = *(v12 + 2);
        *&__str.__r_.__value_.__l.__data_ = v13;
      }

      v14 = sub_22E5DA9D8(a1, &__str.__r_.__value_.__l.__data_);
      if (v14)
      {
        v15 = v14[5];
        v16 = v14[6];
        while (v15 != v16)
        {
          sub_22E60BF14(a3, v15++);
        }
      }

      else
      {
        memset(v32, 0, sizeof(v32));
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_str = &__str;
        }

        else
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        LOBYTE(v18) = p_str->__r_.__value_.__s.__data_[0];
        if (p_str->__r_.__value_.__s.__data_[0])
        {
          v19 = 0;
          v20 = 0;
          do
          {
            if (v20 && (v18 & 0xC0) != 0x80)
            {
              std::string::basic_string(&v31, &__str, v19, (v20 - v19), &v30);
              sub_22E6169F0(v32, &v31);
              if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v31.__r_.__value_.__l.__data_);
              }

              v19 = v20;
            }

            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v21 = &__str;
            }

            else
            {
              v21 = __str.__r_.__value_.__r.__words[0];
            }

            v22 = v21 + v20++;
            v18 = v22[1];
          }

          while (v18);
          v23 = v19;
        }

        else
        {
          v23 = 0;
        }

        std::string::basic_string(&v30, &__str, v23, 0xFFFFFFFFFFFFFFFFLL, &v38);
        v24 = strlen(fastBPE::kEndWord);
        v25 = std::string::append(&v30, fastBPE::kEndWord, v24);
        v26 = *&v25->__r_.__value_.__l.__data_;
        v31.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
        *&v31.__r_.__value_.__l.__data_ = v26;
        v25->__r_.__value_.__l.__size_ = 0;
        v25->__r_.__value_.__r.__words[2] = 0;
        v25->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v30.__r_.__value_.__l.__data_);
        }

        sub_22E6169F0(v32, &v31);
        fastBPE::process_bpe(v32, a1 + 5, a1 + 10, &v30.__r_.__value_.__l.__data_);
        size = v30.__r_.__value_.__l.__size_;
        for (i = v30.__r_.__value_.__r.__words[0]; i != size; ++i)
        {
          sub_22E60BF14(a3, i);
        }

        v38 = &__str;
        v29 = (sub_22E61EFCC(a1, &__str.__r_.__value_.__l.__data_) + 5);
        if (v29 != &v30)
        {
          sub_22E612884(v29, v30.__r_.__value_.__l.__data_, v30.__r_.__value_.__l.__size_, (v30.__r_.__value_.__l.__size_ - v30.__r_.__value_.__r.__words[0]) >> 2);
        }

        if (v30.__r_.__value_.__r.__words[0])
        {
          v30.__r_.__value_.__l.__size_ = v30.__r_.__value_.__r.__words[0];
          operator delete(v30.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v31.__r_.__value_.__l.__data_);
        }

        v31.__r_.__value_.__r.__words[0] = v32;
        sub_22E61E61C(&v31);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      ++v11;
      v10 = v34;
    }

    while (v11 < 0xAAAAAAAAAAAAAAABLL * ((v35 - v34) >> 3));
  }

  LODWORD(__str.__r_.__value_.__l.__data_) = 49407;
  sub_22E60BF14(a3, &__str);
  __str.__r_.__value_.__r.__words[0] = &v34;
  sub_22E61E61C(&__str);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }
}

void sub_22E617F30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, char *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  a25 = &a31;
  sub_22E61E61C(&a25);
  if (a39 < 0)
  {
    operator delete(__p);
  }

  v41 = *v39;
  if (*v39)
  {
    *(v39 + 8) = v41;
    operator delete(v41);
  }

  _Unwind_Resume(a1);
}

void performNMS(uint64_t *a1, void **a2, __n128 a3)
{
  v3 = a3.n128_f32[0];
  v6 = *a1;
  v7 = a1[1];
  v8 = 126 - 2 * __clz((v7 - v6) >> 5);
  if (v7 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  sub_22E61F384(v6, v7, v9, 1, a3);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  __p = 0;
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v10 = *a1;
  v11 = a1[1];
  while (v10 != v11)
  {
    v12 = v19;
    v13 = v20;
    while (v12 != v13)
    {
      if (acDetRectOverlap(v10, v12) > v3)
      {
        goto LABEL_11;
      }

      v12 += 8;
    }

    sub_22E618194(&v19, v10);
    sub_22E60BF14(&__p, &v15);
LABEL_11:
    ++v15;
    v10 += 8;
  }

  if (&v19 != a1)
  {
    sub_22E6204D8(a1, v19, v20, (v20 - v19) >> 5);
  }

  v14 = __p;
  if (&__p != a2)
  {
    sub_22E612884(a2, __p, v17, (v17 - __p) >> 2);
    v14 = __p;
  }

  if (v14)
  {
    v17 = v14;
    operator delete(v14);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }
}

void sub_22E618160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E618194(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      sub_22E61047C();
    }

    v10 = v5 - *a1;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_22E620490(a1, v11);
    }

    v12 = (32 * v8);
    v13 = a2[1];
    *v12 = *a2;
    v12[1] = v13;
    v7 = 32 * v8 + 32;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
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
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = (v4 + 2);
  }

  *(a1 + 8) = v7;
}

void sub_22E61A328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  MEMORY[0x2318EA430](v32, 0x10A0C40E442CF52);

  _Unwind_Resume(a1);
}

uint64_t _esopBindInputBufferObject(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v51[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  objc_msgSend_UTF8String(v6, v7, v8);
  v9 = e5rt_execution_stream_operation_retain_input_port();
  if (!v9)
  {
    v19 = e5rt_io_port_retain_tensor_desc();
    if (v19)
    {
      last_error_message = e5rt_get_last_error_message();
      v22 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v21, @"%s returned error code %u (%s)", "e5rt_io_port_retain_tensor_desc(input_port, &tensor_desc)", v19, last_error_message, 0, 0);
      v23 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_22E65B188();
      }

      if (a4)
      {
        v25 = MEMORY[0x277CCA9B8];
        v48 = *MEMORY[0x277CCA068];
        v49 = v22;
        v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v24, &v49, &v48, 1);
        v28 = objc_msgSend_errorWithDomain_code_userInfo_(v25, v27, @"ANSTErrorDomain", 5, v26);
LABEL_17:
        v18 = 0;
        *a4 = v28;
LABEL_18:

LABEL_20:
        goto LABEL_21;
      }
    }

    else
    {
      v29 = e5rt_io_port_bind_buffer_object();
      if (!v29)
      {
        v38 = e5rt_io_port_release();
        if (v38)
        {
          v39 = e5rt_get_last_error_message();
          v41 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v40, @"%s returned error code %u (%s)", "e5rt_io_port_release(&input_port)", v38, v39, 0, 0);
          v42 = _ANSTLoggingGetOSLogForCategoryANSTKit();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            sub_22E65B188();
          }
        }

        v43 = e5rt_tensor_desc_release();
        if (!v43)
        {
          v18 = 1;
          goto LABEL_21;
        }

        v44 = e5rt_get_last_error_message();
        v22 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v45, @"%s returned error code %u (%s)", "e5rt_tensor_desc_release(&tensor_desc)", v43, v44);
        v26 = _ANSTLoggingGetOSLogForCategoryANSTKit();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          sub_22E65B188();
        }

        v18 = 1;
        goto LABEL_18;
      }

      v30 = e5rt_get_last_error_message();
      v22 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v31, @"%s returned error code %u (%s)", "e5rt_io_port_bind_buffer_object(input_port, bufferObject)", v29, v30, 0, 0);
      v32 = _ANSTLoggingGetOSLogForCategoryANSTKit();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_22E65B188();
      }

      if (a4)
      {
        v34 = MEMORY[0x277CCA9B8];
        v46 = *MEMORY[0x277CCA068];
        v47 = v22;
        v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v33, &v47, &v46, 1);
        v28 = objc_msgSend_errorWithDomain_code_userInfo_(v34, v35, @"ANSTErrorDomain", 5, v26);
        goto LABEL_17;
      }
    }

    v18 = 0;
    goto LABEL_20;
  }

  v10 = e5rt_get_last_error_message();
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%s returned error code %u (%s)", "e5rt_execution_stream_operation_retain_input_port(esop, portName.UTF8String, &input_port)", v9, v10);
  v13 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_22E65B188();
  }

  if (a4)
  {
    v15 = MEMORY[0x277CCA9B8];
    v50 = *MEMORY[0x277CCA068];
    v51[0] = v12;
    v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, v51, &v50, 1);
    *a4 = objc_msgSend_errorWithDomain_code_userInfo_(v15, v17, @"ANSTErrorDomain", 5, v16);
  }

  v18 = 0;
LABEL_21:

  v36 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t *sub_22E61ACFC(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_22E5DAEDC(v2 + 80);
    sub_22E61EE1C(v2 + 40);
    sub_22E61EEF4(v2);

    JUMPOUT(0x2318EA430);
  }

  return result;
}

void sub_22E61D110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  a43 = &a32;
  sub_22E610A88(&a43);

  a43 = &STACK[0x210];
  sub_22E610A88(&a43);
  sub_22E621E90(&STACK[0x228], STACK[0x230]);

  _Unwind_Resume(a1);
}

void sub_22E61DBA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, objc_super a13)
{
  a13.super_class = ANSTLabelDetection;
  [(_Unwind_Exception *)&a13 dealloc];
  _Unwind_Resume(a1);
}

uint64_t sub_22E61E33C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_22E61271C(result, a4);
  }

  return result;
}

void sub_22E61E394(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_22E61E3B0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_22E61E438(result, a4);
  }

  return result;
}

void sub_22E61E418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_22E61E61C(&a9);
  _Unwind_Resume(a1);
}

void sub_22E61E438(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_22E61E484(a1, a2);
  }

  sub_22E61047C();
}

void sub_22E61E484(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_22E5D9B24();
}

char *sub_22E61E4DC(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_22E5DAE38(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      v6 = (v6 + 24);
      v4 += 24;
      v12 = v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_22E61E59C(v9);
  return v4;
}

uint64_t sub_22E61E59C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_22E61E5D4(a1);
  }

  return a1;
}

void sub_22E61E5D4(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void sub_22E61E61C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_22E61E670(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_22E61E670(void ***a1)
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

void sub_22E61E6C0(uint64_t a1)
{
  if (*a1)
  {
    sub_22E61E670(a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void *sub_22E61E700(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_22E5DAE38(result[1], *a2, *(a2 + 1));
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

uint64_t sub_22E61E760(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_22E61047C();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    sub_22E61E484(a1, v6);
  }

  v7 = 24 * v2;
  v17 = 0;
  v18 = 24 * v2;
  v8 = 0;
  v19 = 24 * v2;
  v20 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_22E5DAE38(v7, *a2, *(a2 + 1));
    v7 = v18;
    v10 = v19;
    v8 = v20;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *v7 = v9;
    v10 = 24 * v2;
  }

  v11 = v10 + 24;
  v12 = *(a1 + 8) - *a1;
  v13 = v7 - v12;
  memcpy((v7 - v12), *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v8;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_22E61E8A0(&v17);
  return v11;
}

void sub_22E61E88C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22E61E8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_22E61E8A0(uint64_t a1)
{
  sub_22E61E8D8(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_22E61E8D8(uint64_t a1, void **a2)
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

uint64_t sub_22E61E934(uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_22E5D9A7C();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

char *sub_22E61E9C0(char *__dst, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_22E5DAE38(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  if (*(a3 + 23) < 0)
  {
    sub_22E5DAE38(__dst + 24, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(__dst + 5) = *(a3 + 2);
    *(__dst + 24) = v6;
  }

  return __dst;
}

void sub_22E61EA3C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_22E61EA58(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x2318EA330](a1 + 2);

  return std::istream::~istream();
}

void sub_22E61EB20(std::string **a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_22E61E6C0(a1);
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

      sub_22E61E438(a1, v10);
    }

    sub_22E61047C();
  }

  v11 = a1[1];
  v12 = v11 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(v8++, v6++);
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    while (v11 != v8)
    {
      v15 = *(v11 - 1);
      v11 -= 3;
      if (v15 < 0)
      {
        operator delete(*v11);
      }
    }

    a1[1] = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = __str;
      do
      {
        std::string::operator=(v8++, v14++);
        v13 -= 24;
      }

      while (v13);
      v11 = a1[1];
    }

    a1[1] = sub_22E61ECC0(a1, (v6 + v12), a3, v11);
  }
}

char *sub_22E61ECC0(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_22E5DAE38(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      v6 = (v6 + 24);
      v4 += 24;
      v12 = v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_22E61E59C(v9);
  return v4;
}

uint64_t sub_22E61ED80(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0u;
  v3 = (a1 + 40);
  *(a1 + 32) = 1065353216;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1065353216;
  *(a1 + 80) = 0u;
  v4 = (a1 + 80);
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1065353216;
  if (*(a2 + 23) >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  fastBPE::readCodes(v5, v3, v4);
  return a1;
}

void sub_22E61EDF8(_Unwind_Exception *a1)
{
  sub_22E5DAEDC(v3);
  sub_22E61EE1C(v2);
  sub_22E61EEF4(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_22E61EE1C(uint64_t a1)
{
  sub_22E61EE58(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_22E61EE58(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_22E61EE9C((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_22E61EE9C(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_22E61EEF4(uint64_t a1)
{
  sub_22E61EF30(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_22E61EF30(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_22E61EF74((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_22E61EF74(uint64_t a1)
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

const void **sub_22E61EFCC(void *a1, const void **a2)
{
  v4 = sub_22E5D9EC0(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    sub_22E61F240();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_22E5DA36C(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_22E61F22C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22E61F2F4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_22E61F2F4(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_22E61EF74(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_22E61F340(uint64_t a1)
{
  sub_22E5DAEDC(a1 + 80);
  sub_22E61EE1C(a1 + 40);

  return sub_22E61EEF4(a1);
}

__n128 sub_22E61F384(uint64_t a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 2;
  v10 = a2 - 4;
  v11 = a2 - 6;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = (a2 - v12) >> 5;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        result.n128_u32[0] = a2[-1].n128_u32[2];
        if (result.n128_f32[0] > *(v12 + 24))
        {
          v181 = *v12;
          v215 = *(v12 + 16);
          v90 = a2[-1];
          *v12 = a2[-2];
          *(v12 + 16) = v90;
          result = v181;
          a2[-2] = v181;
          a2[-1] = v215;
        }

        return result;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v94 = *(v12 + 56);
      v95 = *(v12 + 88);
      if (v94 <= *(v12 + 24))
      {
        if (v95 > v94)
        {
          v139 = *(v12 + 32);
          result = *(v12 + 48);
          v140 = *(v12 + 80);
          *(v12 + 32) = *(v12 + 64);
          *(v12 + 48) = v140;
          *(v12 + 64) = v139;
          *(v12 + 80) = result;
          if (*(v12 + 56) > *(v12 + 24))
          {
            v187 = *v12;
            v222 = *(v12 + 16);
            v141 = *(v12 + 48);
            *v12 = *(v12 + 32);
            *(v12 + 16) = v141;
            result = v187;
            *(v12 + 32) = v187;
            *(v12 + 48) = v222;
          }
        }
      }

      else if (v95 <= v94)
      {
        v190 = *v12;
        v225 = *(v12 + 16);
        v149 = *(v12 + 48);
        *v12 = *(v12 + 32);
        *(v12 + 16) = v149;
        *(v12 + 32) = v190;
        *(v12 + 48) = v225;
        if (v95 > *(v12 + 56))
        {
          v150 = *(v12 + 32);
          result = *(v12 + 48);
          v151 = *(v12 + 80);
          *(v12 + 32) = *(v12 + 64);
          *(v12 + 48) = v151;
          *(v12 + 64) = v150;
          *(v12 + 80) = result;
        }
      }

      else
      {
        v183 = *v12;
        v217 = *(v12 + 16);
        v96 = *(v12 + 80);
        *v12 = *(v12 + 64);
        *(v12 + 16) = v96;
        result = v183;
        *(v12 + 64) = v183;
        *(v12 + 80) = v217;
      }

      result.n128_u32[0] = a2[-1].n128_u32[2];
      if (result.n128_f32[0] <= *(v12 + 88))
      {
        return result;
      }

      result = *(v12 + 64);
      v226 = *(v12 + 80);
      v152 = a2[-1];
      *(v12 + 64) = *v9;
      *(v12 + 80) = v152;
      *v9 = result;
      a2[-1] = v226;
      result.n128_u32[0] = *(v12 + 88);
      if (result.n128_f32[0] <= *(v12 + 56))
      {
        return result;
      }

      v153 = *(v12 + 32);
      result = *(v12 + 48);
      v154 = *(v12 + 80);
      *(v12 + 32) = *(v12 + 64);
      *(v12 + 48) = v154;
      *(v12 + 64) = v153;
      *(v12 + 80) = result;
LABEL_186:
      result.n128_u32[0] = *(v12 + 56);
      if (result.n128_f32[0] > *(v12 + 24))
      {
        v191 = *v12;
        v227 = *(v12 + 16);
        v155 = *(v12 + 48);
        *v12 = *(v12 + 32);
        *(v12 + 16) = v155;
        result = v191;
        *(v12 + 32) = v191;
        *(v12 + 48) = v227;
      }

      return result;
    }

    if (v13 == 5)
    {

      result.n128_u64[0] = sub_22E61FFA8(v12, (v12 + 32), (v12 + 64), (v12 + 96), &a2[-2], result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v97 = (v12 + 32);
      v99 = v12 == a2 || v97 == a2;
      if (a4)
      {
        if (!v99)
        {
          v100 = 0;
          v101 = v12;
          do
          {
            v102 = v97;
            result.n128_u32[0] = *(v101 + 56);
            if (result.n128_f32[0] > *(v101 + 24))
            {
              v218 = v97[1].n128_u64[0];
              v184 = *v97;
              v103 = *(v101 + 60);
              v104 = v100;
              while (1)
              {
                v105 = v12 + v104;
                v106 = *(v12 + v104 + 16);
                *(v105 + 32) = *(v12 + v104);
                *(v105 + 48) = v106;
                if (!v104)
                {
                  break;
                }

                v104 -= 32;
                if (result.n128_f32[0] <= *(v105 - 8))
                {
                  v107 = v12 + v104 + 32;
                  goto LABEL_130;
                }
              }

              v107 = v12;
LABEL_130:
              *(v107 + 16) = v218;
              *v107 = v184;
              *(v107 + 24) = result.n128_u32[0];
              *(v107 + 28) = v103;
            }

            v97 = v102 + 2;
            v100 += 32;
            v101 = v102;
          }

          while (&v102[2] != a2);
        }
      }

      else if (!v99)
      {
        do
        {
          v142 = v97;
          result.n128_u32[0] = *(a1 + 56);
          if (result.n128_f32[0] > *(a1 + 24))
          {
            v223 = v97[1].n128_u64[0];
            v188 = *v97;
            v143 = *(a1 + 60);
            v144 = v97;
            do
            {
              v145 = v144[-1];
              *v144 = v144[-2];
              v144[1] = v145;
              v146 = v144[-3].n128_f32[2];
              v144 -= 2;
            }

            while (result.n128_f32[0] > v146);
            v144[1].n128_u64[0] = v223;
            *v144 = v188;
            v144[1].n128_u32[2] = result.n128_u32[0];
            v144[1].n128_u32[3] = v143;
          }

          v97 += 2;
          a1 = v142;
        }

        while ((v142 + 32) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v108 = (v13 - 2) >> 1;
        v109 = v108;
        do
        {
          v110 = v109;
          if (v108 >= v109)
          {
            v111 = (2 * v109) | 1;
            v112 = v12 + 32 * v111;
            if (2 * v110 + 2 < v13 && *(v112 + 24) > *(v112 + 56))
            {
              v112 += 32;
              v111 = 2 * v110 + 2;
            }

            v113 = v12 + 32 * v110;
            v114 = *(v113 + 24);
            if (*(v112 + 24) <= v114)
            {
              v219 = *(v113 + 16);
              v185 = *v113;
              v115 = *(v113 + 28);
              do
              {
                v116 = v113;
                v113 = v112;
                v117 = *(v112 + 16);
                *v116 = *v112;
                v116[1] = v117;
                if (v108 < v111)
                {
                  break;
                }

                v118 = 2 * v111;
                v111 = (2 * v111) | 1;
                v112 = v12 + 32 * v111;
                v119 = v118 + 2;
                if (v119 < v13 && *(v112 + 24) > *(v112 + 56))
                {
                  v112 += 32;
                  v111 = v119;
                }
              }

              while (*(v112 + 24) <= v114);
              *(v113 + 16) = v219;
              *v113 = v185;
              *(v113 + 24) = v114;
              *(v113 + 28) = v115;
            }
          }

          v109 = v110 - 1;
        }

        while (v110);
        do
        {
          v120 = 0;
          v186 = *v12;
          v220 = *(v12 + 16);
          v121 = v12;
          do
          {
            v122 = &v121[2 * v120];
            v123 = (v122 + 8);
            v124 = (2 * v120) | 1;
            v120 = 2 * v120 + 2;
            if (v120 >= v13)
            {
              v120 = v124;
            }

            else
            {
              v125 = v122[14];
              v126 = v122[22];
              v127 = (v122 + 16);
              if (v125 <= v126)
              {
                v120 = v124;
              }

              else
              {
                v123 = v127;
              }
            }

            v128 = v123[1];
            *v121 = *v123;
            v121[1] = v128;
            v121 = v123;
          }

          while (v120 <= ((v13 - 2) >> 1));
          a2 -= 2;
          if (v123 == a2)
          {
            result = v186;
            *v123 = v186;
            v123[1] = v220;
          }

          else
          {
            v129 = a2[1];
            *v123 = *a2;
            v123[1] = v129;
            result = v186;
            *a2 = v186;
            a2[1] = v220;
            v130 = (&v123[2] - v12) >> 5;
            v131 = v130 < 2;
            v132 = v130 - 2;
            if (!v131)
            {
              v133 = v132 >> 1;
              v134 = v12 + 32 * v133;
              result.n128_u32[0] = v123[1].n128_u32[2];
              if (*(v134 + 24) > result.n128_f32[0])
              {
                v161 = v123[1].n128_i64[0];
                v158 = *v123;
                v135 = v123[1].n128_i32[3];
                do
                {
                  v136 = v123;
                  v123 = v134;
                  v137 = *(v134 + 16);
                  *v136 = *v134;
                  v136[1] = v137;
                  if (!v133)
                  {
                    break;
                  }

                  v133 = (v133 - 1) >> 1;
                  v134 = v12 + 32 * v133;
                }

                while (*(v134 + 24) > result.n128_f32[0]);
                v123[1].n128_u64[0] = v161;
                *v123 = v158;
                v123[1].n128_u32[2] = result.n128_u32[0];
                v123[1].n128_u32[3] = v135;
              }
            }
          }

          v131 = v13-- <= 2;
        }

        while (!v131);
      }

      return result;
    }

    v14 = v12 + 32 * (v13 >> 1);
    v15 = a2[-1].n128_f32[2];
    if (v13 >= 0x81)
    {
      v16 = *(v14 + 24);
      if (v16 <= *(v12 + 24))
      {
        if (v15 > v16)
        {
          v164 = *v14;
          v194 = *(v14 + 16);
          v20 = a2[-1];
          *v14 = *v9;
          *(v14 + 16) = v20;
          *v9 = v164;
          a2[-1] = v194;
          if (*(v14 + 24) > *(v12 + 24))
          {
            v165 = *v12;
            v195 = *(v12 + 16);
            v21 = *(v14 + 16);
            *v12 = *v14;
            *(v12 + 16) = v21;
            *v14 = v165;
            *(v14 + 16) = v195;
          }
        }
      }

      else
      {
        if (v15 > v16)
        {
          v162 = *v12;
          v192 = *(v12 + 16);
          v17 = a2[-1];
          *v12 = *v9;
          *(v12 + 16) = v17;
          goto LABEL_26;
        }

        v168 = *v12;
        v198 = *(v12 + 16);
        v24 = *(v14 + 16);
        *v12 = *v14;
        *(v12 + 16) = v24;
        *v14 = v168;
        *(v14 + 16) = v198;
        if (a2[-1].n128_f32[2] > *(v14 + 24))
        {
          v162 = *v14;
          v192 = *(v14 + 16);
          v25 = a2[-1];
          *v14 = *v9;
          *(v14 + 16) = v25;
LABEL_26:
          *v9 = v162;
          a2[-1] = v192;
        }
      }

      v26 = (v14 - 32);
      v27 = *(v14 - 8);
      v28 = a2[-3].n128_f32[2];
      if (v27 <= *(v12 + 56))
      {
        if (v28 > v27)
        {
          v169 = *v26;
          v199 = *(v14 - 16);
          v32 = a2[-3];
          *v26 = *v10;
          *(v14 - 16) = v32;
          *v10 = v169;
          a2[-3] = v199;
          if (*(v14 - 8) > *(v12 + 56))
          {
            v33 = *(v12 + 32);
            v200 = *(v12 + 48);
            v34 = *(v14 - 16);
            *(v12 + 32) = *v26;
            *(v12 + 48) = v34;
            *v26 = v33;
            *(v14 - 16) = v200;
          }
        }
      }

      else
      {
        if (v28 > v27)
        {
          v29 = *(v12 + 32);
          v30 = *(v12 + 48);
          v31 = a2[-3];
          *(v12 + 32) = *v10;
          *(v12 + 48) = v31;
          goto LABEL_38;
        }

        v37 = *(v12 + 32);
        v202 = *(v12 + 48);
        v38 = *(v14 - 16);
        *(v12 + 32) = *v26;
        *(v12 + 48) = v38;
        *v26 = v37;
        *(v14 - 16) = v202;
        if (a2[-3].n128_f32[2] > *(v14 - 8))
        {
          v171 = *v26;
          v203 = *(v14 - 16);
          v39 = a2[-3];
          *v26 = *v10;
          *(v14 - 16) = v39;
          v29 = v171;
          v30 = v203;
LABEL_38:
          *v10 = v29;
          a2[-3] = v30;
        }
      }

      v40 = (v14 + 32);
      v41 = *(v14 + 56);
      v42 = a2[-5].n128_f32[2];
      if (v41 <= *(v12 + 88))
      {
        if (v42 > v41)
        {
          v172 = *v40;
          v204 = *(v14 + 48);
          v46 = a2[-5];
          *v40 = *v11;
          *(v14 + 48) = v46;
          *v11 = v172;
          a2[-5] = v204;
          if (*(v14 + 56) > *(v12 + 88))
          {
            v47 = *(v12 + 64);
            v205 = *(v12 + 80);
            v48 = *(v14 + 48);
            *(v12 + 64) = *v40;
            *(v12 + 80) = v48;
            *v40 = v47;
            *(v14 + 48) = v205;
          }
        }
      }

      else
      {
        if (v42 > v41)
        {
          v43 = *(v12 + 64);
          v44 = *(v12 + 80);
          v45 = a2[-5];
          *(v12 + 64) = *v11;
          *(v12 + 80) = v45;
          goto LABEL_47;
        }

        v49 = *(v12 + 64);
        v206 = *(v12 + 80);
        v50 = *(v14 + 48);
        *(v12 + 64) = *v40;
        *(v12 + 80) = v50;
        *v40 = v49;
        *(v14 + 48) = v206;
        if (a2[-5].n128_f32[2] > *(v14 + 56))
        {
          v173 = *v40;
          v207 = *(v14 + 48);
          v51 = a2[-5];
          *v40 = *v11;
          *(v14 + 48) = v51;
          v43 = v173;
          v44 = v207;
LABEL_47:
          *v11 = v43;
          a2[-5] = v44;
        }
      }

      v52 = *(v14 + 24);
      v53 = *(v14 + 56);
      if (v52 <= *(v14 - 8))
      {
        if (v53 > v52)
        {
          v175 = *v14;
          v209 = *(v14 + 16);
          v55 = *(v14 + 48);
          *v14 = *v40;
          *(v14 + 16) = v55;
          *v40 = v175;
          *(v14 + 48) = v209;
          if (*(v14 + 24) > *(v14 - 8))
          {
            v176 = *v26;
            v210 = *(v14 - 16);
            v56 = *(v14 + 16);
            *v26 = *v14;
            *(v14 - 16) = v56;
            *v14 = v176;
            *(v14 + 16) = v210;
          }
        }
      }

      else
      {
        if (v53 > v52)
        {
          v174 = *v26;
          v208 = *(v14 - 16);
          v54 = *(v14 + 48);
          *v26 = *v40;
          *(v14 - 16) = v54;
          goto LABEL_56;
        }

        v177 = *v26;
        v211 = *(v14 - 16);
        v57 = *(v14 + 16);
        *v26 = *v14;
        *(v14 - 16) = v57;
        *v14 = v177;
        *(v14 + 16) = v211;
        if (*(v14 + 56) > *(v14 + 24))
        {
          v174 = *v14;
          v208 = *(v14 + 16);
          v58 = *(v14 + 48);
          *v14 = *v40;
          *(v14 + 16) = v58;
LABEL_56:
          *v40 = v174;
          *(v14 + 48) = v208;
        }
      }

      v178 = *v12;
      v212 = *(v12 + 16);
      v59 = *(v14 + 16);
      *v12 = *v14;
      *(v12 + 16) = v59;
      result = v178;
      *v14 = v178;
      *(v14 + 16) = v212;
      goto LABEL_58;
    }

    v18 = *(v12 + 24);
    if (v18 <= *(v14 + 24))
    {
      if (v15 > v18)
      {
        v166 = *v12;
        v196 = *(v12 + 16);
        v22 = a2[-1];
        *v12 = *v9;
        *(v12 + 16) = v22;
        result = v166;
        *v9 = v166;
        a2[-1] = v196;
        if (*(v12 + 24) > *(v14 + 24))
        {
          v167 = *v14;
          v197 = *(v14 + 16);
          v23 = *(v12 + 16);
          *v14 = *v12;
          *(v14 + 16) = v23;
          result = v167;
          *v12 = v167;
          *(v12 + 16) = v197;
        }
      }

      goto LABEL_58;
    }

    if (v15 > v18)
    {
      v163 = *v14;
      v193 = *(v14 + 16);
      v19 = a2[-1];
      *v14 = *v9;
      *(v14 + 16) = v19;
LABEL_35:
      result = v163;
      *v9 = v163;
      a2[-1] = v193;
      goto LABEL_58;
    }

    v170 = *v14;
    v201 = *(v14 + 16);
    v35 = *(v12 + 16);
    *v14 = *v12;
    *(v14 + 16) = v35;
    result = v170;
    *v12 = v170;
    *(v12 + 16) = v201;
    if (a2[-1].n128_f32[2] > *(v12 + 24))
    {
      v163 = *v12;
      v193 = *(v12 + 16);
      v36 = a2[-1];
      *v12 = *v9;
      *(v12 + 16) = v36;
      goto LABEL_35;
    }

LABEL_58:
    --a3;
    if (a4)
    {
      result.n128_u32[0] = *(v12 + 24);
LABEL_61:
      v60 = 0;
      v159 = *(v12 + 16);
      v156 = *v12;
      v61 = *(v12 + 28);
      do
      {
        v62 = *(v12 + v60 + 56);
        v60 += 32;
      }

      while (v62 > result.n128_f32[0]);
      v63 = v12 + v60;
      v64 = a2;
      if (v60 == 32)
      {
        v67 = a2;
        while (v63 < v67)
        {
          v65 = v67 - 2;
          v68 = v67[-1].n128_f32[2];
          v67 -= 2;
          if (v68 > result.n128_f32[0])
          {
            goto LABEL_71;
          }
        }

        v65 = v67;
      }

      else
      {
        do
        {
          v65 = v64 - 2;
          v66 = v64[-1].n128_f32[2];
          v64 -= 2;
        }

        while (v66 <= result.n128_f32[0]);
      }

LABEL_71:
      v12 = v63;
      if (v63 < v65)
      {
        v69 = v65;
        do
        {
          v179 = *v12;
          v213 = *(v12 + 16);
          v70 = *(v69 + 1);
          *v12 = *v69;
          *(v12 + 16) = v70;
          *v69 = v179;
          *(v69 + 1) = v213;
          do
          {
            v71 = *(v12 + 56);
            v12 += 32;
          }

          while (v71 > result.n128_f32[0]);
          do
          {
            v72 = *(v69 - 2);
            v69 -= 8;
          }

          while (v72 <= result.n128_f32[0]);
        }

        while (v12 < v69);
      }

      v73 = (v12 - 32);
      if (v12 - 32 != a1)
      {
        v74 = *(v12 - 16);
        *a1 = *v73;
        *(a1 + 16) = v74;
      }

      *(v12 - 16) = v159;
      *v73 = v156;
      *(v12 - 8) = result.n128_u32[0];
      *(v12 - 4) = v61;
      if (v63 < v65)
      {
        goto LABEL_82;
      }

      v75 = sub_22E620134(a1, v12 - 32, result);
      if (sub_22E620134(v12, a2, v76))
      {
        a2 = (v12 - 32);
        if (!v75)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v75)
      {
LABEL_82:
        sub_22E61F384(a1, v12 - 32, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      result.n128_u32[0] = *(v12 + 24);
      if (*(v12 - 8) > result.n128_f32[0])
      {
        goto LABEL_61;
      }

      v160 = *(v12 + 16);
      v157 = *v12;
      if (result.n128_f32[0] <= a2[-1].n128_f32[2])
      {
        v79 = v12 + 32;
        do
        {
          v12 = v79;
          if (v79 >= a2)
          {
            break;
          }

          v80 = *(v79 + 24);
          v79 += 32;
        }

        while (result.n128_f32[0] <= v80);
      }

      else
      {
        v77 = v12;
        do
        {
          v12 = v77 + 32;
          v78 = *(v77 + 56);
          v77 += 32;
        }

        while (result.n128_f32[0] <= v78);
      }

      v81 = a2;
      if (v12 < a2)
      {
        v82 = a2;
        do
        {
          v81 = &v82[-2];
          v83 = v82[-1].n128_f32[2];
          v82 -= 2;
        }

        while (result.n128_f32[0] > v83);
      }

      v84 = *(a1 + 28);
      while (v12 < v81)
      {
        v180 = *v12;
        v214 = *(v12 + 16);
        v85 = *(v81 + 1);
        *v12 = *v81;
        *(v12 + 16) = v85;
        *v81 = v180;
        *(v81 + 1) = v214;
        do
        {
          v86 = *(v12 + 56);
          v12 += 32;
        }

        while (result.n128_f32[0] <= v86);
        do
        {
          v87 = *(v81 - 2);
          v81 -= 8;
        }

        while (result.n128_f32[0] > v87);
      }

      v88 = (v12 - 32);
      if (v12 - 32 != a1)
      {
        v89 = *(v12 - 16);
        *a1 = *v88;
        *(a1 + 16) = v89;
      }

      a4 = 0;
      *(v12 - 16) = v160;
      *v88 = v157;
      *(v12 - 8) = result.n128_u32[0];
      *(v12 - 4) = v84;
    }
  }

  result.n128_u32[0] = *(v12 + 56);
  v91 = a2[-1].n128_f32[2];
  if (result.n128_f32[0] <= *(v12 + 24))
  {
    if (v91 <= result.n128_f32[0])
    {
      return result;
    }

    result = *(v12 + 32);
    v221 = *(v12 + 48);
    v138 = a2[-1];
    *(v12 + 32) = *v9;
    *(v12 + 48) = v138;
    *v9 = result;
    a2[-1] = v221;
    goto LABEL_186;
  }

  if (v91 <= result.n128_f32[0])
  {
    v189 = *v12;
    v224 = *(v12 + 16);
    v147 = *(v12 + 48);
    *v12 = *(v12 + 32);
    *(v12 + 16) = v147;
    result = v189;
    *(v12 + 32) = v189;
    *(v12 + 48) = v224;
    result.n128_u32[0] = a2[-1].n128_u32[2];
    if (result.n128_f32[0] <= *(v12 + 56))
    {
      return result;
    }

    result = *(v12 + 32);
    v93 = *(v12 + 48);
    v148 = a2[-1];
    *(v12 + 32) = *v9;
    *(v12 + 48) = v148;
  }

  else
  {
    v182 = *v12;
    v216 = *(v12 + 16);
    v92 = a2[-1];
    *v12 = *v9;
    *(v12 + 16) = v92;
    result = v182;
    v93 = v216;
  }

  *v9 = result;
  a2[-1] = v93;
  return result;
}

__n128 sub_22E61FFA8(float *a1, float *a2, float *a3, float *a4, __int128 *a5, __n128 result)
{
  v6 = a2[6];
  v7 = a3[6];
  if (v6 <= a1[6])
  {
    if (v7 > v6)
    {
      v10 = *a2;
      result = *(a2 + 4);
      v11 = *(a3 + 1);
      *a2 = *a3;
      *(a2 + 1) = v11;
      *a3 = v10;
      *(a3 + 1) = result;
      if (a2[6] > a1[6])
      {
        v12 = *a1;
        result = *(a1 + 4);
        v13 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v13;
        *a2 = v12;
        *(a2 + 1) = result;
      }
    }
  }

  else
  {
    if (v7 > v6)
    {
      v8 = *a1;
      result = *(a1 + 4);
      v9 = *(a3 + 1);
      *a1 = *a3;
      *(a1 + 1) = v9;
LABEL_9:
      *a3 = v8;
      *(a3 + 1) = result;
      goto LABEL_10;
    }

    v14 = *a1;
    result = *(a1 + 4);
    v15 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v15;
    *a2 = v14;
    *(a2 + 1) = result;
    if (a3[6] > a2[6])
    {
      v8 = *a2;
      result = *(a2 + 4);
      v16 = *(a3 + 1);
      *a2 = *a3;
      *(a2 + 1) = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4[6] > a3[6])
  {
    v17 = *a3;
    result = *(a3 + 4);
    v18 = *(a4 + 1);
    *a3 = *a4;
    *(a3 + 1) = v18;
    *a4 = v17;
    *(a4 + 1) = result;
    if (a3[6] > a2[6])
    {
      v19 = *a2;
      result = *(a2 + 4);
      v20 = *(a3 + 1);
      *a2 = *a3;
      *(a2 + 1) = v20;
      *a3 = v19;
      *(a3 + 1) = result;
      if (a2[6] > a1[6])
      {
        v21 = *a1;
        result = *(a1 + 4);
        v22 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v22;
        *a2 = v21;
        *(a2 + 1) = result;
      }
    }
  }

  result.n128_u32[0] = *(a5 + 6);
  if (result.n128_f32[0] > a4[6])
  {
    v23 = *a4;
    result = *(a4 + 4);
    v24 = a5[1];
    *a4 = *a5;
    *(a4 + 1) = v24;
    *a5 = v23;
    a5[1] = result;
    result.n128_f32[0] = a4[6];
    if (result.n128_f32[0] > a3[6])
    {
      v25 = *a3;
      result = *(a3 + 4);
      v26 = *(a4 + 1);
      *a3 = *a4;
      *(a3 + 1) = v26;
      *a4 = v25;
      *(a4 + 1) = result;
      result.n128_f32[0] = a3[6];
      if (result.n128_f32[0] > a2[6])
      {
        v27 = *a2;
        result = *(a2 + 4);
        v28 = *(a3 + 1);
        *a2 = *a3;
        *(a2 + 1) = v28;
        *a3 = v27;
        *(a3 + 1) = result;
        result.n128_f32[0] = a2[6];
        if (result.n128_f32[0] > a1[6])
        {
          v29 = *a1;
          result = *(a1 + 4);
          v30 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v30;
          *a2 = v29;
          *(a2 + 1) = result;
        }
      }
    }
  }

  return result;
}

BOOL sub_22E620134(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = (a2 - a1) >> 5;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v7 = (a2 - 32);
      v8 = *(a1 + 56);
      v9 = *(a2 - 8);
      if (v8 > *(a1 + 24))
      {
        if (v9 <= v8)
        {
          v42 = *a1;
          v41 = *(a1 + 16);
          v43 = *(a1 + 48);
          *a1 = *(a1 + 32);
          *(a1 + 16) = v43;
          *(a1 + 32) = v42;
          *(a1 + 48) = v41;
          if (*(a2 - 8) <= *(a1 + 56))
          {
            return 1;
          }

          v11 = *(a1 + 32);
          v10 = *(a1 + 48);
          v44 = *(a2 - 16);
          *(a1 + 32) = *v7;
          *(a1 + 48) = v44;
        }

        else
        {
          v11 = *a1;
          v10 = *(a1 + 16);
          v12 = *(a2 - 16);
          *a1 = *v7;
          *(a1 + 16) = v12;
        }

        *v7 = v11;
        *(a2 - 16) = v10;
        return 1;
      }

      if (v9 <= v8)
      {
        return 1;
      }

      v27 = *(a1 + 32);
      v26 = *(a1 + 48);
      v28 = *(a2 - 16);
      *(a1 + 32) = *v7;
      *(a1 + 48) = v28;
      *v7 = v27;
      *(a2 - 16) = v26;
LABEL_50:
      if (*(a1 + 56) > *(a1 + 24))
      {
        v70 = *a1;
        v69 = *(a1 + 16);
        v71 = *(a1 + 48);
        *a1 = *(a1 + 32);
        *(a1 + 16) = v71;
        *(a1 + 32) = v70;
        *(a1 + 48) = v69;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      sub_22E61FFA8(a1, (a1 + 32), (a1 + 64), (a1 + 96), (a2 - 32), a3);
      return 1;
    }

    v20 = *(a1 + 56);
    v21 = *(a1 + 24);
    v22 = *(a1 + 88);
    if (v20 <= v21)
    {
      if (v22 > v20)
      {
        v36 = *(a1 + 32);
        v35 = *(a1 + 48);
        v37 = *(a1 + 80);
        *(a1 + 32) = *(a1 + 64);
        *(a1 + 48) = v37;
        *(a1 + 64) = v36;
        *(a1 + 80) = v35;
        if (*(a1 + 56) > v21)
        {
          v39 = *a1;
          v38 = *(a1 + 16);
          v40 = *(a1 + 48);
          *a1 = *(a1 + 32);
          *(a1 + 16) = v40;
          *(a1 + 32) = v39;
          *(a1 + 48) = v38;
        }
      }

      goto LABEL_47;
    }

    if (v22 <= v20)
    {
      v59 = *a1;
      v58 = *(a1 + 16);
      v60 = *(a1 + 48);
      *a1 = *(a1 + 32);
      *(a1 + 16) = v60;
      *(a1 + 32) = v59;
      *(a1 + 48) = v58;
      if (v22 <= *(a1 + 56))
      {
        goto LABEL_47;
      }

      v24 = *(a1 + 32);
      v23 = *(a1 + 48);
      v61 = *(a1 + 80);
      *(a1 + 32) = *(a1 + 64);
      *(a1 + 48) = v61;
    }

    else
    {
      v24 = *a1;
      v23 = *(a1 + 16);
      v25 = *(a1 + 80);
      *a1 = *(a1 + 64);
      *(a1 + 16) = v25;
    }

    *(a1 + 64) = v24;
    *(a1 + 80) = v23;
LABEL_47:
    if (*(a2 - 8) <= *(a1 + 88))
    {
      return 1;
    }

    v62 = (a2 - 32);
    v64 = *(a1 + 64);
    v63 = *(a1 + 80);
    v65 = *(a2 - 16);
    *(a1 + 64) = *(a2 - 32);
    *(a1 + 80) = v65;
    *v62 = v64;
    v62[1] = v63;
    if (*(a1 + 88) <= *(a1 + 56))
    {
      return 1;
    }

    v67 = *(a1 + 32);
    v66 = *(a1 + 48);
    v68 = *(a1 + 80);
    *(a1 + 32) = *(a1 + 64);
    *(a1 + 48) = v68;
    *(a1 + 64) = v67;
    *(a1 + 80) = v66;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (*(a2 - 8) > *(a1 + 24))
    {
      v5 = *a1;
      v4 = *(a1 + 16);
      v6 = *(a2 - 16);
      *a1 = *(a2 - 32);
      *(a1 + 16) = v6;
      *(a2 - 32) = v5;
      *(a2 - 16) = v4;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 64;
  v14 = *(a1 + 56);
  v15 = *(a1 + 24);
  v16 = *(a1 + 88);
  if (v14 <= v15)
  {
    if (v16 > v14)
    {
      v30 = *(a1 + 32);
      v29 = *(a1 + 48);
      v31 = *(a1 + 80);
      *(a1 + 32) = *v13;
      *(a1 + 48) = v31;
      *v13 = v30;
      *(a1 + 80) = v29;
      if (*(a1 + 56) > v15)
      {
        v33 = *a1;
        v32 = *(a1 + 16);
        v34 = *(a1 + 48);
        *a1 = *(a1 + 32);
        *(a1 + 16) = v34;
        *(a1 + 32) = v33;
        *(a1 + 48) = v32;
      }
    }
  }

  else
  {
    if (v16 <= v14)
    {
      v46 = *a1;
      v45 = *(a1 + 16);
      v47 = *(a1 + 48);
      *a1 = *(a1 + 32);
      *(a1 + 16) = v47;
      *(a1 + 32) = v46;
      *(a1 + 48) = v45;
      if (v16 <= *(a1 + 56))
      {
        goto LABEL_33;
      }

      v18 = *(a1 + 32);
      v17 = *(a1 + 48);
      v48 = *(a1 + 80);
      *(a1 + 32) = *v13;
      *(a1 + 48) = v48;
    }

    else
    {
      v18 = *a1;
      v17 = *(a1 + 16);
      v19 = *(a1 + 80);
      *a1 = *v13;
      *(a1 + 16) = v19;
    }

    *v13 = v18;
    *(a1 + 80) = v17;
  }

LABEL_33:
  v49 = a1 + 96;
  if (a1 + 96 == a2)
  {
    return 1;
  }

  v50 = 0;
  v51 = 0;
  while (1)
  {
    v52 = *(v49 + 24);
    if (v52 > *(v13 + 24))
    {
      v73 = *v49;
      v74 = *(v49 + 16);
      v53 = *(v49 + 28);
      v54 = v50;
      while (1)
      {
        v55 = a1 + v54;
        v56 = *(a1 + v54 + 80);
        *(v55 + 96) = *(a1 + v54 + 64);
        *(v55 + 112) = v56;
        if (v54 == -64)
        {
          break;
        }

        v54 -= 32;
        if (v52 <= *(v55 + 56))
        {
          v57 = a1 + v54 + 96;
          goto LABEL_41;
        }
      }

      v57 = a1;
LABEL_41:
      *v57 = v73;
      *(v57 + 16) = v74;
      *(v57 + 24) = v52;
      *(v57 + 28) = v53;
      if (++v51 == 8)
      {
        return v49 + 32 == a2;
      }
    }

    v13 = v49;
    v50 += 32;
    v49 += 32;
    if (v49 == a2)
    {
      return 1;
    }
  }
}

void sub_22E620490(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_22E5D9B24();
}

void *sub_22E6204D8(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 5)
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

    if (!(a4 >> 59))
    {
      v9 = v7 >> 4;
      if (v7 >> 4 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFE0)
      {
        v10 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_22E620604(v6, v10);
    }

    sub_22E61047C();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 5)
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

void sub_22E620604(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_22E620490(a1, a2);
  }

  sub_22E61047C();
}

std::string *sub_22E620640(std::string *__dst, const std::string::value_type *__src, size_t __len)
{
  size = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = __dst->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __len)
    {
      size = __dst->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = __dst->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = __dst;
    if (__len > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(__dst, v8, __len - v8, size, 0, size, __len, __src);
      return __dst;
    }
  }

  if (__len)
  {
    memmove(v7, __src, __len);
    LOBYTE(size) = *(&__dst->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    __dst->__r_.__value_.__l.__size_ = __len;
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = __len & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__len] = 0;
  return __dst;
}

std::string *sub_22E6206FC(std::string *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_22E620640(a1, __s, v4);
}

const void **sub_22E620744(void *a1, const void **a2)
{
  v4 = sub_22E5D9EC0(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    sub_22E6209B8();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_22E5DA36C(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_22E6209A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22E620A6C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_22E620A6C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_22E620AB8(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_22E620AB8(uint64_t a1)
{
  v2 = (a1 + 24);
  sub_22E61E61C(&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

const void **sub_22E620B00(void *a1, const void **a2)
{
  v4 = sub_22E5D9EC0(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    sub_22E620D78();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_22E5DA36C(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_22E620D54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_22E5DA638(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22E620E1C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_22E5DA638(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_22E620E38(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x2318EA340](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_22E620F9C(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x22E620F5CLL);
  }

  __cxa_rethrow();
}

uint64_t **sub_22E62102C(void *a1, uint64_t a2)
{
  v4 = sub_22E621420(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_41;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_41:
    sub_22E621348();
  }

  v12 = *(a2 + 23);
  if (v12 >= 0)
  {
    v13 = *(a2 + 23);
  }

  else
  {
    v13 = *(a2 + 8);
  }

  if (v12 >= 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = *a2;
  }

  v15 = *(a2 + 47);
  v16 = v15;
  if ((v15 & 0x80u) != 0)
  {
    v15 = *(a2 + 32);
  }

  __n = v15;
  v19 = *(a2 + 24);
  v18 = (a2 + 24);
  v17 = v19;
  if (v16 < 0)
  {
    v18 = v17;
  }

  while (1)
  {
    v20 = v11[1];
    if (v20 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v20 >= *&v6)
      {
        v20 %= *&v6;
      }
    }

    else
    {
      v20 &= *&v6 - 1;
    }

    if (v20 != v9)
    {
      goto LABEL_41;
    }

LABEL_40:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_41;
    }
  }

  v21 = *(v11 + 39);
  v22 = v21;
  if (v21 < 0)
  {
    v21 = v11[3];
  }

  if (v21 != v13)
  {
    goto LABEL_40;
  }

  v23 = v22 >= 0 ? (v11 + 2) : v11[2];
  if (memcmp(v23, v14, v13))
  {
    goto LABEL_40;
  }

  v24 = *(v11 + 63);
  v25 = v24;
  if (v24 < 0)
  {
    v24 = v11[6];
  }

  if (v24 != __n)
  {
    goto LABEL_40;
  }

  v26 = v25 >= 0 ? (v11 + 5) : v11[5];
  if (memcmp(v26, v18, __n))
  {
    goto LABEL_40;
  }

  return v11;
}

void sub_22E621334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_22E6213D4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_22E6213D4(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_22E61EE9C(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

char *sub_22E621478(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_22E5DAE38(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_22E5DAE38(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  return __dst;
}

void sub_22E6214F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_22E62150C(void *a1, uint64_t a2)
{
  v4 = sub_22E621420(a1, a2);
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
    v12 = *(a2 + 23);
    if (v12 >= 0)
    {
      v13 = *(a2 + 23);
    }

    else
    {
      v13 = *(a2 + 8);
    }

    if (v12 >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    v15 = *(a2 + 47);
    if (v15 >= 0)
    {
      v16 = *(a2 + 47);
    }

    else
    {
      v16 = *(a2 + 32);
    }

    v19 = *(a2 + 24);
    v18 = (a2 + 24);
    v17 = v19;
    if (v15 < 0)
    {
      v18 = v17;
    }

    do
    {
      v20 = v11[1];
      if (v20 == v6)
      {
        v21 = *(v11 + 39);
        v22 = v21;
        if (v21 < 0)
        {
          v21 = v11[3];
        }

        if (v21 == v13)
        {
          v23 = v22 >= 0 ? (v11 + 2) : v11[2];
          if (!memcmp(v23, v14, v13))
          {
            v24 = *(v11 + 63);
            v25 = v24;
            if (v24 < 0)
            {
              v24 = v11[6];
            }

            if (v24 == v16)
            {
              v26 = v25 >= 0 ? (v11 + 5) : v11[5];
              if (!memcmp(v26, v18, v16))
              {
                return v11;
              }
            }
          }
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v20 >= *&v5)
          {
            v20 %= *&v5;
          }
        }

        else
        {
          v20 &= *&v5 - 1;
        }

        if (v20 != v9)
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

uint64_t sub_22E6216A8(uint64_t a1)
{
  sub_22E6216E4(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_22E6216E4(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t *sub_22E621730(void *a1, int *a2)
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
    if (*&v3 <= v2)
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

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_22E621984(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *sub_22E6219E8(void *a1, int *a2)
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
    if (*&v3 <= v2)
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

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t *sub_22E621C3C(void *a1, int *a2)
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
    if (*&v3 <= v2)
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

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_22E621E90(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_22E621E90(a1, *a2);
    sub_22E621E90(a1, *(a2 + 1));
    if (a2[231] < 0)
    {
      operator delete(*(a2 + 26));
    }

    operator delete(a2);
  }
}

_BYTE *sub_22E624920(uint64_t a1, const char *a2)
{
  v2 = a2;
  v4 = objc_msgSend_strideOfDimensionAt_(*(a1 + 32), a2, *(a1 + 40) - 2);
  v6 = objc_msgSend_strideOfDimensionAt_(*(a1 + 32), v5, *(a1 + 40) - 1);
  BytesPerRow = CVPixelBufferGetBytesPerRow(*(a1 + 48));
  v8 = *(a1 + 72);
  result = CVPixelBufferGetBaseAddress(*(a1 + 48));
  v10 = *(a1 + 56);
  if (v8 == 1278226488)
  {
    if (v10)
    {
      v11 = 0;
      v12 = *(a1 + 64);
      do
      {
        if (v12)
        {
          v13 = 0;
          v14 = v2;
          do
          {
            result[v13++] = *v14;
            v12 = *(a1 + 64);
            v14 = (v14 + v6);
          }

          while (v13 < v12);
          v10 = *(a1 + 56);
        }

        v2 = (v2 + v4);
        result += BytesPerRow;
        ++v11;
      }

      while (v11 < v10);
    }
  }

  else if (v10)
  {
    v15 = 0;
    v16 = 0;
    v17 = *(a1 + 64);
    do
    {
      if (v17)
      {
        v18 = v2 + v16;
        v19 = &result[2 * v16];
        v16 += v17;
        v20 = v17;
        do
        {
          v21 = *v18++;
          *v19++ = v21 / COERCE_SHORT_FLOAT(23544);
          --v20;
        }

        while (v20);
      }

      ++v15;
    }

    while (v15 != v10);
  }

  return result;
}

void sub_22E624F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22E624F6C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22E624F84(uint32x2_t *a1, void *a2, uint64_t a3, void *a4)
{
  v8 = a4;
  v22 = v8;
  if (!a2 || v8)
  {
    objc_storeStrong((*(*&a1[5] + 8) + 40), a4);
  }

  else
  {
    v11 = a1[4];
    v12 = *(*&v11 + 33176);
    v13 = objc_msgSend_acResult(*&v11, v9, v10);
    *(*(*&a1[6] + 8) + 24) = AcANSTPostProcessNetOutputs(v12, a1 + 7, *&v11 + 33184, a2, a3, (*&v11 + 36904), v13, v14, v15, v16, v17, v18, v19, v20, v21);
  }
}

__CFString *ANSTActionToNSString(unint64_t a1)
{
  if (a1 < 0x36)
  {
    return off_27884FDF0[a1];
  }

  v2 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_22E65BEC0();
  }

  return @"UNEXPECTED_ENUM_VALUE";
}

__CFString *ANSTActionClassifierVersionToNSString(uint64_t a1)
{
  if (a1 == 0x10000)
  {
    return @"Version1";
  }

  v2 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_22E65BF40();
  }

  return @"UNEXPECTED_ENUM_VALUE";
}

void sub_22E625F28(void *a1, uint64_t a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22E625FC4;
  v6[3] = &unk_27884FDA8;
  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  v8 = a2;
  v6[4] = v2;
  v7 = v4;
  objc_msgSend_performDataAccessWithOptions_usingBlock_error_(v3, v5, 0, v6, 0);
}

void sub_22E625FC4(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 48))
  {
    v22 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_22E65C13C(v22, v23, v24, v25, v26, v27, v28, v29);
    }

    goto LABEL_20;
  }

  if (!a2)
  {
    v22 = _ANSTLoggingGetOSLogForCategoryANSTKit();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_22E65C0C4(v22, v30, v31, v32, v33, v34, v35, v36);
    }

LABEL_20:

    return;
  }

  LODWORD(v38) = 1;
  v37 = *(*(a1 + 32) + 56);
  cblas_sgemv_NEWLAPACK();
  v3 = *(*(a1 + 32) + 56);
  cblas_sscal_NEWLAPACK();
  v4 = 0;
  v5 = *(a1 + 32);
  v6 = *(v5 + 56);
  v7 = *(v5 + 64);
  v8 = v6 + 1;
  v9 = *v6;
  do
  {
    if (v9 < v8[v4])
    {
      v9 = v8[v4];
    }

    ++v4;
  }

  while (v4 < 52);
  for (i = 0; i != 53; ++i)
  {
    *(v7 + i * 4) = v6[i] - v9;
  }

  v11 = 0;
  v12 = 0.0;
  do
  {
    v12 = v12 + expf(*(v7 + v11));
    v11 += 4;
  }

  while (v11 != 212);
  v13 = 0;
  do
  {
    *(v7 + v13) = expf(*(v7 + v13)) / v12;
    v13 += 4;
  }

  while (v13 != 212);
  for (j = 0; j != 53; ++j)
  {
    v15 = [ANSTActionPrediction alloc];
    v17 = objc_msgSend_initWithAction_(v15, v16, j + 1, v37, v38);
    LODWORD(v18) = *(*(*(a1 + 32) + 64) + 4 * j);
    objc_msgSend_setConfidence_(v17, v19, v20, v18);
    objc_msgSend_addObject_(*(a1 + 40), v21, v17);
  }
}

__CFString *ANSTForegroundSegmentationVersionToNSString(uint64_t a1)
{
  if (a1 == 0x10000)
  {
    return @"Version1";
  }

  if (a1 == 0x20000)
  {
    return @"Version2";
  }

  v2 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_22E65C2B4();
  }

  return @"UNEXPECTED_ENUM_VALUE";
}

__CFString *ANSTForegroundSegmentationResolutionToNSString(unint64_t a1)
{
  if (a1 < 4)
  {
    return off_27884FFA0[a1];
  }

  v2 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_22E65C334();
  }

  return @"UNEXPECTED_ENUM_VALUE";
}

__CFString *ANSTExclaveAlgorithmVersionToNSString(uint64_t a1)
{
  if (a1 <= 66435)
  {
    switch(a1)
    {
      case 65543:
        return @"ANST4EK v1.7.1";
      case 65544:
        return @"ANST4EK v1.8";
      case 65717:
        return @"ANST4EK v1.8.1";
    }
  }

  else if (a1 > 66446)
  {
    if (a1 == 66447)
    {
      return @"ANST4EK v1.9.1.1";
    }

    if (a1 == 66456)
    {
      return @"ANST4EK v1.9.2";
    }
  }

  else
  {
    if (a1 == 66436)
    {
      return @"ANST4EK v1.9";
    }

    if (a1 == 66446)
    {
      return @"ANST4EK v1.9.1";
    }
  }

  v2 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_22E65C3B4();
  }

  return @"UNEXPECTED_ENUM_VALUE";
}

__CFString *ANSTExclaveAlgorithmResolutionToNSString(unint64_t a1)
{
  if (a1 < 3)
  {
    return off_27884FFC0[a1];
  }

  v2 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_22E65C434();
  }

  return @"UNEXPECTED_ENUM_VALUE";
}

void sub_22E627FA0(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = objc_msgSend_inputMemoryDescriptor(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_sizeInBytes(v7, v4, v5);
  bzero(a2, v6);
}

__CFString *ANSTPersonInstanceSegmentationVersionToNSString(uint64_t a1, const char *a2)
{
  if (a1 == 0x10000)
  {
    v3 = @"Version1";
  }

  else
  {
    v3 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"UnknownVersion(0x%zx)", a1);
  }

  return v3;
}

__CFString *ANSTPersonInstanceSegmentationResolutionToNSString(uint64_t a1)
{
  if (!a1)
  {
    return @"448x576";
  }

  v2 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_22E65C924(a1, v2);
  }

  return @"UNEXPECTED_ENUM_VALUE";
}

__CFString *ANSTVideoFeatureExtractorVersionToNSString(uint64_t a1)
{
  if (a1 == 0x10000)
  {
    return @"Version1";
  }

  v2 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_22E65CA98();
  }

  return @"UNEXPECTED_ENUM_VALUE";
}

__CFString *ANSTInputModalityToNSString(uint64_t a1, const char *a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = @"Audio";
    }

    else
    {
      v3 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"UnknownModality(0x%zx)", a1);
    }
  }

  else
  {
    v3 = @"Video";
  }

  return v3;
}

__CFString *ANSTVideoFoundationModelVersionToNSString(uint64_t a1)
{
  switch(a1)
  {
    case 65536:
      return @"Version1";
    case 196609:
      return @"Gesture_v1";
    case 131073:
      return @"Fitness_v1";
  }

  v3 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    sub_22E65CD2C(a1, v3);
  }

  return @"UNEXPECTED_ENUM_VALUE";
}

uint64_t simResizeVisPipeBinning(uint64_t *a1, uint64_t *a2, float a3, float a4)
{
  v4 = vcvtas_u32_f32(1.0 / a3);
  LODWORD(v5) = (*(a1 + 3) / v4) & 0xFFFFFFFE;
  v7 = *(a2 + 2);
  v6 = *(a2 + 3);
  if (v6 >= v5)
  {
    v5 = v5;
  }

  else
  {
    v5 = v6;
  }

  v8 = vcvtas_u32_f32(1.0 / a4);
  v9 = *(a1 + 2) / v8;
  if (v7 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v7;
  }

  if (!v10 || !v5)
  {
    return 1;
  }

  v11 = *a2;
  v12 = *(a2 + 4);
  v13 = *a1;
  v14 = *(a1 + 4);
  v15 = v4 >> 1;
  v16 = v8 >> 1;
  if (v4 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = v4;
  }

  if (v8 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v8;
  }

  if (v4 >= 4)
  {
    v29 = 0;
    v30 = 0;
    v60 = v12;
    v61 = v11;
    v62 = v10;
    while (1)
    {
      v31 = 0;
      v32 = 0;
      v33 = (v11 + (v12 * v30));
      v63 = v30;
      v34 = v30 * v8;
      do
      {
        v36 = 0;
        v37 = 0;
        v38 = 2 * v31;
        v39 = v13 + 16 + v38;
        v40 = v13 + v38;
        v41 = v29;
        do
        {
          if (v4 >= 0x10)
          {
            v44 = (v39 + v41);
            v45 = 0uLL;
            v46 = v17 & 0xFFFFFFF0;
            v47 = 0uLL;
            v48 = 0uLL;
            v49 = 0uLL;
            do
            {
              v50 = v44[-1];
              v47 = vaddw_high_u16(v47, v50);
              v45 = vaddw_u16(v45, *v50.i8);
              v49 = vaddw_high_u16(v49, *v44);
              v48 = vaddw_u16(v48, *v44->i8);
              v44 += 2;
              v46 -= 16;
            }

            while (v46);
            v42 = vaddvq_s32(vaddq_s32(vaddq_s32(v48, v45), vaddq_s32(v49, v47)));
            if ((v17 & 0xFFFFFFF0) == v17)
            {
              goto LABEL_34;
            }

            v43 = v17 & 0xFFFFFFF0;
            v51 = v43;
            if ((v17 & 0xC) == 0)
            {
              goto LABEL_44;
            }
          }

          else
          {
            v42 = 0;
            v43 = 0;
          }

          v52 = v42;
          v53 = v43 - (v17 & 0xFFFFFFFC);
          v54 = (v40 + v41 + 2 * v43);
          do
          {
            v55 = *v54++;
            v52 = vaddw_u16(v52, v55);
            v53 += 4;
          }

          while (v53);
          v42 = vaddvq_s32(v52);
          v51 = v17 & 0xFFFFFFFC;
          if (v51 != v17)
          {
LABEL_44:
            v56 = (v13 + 2 * v32 * v4 + (v14 * (v34 + v36)) + 2 * v51);
            v57 = v17 - v51;
            do
            {
              v58 = *v56++;
              v42 += v58;
              --v57;
            }

            while (v57);
          }

LABEL_34:
          v37 += (v42 + v15) / v4;
          ++v36;
          v41 += v14;
        }

        while (v36 != v18);
        v35 = (v37 + v16) / v8;
        if (v35 >= 0xFFFF)
        {
          v35 = 0xFFFF;
        }

        *v33++ = v35 & ~(v35 >> 31);
        ++v32;
        v31 += v4;
      }

      while (v32 < v5);
      v30 = v63 + 1;
      v12 = v60;
      v29 += v8 * v14;
      v11 = v61;
      if (v63 + 1 >= v62)
      {
        return 1;
      }
    }
  }

  v19 = 0;
  for (i = 0; i < v10; ++i)
  {
    v21 = 0;
    v22 = (v11 + (v12 * i));
    do
    {
      v24 = 0;
      v25 = v19;
      v26 = v18;
      do
      {
        v27 = (v13 + 2 * v21 * v4 + v25);
        v28 = *v27;
        if (v4 >= 2)
        {
          v28 += v27[1];
          if (v4 != 2)
          {
            v28 += v27[2];
          }
        }

        v24 += (v28 + v15) / v4;
        v25 += v14;
        --v26;
      }

      while (v26);
      v23 = (v24 + v16) / v8;
      if (v23 >= 0xFFFF)
      {
        v23 = 0xFFFF;
      }

      *v22++ = v23 & ~(v23 >> 31);
      ++v21;
    }

    while (v21 < v5);
    v19 += v8 * v14;
  }

  return 1;
}

uint64_t simResizeVisPipeArea(uint64_t *a1, uint64_t *a2, uint64_t *a3, float a4, float a5, float a6, float a7)
{
  v9 = *(a2 + 3);
  v125 = *(a2 + 2);
  v126 = *(a1 + 2);
  if (v126 && v9)
  {
    v10 = 0;
    v11 = vcvtas_u32_f32(65536.0 / a4);
    LODWORD(v7) = vcvtas_u32_f32(a4 * 65536.0);
    v8 = vcvtas_u32_f32(a6 * 8.0) << 13;
    v12 = *a1;
    v13 = *(a1 + 4);
    v14 = *a3;
    v15 = *(a1 + 3) - 1;
    v16 = *(a3 + 4);
    do
    {
      v17 = 0;
      v18 = v12 + (v13 * v10);
      v19 = (v14 + (v16 * v10));
      v20 = v8 + v11;
      v21 = v8;
      do
      {
        v25 = HIWORD(v21);
        v26 = HIWORD(v21) + 1;
        v27 = 0x10000 - v21;
        v21 += v11;
        v28 = HIWORD(v21);
        if (v15 >= v25)
        {
          v29 = v25;
        }

        else
        {
          v29 = v15;
        }

        v30 = v27 * *(v18 + 2 * v29);
        if (v26 >= v28)
        {
          goto LABEL_6;
        }

        v31 = ~v25;
        v32 = ~v25 + ((v8 + v11 + v17 * v11) >> 16);
        if (v32 <= 1)
        {
          goto LABEL_27;
        }

        v33 = 0;
        v34 = (v31 + HIWORD(v20)) & 0xFFFFFFFE;
        v35 = v32 & 0xFFFFFFFE;
        v36 = v26;
        do
        {
          if (v15 >= v36)
          {
            v37 = v36;
          }

          else
          {
            v37 = v15;
          }

          if (v15 >= v36 + 1)
          {
            v38 = v36 + 1;
          }

          else
          {
            v38 = v15;
          }

          v30 += *(v18 + 2 * v37) << 16;
          v33 += *(v18 + 2 * v38) << 16;
          v36 += 2;
          v34 -= 2;
        }

        while (v34);
        v30 += v33;
        if (v32 != v35)
        {
          v26 += v35;
          do
          {
LABEL_27:
            if (v15 >= v26)
            {
              v39 = v26;
            }

            else
            {
              v39 = v15;
            }

            v30 += *(v18 + 2 * v39) << 16;
            ++v26;
          }

          while (v26 < v28);
        }

LABEL_6:
        if (v15 >= v28)
        {
          v22 = HIWORD(v21);
        }

        else
        {
          v22 = v15;
        }

        v23 = *(v18 + 2 * v22);
        v24 = ((v30 + v21 * v23) * v7 + (((v30 + v21 * v23) * v7) >> 63) + 0x80000000) >> 32;
        if (v24 >= 0xFFFF)
        {
          v24 = 0xFFFFLL;
        }

        *v19++ = v24 & ~(v24 >> 63);
        ++v17;
        v20 += v11;
      }

      while (v17 != v9);
      ++v10;
    }

    while (v10 != v126);
  }

  if (v125 && v9)
  {
    v40 = 0;
    v41 = 0;
    v42 = vcvtas_u32_f32(65536.0 / a5);
    LODWORD(v8) = vcvtas_u32_f32(a5 * 65536.0);
    v124 = *a2;
    v43 = *(a2 + 4);
    v44 = v126 - 1;
    v45 = *a3;
    v46 = *(a3 + 4);
    v47 = vcvtas_u32_f32(a7 * 8.0) << 13;
    v48 = v47 + v42;
    v49 = vdupq_n_s32(v8);
    *&v50.f64[0] = 0x8000000080000000;
    *&v50.f64[1] = 0x8000000080000000;
    v51 = vnegq_f64(v50);
    v52.i64[0] = 0xFFFFLL;
    v52.i64[1] = 0xFFFFLL;
    v119 = v47 + v42;
    v121 = v43;
    v123 = v42;
    while (1)
    {
      v53 = HIWORD(v47);
      v54 = HIWORD(v47) + 1;
      if (HIWORD(v48) >= v44)
      {
        v55 = v44;
      }

      else
      {
        v55 = HIWORD(v48);
      }

      if (v53 >= v44)
      {
        v56 = v44;
      }

      else
      {
        v56 = HIWORD(v47);
      }

      v57 = v46 * v56;
      v58 = (v45 + v57);
      v59 = (v124 + (v43 * v41));
      v60 = (v119 + v41 * v42) >> 16;
      if (v60 >= v44)
      {
        v61 = v44;
      }

      else
      {
        v61 = (v119 + v41 * v42) >> 16;
      }

      v62 = 0x10000 - v47;
      v47 += v42;
      v63 = HIWORD(v47);
      if (v44 >= HIWORD(v47))
      {
        v64 = HIWORD(v47);
      }

      else
      {
        v64 = v44;
      }

      v127 = v40;
      if (v54 < v63)
      {
        v65 = 0;
        v66 = ~v53;
        v67 = (~v53 + HIWORD(v48)) & 0xFFFFFFFE;
        v68 = v45 + v46 * v64;
        v69 = v60 + v66;
        v70 = (v60 + v66) & 0xFFFFFFFE;
        while (1)
        {
          v73 = v62 * v58->u16[v65];
          v74 = v45 + 2 * v65;
          if (v69 >= 2)
          {
            v76 = 0;
            v77 = v54;
            v78 = v67;
            do
            {
              if (v44 >= v77)
              {
                v79 = v77;
              }

              else
              {
                v79 = v44;
              }

              if (v44 >= v77 + 1)
              {
                v80 = v77 + 1;
              }

              else
              {
                v80 = v44;
              }

              v73 += *(v74 + v79 * v46) << 16;
              v76 += *(v74 + v80 * v46) << 16;
              v77 += 2;
              v78 -= 2;
            }

            while (v78);
            v73 += v76;
            v75 = v54 + v70;
            if (v69 == v70)
            {
              goto LABEL_50;
            }
          }

          else
          {
            v75 = v54;
          }

          do
          {
            if (v44 >= v75)
            {
              v81 = v75;
            }

            else
            {
              v81 = v44;
            }

            v73 += *(v74 + v81 * v46) << 16;
            ++v75;
          }

          while (v75 < v63);
LABEL_50:
          v71 = (v73 + v47 * *(v68 + 2 * v65)) * v8;
          v72 = (v71 + (v71 >> 63) + 0x80000000) >> 32;
          if (v72 >= 0xFFFF)
          {
            v72 = 0xFFFFLL;
          }

          *v59 = v72 & ~(v72 >> 63);
          v59 += 2;
          if (++v65 == v9)
          {
            goto LABEL_35;
          }
        }
      }

      v82 = v46 * v55;
      if (v9 <= 7)
      {
        break;
      }

      if (&v59[-v45 - v46 * v61] < 0x10 || (v59 - v58) < 0x10)
      {
        break;
      }

      v93 = (v45 + v82);
      v94 = (v124 + v40);
      v95 = vdupq_n_s32(v62);
      v96 = vdupq_n_s16(v47);
      v97 = v9 & 0xFFFFFFF8;
      do
      {
        v98 = *v58++;
        v99 = vmulq_s32(v95, vmovl_high_u16(v98));
        v100 = vmulq_s32(v95, vmovl_u16(*v98.i8));
        v101 = *v93++;
        v102 = vmlal_u16(v100, *v96.i8, *v101.i8);
        v103 = vmlal_high_u16(v99, v96, v101);
        v104 = vmlal_high_u32(v51, v49, v102);
        v105 = vmlal_u32(v51, *v49.i8, *v102.i8);
        v106 = vmlal_high_u32(v51, v49, v103);
        v107 = vshrq_n_u64(vmlal_u32(v51, *v49.i8, *v103.i8), 0x20uLL);
        v108 = vshrq_n_u64(v106, 0x20uLL);
        v109 = vshrq_n_u64(v105, 0x20uLL);
        v110 = vshrq_n_u64(v104, 0x20uLL);
        v111 = vcgtq_u64(v52, v110);
        v112 = vornq_s8(vandq_s8(v110, v111), v111);
        v113 = vcgtq_u64(v52, v109);
        v114 = vornq_s8(vandq_s8(v109, v113), v113);
        v115 = vcgtq_u64(v52, v108);
        v116 = vornq_s8(vandq_s8(v108, v115), v115);
        v117 = vcgtq_u64(v52, v107);
        *v94++ = vuzp1q_s16(vuzp1q_s32(v114, v112), vuzp1q_s32(vornq_s8(vandq_s8(v107, v117), v117), v116));
        v97 -= 8;
      }

      while (v97);
      if ((v9 & 0xFFFFFFF8) != v9)
      {
        v84 = v9 & 0xFFFFFFF8;
        v59 += 2 * v84;
LABEL_75:
        v85 = v9 - v84;
        v86 = 2 * v84;
        v87 = (v45 + v82 + v86);
        v88 = (v45 + v57 + v86);
        do
        {
          v89 = *v88++;
          v90 = v62 * v89;
          v91 = *v87++;
          v92 = (v8 * (v90 + v47 * v91) + 0x80000000) >> 32;
          if (v92 >= 0xFFFF)
          {
            LOWORD(v92) = -1;
          }

          *v59 = v92;
          v59 += 2;
          --v85;
        }

        while (v85);
      }

LABEL_35:
      ++v41;
      v42 = v123;
      v48 += v123;
      v43 = v121;
      v40 = v127 + v121;
      if (v41 == v125)
      {
        return 1;
      }
    }

    v84 = 0;
    goto LABEL_75;
  }

  return 1;
}

uint64_t simResizeVisPipeBilinear(uint64_t *a1, uint64_t *a2, float a3, float a4, float a5, float a6)
{
  v6 = *(a2 + 2);
  if (v6)
  {
    v7 = *(a2 + 3);
    if (v7)
    {
      v8 = 0;
      v9 = vcvtas_u32_f32(65536.0 / a3);
      v10 = vcvtas_u32_f32(65536.0 / a4);
      v11 = *(a1 + 3);
      v12 = vcvtas_u32_f32(a5 * 8.0) << 13;
      v13 = *(a1 + 2) - 1;
      v14 = *a1;
      v15 = *(a1 + 4);
      v16 = *a2;
      v17 = *(a2 + 4);
      v18 = v11 - 1;
      v19 = vcvtas_u32_f32(a6 * 8.0) << 13;
      do
      {
        v20 = HIWORD(v19);
        if (v13 >= HIWORD(v19))
        {
          v21 = HIWORD(v19);
        }

        else
        {
          v21 = v13;
        }

        v22 = v14 + v15 * v21;
        if (v13 >= v20 + 1)
        {
          v23 = v20 + 1;
        }

        else
        {
          v23 = v13;
        }

        v24 = v14 + v15 * v23;
        v25 = (v16 + (v17 * v8));
        v26 = v7;
        v27 = v12;
        do
        {
          v28 = HIWORD(v27);
          if (v18 >= HIWORD(v27))
          {
            v29 = HIWORD(v27);
          }

          else
          {
            v29 = v18;
          }

          if (v18 >= v28 + 1)
          {
            v30 = v28 + 1;
          }

          else
          {
            v30 = v18;
          }

          v31 = *(v22 + 2 * v29);
          v32 = (*(v22 + 2 * v30) - v31) * v27 + (v31 << 16);
          v33 = *(v24 + 2 * v29);
          v34 = (*(v24 + 2 * v30) - v33) * v27 + (v33 << 16);
          v35 = ((v32 + (v32 >> 31) + 0x8000) & 0xFFFF0000) + (((v34 + (v34 >> 31) + 0x8000) >> 16) - ((v32 + (v32 >> 31) + 0x8000) >> 16)) * v19;
          *v25++ = ((v35 + (v35 >> 31) + 0x8000) >> 16) & ~((v35 + (v35 >> 31) + 0x8000) >> 31);
          v27 += v9;
          --v26;
        }

        while (v26);
        ++v8;
        v19 += v10;
      }

      while (v8 != v6);
    }
  }

  return 1;
}

uint64_t simResizeVisPipe(__int128 *a1, uint64_t a2, uint64_t *a3, int a4, unsigned int a5, float a6, float a7, float a8, float a9)
{
  v10 = a1 + 3;
  v9 = *(a1 + 3);
  if (!v9)
  {
    return 0;
  }

  v11 = a1 + 2;
  v12 = *(a1 + 2);
  if (!v12)
  {
    return 0;
  }

  if (*(a2 + 12))
  {
    v13 = *(a2 + 8) == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v14 = (a1 + 1);
    if (!a5)
    {
      if (a4 != 2)
      {
        goto LABEL_76;
      }

LABEL_12:
      v17 = vcvtas_u32_f32(1.0 / a6);
      LODWORD(v18) = (*v10 / v17) & 0xFFFFFFFE;
      v20 = *(a2 + 8);
      v19 = *(a2 + 12);
      if (v19 >= v18)
      {
        v18 = v18;
      }

      else
      {
        v18 = v19;
      }

      v21 = vcvtas_u32_f32(1.0 / a7);
      v22 = *v11 / v21;
      if (v20 >= v22)
      {
        v23 = v22;
      }

      else
      {
        v23 = v20;
      }

      if (!v23 || !v18)
      {
        goto LABEL_79;
      }

      v24 = *a2;
      v25 = *(a2 + 16);
      v26 = *a1;
      v27 = *v14;
      v28 = v17 >> 1;
      v29 = v21 >> 1;
      if (v17 <= 1)
      {
        v30 = 1;
      }

      else
      {
        v30 = v17;
      }

      if (v21 <= 1)
      {
        v31 = 1;
      }

      else
      {
        v31 = v21;
      }

      if (v17 < 4)
      {
        v32 = 0;
        for (i = 0; i < v23; ++i)
        {
          v34 = 0;
          v35 = (v24 + (v25 * i));
          do
          {
            v37 = 0;
            v38 = v32;
            v39 = v31;
            do
            {
              v40 = (v26 + 2 * v34 * v17 + v38);
              v41 = *v40;
              if (v17 >= 2)
              {
                v41 += v40[1];
                if (v17 != 2)
                {
                  v41 += v40[2];
                }
              }

              v37 += (v41 + v28) / v17;
              v38 += v27;
              --v39;
            }

            while (v39);
            v36 = (v37 + v29) / v21;
            if (v36 >= 0xFFFF)
            {
              v36 = 0xFFFF;
            }

            *v35++ = v36 & ~(v36 >> 31);
            ++v34;
          }

          while (v34 < v18);
          v32 += v21 * v27;
        }

LABEL_79:
        if (!a5)
        {
          return 1;
        }

        v91 = *a2;
        v92 = ((*(a2 + 8) - 1) * *(a2 + 16));
        v93 = 2 * *(a2 + 12);
        v94 = (*a2 + v93 + v92);
        if (*a2 == v94)
        {
          return 1;
        }

        v95 = v93 + v92 - 2;
        if (v95 >= 6)
        {
          v96 = (v95 >> 1) + 1;
          if (v95 < 0x1E)
          {
            v97 = 0;
LABEL_88:
            v102 = vdupq_n_s32(a5);
            v103 = v97 - (v96 & 0xFFFFFFFFFFFFFFFCLL);
            v104 = (v91->i64 + 2 * v97);
            do
            {
              v105.i32[0] = *v104 & 0xFFF0FFF;
              v105.i16[2] = HIDWORD(*v104) & 0xFFF;
              v105.i16[3] = v105.i16[2];
              *v104++ = vmovn_s32(vshlq_u32(vmovl_u16(v105), v102));
              v103 += 4;
            }

            while (v103);
            if (v96 == (v96 & 0xFFFFFFFFFFFFFFFCLL))
            {
              return 1;
            }

            v91 = (v91 + 2 * (v96 & 0xFFFFFFFFFFFFFFFCLL));
            goto LABEL_93;
          }

          v97 = v96 & 0xFFFFFFFFFFFFFFF0;
          v98 = vdupq_n_s32(a5);
          v99 = v91 + 1;
          v100 = v96 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v101.i32[0] = *v99 & 0xFFF0FFF;
            v101.i16[2] = HIDWORD(v99->i64[0]) & 0xFFF;
            v101.i16[3] = v101.i16[2];
            v101.i32[2] = v99->i64[1] & 0xFFF0FFF;
            v101.i16[6] = v101.i16[2];
            v101.i16[7] = v101.i16[2];
            v99[-1] = vuzp1q_s16(vshlq_u32(vmovl_u16((v99[-1].i64[0] & 0xFFF0FFF0FFF0FFFLL)), v98), vshlq_u32(vmovl_high_u16((*&v99[-1] & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL))), v98));
            *v99 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v101.i8), v98), vshlq_u32(vmovl_high_u16(v101), v98));
            v99 += 2;
            v100 -= 16;
          }

          while (v100);
          if (v96 == v97)
          {
            return 1;
          }

          if ((v96 & 0xC) != 0)
          {
            goto LABEL_88;
          }

          v91 = (v91 + 2 * v97);
        }

        do
        {
LABEL_93:
          v91->i16[0] = (v91->i16[0] & 0xFFF) << a5;
          v91 = (v91 + 2);
        }

        while (v91 != v94);
        return 1;
      }

      v59 = 0;
      v60 = 0;
      v108 = *a2;
      v109 = v23;
      v107 = *(a2 + 16);
LABEL_55:
      v61 = 0;
      v62 = 0;
      v63 = (v24 + (v25 * v60));
      v111 = v60;
      v64 = v60 * v21;
LABEL_59:
      v66 = 0;
      v67 = 0;
      v68 = 2 * v61;
      v69 = v26 + 16 + v68;
      v70 = v26 + v68;
      v71 = v59;
      while (1)
      {
        v72 = v71;
        if (v17 < 0x10)
        {
          break;
        }

        v75 = (v69 + v71);
        v76 = 0uLL;
        v77 = v30 & 0xFFFFFFF0;
        v78 = 0uLL;
        v79 = 0uLL;
        v80 = 0uLL;
        do
        {
          v81 = v75[-1];
          v78 = vaddw_high_u16(v78, v81);
          v76 = vaddw_u16(v76, *v81.i8);
          v80 = vaddw_high_u16(v80, *v75);
          v79 = vaddw_u16(v79, *v75->i8);
          v75 += 2;
          v77 -= 16;
        }

        while (v77);
        v73 = vaddvq_s32(vaddq_s32(vaddq_s32(v79, v76), vaddq_s32(v80, v78)));
        if ((v30 & 0xFFFFFFF0) == v30)
        {
          goto LABEL_60;
        }

        v74 = v30 & 0xFFFFFFF0;
        v82 = v74;
        if ((v30 & 0xC) != 0)
        {
          goto LABEL_67;
        }

LABEL_70:
        v87 = (v26 + 2 * v62 * v17 + ((v64 + v66) * v27) + 2 * v82);
        v88 = v30 - v82;
        do
        {
          v89 = *v87++;
          v73 += v89;
          --v88;
        }

        while (v88);
LABEL_60:
        v67 += (v73 + v28) / v17;
        ++v66;
        v71 = v72 + v27;
        if (v66 == v31)
        {
          v65 = (v67 + v29) / v21;
          if (v65 >= 0xFFFF)
          {
            v65 = 0xFFFF;
          }

          *v63++ = v65 & ~(v65 >> 31);
          ++v62;
          v61 += v17;
          if (v62 >= v18)
          {
            v60 = v111 + 1;
            v25 = v107;
            v59 += v21 * v27;
            v24 = v108;
            if (v111 + 1 >= v109)
            {
              goto LABEL_79;
            }

            goto LABEL_55;
          }

          goto LABEL_59;
        }
      }

      v73 = 0;
      v74 = 0;
LABEL_67:
      v83 = v73;
      v84 = v74 - (v30 & 0xFFFFFFFC);
      v85 = (v70 + v72 + 2 * v74);
      do
      {
        v86 = *v85++;
        v83 = vaddw_u16(v83, v86);
        v84 += 4;
      }

      while (v84);
      v73 = vaddvq_s32(v83);
      v82 = v30 & 0xFFFFFFFC;
      if (v82 == v30)
      {
        goto LABEL_60;
      }

      goto LABEL_70;
    }

    v15 = *v14;
    if (*v14 * v12)
    {
      operator new();
    }

    v112 = *a1;
    v113 = *(a1 + 2);
    *&v112 = 0;
    v42 = *a1;
    v43 = ((v12 - 1) * v15);
    v44 = 2 * v9;
    v45 = (*a1 + v44 + v43);
    if (*a1 != v45)
    {
      v46 = v44 + v43 - 2;
      if (v46 < 6)
      {
        v50 = 0;
        goto LABEL_74;
      }

      if (-v42 < 0x20)
      {
        v50 = 0;
        goto LABEL_74;
      }

      v47 = (v46 >> 1) + 1;
      v48 = vdupq_n_s32(a5);
      if (v46 >= 0x1E)
      {
        v49 = v47 & 0xFFFFFFFFFFFFFFF0;
        v51 = (v42 + 16);
        v52 = 16;
        v53 = vnegq_s32(v48);
        v54 = v47 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v55 = *&vuzp1q_s16(vshlq_u32(vmovl_u16(*v51), v53), vshlq_u32(vmovl_high_u16(*v51->i8), v53)) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL);
          *(v52 - 16) = *&vuzp1q_s16(vshlq_u32(vmovl_u16(v51[-2]), v53), vshlq_u32(vmovl_high_u16(*v51[-2].i8), v53)) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL);
          *v52 = v55;
          v51 += 4;
          v52 += 32;
          v54 -= 16;
        }

        while (v54);
        if (v47 == v49)
        {
          goto LABEL_75;
        }

        if ((v47 & 0xC) == 0)
        {
          v42 += 2 * v49;
          v50 = (2 * v49);
          do
          {
LABEL_74:
            v90 = *v42;
            v42 += 2;
            *v50++ = (v90 >> a5) & 0xFFF;
          }

          while (v42 != v45);
          goto LABEL_75;
        }
      }

      else
      {
        v49 = 0;
      }

      v50 = (2 * (v47 & 0xFFFFFFFFFFFFFFFCLL));
      v56 = v49 - (v47 & 0xFFFFFFFFFFFFFFFCLL);
      v57 = (2 * v49);
      v58 = vnegq_s32(v48);
      do
      {
        *v57 = *&vmovn_s32(vshlq_u32(vmovl_u16(*(v57 + v42)), v58)) & 0xFFF0FFF0FFF0FFFLL;
        ++v57;
        v56 += 4;
      }

      while (v56);
      if (v47 != (v47 & 0xFFFFFFFFFFFFFFFCLL))
      {
        v42 += 2 * (v47 & 0xFFFFFFFFFFFFFFFCLL);
        goto LABEL_74;
      }
    }

LABEL_75:
    a1 = &v112;
    v10 = &v112 + 3;
    v11 = &v112 + 2;
    v14 = &v113;
    if (a4 != 2)
    {
LABEL_76:
      if (a4 == 1)
      {
        simResizeVisPipeBilinear(a1, a2, a6, a7, a8, a9);
      }

      else
      {
        simResizeVisPipeArea(a1, a2, a3, a6, a7, a8, a9);
      }

      goto LABEL_79;
    }

    goto LABEL_12;
  }

  return 1;
}

uint64_t rtcv::simResize(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, int a5, int a6, uint64_t a7, int a8, float a9, float a10, float a11, float a12, int a13, int a14)
{
  if (a5 != 1)
  {
    return 0;
  }

  v30 = v19;
  v31 = v18;
  v32 = v17;
  v33 = v16;
  v34 = v14;
  v35 = v15;
  *&v28 = a1;
  *(&v28 + 1) = __PAIR64__(a2, a3);
  v29 = a4 | 0x500000000;
  v26 = v28;
  v27 = v29;
  if (a4 * a3)
  {
    operator new();
  }

  *&v26 = 0;
  v21 = a7;
  v22 = a13;
  v23 = a8;
  v24 = a14;
  v25 = 5;
  if ((a6 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return simResizeVisPipe(&v28, &v21, &v26, dword_22E662680[a6 - 1], 2u, a9, a10, a11, a12);
  }
}

BOOL rtcv::simResize(void *a1, unsigned int a2, unsigned int a3, unsigned int a4, int a5, int a6, int a7, void *a8, unsigned int a9, unsigned int a10, unsigned int a11)
{
  if (a6 | a5 | a7)
  {
    return 0;
  }

  v21 = v11;
  v22 = v12;
  bzero(a8, a11 * a10);
  src.data = a1;
  src.height = a3;
  src.width = a2;
  src.rowBytes = a4;
  v19.data = a8;
  v19.height = a10;
  v19.width = a9;
  v19.rowBytes = a11;
  return vImageScale_ARGB8888(&src, &v19, 0, 8u) == 0;
}

BOOL rtcv::simCropResize(void *a1, unsigned int a2, unsigned int a3, unsigned int a4, int a5, int a6, int a7, void *a8, float a9, float a10, float a11, unsigned int a12, unsigned int a13, unsigned int a14)
{
  if (a9 < 0.0 || (a6 | a5 | a7) != 0)
  {
    return 0;
  }

  v18 = 0;
  if ((a2 - 1) >= a9 && a10 >= 0.0)
  {
    if ((a3 - 1) < a10)
    {
      return 0;
    }

    v22 = v14;
    v23 = v15;
    v21.data = a1;
    v21.height = a3;
    v21.width = a2;
    v21.rowBytes = a4;
    dest.data = a8;
    dest.height = a13;
    dest.width = a12;
    dest.rowBytes = a14;
    transform.a = a11;
    transform.b = 0.0;
    transform.c = 0.0;
    transform.d = a11;
    transform.tx = -(a11 * a9);
    transform.ty = a13 - (a11 * (a3 - a10));
    return vImageAffineWarp_ARGB8888(&v21, &dest, 0, &transform, 0, 8u) == 0;
  }

  return v18;
}

uint64_t bmBufferResizeCHW(uint64_t result, int a2, unsigned int a3, uint64_t a4)
{
  if (!a2)
  {
    v4 = *(result + 12);
    v5 = *(result + 8) / a3;
    v6 = *(result + 16);
    v7 = *(a4 + 16);
    v8 = v6 * (v5 - 1);
    v9 = *(a4 + 8) / a3;
    v10 = (v7 * (v9 - 1));
    v11 = 2 * v4;
    v12 = 2 * v4 - 2;
    v13 = 2 * v4 - 1;
    if (v9 < 2)
    {
      if (a3 <= 1)
      {
        v48 = 1;
      }

      else
      {
        v48 = a3;
      }

      if (v11)
      {
        for (i = 0; i != v48; ++i)
        {
          v50 = 0;
          v51 = *result + v8 + i * v5 * *(result + 16);
          v52 = *a4 + v10 + (i * v9 * *(a4 + 16));
          do
          {
            v53 = v50 >> 1;
            if (v53 + 1 >= v4)
            {
              v54 = v50 >> 1;
            }

            else
            {
              v54 = v53 + 1;
            }

            v55 = *(v51 + v53);
            v56 = 2 * *(v51 + v54);
            if ((v50 & 1) == 0)
            {
              v56 = 0;
            }

            v57 = ((2 * v55) << ((v50 & 1) == 0)) + v56;
            v58 = v57 + 2;
            v59 = v57 + 5;
            if (v58 >= 0)
            {
              v59 = v58;
            }

            *(v52 + v50++) = v59 >> 2;
          }

          while (v13 != v50);
          *(v52 + v13) = *(v52 + v12);
        }
      }

      else
      {
        v64 = 0;
        do
        {
          v65 = *a4 + v10 + (v64 * v9 * *(a4 + 16));
          *(v65 + 0xFFFFFFFFLL) = *(v65 + v12);
          ++v64;
          --v48;
        }

        while (v48);
      }
    }

    else
    {
      if (a3 <= 1)
      {
        v14 = 1;
      }

      else
      {
        v14 = a3;
      }

      v68 = v14;
      if (v11)
      {
        v15 = 0;
        v67 = result;
        v66 = a4;
        do
        {
          v16 = 0;
          v17 = *result + v15 * v5 * *(result + 16);
          v18 = v15;
          v19 = *a4 + (v15 * v9 * *(a4 + 16));
          for (j = 1; j < v9; ++j)
          {
            v21 = 0;
            v22 = v19 + v7 * v16;
            v23 = v16 >> 1;
            if ((v16 >> 1) + 1 >= v5)
            {
              v24 = v16 >> 1;
            }

            else
            {
              v24 = v23 + 1;
            }

            v25 = v17 + v23 * v6;
            v26 = v17 + v24 * v6;
            if (v16)
            {
              v27 = 1;
            }

            else
            {
              v27 = 2;
            }

            do
            {
              v28 = v21 ^ 1;
              v29 = v21 >> 1;
              if (v29 + 1 >= v4)
              {
                v30 = v21 >> 1;
              }

              else
              {
                v30 = v29 + 1;
              }

              v31 = v28 & 1;
              if (v21)
              {
                v32 = v27;
              }

              else
              {
                v32 = 0;
              }

              v33 = (2 - v27) << (v28 & 1);
              if (v21)
              {
                v34 = 2 - v27;
              }

              else
              {
                v34 = 0;
              }

              v35 = (*(v25 + v29) << ((j & 1) + v31)) + v32 * *(v25 + v30) + v33 * *(v26 + v29) + v34 * *(v26 + v30);
              v36 = v35 + 2;
              v37 = v35 + 5;
              if (v36 >= 0)
              {
                v37 = v36;
              }

              *(v22 + v21++) = v37 >> 2;
            }

            while (v13 != v21);
            *(v22 + v13) = *(v22 + v12);
            ++v16;
          }

          v38 = 0;
          v39 = v17 + v6 * (v5 - 1);
          v40 = v19 + (v7 * (v9 - 1));
          do
          {
            v41 = v38 >> 1;
            if (v41 + 1 >= v4)
            {
              v42 = v38 >> 1;
            }

            else
            {
              v42 = v41 + 1;
            }

            v43 = *(v39 + v41);
            v44 = 2 * *(v39 + v42);
            if ((v38 & 1) == 0)
            {
              v44 = 0;
            }

            v45 = ((2 * v43) << ((v38 & 1) == 0)) + v44;
            v46 = v45 + 2;
            v47 = v45 + 5;
            if (v46 >= 0)
            {
              v47 = v46;
            }

            *(v40 + v38++) = v47 >> 2;
          }

          while (v13 != v38);
          *(v40 + v13) = *(v40 + v12);
          v15 = v18 + 1;
          a4 = v66;
          result = v67;
        }

        while (v15 != v68);
      }

      else
      {
        for (k = 0; k != v14; ++k)
        {
          v61 = 0;
          v62 = *a4 + (k * v9 * *(a4 + 16));
          for (m = 1; m < v9; ++m)
          {
            result = v62 + v61;
            *(result + 0xFFFFFFFFLL) = *(result + v12);
            v61 += v7;
          }

          *(v62 + v10 + 0xFFFFFFFFLL) = *(v62 + v10 + v12);
        }
      }
    }
  }

  return result;
}

void bmBufferPartialResizeCHW(uint64_t a1, int a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, _DWORD *a8)
{
  if (a2 == 1)
  {
    v8 = a8;
    v9 = a8[2] / a3;
    v10 = a8[4];
    v11 = (v10 * v9);
    v82 = v9;
    v81 = v11;
    if (a4 >= a5)
    {
      v67 = 0;
      if (a3 <= 1)
      {
        v68 = 1;
      }

      else
      {
        v68 = a3;
      }

      do
      {
        bzero((*v8 + (v67 * v9 * v8[4])), v81);
        v9 = v82;
        ++v67;
        --v68;
      }

      while (v68);
    }

    else if (a6 >= a7)
    {
      v69 = 0;
      if (a3 <= 1)
      {
        v70 = 1;
      }

      else
      {
        v70 = a3;
      }

      do
      {
        bzero((*v8 + (v69 * v9 * v8[4])), v81);
        v9 = v82;
        ++v69;
        --v70;
      }

      while (v70);
    }

    else
    {
      v13 = 0;
      v78 = *(a1 + 8) / a3;
      v14 = v78 - 1;
      v15 = *(a1 + 12) - 1;
      v16 = vdup_n_s32(v78 - 1);
      v17 = *(a1 + 16);
      v18 = vdup_n_s32(v17);
      v19 = vdup_n_s32(v15);
      v20 = a6;
      v72 = a4;
      v21 = a5;
      if (a3 <= 1)
      {
        v22 = 1;
      }

      else
      {
        v22 = a3;
      }

      v71 = v22;
      v77 = (v9 - 1);
      v76 = (a8[3] - 1);
      v74 = v18;
      v75 = v16;
      v73 = v19;
      do
      {
        v23 = *a1 + (v13 * v78 * *(a1 + 16));
        v24 = (*v8 + (v13 * v9 * v8[4]));
        bzero(v24, v11);
        v25 = 2.0;
        v26 = -1.0;
        v27 = v72;
        do
        {
          v28 = (v27 / v77) * v14;
          v29 = vcvtms_s32_f32(v28);
          v30 = floorf(v28);
          v31 = v28 - v30;
          v32 = v29 - 1;
          if (v14 < v29 - 1)
          {
            v32 = v78 - 1;
          }

          if (v14 >= v29)
          {
            v33 = v29;
          }

          else
          {
            v33 = v78 - 1;
          }

          if (v29 <= 0)
          {
            v32 = 0;
          }

          if (v29 < 0)
          {
            v33 = 0;
          }

          if (v31 <= 1.0)
          {
            v34 = v28 - v30;
          }

          else
          {
            v34 = 1.0;
          }

          v35 = vabds_f32(v28, v30);
          if (v31 <= 1.0)
          {
            v36 = v35;
          }

          else
          {
            v36 = 1.0;
          }

          if (v31 < 0.0)
          {
            v34 = 0.0;
          }

          v37 = v23 + v32 * v17;
          v38 = v23 + v33 * v17;
          v39 = vdup_n_s32(v29);
          v42 = vmul_s32(vbic_s8(vmin_s32(v75, vadd_s32(v39, 0x200000001)), vcgt_s32(0xFFFFFFFEFFFFFFFFLL, v39)), v74);
          v40 = v23 + v42.u32[0];
          *v42.i32 = vabds_f32(v26, v34);
          *v42.i32 = (((*v42.i32 * (*v42.i32 * 3.75)) + ((*v42.i32 * (*v42.i32 * -0.75)) * *v42.i32)) + (*v42.i32 * -6.0)) + 3.0;
          if (v31 < 0.0)
          {
            v36 = 0.0;
          }

          v43 = ((v36 * (v36 * -2.25)) + ((v36 * (v36 * 1.25)) * v36)) + 1.0;
          v44 = vabds_f32(1.0, v34);
          v45 = ((v44 * (v44 * -2.25)) + ((v44 * (v44 * 1.25)) * v44)) + 1.0;
          v46 = vabds_f32(v25, v34);
          v47 = (((v46 * (v46 * 3.75)) + ((v46 * (v46 * -0.75)) * v46)) + (v46 * -6.0)) + 3.0;
          v48 = v20;
          do
          {
            v49 = (v48 / v76) * v15;
            v50 = vcvtms_s32_f32(v49);
            v51 = floorf(v49);
            v52 = v49 - v51;
            v53 = v50 - 1;
            if (v15 < v50 - 1)
            {
              v53 = v15;
            }

            if (v15 >= v50)
            {
              v54 = v50;
            }

            else
            {
              v54 = v15;
            }

            if (v50 <= 0)
            {
              v53 = 0;
            }

            if (v50 < 0)
            {
              v54 = 0;
            }

            if (v52 <= 1.0)
            {
              v55 = v49 - v51;
            }

            else
            {
              v55 = 1.0;
            }

            v56 = vabds_f32(v49, v51);
            if (v52 > 1.0)
            {
              v56 = 1.0;
            }

            v57 = vdup_n_s32(v50);
            v58 = vbic_s8(vmin_s32(v73, vadd_s32(v57, 0x200000001)), vcgt_s32(0xFFFFFFFEFFFFFFFFLL, v57));
            if (v52 < 0.0)
            {
              v55 = 0.0;
            }

            v59 = v58.i32[0];
            v58.i32[0] = *(v37 + 4 * v58.u32[0]);
            v60 = vabds_f32(-1.0, v55);
            v61 = (((v60 * (v60 * 3.75)) + ((v60 * (v60 * -0.75)) * v60)) + (v60 * -6.0)) + 3.0;
            if (v52 < 0.0)
            {
              v56 = 0.0;
            }

            v62 = ((v56 * (v56 * -2.25)) + ((v56 * (v56 * 1.25)) * v56)) + 1.0;
            v63 = vabds_f32(1.0, v55);
            v64 = ((v63 * (v63 * -2.25)) + ((v63 * (v63 * 1.25)) * v63)) + 1.0;
            v65 = vabds_f32(v25, v55);
            v66 = (((v65 * (v65 * 3.75)) + ((v65 * (v65 * -0.75)) * v65)) + (v65 * -6.0)) + 3.0;
            v26 = -1.0;
            v25 = 2.0;
            v41 = v23 + v42.u32[1];
            *&v24[4 * v48++ + (v10 * v27)] = (((v43 * ((((v62 * *(v38 + 4 * v54)) + (v61 * *(v38 + 4 * v53))) + (v64 * *(v38 + 4 * v59))) + (v66 * *(v38 + 4 * v58.u32[1])))) + (*v42.i32 * ((((v62 * *(v37 + 4 * v54)) + (v61 * *(v37 + 4 * v53))) + (v64 * *v58.i32)) + (v66 * *(v37 + 4 * v58.u32[1]))))) + (v45 * ((((v62 * *(v40 + 4 * v54)) + (v61 * *(v40 + 4 * v53))) + (v64 * *(v40 + 4 * v59))) + (v66 * *(v40 + 4 * v58.u32[1]))))) + (v47 * ((((v62 * *(v41 + 4 * v54)) + (v61 * *(v41 + 4 * v53))) + (v64 * *(v41 + 4 * v59))) + (v66 * *(v41 + 4 * v58.u32[1]))));
          }

          while (a7 != v48);
          ++v27;
        }

        while (v27 != v21);
        ++v13;
        v8 = a8;
        v9 = v82;
        v11 = v81;
      }

      while (v13 != v71);
    }
  }
}