void sub_23F285D20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  v56 = *(v54 - 144);
  if (v56)
  {
    *(v54 - 136) = v56;
    operator delete(v56);
  }

  sub_23F131A04(&a23);
  _Unwind_Resume(a1);
}

double sub_23F286DDC(__int16 *a1, uint64_t a2)
{
  v7 = 0;
  sub_23F286EC0(&v4, v6, a1);
  if (v7 == -1)
  {
    sub_23EF41D6C();
  }

  v9 = &v8;
  (off_28518B668[v7])(&v4, &v9, v6);
  if (v7 != -1)
  {
    (off_28518B638[v7])(&v9, v6);
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

void sub_23F286E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F286EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F286EC0(uint64_t a1, uint64_t a2, __int16 *a3)
{
  _H0 = *a3;
  __asm { FCVT            S0, H0; __val }

  std::to_string(&v16, _S0);
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v16;
  }

  else
  {
    v10 = v16.__r_.__value_.__r.__words[0];
  }

  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v16.__r_.__value_.__l.__size_;
  }

  v12 = &v10[-1].__r_.__value_.__r.__words[2] + 7;
  while (size)
  {
    v13 = v12[size--];
    if (v13 != 48)
    {
      if ((*(&v16.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        goto LABEL_11;
      }

LABEL_14:
      if (size == v16.__r_.__value_.__l.__size_ - 1)
      {
        goto LABEL_15;
      }

LABEL_17:
      operator new();
    }
  }

  size = -1;
  if ((*(&v16.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  if (size != HIBYTE(v16.__r_.__value_.__r.__words[2]) - 1)
  {
    goto LABEL_17;
  }

LABEL_15:
  v17[0] = a2;
  v17[1] = &v16;
  v17[2] = a2;
  v17[3] = &v16;
  v17[4] = &v16;
  v14 = *(a2 + 24);
  if (v14 == -1)
  {
    sub_23EF41D6C();
  }

  __p = v17;
  (off_28518B680[v14])(&__p, a2);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }
}

void sub_23F2871B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F287230(uint64_t a1, __int128 *a2)
{
  sub_23F287318(**a1, a2, **(*a1 + 8));
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(v4 + 32);
  v6 = *v4;
  v7 = *(v4 + 8);
  v8 = **v4 + 1;
  **v4 = v8;
  if (v8 == *v7)
  {
    v9 = *(v6 + 1) + 1;
    *v6 = 0;
    *(v6 + 1) = v9;
    if (v9 == v7[1])
    {
      return;
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = strlen(*(**(v4 + 16) + 8 * v10));
  sub_23EF2F9B0(v3, *(**(v4 + 16) + 8 * v10), v11);
  v12 = *v4;
  v13 = **(v4 + 24);

  sub_23F09155C(v5, v3, v12, v10, v13);
}

void sub_23F287318(void *a1, __int128 *a2, unsigned int a3)
{
  v9 = -1;
  if (*(a2 + 23) < 0)
  {
    v3 = a1;
    v4 = a3;
    sub_23EF34EA4(&v7, *a2, *(a2 + 1));
    a1 = v3;
    a3 = v4;
  }

  else
  {
    v7 = *a2;
    v8 = *(a2 + 2);
  }

  *__p = v7;
  v6 = v8;
  sub_23F2AC714(a1, __p, a3);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_23F2873BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F2873D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_23F2873EC(float *a1, uint64_t a2)
{
  v7 = 0;
  sub_23EF8158C(&v4, v6, a1);
  if (v7 == -1)
  {
    sub_23EF41D6C();
  }

  v9 = &v8;
  (off_28518B668[v7])(&v4, &v9, v6);
  if (v7 != -1)
  {
    (off_28518B638[v7])(&v9, v6);
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

void sub_23F2874A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F2874BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_23F2874D0(_BYTE *result, unsigned int a2, unint64_t **a3, uint64_t a4)
{
  v5 = a3;
  if (result)
  {
    v6 = result;
    v7 = 0;
    v9 = *a3;
    v32 = (a3 + 1);
    do
    {
      v13 = *(a4 + 23);
      if (v13 >= 0)
      {
        v14 = a4;
      }

      else
      {
        v14 = *a4;
      }

      if (v13 >= 0)
      {
        v15 = *(a4 + 23);
      }

      else
      {
        v15 = *(a4 + 8);
      }

      if (v15 >= 1)
      {
        v16 = &v14[v15];
        v17 = v15;
        result = v14;
        do
        {
          result = memchr(result, 46, v17);
          if (!result)
          {
            break;
          }

          if (*result == 46)
          {
            if (result == v16)
            {
              break;
            }

            v18 = result - v14;
            v10 = v5;
            if (result - v14 != -1)
            {
              v19 = *v9;
              if (*v9 <= v18)
              {
                v19 = (result - v14);
              }

              *v9 = v19;
              v20 = *(a4 + 23);
              if ((v20 & 0x80u) != 0)
              {
                v20 = *(a4 + 8);
              }

              v15 = v20 + ~v18;
              v10 = v32;
            }

            goto LABEL_4;
          }

          ++result;
          v17 = v16 - result;
        }

        while (v16 - result >= 1);
      }

      v10 = v5;
LABEL_4:
      v11 = *v10;
      v12 = *v11;
      if (*v11 <= v15)
      {
        v12 = v15;
      }

      *v11 = v12;
      a4 += 24 * a2;
      ++v7;
    }

    while (v7 != v6);
  }

  v21 = *(a4 + 23);
  if (v21 >= 0)
  {
    v22 = a4;
  }

  else
  {
    v22 = *a4;
  }

  if (v21 >= 0)
  {
    v23 = *(a4 + 23);
  }

  else
  {
    v23 = *(a4 + 8);
  }

  if (v23 >= 1)
  {
    v24 = &v22[v23];
    v25 = v23;
    result = v22;
    do
    {
      result = memchr(result, 46, v25);
      if (!result)
      {
        break;
      }

      if (*result == 46)
      {
        if (result != v24)
        {
          v26 = result - v22;
          if (result - v22 != -1)
          {
            v28 = *v5++;
            v27 = v28;
            v29 = *v28;
            if (*v28 <= v26)
            {
              v29 = (result - v22);
            }

            *v27 = v29;
            v30 = *(a4 + 23);
            if ((v30 & 0x80u) != 0)
            {
              v30 = *(a4 + 8);
            }

            v23 = v30 + ~v26;
          }
        }

        break;
      }

      ++result;
      v25 = v24 - result;
    }

    while (v24 - result >= 1);
  }

  v31 = **v5;
  if (v31 <= v23)
  {
    v31 = v23;
  }

  **v5 = v31;
  return result;
}

void sub_23F2876BC(uint64_t a1, uint64_t a2)
{
  sub_23F2ACB34(**a1, a2, **(*a1 + 8), *(*(*a1 + 8) + 8));
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(v4 + 32);
  v6 = *v4;
  v7 = *(v4 + 8);
  v8 = **v4 + 1;
  **v4 = v8;
  if (v8 == *v7)
  {
    v9 = *(v6 + 1) + 1;
    *v6 = 0;
    *(v6 + 1) = v9;
    if (v9 == v7[1])
    {
      return;
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = strlen(*(**(v4 + 16) + 8 * v10));
  sub_23EF2F9B0(v3, *(**(v4 + 16) + 8 * v10), v11);
  v12 = *v4;
  v13 = **(v4 + 24);

  sub_23F09155C(v5, v3, v12, v10, v13);
}

void sub_23F2877A8(uint64_t a1, unsigned __int8 a2)
{
  v3 = **a1;
  v4 = **(*a1 + 8);
  v16 = 0;
  std::to_string(&v17, a2);
  __p[0] = v17;
  sub_23F2AC924(v3, __p, v4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(v6 + 32);
  v8 = *v6;
  v9 = *(v6 + 8);
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = *(v8 + 1) + 1;
    *v8 = 0;
    *(v8 + 1) = v11;
    if (v11 == v9[1])
    {
      v12 = *(v8 + 2) + 1;
      *(v8 + 1) = 0;
      *(v8 + 2) = v12;
      if (v12 == v9[2])
      {
        return;
      }

      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = strlen(*(**(v6 + 16) + 8 * v13));
  sub_23EF2F9B0(v5, *(**(v6 + 16) + 8 * v13), v14);
  sub_23F093168(v7, v5, *v6, v13, **(v6 + 24));
}

void sub_23F2878D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F287904(uint64_t a1, unsigned __int16 a2)
{
  v3 = **a1;
  v4 = **(*a1 + 8);
  v16 = 0;
  std::to_string(&v17, a2);
  __p[0] = v17;
  sub_23F2AC924(v3, __p, v4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(v6 + 32);
  v8 = *v6;
  v9 = *(v6 + 8);
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = *(v8 + 1) + 1;
    *v8 = 0;
    *(v8 + 1) = v11;
    if (v11 == v9[1])
    {
      v12 = *(v8 + 2) + 1;
      *(v8 + 1) = 0;
      *(v8 + 2) = v12;
      if (v12 == v9[2])
      {
        return;
      }

      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = strlen(*(**(v6 + 16) + 8 * v13));
  sub_23EF2F9B0(v5, *(**(v6 + 16) + 8 * v13), v14);
  sub_23F093168(v7, v5, *v6, v13, **(v6 + 24));
}

void sub_23F287A30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_23F287A60(__int16 **a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  v13 = 0;
  sub_23F286EC0(&v10, v12, v4);
  if (v13 == -1)
  {
    sub_23EF41D6C();
  }

  v15 = &v14;
  (off_28518B668[v13])(&v10, &v15, v12);
  if (v13 != -1)
  {
    (off_28518B638[v13])(&v15, v12);
  }

  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
  }

  v6 = v10;
  *(v5 + 16) = v11;
  *v5 = v6;
  v7 = *a1;
  v8 = *a2;
  v13 = 0;
  sub_23F286EC0(&v10, v12, v7 + 1);
  if (v13 == -1)
  {
    sub_23EF41D6C();
  }

  v15 = &v14;
  (off_28518B668[v13])(&v10, &v15, v12);
  if (v13 != -1)
  {
    (off_28518B638[v13])(&v15, v12);
  }

  if (*(v8 + 47) < 0)
  {
    operator delete(*(v8 + 24));
  }

  result = *&v10;
  *(v8 + 24) = v10;
  *(v8 + 40) = v11;
  return result;
}

void sub_23F287BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F287BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F287BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F287BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F287C10(void ****a1, __int128 **a2)
{
  v4 = *a1;
  sub_23F287318(***a1, *a2, *(**a1)[1]);
  v6 = v4[1];
  v5 = v4[2];
  v7 = v6[4];
  v8 = *v6;
  v9 = v6[1];
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = *(v8 + 1) + 1;
    *v8 = 0;
    *(v8 + 1) = v11;
    if (v11 == *(v9 + 1))
    {
      v12 = *(v8 + 2) + 1;
      *(v8 + 1) = 0;
      *(v8 + 2) = v12;
      if (v12 == *(v9 + 2))
      {
        goto LABEL_8;
      }

      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = strlen(*(*v6[2] + 8 * v13));
  sub_23EF2F9B0(v5, *(*v6[2] + 8 * v13), v14);
  sub_23F093168(v7, v5, *v6, v13, *v6[3]);
LABEL_8:
  v15 = *a1;
  sub_23F287318(**v15, (*a2 + 24), *(*v15)[1]);
  v17 = v15[1];
  v16 = v15[2];
  v18 = v17[4];
  v19 = *v17;
  v20 = v17[1];
  v21 = **v17 + 1;
  **v17 = v21;
  if (v21 == *v20)
  {
    v22 = *(v19 + 1) + 1;
    *v19 = 0;
    *(v19 + 1) = v22;
    if (v22 == *(v20 + 1))
    {
      v23 = *(v19 + 2) + 1;
      *(v19 + 1) = 0;
      *(v19 + 2) = v23;
      if (v23 == *(v20 + 2))
      {
        return;
      }

      v24 = 2;
    }

    else
    {
      v24 = 1;
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = strlen(*(*v17[2] + 8 * v24));
  sub_23EF2F9B0(v16, *(*v17[2] + 8 * v24), v25);
  v26 = *v17;
  v27 = *v17[3];

  sub_23F093168(v18, v16, v26, v24, v27);
}

double sub_23F287DF4(float **a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  v13 = 0;
  sub_23EF8158C(&v10, v12, v4);
  if (v13 == -1)
  {
    sub_23EF41D6C();
  }

  v15 = &v14;
  (off_28518B668[v13])(&v10, &v15, v12);
  if (v13 != -1)
  {
    (off_28518B638[v13])(&v15, v12);
  }

  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
  }

  v6 = v10;
  *(v5 + 16) = v11;
  *v5 = v6;
  v7 = *a1;
  v8 = *a2;
  v13 = 0;
  sub_23EF8158C(&v10, v12, v7 + 1);
  if (v13 == -1)
  {
    sub_23EF41D6C();
  }

  v15 = &v14;
  (off_28518B668[v13])(&v10, &v15, v12);
  if (v13 != -1)
  {
    (off_28518B638[v13])(&v15, v12);
  }

  if (*(v8 + 47) < 0)
  {
    operator delete(*(v8 + 24));
  }

  result = *&v10;
  *(v8 + 24) = v10;
  *(v8 + 40) = v11;
  return result;
}

void sub_23F287F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F287F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F287F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F287F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_23F287FA4(_BYTE *result, uint64_t a2)
{
  v3 = result;
  v4 = (result + 8);
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  if (v7 >= 1)
  {
    v8 = &v6[v7];
    v9 = v7;
    result = v6;
    do
    {
      result = memchr(result, 46, v9);
      if (!result)
      {
        break;
      }

      if (*result == 46)
      {
        if (result == v8)
        {
          break;
        }

        v10 = result - v6;
        v11 = v3;
        if (result - v6 != -1)
        {
          v12 = **v3;
          if (v12 <= v10)
          {
            v12 = (result - v6);
          }

          **v3 = v12;
          v13 = *(a2 + 23);
          if ((v13 & 0x80u) != 0)
          {
            v13 = *(a2 + 8);
          }

          v7 = v13 + ~v10;
          v11 = v4;
        }

        goto LABEL_21;
      }

      ++result;
      v9 = v8 - result;
    }

    while (v8 - result >= 1);
  }

  v11 = v3;
LABEL_21:
  v14 = *v11;
  v15 = *v14;
  if (*v14 <= v7)
  {
    v15 = v7;
  }

  *v14 = v15;
  v16 = *(a2 + 47);
  if (v16 >= 0)
  {
    v17 = (a2 + 24);
  }

  else
  {
    v17 = *(a2 + 24);
  }

  v18 = *(a2 + 32);
  if (v16 >= 0)
  {
    v19 = *(a2 + 47);
  }

  else
  {
    v19 = *(a2 + 32);
  }

  if (v19 >= 1)
  {
    v20 = &v17[v19];
    v21 = v19;
    result = v17;
    do
    {
      result = memchr(result, 46, v21);
      if (!result)
      {
        break;
      }

      if (*result == 46)
      {
        if (result == v20)
        {
          break;
        }

        v22 = result - v17;
        if (result - v17 == -1)
        {
          break;
        }

        v23 = **v3;
        if (v23 <= v22)
        {
          v23 = (result - v17);
        }

        **v3 = v23;
        v24 = *(a2 + 47);
        if ((v24 & 0x80u) != 0)
        {
          v24 = *(a2 + 32);
        }

        v19 = v24 + ~v22;
        goto LABEL_43;
      }

      ++result;
      v21 = v20 - result;
    }

    while (v20 - result >= 1);
  }

  v4 = v3;
LABEL_43:
  v25 = **v4;
  if (v25 <= v19)
  {
    v25 = v19;
  }

  **v4 = v25;
  return result;
}

void sub_23F28815C(uint64_t a1, uint64_t a2)
{
  sub_23F2ACB34(**a1, a2, **(*a1 + 8), *(*(*a1 + 8) + 8));
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(v4 + 32);
  v6 = *v4;
  v7 = *(v4 + 8);
  v8 = **v4 + 1;
  **v4 = v8;
  if (v8 == *v7)
  {
    v9 = *(v6 + 1) + 1;
    *v6 = 0;
    *(v6 + 1) = v9;
    if (v9 == v7[1])
    {
      v10 = *(v6 + 2) + 1;
      *(v6 + 1) = 0;
      *(v6 + 2) = v10;
      if (v10 == v7[2])
      {
        return;
      }

      v11 = 2;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = strlen(*(**(v4 + 16) + 8 * v11));
  sub_23EF2F9B0(v3, *(**(v4 + 16) + 8 * v11), v12);
  v13 = *v4;
  v14 = **(v4 + 24);

  sub_23F093168(v5, v3, v13, v11, v14);
}

void sub_23F288268(uint64_t a1, unsigned __int8 a2)
{
  v3 = **a1;
  v4 = **(*a1 + 8);
  v16 = 0;
  std::to_string(&v17, a2);
  __p[0] = v17;
  sub_23F2AC924(v3, __p, v4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(v6 + 32);
  v8 = *v6;
  v9 = *(v6 + 8);
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = *(v8 + 1) + 1;
    *v8 = 0;
    *(v8 + 1) = v11;
    if (v11 == v9[1])
    {
      v12 = *(v8 + 2) + 1;
      *(v8 + 1) = 0;
      *(v8 + 2) = v12;
      if (v12 == v9[2])
      {
        return;
      }

      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = strlen(*(**(v6 + 16) + 8 * v13));
  sub_23EF2F9B0(v5, *(**(v6 + 16) + 8 * v13), v14);
  sub_23F093168(v7, v5, *v6, v13, **(v6 + 24));
}

void sub_23F288394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F2883C4(uint64_t a1, unsigned __int16 a2)
{
  v3 = **a1;
  v4 = **(*a1 + 8);
  v16 = 0;
  std::to_string(&v17, a2);
  __p[0] = v17;
  sub_23F2AC924(v3, __p, v4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(v6 + 32);
  v8 = *v6;
  v9 = *(v6 + 8);
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = *(v8 + 1) + 1;
    *v8 = 0;
    *(v8 + 1) = v11;
    if (v11 == v9[1])
    {
      v12 = *(v8 + 2) + 1;
      *(v8 + 1) = 0;
      *(v8 + 2) = v12;
      if (v12 == v9[2])
      {
        return;
      }

      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = strlen(*(**(v6 + 16) + 8 * v13));
  sub_23EF2F9B0(v5, *(**(v6 + 16) + 8 * v13), v14);
  sub_23F093168(v7, v5, *v6, v13, **(v6 + 24));
}

void sub_23F2884F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_23F288520(__int16 **a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  v15 = 0;
  sub_23F286EC0(&v12, v14, v4);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
  }

  v6 = v12;
  *(v5 + 16) = v13;
  *v5 = v6;
  v7 = *a1;
  v8 = *a2;
  v15 = 0;
  sub_23F286EC0(&v12, v14, v7 + 1);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(v8 + 47) < 0)
  {
    operator delete(*(v8 + 24));
  }

  *(v8 + 24) = v12;
  *(v8 + 40) = v13;
  v9 = *a1;
  v10 = *a2;
  v15 = 0;
  sub_23F286EC0(&v12, v14, v9 + 2);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(v10 + 71) < 0)
  {
    operator delete(*(v10 + 48));
  }

  result = *&v12;
  *(v10 + 48) = v12;
  *(v10 + 64) = v13;
  return result;
}

void sub_23F28870C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F288720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F288734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F288748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28875C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F288770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23F288784(uint64_t result, uint64_t *a2)
{
  v2 = *(a2 + 3);
  v3 = *(a2 + 4);
  if (*(a2 + 2))
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || v3 == 0)
  {
    return result;
  }

  v6 = v2 - 1;
  v7 = *a2;
  v8 = *result;
  v9 = **result;
  v10 = 3 * *(a2 + 6);
  v11 = v3 - 1;
  if (v11)
  {
    v12 = *(a2 + 7);
    if (v6)
    {
      v13 = 0;
      v14 = (v7 + 47);
      result = 24 * *(a2 + 6);
      do
      {
        v15 = v14;
        v16 = v6;
        do
        {
          v17 = *(v15 - 24);
          if ((v17 & 0x80u) != 0)
          {
            v17 = *(v15 - 39);
          }

          if (v9 <= v17)
          {
            v9 = v17;
          }

          *v8 = v9;
          v18 = *v15;
          if ((v18 & 0x80u) != 0)
          {
            v18 = *(v15 - 15);
          }

          if (v9 <= v18)
          {
            v9 = v18;
          }

          *v8 = v9;
          v19 = v15[24];
          if ((v19 & 0x80u) != 0)
          {
            v19 = *(v15 + 9);
          }

          if (v9 <= v19)
          {
            v9 = v19;
          }

          *v8 = v9;
          v15 += result;
          --v16;
        }

        while (v16);
        v20 = *(v15 - 24);
        if ((v20 & 0x80u) != 0)
        {
          v20 = *(v15 - 39);
        }

        if (v9 <= v20)
        {
          v9 = v20;
        }

        *v8 = v9;
        v21 = *v15;
        if ((v21 & 0x80u) != 0)
        {
          v21 = *(v15 - 15);
        }

        if (v9 <= v21)
        {
          v9 = v21;
        }

        *v8 = v9;
        v22 = v15[24];
        v23 = *(v15 + 9);
        if ((v22 & 0x80u) == 0)
        {
          v23 = v22;
        }

        if (v9 <= v23)
        {
          v9 = v23;
        }

        *v8 = v9;
        v7 += 24 * v12;
        ++v13;
        v14 += 24 * v12;
      }

      while (v13 != v11);
      goto LABEL_54;
    }

    v24 = 24 * v12;
    do
    {
      v25 = *(v7 + 23);
      if ((v25 & 0x80u) != 0)
      {
        v25 = *(v7 + 8);
      }

      if (v9 <= v25)
      {
        v9 = v25;
      }

      *v8 = v9;
      v26 = *(v7 + 47);
      if ((v26 & 0x80u) != 0)
      {
        v26 = *(v7 + 32);
      }

      if (v9 <= v26)
      {
        v9 = v26;
      }

      *v8 = v9;
      v27 = *(v7 + 71);
      if ((v27 & 0x80u) != 0)
      {
        v27 = *(v7 + 56);
      }

      if (v9 <= v27)
      {
        v9 = v27;
      }

      *v8 = v9;
      v7 += v24;
      --v11;
    }

    while (v11);
  }

  if (v6)
  {
LABEL_54:
    v28 = 8 * v10;
    do
    {
      v29 = *(v7 + 23);
      if ((v29 & 0x80u) != 0)
      {
        v29 = *(v7 + 8);
      }

      if (v9 <= v29)
      {
        v9 = v29;
      }

      *v8 = v9;
      v30 = *(v7 + 47);
      if ((v30 & 0x80u) != 0)
      {
        v30 = *(v7 + 32);
      }

      if (v9 <= v30)
      {
        v9 = v30;
      }

      *v8 = v9;
      v31 = *(v7 + 71);
      if ((v31 & 0x80u) != 0)
      {
        v31 = *(v7 + 56);
      }

      if (v9 <= v31)
      {
        v9 = v31;
      }

      *v8 = v9;
      v7 += v28;
      --v6;
    }

    while (v6);
  }

  v32 = *(v7 + 23);
  if ((v32 & 0x80u) != 0)
  {
    v32 = *(v7 + 8);
  }

  if (v9 > v32)
  {
    v32 = v9;
  }

  *v8 = v32;
  v33 = *(v7 + 47);
  if ((v33 & 0x80u) != 0)
  {
    v33 = *(v7 + 32);
  }

  if (v32 <= v33)
  {
    v32 = v33;
  }

  *v8 = v32;
  v34 = *(v7 + 71);
  v35 = *(v7 + 56);
  if ((v34 & 0x80u) == 0)
  {
    v35 = v34;
  }

  if (v32 > v35)
  {
    v35 = v32;
  }

  *v8 = v35;
  return result;
}

void sub_23F288A14(void ****a1, __int128 **a2)
{
  v4 = *a1;
  sub_23F287318(***a1, *a2, *(**a1)[1]);
  v6 = v4[1];
  v5 = v4[2];
  v7 = v6[4];
  v8 = *v6;
  v9 = v6[1];
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = *(v8 + 1) + 1;
    *v8 = 0;
    *(v8 + 1) = v11;
    if (v11 == *(v9 + 1))
    {
      v12 = *(v8 + 2) + 1;
      *(v8 + 1) = 0;
      *(v8 + 2) = v12;
      if (v12 == *(v9 + 2))
      {
        goto LABEL_8;
      }

      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = strlen(*(*v6[2] + 8 * v13));
  sub_23EF2F9B0(v5, *(*v6[2] + 8 * v13), v14);
  sub_23F093168(v7, v5, *v6, v13, *v6[3]);
LABEL_8:
  v15 = *a1;
  sub_23F287318(***a1, (*a2 + 24), *(**a1)[1]);
  v17 = v15[1];
  v16 = v15[2];
  v18 = v17[4];
  v19 = *v17;
  v20 = v17[1];
  v21 = **v17 + 1;
  **v17 = v21;
  if (v21 == *v20)
  {
    v22 = *(v19 + 1) + 1;
    *v19 = 0;
    *(v19 + 1) = v22;
    if (v22 == *(v20 + 1))
    {
      v23 = *(v19 + 2) + 1;
      *(v19 + 1) = 0;
      *(v19 + 2) = v23;
      if (v23 == *(v20 + 2))
      {
        goto LABEL_15;
      }

      v24 = 2;
    }

    else
    {
      v24 = 1;
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = strlen(*(*v17[2] + 8 * v24));
  sub_23EF2F9B0(v16, *(*v17[2] + 8 * v24), v25);
  sub_23F093168(v18, v16, *v17, v24, *v17[3]);
LABEL_15:
  v26 = *a1;
  sub_23F287318(**v26, *a2 + 3, *(*v26)[1]);
  v28 = v26[1];
  v27 = v26[2];
  v29 = v28[4];
  v30 = *v28;
  v31 = v28[1];
  v32 = **v28 + 1;
  **v28 = v32;
  if (v32 == *v31)
  {
    v33 = *(v30 + 1) + 1;
    *v30 = 0;
    *(v30 + 1) = v33;
    if (v33 == *(v31 + 1))
    {
      v34 = *(v30 + 2) + 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = v34;
      if (v34 == *(v31 + 2))
      {
        return;
      }

      v35 = 2;
    }

    else
    {
      v35 = 1;
    }
  }

  else
  {
    v35 = 0;
  }

  v36 = strlen(*(*v28[2] + 8 * v35));
  sub_23EF2F9B0(v27, *(*v28[2] + 8 * v35), v36);
  v37 = *v28;
  v38 = *v28[3];

  sub_23F093168(v29, v27, v37, v35, v38);
}

uint64_t sub_23F288CBC(uint64_t *a1, uint64_t a2)
{
  v23 = 0;
  v24 = 0;
  v22[0] = &v24;
  v22[1] = &v23;
  v3 = *(a2 + 12);
  v4 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5 || v4 == 0)
  {
    v7 = 0;
    v8 = 1;
    goto LABEL_22;
  }

  v9 = v3 - 1;
  v10 = *a2;
  v11 = 3 * *(a2 + 24);
  v12 = v4 - 1;
  if (v4 != 1)
  {
    v13 = *(a2 + 28);
    if (v3 != 1)
    {
      v14 = 0;
      v15 = 24 * v13;
      do
      {
        v16 = v10;
        v17 = v9;
        do
        {
          sub_23F28908C(v22, v16);
          v16 += 8 * v11;
          --v17;
        }

        while (v17);
        sub_23F28908C(v22, v16);
        v10 += v15;
        ++v14;
      }

      while (v14 != v12);
      goto LABEL_20;
    }

    v18 = 24 * v13;
    do
    {
      sub_23F28908C(v22, v10);
      v10 += v18;
      --v12;
    }

    while (v12);
  }

  for (; v9; --v9)
  {
LABEL_20:
    sub_23F28908C(v22, v10);
    v10 += 8 * v11;
  }

  sub_23F28908C(v22, v10);
  v7 = v24;
  v8 = v23 + 1;
LABEL_22:
  v19 = v8 + v7;
  v20 = *a1;
  if (*a1 >= v19)
  {
    v20 = v19;
  }

  if (v19)
  {
    result = v20;
  }

  else
  {
    result = 1;
  }

  a1[2];
  return result;
}

double sub_23F288E28(float **a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  v15 = 0;
  sub_23EF8158C(&v12, v14, v4);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
  }

  v6 = v12;
  *(v5 + 16) = v13;
  *v5 = v6;
  v7 = *a1;
  v8 = *a2;
  v15 = 0;
  sub_23EF8158C(&v12, v14, v7 + 1);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(v8 + 47) < 0)
  {
    operator delete(*(v8 + 24));
  }

  *(v8 + 24) = v12;
  *(v8 + 40) = v13;
  v9 = *a1;
  v10 = *a2;
  v15 = 0;
  sub_23EF8158C(&v12, v14, v9 + 2);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(v10 + 71) < 0)
  {
    operator delete(*(v10 + 48));
  }

  result = *&v12;
  *(v10 + 48) = v12;
  *(v10 + 64) = v13;
  return result;
}

void sub_23F289014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F289028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28903C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F289050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F289064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F289078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_23F28908C(_BYTE *result, uint64_t a2)
{
  v3 = result;
  v4 = (result + 8);
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  if (v7 >= 1)
  {
    v8 = &v6[v7];
    v9 = v7;
    result = v6;
    do
    {
      result = memchr(result, 46, v9);
      if (!result)
      {
        break;
      }

      if (*result == 46)
      {
        if (result == v8)
        {
          break;
        }

        v10 = result - v6;
        v11 = v3;
        if (result - v6 != -1)
        {
          v12 = **v3;
          if (v12 <= v10)
          {
            v12 = (result - v6);
          }

          **v3 = v12;
          v13 = *(a2 + 23);
          if ((v13 & 0x80u) != 0)
          {
            v13 = *(a2 + 8);
          }

          v7 = v13 + ~v10;
          v11 = v4;
        }

        goto LABEL_21;
      }

      ++result;
      v9 = v8 - result;
    }

    while (v8 - result >= 1);
  }

  v11 = v3;
LABEL_21:
  v14 = *v11;
  v15 = *v14;
  if (*v14 <= v7)
  {
    v15 = v7;
  }

  *v14 = v15;
  v16 = *(a2 + 47);
  if (v16 >= 0)
  {
    v17 = (a2 + 24);
  }

  else
  {
    v17 = *(a2 + 24);
  }

  v18 = *(a2 + 32);
  if (v16 >= 0)
  {
    v19 = *(a2 + 47);
  }

  else
  {
    v19 = *(a2 + 32);
  }

  if (v19 >= 1)
  {
    v20 = &v17[v19];
    v21 = v19;
    result = v17;
    do
    {
      result = memchr(result, 46, v21);
      if (!result)
      {
        break;
      }

      if (*result == 46)
      {
        if (result == v20)
        {
          break;
        }

        v22 = result - v17;
        v23 = v3;
        if (result - v17 != -1)
        {
          v24 = **v3;
          if (v24 <= v22)
          {
            v24 = (result - v17);
          }

          **v3 = v24;
          v25 = *(a2 + 47);
          if ((v25 & 0x80u) != 0)
          {
            v25 = *(a2 + 32);
          }

          v19 = v25 + ~v22;
          v23 = v4;
        }

        goto LABEL_43;
      }

      ++result;
      v21 = v20 - result;
    }

    while (v20 - result >= 1);
  }

  v23 = v3;
LABEL_43:
  v26 = *v23;
  v27 = *v26;
  if (*v26 <= v19)
  {
    v27 = v19;
  }

  *v26 = v27;
  v28 = *(a2 + 71);
  if (v28 >= 0)
  {
    v29 = (a2 + 48);
  }

  else
  {
    v29 = *(a2 + 48);
  }

  v30 = *(a2 + 56);
  if (v28 >= 0)
  {
    v31 = *(a2 + 71);
  }

  else
  {
    v31 = *(a2 + 56);
  }

  if (v31 >= 1)
  {
    v32 = &v29[v31];
    v33 = v31;
    result = v29;
    do
    {
      result = memchr(result, 46, v33);
      if (!result)
      {
        break;
      }

      if (*result == 46)
      {
        if (result == v32)
        {
          break;
        }

        v34 = result - v29;
        if (result - v29 == -1)
        {
          break;
        }

        v35 = **v3;
        if (v35 <= v34)
        {
          v35 = (result - v29);
        }

        **v3 = v35;
        v36 = *(a2 + 71);
        if ((v36 & 0x80u) != 0)
        {
          v36 = *(a2 + 56);
        }

        v31 = v36 + ~v34;
        goto LABEL_65;
      }

      ++result;
      v33 = v32 - result;
    }

    while (v32 - result >= 1);
  }

  v4 = v3;
LABEL_65:
  v37 = **v4;
  if (v37 <= v31)
  {
    v37 = v31;
  }

  **v4 = v37;
  return result;
}

uint64_t sub_23F28930C(uint64_t result, uint64_t *a2, void **a3, _BYTE *a4)
{
  *a2 = a4;
  if (*(result + 12))
  {
    v4 = 0;
    do
    {
      *a2 = a4;
      v5 = *a3;
      v6 = **a3;
      v7 = *v6;
      if (v7 <= *a4)
      {
        LOBYTE(v7) = *a4;
      }

      *v6 = v7;
      v8 = v5[1];
      v9 = *a4;
      if (v9 >= *v8)
      {
        LOBYTE(v9) = *v8;
      }

      *v8 = v9;
      v10 = *a3;
      v11 = *a2;
      v12 = **a3;
      v13 = *v12;
      if (v13 <= *(*a2 + 1))
      {
        LOBYTE(v13) = *(*a2 + 1);
      }

      *v12 = v13;
      v14 = v10[1];
      v15 = *(v11 + 1);
      if (v15 >= *v14)
      {
        LOBYTE(v15) = *v14;
      }

      *v14 = v15;
      v16 = *a3;
      v17 = *a2;
      v18 = **a3;
      v19 = *v18;
      if (v19 <= *(*a2 + 2))
      {
        LOBYTE(v19) = *(*a2 + 2);
      }

      *v18 = v19;
      v20 = v16[1];
      v21 = *(v17 + 2);
      if (v21 >= *v20)
      {
        LOBYTE(v21) = *v20;
      }

      *v20 = v21;
      v22 = *a3;
      v23 = *a2;
      v24 = **a3;
      v25 = *v24;
      if (v25 <= *(*a2 + 3))
      {
        LOBYTE(v25) = *(*a2 + 3);
      }

      *v24 = v25;
      v26 = v22[1];
      v27 = *(v23 + 3);
      if (v27 >= *v26)
      {
        LOBYTE(v27) = *v26;
      }

      *v26 = v27;
      a4 += *(result + 16);
      ++v4;
    }

    while (v4 < *(result + 12));
  }

  *a2 = a4;
  v28 = *a3;
  v29 = **a3;
  v30 = *v29;
  if (v30 <= *a4)
  {
    LOBYTE(v30) = *a4;
  }

  *v29 = v30;
  v31 = v28[1];
  v32 = *a4;
  if (v32 >= *v31)
  {
    LOBYTE(v32) = *v31;
  }

  *v31 = v32;
  v33 = *a3;
  v34 = *a2;
  v35 = **a3;
  v36 = *v35;
  if (v36 <= *(*a2 + 1))
  {
    LOBYTE(v36) = *(*a2 + 1);
  }

  *v35 = v36;
  v37 = v33[1];
  v38 = *(v34 + 1);
  if (v38 >= *v37)
  {
    LOBYTE(v38) = *v37;
  }

  *v37 = v38;
  v39 = *a3;
  v40 = *a2;
  v41 = **a3;
  v42 = *v41;
  if (v42 <= *(*a2 + 2))
  {
    LOBYTE(v42) = *(*a2 + 2);
  }

  *v41 = v42;
  v43 = v39[1];
  v44 = *(v40 + 2);
  if (v44 >= *v43)
  {
    LOBYTE(v44) = *v43;
  }

  *v43 = v44;
  v45 = *a3;
  v46 = *a2;
  v47 = **a3;
  v48 = *v47;
  if (v48 <= *(*a2 + 3))
  {
    LOBYTE(v48) = *(*a2 + 3);
  }

  *v47 = v48;
  v49 = v45[1];
  v50 = *(v46 + 3);
  if (v50 >= *v49)
  {
    LOBYTE(v50) = *v49;
  }

  *v49 = v50;
  return result;
}

void sub_23F2894F4(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 *a4)
{
  v4 = a4;
  *a2 = a4;
  if (*(a1 + 12))
  {
    v8 = 0;
    do
    {
      *a2 = v4;
      sub_23F2895E0(*a3, *v4);
      sub_23F2895E0(*a3, *(*a2 + 1));
      sub_23F2895E0(*a3, *(*a2 + 2));
      sub_23F2895E0(*a3, *(*a2 + 3));
      v4 += *(a1 + 16);
      ++v8;
    }

    while (v8 < *(a1 + 12));
  }

  *a2 = v4;
  sub_23F2895E0(*a3, *v4);
  sub_23F2895E0(*a3, *(*a2 + 1));
  sub_23F2895E0(*a3, *(*a2 + 2));
  v9 = *a3;
  v10 = *(*a2 + 3);

  sub_23F2895E0(v9, v10);
}

void sub_23F2895E0(uint64_t a1, unsigned __int8 a2)
{
  v3 = **a1;
  v4 = **(*a1 + 8);
  v16 = 0;
  std::to_string(&v17, a2);
  __p[0] = v17;
  sub_23F2AC924(v3, __p, v4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(v6 + 32);
  v8 = *v6;
  v9 = *(v6 + 8);
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = *(v8 + 1) + 1;
    *v8 = 0;
    *(v8 + 1) = v11;
    if (v11 == v9[1])
    {
      v12 = *(v8 + 2) + 1;
      *(v8 + 1) = 0;
      *(v8 + 2) = v12;
      if (v12 == v9[2])
      {
        return;
      }

      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = strlen(*(**(v6 + 16) + 8 * v13));
  sub_23EF2F9B0(v5, *(**(v6 + 16) + 8 * v13), v14);
  sub_23F093168(v7, v5, *v6, v13, **(v6 + 24));
}

void sub_23F28970C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F28973C(uint64_t result, void *a2, void **a3, unsigned __int16 *a4)
{
  *a2 = a4;
  v4 = *(result + 12);
  v6 = **a3;
  v5 = (*a3)[1];
  if (v4)
  {
    v7 = 2 * *(result + 16);
    do
    {
      v8 = *v6;
      if (v8 <= *a4)
      {
        LOWORD(v8) = *a4;
      }

      *v6 = v8;
      v9 = *a4;
      if (v9 >= *v5)
      {
        LOWORD(v9) = *v5;
      }

      *v5 = v9;
      v10 = *v6;
      if (v10 <= a4[1])
      {
        LOWORD(v10) = a4[1];
      }

      *v6 = v10;
      v11 = a4[1];
      if (v11 >= *v5)
      {
        LOWORD(v11) = *v5;
      }

      *v5 = v11;
      v12 = *v6;
      if (v12 <= a4[2])
      {
        LOWORD(v12) = a4[2];
      }

      *v6 = v12;
      v13 = a4[2];
      if (v13 >= *v5)
      {
        LOWORD(v13) = *v5;
      }

      *v5 = v13;
      v14 = *v6;
      if (v14 <= a4[3])
      {
        LOWORD(v14) = a4[3];
      }

      *v6 = v14;
      v15 = a4[3];
      if (v15 >= *v5)
      {
        LOWORD(v15) = *v5;
      }

      *v5 = v15;
      a4 = (a4 + v7);
      --v4;
    }

    while (v4);
  }

  *a2 = a4;
  v16 = *v6;
  if (v16 <= *a4)
  {
    LOWORD(v16) = *a4;
  }

  *v6 = v16;
  v17 = *a4;
  if (v17 >= *v5)
  {
    LOWORD(v17) = *v5;
  }

  *v5 = v17;
  v18 = *v6;
  if (v18 <= a4[1])
  {
    LOWORD(v18) = a4[1];
  }

  *v6 = v18;
  v19 = a4[1];
  if (v19 >= *v5)
  {
    LOWORD(v19) = *v5;
  }

  *v5 = v19;
  v20 = *v6;
  if (v20 <= a4[2])
  {
    LOWORD(v20) = a4[2];
  }

  *v6 = v20;
  v21 = a4[2];
  if (v21 >= *v5)
  {
    LOWORD(v21) = *v5;
  }

  *v5 = v21;
  v22 = *v6;
  if (v22 <= a4[3])
  {
    LOWORD(v22) = a4[3];
  }

  *v6 = v22;
  v23 = a4[3];
  if (v23 >= *v5)
  {
    LOWORD(v23) = *v5;
  }

  *v5 = v23;
  return result;
}

void sub_23F2898AC(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int16 *a4)
{
  v4 = a4;
  *a2 = a4;
  if (*(a1 + 12))
  {
    v8 = 0;
    do
    {
      *a2 = v4;
      sub_23F289998(*a3, *v4);
      sub_23F289998(*a3, *(*a2 + 2));
      sub_23F289998(*a3, *(*a2 + 4));
      sub_23F289998(*a3, *(*a2 + 6));
      v4 += *(a1 + 16);
      ++v8;
    }

    while (v8 < *(a1 + 12));
  }

  *a2 = v4;
  sub_23F289998(*a3, *v4);
  sub_23F289998(*a3, *(*a2 + 2));
  sub_23F289998(*a3, *(*a2 + 4));
  v9 = *a3;
  v10 = *(*a2 + 6);

  sub_23F289998(v9, v10);
}

void sub_23F289998(uint64_t a1, unsigned __int16 a2)
{
  v3 = **a1;
  v4 = **(*a1 + 8);
  v16 = 0;
  std::to_string(&v17, a2);
  __p[0] = v17;
  sub_23F2AC924(v3, __p, v4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(v6 + 32);
  v8 = *v6;
  v9 = *(v6 + 8);
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = *(v8 + 1) + 1;
    *v8 = 0;
    *(v8 + 1) = v11;
    if (v11 == v9[1])
    {
      v12 = *(v8 + 2) + 1;
      *(v8 + 1) = 0;
      *(v8 + 2) = v12;
      if (v12 == v9[2])
      {
        return;
      }

      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = strlen(*(**(v6 + 16) + 8 * v13));
  sub_23EF2F9B0(v5, *(**(v6 + 16) + 8 * v13), v14);
  sub_23F093168(v7, v5, *v6, v13, **(v6 + 24));
}

void sub_23F289AC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_23F289AF4(__int16 **a1, __int16 *a2, uint64_t a3)
{
  *a1 = a2;
  a1[2] = a3;
  v15 = 0;
  sub_23F286EC0(&v12, v14, a2);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = v12;
  *(a3 + 16) = v13;
  v5 = *a1;
  v6 = a1[2];
  v15 = 0;
  sub_23F286EC0(&v12, v14, v5 + 1);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(v6 + 47) < 0)
  {
    operator delete(*(v6 + 3));
  }

  *(v6 + 12) = v12;
  *(v6 + 5) = v13;
  v7 = *a1;
  v8 = a1[2];
  v15 = 0;
  sub_23F286EC0(&v12, v14, v7 + 2);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(v8 + 71) < 0)
  {
    operator delete(*(v8 + 6));
  }

  *(v8 + 3) = v12;
  *(v8 + 8) = v13;
  v9 = *a1;
  v10 = a1[2];
  v15 = 0;
  sub_23F286EC0(&v12, v14, v9 + 3);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(v10 + 95) < 0)
  {
    operator delete(*(v10 + 9));
  }

  result = *&v12;
  *(v10 + 36) = v12;
  *(v10 + 11) = v13;
  return result;
}

void sub_23F289D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F289D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F289D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F289DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F289DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F289DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F289DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F289DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23F289E08(uint64_t result, uint64_t *a2)
{
  v2 = *(a2 + 3);
  v3 = *(a2 + 4);
  if (*(a2 + 2))
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || v3 == 0)
  {
    return result;
  }

  v6 = v2 - 1;
  v7 = *a2;
  v8 = *result;
  v9 = **result;
  v10 = 3 * *(a2 + 6);
  v11 = v3 - 1;
  if (v11)
  {
    v12 = *(a2 + 7);
    if (v6)
    {
      v13 = 0;
      v14 = (v7 + 95);
      result = 24 * *(a2 + 6);
      do
      {
        v15 = v14;
        v16 = v6;
        do
        {
          v17 = *(v15 - 72);
          if ((v17 & 0x80u) != 0)
          {
            v17 = *(v15 - 87);
          }

          if (v9 <= v17)
          {
            v9 = v17;
          }

          *v8 = v9;
          v18 = *(v15 - 48);
          if ((v18 & 0x80u) != 0)
          {
            v18 = *(v15 - 63);
          }

          if (v9 <= v18)
          {
            v9 = v18;
          }

          *v8 = v9;
          v19 = *(v15 - 24);
          if ((v19 & 0x80u) != 0)
          {
            v19 = *(v15 - 39);
          }

          if (v9 <= v19)
          {
            v9 = v19;
          }

          *v8 = v9;
          v20 = *v15;
          if ((v20 & 0x80u) != 0)
          {
            v20 = *(v15 - 15);
          }

          if (v9 <= v20)
          {
            v9 = v20;
          }

          *v8 = v9;
          v15 += result;
          --v16;
        }

        while (v16);
        v21 = *(v15 - 72);
        if ((v21 & 0x80u) != 0)
        {
          v21 = *(v15 - 87);
        }

        if (v9 <= v21)
        {
          v9 = v21;
        }

        *v8 = v9;
        v22 = *(v15 - 48);
        if ((v22 & 0x80u) != 0)
        {
          v22 = *(v15 - 63);
        }

        if (v9 <= v22)
        {
          v9 = v22;
        }

        *v8 = v9;
        v23 = *(v15 - 24);
        if ((v23 & 0x80u) != 0)
        {
          v23 = *(v15 - 39);
        }

        if (v9 <= v23)
        {
          v9 = v23;
        }

        *v8 = v9;
        v24 = *v15;
        v25 = *(v15 - 15);
        if ((v24 & 0x80u) == 0)
        {
          v25 = v24;
        }

        if (v9 <= v25)
        {
          v9 = v25;
        }

        *v8 = v9;
        v7 += 24 * v12;
        ++v13;
        v14 += 24 * v12;
      }

      while (v13 != v11);
      goto LABEL_66;
    }

    v26 = 24 * v12;
    do
    {
      v27 = *(v7 + 23);
      if ((v27 & 0x80u) != 0)
      {
        v27 = *(v7 + 8);
      }

      if (v9 <= v27)
      {
        v9 = v27;
      }

      *v8 = v9;
      v28 = *(v7 + 47);
      if ((v28 & 0x80u) != 0)
      {
        v28 = *(v7 + 32);
      }

      if (v9 <= v28)
      {
        v9 = v28;
      }

      *v8 = v9;
      v29 = *(v7 + 71);
      if ((v29 & 0x80u) != 0)
      {
        v29 = *(v7 + 56);
      }

      if (v9 <= v29)
      {
        v9 = v29;
      }

      *v8 = v9;
      v30 = *(v7 + 95);
      if ((v30 & 0x80u) != 0)
      {
        v30 = *(v7 + 80);
      }

      if (v9 <= v30)
      {
        v9 = v30;
      }

      *v8 = v9;
      v7 += v26;
      --v11;
    }

    while (v11);
  }

  if (v6)
  {
LABEL_66:
    v31 = 8 * v10;
    do
    {
      v32 = *(v7 + 23);
      if ((v32 & 0x80u) != 0)
      {
        v32 = *(v7 + 8);
      }

      if (v9 > v32)
      {
        v32 = v9;
      }

      *v8 = v32;
      v33 = *(v7 + 47);
      if ((v33 & 0x80u) != 0)
      {
        v33 = *(v7 + 32);
      }

      if (v32 <= v33)
      {
        v32 = v33;
      }

      *v8 = v32;
      v34 = *(v7 + 71);
      if ((v34 & 0x80u) != 0)
      {
        v34 = *(v7 + 56);
      }

      if (v32 <= v34)
      {
        v32 = v34;
      }

      *v8 = v32;
      v9 = *(v7 + 95);
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(v7 + 80);
      }

      if (v32 > v9)
      {
        v9 = v32;
      }

      *v8 = v9;
      v7 += v31;
      --v6;
    }

    while (v6);
  }

  v35 = *(v7 + 23);
  if ((v35 & 0x80u) != 0)
  {
    v35 = *(v7 + 8);
  }

  if (v9 > v35)
  {
    v35 = v9;
  }

  *v8 = v35;
  v36 = *(v7 + 47);
  if ((v36 & 0x80u) != 0)
  {
    v36 = *(v7 + 32);
  }

  if (v35 <= v36)
  {
    v35 = v36;
  }

  *v8 = v35;
  v37 = *(v7 + 71);
  if ((v37 & 0x80u) != 0)
  {
    v37 = *(v7 + 56);
  }

  if (v35 <= v37)
  {
    v35 = v37;
  }

  *v8 = v35;
  v38 = *(v7 + 95);
  v39 = *(v7 + 80);
  if ((v38 & 0x80u) == 0)
  {
    v39 = v38;
  }

  if (v35 > v39)
  {
    v39 = v35;
  }

  *v8 = v39;
  return result;
}

void sub_23F28A138(void ****a1, __int128 **a2)
{
  v4 = *a1;
  sub_23F287318(***a1, *a2, *(**a1)[1]);
  v6 = v4[1];
  v5 = v4[2];
  v7 = v6[4];
  v8 = *v6;
  v9 = v6[1];
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = *(v8 + 1) + 1;
    *v8 = 0;
    *(v8 + 1) = v11;
    if (v11 == *(v9 + 1))
    {
      v12 = *(v8 + 2) + 1;
      *(v8 + 1) = 0;
      *(v8 + 2) = v12;
      if (v12 == *(v9 + 2))
      {
        goto LABEL_8;
      }

      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = strlen(*(*v6[2] + 8 * v13));
  sub_23EF2F9B0(v5, *(*v6[2] + 8 * v13), v14);
  sub_23F093168(v7, v5, *v6, v13, *v6[3]);
LABEL_8:
  v15 = *a1;
  sub_23F287318(***a1, (*a2 + 24), *(**a1)[1]);
  v17 = v15[1];
  v16 = v15[2];
  v18 = v17[4];
  v19 = *v17;
  v20 = v17[1];
  v21 = **v17 + 1;
  **v17 = v21;
  if (v21 == *v20)
  {
    v22 = *(v19 + 1) + 1;
    *v19 = 0;
    *(v19 + 1) = v22;
    if (v22 == *(v20 + 1))
    {
      v23 = *(v19 + 2) + 1;
      *(v19 + 1) = 0;
      *(v19 + 2) = v23;
      if (v23 == *(v20 + 2))
      {
        goto LABEL_15;
      }

      v24 = 2;
    }

    else
    {
      v24 = 1;
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = strlen(*(*v17[2] + 8 * v24));
  sub_23EF2F9B0(v16, *(*v17[2] + 8 * v24), v25);
  sub_23F093168(v18, v16, *v17, v24, *v17[3]);
LABEL_15:
  v26 = *a1;
  sub_23F287318(***a1, *a2 + 3, *(**a1)[1]);
  v28 = v26[1];
  v27 = v26[2];
  v29 = v28[4];
  v30 = *v28;
  v31 = v28[1];
  v32 = **v28 + 1;
  **v28 = v32;
  if (v32 == *v31)
  {
    v33 = *(v30 + 1) + 1;
    *v30 = 0;
    *(v30 + 1) = v33;
    if (v33 == *(v31 + 1))
    {
      v34 = *(v30 + 2) + 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = v34;
      if (v34 == *(v31 + 2))
      {
        goto LABEL_22;
      }

      v35 = 2;
    }

    else
    {
      v35 = 1;
    }
  }

  else
  {
    v35 = 0;
  }

  v36 = strlen(*(*v28[2] + 8 * v35));
  sub_23EF2F9B0(v27, *(*v28[2] + 8 * v35), v36);
  sub_23F093168(v29, v27, *v28, v35, *v28[3]);
LABEL_22:
  v37 = *a1;
  sub_23F287318(**v37, (*a2 + 72), *(*v37)[1]);
  v39 = v37[1];
  v38 = v37[2];
  v40 = v39[4];
  v41 = *v39;
  v42 = v39[1];
  v43 = **v39 + 1;
  **v39 = v43;
  if (v43 == *v42)
  {
    v44 = *(v41 + 1) + 1;
    *v41 = 0;
    *(v41 + 1) = v44;
    if (v44 == *(v42 + 1))
    {
      v45 = *(v41 + 2) + 1;
      *(v41 + 1) = 0;
      *(v41 + 2) = v45;
      if (v45 == *(v42 + 2))
      {
        return;
      }

      v46 = 2;
    }

    else
    {
      v46 = 1;
    }
  }

  else
  {
    v46 = 0;
  }

  v47 = strlen(*(*v39[2] + 8 * v46));
  sub_23EF2F9B0(v38, *(*v39[2] + 8 * v46), v47);
  v48 = *v39;
  v49 = *v39[3];

  sub_23F093168(v40, v38, v48, v46, v49);
}

uint64_t sub_23F28A4A4(uint64_t *a1, uint64_t a2)
{
  v23 = 0;
  v24 = 0;
  v22[0] = &v24;
  v22[1] = &v23;
  v3 = *(a2 + 12);
  v4 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5 || v4 == 0)
  {
    v7 = 0;
    v8 = 1;
    goto LABEL_22;
  }

  v9 = v3 - 1;
  v10 = *a2;
  v11 = 3 * *(a2 + 24);
  v12 = v4 - 1;
  if (v4 != 1)
  {
    v13 = *(a2 + 28);
    if (v3 != 1)
    {
      v14 = 0;
      v15 = 24 * v13;
      do
      {
        v16 = v10;
        v17 = v9;
        do
        {
          sub_23F28A924(v22, v16);
          v16 += 8 * v11;
          --v17;
        }

        while (v17);
        sub_23F28A924(v22, v16);
        v10 += v15;
        ++v14;
      }

      while (v14 != v12);
      goto LABEL_20;
    }

    v18 = 24 * v13;
    do
    {
      sub_23F28A924(v22, v10);
      v10 += v18;
      --v12;
    }

    while (v12);
  }

  for (; v9; --v9)
  {
LABEL_20:
    sub_23F28A924(v22, v10);
    v10 += 8 * v11;
  }

  sub_23F28A924(v22, v10);
  v7 = v24;
  v8 = v23 + 1;
LABEL_22:
  v19 = v8 + v7;
  v20 = *a1;
  if (*a1 >= v19)
  {
    v20 = v19;
  }

  if (v19)
  {
    result = v20;
  }

  else
  {
    result = 1;
  }

  a1[2];
  return result;
}

double sub_23F28A610(float **a1, float *a2, uint64_t a3)
{
  *a1 = a2;
  a1[2] = a3;
  v15 = 0;
  sub_23EF8158C(&v12, v14, a2);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = v12;
  *(a3 + 16) = v13;
  v5 = *a1;
  v6 = a1[2];
  v15 = 0;
  sub_23EF8158C(&v12, v14, v5 + 1);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(v6 + 47) < 0)
  {
    operator delete(*(v6 + 3));
  }

  *(v6 + 6) = v12;
  *(v6 + 5) = v13;
  v7 = *a1;
  v8 = a1[2];
  v15 = 0;
  sub_23EF8158C(&v12, v14, v7 + 2);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(v8 + 71) < 0)
  {
    operator delete(*(v8 + 6));
  }

  *(v8 + 3) = v12;
  *(v8 + 8) = v13;
  v9 = *a1;
  v10 = a1[2];
  v15 = 0;
  sub_23EF8158C(&v12, v14, v9 + 3);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(v10 + 95) < 0)
  {
    operator delete(*(v10 + 9));
  }

  result = *&v12;
  *(v10 + 18) = v12;
  *(v10 + 11) = v13;
  return result;
}

void sub_23F28A884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28A898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28A8AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28A8C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28A8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28A8E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28A8FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28A910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_23F28A924(_BYTE *result, uint64_t a2)
{
  v3 = result;
  v4 = (result + 8);
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  if (v7 >= 1)
  {
    v8 = &v6[v7];
    v9 = v7;
    result = v6;
    do
    {
      result = memchr(result, 46, v9);
      if (!result)
      {
        break;
      }

      if (*result == 46)
      {
        if (result == v8)
        {
          break;
        }

        v10 = result - v6;
        v11 = v3;
        if (result - v6 != -1)
        {
          v12 = **v3;
          if (v12 <= v10)
          {
            v12 = (result - v6);
          }

          **v3 = v12;
          v13 = *(a2 + 23);
          if ((v13 & 0x80u) != 0)
          {
            v13 = *(a2 + 8);
          }

          v7 = v13 + ~v10;
          v11 = v4;
        }

        goto LABEL_21;
      }

      ++result;
      v9 = v8 - result;
    }

    while (v8 - result >= 1);
  }

  v11 = v3;
LABEL_21:
  v14 = *v11;
  v15 = *v14;
  if (*v14 <= v7)
  {
    v15 = v7;
  }

  *v14 = v15;
  v16 = *(a2 + 47);
  if (v16 >= 0)
  {
    v17 = (a2 + 24);
  }

  else
  {
    v17 = *(a2 + 24);
  }

  v18 = *(a2 + 32);
  if (v16 >= 0)
  {
    v19 = *(a2 + 47);
  }

  else
  {
    v19 = *(a2 + 32);
  }

  if (v19 >= 1)
  {
    v20 = &v17[v19];
    v21 = v19;
    result = v17;
    do
    {
      result = memchr(result, 46, v21);
      if (!result)
      {
        break;
      }

      if (*result == 46)
      {
        if (result == v20)
        {
          break;
        }

        v22 = result - v17;
        v23 = v3;
        if (result - v17 != -1)
        {
          v24 = **v3;
          if (v24 <= v22)
          {
            v24 = (result - v17);
          }

          **v3 = v24;
          v25 = *(a2 + 47);
          if ((v25 & 0x80u) != 0)
          {
            v25 = *(a2 + 32);
          }

          v19 = v25 + ~v22;
          v23 = v4;
        }

        goto LABEL_43;
      }

      ++result;
      v21 = v20 - result;
    }

    while (v20 - result >= 1);
  }

  v23 = v3;
LABEL_43:
  v26 = *v23;
  v27 = *v26;
  if (*v26 <= v19)
  {
    v27 = v19;
  }

  *v26 = v27;
  v28 = *(a2 + 71);
  if (v28 >= 0)
  {
    v29 = (a2 + 48);
  }

  else
  {
    v29 = *(a2 + 48);
  }

  v30 = *(a2 + 56);
  if (v28 >= 0)
  {
    v31 = *(a2 + 71);
  }

  else
  {
    v31 = *(a2 + 56);
  }

  if (v31 >= 1)
  {
    v32 = &v29[v31];
    v33 = v31;
    result = v29;
    do
    {
      result = memchr(result, 46, v33);
      if (!result)
      {
        break;
      }

      if (*result == 46)
      {
        if (result == v32)
        {
          break;
        }

        v34 = result - v29;
        v35 = v3;
        if (result - v29 != -1)
        {
          v36 = **v3;
          if (v36 <= v34)
          {
            v36 = (result - v29);
          }

          **v3 = v36;
          v37 = *(a2 + 71);
          if ((v37 & 0x80u) != 0)
          {
            v37 = *(a2 + 56);
          }

          v31 = v37 + ~v34;
          v35 = v4;
        }

        goto LABEL_65;
      }

      ++result;
      v33 = v32 - result;
    }

    while (v32 - result >= 1);
  }

  v35 = v3;
LABEL_65:
  v38 = *v35;
  v39 = *v38;
  if (*v38 <= v31)
  {
    v39 = v31;
  }

  *v38 = v39;
  v40 = *(a2 + 95);
  if (v40 >= 0)
  {
    v41 = (a2 + 72);
  }

  else
  {
    v41 = *(a2 + 72);
  }

  v42 = *(a2 + 80);
  if (v40 >= 0)
  {
    v43 = *(a2 + 95);
  }

  else
  {
    v43 = *(a2 + 80);
  }

  if (v43 >= 1)
  {
    v44 = &v41[v43];
    v45 = v43;
    result = v41;
    do
    {
      result = memchr(result, 46, v45);
      if (!result)
      {
        break;
      }

      if (*result == 46)
      {
        if (result == v44)
        {
          break;
        }

        v46 = result - v41;
        if (result - v41 == -1)
        {
          break;
        }

        v47 = **v3;
        if (v47 <= v46)
        {
          v47 = (result - v41);
        }

        **v3 = v47;
        v48 = *(a2 + 95);
        if ((v48 & 0x80u) != 0)
        {
          v48 = *(a2 + 80);
        }

        v43 = v48 + ~v46;
        goto LABEL_87;
      }

      ++result;
      v45 = v44 - result;
    }

    while (v44 - result >= 1);
  }

  v4 = v3;
LABEL_87:
  v49 = **v4;
  if (v49 <= v43)
  {
    v49 = v43;
  }

  **v4 = v49;
  return result;
}

void sub_23F28AC6C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = a4;
  *a2 = a4;
  if (*(a1 + 12))
  {
    v8 = 0;
    do
    {
      *a2 = v4;
      sub_23F28815C(*a3, v4);
      sub_23F28815C(*a3, *a2 + 24);
      sub_23F28815C(*a3, *a2 + 48);
      sub_23F28815C(*a3, *a2 + 72);
      v4 += 24 * *(a1 + 16);
      ++v8;
    }

    while (v8 < *(a1 + 12));
  }

  *a2 = v4;
  sub_23F28815C(*a3, v4);
  sub_23F28815C(*a3, *a2 + 24);
  sub_23F28815C(*a3, *a2 + 48);
  v9 = *a3;
  v10 = *a2 + 72;

  sub_23F28815C(v9, v10);
}

void sub_23F28AD5C(uint64_t a1, unsigned __int8 a2)
{
  v3 = **a1;
  v4 = **(*a1 + 8);
  v16 = 0;
  std::to_string(&v17, a2);
  __p[0] = v17;
  sub_23F2AC924(v3, __p, v4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(v6 + 32);
  v8 = *v6;
  v9 = *(v6 + 8);
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = *(v8 + 1) + 1;
    *v8 = 0;
    *(v8 + 1) = v11;
    if (v11 == v9[1])
    {
      v12 = *(v8 + 2) + 1;
      *(v8 + 1) = 0;
      *(v8 + 2) = v12;
      if (v12 == v9[2])
      {
        return;
      }

      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = strlen(*(**(v6 + 16) + 8 * v13));
  sub_23EF2F9B0(v5, *(**(v6 + 16) + 8 * v13), v14);
  sub_23F093168(v7, v5, *v6, v13, **(v6 + 24));
}

void sub_23F28AE88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F28AEB8(uint64_t a1, unsigned __int16 a2)
{
  v3 = **a1;
  v4 = **(*a1 + 8);
  v16 = 0;
  std::to_string(&v17, a2);
  __p[0] = v17;
  sub_23F2AC924(v3, __p, v4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(v6 + 32);
  v8 = *v6;
  v9 = *(v6 + 8);
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = *(v8 + 1) + 1;
    *v8 = 0;
    *(v8 + 1) = v11;
    if (v11 == v9[1])
    {
      v12 = *(v8 + 2) + 1;
      *(v8 + 1) = 0;
      *(v8 + 2) = v12;
      if (v12 == v9[2])
      {
        return;
      }

      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = strlen(*(**(v6 + 16) + 8 * v13));
  sub_23EF2F9B0(v5, *(**(v6 + 16) + 8 * v13), v14);
  sub_23F093168(v7, v5, *v6, v13, **(v6 + 24));
}

void sub_23F28AFE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_23F28B014(__int16 **a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  v15 = 0;
  sub_23F286EC0(&v12, v14, v4);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
  }

  v6 = v12;
  *(v5 + 16) = v13;
  *v5 = v6;
  v7 = *a1;
  v8 = *a2;
  v15 = 0;
  sub_23F286EC0(&v12, v14, v7 + 1);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(v8 + 47) < 0)
  {
    operator delete(*(v8 + 24));
  }

  *(v8 + 24) = v12;
  *(v8 + 40) = v13;
  v9 = *a1;
  v10 = *a2;
  v15 = 0;
  sub_23F286EC0(&v12, v14, v9 + 2);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(v10 + 71) < 0)
  {
    operator delete(*(v10 + 48));
  }

  result = *&v12;
  *(v10 + 48) = v12;
  *(v10 + 64) = v13;
  return result;
}

void sub_23F28B200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28B214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28B228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28B23C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28B250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28B264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

double sub_23F28B278(float **a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  v15 = 0;
  sub_23EF8158C(&v12, v14, v4);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
  }

  v6 = v12;
  *(v5 + 16) = v13;
  *v5 = v6;
  v7 = *a1;
  v8 = *a2;
  v15 = 0;
  sub_23EF8158C(&v12, v14, v7 + 1);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(v8 + 47) < 0)
  {
    operator delete(*(v8 + 24));
  }

  *(v8 + 24) = v12;
  *(v8 + 40) = v13;
  v9 = *a1;
  v10 = *a2;
  v15 = 0;
  sub_23EF8158C(&v12, v14, v9 + 2);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(v10 + 71) < 0)
  {
    operator delete(*(v10 + 48));
  }

  result = *&v12;
  *(v10 + 48) = v12;
  *(v10 + 64) = v13;
  return result;
}

void sub_23F28B464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28B478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28B48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28B4A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28B4B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28B4C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28B4DC(uint64_t a1, unsigned __int16 a2)
{
  v3 = **a1;
  v4 = **(*a1 + 8);
  v16 = 0;
  std::to_string(&v17, a2);
  __p[0] = v17;
  sub_23F2AC924(v3, __p, v4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(v6 + 32);
  v8 = *v6;
  v9 = *(v6 + 8);
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = *(v8 + 1) + 1;
    *v8 = 0;
    *(v8 + 1) = v11;
    if (v11 == v9[1])
    {
      v12 = *(v8 + 2) + 1;
      *(v8 + 1) = 0;
      *(v8 + 2) = v12;
      if (v12 == v9[2])
      {
        return;
      }

      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = strlen(*(**(v6 + 16) + 8 * v13));
  sub_23EF2F9B0(v5, *(**(v6 + 16) + 8 * v13), v14);
  sub_23F093168(v7, v5, *v6, v13, **(v6 + 24));
}

void sub_23F28B608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_23F28B638(__int16 **a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  v15 = 0;
  sub_23F286EC0(&v12, v14, v4);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
  }

  v6 = v12;
  *(v5 + 16) = v13;
  *v5 = v6;
  v7 = *a1;
  v8 = *a2;
  v15 = 0;
  sub_23F286EC0(&v12, v14, v7 + 1);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(v8 + 47) < 0)
  {
    operator delete(*(v8 + 24));
  }

  *(v8 + 24) = v12;
  *(v8 + 40) = v13;
  v9 = *a1;
  v10 = *a2;
  v15 = 0;
  sub_23F286EC0(&v12, v14, v9 + 2);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(v10 + 71) < 0)
  {
    operator delete(*(v10 + 48));
  }

  result = *&v12;
  *(v10 + 48) = v12;
  *(v10 + 64) = v13;
  return result;
}

void sub_23F28B824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28B838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28B84C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28B860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28B874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28B888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

double sub_23F28B89C(float **a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  v15 = 0;
  sub_23EF8158C(&v12, v14, v4);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
  }

  v6 = v12;
  *(v5 + 16) = v13;
  *v5 = v6;
  v7 = *a1;
  v8 = *a2;
  v15 = 0;
  sub_23EF8158C(&v12, v14, v7 + 1);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(v8 + 47) < 0)
  {
    operator delete(*(v8 + 24));
  }

  *(v8 + 24) = v12;
  *(v8 + 40) = v13;
  v9 = *a1;
  v10 = *a2;
  v15 = 0;
  sub_23EF8158C(&v12, v14, v9 + 2);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(v10 + 71) < 0)
  {
    operator delete(*(v10 + 48));
  }

  result = *&v12;
  *(v10 + 48) = v12;
  *(v10 + 64) = v13;
  return result;
}

void sub_23F28BA88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28BA9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28BAB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28BAC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28BAD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28BAEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28BB00(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 *a4)
{
  v4 = a4;
  *a2 = a4;
  if (*(a1 + 12))
  {
    v8 = 0;
    do
    {
      *a2 = v4;
      sub_23F28BBEC(*a3, *v4);
      sub_23F28BBEC(*a3, *(*a2 + 1));
      sub_23F28BBEC(*a3, *(*a2 + 2));
      sub_23F28BBEC(*a3, *(*a2 + 3));
      v4 += *(a1 + 16);
      ++v8;
    }

    while (v8 < *(a1 + 12));
  }

  *a2 = v4;
  sub_23F28BBEC(*a3, *v4);
  sub_23F28BBEC(*a3, *(*a2 + 1));
  sub_23F28BBEC(*a3, *(*a2 + 2));
  v9 = *a3;
  v10 = *(*a2 + 3);

  sub_23F28BBEC(v9, v10);
}

void sub_23F28BBEC(uint64_t a1, unsigned __int8 a2)
{
  v3 = **a1;
  v4 = **(*a1 + 8);
  v16 = 0;
  std::to_string(&v17, a2);
  __p[0] = v17;
  sub_23F2AC924(v3, __p, v4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(v6 + 32);
  v8 = *v6;
  v9 = *(v6 + 8);
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = *(v8 + 1) + 1;
    *v8 = 0;
    *(v8 + 1) = v11;
    if (v11 == v9[1])
    {
      v12 = *(v8 + 2) + 1;
      *(v8 + 1) = 0;
      *(v8 + 2) = v12;
      if (v12 == v9[2])
      {
        return;
      }

      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = strlen(*(**(v6 + 16) + 8 * v13));
  sub_23EF2F9B0(v5, *(**(v6 + 16) + 8 * v13), v14);
  sub_23F093168(v7, v5, *v6, v13, **(v6 + 24));
}

void sub_23F28BD18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F28BD48(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int16 *a4)
{
  v4 = a4;
  *a2 = a4;
  if (*(a1 + 12))
  {
    v8 = 0;
    do
    {
      *a2 = v4;
      sub_23F28BE34(*a3, *v4);
      sub_23F28BE34(*a3, *(*a2 + 2));
      sub_23F28BE34(*a3, *(*a2 + 4));
      sub_23F28BE34(*a3, *(*a2 + 6));
      v4 += *(a1 + 16);
      ++v8;
    }

    while (v8 < *(a1 + 12));
  }

  *a2 = v4;
  sub_23F28BE34(*a3, *v4);
  sub_23F28BE34(*a3, *(*a2 + 2));
  sub_23F28BE34(*a3, *(*a2 + 4));
  v9 = *a3;
  v10 = *(*a2 + 6);

  sub_23F28BE34(v9, v10);
}

void sub_23F28BE34(uint64_t a1, unsigned __int16 a2)
{
  v3 = **a1;
  v4 = **(*a1 + 8);
  v16 = 0;
  std::to_string(&v17, a2);
  __p[0] = v17;
  sub_23F2AC924(v3, __p, v4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(v6 + 32);
  v8 = *v6;
  v9 = *(v6 + 8);
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = *(v8 + 1) + 1;
    *v8 = 0;
    *(v8 + 1) = v11;
    if (v11 == v9[1])
    {
      v12 = *(v8 + 2) + 1;
      *(v8 + 1) = 0;
      *(v8 + 2) = v12;
      if (v12 == v9[2])
      {
        return;
      }

      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = strlen(*(**(v6 + 16) + 8 * v13));
  sub_23EF2F9B0(v5, *(**(v6 + 16) + 8 * v13), v14);
  sub_23F093168(v7, v5, *v6, v13, **(v6 + 24));
}

void sub_23F28BF60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_23F28BF90(__int16 **a1, __int16 *a2, uint64_t a3)
{
  *a1 = a2;
  a1[2] = a3;
  v15 = 0;
  sub_23F286EC0(&v12, v14, a2);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = v12;
  *(a3 + 16) = v13;
  v5 = *a1;
  v6 = a1[2];
  v15 = 0;
  sub_23F286EC0(&v12, v14, v5 + 1);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(v6 + 47) < 0)
  {
    operator delete(*(v6 + 3));
  }

  *(v6 + 12) = v12;
  *(v6 + 5) = v13;
  v7 = *a1;
  v8 = a1[2];
  v15 = 0;
  sub_23F286EC0(&v12, v14, v7 + 2);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(v8 + 71) < 0)
  {
    operator delete(*(v8 + 6));
  }

  *(v8 + 3) = v12;
  *(v8 + 8) = v13;
  v9 = *a1;
  v10 = a1[2];
  v15 = 0;
  sub_23F286EC0(&v12, v14, v9 + 3);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(v10 + 95) < 0)
  {
    operator delete(*(v10 + 9));
  }

  result = *&v12;
  *(v10 + 36) = v12;
  *(v10 + 11) = v13;
  return result;
}

void sub_23F28C204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28C218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28C22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28C240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28C254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28C268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28C27C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28C290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

double sub_23F28C2A4(float **a1, float *a2, uint64_t a3)
{
  *a1 = a2;
  a1[2] = a3;
  v15 = 0;
  sub_23EF8158C(&v12, v14, a2);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = v12;
  *(a3 + 16) = v13;
  v5 = *a1;
  v6 = a1[2];
  v15 = 0;
  sub_23EF8158C(&v12, v14, v5 + 1);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(v6 + 47) < 0)
  {
    operator delete(*(v6 + 3));
  }

  *(v6 + 6) = v12;
  *(v6 + 5) = v13;
  v7 = *a1;
  v8 = a1[2];
  v15 = 0;
  sub_23EF8158C(&v12, v14, v7 + 2);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(v8 + 71) < 0)
  {
    operator delete(*(v8 + 6));
  }

  *(v8 + 3) = v12;
  *(v8 + 8) = v13;
  v9 = *a1;
  v10 = a1[2];
  v15 = 0;
  sub_23EF8158C(&v12, v14, v9 + 3);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(v10 + 95) < 0)
  {
    operator delete(*(v10 + 9));
  }

  result = *&v12;
  *(v10 + 18) = v12;
  *(v10 + 11) = v13;
  return result;
}

void sub_23F28C518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28C52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28C540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28C554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28C568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28C57C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28C590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28C5A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28C5B8(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 *a4)
{
  v4 = a4;
  *a2 = a4;
  if (*(a1 + 12))
  {
    v8 = 0;
    do
    {
      *a2 = v4;
      sub_23F28C6A4(*a3, *v4);
      sub_23F28C6A4(*a3, *(*a2 + 1));
      sub_23F28C6A4(*a3, *(*a2 + 2));
      sub_23F28C6A4(*a3, *(*a2 + 3));
      v4 += *(a1 + 16);
      ++v8;
    }

    while (v8 < *(a1 + 12));
  }

  *a2 = v4;
  sub_23F28C6A4(*a3, *v4);
  sub_23F28C6A4(*a3, *(*a2 + 1));
  sub_23F28C6A4(*a3, *(*a2 + 2));
  v9 = *a3;
  v10 = *(*a2 + 3);

  sub_23F28C6A4(v9, v10);
}

void sub_23F28C6A4(uint64_t a1, unsigned __int8 a2)
{
  v3 = **a1;
  v4 = **(*a1 + 8);
  v16 = 0;
  std::to_string(&v17, a2);
  __p[0] = v17;
  sub_23F2AC924(v3, __p, v4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(v6 + 32);
  v8 = *v6;
  v9 = *(v6 + 8);
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = *(v8 + 1) + 1;
    *v8 = 0;
    *(v8 + 1) = v11;
    if (v11 == v9[1])
    {
      v12 = *(v8 + 2) + 1;
      *(v8 + 1) = 0;
      *(v8 + 2) = v12;
      if (v12 == v9[2])
      {
        return;
      }

      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = strlen(*(**(v6 + 16) + 8 * v13));
  sub_23EF2F9B0(v5, *(**(v6 + 16) + 8 * v13), v14);
  sub_23F093168(v7, v5, *v6, v13, **(v6 + 24));
}

void sub_23F28C7D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F28C800(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int16 *a4)
{
  v4 = a4;
  *a2 = a4;
  if (*(a1 + 12))
  {
    v8 = 0;
    do
    {
      *a2 = v4;
      sub_23F28C8EC(*a3, *v4);
      sub_23F28C8EC(*a3, *(*a2 + 2));
      sub_23F28C8EC(*a3, *(*a2 + 4));
      sub_23F28C8EC(*a3, *(*a2 + 6));
      v4 += *(a1 + 16);
      ++v8;
    }

    while (v8 < *(a1 + 12));
  }

  *a2 = v4;
  sub_23F28C8EC(*a3, *v4);
  sub_23F28C8EC(*a3, *(*a2 + 2));
  sub_23F28C8EC(*a3, *(*a2 + 4));
  v9 = *a3;
  v10 = *(*a2 + 6);

  sub_23F28C8EC(v9, v10);
}

void sub_23F28C8EC(uint64_t a1, unsigned __int16 a2)
{
  v3 = **a1;
  v4 = **(*a1 + 8);
  v16 = 0;
  std::to_string(&v17, a2);
  __p[0] = v17;
  sub_23F2AC924(v3, __p, v4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(v6 + 32);
  v8 = *v6;
  v9 = *(v6 + 8);
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = *(v8 + 1) + 1;
    *v8 = 0;
    *(v8 + 1) = v11;
    if (v11 == v9[1])
    {
      v12 = *(v8 + 2) + 1;
      *(v8 + 1) = 0;
      *(v8 + 2) = v12;
      if (v12 == v9[2])
      {
        return;
      }

      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = strlen(*(**(v6 + 16) + 8 * v13));
  sub_23EF2F9B0(v5, *(**(v6 + 16) + 8 * v13), v14);
  sub_23F093168(v7, v5, *v6, v13, **(v6 + 24));
}

void sub_23F28CA18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_23F28CA48(__int16 **a1, __int16 *a2, uint64_t a3)
{
  *a1 = a2;
  a1[2] = a3;
  v15 = 0;
  sub_23F286EC0(&v12, v14, a2);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = v12;
  *(a3 + 16) = v13;
  v5 = *a1;
  v6 = a1[2];
  v15 = 0;
  sub_23F286EC0(&v12, v14, v5 + 1);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(v6 + 47) < 0)
  {
    operator delete(*(v6 + 3));
  }

  *(v6 + 12) = v12;
  *(v6 + 5) = v13;
  v7 = *a1;
  v8 = a1[2];
  v15 = 0;
  sub_23F286EC0(&v12, v14, v7 + 2);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(v8 + 71) < 0)
  {
    operator delete(*(v8 + 6));
  }

  *(v8 + 3) = v12;
  *(v8 + 8) = v13;
  v9 = *a1;
  v10 = a1[2];
  v15 = 0;
  sub_23F286EC0(&v12, v14, v9 + 3);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(v10 + 95) < 0)
  {
    operator delete(*(v10 + 9));
  }

  result = *&v12;
  *(v10 + 36) = v12;
  *(v10 + 11) = v13;
  return result;
}

void sub_23F28CCBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28CCD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28CCE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28CCF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28CD0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28CD20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28CD34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28CD48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

double sub_23F28CD5C(float **a1, float *a2, uint64_t a3)
{
  *a1 = a2;
  a1[2] = a3;
  v15 = 0;
  sub_23EF8158C(&v12, v14, a2);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = v12;
  *(a3 + 16) = v13;
  v5 = *a1;
  v6 = a1[2];
  v15 = 0;
  sub_23EF8158C(&v12, v14, v5 + 1);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(v6 + 47) < 0)
  {
    operator delete(*(v6 + 3));
  }

  *(v6 + 6) = v12;
  *(v6 + 5) = v13;
  v7 = *a1;
  v8 = a1[2];
  v15 = 0;
  sub_23EF8158C(&v12, v14, v7 + 2);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(v8 + 71) < 0)
  {
    operator delete(*(v8 + 6));
  }

  *(v8 + 3) = v12;
  *(v8 + 8) = v13;
  v9 = *a1;
  v10 = a1[2];
  v15 = 0;
  sub_23EF8158C(&v12, v14, v9 + 3);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(v10 + 95) < 0)
  {
    operator delete(*(v10 + 9));
  }

  result = *&v12;
  *(v10 + 18) = v12;
  *(v10 + 11) = v13;
  return result;
}

void sub_23F28CFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28CFE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28CFF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28D00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28D020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28D034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28D048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28D05C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28D070(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 *a4)
{
  v4 = a4;
  *a2 = a4;
  if (*(a1 + 12))
  {
    v8 = 0;
    do
    {
      *a2 = v4;
      sub_23F28D15C(*a3, *v4);
      sub_23F28D15C(*a3, *(*a2 + 1));
      sub_23F28D15C(*a3, *(*a2 + 2));
      sub_23F28D15C(*a3, *(*a2 + 3));
      v4 += *(a1 + 16);
      ++v8;
    }

    while (v8 < *(a1 + 12));
  }

  *a2 = v4;
  sub_23F28D15C(*a3, *v4);
  sub_23F28D15C(*a3, *(*a2 + 1));
  sub_23F28D15C(*a3, *(*a2 + 2));
  v9 = *a3;
  v10 = *(*a2 + 3);

  sub_23F28D15C(v9, v10);
}

void sub_23F28D15C(uint64_t a1, unsigned __int8 a2)
{
  v3 = **a1;
  v4 = **(*a1 + 8);
  v16 = 0;
  std::to_string(&v17, a2);
  __p[0] = v17;
  sub_23F2AC924(v3, __p, v4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(v6 + 32);
  v8 = *v6;
  v9 = *(v6 + 8);
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = *(v8 + 1) + 1;
    *v8 = 0;
    *(v8 + 1) = v11;
    if (v11 == v9[1])
    {
      v12 = *(v8 + 2) + 1;
      *(v8 + 1) = 0;
      *(v8 + 2) = v12;
      if (v12 == v9[2])
      {
        return;
      }

      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = strlen(*(**(v6 + 16) + 8 * v13));
  sub_23EF2F9B0(v5, *(**(v6 + 16) + 8 * v13), v14);
  sub_23F093168(v7, v5, *v6, v13, **(v6 + 24));
}

void sub_23F28D288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F28D2B8(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int16 *a4)
{
  v4 = a4;
  *a2 = a4;
  if (*(a1 + 12))
  {
    v8 = 0;
    do
    {
      *a2 = v4;
      sub_23F28D3A4(*a3, *v4);
      sub_23F28D3A4(*a3, *(*a2 + 2));
      sub_23F28D3A4(*a3, *(*a2 + 4));
      sub_23F28D3A4(*a3, *(*a2 + 6));
      v4 += *(a1 + 16);
      ++v8;
    }

    while (v8 < *(a1 + 12));
  }

  *a2 = v4;
  sub_23F28D3A4(*a3, *v4);
  sub_23F28D3A4(*a3, *(*a2 + 2));
  sub_23F28D3A4(*a3, *(*a2 + 4));
  v9 = *a3;
  v10 = *(*a2 + 6);

  sub_23F28D3A4(v9, v10);
}

void sub_23F28D3A4(uint64_t a1, unsigned __int16 a2)
{
  v3 = **a1;
  v4 = **(*a1 + 8);
  v16 = 0;
  std::to_string(&v17, a2);
  __p[0] = v17;
  sub_23F2AC924(v3, __p, v4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(v6 + 32);
  v8 = *v6;
  v9 = *(v6 + 8);
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = *(v8 + 1) + 1;
    *v8 = 0;
    *(v8 + 1) = v11;
    if (v11 == v9[1])
    {
      v12 = *(v8 + 2) + 1;
      *(v8 + 1) = 0;
      *(v8 + 2) = v12;
      if (v12 == v9[2])
      {
        return;
      }

      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = strlen(*(**(v6 + 16) + 8 * v13));
  sub_23EF2F9B0(v5, *(**(v6 + 16) + 8 * v13), v14);
  sub_23F093168(v7, v5, *v6, v13, **(v6 + 24));
}

void sub_23F28D4D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_23F28D500(__int16 **a1, __int16 *a2, uint64_t a3)
{
  *a1 = a2;
  a1[2] = a3;
  v15 = 0;
  sub_23F286EC0(&v12, v14, a2);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = v12;
  *(a3 + 16) = v13;
  v5 = *a1;
  v6 = a1[2];
  v15 = 0;
  sub_23F286EC0(&v12, v14, v5 + 1);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(v6 + 47) < 0)
  {
    operator delete(*(v6 + 3));
  }

  *(v6 + 12) = v12;
  *(v6 + 5) = v13;
  v7 = *a1;
  v8 = a1[2];
  v15 = 0;
  sub_23F286EC0(&v12, v14, v7 + 2);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(v8 + 71) < 0)
  {
    operator delete(*(v8 + 6));
  }

  *(v8 + 3) = v12;
  *(v8 + 8) = v13;
  v9 = *a1;
  v10 = a1[2];
  v15 = 0;
  sub_23F286EC0(&v12, v14, v9 + 3);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(v10 + 95) < 0)
  {
    operator delete(*(v10 + 9));
  }

  result = *&v12;
  *(v10 + 36) = v12;
  *(v10 + 11) = v13;
  return result;
}

void sub_23F28D774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28D788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28D79C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28D7B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28D7C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28D7D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28D7EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28D800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

double sub_23F28D814(float **a1, float *a2, uint64_t a3)
{
  *a1 = a2;
  a1[2] = a3;
  v15 = 0;
  sub_23EF8158C(&v12, v14, a2);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = v12;
  *(a3 + 16) = v13;
  v5 = *a1;
  v6 = a1[2];
  v15 = 0;
  sub_23EF8158C(&v12, v14, v5 + 1);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(v6 + 47) < 0)
  {
    operator delete(*(v6 + 3));
  }

  *(v6 + 6) = v12;
  *(v6 + 5) = v13;
  v7 = *a1;
  v8 = a1[2];
  v15 = 0;
  sub_23EF8158C(&v12, v14, v7 + 2);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(v8 + 71) < 0)
  {
    operator delete(*(v8 + 6));
  }

  *(v8 + 3) = v12;
  *(v8 + 8) = v13;
  v9 = *a1;
  v10 = a1[2];
  v15 = 0;
  sub_23EF8158C(&v12, v14, v9 + 3);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(v10 + 95) < 0)
  {
    operator delete(*(v10 + 9));
  }

  result = *&v12;
  *(v10 + 18) = v12;
  *(v10 + 11) = v13;
  return result;
}

void sub_23F28DA88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28DA9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28DAB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28DAC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28DAD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28DAEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28DB00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28DB14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28DB28(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 *a4)
{
  v4 = a4;
  *a2 = a4;
  if (*(a1 + 12))
  {
    v8 = 0;
    do
    {
      *a2 = v4;
      sub_23F28DC14(*a3, *v4);
      sub_23F28DC14(*a3, *(*a2 + 1));
      sub_23F28DC14(*a3, *(*a2 + 2));
      sub_23F28DC14(*a3, *(*a2 + 3));
      v4 += *(a1 + 16);
      ++v8;
    }

    while (v8 < *(a1 + 12));
  }

  *a2 = v4;
  sub_23F28DC14(*a3, *v4);
  sub_23F28DC14(*a3, *(*a2 + 1));
  sub_23F28DC14(*a3, *(*a2 + 2));
  v9 = *a3;
  v10 = *(*a2 + 3);

  sub_23F28DC14(v9, v10);
}

void sub_23F28DC14(uint64_t a1, unsigned __int8 a2)
{
  v3 = **a1;
  v4 = **(*a1 + 8);
  v16 = 0;
  std::to_string(&v17, a2);
  __p[0] = v17;
  sub_23F2AC924(v3, __p, v4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(v6 + 32);
  v8 = *v6;
  v9 = *(v6 + 8);
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = *(v8 + 1) + 1;
    *v8 = 0;
    *(v8 + 1) = v11;
    if (v11 == v9[1])
    {
      v12 = *(v8 + 2) + 1;
      *(v8 + 1) = 0;
      *(v8 + 2) = v12;
      if (v12 == v9[2])
      {
        return;
      }

      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = strlen(*(**(v6 + 16) + 8 * v13));
  sub_23EF2F9B0(v5, *(**(v6 + 16) + 8 * v13), v14);
  sub_23F093168(v7, v5, *v6, v13, **(v6 + 24));
}

void sub_23F28DD40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F28DD70(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int16 *a4)
{
  v4 = a4;
  *a2 = a4;
  if (*(a1 + 12))
  {
    v8 = 0;
    do
    {
      *a2 = v4;
      sub_23F28DE5C(*a3, *v4);
      sub_23F28DE5C(*a3, *(*a2 + 2));
      sub_23F28DE5C(*a3, *(*a2 + 4));
      sub_23F28DE5C(*a3, *(*a2 + 6));
      v4 += *(a1 + 16);
      ++v8;
    }

    while (v8 < *(a1 + 12));
  }

  *a2 = v4;
  sub_23F28DE5C(*a3, *v4);
  sub_23F28DE5C(*a3, *(*a2 + 2));
  sub_23F28DE5C(*a3, *(*a2 + 4));
  v9 = *a3;
  v10 = *(*a2 + 6);

  sub_23F28DE5C(v9, v10);
}

void sub_23F28DE5C(uint64_t a1, unsigned __int16 a2)
{
  v3 = **a1;
  v4 = **(*a1 + 8);
  v16 = 0;
  std::to_string(&v17, a2);
  __p[0] = v17;
  sub_23F2AC924(v3, __p, v4);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(v6 + 32);
  v8 = *v6;
  v9 = *(v6 + 8);
  v10 = **v6 + 1;
  **v6 = v10;
  if (v10 == *v9)
  {
    v11 = *(v8 + 1) + 1;
    *v8 = 0;
    *(v8 + 1) = v11;
    if (v11 == v9[1])
    {
      v12 = *(v8 + 2) + 1;
      *(v8 + 1) = 0;
      *(v8 + 2) = v12;
      if (v12 == v9[2])
      {
        return;
      }

      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = strlen(*(**(v6 + 16) + 8 * v13));
  sub_23EF2F9B0(v5, *(**(v6 + 16) + 8 * v13), v14);
  sub_23F093168(v7, v5, *v6, v13, **(v6 + 24));
}

void sub_23F28DF88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_23F28DFB8(__int16 **a1, __int16 *a2, uint64_t a3)
{
  *a1 = a2;
  a1[2] = a3;
  v15 = 0;
  sub_23F286EC0(&v12, v14, a2);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = v12;
  *(a3 + 16) = v13;
  v5 = *a1;
  v6 = a1[2];
  v15 = 0;
  sub_23F286EC0(&v12, v14, v5 + 1);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(v6 + 47) < 0)
  {
    operator delete(*(v6 + 3));
  }

  *(v6 + 12) = v12;
  *(v6 + 5) = v13;
  v7 = *a1;
  v8 = a1[2];
  v15 = 0;
  sub_23F286EC0(&v12, v14, v7 + 2);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(v8 + 71) < 0)
  {
    operator delete(*(v8 + 6));
  }

  *(v8 + 3) = v12;
  *(v8 + 8) = v13;
  v9 = *a1;
  v10 = a1[2];
  v15 = 0;
  sub_23F286EC0(&v12, v14, v9 + 3);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(v10 + 95) < 0)
  {
    operator delete(*(v10 + 9));
  }

  result = *&v12;
  *(v10 + 36) = v12;
  *(v10 + 11) = v13;
  return result;
}

void sub_23F28E22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28E240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28E254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28E268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28E27C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28E290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28E2A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28E2B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

double sub_23F28E2CC(float **a1, float *a2, uint64_t a3)
{
  *a1 = a2;
  a1[2] = a3;
  v15 = 0;
  sub_23EF8158C(&v12, v14, a2);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = v12;
  *(a3 + 16) = v13;
  v5 = *a1;
  v6 = a1[2];
  v15 = 0;
  sub_23EF8158C(&v12, v14, v5 + 1);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(v6 + 47) < 0)
  {
    operator delete(*(v6 + 3));
  }

  *(v6 + 6) = v12;
  *(v6 + 5) = v13;
  v7 = *a1;
  v8 = a1[2];
  v15 = 0;
  sub_23EF8158C(&v12, v14, v7 + 2);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(v8 + 71) < 0)
  {
    operator delete(*(v8 + 6));
  }

  *(v8 + 3) = v12;
  *(v8 + 8) = v13;
  v9 = *a1;
  v10 = a1[2];
  v15 = 0;
  sub_23EF8158C(&v12, v14, v9 + 3);
  if (v15 == -1)
  {
    sub_23EF41D6C();
  }

  v17 = &v16;
  (off_28518B668[v15])(&v12, &v17, v14);
  if (v15 != -1)
  {
    (off_28518B638[v15])(&v17, v14);
  }

  if (*(v10 + 95) < 0)
  {
    operator delete(*(v10 + 9));
  }

  result = *&v12;
  *(v10 + 18) = v12;
  *(v10 + 11) = v13;
  return result;
}

void sub_23F28E540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28E554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28E568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28E57C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28E590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28E5A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28E5B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

void sub_23F28E5CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF41D10(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23F28E5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  memcpy(&v16, (a2 - 8 + 4 * a3), 4 * a3 - (4 * a3 - 8));
  *a1 = v16;
  memcpy(&__dst, (a4 - 4 + 4 * a5), 4 * a5 - (4 * a5 - 4));
  *(a1 + 8) = __dst * a6;
  if (a3 != a5)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/src/Size.cpp", 37, "shape.size() == value_stride.size()", 0x23uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v11 = qword_27E396178, v12 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_9:
        qword_27E396190(*algn_27E396198, "shape.size() == value_stride.size()", 35, &unk_23F3091D6, 0);
        return a1;
      }
    }

    else
    {
      v11 = qword_27E396178;
      v12 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_11;
      }
    }

    do
    {
      v14 = *v11;
      v13 = *(v11 + 8);
      v11 += 16;
      v14(v13, "shape.size() == value_stride.size()", 35, &unk_23F3091D6, 0);
    }

    while (v11 != v12);
    if (byte_27E3961A0)
    {
      goto LABEL_9;
    }

LABEL_11:
    abort();
  }

  return a1;
}

void sub_23F28EA1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F28EAA4(int a1, CFTypeRef cf, int a3)
{
  if (cf)
  {
    if (a3)
    {
      v3 = cf;
      CFRetain(cf);
      cf = v3;
    }
  }

  sub_23F2024E4(&v4, cf);
}

void sub_23F28ED30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_23EF3AE8C(&a11);
  sub_23EF3AE8C(&a9);
  _Unwind_Resume(a1);
}

void *sub_23F28ED4C(void *result)
{
  *result = &unk_28518B6D8;
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

void sub_23F28EDE0(void *a1)
{
  *a1 = &unk_28518B6D8;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

void **sub_23F28EE88(void **a1, void *a2)
{
  if (*a2)
  {
    operator new();
  }

  sub_23EF2F9B0(*a1, "nullptr", 7);
  return a1;
}

void sub_23F28F064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F28F0E0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28518B710;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F28F134(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    *(a1 + 144) = v2;
    operator delete(v2);
  }

  std::mutex::~mutex((a1 + 64));
  v3 = *(a1 + 32);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

CFIndex sub_23F28F1D0@<X0>(CFIndex result@<X0>, std::string *a2@<X8>)
{
  v4 = *result;
  v3 = *(result + 8);
  if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v5 = result;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    result = v5;
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  else if (!v4)
  {
    goto LABEL_7;
  }

  value = 0;
  result = CFDictionaryGetValueIfPresent(*result, @"IOSurfaceName", &value);
  if (result)
  {
    return sub_23F2CB1FC(value, a2);
  }

LABEL_7:
  a2->__r_.__value_.__s.__data_[0] = 0;
  a2[1].__r_.__value_.__s.__data_[0] = 0;
  return result;
}

uint64_t *sub_23F28F2A4(uint64_t *a1, uint64_t *a2)
{
  sub_23F28F330(a2, &__p);
  sub_23F28FBD8(a1, @"IOSurfaceName", &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_23F28F314(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F28F330(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(qword_27E395E00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_27E395E00))
  {
    sub_23F28F454();
  }

  v4 = &xmmword_27E395E88;
  v5 = byte_27E395E9F;
  if (byte_27E395E9F < 0)
  {
    v5 = *(&xmmword_27E395E88 + 1);
    v4 = xmmword_27E395E88;
  }

  v9[0] = v4;
  v9[1] = v5;
  v9[2] = "; ";
  v9[3] = 2;
  v6 = *(a1 + 23);
  if ((v6 & 0x80u) == 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  if ((v6 & 0x80u) != 0)
  {
    v6 = a1[1];
  }

  v9[4] = v7;
  v9[5] = v6;
  v9[6] = "; X/X";
  v9[7] = 5;
  sub_23EF45AA0(v9, &v10, 0, 0, a2);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_23F28F454()
{
  v1 = *MEMORY[0x277D85DE8];
  sub_23F2CAD48(__p);
  sub_23F2CAB4C(__p);
}

void sub_23F28F980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((a30 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a30 & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

  operator delete(a25);
  _Unwind_Resume(exception_object);
}

uint64_t sub_23F28FBD8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v3 = a1[1];
  if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v9 = a3;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    a3 = v9;
    if (v4)
    {
LABEL_4:
      v5 = *(a3 + 23);
      if (v5 >= 0)
      {
        v6 = a3;
      }

      else
      {
        v6 = *a3;
      }

      if (v5 >= 0)
      {
        v7 = *(a3 + 23);
      }

      else
      {
        v7 = *(a3 + 8);
      }

      v8 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v6, v7, 0x8000100u, 0);
      sub_23F064058(&v11, v8);
    }
  }

  else if (v4)
  {
    goto LABEL_4;
  }

  return 0;
}

size_t sub_23F28FDF8(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28518B750[v3])(&v6, v1);
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

void *sub_23F28FEEC(void *a1, unsigned int *a2)
{
  __p[240] = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27E395EA0, memory_order_acquire) & 1) == 0)
  {
    v26 = a1;
    v27 = __cxa_guard_acquire(&qword_27E395EA0);
    a1 = v26;
    if (v27)
    {
      memcpy(__p, "800L", 0x780uLL);
      sub_23F2902E4(__p, 80);
      __cxa_guard_release(&qword_27E395EA0);
      a1 = v26;
    }
  }

  v3 = qword_27E395EB0;
  if (!qword_27E395EB0)
  {
    goto LABEL_10;
  }

  v4 = *a2;
  v5 = &qword_27E395EB0;
  do
  {
    v6 = *(v3 + 32);
    v7 = v6 >= v4;
    v8 = v6 < v4;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * v8);
  }

  while (v3);
  if (v5 == &qword_27E395EB0 || v4 < *(v5 + 8))
  {
LABEL_10:
    v5 = &qword_27E395EB0;
  }

  if ((atomic_load_explicit(&qword_27E395EA0, memory_order_acquire) & 1) == 0)
  {
    v28 = a1;
    v29 = __cxa_guard_acquire(&qword_27E395EA0);
    a1 = v28;
    if (v29)
    {
      memcpy(__p, "800L", 0x780uLL);
      sub_23F2902E4(__p, 80);
      __cxa_guard_release(&qword_27E395EA0);
      a1 = v28;
    }
  }

  if (v5 == &qword_27E395EB0)
  {
    v31 = *a2;
    v30 = sub_23EF2F9B0(a1, "Unknown pixel format '", 22);
    __p[1] = 0;
    __p[2] = 0x100000000000000;
    v10 = (&v31 + 3);
    __p[0] = HIBYTE(v31);
    v11 = 1;
    if ((&v31 + 3) == &v31)
    {
      v18 = 0;
    }

    else
    {
      do
      {
        v13 = *(v10 - 1);
        v10 = (v10 - 1);
        v12 = v13;
        v14 = SHIBYTE(__p[2]);
        if ((SHIBYTE(__p[2]) & 0x8000000000000000) != 0)
        {
          v14 = __p[1];
          v16 = ((__p[2] & 0x7FFFFFFFFFFFFFFFLL) - 1);
          if (v16 == __p[1])
          {
            if ((__p[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
            {
              sub_23EF2F8F4();
            }

LABEL_22:
            operator new();
          }

          v15 = __p[0];
        }

        else
        {
          v15 = __p;
          if (SHIBYTE(__p[2]) == 22)
          {
            goto LABEL_22;
          }
        }

        *(v14 + v15) = v12;
        v17 = v14 + 1;
        if (SHIBYTE(__p[2]) < 0)
        {
          __p[1] = v17;
        }

        else
        {
          HIBYTE(__p[2]) = v17 & 0x7F;
        }

        *(v17 + v15) = 0;
      }

      while (v10 != &v31);
      v11 = HIBYTE(__p[2]);
      v18 = __p[1];
    }

    if ((v11 & 0x80u) == 0)
    {
      v19 = __p;
    }

    else
    {
      v19 = __p[0];
    }

    if ((v11 & 0x80u) == 0)
    {
      v20 = v11;
    }

    else
    {
      v20 = v18;
    }

    v21 = sub_23EF2F9B0(v30, v19, v20);
    v22 = sub_23EF2F9B0(v21, "' (=", 4);
    v23 = MEMORY[0x245CAC910](v22, *a2);
    result = sub_23EF2F9B0(v23, ")", 1);
    if (SHIBYTE(__p[2]) < 0)
    {
      v24 = result;
      operator delete(__p[0]);
      result = v24;
    }
  }

  else
  {
    result = sub_23EF2F9B0(a1, v5[5], v5[6]);
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23F2902C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F2902E4(uint64_t result, uint64_t a2)
{
  qword_27E395EB8 = 0;
  qword_27E395EB0 = 0;
  qword_27E395EA8 = &qword_27E395EB0;
  if (a2)
  {
    v2 = result;
    do
    {
      if (!qword_27E395EB0)
      {
        operator new();
      }

      v2 += 24;
    }

    while (v2 != result + 24 * a2);
  }

  return result;
}

void *sub_23F290498(void *result, int *a2)
{
  v2 = *a2;
  if (*a2 <= 1)
  {
    if (v2)
    {
      if (v2 != 1)
      {
        return result;
      }

      v3 = "per-vertex";
      v4 = result;
      v5 = 10;
    }

    else
    {
      v3 = "unknown";
      v4 = result;
      v5 = 7;
    }

    goto LABEL_8;
  }

  if (v2 == 2)
  {
    v3 = "per-face";
    v4 = result;
    v5 = 8;
LABEL_8:
    sub_23EF2F9B0(result, v3, v5);
    return v4;
  }

  if (v2 == 3)
  {
    sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Mesh/src/TriMesh.cpp", 45, &unk_23F3091D6, 0, "Unsupported type", 0x10uLL, sub_23F303DA4);
    abort();
  }

  return result;
}

void sub_23F290B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17)
{
  if (*(v17 - 113) < 0)
  {
    operator delete(*(v17 - 136));
  }

  sub_23F05CB64(a17);
  _Unwind_Resume(a1);
}

void sub_23F290BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_23EF41D10(v16 - 136);
  sub_23EF3291C(va);
  _Unwind_Resume(a1);
}

void sub_23F290BE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void **a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  sub_23EF3291C(&a24);
  _Unwind_Resume(a1);
}

void sub_23F290C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_23F04A600((v11 - 136));
  sub_23F05CB64(a10);
  sub_23EF3291C(va);
  _Unwind_Resume(a1);
}

void sub_23F290C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_23F05CB64(a10);
  sub_23EF3291C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23F290C48(uint64_t result, uint64_t a2)
{
  if (a2 == 1)
  {
    *result = 0;
    *(result + 8) = 0;
    v2 = 0x100000000;
    *(result + 16) = 0;
    *(result + 24) = 0x100000000;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0x100000000;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 96) = 0x100000000;
    *(result + 104) = 0;
    *(result + 112) = 0;
    *(result + 120) = 0;
    *(result + 128) = 0;
    *(result + 136) = 0x100000000;
    *(result + 144) = 0;
    *(result + 152) = 0;
    *(result + 160) = 0;
    *(result + 168) = 0x100000000;
    *(result + 176) = 0;
    *(result + 184) = 0;
    *(result + 192) = 0;
    *(result + 200) = 0x100000000;
    *(result + 208) = 0;
    *(result + 216) = 0;
    *(result + 224) = 0;
    *(result + 232) = 0x100000000;
    *(result + 240) = 0;
    *(result + 248) = 0;
    *(result + 256) = 0;
    *(result + 264) = 0x100000000;
    *(result + 272) = 0;
    *(result + 280) = 0;
    *(result + 288) = 0;
    *(result + 296) = 0;
    *(result + 304) = 0x100000000;
  }

  else
  {
    if (a2 == 2)
    {
      sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Mesh/include/Kit/Mesh/TriMeshAllocator.h", 153, &unk_23F3091D6, 0, "Invalid mode", 0xCuLL, sub_23F303DA4);
      abort();
    }

    v2 = 0;
    *(result + 280) = 0u;
    *(result + 296) = 0u;
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0;
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 144) = 0u;
    *(result + 160) = 0u;
    *(result + 176) = 0u;
    *(result + 192) = 0u;
    *(result + 208) = 0u;
    *(result + 224) = 0u;
    *(result + 240) = 0u;
    *(result + 256) = 0u;
    *(result + 272) = 0;
  }

  *(result + 312) = 0;
  *(result + 320) = 0;
  *(result + 328) = 0;
  *(result + 336) = 0;
  *(result + 344) = v2;
  *(result + 352) = 0;
  *(result + 356) = 0;
  *(result + 380) = 0;
  return result;
}

void sub_23F290D60(void *a1, uint64_t **a2)
{
  sub_23EF2F9B0(a1, "TriMeshData{\n", 13);
  v4 = sub_23EF2F9B0(a1, "vertices={", 10);
  LODWORD(v22) = 0;
  sub_23F292390(&v21, a2);
  if (v22 != -1)
  {
    v16 = v17;
    (off_28518B798[v22])(&__p, &v16, &v21);
    if (v22 != -1)
    {
      (off_28518B780[v22])(&v16, &v21);
    }

    if ((v20 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v20 & 0x80u) == 0)
    {
      v6 = v20;
    }

    else
    {
      v6 = v19;
    }

    v7 = sub_23EF2F9B0(v4, p_p, v6);
    sub_23EF2F9B0(v7, "}\n", 2);
    if (v20 < 0)
    {
      operator delete(__p);
    }

    v8 = sub_23EF2F9B0(a1, "faces={", 7);
    LODWORD(v22) = 0;
    sub_23F292648(&v21, a2 + 14);
    if (v22 != -1)
    {
      v16 = v17;
      (off_28518B798[v22])(&__p, &v16, &v21);
      if (v22 != -1)
      {
        (off_28518B780[v22])(&v16, &v21);
      }

      if ((v20 & 0x80u) == 0)
      {
        v9 = &__p;
      }

      else
      {
        v9 = __p;
      }

      if ((v20 & 0x80u) == 0)
      {
        v10 = v20;
      }

      else
      {
        v10 = v19;
      }

      v11 = sub_23EF2F9B0(v8, v9, v10);
      sub_23EF2F9B0(v11, "}\n", 2);
      if (v20 < 0)
      {
        operator delete(__p);
      }

      v12 = sub_23EF2F9B0(a1, "normals={", 9);
      LODWORD(v22) = 0;
      sub_23F292390(&v21, a2 + 9);
      if (v22 != -1)
      {
        v16 = v17;
        (off_28518B798[v22])(&__p, &v16, &v21);
        if (v22 != -1)
        {
          (off_28518B780[v22])(&v16, &v21);
        }

        if ((v20 & 0x80u) == 0)
        {
          v13 = &__p;
        }

        else
        {
          v13 = __p;
        }

        if ((v20 & 0x80u) == 0)
        {
          v14 = v20;
        }

        else
        {
          v14 = v19;
        }

        v15 = sub_23EF2F9B0(v12, v13, v14);
        sub_23EF2F9B0(v15, "}\n", 2);
        if (v20 < 0)
        {
          operator delete(__p);
        }

        sub_23EF2F9B0(a1, "normals_type=", 13);
        LODWORD(v22) = 0;
        sub_23EF70FF4();
      }

      sub_23EF41D6C();
    }

    sub_23EF41D6C();
  }

  sub_23EF41D6C();
}

void sub_23F2920EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a31 < 0)
  {
    operator delete(__p);
    sub_23EF41D10(&a19);
    _Unwind_Resume(a1);
  }

  sub_23EF41D10(&a19);
  _Unwind_Resume(a1);
}

uint64_t sub_23F292390(uint64_t a1, uint64_t **a2)
{
  if (a2[1] - *a2 <= 11)
  {
    v24 = a1;
    v25 = "{}";
    v26 = a1;
    v27 = "{}";
    v28 = "{}";
    v3 = *(a1 + 24);
    if (v3 != -1)
    {
      v18 = &v24;
      return (*(&off_28518B7B0 + v3))(&v18, a1);
    }

LABEL_18:
    sub_23EF41D6C();
  }

  v24 = a1;
  v25 = "{";
  v26 = a1;
  v27 = "{";
  v28 = "{";
  v5 = *(a1 + 24);
  if (v5 == -1)
  {
    goto LABEL_18;
  }

  v18 = &v24;
  (*(&off_28518B7C8 + v5))(&v18, a1);
  v7 = *a2;
  v8 = **a2;
  v23 = *(*a2 + 2);
  v22 = v8;
  v18 = 0x100000003;
  v19 = 3;
  v20 = &v22;
  v21 = 0;
  sub_23F2AB568(&v18, __p);
  v24 = a1;
  v25 = __p;
  v26 = a1;
  v27 = __p;
  v28 = __p;
  v9 = *(a1 + 24);
  if (v9 == -1)
  {
    sub_23EF41D6C();
  }

  v29 = &v24;
  (off_28518B768[v9])(&v29, a1);
  if (v17 < 0)
  {
    operator delete(__p[0]);
    v10 = a2[1];
    v11 = (v7 + 12);
    if (v11 != v10)
    {
LABEL_12:
      do
      {
        v24 = a1;
        v25 = ",";
        v26 = a1;
        v27 = ",";
        v28 = ",";
        v12 = *(a1 + 24);
        if (v12 == -1)
        {
          goto LABEL_18;
        }

        v18 = &v24;
        (*(&off_28518B7C8 + v12))(&v18, a1);
        v13 = *v11;
        v23 = *(v11 + 2);
        v22 = v13;
        v18 = 0x100000003;
        v19 = 3;
        v20 = &v22;
        v21 = 0;
        sub_23F2AB568(&v18, __p);
        v24 = a1;
        v25 = __p;
        v26 = a1;
        v27 = __p;
        v28 = __p;
        v14 = *(a1 + 24);
        if (v14 == -1)
        {
          sub_23EF41D6C();
        }

        v29 = &v24;
        (off_28518B768[v14])(&v29, a1);
        if (v17 < 0)
        {
          operator delete(__p[0]);
        }

        v11 = (v11 + 12);
      }

      while (v11 != v10);
    }
  }

  else
  {
    v10 = a2[1];
    v11 = (v7 + 12);
    if (v11 != v10)
    {
      goto LABEL_12;
    }
  }

  v24 = a1;
  v25 = "}";
  v26 = a1;
  v27 = "}";
  v28 = "}";
  v15 = *(a1 + 24);
  if (v15 == -1)
  {
    goto LABEL_18;
  }

  v18 = &v24;
  return (*(&off_28518B7C8 + v15))(&v18, a1);
}

void sub_23F292624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F292648(uint64_t a1, uint64_t **a2)
{
  if (a2[1] - *a2 <= 11)
  {
    v24 = a1;
    v25 = "{}";
    v26 = a1;
    v27 = "{}";
    v28 = "{}";
    v3 = *(a1 + 24);
    if (v3 != -1)
    {
      v18 = &v24;
      return (*(&off_28518B7B0 + v3))(&v18, a1);
    }

LABEL_18:
    sub_23EF41D6C();
  }

  v24 = a1;
  v25 = "{";
  v26 = a1;
  v27 = "{";
  v28 = "{";
  v5 = *(a1 + 24);
  if (v5 == -1)
  {
    goto LABEL_18;
  }

  v18 = &v24;
  (*(&off_28518B7C8 + v5))(&v18, a1);
  v7 = *a2;
  v8 = **a2;
  v23 = *(*a2 + 2);
  v22 = v8;
  v18 = 0x100000003;
  v19 = 3;
  v20 = &v22;
  v21 = 0;
  sub_23F2AB164(&v18, __p);
  v24 = a1;
  v25 = __p;
  v26 = a1;
  v27 = __p;
  v28 = __p;
  v9 = *(a1 + 24);
  if (v9 == -1)
  {
    sub_23EF41D6C();
  }

  v29 = &v24;
  (off_28518B768[v9])(&v29, a1);
  if (v17 < 0)
  {
    operator delete(__p[0]);
    v10 = a2[1];
    v11 = (v7 + 12);
    if (v11 != v10)
    {
LABEL_12:
      do
      {
        v24 = a1;
        v25 = ",";
        v26 = a1;
        v27 = ",";
        v28 = ",";
        v12 = *(a1 + 24);
        if (v12 == -1)
        {
          goto LABEL_18;
        }

        v18 = &v24;
        (*(&off_28518B7C8 + v12))(&v18, a1);
        v13 = *v11;
        v23 = *(v11 + 2);
        v22 = v13;
        v18 = 0x100000003;
        v19 = 3;
        v20 = &v22;
        v21 = 0;
        sub_23F2AB164(&v18, __p);
        v24 = a1;
        v25 = __p;
        v26 = a1;
        v27 = __p;
        v28 = __p;
        v14 = *(a1 + 24);
        if (v14 == -1)
        {
          sub_23EF41D6C();
        }

        v29 = &v24;
        (off_28518B768[v14])(&v29, a1);
        if (v17 < 0)
        {
          operator delete(__p[0]);
        }

        v11 = (v11 + 12);
      }

      while (v11 != v10);
    }
  }

  else
  {
    v10 = a2[1];
    v11 = (v7 + 12);
    if (v11 != v10)
    {
      goto LABEL_12;
    }
  }

  v24 = a1;
  v25 = "}";
  v26 = a1;
  v27 = "}";
  v28 = "}";
  v15 = *(a1 + 24);
  if (v15 == -1)
  {
    goto LABEL_18;
  }

  v18 = &v24;
  return (*(&off_28518B7C8 + v15))(&v18, a1);
}

void sub_23F2928DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F292900(uint64_t a1, unsigned __int8 **a2)
{
  if (a2[1] - *a2 <= 0)
  {
    v15 = a1;
    v16 = "{}";
    v17 = a1;
    v18 = "{}";
    v19 = "{}";
    v9 = *(a1 + 24);
    if (v9 != -1)
    {
      v14.__r_.__value_.__r.__words[0] = &v15;
      return (*(&off_28518B7B0 + v9))(&v14, a1);
    }

    goto LABEL_19;
  }

  v15 = a1;
  v16 = "{";
  v17 = a1;
  v18 = "{";
  v19 = "{";
  v3 = *(a1 + 24);
  if (v3 == -1)
  {
    goto LABEL_19;
  }

  v14.__r_.__value_.__r.__words[0] = &v15;
  (*(&off_28518B7C8 + v3))(&v14, a1);
  v5 = *a2;
  std::to_string(&v14, **a2);
  v15 = a1;
  v16 = &v14;
  v17 = a1;
  v18 = &v14;
  v19 = &v14;
  v6 = *(a1 + 24);
  if (v6 == -1)
  {
    sub_23EF41D6C();
  }

  v20 = &v15;
  (off_28518B768[v6])(&v20, a1);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
    v7 = a2[1];
    v8 = (v5 + 1);
    if (v8 == v7)
    {
      goto LABEL_16;
    }

LABEL_12:
    while (1)
    {
      v15 = a1;
      v16 = ",";
      v17 = a1;
      v18 = ",";
      v19 = ",";
      v11 = *(a1 + 24);
      if (v11 == -1)
      {
        break;
      }

      v14.__r_.__value_.__r.__words[0] = &v15;
      (*(&off_28518B7C8 + v11))(&v14, a1);
      std::to_string(&v14, *v8);
      v15 = a1;
      v16 = &v14;
      v17 = a1;
      v18 = &v14;
      v19 = &v14;
      v12 = *(a1 + 24);
      if (v12 == -1)
      {
        sub_23EF41D6C();
      }

      v20 = &v15;
      (off_28518B768[v12])(&v20, a1);
      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }

      if (++v8 == v7)
      {
        goto LABEL_16;
      }
    }

LABEL_19:
    sub_23EF41D6C();
  }

  v7 = a2[1];
  v8 = (v5 + 1);
  if (v8 != v7)
  {
    goto LABEL_12;
  }

LABEL_16:
  v15 = a1;
  v16 = "}";
  v17 = a1;
  v18 = "}";
  v19 = "}";
  v13 = *(a1 + 24);
  if (v13 == -1)
  {
    goto LABEL_19;
  }

  v14.__r_.__value_.__r.__words[0] = &v15;
  return (*(&off_28518B7C8 + v13))(&v14, a1);
}

void sub_23F292B2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F292B50(uint64_t a1, uint64_t *a2)
{
  if ((*a1 & 1) == 0)
  {
    v15 = *(a1 + 8);
    v16 = ",";
    v17 = v15;
    v18 = ",";
    v19 = ",";
    v4 = *(v15 + 24);
    if (v4 == -1)
    {
      sub_23EF41D6C();
    }

    v9 = &v15;
    (*(&off_28518B7C8 + v4))(&v9);
  }

  *a1 = 0;
  v5 = *(a1 + 8);
  v13 = *a2;
  v14 = *(a2 + 2);
  v9 = 0x100000003;
  v10 = 3;
  v11 = &v13;
  v12 = 0;
  sub_23F2AB568(&v9, __p);
  v15 = v5;
  v16 = __p;
  v17 = v5;
  v18 = __p;
  v19 = __p;
  v6 = *(v5 + 24);
  if (v6 == -1)
  {
    sub_23EF41D6C();
  }

  v20 = &v15;
  (off_28518B768[v6])(&v20, v5);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_23F292C70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_23F292C8C(unint64_t result)
{
  if (result >= 2)
  {
    sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Mesh/src/TriMeshAllocator.cpp", 42, &unk_23F3091D6, 0, "unknown allocator mode", 0x16uLL, sub_23F303DA4);
    abort();
  }

  return result;
}

uint64_t sub_23F292CE0(uint64_t a1, uint64_t *a2)
{
  v4 = (a2[1] - *a2) >> 2;
  HIDWORD(v94) = 0;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  sub_23F293ED8(&v91, 0xAAAAAAAAAAAAAAABLL * v4);
  v5 = *a2;
  v6 = a2[1];
  if (*a2 == v6)
  {
    v7 = v92;
  }

  else
  {
    v7 = v92;
    do
    {
      v9 = *(v5 + 8);
      v88 = *v5;
      v89 = v9;
      if (v7 < v93)
      {
        v8 = v88;
        *(v7 + 8) = v89;
        *v7 = v8;
        v7 += 12;
      }

      else
      {
        v7 = sub_23F294008(&v91, &v88);
      }

      v92 = v7;
      v5 += 12;
    }

    while (v5 != v6);
  }

  *a1 = v91;
  *(a1 + 8) = v7;
  v10 = v94;
  *(a1 + 16) = v93;
  *(a1 + 24) = v10;
  *(a1 + 32) = *(a2 + 16);
  v11 = 0xAAAAAAAAAAAAAAABLL * ((a2[5] - a2[4]) >> 2);
  HIDWORD(v94) = 0;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  sub_23F293ED8(&v91, v11);
  v12 = a2[4];
  v13 = a2[5];
  if (v12 == v13)
  {
    v14 = v92;
  }

  else
  {
    v14 = v92;
    do
    {
      v16 = *(v12 + 8);
      v88 = *v12;
      v89 = v16;
      if (v14 < v93)
      {
        v15 = v88;
        *(v14 + 8) = v89;
        *v14 = v15;
        v14 += 12;
      }

      else
      {
        v14 = sub_23F294008(&v91, &v88);
      }

      v92 = v14;
      v12 += 12;
    }

    while (v12 != v13);
  }

  *(a1 + 40) = v91;
  *(a1 + 48) = v14;
  v17 = v94;
  *(a1 + 56) = v93;
  *(a1 + 64) = v17;
  *(a1 + 72) = *(a2 + 26);
  v18 = 0xAAAAAAAAAAAAAAABLL * ((a2[10] - a2[9]) >> 2);
  HIDWORD(v94) = 0;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  sub_23F293ED8(&v91, v18);
  v19 = a2[9];
  v20 = a2[10];
  if (v19 == v20)
  {
    v21 = v92;
  }

  else
  {
    v21 = v92;
    do
    {
      v23 = *(v19 + 8);
      v88 = *v19;
      v89 = v23;
      if (v21 < v93)
      {
        v22 = v88;
        *(v21 + 8) = v89;
        *v21 = v22;
        v21 += 12;
      }

      else
      {
        v21 = sub_23F294008(&v91, &v88);
      }

      v92 = v21;
      v19 += 12;
    }

    while (v19 != v20);
  }

  v25 = v93;
  v24 = v94;
  *(a1 + 80) = v91;
  *(a1 + 88) = v21;
  *(a1 + 96) = v25;
  *(a1 + 104) = v24;
  *(a1 + 112) = *(a2 + 68);
  sub_23EF700B0((a1 + 120), (a2 + 30));
  *(a1 + 152) = *(a2 + 78);
  sub_23EF700B0((a1 + 160), (a2 + 35));
  v26 = 0xAAAAAAAAAAAAAAABLL * ((a2[15] - a2[14]) >> 2);
  HIDWORD(v94) = 0;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  sub_23F29417C(&v91, v26);
  v27 = a2[14];
  v28 = a2[15];
  if (v27 == v28)
  {
    v29 = v92;
  }

  else
  {
    v29 = v92;
    do
    {
      v31 = *(v27 + 8);
      v88 = *v27;
      v89 = v31;
      if (v29 < v93)
      {
        v30 = v88;
        *(v29 + 8) = v89;
        *v29 = v30;
        v29 += 12;
      }

      else
      {
        v29 = sub_23F2942AC(&v91, &v88);
      }

      v92 = v29;
      v27 += 12;
    }

    while (v27 != v28);
  }

  v33 = v93;
  v32 = v94;
  *(a1 + 192) = v91;
  *(a1 + 200) = v29;
  *(a1 + 208) = v33;
  *(a1 + 216) = v32;
  v35 = a2[18];
  v34 = a2[19];
  HIDWORD(v94) = 0;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  v36 = v34 - v35;
  if (v36)
  {
    if (!((v36 >> 3) >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v37 = 0;
  v38 = a2[18];
  for (i = a2[19]; v38 != i; ++v38)
  {
    v40 = *v38;
    if (v37 < v93)
    {
      *v37 = v40;
      v37 += 8;
    }

    else
    {
      v41 = (v37 - v91) >> 3;
      if ((v41 + 1) >> 61)
      {
        sub_23EF62578();
      }

      v42 = (v93 - v91) >> 2;
      if (v42 <= v41 + 1)
      {
        v42 = v41 + 1;
      }

      if (v93 - v91 >= 0x7FFFFFFFFFFFFFF8)
      {
        v43 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v43 = v42;
      }

      if (v43)
      {
        LODWORD(v90) = v43;
        if (HIDWORD(v94) == -1)
        {
          sub_23EF41D6C();
        }

        v88 = &v90;
        v44 = (off_28518B820[HIDWORD(v94)])(&v88, &v94);
      }

      else
      {
        v44 = 0;
        v45 = 0;
      }

      v47 = v44 + 8 * v45;
      v46 = (v44 + 8 * v41);
      *v46 = v40;
      v37 = (v46 + 1);
      v48 = v46 - (v92 - v91);
      memcpy(v48, v91, v92 - v91);
      v49 = v91;
      v50 = v93;
      v91 = v48;
      v92 = v37;
      v93 = v47;
      if (v49)
      {
        v88 = v49;
        v89 = (v50 - v49) >> 3;
        if (HIDWORD(v94) == -1)
        {
          sub_23EF41D6C();
        }

        v90 = &v88;
        (off_28518B830[HIDWORD(v94)])(&v90, &v94);
      }
    }

    v92 = v37;
  }

  v52 = v93;
  v51 = v94;
  *(a1 + 224) = v91;
  *(a1 + 232) = v37;
  *(a1 + 240) = v52;
  *(a1 + 248) = v51;
  v54 = a2[22];
  v53 = a2[23];
  HIDWORD(v94) = 0;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  v55 = v53 - v54;
  if (v55)
  {
    if (!((v55 >> 3) >> 61))
    {
      operator new();
    }

    sub_23EF62578();
  }

  v56 = 0;
  v57 = a2[22];
  for (j = a2[23]; v57 != j; ++v57)
  {
    v59 = *v57;
    if (v56 < v93)
    {
      *v56 = v59;
      v56 += 8;
    }

    else
    {
      v60 = (v56 - v91) >> 3;
      if ((v60 + 1) >> 61)
      {
        sub_23EF62578();
      }

      v61 = (v93 - v91) >> 2;
      if (v61 <= v60 + 1)
      {
        v61 = v60 + 1;
      }

      if (v93 - v91 >= 0x7FFFFFFFFFFFFFF8)
      {
        v62 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v62 = v61;
      }

      if (v62)
      {
        LODWORD(v90) = v62;
        if (HIDWORD(v94) == -1)
        {
          sub_23EF41D6C();
        }

        v88 = &v90;
        v63 = (off_28518B840[HIDWORD(v94)])(&v88, &v94);
      }

      else
      {
        v63 = 0;
        v64 = 0;
      }

      v66 = v63 + 8 * v64;
      v65 = (v63 + 8 * v60);
      *v65 = v59;
      v56 = (v65 + 1);
      v67 = v65 - (v92 - v91);
      memcpy(v67, v91, v92 - v91);
      v68 = v91;
      v69 = v93;
      v91 = v67;
      v92 = v56;
      v93 = v66;
      if (v68)
      {
        v88 = v68;
        v89 = (v69 - v68) >> 3;
        if (HIDWORD(v94) == -1)
        {
          sub_23EF41D6C();
        }

        v90 = &v88;
        (off_28518B850[HIDWORD(v94)])(&v90, &v94);
      }
    }

    v92 = v56;
  }

  *(a1 + 256) = v91;
  *(a1 + 264) = v56;
  v70 = v94;
  *(a1 + 272) = v93;
  *(a1 + 280) = v70;
  v71 = 0xAAAAAAAAAAAAAAABLL * ((a2[27] - a2[26]) >> 2);
  HIDWORD(v94) = 0;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  sub_23F29417C(&v91, v71);
  v72 = a2[26];
  v73 = a2[27];
  if (v72 == v73)
  {
    v74 = v92;
  }

  else
  {
    v74 = v92;
    do
    {
      v76 = *(v72 + 8);
      v88 = *v72;
      v89 = v76;
      if (v74 < v93)
      {
        v75 = v88;
        *(v74 + 8) = v89;
        *v74 = v75;
        v74 += 12;
      }

      else
      {
        v74 = sub_23F2942AC(&v91, &v88);
      }

      v92 = v74;
      v72 += 12;
    }

    while (v72 != v73);
  }

  *(a1 + 288) = v91;
  *(a1 + 296) = v74;
  v77 = v94;
  *(a1 + 304) = v93;
  *(a1 + 312) = v77;
  *(a1 + 320) = 0;
  *(a1 + 344) = 0;
  *(a1 + 348) = *(a2 + 88);
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 352) = 0;
  v78 = *(a2 + 87);
  if (v78 == -1)
  {
    sub_23EF41D6C();
  }

  v91 = &v88;
  v79 = (off_28518B8F0[v78])(&v91, a2 + 43);
  *(a1 + 376) = v79;
  v81 = a2[40];
  v80 = a2[41];
  v91 = (a1 + 352);
  LOBYTE(v92) = 0;
  v82 = v80 - v81;
  if (v80 != v81)
  {
    if ((v82 >> 2) >> 62)
    {
      sub_23EF62578();
    }

    LODWORD(v90) = v82 >> 2;
    if (HIDWORD(v79) == 0xFFFFFFFF)
    {
      sub_23EF41D6C();
    }

    v88 = &v90;
    v83 = (off_28518B8E0[HIDWORD(v79)])(&v88, a1 + 376);
    *(a1 + 352) = v83;
    *(a1 + 360) = v83;
    *(a1 + 368) = &v83[4 * v84];
    memmove(v83, v81, v82);
    *(a1 + 360) = &v83[v82];
  }

  if (*(a2 + 380) == 1)
  {
    if (*(a1 + 344) == 1)
    {
      *(a1 + 344) = 0;
    }

    v85 = *(a2 + 91);
    *(a1 + 320) = *(a2 + 356);
    *(a1 + 328) = v85;
    v86 = *(a2 + 94);
    *(a1 + 332) = a2[46];
    *(a1 + 340) = v86;
    *(a1 + 344) = 1;
  }

  return a1;
}

void sub_23F293614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23EF4FFB0(va);
  sub_23EF50040(v5 + 32);
  sub_23EF500C4(v5 + 28);
  sub_23EF4FFB0(v5 + 24);
  sub_23EF50148(v5 + 20);
  sub_23EF50148(v5 + 15);
  sub_23EF501C8(v5 + 10);
  sub_23EF501C8(v5 + 5);
  sub_23EF501C8(v5);
  _Unwind_Resume(a1);
}

char *sub_23F293728@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_23F290C48(a3, a2);
  v6 = *a1;
  v5 = a1[1];
  v7 = v5 - *a1;
  v8 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 2);
  v9 = *a3;
  v10 = *(a3 + 8);
  v11 = 0xAAAAAAAAAAAAAAABLL * (&v10[-*a3] >> 2);
  if (v8 <= v11)
  {
    if (v8 < v11)
    {
      v10 = &v9[v7];
      *(a3 + 8) = &v9[v7];
    }
  }

  else
  {
    sub_23F294420(a3, v8 - v11);
    v6 = *a1;
    v5 = a1[1];
    v9 = *a3;
    v10 = *(a3 + 8);
  }

  if (v6 != v5 || v9 != v10)
  {
    v12 = v6 + 12;
    do
    {
      do
      {
        v13 = v12;
        v14 = *(v12 - 4);
        *v9 = *(v12 - 12);
        *(v9 + 2) = v14;
        v9 += 12;
        v12 += 12;
      }

      while (v13 != v5);
    }

    while (v9 != v10);
  }

  v15 = *(a3 + 32);
  *(a3 + 64) = *(a1 + 8);
  v17 = a1[5];
  v16 = a1[6];
  v18 = v16 - v17;
  v19 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v17) >> 2);
  v20 = *(a3 + 40);
  v21 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v15) >> 2);
  if (v19 <= v21)
  {
    if (v19 < v21)
    {
      v20 = v15 + v18;
      *(a3 + 40) = v15 + v18;
    }
  }

  else
  {
    sub_23F294420((a3 + 32), v19 - v21);
    v17 = a1[5];
    v16 = a1[6];
    v15 = *(a3 + 32);
    v20 = *(a3 + 40);
  }

  if (v17 != v16 || v15 != v20)
  {
    v22 = v17 + 12;
    do
    {
      do
      {
        v23 = v22;
        v24 = *(v22 - 4);
        *v15 = *(v22 - 12);
        *(v15 + 8) = v24;
        v15 += 12;
        v22 += 12;
      }

      while (v23 != v16);
    }

    while (v15 != v20);
  }

  v25 = *(a3 + 72);
  *(a3 + 104) = *(a1 + 18);
  v27 = a1[10];
  v26 = a1[11];
  v28 = v26 - v27;
  v29 = 0xAAAAAAAAAAAAAAABLL * ((v26 - v27) >> 2);
  v30 = *(a3 + 80);
  v31 = 0xAAAAAAAAAAAAAAABLL * ((v30 - v25) >> 2);
  if (v29 <= v31)
  {
    if (v29 < v31)
    {
      v30 = v25 + v28;
      *(a3 + 80) = v25 + v28;
    }
  }

  else
  {
    sub_23F294420((a3 + 72), v29 - v31);
    v27 = a1[10];
    v26 = a1[11];
    v25 = *(a3 + 72);
    v30 = *(a3 + 80);
  }

  if (v27 != v26 || v25 != v30)
  {
    v32 = v27 + 12;
    do
    {
      do
      {
        v33 = v32;
        v34 = *(v32 - 4);
        *v25 = *(v32 - 12);
        *(v25 + 8) = v34;
        v25 += 12;
        v32 += 12;
      }

      while (v33 != v26);
    }

    while (v25 != v30);
  }

  v35 = *(a3 + 240);
  *(a3 + 272) = *(a1 + 28);
  v36 = a1[15];
  v37 = a1[16];
  v38 = *(a3 + 248) - v35;
  v39 = v37 - v36 >= v38;
  v40 = v37 - v36 - v38;
  if (v40 != 0 && v39)
  {
    sub_23EF76C28(a3 + 240, v40);
    v36 = a1[15];
    v37 = a1[16];
    v35 = *(a3 + 240);
  }

  else if (!v39)
  {
    *(a3 + 248) = &v35[v37 - v36];
  }

  if (v37 != v36)
  {
    memmove(v35, v36, v37 - v36);
  }

  *(a3 + 312) = *(a1 + 38);
  v41 = a1[20];
  v42 = a1[21];
  v43 = *(a3 + 280);
  v44 = *(a3 + 288) - v43;
  v45 = v42 - v41 >= v44;
  v46 = v42 - v41 - v44;
  if (v46 != 0 && v45)
  {
    sub_23EF76C28(a3 + 280, v46);
    v41 = a1[20];
    v42 = a1[21];
    v43 = *(a3 + 280);
  }

  else if (!v45)
  {
    *(a3 + 288) = &v43[v42 - v41];
  }

  if (v42 != v41)
  {
    memmove(v43, v41, v42 - v41);
  }

  v47 = a1[24];
  v48 = a1[25];
  v49 = v48 - v47;
  v50 = 0xAAAAAAAAAAAAAAABLL * ((v48 - v47) >> 2);
  v51 = *(a3 + 112);
  v52 = *(a3 + 120);
  v53 = 0xAAAAAAAAAAAAAAABLL * ((v52 - v51) >> 2);
  if (v50 <= v53)
  {
    if (v50 < v53)
    {
      v52 = v51 + v49;
      *(a3 + 120) = v51 + v49;
    }
  }

  else
  {
    sub_23F2945E4((a3 + 112), v50 - v53);
    v47 = a1[24];
    v48 = a1[25];
    v51 = *(a3 + 112);
    v52 = *(a3 + 120);
  }

  for (; v47 != v48 || v51 != v52; v51 += 12)
  {
    v54 = *(v47 + 8);
    *v51 = *v47;
    *(v51 + 8) = v54;
    v47 += 12;
  }

  v57 = a1[28];
  v56 = a1[29];
  v58 = v56 - v57;
  v59 = (v56 - v57) >> 3;
  v60 = *(a3 + 144);
  v61 = *(a3 + 152);
  v62 = (v61 - v60) >> 3;
  v63 = v59 - v62;
  if (v59 <= v62)
  {
    if (v59 < v62)
    {
      v61 = v60 + v58;
      *(a3 + 152) = v60 + v58;
    }
  }

  else
  {
    v64 = *(a3 + 160);
    if (v63 <= (v64 - v61) >> 3)
    {
      v61 += 8 * v63;
      *(a3 + 152) = v61;
    }

    else
    {
      if (v59 >> 61)
      {
        sub_23EF3AE74();
      }

      v65 = v64 - v60;
      v66 = v65 >> 2;
      if (v65 >> 2 <= v59)
      {
        LODWORD(v66) = v59;
      }

      if (v65 >= 0x7FFFFFFFFFFFFFF8)
      {
        v67 = -1;
      }

      else
      {
        v67 = v66;
      }

      LODWORD(v129) = v67;
      v68 = *(a3 + 172);
      if (v68 == -1)
      {
        goto LABEL_119;
      }

      v127 = &v129;
      v69 = (off_28518B8A0[v68])(&v127, a3 + 168);
      v70 = *(a3 + 152) - *(a3 + 144);
      v71 = v69 + v61 - v60;
      v73 = v69 + 8 * v72;
      v61 = v71 + 8 * v63;
      v60 = v71 - v70;
      memcpy((v71 - v70), *(a3 + 144), v70);
      v74 = *(a3 + 144);
      *(a3 + 144) = v60;
      *(a3 + 152) = v61;
      v75 = *(a3 + 160);
      *(a3 + 160) = v73;
      if (v74)
      {
        v127 = v74;
        v128 = (v75 - v74) >> 3;
        v76 = *(a3 + 172);
        if (v76 == -1)
        {
          sub_23EF41D6C();
        }

        v129 = &v127;
        (off_28518B8B0[v76])(&v129, a3 + 168);
        v60 = *(a3 + 144);
        v61 = *(a3 + 152);
      }
    }

    v57 = a1[28];
    v56 = a1[29];
  }

  if (v57 != v56 || v60 != v61)
  {
    v77 = v60 + 8;
    v78 = v57 + 8;
    do
    {
      do
      {
        v79 = v77;
        v80 = v78;
        *(v77 - 8) = *(v78 - 8);
        v77 += 8;
        v78 += 8;
      }

      while (v80 != v56);
    }

    while (v79 != v61);
  }

  v82 = a1[32];
  v81 = a1[33];
  v83 = v81 - v82;
  v84 = (v81 - v82) >> 3;
  v85 = *(a3 + 176);
  v86 = *(a3 + 184);
  v87 = (v86 - v85) >> 3;
  v88 = v84 - v87;
  if (v84 > v87)
  {
    v89 = *(a3 + 192);
    if (v88 <= (v89 - v86) >> 3)
    {
      v86 += 8 * v88;
      *(a3 + 184) = v86;
LABEL_89:
      v82 = a1[32];
      v81 = a1[33];
      goto LABEL_90;
    }

    if (v84 >> 61)
    {
      sub_23EF3AE74();
    }

    v90 = v89 - v85;
    v91 = v90 >> 2;
    if (v90 >> 2 <= v84)
    {
      LODWORD(v91) = v84;
    }

    if (v90 >= 0x7FFFFFFFFFFFFFF8)
    {
      v92 = -1;
    }

    else
    {
      v92 = v91;
    }

    LODWORD(v129) = v92;
    v93 = *(a3 + 204);
    if (v93 != -1)
    {
      v127 = &v129;
      v94 = (off_28518B8C0[v93])(&v127, a3 + 200);
      v95 = *(a3 + 184) - *(a3 + 176);
      v96 = v94 + v86 - v85;
      v98 = v94 + 8 * v97;
      v86 = v96 + 8 * v88;
      v85 = v96 - v95;
      memcpy((v96 - v95), *(a3 + 176), v95);
      v99 = *(a3 + 176);
      *(a3 + 176) = v85;
      *(a3 + 184) = v86;
      v100 = *(a3 + 192);
      *(a3 + 192) = v98;
      if (v99)
      {
        v127 = v99;
        v128 = (v100 - v99) >> 3;
        v101 = *(a3 + 204);
        if (v101 == -1)
        {
          sub_23EF41D6C();
        }

        v129 = &v127;
        (off_28518B8D0[v101])(&v129, a3 + 200);
        v85 = *(a3 + 176);
        v86 = *(a3 + 184);
      }

      goto LABEL_89;
    }

LABEL_119:
    sub_23EF41D6C();
  }

  if (v84 < v87)
  {
    v86 = v85 + v83;
    *(a3 + 184) = v85 + v83;
  }

LABEL_90:
  if (v82 != v81 || v85 != v86)
  {
    v102 = v85 + 8;
    v103 = v82 + 8;
    do
    {
      do
      {
        v104 = v102;
        v105 = v103;
        *(v102 - 8) = *(v103 - 8);
        v102 += 8;
        v103 += 8;
      }

      while (v105 != v81);
    }

    while (v104 != v86);
  }

  v106 = a1[36];
  v107 = a1[37];
  v108 = v107 - v106;
  v109 = 0xAAAAAAAAAAAAAAABLL * ((v107 - v106) >> 2);
  v110 = *(a3 + 208);
  v111 = *(a3 + 216);
  v112 = 0xAAAAAAAAAAAAAAABLL * ((v111 - v110) >> 2);
  if (v109 <= v112)
  {
    if (v109 < v112)
    {
      v111 = v110 + v108;
      *(a3 + 216) = v110 + v108;
    }
  }

  else
  {
    sub_23F2945E4((a3 + 208), v109 - v112);
    v106 = a1[36];
    v107 = a1[37];
    v110 = *(a3 + 208);
    v111 = *(a3 + 216);
  }

  for (; v106 != v107 || v110 != v111; v110 += 12)
  {
    v113 = *(v106 + 8);
    *v110 = *v106;
    *(v110 + 8) = v113;
    v106 += 12;
  }

  if (*(a1 + 344) == 1)
  {
    v115 = *(a1 + 82);
    v116 = *(a1 + 332);
    v117 = *(a1 + 85);
    v118 = *(a3 + 380);
    *(a3 + 356) = a1[40];
    *(a3 + 364) = v115;
    *(a3 + 368) = v116;
    *(a3 + 376) = v117;
    if ((v118 & 1) == 0)
    {
      *(a3 + 380) = 1;
    }
  }

  *(a3 + 352) = *(a1 + 87);
  v119 = a1[44];
  v120 = a1[45];
  v121 = (v120 - v119) >> 2;
  result = *(a3 + 320);
  v123 = (*(a3 + 328) - result) >> 2;
  v124 = v121 >= v123;
  v125 = v121 > v123;
  v126 = v121 - v123;
  if (v125)
  {
    sub_23EF77888(a3 + 320, v126);
    v119 = a1[44];
    v120 = a1[45];
    result = *(a3 + 320);
  }

  else if (!v124)
  {
    *(a3 + 328) = &result[v120 - v119];
  }

  if (v120 != v119)
  {

    return memmove(result, v119, v120 - v119);
  }

  return result;
}

const void **sub_23F293ED8(const void **result, unint64_t a2)
{
  v2 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 2) < a2)
  {
    if (a2 >= 0x1555555555555556)
    {
      sub_23EF62578();
    }

    v3 = result;
    v4 = result[1];
    LODWORD(v18) = a2;
    v5 = *(result + 7);
    if (v5 == -1)
    {
      sub_23EF41D6C();
    }

    v6 = v4 - v2;
    v16 = &v18;
    v7 = (off_28518B7E0[v5])(&v16, result + 3);
    v8 = (v7 + v6);
    v10 = v7 + 12 * v9;
    v11 = v3[1] - *v3;
    v12 = (v7 + v6 - v11);
    result = memcpy(v12, *v3, v11);
    v13 = *v3;
    *v3 = v12;
    v3[1] = v8;
    v14 = v3[2];
    v3[2] = v10;
    if (v13)
    {
      v16 = v13;
      v17 = -1431655765 * ((v14 - v13) >> 2);
      v15 = *(v3 + 7);
      if (v15 == -1)
      {
        sub_23EF41D6C();
      }

      v18 = &v16;
      return (off_28518B7F0[v15])(&v18, v3 + 3);
    }
  }

  return result;
}

unint64_t sub_23F294008(uint64_t a1, uint64_t *a2)
{
  v2 = 0x1555555555555555;
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 2);
  v4 = v3 + 1;
  if (v3 + 1 > 0x1555555555555555)
  {
    sub_23EF62578();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 2) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 2);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 2) < 0xAAAAAAAAAAAAAAALL)
  {
    v2 = v4;
  }

  if (v2)
  {
    LODWORD(v22) = v2;
    v7 = *(a1 + 28);
    if (v7 == -1)
    {
      sub_23EF41D6C();
    }

    v20 = &v22;
    v8 = (off_28518B7E0[v7])(&v20, a1 + 24);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = v8 + 12 * v3;
  v11 = v8 + 12 * v9;
  v12 = *a2;
  *(v10 + 8) = *(a2 + 2);
  *v10 = v12;
  v13 = v10 + 12;
  v14 = *(a1 + 8) - *a1;
  v15 = v10 - v14;
  memcpy((v10 - v14), *a1, v14);
  v16 = *a1;
  *a1 = v15;
  *(a1 + 8) = v13;
  v17 = *(a1 + 16);
  *(a1 + 16) = v11;
  if (v16)
  {
    v20 = v16;
    v21 = -1431655765 * ((v17 - v16) >> 2);
    v18 = *(a1 + 28);
    if (v18 == -1)
    {
      sub_23EF41D6C();
    }

    v22 = &v20;
    (off_28518B7F0[v18])(&v22, a1 + 24);
  }

  return v13;
}

const void **sub_23F29417C(const void **result, unint64_t a2)
{
  v2 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 2) < a2)
  {
    if (a2 >= 0x1555555555555556)
    {
      sub_23EF62578();
    }

    v3 = result;
    v4 = result[1];
    LODWORD(v18) = a2;
    v5 = *(result + 7);
    if (v5 == -1)
    {
      sub_23EF41D6C();
    }

    v6 = v4 - v2;
    v16 = &v18;
    v7 = (off_28518B800[v5])(&v16, result + 3);
    v8 = (v7 + v6);
    v10 = v7 + 12 * v9;
    v11 = v3[1] - *v3;
    v12 = (v7 + v6 - v11);
    result = memcpy(v12, *v3, v11);
    v13 = *v3;
    *v3 = v12;
    v3[1] = v8;
    v14 = v3[2];
    v3[2] = v10;
    if (v13)
    {
      v16 = v13;
      v17 = -1431655765 * ((v14 - v13) >> 2);
      v15 = *(v3 + 7);
      if (v15 == -1)
      {
        sub_23EF41D6C();
      }

      v18 = &v16;
      return (off_28518B810[v15])(&v18, v3 + 3);
    }
  }

  return result;
}

unint64_t sub_23F2942AC(uint64_t a1, uint64_t *a2)
{
  v2 = 0x1555555555555555;
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 2);
  v4 = v3 + 1;
  if (v3 + 1 > 0x1555555555555555)
  {
    sub_23EF62578();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 2) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 2);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 2) < 0xAAAAAAAAAAAAAAALL)
  {
    v2 = v4;
  }

  if (v2)
  {
    LODWORD(v22) = v2;
    v7 = *(a1 + 28);
    if (v7 == -1)
    {
      sub_23EF41D6C();
    }

    v20 = &v22;
    v8 = (off_28518B800[v7])(&v20, a1 + 24);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = v8 + 12 * v3;
  v11 = v8 + 12 * v9;
  v12 = *a2;
  *(v10 + 8) = *(a2 + 2);
  *v10 = v12;
  v13 = v10 + 12;
  v14 = *(a1 + 8) - *a1;
  v15 = v10 - v14;
  memcpy((v10 - v14), *a1, v14);
  v16 = *a1;
  *a1 = v15;
  *(a1 + 8) = v13;
  v17 = *(a1 + 16);
  *(a1 + 16) = v11;
  if (v16)
  {
    v20 = v16;
    v21 = -1431655765 * ((v17 - v16) >> 2);
    v18 = *(a1 + 28);
    if (v18 == -1)
    {
      sub_23EF41D6C();
    }

    v22 = &v20;
    (off_28518B810[v18])(&v22, a1 + 24);
  }

  return v13;
}

const void **sub_23F294420(const void **result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 2) >= a2)
  {
    result[1] = &v5[12 * (12 * a2 / 0xC)];
  }

  else
  {
    v6 = *result;
    v7 = v5 - *result;
    v8 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 2);
    v9 = v8 + v2;
    if (v8 + v2 > 0x1555555555555555)
    {
      sub_23EF3AE74();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v6) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      v12 = v2;
      LODWORD(v25) = v11;
      v13 = *(result + 7);
      if (v13 == -1)
      {
        sub_23EF41D6C();
      }

      v23 = &v25;
      v14 = (off_28518B860[v13])(&v23, result + 3);
      v11 = v15;
      v6 = *v3;
      v7 = v3[1] - *v3;
      v2 = v12;
    }

    else
    {
      v14 = 0;
    }

    v16 = v14 + 12 * v8;
    v17 = v14 + 12 * v11;
    v18 = v16 + 12 * (12 * v2 / 0xC);
    v19 = v16 - v7;
    result = memcpy((v16 - v7), v6, v7);
    v20 = *v3;
    *v3 = v19;
    v3[1] = v18;
    v21 = v3[2];
    v3[2] = v17;
    if (v20)
    {
      v23 = v20;
      v24 = -1431655765 * ((v21 - v20) >> 2);
      v22 = *(v3 + 7);
      if (v22 == -1)
      {
        sub_23EF41D6C();
      }

      v25 = &v23;
      return (off_28518B870[v22])(&v25, v3 + 3);
    }
  }

  return result;
}

const void **sub_23F2945E4(const void **result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 2) >= a2)
  {
    result[1] = &v5[12 * (12 * a2 / 0xC)];
  }

  else
  {
    v6 = *result;
    v7 = v5 - *result;
    v8 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 2);
    v9 = v8 + v2;
    if (v8 + v2 > 0x1555555555555555)
    {
      sub_23EF3AE74();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v6) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      v12 = v2;
      LODWORD(v25) = v11;
      v13 = *(result + 7);
      if (v13 == -1)
      {
        sub_23EF41D6C();
      }

      v23 = &v25;
      v14 = (off_28518B880[v13])(&v23, result + 3);
      v11 = v15;
      v6 = *v3;
      v7 = v3[1] - *v3;
      v2 = v12;
    }

    else
    {
      v14 = 0;
    }

    v16 = v14 + 12 * v8;
    v17 = v14 + 12 * v11;
    v18 = v16 + 12 * (12 * v2 / 0xC);
    v19 = v16 - v7;
    result = memcpy((v16 - v7), v6, v7);
    v20 = *v3;
    *v3 = v19;
    v3[1] = v18;
    v21 = v3[2];
    v3[2] = v17;
    if (v20)
    {
      v23 = v20;
      v24 = -1431655765 * ((v21 - v20) >> 2);
      v22 = *(v3 + 7);
      if (v22 == -1)
      {
        sub_23EF41D6C();
      }

      v25 = &v23;
      return (off_28518B890[v22])(&v25, v3 + 3);
    }
  }

  return result;
}

uint64_t sub_23F2947C4(uint64_t a1, const char **a2)
{
  v4 = *(a1 + 24);
  if (v4 != -1)
  {
    (off_28518B900[v4])(&v9, a1);
  }

  *(a1 + 24) = -1;
  v5 = *a2;
  v6 = strlen(*a2);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v6;
  if (v6)
  {
    memmove(a1, v5, v6);
  }

  *(a1 + v7) = 0;
  *(a1 + 24) = 1;
  return a1;
}

void sub_23F2948C0(uint64_t *a1, uint64_t a2)
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
  v6 = *a1[1];
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
    (off_28518B900[v9])(&v12, v2);
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

void sub_23F294A84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_23F294AD0(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_23F294BD0(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    v5 = *v3;
    v6 = strlen(*v3);
    if (v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_23EF2F8F4();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v4[23] = v6;
    if (v6)
    {
      memmove(v4, v5, v6);
    }

    v4[v7] = 0;
    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

_BYTE *sub_23F294BD0(uint64_t a1, const char **a2)
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
    v4 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_23EF34E18();
  }

  v5 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v5;
  v15 = v5;
  v6 = *a2;
  v7 = strlen(*a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v5[23] = v7;
  if (v7)
  {
    memmove(v5, v6, v7);
  }

  v5[v8] = 0;
  v9 = v5 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v14[-v10];
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

void sub_23F294D70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3522C(va);
  _Unwind_Resume(a1);
}

void sub_23F294D84(void *a1)
{
  v7 = a1[4] - a1[3] - 10;
  sub_23F294EB4((a1 + 6), &v7);
  v3 = a1[3];
  v2 = a1[4];
  v4 = &v2[-v3 + 8];
  if (v4 < &v2[-v3])
  {
    a1[4] = v2 + 8;
  }

  else
  {
    v5 = a1[5];
    if ((v5 - v2) < 8)
    {
      if ((v4 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_23EF62578();
    }

    v6 = v2 + 8;
    bzero(v2, 8uLL);
    a1[4] = v6;
  }
}

void sub_23F294EB4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    sub_23F295350();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    sub_23EF34E18();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void sub_23F294FCC(void *a1)
{
  sub_23F294EB4((a1 + 11), a1 + 6);
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
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  v6 = *(a1[3] + v2);
  a1[6] = v2 + 8;
  v8 = a1[9];
  v7 = a1[10];
  if (v8 < v7)
  {
    *v8 = v6;
    v9 = v8 + 8;
LABEL_6:
    a1[9] = v9;
    return;
  }

  v10 = a1[8];
  v11 = v8 - v10;
  v12 = (v8 - v10) >> 3;
  v13 = v12 + 1;
  if ((v12 + 1) >> 61)
  {
    sub_23EF62578();
  }

  v14 = v7 - v10;
  if (v14 >> 2 > v13)
  {
    v13 = v14 >> 2;
  }

  if (v14 >= 0x7FFFFFFFFFFFFFF8)
  {
    v15 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    if (!(v15 >> 61))
    {
      operator new();
    }

    sub_23EF34E18();
  }

  v16 = (v8 - v10) >> 3;
  v17 = (8 * v12);
  v18 = (8 * v12 - 8 * v16);
  *v17 = v6;
  v9 = v17 + 1;
  memcpy(v18, v10, v11);
  a1[8] = v18;
  a1[9] = v9;
  a1[10] = 0;
  if (!v10)
  {
    goto LABEL_6;
  }

  operator delete(v10);
  a1[9] = v9;
}

double sub_23F295150(void *a1, uint64_t a2)
{
  v3 = a1[6];
  v2 = a1[7];
  v4 = v2 - v3;
  if (v2 < v3)
  {
    v4 = 0;
  }

  if (v4 <= 7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read");
    goto LABEL_19;
  }

  v6 = a1[3];
  v7 = *(v6 + v3);
  v8 = v3 + 8;
  a1[6] = v3 + 8;
  if (!v7)
  {
    return result;
  }

  v9 = v2 >= v8;
  v10 = v2 - v8;
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 < v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23EF35CC0(exception, "Not enough data to read string");
LABEL_19:
    __cxa_throw(exception, off_278C74498, MEMORY[0x277D825F8]);
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v12 = (v6 + v8);
  if (v7 > 0x16)
  {
    operator new();
  }

  HIBYTE(v19) = v7;
  v13 = &v18;
  v14 = v12;
  do
  {
    v15 = *v14++;
    *v13 = v15;
    v13 = (v13 + 1);
  }

  while (v14 != &v12[v7]);
  *v13 = 0;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  result = *&v18;
  *a2 = v18;
  *(a2 + 16) = v19;
  a1[6] += v7;
  return result;
}