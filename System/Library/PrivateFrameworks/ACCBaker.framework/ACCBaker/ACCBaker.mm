void sub_23C36AD7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  va_copy(va3, va2);
  v10 = va_arg(va3, void);
  v12 = va_arg(va3, void);
  sub_23C36EB4C(va);
  sub_23C36EB4C(va1);
  sub_23C36EB4C(va2);
  sub_23C36EB4C(va3);
  _Unwind_Resume(a1);
}

void sub_23C36AE04(const __CFURL *a1)
{
  v1 = CFURLGetString(a1);
  v2 = v1;
  if (v1)
  {
    j__CFRetain(v1);
  }

  sub_23C36C324(&v3, v2);
}

void sub_23C36B000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_23C36EB4C(va);
  _Unwind_Resume(a1);
}

void sub_23C36B948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (a31)
  {
    if (__p)
    {
      a26 = __p;
      operator delete(__p);
      sub_23C36EB4C(&a17);
      _Unwind_Resume(a1);
    }
  }

  sub_23C36EB4C(&a17);
  _Unwind_Resume(a1);
}

void sub_23C36BAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if ((a14 & 0x80000000) == 0)
  {
    JUMPOUT(0x23C36BAD4);
  }

  JUMPOUT(0x23C36BA50);
}

void sub_23C36BADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25)
{
  sub_23C36EB4C(v26 - 96);
  if (a24 < 0)
  {
    operator delete(__p);
    if (a14 < 0)
    {
LABEL_5:
      operator delete(a9);
      if (!v25)
      {
        goto LABEL_10;
      }

LABEL_8:
      if (a25)
      {
        operator delete(a25);
      }

LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (a14 < 0)
  {
    goto LABEL_5;
  }

  if (!v25)
  {
    goto LABEL_10;
  }

  goto LABEL_8;
}

void sub_23C36BB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if ((a14 & 0x80000000) == 0)
  {
    JUMPOUT(0x23C36BB4CLL);
  }

  JUMPOUT(0x23C36BB14);
}

void sub_23C36BB64(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 >= 4)
  {
    v10[23] = 15;
    strcpy(v10, "Invalid version");
    operator new();
  }

  v5 = [MEMORY[0x277D77870] encoderWithVersion:a3];
  v9 = 0;
  v6 = [v5 encodeURL:a2 error:&v9];
  v7 = v9;
  if (!v6 || [v6 length] <= 1)
  {
    strcpy(v10, "URL compression failed");
    v10[23] = 22;
    operator new();
  }

  [v6 bytes];
  v8 = [v6 length];
  if (v8)
  {
    if ((v8 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23C36C1E0();
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
}

void sub_23C36C0B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_23C36EB4C(v15);
    _Unwind_Resume(a1);
  }

  sub_23C36EB4C(v15);
  _Unwind_Resume(a1);
}

void sub_23C36C124(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EECF470);
}

void sub_23C36C15C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    j__CFRelease(v1);
  }
}

uint64_t sub_23C36C180(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIPK9__CFArrayEC1ES5_EUlS5_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIPK9__CFArrayEC1ES5_EUlS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIPK9__CFArrayEC1ES5_EUlS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIPK9__CFArrayEC1ES5_EUlS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_23C36C1F8(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_23C36C254(exception, a1);
  __cxa_throw(exception, off_278BBACF0, MEMORY[0x277D825F0]);
}

std::logic_error *sub_23C36C254(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void *sub_23C36C288(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23C36C1E0();
  }

  return result;
}

void sub_23C36C308(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_23C36C448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_23C36EB4C(v15);
    _Unwind_Resume(a1);
  }

  sub_23C36EB4C(v15);
  _Unwind_Resume(a1);
}

void sub_23C36C4B8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EECF470);
}

void sub_23C36C4F0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    j__CFRelease(v1);
  }
}

uint64_t sub_23C36C514(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIPK10__CFStringEC1ES5_EUlS5_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIPK10__CFStringEC1ES5_EUlS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIPK10__CFStringEC1ES5_EUlS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIPK10__CFStringEC1ES5_EUlS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23C36C578(uint64_t a1, int a2, int a3, int a4)
{
  *a1 = a3;
  *(a1 + 4) = a4;
  *(a1 + 8) = 0u;
  v7 = (a1 + 8);
  *(a1 + 24) = 0u;
  v8 = a3;
  *(a1 + 40) = 0u;
  v22 = 0;
  if (a3)
  {
    sub_23C36C6DC(a1 + 8, a3, &v22);
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v21 = 0;
    v11 = (v10 - v9) >> 2;
    v12 = v8 >= v11;
    if (v8 > v11)
    {
      sub_23C36C6DC(a1 + 32, v8 - v11, &v21);
      goto LABEL_7;
    }
  }

  else
  {
    v9 = 0;
    v21 = 0;
    v12 = 1;
  }

  if (!v12)
  {
    *(a1 + 40) = v9 + 4 * v8;
  }

LABEL_7:
  v13 = (a3 - 1);
  if (a3 >= 1)
  {
    v14 = *v7;
    v15 = a3;
    v16 = 1;
    do
    {
      *v14++ = v16;
      v16 *= 2;
      if (v16 >= a3)
      {
        v16 = (v16 ^ a2) & v13;
      }

      --v15;
    }

    while (v15);
    if (a3 != 1)
    {
      v17 = 0;
      v18 = *v7;
      v19 = *(a1 + 32);
      do
      {
        *(v19 + 4 * v18[v17]) = v17;
        ++v17;
      }

      while (v13 != v17);
    }
  }

  return a1;
}

void sub_23C36C69C(_Unwind_Exception *exception_object)
{
  v4 = v1[4];
  if (v4)
  {
    v1[5] = v4;
    operator delete(v4);
    v5 = *v2;
    if (!*v2)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v5 = *v2;
    if (!*v2)
    {
      goto LABEL_3;
    }
  }

  v1[2] = v5;
  operator delete(v5);
  _Unwind_Resume(exception_object);
}

void sub_23C36C6DC(uint64_t a1, unint64_t a2, unsigned int *a3)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      v10 = &v5[a2];
      v11 = *a3;
      v12 = (a2 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      if (v12 < 7)
      {
        goto LABEL_33;
      }

      v13 = v12 + 1;
      v14 = &v5[v13 & 0x7FFFFFFFFFFFFFF8];
      v15 = vdupq_n_s32(v11);
      v16 = (v5 + 4);
      v17 = v13 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v16[-1] = v15;
        *v16 = v15;
        v16 += 2;
        v17 -= 8;
      }

      while (v17);
      v5 = v14;
      if (v13 != (v13 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_33:
        do
        {
          *v5++ = v11;
        }

        while (v5 != v10);
      }

      v5 = v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = (v5 - *a1) >> 2;
    v7 = v6 + a2;
    if ((v6 + a2) >> 62)
    {
      sub_23C36C1E0();
    }

    v8 = v4 - *a1;
    if (v8 >> 1 > v7)
    {
      v7 = v8 >> 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 62))
      {
        operator new();
      }

      sub_23C36C8AC();
    }

    v18 = 4 * v6;
    v19 = 4 * v6 + 4 * a2;
    v20 = *a3;
    v21 = (a2 - 1) & 0x3FFFFFFFFFFFFFFFLL;
    v22 = (4 * v6);
    if (v21 < 7)
    {
      goto LABEL_34;
    }

    v23 = v21 + 1;
    v22 = (v18 + 4 * (v23 & 0x7FFFFFFFFFFFFFF8));
    v24 = vdupq_n_s32(v20);
    v25 = (v18 + 16);
    v26 = v23 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v25[-1] = v24;
      *v25 = v24;
      v25 += 2;
      v26 -= 8;
    }

    while (v26);
    if (v23 != (v23 & 0x7FFFFFFFFFFFFFF8))
    {
LABEL_34:
      do
      {
        *v22++ = v20;
      }

      while (v22 != v19);
    }

    v27 = *a1;
    v28 = *(a1 + 8) - *a1;
    v29 = v18 - v28;
    memcpy((v18 - v28), *a1, v28);
    *a1 = v29;
    *(a1 + 8) = v19;
    *(a1 + 16) = 0;
    if (v27)
    {

      operator delete(v27);
    }
  }
}

void sub_23C36C8AC()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void sub_23C36C8E0(void *a1)
{
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1 + 1;
  v6 = v3;
  if (v3 != v5)
  {
    v7 = v3;
    while (!*v7)
    {
      v7 += 4;
      v6 += 4;
      if (v7 == v5)
      {
        v6 = v5;
        break;
      }
    }
  }

  if (v3 != v6)
  {
    if (v5 == v6)
    {
      v10 = 0;
      if (a1[3] == v3)
      {
        operator new();
      }

      v9 = (v5 - v3) >> 2;
      if (v5 == v3)
      {
        sub_23C36C6DC(v4, 1 - v9, &v10);
      }

      else if (v9 >= 2)
      {
        a1[2] = v3 + 4;
      }
    }

    else
    {
      memmove(v3, v6, v5 - v6);
      v8 = a1[2];

      sub_23C36CCF4(v4, (v8 - v6) >> 2);
    }
  }
}

uint64_t *sub_23C36CA60(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (*v3 && (v4 = *(a2 + 8), *v4))
  {
    sub_23C36CCF4(a1 + 4, ((a1[2] - v3) >> 2) + ((*(a2 + 16) - v4) >> 2) - 1);
    v6 = a1[4];
    v7 = a1[5];
    if (v7 - v6 >= 1)
    {
      bzero(a1[4], v7 - v6);
    }

    v9 = a1[1];
    v8 = a1[2];
    if (v8 != v9)
    {
      v10 = *(a2 + 8);
      v11 = *(a2 + 16);
      v12 = v11 - v10;
      if (v11 != v10)
      {
        v13 = 0;
        v14 = v12 >> 2;
        if ((v12 >> 2) <= 1)
        {
          v14 = 1;
        }

        if (((v8 - v9) >> 2) <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = (v8 - v9) >> 2;
        }

        v16 = v6;
        do
        {
          v17 = v16;
          v18 = v10;
          v19 = v14;
          do
          {
            while (1)
            {
              v20 = *(v9 + 4 * v13);
              v22 = *v18++;
              v21 = v22;
              if (!v20 || v21 == 0)
              {
                break;
              }

              *v17++ ^= *(*(*a1 + 8) + 4 * ((*(*(*a1 + 32) + 4 * v21) + *(*(*a1 + 32) + 4 * v20)) % (**a1 - 1)));
              if (!--v19)
              {
                goto LABEL_13;
              }
            }

            *v17 = *v17;
            ++v17;
            --v19;
          }

          while (v19);
LABEL_13:
          ++v13;
          ++v16;
        }

        while (v13 != v15);
      }
    }

    a1[1] = v6;
    a1[2] = v7;
    v26 = a1[3];
    a1[3] = a1[6];
    a1[4] = v9;
    a1[5] = v8;
    a1[6] = v26;
    sub_23C36C8E0(a1);
    return a1;
  }

  else
  {
    v24 = *a1;

    return sub_23C36CBF4(v24, a1);
  }
}

void *sub_23C36CBF4(uint64_t a1, void *a2)
{
  *a2 = a1;
  v3 = a2[1];
  v4 = a2[3];
  if (v4 == v3)
  {
    v5 = a2[2] - v4;
    operator new();
  }

  v6 = a2[2];
  v7 = (v6 - v3) >> 2;
  if (v6 == v3)
  {
    sub_23C36D648((a2 + 1), 1 - v7);
    v3 = a2[1];
    v8 = a2[2] - v3;
    if (v8 < 1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v7 >= 2)
  {
    v6 = v3 + 4;
    a2[2] = v3 + 4;
  }

  v8 = v6 - v3;
  if (v6 - v3 >= 1)
  {
LABEL_7:
    bzero(v3, v8);
  }

LABEL_8:
  *v3 = 0;
  return a2;
}

void sub_23C36CCF4(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  if (a2 > (a1[2] - *a1) >> 2)
  {
    if (!(a2 >> 62))
    {
      v4 = a1[1] - v3;
      operator new();
    }

    sub_23C36C1E0();
  }

  v5 = (a1[1] - v3) >> 2;
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      a1[1] = v3 + 4 * a2;
    }
  }

  else
  {

    sub_23C36D648(a1, v6);
  }
}

uint64_t *sub_23C36CDF8(uint64_t *a1, int a2, int a3)
{
  if (a3)
  {
    v5 = a1[1];
    v6 = a1[2];
    v4 = a1 + 1;
    v8 = v6 - v5;
    v7 = v8 == 0;
    v9 = v8 >> 2;
    if (!v7)
    {
      if (v9 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9;
      }

      do
      {
        v11 = *v5;
        if (v11)
        {
          LODWORD(v11) = *(*(*a1 + 8) + 4 * ((*(*(*a1 + 32) + 4 * a3) + *(*(*a1 + 32) + 4 * v11)) % (**a1 - 1)));
        }

        *v5++ = v11;
        --v10;
      }

      while (v10);
    }

    sub_23C36CEBC(v4, v9 + a2, 0);
    sub_23C36C8E0(a1);
    return a1;
  }

  else
  {
    v13 = *a1;

    return sub_23C36CBF4(v13, a1);
  }
}

void sub_23C36CEBC(uint64_t *a1, unint64_t a2, unsigned int a3)
{
  v6 = a3;
  v3 = *a1;
  if (a2 > (a1[2] - *a1) >> 2)
  {
    if (!(a2 >> 62))
    {
      v4 = a1[1] - v3;
      operator new();
    }

    sub_23C36C1E0();
  }

  v5 = (a1[1] - v3) >> 2;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      a1[1] = v3 + 4 * a2;
    }
  }

  else
  {
    sub_23C36C6DC(a1, a2 - v5, &v6);
  }
}

uint64_t *sub_23C36CFC8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!**(a2 + 8))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23C36D524(exception, "Divide by 0");
    goto LABEL_67;
  }

  sub_23C36CBF4(*a1, a3);
  v6 = *(a2 + 16);
  v7 = v6 - *(a2 + 8);
  v8 = *(v6 + 4 * ((-1073741824 * v7) >> 32));
  if (!v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23C36D524(exception, "a == 0");
LABEL_67:
    __cxa_throw(exception, off_278BBAD00, MEMORY[0x277D82610]);
  }

  v9 = a1[1];
  v10 = *(*(*a1 + 8) + 4 * (**a1 + ~*(*(*a1 + 32) + 4 * v8)));
  v72 = 0;
  v70 = 0u;
  *__p = 0u;
  *v69 = 0u;
  v11 = a1[2] - v9;
  v12 = v11 >> 2;
  v13 = v7 >> 2;
  if ((v11 >> 2) < v13)
  {
    goto LABEL_62;
  }

  while (v9->i32[0])
  {
    v19 = 0;
    if (v10)
    {
      v20 = *(&v9->i32[(-1073741824 * v11) >> 32] + v11);
      if (v20)
      {
        v19 = *(*(*a1 + 8) + 4 * ((*(*(*a1 + 32) + 4 * v10) + *(*(*a1 + 32) + 4 * v20)) % (**a1 - 1)));
      }
    }

    v21 = v12 - v13;
    v69[0] = *a1;
    if (v19)
    {
      v22 = v21 + 1;
    }

    else
    {
      v22 = 1;
    }

    sub_23C36CCF4(&v69[1], v22);
    v23 = v69[1];
    v24 = v70;
    v25 = v70 - v69[1];
    if ((v70 - v69[1]) >= 1)
    {
      bzero(v69[1], v70 - v69[1]);
    }

    v23->i32[0] = v19;
    v26 = *(a3 + 8);
    if (!v26->i32[0])
    {
      v34 = *a3;
      v35 = *(&v70 + 1);
      *a3 = v69[0];
      *(a3 + 8) = v23;
      v69[0] = v34;
      v69[1] = v26;
      v36 = *(a3 + 16);
      *(a3 + 16) = v24;
      *(a3 + 24) = v35;
      v70 = v36;
      goto LABEL_33;
    }

    if (!v19)
    {
      goto LABEL_33;
    }

    v27 = *(a3 + 16);
    if (v25 <= (v27 - v26))
    {
      v29 = v25;
      v25 = v27 - v26;
      v30 = v23;
      v23 = *(a3 + 8);
      v31 = v25 >> 2;
      v32 = v29 >> 2;
      v33 = (v25 >> 2) - (v29 >> 2);
      if (v33 < v25 >> 2)
      {
LABEL_23:
        if (v32 <= 7 || &v23->i8[v25 - v29] < &v30->i8[v29] && v30 < &v23->i8[v25])
        {
          goto LABEL_29;
        }

        v33 += v32 & 0xFFFFFFFFFFFFFFF8;
        v37 = v30 + 1;
        v38 = (v23 + 4 * v31 + -4 * v32 + 16);
        v39 = v32 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v40 = veorq_s8(*v38, *v37);
          v38[-1] = veorq_s8(v38[-1], v37[-1]);
          *v38 = v40;
          v37 += 2;
          v38 += 2;
          v39 -= 8;
        }

        while (v39);
        if (v32 != (v32 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_29:
          v41 = v33 - v31;
          v42 = &v23->i32[v33];
          v43 = &v30->i8[4 * v32];
          do
          {
            *v42++ ^= *&v43[4 * v41];
            v44 = __CFADD__(v41++, 1);
          }

          while (!v44);
        }
      }
    }

    else
    {
      v28 = *(&v70 + 1);
      v69[1] = *(a3 + 8);
      *&v70 = v27;
      *(&v70 + 1) = *(a3 + 24);
      *(a3 + 8) = v23;
      *(a3 + 16) = v24;
      *(a3 + 24) = v28;
      v29 = v27 - v26;
      v30 = v26;
      v31 = v25 >> 2;
      v32 = v29 >> 2;
      v33 = (v25 >> 2) - (v29 >> 2);
      if (v33 < v25 >> 2)
      {
        goto LABEL_23;
      }
    }

    sub_23C36C8E0(a3);
LABEL_33:
    sub_23C36D558(v69, a2);
    if (v19)
    {
      v45 = v69[1];
      v46 = (v70 - v69[1]) >> 2;
      if (v70 != v69[1])
      {
        if (v46 <= 1)
        {
          v47 = 1;
        }

        else
        {
          v47 = (v70 - v69[1]) >> 2;
        }

        v48 = v69[0];
        do
        {
          v49 = *v45;
          if (v49)
          {
            LODWORD(v49) = *(v48[1] + 4 * ((*(v48[4] + 4 * v19) + *(v48[4] + 4 * v49)) % (*v48 - 1)));
          }

          *v45++ = v49;
          --v47;
        }

        while (v47);
      }

      sub_23C36CEBC(&v69[1], v46 + v21, 0);
      sub_23C36C8E0(v69);
    }

    else
    {
      sub_23C36CBF4(v69[0], v69);
    }

    v9 = a1[1];
    if (v9->i32[0])
    {
      v50 = v69[1];
      v18 = a1[2];
      if (*v69[1])
      {
        v51 = v70;
        v52 = v70 - v69[1];
        v53 = v18 - v9;
        if (v70 - v69[1] <= v18 - v9)
        {
          v55 = v70 - v69[1];
          v52 = v18 - v9;
          v56 = v69[1];
          v50 = a1[1];
          v57 = v53 >> 2;
          v58 = (v70 - v69[1]) >> 2;
          v59 = v57 - v58;
          if (v57 - v58 >= v57)
          {
LABEL_59:
            sub_23C36C8E0(a1);
            v9 = a1[1];
            v18 = a1[2];
            goto LABEL_6;
          }
        }

        else
        {
          v54 = *(&v70 + 1);
          v69[1] = a1[1];
          *&v70 = v18;
          *(&v70 + 1) = a1[3];
          a1[1] = v50;
          a1[2] = v51;
          a1[3] = v54;
          v55 = v18 - v9;
          v56 = v9;
          v57 = v52 >> 2;
          v58 = v55 >> 2;
          v59 = (v52 >> 2) - (v55 >> 2);
          if (v59 >= v52 >> 2)
          {
            goto LABEL_59;
          }
        }

        if (v58 <= 7 || &v50[v52 - v55] < &v56->i8[v55] && v56 < &v50[v52])
        {
          goto LABEL_56;
        }

        v59 += v58 & 0xFFFFFFFFFFFFFFF8;
        v60 = v56 + 1;
        v61 = &v50[4 * v57 + 16 + -4 * v58];
        v62 = v58 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v63 = veorq_s8(*v61, *v60);
          v61[-1] = veorq_s8(v61[-1], v60[-1]);
          *v61 = v63;
          v60 += 2;
          v61 += 2;
          v62 -= 8;
        }

        while (v62);
        if (v58 != (v58 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_56:
          v64 = v59 - v57;
          v65 = &v50[4 * v59];
          v66 = &v56->i8[4 * v58];
          do
          {
            *v65 ^= *&v66[4 * v64];
            v65 += 4;
            v44 = __CFADD__(v64++, 1);
          }

          while (!v44);
        }

        goto LABEL_59;
      }
    }

    else
    {
      v14 = *a1;
      v15 = v69[1];
      *a1 = v69[0];
      a1[1] = v15;
      v16 = v70;
      v69[0] = v14;
      v69[1] = v9;
      v17 = *(a1 + 1);
      *(a1 + 1) = v70;
      v18 = v16;
      v9 = v15;
      v70 = v17;
    }

LABEL_6:
    v11 = v18 - v9;
    v12 = (v18 - v9) >> 2;
    v13 = (*(a2 + 16) - *(a2 + 8)) >> 2;
    if (v12 < v13)
    {
      break;
    }
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

LABEL_62:
  if (v69[1])
  {
    *&v70 = v69[1];
    operator delete(v69[1]);
  }

  return a1;
}

std::logic_error *sub_23C36D524(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828F8] + 16);
  return result;
}

uint64_t sub_23C36D558(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 16) - *(a2 + 8);
  if (*(a1 + 24) - v3 < v4)
  {
    v5 = v4 >> 2;
    if (!(v5 >> 62))
    {
      v6 = *(a1 + 16) - v3;
      operator new();
    }

    sub_23C36C1E0();
  }

  if (a1 != a2)
  {
    sub_23C36D79C((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  }

  return a1;
}

void sub_23C36D648(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 2)
  {
    if (a2)
    {
      v10 = 4 * a2;
      bzero(*(a1 + 8), 4 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 2) + a2;
    if (v7 >> 62)
    {
      sub_23C36C1E0();
    }

    v8 = v3 - v5;
    if (v8 >> 1 > v7)
    {
      v7 = v8 >> 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 62))
      {
        operator new();
      }

      sub_23C36C8AC();
    }

    v11 = (4 * (v6 >> 2));
    v12 = 4 * a2;
    bzero(v11, 4 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

char *sub_23C36D79C(char **a1, char *__src, char *a3, unint64_t a4)
{
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      v9 = a4;
      operator delete(result);
      a4 = v9;
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v10 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v10 = a4;
      }

      v11 = v7 >= 0x7FFFFFFFFFFFFFFCLL;
      v12 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v11)
      {
        v12 = v10;
      }

      if (!(v12 >> 62))
      {
        operator new();
      }
    }

    sub_23C36C1E0();
  }

  v13 = a1[1];
  v14 = v13 - result;
  if (a4 <= (v13 - result) >> 2)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      v18 = result;
      memmove(result, __src, v17);
      result = v18;
    }

    a1[1] = &result[v17];
  }

  else
  {
    if (v13 != result)
    {
      result = memmove(result, __src, v13 - result);
      v13 = a1[1];
    }

    v15 = &__src[v14];
    v16 = a3 - &__src[v14];
    if (v16)
    {
      result = memmove(v13, v15, v16);
    }

    a1[1] = &v13[v16];
  }

  return result;
}

void *sub_23C36D918(void *a1)
{
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

void sub_23C36D974(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_23C36D9D0(exception, a1);
  __cxa_throw(exception, off_278BBACF8, MEMORY[0x277D825F8]);
}

std::logic_error *sub_23C36D9D0(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void sub_23C36DA04(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = a1 + 1;
  a1[2] = a1 + 1;
  a1[3] = 0;
  operator new();
}

void sub_23C36DAD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_23C36D918(&a9);
  sub_23C36E010(v9);
  _Unwind_Resume(a1);
}

void sub_23C36DAEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
    v16 = a10;
    if (!a10)
    {
LABEL_3:
      sub_23C36E010(v14);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v16 = a10;
    if (!a10)
    {
      goto LABEL_3;
    }
  }

  operator delete(v16);
  sub_23C36E010(v14);
  _Unwind_Resume(a1);
}

void *sub_23C36DB50(uint64_t a1, int a2)
{
  v3 = *(a1 + 24);
  if (v3 <= a2)
  {
    sub_23C36E0A0(v12, *(a1 + 8) + 16);
    v4 = v3 - 1 + *(*a1 + 4);
    v5 = *(*a1 + 8);
    if (v4 < (*(*a1 + 16) - v5) >> 2)
    {
      v6 = *(v5 + 4 * v4);
      operator new();
    }

    sub_23C36D95C();
  }

  v7 = *(a1 + 16);
  v8 = a2;
  if (a2 < 0)
  {
    do
    {
      v7 = *v7;
    }

    while (!__CFADD__(v8++, 1));
  }

  else if (a2)
  {
    v9 = a2 + 1;
    do
    {
      v7 = v7[1];
      --v9;
    }

    while (v9 > 1);
  }

  return v7 + 2;
}

void sub_23C36DD0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_23C36D918(va);
  _Unwind_Resume(a1);
}

void sub_23C36DD20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_23C36D918(va);
  _Unwind_Resume(a1);
}

void sub_23C36DD34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
    v17 = a10;
    if (!a10)
    {
LABEL_3:
      sub_23C36D918(&a16);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v17 = a10;
    if (!a10)
    {
      goto LABEL_3;
    }
  }

  operator delete(v17);
  sub_23C36D918(&a16);
  _Unwind_Resume(a1);
}

void sub_23C36DD80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_23C36D918(&a9);
  sub_23C36D918(&a16);
  _Unwind_Resume(a1);
}

void sub_23C36DD9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_23C36D918(va);
  _Unwind_Resume(a1);
}

void sub_23C36DDB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  operator delete(v16);
  sub_23C36D918(&a16);
  _Unwind_Resume(a1);
}

void sub_23C36DDCC(uint64_t *a1, void *a2, int a3)
{
  if (a3)
  {
    if (((a2[1] - *a2) >> 2) > a3)
    {
      v3 = *a1;
      operator new();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_23C36D524(exception, "No data bytes provided");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_23C36D524(exception, "No error correction bytes");
  }

  __cxa_throw(exception, off_278BBAD00, MEMORY[0x277D82610]);
}

uint64_t *sub_23C36E010(uint64_t *a1)
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
        v6 = v2[1];
        v7 = v2[6];
        if (v7)
        {
          v2[7] = v7;
          operator delete(v7);
        }

        v8 = v2[3];
        if (v8)
        {
          v2[4] = v8;
          operator delete(v8);
        }

        operator delete(v2);
        v2 = v6;
      }

      while (v6 != a1);
    }
  }

  return a1;
}

uint64_t sub_23C36E0A0(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v3 = *(a2 + 8);
  *a1 = *a2;
  v4 = *(a2 + 16) - v3;
  if (v4)
  {
    if (!((v4 >> 2) >> 62))
    {
      operator new();
    }

    sub_23C36C1E0();
  }

  if (a1 != a2)
  {
    sub_23C36D79C((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  }

  return a1;
}

void sub_23C36E184(_Unwind_Exception *exception_object)
{
  v3 = v1[4];
  if (v3)
  {
    v1[5] = v3;
    operator delete(v3);
    v4 = v1[1];
    if (!v4)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v4 = v1[1];
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  v1[2] = v4;
  operator delete(v4);
  _Unwind_Resume(exception_object);
}

void ACCBakerCreate(const __CFURL *a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = *a3;
    sub_23C36B014(a1);
  }

  sub_23C36A710(a1);
}

void sub_23C36EA18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, int a39, __int16 a40, char a41, char a42)
{
  operator delete(v42);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a26 == 1 && a25 < 0)
  {
    operator delete(a20);
  }

  sub_23C36EB4C(&a28);
  sub_23C36EBC4(v43 - 136);
  sub_23C36EBC4(v43 - 104);
  if (a38 == 1)
  {
    if (a34)
    {
      a35 = a34;
      operator delete(a34);
      _Unwind_Resume(a1);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t sub_23C36EB4C(uint64_t result)
{
  v1 = *(result + 8);
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

uint64_t sub_23C36EBC4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_23C36EC88();
  }

  (*(*v2 + 48))(v2);
  v3 = *(a1 + 24);
  if (v3 == a1)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

void sub_23C36EC88()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

__n128 sub_23C36ED48(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F014C0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_23C36ED84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRZ14ACCBakerCreateE3$_0JEEEEE")
  {
    return a1 + 8;
  }

  if (((v2 & "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRZ14ACCBakerCreateE3$_0JEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRZ14ACCBakerCreateE3$_0JEEEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRZ14ACCBakerCreateE3$_0JEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 sub_23C36EE70(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F01550;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_23C36EEA0(uint64_t result)
{
  v1 = **(result + 8);
  if (v1)
  {
    v2 = *(v1 + 32);
    if (v2)
    {
      *(v1 + 40) = v2;
      operator delete(v2);
    }

    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x23EECF470);
  }

  return result;
}

uint64_t sub_23C36EF18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRZ14ACCBakerCreateE3$_1JEEEEE")
  {
    return a1 + 8;
  }

  if (((v2 & "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRZ14ACCBakerCreateE3$_1JEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRZ14ACCBakerCreateE3$_1JEEEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3esn5Defer11BindWrapperINSt3__16__bindIRZ14ACCBakerCreateE3$_1JEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_23C36EF90(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23C36C1E0();
  }

  return 0;
}

void sub_23C36F10C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_23C36F128(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23C36FA14();
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

uint64_t sub_23C36F1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    return 2;
  }

  v8 = 1;
  if (a1 && a8)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    if (a3)
    {
      if ((a3 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_23C36C1E0();
    }

    v9 = *(a1 + 16);
    v8 = 4;
    if (v9 > 1)
    {
      if (v9 == 2 || v9 == 3)
      {
LABEL_17:
        operator new();
      }
    }

    else if (v9)
    {
      if (v9 == 1)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if ((sub_23C381A84(&v11, byte_23C3B2ACA, 3) & 0x100) != 0)
      {
        goto LABEL_17;
      }

      v8 = 4;
    }

    if (v11)
    {
      v12 = v11;
      operator delete(v11);
    }
  }

  return v8;
}

void sub_23C36F718(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, char a25)
{
  sub_23C36F8B0(&a25);
  sub_23C376DD8((v25 - 112));
  v27 = *(v25 - 104);
  if (v27)
  {
    *(v25 - 96) = v27;
    operator delete(v27);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_23C36F7F4(uint64_t result)
{
  if ((*(result + 120) & 1) == 0)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x80uLL);
    sub_23C36FD38(v3, v1);
    sub_23C370020(exception, v3);
    __cxa_throw(exception, &unk_284F01618, sub_23C36FC60);
  }

  return result;
}

void sub_23C36F86C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23C37018C(va);
  _Unwind_Resume(a1);
}

void sub_23C36F880(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23C37018C(va);
  __cxa_free_exception(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_23C36F8B0(uint64_t result)
{
  if (*(result + 120) == 1)
  {
    v1 = *result;
    if (!*result)
    {
      return result;
    }

LABEL_13:
    v4 = result;
    operator delete(v1);
    return v4;
  }

  if (*(result + 112) == 1)
  {
    if (*(result + 104) == 1)
    {
      if (*(result + 103) < 0)
      {
        v2 = result;
        operator delete(*(result + 80));
        result = v2;
      }

      if (*(result + 71) < 0)
      {
        v3 = result;
        operator delete(*(result + 48));
        result = v3;
      }
    }

    if (*(result + 40) == 1 && *(result + 39) < 0)
    {
      v1 = *(result + 16);
      goto LABEL_13;
    }
  }

  return result;
}

uint64_t sub_23C36F964(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 8);
    *(v1 + 8) = 0;
    if (v2)
    {
      v3 = sub_23C38E854(v2);
      MEMORY[0x23EECF470](v3, 0x1092C40FB2C32F1);
    }

    v4 = *v1;
    *v1 = 0;
    if (v4)
    {
      v5 = *v4;
      *v4 = 0;
      if (v5)
      {
        sqlite3_close_v2(v5);
      }

      MEMORY[0x23EECF470](v4, 0x20C4093837F09);
    }

    JUMPOUT(0x23EECF470);
  }

  return result;
}

void sub_23C36FA2C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_23C36FB58(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v3 = *(a2 + 16);
  }

  operator new();
}

void sub_23C36FAE0(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x23EECF470](v3, 0x1092C40FB2C32F1);
  sub_23C39FFE0(v1);
  _Unwind_Resume(a1);
}

void sub_23C36FB18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v15 = v14;
  MEMORY[0x23EECF470](v15, 0x20C4093837F09);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_23C36FB58(_BYTE *a1, const void *a2, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_23C36FA14();
  }

  a1[23] = a3;
  v3 = a3 + 1;

  return memmove(a1, a2, v3);
}

void sub_23C36FC14()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
  __cxa_throw(exception, MEMORY[0x277D82770], MEMORY[0x277D82618]);
}

void sub_23C36FC60(uint64_t a1)
{
  *a1 = &unk_284F01640;
  if (*(a1 + 120) != 1)
  {
    goto LABEL_10;
  }

  if (*(a1 + 112) != 1)
  {
    goto LABEL_5;
  }

  if ((*(a1 + 111) & 0x80000000) == 0)
  {
    if ((*(a1 + 79) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    v4 = a1;
    operator delete(*(a1 + 56));
    a1 = v4;
    if (*(v4 + 48) != 1)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v3 = a1;
  operator delete(*(a1 + 88));
  a1 = v3;
  if (*(v3 + 79) < 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (*(a1 + 48) != 1)
  {
    goto LABEL_10;
  }

LABEL_6:
  if (*(a1 + 47) < 0)
  {
    v2 = a1;
    operator delete(*(a1 + 24));
    a1 = v2;
  }

LABEL_10:

  std::exception::~exception(a1);
}

uint64_t sub_23C36FD38(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = 0;
  *(a1 + 112) = 0;
  if (*(a2 + 112) == 1)
  {
    sub_23C36FDA4(a1 + 16, (a2 + 16));
    *(a1 + 112) = 1;
  }

  return a1;
}

uint64_t sub_23C36FDA4(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      v4 = a2;
      sub_23C36FB58(a1, *a2, *(a2 + 1));
      a2 = v4;
    }

    else
    {
      v3 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v3;
    }

    *(a1 + 24) = 1;
  }

  *(a1 + 32) = 0;
  *(a1 + 88) = 0;
  if (*(a2 + 88) == 1)
  {
    if (*(a2 + 55) < 0)
    {
      v6 = a2;
      sub_23C36FB58((a1 + 32), *(a2 + 4), *(a2 + 5));
      a2 = v6;
    }

    else
    {
      v5 = a2[2];
      *(a1 + 48) = *(a2 + 6);
      *(a1 + 32) = v5;
    }

    *(a1 + 56) = *(a2 + 7);
    if (*(a2 + 87) < 0)
    {
      sub_23C36FB58((a1 + 64), *(a2 + 8), *(a2 + 9));
    }

    else
    {
      v7 = a2[4];
      *(a1 + 80) = *(a2 + 10);
      *(a1 + 64) = v7;
    }

    *(a1 + 88) = 1;
  }

  return a1;
}

void sub_23C36FEA8(_Unwind_Exception *a1)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*v2);
  }

  sub_23C36FF00(v2);
  if ((*(v1 + 24) & 1) != 0 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_23C36FF00(uint64_t result)
{
  if (*(result + 56) == 1)
  {
    if ((*(result + 55) & 0x80000000) == 0)
    {
      if ((*(result + 23) & 0x80000000) == 0)
      {
        return result;
      }

LABEL_6:
      v2 = result;
      operator delete(*result);
      return v2;
    }

    v1 = result;
    operator delete(*(result + 32));
    result = v1;
    if (*(v1 + 23) < 0)
    {
      goto LABEL_6;
    }
  }

  return result;
}

uint64_t sub_23C36FF70(uint64_t result)
{
  if (*(result + 96) == 1)
  {
    if (*(result + 88) != 1)
    {
      goto LABEL_5;
    }

    if (*(result + 87) < 0)
    {
      v2 = result;
      operator delete(*(result + 64));
      result = v2;
      if ((*(v2 + 55) & 0x80000000) == 0)
      {
LABEL_5:
        if (*(result + 24) != 1)
        {
          return result;
        }

LABEL_6:
        if (*(result + 23) < 0)
        {
          v1 = result;
          operator delete(*result);
          return v1;
        }

        return result;
      }
    }

    else if ((*(result + 55) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    v3 = result;
    operator delete(*(result + 32));
    result = v3;
    if (*(v3 + 24) != 1)
    {
      return result;
    }

    goto LABEL_6;
  }

  return result;
}

uint64_t sub_23C370020(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_284F01640;
  v3 = *a2;
  *(a1 + 24) = 0;
  *(a1 + 8) = v3;
  *(a1 + 120) = 0;
  if (*(a2 + 112) == 1)
  {
    sub_23C36FDA4(a1 + 24, a2 + 1);
    *(a1 + 120) = 1;
  }

  return a1;
}

void sub_23C37009C(_Unwind_Exception *a1)
{
  sub_23C36FF70(v2);
  std::exception::~exception(v1);
  _Unwind_Resume(a1);
}

void sub_23C3700B8(std::exception *this)
{
  this->__vftable = &unk_284F01640;
  if (LOBYTE(this[15].__vftable) != 1)
  {
    goto LABEL_10;
  }

  if (LOBYTE(this[14].__vftable) == 1)
  {
    if ((SHIBYTE(this[13].__vftable) & 0x80000000) == 0)
    {
      if ((SHIBYTE(this[9].__vftable) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      operator delete(this[7].__vftable);
      if (LOBYTE(this[6].__vftable) != 1)
      {
        goto LABEL_10;
      }

      goto LABEL_6;
    }

    operator delete(this[11].__vftable);
    if (SHIBYTE(this[9].__vftable) < 0)
    {
      goto LABEL_9;
    }
  }

LABEL_5:
  if (LOBYTE(this[6].__vftable) != 1)
  {
    goto LABEL_10;
  }

LABEL_6:
  if (SHIBYTE(this[5].__vftable) < 0)
  {
    operator delete(this[3].__vftable);
  }

LABEL_10:
  std::exception::~exception(this);

  JUMPOUT(0x23EECF470);
}

uint64_t sub_23C37018C(uint64_t result)
{
  if (*(result + 112) == 1)
  {
    if (*(result + 104) != 1)
    {
      goto LABEL_5;
    }

    if (*(result + 103) < 0)
    {
      v2 = result;
      operator delete(*(result + 80));
      result = v2;
      if ((*(v2 + 71) & 0x80000000) == 0)
      {
LABEL_5:
        if (*(result + 40) != 1)
        {
          return result;
        }

LABEL_6:
        if (*(result + 39) < 0)
        {
          v1 = result;
          operator delete(*(result + 16));
          return v1;
        }

        return result;
      }
    }

    else if ((*(result + 71) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    v3 = result;
    operator delete(*(result + 48));
    result = v3;
    if (*(v3 + 40) != 1)
    {
      return result;
    }

    goto LABEL_6;
  }

  return result;
}

void sub_23C370240(std::exception *a1)
{
  std::exception::~exception(a1);

  JUMPOUT(0x23EECF470);
}

_BYTE *sub_23C37027C(_BYTE *__dst, const void *a2, size_t __len)
{
  if (__len > 0x16)
  {
    if (__len - 0x7FFFFFFFFFFFFFF7 > 0x800000000000001ELL)
    {
      operator new();
    }

    sub_23C36FA14();
  }

  __dst[23] = __len;
  v5 = __dst;
  if (__len)
  {
    memmove(__dst, a2, __len);
    v5 = __dst;
  }

  v5[__len] = 0;
  return __dst;
}

void **sub_23C37034C(void **a1, const void *a2, size_t __len)
{
  v5 = a1[2];
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) <= __len)
  {
    if (0x7FFFFFFFFFFFFFF7 - (v5 & 0x7FFFFFFFFFFFFFFFLL) >= __len - (v5 & 0x7FFFFFFFFFFFFFFFLL) + 1)
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        v7 = *a1;
      }

      operator new();
    }

    sub_23C36FA14();
  }

  v6 = *a1;
  a1[1] = __len;
  if (__len)
  {
    memmove(v6, a2, __len);
  }

  *(v6 + __len) = 0;
  return a1;
}

uint64_t sub_23C370474(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 56) = 0;
  if (*(a2 + 56) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      v4 = a2;
      sub_23C36FB58(a1, *a2, *(a2 + 1));
      a2 = v4;
    }

    else
    {
      v3 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v3;
    }

    *(a1 + 24) = *(a2 + 3);
    if (*(a2 + 55) < 0)
    {
      sub_23C36FB58((a1 + 32), *(a2 + 4), *(a2 + 5));
    }

    else
    {
      v5 = a2[2];
      *(a1 + 48) = *(a2 + 6);
      *(a1 + 32) = v5;
    }

    *(a1 + 56) = 1;
  }

  return a1;
}

void sub_23C37051C(_Unwind_Exception *a1)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
    sub_23C36FF00(v1);
    _Unwind_Resume(a1);
  }

  sub_23C36FF00(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_23C370554(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 96) = 0;
  if (*(a2 + 96) == 1)
  {
    *a1 = 0;
    *(a1 + 24) = 0;
    if (*(a2 + 24) == 1)
    {
      if (*(a2 + 23) < 0)
      {
        v4 = a2;
        sub_23C36FB58(a1, *a2, *(a2 + 1));
        a2 = v4;
      }

      else
      {
        v3 = *a2;
        *(a1 + 16) = *(a2 + 2);
        *a1 = v3;
      }

      *(a1 + 24) = 1;
    }

    sub_23C370474(a1 + 32, a2 + 2);
    *(a1 + 96) = 1;
  }

  return a1;
}

void sub_23C3705F0(_Unwind_Exception *a1)
{
  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  sub_23C36FF70(v1);
  _Unwind_Resume(a1);
}

void sub_23C370624(unsigned int a1@<W0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v42[2] = *MEMORY[0x277D85DE8];
  sub_23C370554(v21, a2);
  v9 = std::generic_category();
  sub_23C370554(&__p, v21);
  v10 = a1;
  if (v39 != 1)
  {
    *a3 = a1;
    *(a3 + 8) = v9;
    *(a3 + 16) = 0;
    *(a3 + 112) = 0;
    goto LABEL_19;
  }

  v11 = v32;
  if (v32 == 1)
  {
    v12 = __p;
    v42[0] = v31;
    *(v42 + 7) = *(&v31 + 7);
    LOBYTE(a1) = HIBYTE(v31);
    v31 = 0uLL;
    __p = 0;
    v13 = v38;
    if (v38 != 1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v12 = 0;
    v13 = v38;
    if (v38 != 1)
    {
LABEL_4:
      v14 = 0;
      if (!v32)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }
  }

  v14 = v33;
  v41[0] = v34;
  *(v41 + 7) = *(&v34 + 7);
  v6 = HIBYTE(v34);
  v33 = 0;
  v34 = 0uLL;
  v5 = v35;
  v3 = v36;
  v40[0] = v37;
  *(v40 + 7) = *(&v37 + 7);
  v4 = HIBYTE(v37);
  v36 = 0;
  v37 = 0uLL;
  if (!v32)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (SHIBYTE(v31) < 0)
  {
    v19 = v9;
    v20 = v12;
    v15 = v32;
    operator delete(__p);
    v11 = v15;
    v9 = v19;
    v12 = v20;
  }

LABEL_11:
  *a3 = v10;
  *(a3 + 8) = v9;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  *(a3 + 40) = 0;
  if (v11)
  {
    v16 = v42[0];
    *(a3 + 16) = v12;
    *(a3 + 24) = v16;
    *(a3 + 31) = *(v42 + 7);
    *(a3 + 39) = a1;
    v42[0] = 0;
    *(v42 + 7) = 0;
    *(a3 + 40) = 1;
    LOBYTE(a1) = 0;
    v12 = 0;
    *(a3 + 48) = 0;
    *(a3 + 104) = 0;
    if (!v13)
    {
LABEL_13:
      *(a3 + 112) = 1;
      if (!v11)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }
  }

  else
  {
    *(a3 + 48) = 0;
    *(a3 + 104) = 0;
    if (!v13)
    {
      goto LABEL_13;
    }
  }

  v17 = v41[0];
  *(a3 + 48) = v14;
  *(a3 + 56) = v17;
  *(a3 + 63) = *(v41 + 7);
  *(a3 + 71) = v6;
  v41[0] = 0;
  *(v41 + 7) = 0;
  *(a3 + 72) = v5;
  *(a3 + 80) = v3;
  *(a3 + 88) = v40[0];
  *(a3 + 95) = *(v40 + 7);
  *(a3 + 103) = v4;
  v40[0] = 0;
  *(v40 + 7) = 0;
  *(a3 + 104) = 1;
  *(a3 + 112) = 1;
  if (!v11)
  {
    goto LABEL_19;
  }

LABEL_17:
  if ((a1 & 0x80) != 0)
  {
    operator delete(v12);
  }

LABEL_19:
  if (v29 != 1)
  {
    goto LABEL_26;
  }

  if (v28 != 1)
  {
    goto LABEL_23;
  }

  if (v27 < 0)
  {
    operator delete(v26);
    if ((v25 & 0x80000000) == 0)
    {
LABEL_23:
      if (v23 != 1)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }
  }

  else if ((v25 & 0x80000000) == 0)
  {
    goto LABEL_23;
  }

  operator delete(v24);
  if (v23 != 1)
  {
    goto LABEL_26;
  }

LABEL_24:
  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

LABEL_26:
  v18 = *MEMORY[0x277D85DE8];
}

void sub_23C3708BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23C36FF70(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23C3708D4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    (off_284F01658[v2])(&v4, a1);
  }

  *(a1 + 24) = -1;
  return a1;
}

void sub_23C370930()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82900] + 16;
  __cxa_throw(exception, MEMORY[0x277D82768], std::exception::~exception);
}

uint64_t sub_23C370980(uint64_t a1, const char **a2)
{
  v4 = *(a1 + 24);
  if (v4 != -1)
  {
    (off_284F01658[v4])(&v9, a1);
  }

  *(a1 + 24) = -1;
  v5 = *a2;
  v6 = strlen(*a2);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23C36FA14();
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

void sub_23C370A80(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_23C370A94(uint64_t a1, void ***a2)
{
  v2 = *a2;
  if (*a2)
  {
    v4 = a2[1];
    v5 = *a2;
    if (v4 == v2)
    {
      a2[1] = v2;
    }

    else
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = *a2;
      a2[1] = v2;
    }

    operator delete(v5);
  }
}

void *sub_23C370B40(void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (a3 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_23C36C1E0();
  }

  return result;
}

void sub_23C370C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  sub_23C370C78(&a11);
  *(v11 + 8) = v12;
  sub_23C370CD8(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_23C370C78(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void ****sub_23C370CD8(void ****a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 1);
          v4 -= 3;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t sub_23C370D5C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
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

    while (v5 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 sub_23C370DC4(__n128 ***a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = v1[1].n128_u32[2];
  if (v3 != -1)
  {
    (off_284F01658[v3])(&v5, v1);
  }

  v1[1].n128_u32[2] = -1;
  result = *v2;
  v1[1].n128_u64[0] = v2[1].n128_u64[0];
  *v1 = result;
  v2->n128_u64[1] = 0;
  v2[1].n128_u64[0] = 0;
  v2->n128_u64[0] = 0;
  v1[1].n128_u32[2] = 1;
  return result;
}

void sub_23C370E50(uint64_t *a1, uint64_t a2)
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
  v6 = *(v5 + 16);
  *__p = *v5;
  v15 = v6;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  v7 = *(v2 + 24);
  if (v7 != -1)
  {
    (off_284F01658[v7])(&v10, v2);
  }

  *(v2 + 24) = -1;
  sub_23C370B40(v2, &v11, 2uLL);
  *(v2 + 24) = 2;
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    operator delete(v11);
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v13 < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_23C370F7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_23C36BF7C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23C370FB8(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v4 < v5)
  {
    v6 = *v3;
    *(v4 + 16) = *(v3 + 2);
    *v4 = v6;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    *v3 = 0;
    v7 = v4 + 24;
LABEL_3:
    *(a2 + 8) = v7;
    return;
  }

  v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
  v9 = v8 + 1;
  if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_23C36C1E0();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a2) >> 3);
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
    if (v11 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_23C36C8AC();
  }

  v12 = 24 * v8;
  v13 = *v3;
  *(v12 + 16) = *(v3 + 2);
  *v12 = v13;
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = 0;
  v7 = 24 * v8 + 24;
  v14 = *a2;
  v15 = *(a2 + 8) - *a2;
  v16 = 24 * v8 - v15;
  memcpy((v12 - v15), *a2, v15);
  *a2 = v16;
  *(a2 + 8) = v7;
  *(a2 + 16) = 0;
  if (!v14)
  {
    goto LABEL_3;
  }

  operator delete(v14);
  *(a2 + 8) = v7;
}

_BYTE *sub_23C371124(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_23C371524(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    v5 = strlen(*(*a1 + 32));
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_23C36FA14();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v4[23] = v5;
    if (v5)
    {
      memmove(v4, v3, v5);
    }

    v4[v6] = 0;
    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

size_t sub_23C371224(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_284F01658[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23C36FA14();
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

void sub_23C371318(uint64_t *a1, uint64_t a2)
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
  v6 = a1[1];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23C36FA14();
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
    (off_284F01658[v9])(&v12, v2);
  }

LABEL_9:
  *(v2 + 24) = -1;
  sub_23C370B40(v2, &v13, 2uLL);
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

void sub_23C3714D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_23C36BF7C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_23C371524(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_23C36C1E0();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_23C36C8AC();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23C36FA14();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
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

void sub_23C3716C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23C370D5C(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_23C3716D4(uint64_t **result)
{
  v1 = **result;
  v2 = (*result)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    result = (off_284F01658[v3])(&v5, v1);
  }

  *(v1 + 24) = -1;
  if (*(v2 + 23) < 0)
  {
    result = sub_23C36FB58(v1, *v2, *(v2 + 1));
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

uint64_t sub_23C371780(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_23C3719A4(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    if (*(v3 + 23) < 0)
    {
      sub_23C36FB58(*(a2 + 8), *v3, *(v3 + 8));
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

void sub_23C371820(uint64_t *a1, uint64_t a2)
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
    sub_23C36FB58(&__p, *v5, *(v5 + 1));
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
    (off_284F01658[v7])(&v10, v2);
  }

  *(v2 + 24) = -1;
  sub_23C370B40(v2, &v11, 2uLL);
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

void sub_23C371960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23C3719A4(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_23C36C1E0();
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

    sub_23C36C8AC();
  }

  v6 = 8 * ((*(a1 + 8) - *a1) >> 3);
  if (*(a2 + 23) < 0)
  {
    sub_23C36FB58(v6, *a2, *(a2 + 8));
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

void sub_23C371AE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23C370D5C(va);
  _Unwind_Resume(a1);
}

void sub_23C371AF8(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

__n128 sub_23C371B04@<Q0>(__n128 *a1@<X1>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  a1->n128_u64[1] = 0;
  a1[1].n128_u64[0] = 0;
  a1->n128_u64[0] = 0;
  return result;
}

void sub_23C371B30(uint64_t a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string::size_type a4@<X3>, std::string *a5@<X8>)
{
  v10 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v10 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  }

  v12 = (v11 - 1) * a4;
  v13 = a2 - a1;
  if (a2 == a1)
  {
    v14 = 0;
    goto LABEL_26;
  }

  v15 = v13 - 24;
  if ((v13 - 24) < 0x60)
  {
    v14 = 0;
    v16 = a1;
    goto LABEL_23;
  }

  v17 = v15 / 0x18;
  v18 = v15 / 0x18 + 1;
  if (v15 < 0x180)
  {
    v14 = 0;
    v19 = 0;
LABEL_18:
    v79 = v18 & 3;
    if ((v18 & 3) == 0)
    {
      v79 = 4;
    }

    v16 = a1 + 24 * (v18 - v79);
    v80 = 0uLL;
    v81 = v14;
    v82 = ~v17 + v19 + v79;
    v83 = (a1 + 24 * v19 + 47);
    v84.i64[0] = 255;
    v84.i64[1] = 255;
    do
    {
      v85 = (v83 - 39);
      v86 = (v83 + 9);
      v87 = vld3q_f64(v85);
      v88 = vld3q_f64(v86);
      v89.i16[0] = *(v83 - 24);
      v89.i16[1] = *v83;
      v89.i16[2] = v83[24];
      v89.i16[3] = v83[48];
      v90 = vmovl_u16(vcltz_s16(vshr_n_s16(vshl_n_s16(v89, 8uLL), 8uLL)));
      v91.i64[0] = v90.u32[0];
      v91.i64[1] = v90.u32[1];
      v92 = vshrq_n_s64(vshlq_n_s64(v91, 0x38uLL), 0x38uLL);
      v91.i64[0] = v90.u32[2];
      v91.i64[1] = v90.u32[3];
      v93 = vshrq_n_s64(vshlq_n_s64(v91, 0x38uLL), 0x38uLL);
      v91.i64[0] = v83[24];
      v91.i64[1] = v83[48];
      v94 = vbicq_s8(v91, v93);
      v91.i64[0] = *(v83 - 24);
      v91.i64[1] = *v83;
      v80 = vaddq_s64(vorrq_s8(vandq_s8(v88, v93), vandq_s8(v94, v84)), v80);
      v81 = vaddq_s64(vorrq_s8(vandq_s8(v87, v92), vandq_s8(vbicq_s8(v91, v92), v84)), v81);
      v83 += 96;
      v82 += 4;
    }

    while (v82);
    v14 = vaddvq_s64(vaddq_s64(v81, v80));
    goto LABEL_23;
  }

  v106 = v17 + 1;
  v107 = v15 / 0x18;
  v20 = 0uLL;
  v21 = 0uLL;
  if ((v18 & 0xF) != 0)
  {
    v22 = v18 & 0xF;
  }

  else
  {
    v22 = 16;
  }

  v108 = v22;
  v23 = v18 - v22;
  v24 = (a1 + 191);
  v109 = v18 - v22;
  v25 = 0uLL;
  v26 = 0uLL;
  v27 = 0uLL;
  v28 = 0uLL;
  v29 = 0uLL;
  v30 = 0uLL;
  do
  {
    v31.i8[0] = *(v24 - 168);
    v32.i8[0] = v31.i8[0];
    v32.i8[1] = *(v24 - 144);
    v32.i8[2] = *(v24 - 120);
    v32.i8[3] = *(v24 - 96);
    v32.i8[4] = *(v24 - 72);
    v32.i8[5] = *(v24 - 48);
    v32.i8[6] = *(v24 - 24);
    v32.i8[7] = *v24;
    v33 = (v24 - 183);
    v34 = (v24 - 135);
    v35 = (v24 - 87);
    v36 = (v24 - 39);
    v37 = (v24 + 9);
    v38 = (v24 + 57);
    v39 = vld3q_f64(v33);
    v40 = vld3q_f64(v34);
    v41 = vld3q_f64(v35);
    v42 = vld3q_f64(v36);
    v110 = v42;
    v43 = vld3q_f64(v37);
    v44 = vld3q_f64(v38);
    v32.i8[8] = v24[24];
    v32.i8[9] = v24[48];
    v32.i8[10] = v24[72];
    v32.i8[11] = v24[96];
    v45.i32[0] = v32.i32[2];
    v32.i8[12] = v24[120];
    v32.i8[13] = v24[144];
    v45.i16[2] = v32.i16[6];
    v32.i8[14] = v24[168];
    v45.i8[6] = v32.i8[14];
    v32.i8[15] = v24[192];
    v31.i8[1] = v32.i8[1];
    v31.i8[2] = v32.i8[2];
    v46 = vcltzq_s8(v32);
    v47 = vmovl_high_s8(v46);
    v31.i8[3] = *(v24 - 96);
    v31.i8[4] = *(v24 - 72);
    v48 = vmovl_s8(*v46.i8);
    v49 = vmovl_s16(*v48.i8);
    v31.i8[5] = *(v24 - 48);
    v31.i8[6] = *(v24 - 24);
    v50.i64[0] = v49.i32[0];
    v50.i64[1] = v49.i32[1];
    v51 = v50;
    v31.i8[7] = *v24;
    v52 = vmovl_u8(v31);
    v53 = vmovl_u16(*v52.i8);
    v50.i64[0] = v53.u32[0];
    v50.i64[1] = v53.u32[1];
    v54 = vbslq_s8(v51, v39, v50);
    v55 = vmovl_s16(*v47.i8);
    v45.i8[7] = v24[192];
    v56 = vmovl_u8(v45);
    v57 = vmovl_u16(*v56.i8);
    v50.i64[0] = v55.i32[0];
    v50.i64[1] = v55.i32[1];
    v58 = v50;
    v50.i64[0] = v57.u32[0];
    v50.i64[1] = v57.u32[1];
    v59 = vbslq_s8(v58, v43, v50);
    v60 = vmovl_high_s16(v48);
    v50.i64[0] = v49.i32[2];
    v50.i64[1] = v49.i32[3];
    v61 = v50;
    v50.i64[0] = v53.u32[2];
    v50.i64[1] = v53.u32[3];
    v62 = vbslq_s8(v61, v40, v50);
    v50.i64[0] = v60.i32[0];
    v50.i64[1] = v60.i32[1];
    v63 = v50;
    v64 = (v24 + 105);
    v65 = (v24 + 153);
    v66 = vmovl_high_u16(v52);
    v50.i64[0] = v66.u32[0];
    v50.i64[1] = v66.u32[1];
    v67 = vbslq_s8(v63, v41, v50);
    v68 = vld3q_f64(v64);
    v69 = vld3q_f64(v65);
    v50.i64[0] = v55.i32[2];
    v50.i64[1] = v55.i32[3];
    v70 = v50;
    v50.i64[0] = v57.u32[2];
    v50.i64[1] = v57.u32[3];
    v71 = vbslq_s8(v70, v44, v50);
    v72 = vmovl_high_s16(v47);
    v73 = vmovl_high_u16(v56);
    v50.i64[0] = v72.i32[0];
    v50.i64[1] = v72.i32[1];
    v74 = v50;
    v50.i64[0] = v73.u32[0];
    v50.i64[1] = v73.u32[1];
    v75 = vbslq_s8(v74, v68, v50);
    v50.i64[0] = v60.i32[2];
    v50.i64[1] = v60.i32[3];
    v76 = v50;
    v50.i64[0] = v66.u32[2];
    v50.i64[1] = v66.u32[3];
    v77 = vbslq_s8(v76, v110, v50);
    v50.i64[0] = v72.i32[2];
    v50.i64[1] = v72.i32[3];
    v78 = v50;
    v50.i64[0] = v73.u32[2];
    v50.i64[1] = v73.u32[3];
    v30 = vaddq_s64(vbslq_s8(v78, v69, v50), v30);
    v26 = vaddq_s64(v77, v26);
    v29 = vaddq_s64(v75, v29);
    v28 = vaddq_s64(v71, v28);
    v25 = vaddq_s64(v67, v25);
    v21 = vaddq_s64(v62, v21);
    v27 = vaddq_s64(v59, v27);
    v20 = vaddq_s64(v54, v20);
    v24 += 384;
    v23 -= 16;
  }

  while (v23);
  v14 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v20, v27), vaddq_s64(v25, v29)), vaddq_s64(vaddq_s64(v21, v28), vaddq_s64(v26, v30))));
  if (v108 >= 5)
  {
    v19 = v109;
    v18 = v106;
    v17 = v107;
    goto LABEL_18;
  }

  v16 = a1 + 24 * v109;
  do
  {
LABEL_23:
    v95 = *(v16 + 23);
    if ((v95 & 0x80u) != 0)
    {
      v95 = *(v16 + 8);
    }

    v14 += v95;
    v16 += 24;
  }

  while (v16 != a2);
LABEL_26:
  v96 = v14 + v12;
  a5->__r_.__value_.__r.__words[0] = 0;
  a5->__r_.__value_.__l.__size_ = 0;
  a5->__r_.__value_.__r.__words[2] = 0;
  if ((v14 + v12) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23C36FA14();
  }

  if (v96 >= 0x17)
  {
    v97 = v96 | 7;
    if (v97 == 23)
    {
      v98 = 24;
    }

    else
    {
      v98 = v97;
    }

    sub_23C372054(a5, v98);
  }

  if (v13 >= 1)
  {
    v99 = *(a1 + 23);
    v100 = v99 >= 0 ? a1 : *a1;
    v101 = v99 >= 0 ? *(a1 + 23) : *(a1 + 8);
    std::string::append(a5, v100, v101);
    if (v10 >= 2)
    {
      for (i = a1 + 24; i != a2; i += 24)
      {
        std::string::append(a5, a3, a4);
        v103 = *(i + 23);
        if (v103 >= 0)
        {
          v104 = i;
        }

        else
        {
          v104 = *i;
        }

        if (v103 >= 0)
        {
          v105 = *(i + 23);
        }

        else
        {
          v105 = *(i + 8);
        }

        std::string::append(a5, v104, v105);
      }
    }
  }
}

void sub_23C372030(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_23C372054(_BYTE *__dst, unint64_t a2)
{
  v3 = __dst[23];
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = 22;
    LOBYTE(v5) = __dst[23];
    v6 = a2 < 0x17;
    if (a2 < 0x17)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (v4 < a2)
    {
      operator new();
    }

    operator new();
  }

  v3 = *(__dst + 1);
  v8 = *(__dst + 2);
  v4 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v5 = HIBYTE(v8);
  v6 = a2 < 0x17;
  if (a2 >= 0x17)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = *__dst;
  if ((v5 & 0x80) == 0)
  {
    v9 = v5 + 1;
LABEL_9:
    memmove(__dst, v7, v9);
    goto LABEL_10;
  }

  v10 = *(__dst + 1);
  v6 = 1;
  v9 = v10 + 1;
  if (v10 != -1)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (v6)
  {
    operator delete(v7);
  }

  __dst[23] = v3 & 0x7F;
}

void sub_23C3721E0(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t sub_23C372208(uint64_t a1)
{
  *(a1 + 176) = 0;
  v2 = MEMORY[0x277D82890] + 104;
  *(a1 + 128) = MEMORY[0x277D82890] + 104;
  v3 = a1 + 16;
  v4 = MEMORY[0x277D82890] + 64;
  *(a1 + 16) = MEMORY[0x277D82890] + 64;
  v5 = a1 + 24;
  v6 = MEMORY[0x277D82818];
  v7 = *(MEMORY[0x277D82818] + 24);
  v8 = *(MEMORY[0x277D82818] + 16);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  *(a1 + 8) = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, (a1 + 24));
  v10 = MEMORY[0x277D82890] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  v11 = v6[5];
  v12 = v6[4];
  *(a1 + 16) = v12;
  *(v3 + *(v12 - 24)) = v11;
  v13 = v6[1];
  *a1 = v13;
  *(a1 + *(v13 - 24)) = v6[6];
  *a1 = v10;
  *(a1 + 128) = v2;
  v14 = MEMORY[0x277D82868] + 16;
  *(a1 + 16) = v4;
  *(a1 + 24) = v14;
  MEMORY[0x23EECF2D0](a1 + 32);
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 24;
  sub_23C37253C(v5);
  return a1;
}

void sub_23C3724EC(_Unwind_Exception *a1)
{
  if (*(v2 + 111) < 0)
  {
    operator delete(*v4);
  }

  *(v2 + 24) = v3;
  std::locale::~locale((v2 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x23EECF3E0](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_23C37253C(uint64_t result)
{
  *(result + 88) = 0;
  v1 = result + 64;
  v2 = *(result + 87);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = result + 64;
    v4 = *(result + 87);
    v5 = *(result + 96);
    if ((v5 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = *(result + 64);
  v4 = *(result + 72);
  v5 = *(result + 96);
  if ((v5 & 8) != 0)
  {
LABEL_3:
    *(result + 88) = v3 + v4;
    *(result + 16) = v3;
    *(result + 24) = v3;
    *(result + 32) = v3 + v4;
  }

LABEL_4:
  if ((v5 & 0x10) == 0)
  {
    return result;
  }

  *(result + 88) = v3 + v4;
  if ((v2 & 0x80000000) != 0)
  {
    v2 = *(result + 72);
    v6 = (*(result + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v2 >= v6)
    {
      v1 = *(result + 64);
      *(result + 72) = v6;
LABEL_14:
      *(v1 + v6) = 0;
      v8 = *(result + 87);
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v6 = 22;
    if (v2 > 0x15)
    {
      *(result + 87) = 22;
      goto LABEL_14;
    }
  }

  v7 = result;
  std::string::append((result + 64), v6 - v2, 0);
  result = v7;
  v8 = *(v7 + 87);
  if ((v8 & 0x8000000000000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_15:
  v8 = *(result + 72);
LABEL_16:
  *(result + 40) = v3;
  *(result + 48) = v3;
  *(result + 56) = v3 + v8;
  if ((*(result + 96) & 3) != 0)
  {
    if (v4 >> 31)
    {
      v9 = ((v4 - 0x80000000) * 0x200000005uLL) >> 64;
      v10 = 0x7FFFFFFF * ((v9 + ((v4 - 0x80000000 - v9) >> 1)) >> 30);
      v3 += v10 + 0x7FFFFFFF;
      v4 = v4 - v10 - 0x7FFFFFFF;
      *(result + 48) = v3;
    }

    if (v4)
    {
      *(result + 48) = v3 + v4;
    }
  }

  return result;
}

void *sub_23C372684(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x23EECF1F0](v14, a1);
  if (v14[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      v10 = (a1 + *(*a1 - 24));
      std::ios_base::getloc(v10);
      v11 = std::locale::use_facet(&v15, MEMORY[0x277D82680]);
      v9 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v15);
      v6 = v10;
      v10[1].__fmtflags_ = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!sub_23C372830(v7, a2, v12, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x23EECF200](v14);
  return a1;
}

void sub_23C3727C8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x23EECF200](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x23C3727A8);
}

uint64_t sub_23C372830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_23C36FA14();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v19 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v19 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v19 < 0)
      {
        v15 = v14;
        operator delete(__b);
        if (v15 != v12)
        {
          return 0;
        }
      }

      else if (v14 != v12)
      {
        return 0;
      }
    }

    v16 = a4 - a3;
    if (v16 < 1 || (*(*v6 + 96))(v6, a3, v16) == v16)
    {
      *(a5 + 24) = 0;
      return v6;
    }

    return 0;
  }

  return v6;
}

void sub_23C372A0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_23C372A38(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_23C372E38(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    v5 = strlen(*(*a1 + 32));
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_23C36FA14();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v4[23] = v5;
    if (v5)
    {
      memmove(v4, v3, v5);
    }

    v4[v6] = 0;
    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

size_t sub_23C372B38(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_284F01670[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23C36FA14();
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

void sub_23C372C2C(uint64_t *a1, uint64_t a2)
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
  v6 = a1[1];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23C36FA14();
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
    (off_284F01670[v9])(&v12, v2);
  }

LABEL_9:
  *(v2 + 24) = -1;
  sub_23C370B40(v2, &v13, 2uLL);
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

void sub_23C372DEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_23C36BF7C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_23C372E38(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_23C36C1E0();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_23C36C8AC();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23C36FA14();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
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

void sub_23C372FD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23C370D5C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23C372FE8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    (off_284F01670[v2])(&v4, a1);
  }

  *(a1 + 24) = -1;
  return a1;
}

void sub_23C373044(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v82 = *MEMORY[0x277D85DE8];
  sub_23C37F940(a3, a4, &v66);
  sub_23C37FDA4(&v66, a4, &v55);
  if ((v65 & 1) == 0)
  {
    *v71 = v55;
    sub_23C370554(v72, &v56);
    *a1 = *v71;
    *(a1 + 16) = 0;
    *(a1 + 112) = 0;
    if (v81 != 1)
    {
      *(a1 + 120) = 0;
      goto LABEL_83;
    }

    *(a1 + 40) = 0;
    v12 = v74;
    if (v74 == 1)
    {
      *(a1 + 16) = *v72;
      *(a1 + 32) = v73;
      v72[1] = 0;
      v73 = 0;
      v72[0] = 0;
      *(a1 + 40) = 1;
      *(a1 + 48) = 0;
      v13 = a1 + 48;
      *(a1 + 104) = 0;
      if ((v80 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      *(a1 + 48) = 0;
      v13 = a1 + 48;
      *(a1 + 104) = 0;
      if ((v80 & 1) == 0)
      {
LABEL_11:
        *(a1 + 112) = 1;
        *(a1 + 120) = 0;
        if (!v12)
        {
          goto LABEL_83;
        }

LABEL_16:
        if ((SHIBYTE(v73) & 0x80000000) == 0)
        {
          goto LABEL_83;
        }

        v15 = v72[0];
        goto LABEL_82;
      }
    }

    v14 = v77;
    *(v13 + 16) = v76;
    *v13 = *v75;
    v75[0] = 0;
    v75[1] = 0;
    *(a1 + 72) = v14;
    *(a1 + 80) = *v78;
    *(a1 + 96) = v79;
    v76 = 0;
    v78[0] = 0;
    v78[1] = 0;
    v79 = 0;
    *(a1 + 104) = 1;
    *(a1 + 112) = 1;
    *(a1 + 120) = 0;
    if (!v12)
    {
      goto LABEL_83;
    }

    goto LABEL_16;
  }

  v7 = sub_23C36F7F4(&v55);
  v53 = a4;
  sub_23C377EE8(&v54, v7);
  v8 = *a4;
  v9 = v8 - 8;
  if (v8 == 8 || v8 == 16)
  {
    v11 = 19;
  }

  else if (v8 == 64)
  {
    v11 = 11;
  }

  else
  {
    v11 = 9;
  }

  sub_23C379870(&v53, v71);
  if (v71[1])
  {
    sub_23C379870(&v53, __p);
    v16 = __p[1] - 1;
    if (__p[0])
    {
      operator delete(__p[0]);
    }

    v17 = v71[0];
    if (!v71[0])
    {
      goto LABEL_26;
    }
  }

  else
  {
    v16 = 0;
    v17 = v71[0];
    if (!v71[0])
    {
      goto LABEL_26;
    }
  }

  operator delete(v17);
LABEL_26:
  v18 = 8;
  if ((v9 & 0xF7) != 0)
  {
    v19 = 8;
  }

  else
  {
    v19 = 5;
  }

  v20 = *v53;
  switch(v20)
  {
    case 8:
      goto LABEL_32;
    case 110:
      v18 = 0;
      v21 = 0;
      goto LABEL_41;
    case 16:
LABEL_32:
      v18 = 6;
      break;
  }

  if (v20 == 8)
  {
    operator new();
  }

  if (v20 == 16)
  {
    v21 = 9;
  }

  else
  {
    v21 = 5;
  }

LABEL_41:
  v22 = v11 * v19 - v16 + v18 * v21;
  v23 = (v22 + 7) >> 3;
  v24 = a3[1] - *a3;
  if (v24 > v23)
  {
    v70 = -1;
    operator new();
  }

  if (v24 >= v23 || (v25 = *a4, v25 != 110) && v25 != 8)
  {
    if (v22 >= v67)
    {
      v22 = v67;
    }

    v28 = v22 - *(&v55 + 1);
    if (v67 >= (v22 - *(&v55 + 1)))
    {
      v29 = v22 - *(&v55 + 1);
    }

    else
    {
      v29 = v67;
    }

    v30 = v67 - v29;
    if (v30 < 0)
    {
      v32 = v30 - 63;
      if (v30 - 63 < 0)
      {
        v32 = v30;
      }

      v31 = v32 >> 6;
    }

    else
    {
      v31 = v30 >> 6;
    }

    v33 = 8 * v31;
    v34 = (v67 >> 3) & 0x1FFFFFFFFFFFFFF8;
    memset(v52, 0, sizeof(v52));
    v35 = v30 & 0x3F;
    v71[0] = v66 + v33;
    LODWORD(v71[1]) = v35;
    __p[0] = v66 + v34;
    LODWORD(__p[1]) = v67 & 0x3F;
    sub_23C377DC4(v52, v71, __p, (v67 & 0x3F) - v35 + 8 * (v34 - v33));
    v36 = v67 - v28;
    if (*(&v55 + 1) != v36)
    {
      v37 = *(&v55 + 1);
      do
      {
        if ((*(v66 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v37))
        {
          v70 = -1;
          operator new();
        }

        ++v37;
      }

      while (v36 != v37);
    }

    v38 = sub_23C36F7F4(&v55);
    sub_23C37EAA8(v52, v38, &v53, &v68);
    v39 = *a4;
    operator new();
  }

  sub_23C377C94(&v43, "Please pad data with extra 0!");
  v51 = 1;
  sub_23C370624(0x16u, &v43, v71);
  *a1 = *v71;
  *(a1 + 16) = 0;
  *(a1 + 112) = 0;
  if (v81 != 1)
  {
    *(a1 + 120) = 0;
    goto LABEL_72;
  }

  *(a1 + 40) = 0;
  v26 = v74;
  if (v74 == 1)
  {
    *(a1 + 16) = *v72;
    *(a1 + 32) = v73;
    v72[1] = 0;
    v73 = 0;
    v72[0] = 0;
    *(a1 + 40) = 1;
    *(a1 + 48) = 0;
    v27 = a1 + 48;
    *(a1 + 104) = 0;
    if ((v80 & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  else
  {
    *(a1 + 48) = 0;
    v27 = a1 + 48;
    *(a1 + 104) = 0;
    if ((v80 & 1) == 0)
    {
LABEL_49:
      *(a1 + 112) = 1;
      *(a1 + 120) = 0;
      if (!v26)
      {
        goto LABEL_72;
      }

      goto LABEL_70;
    }
  }

  v40 = v77;
  *(v27 + 16) = v76;
  *v27 = *v75;
  v75[0] = 0;
  v75[1] = 0;
  *(a1 + 72) = v40;
  *(a1 + 80) = *v78;
  *(a1 + 96) = v79;
  v76 = 0;
  v78[0] = 0;
  v78[1] = 0;
  v79 = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = 1;
  *(a1 + 120) = 0;
  if (!v26)
  {
    goto LABEL_72;
  }

LABEL_70:
  if (SHIBYTE(v73) < 0)
  {
    operator delete(v72[0]);
  }

LABEL_72:
  if (v51 == 1)
  {
    if (v50 == 1)
    {
      if (v49 < 0)
      {
        operator delete(v48);
      }

      if (v47 < 0)
      {
        operator delete(v46);
      }
    }

    if (v45 == 1 && v44 < 0)
    {
      operator delete(v43);
    }
  }

  v15 = v54;
  if (v54)
  {
LABEL_82:
    operator delete(v15);
  }

LABEL_83:
  if (v65 == 1)
  {
    v41 = v55;
    if (!v55)
    {
      goto LABEL_96;
    }

LABEL_95:
    operator delete(v41);
    goto LABEL_96;
  }

  if (v64 == 1)
  {
    if (v63 == 1)
    {
      if (v62 < 0)
      {
        operator delete(v61);
      }

      if (v60 < 0)
      {
        operator delete(v59);
      }
    }

    if (v58 == 1 && v57 < 0)
    {
      v41 = v56;
      goto LABEL_95;
    }
  }

LABEL_96:
  if (v66)
  {
    operator delete(v66);
  }

  v42 = *MEMORY[0x277D85DE8];
}

void sub_23C375C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, void *a58)
{
  sub_23C36FF70(&a25);
  if (__p)
  {
    a39 = __p;
    operator delete(__p);
    if (!v59)
    {
      goto LABEL_6;
    }
  }

  else if (!v59)
  {
LABEL_6:
    if (a57)
    {
      a58 = a57;
      operator delete(a57);
      if (!v58)
      {
LABEL_8:
        v61 = STACK[0x200];
        if (!STACK[0x200])
        {
LABEL_13:
          if (STACK[0x218])
          {
            operator delete(STACK[0x218]);
          }

          if (STACK[0x2B0])
          {
            operator delete(STACK[0x2B0]);
          }

          sub_23C3A44C0(&STACK[0x230]);
          sub_23C3A44C0(&STACK[0x238]);
          if (STACK[0x468])
          {
            operator delete(STACK[0x468]);
          }

          if (STACK[0x398])
          {
            operator delete(STACK[0x398]);
            v62 = STACK[0x3B8];
            if (!STACK[0x3B8])
            {
LABEL_25:
              sub_23C36F8B0(&STACK[0x3D0]);
              v63 = STACK[0x450];
              if (!STACK[0x450])
              {
LABEL_26:
                _Unwind_Resume(a1);
              }

LABEL_24:
              operator delete(v63);
              _Unwind_Resume(a1);
            }
          }

          else
          {
            v62 = STACK[0x3B8];
            if (!STACK[0x3B8])
            {
              goto LABEL_25;
            }
          }

          operator delete(v62);
          sub_23C36F8B0(&STACK[0x3D0]);
          v63 = STACK[0x450];
          if (!STACK[0x450])
          {
            goto LABEL_26;
          }

          goto LABEL_24;
        }

LABEL_12:
        STACK[0x208] = v61;
        operator delete(v61);
        goto LABEL_13;
      }
    }

    else if (!v58)
    {
      goto LABEL_8;
    }

    operator delete(v58);
    v61 = STACK[0x200];
    if (!STACK[0x200])
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  operator delete(v59);
  goto LABEL_6;
}

void sub_23C3760E4()
{
  if (STACK[0x450])
  {
    JUMPOUT(0x23C376090);
  }

  JUMPOUT(0x23C3760DCLL);
}

uint64_t sub_23C3760F8(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 16) = 0;
  *(result + 112) = 0;
  if (*(a2 + 112) == 1)
  {
    *(result + 40) = 0;
    if (*(a2 + 40) == 1)
    {
      v2 = *(a2 + 16);
      *(result + 32) = *(a2 + 32);
      *(result + 16) = v2;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 16) = 0;
      *(result + 40) = 1;
    }

    *(result + 48) = 0;
    *(result + 104) = 0;
    if (*(a2 + 104) == 1)
    {
      v3 = *(a2 + 48);
      *(result + 64) = *(a2 + 64);
      *(result + 48) = v3;
      *(a2 + 56) = 0;
      *(a2 + 64) = 0;
      *(a2 + 48) = 0;
      *(result + 72) = *(a2 + 72);
      v4 = *(a2 + 80);
      *(result + 96) = *(a2 + 96);
      *(result + 80) = v4;
      *(a2 + 88) = 0;
      *(a2 + 96) = 0;
      *(a2 + 80) = 0;
      *(result + 104) = 1;
    }

    *(result + 112) = 1;
  }

  *(result + 120) = 0;
  return result;
}

void sub_23C3761B0(uint64_t a1, unsigned int a2, __int128 *a3)
{
  v42[2] = *MEMORY[0x277D85DE8];
  sub_23C370554(v21, a3);
  v9 = sub_23C3794CC();
  sub_23C370554(&__p, v21);
  v10 = a2;
  if (v39 != 1)
  {
    *a1 = a2;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    *(a1 + 112) = 0;
    goto LABEL_19;
  }

  v11 = v32;
  if (v32 == 1)
  {
    v12 = __p;
    v42[0] = v31;
    *(v42 + 7) = *(&v31 + 7);
    LOBYTE(a2) = HIBYTE(v31);
    v31 = 0uLL;
    __p = 0;
    v13 = v38;
    if (v38 != 1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v12 = 0;
    v13 = v38;
    if (v38 != 1)
    {
LABEL_4:
      v14 = 0;
      if (!v32)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }
  }

  v14 = v33;
  v41[0] = v34;
  *(v41 + 7) = *(&v34 + 7);
  v6 = HIBYTE(v34);
  v33 = 0;
  v34 = 0uLL;
  v5 = v35;
  v3 = v36;
  v40[0] = v37;
  *(v40 + 7) = *(&v37 + 7);
  v4 = HIBYTE(v37);
  v36 = 0;
  v37 = 0uLL;
  if (!v32)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (SHIBYTE(v31) < 0)
  {
    v19 = v9;
    v20 = v12;
    v15 = v13;
    operator delete(__p);
    v13 = v15;
    v9 = v19;
    v12 = v20;
  }

LABEL_11:
  *a1 = v10;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  *(a1 + 112) = 0;
  *(a1 + 40) = 0;
  if (v11)
  {
    v16 = v42[0];
    *(a1 + 16) = v12;
    *(a1 + 24) = v16;
    *(a1 + 31) = *(v42 + 7);
    *(a1 + 39) = a2;
    v42[0] = 0;
    *(v42 + 7) = 0;
    *(a1 + 40) = 1;
    LOBYTE(a2) = 0;
    v12 = 0;
    *(a1 + 48) = 0;
    *(a1 + 104) = 0;
    if (!v13)
    {
LABEL_13:
      *(a1 + 112) = 1;
      if (!v11)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }
  }

  else
  {
    *(a1 + 48) = 0;
    *(a1 + 104) = 0;
    if (!v13)
    {
      goto LABEL_13;
    }
  }

  v17 = v41[0];
  *(a1 + 48) = v14;
  *(a1 + 56) = v17;
  *(a1 + 63) = *(v41 + 7);
  *(a1 + 71) = v6;
  v41[0] = 0;
  *(v41 + 7) = 0;
  *(a1 + 72) = v5;
  *(a1 + 80) = v3;
  *(a1 + 88) = v40[0];
  *(a1 + 95) = *(v40 + 7);
  *(a1 + 103) = v4;
  v40[0] = 0;
  *(v40 + 7) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = 1;
  if (!v11)
  {
    goto LABEL_19;
  }

LABEL_17:
  if ((a2 & 0x80) != 0)
  {
    operator delete(v12);
  }

LABEL_19:
  if (v29 != 1)
  {
    goto LABEL_26;
  }

  if (v28 != 1)
  {
    goto LABEL_23;
  }

  if (v27 < 0)
  {
    operator delete(v26);
    if ((v25 & 0x80000000) == 0)
    {
LABEL_23:
      if (v23 != 1)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }
  }

  else if ((v25 & 0x80000000) == 0)
  {
    goto LABEL_23;
  }

  operator delete(v24);
  if (v23 != 1)
  {
    goto LABEL_26;
  }

LABEL_24:
  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

LABEL_26:
  v18 = *MEMORY[0x277D85DE8];
}

void sub_23C376450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23C36FF70(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23C376464(uint64_t result, _BYTE *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      sub_23C36C1E0();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    result = sub_23C376518(result, v7);
    v4 = v3[1];
  }

  v3[1] = v4 + 1;
  v8 = *v3;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    *(v8 + 8 * v9) |= v10;
  }

  else
  {
    *(v8 + 8 * v9) &= ~v10;
  }

  return result;
}

uint64_t sub_23C376518(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23C36C1E0();
  }

  return result;
}

uint64_t sub_23C376688(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *(result + 8);
  v4 = *(result + 16);
  v5 = *(result + 24);
  if (*result != v4 || v3 != v5)
  {
    do
    {
      v8 = *v2;
      v9 = a2[1];
      v10 = a2[2];
      if (v9 == v10 << 6)
      {
        if ((v9 + 1) < 0)
        {
          sub_23C36C1E0();
        }

        v11 = v10 << 7;
        if (v11 <= (v9 & 0x3FFFFFFFFFFFFFC0) + 64)
        {
          v11 = (v9 & 0x3FFFFFFFFFFFFFC0) + 64;
        }

        if (v9 <= 0x3FFFFFFFFFFFFFFELL)
        {
          v12 = v11;
        }

        else
        {
          v12 = 0x7FFFFFFFFFFFFFFFLL;
        }

        result = sub_23C376518(a2, v12);
        v9 = a2[1];
      }

      a2[1] = v9 + 1;
      v13 = *a2;
      v14 = v9 >> 6;
      v15 = 1 << v9;
      if (((1 << v3) & v8) != 0)
      {
        v16 = *(v13 + 8 * v14) | v15;
      }

      else
      {
        v16 = *(v13 + 8 * v14) & ~v15;
      }

      *(v13 + 8 * v14) = v16;
      v2 += v3 == 63;
      if (v3 == 63)
      {
        v3 = 0;
      }

      else
      {
        ++v3;
      }
    }

    while (v2 != v4 || v3 != v5);
  }

  return result;
}

void sub_23C37678C(uint64_t a1, unint64_t a2, int a3)
{
  v3 = *(a1 + 8);
  v4 = a2 - v3;
  if (a2 <= v3)
  {
    *(a1 + 8) = a2;
    return;
  }

  v6 = *(a1 + 16);
  v7 = v6 << 6;
  if (v6 << 6 < v4 || v3 > (v6 << 6) - v4)
  {
    __dst = 0;
    v25 = 0;
    v26 = 0;
    if ((a2 & 0x8000000000000000) != 0)
    {
      sub_23C36C1E0();
    }

    v10 = v6 << 7;
    if (v10 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
    {
      v10 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
    }

    if (v7 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    sub_23C376518(&__dst, v11);
    v12 = a1;
    v13 = *a1;
    v14 = *(a1 + 8);
    v15 = v14 + v4;
    v25 = v14 + v4;
    v16 = __dst;
    if (v14 < 1)
    {
      LODWORD(v18) = 0;
      v17 = __dst;
    }

    else
    {
      v18 = v14 >> 6;
      if (v14 >= 0x40)
      {
        memmove(__dst, v13, 8 * v18);
        v12 = a1;
      }

      v17 = &v16[8 * v18];
      if ((v14 & 0x3F) != 0)
      {
        *v17 = *v17 & ~(0xFFFFFFFFFFFFFFFFLL >> -(v14 & 0x3F)) | *(v13 + v18) & (0xFFFFFFFFFFFFFFFFLL >> -(v14 & 0x3F));
        LODWORD(v18) = v14 & 0x3F;
      }

      else
      {
        LODWORD(v18) = 0;
      }

      v13 = *v12;
      v14 = *(v12 + 8);
      v16 = __dst;
      v15 = v25;
    }

    *v12 = v16;
    *(v12 + 8) = v15;
    __dst = v13;
    v25 = v14;
    v19 = *(v12 + 16);
    *(v12 + 16) = v26;
    v26 = v19;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v17 = (*a1 + 8 * (v3 >> 6));
    v18 = *(a1 + 8) & 0x3FLL;
    *(a1 + 8) = a2;
  }

  if (v4)
  {
    if (a3)
    {
      if (v18)
      {
        if ((64 - v18) >= v4)
        {
          v20 = v4;
        }

        else
        {
          v20 = (64 - v18);
        }

        *v17 |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v18 - v20)) & (-1 << v18);
        v17 += 8;
        v4 -= v20;
      }

      v21 = v4 >> 6;
      if (v4 >= 0x40)
      {
        memset(v17, 255, 8 * v21);
      }

      if ((v4 & 0x3F) != 0)
      {
        v22 = *&v17[8 * v21] | (0xFFFFFFFFFFFFFFFFLL >> -(v4 & 0x3F));
LABEL_44:
        *&v17[8 * v21] = v22;
      }
    }

    else
    {
      if (v18)
      {
        if ((64 - v18) >= v4)
        {
          v23 = v4;
        }

        else
        {
          v23 = (64 - v18);
        }

        *v17 &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v18 - v23)) & (-1 << v18));
        v17 += 8;
        v4 -= v23;
      }

      v21 = v4 >> 6;
      if (v4 >= 0x40)
      {
        bzero(v17, 8 * v21);
      }

      if ((v4 & 0x3F) != 0)
      {
        v22 = *&v17[8 * v21] & ~(0xFFFFFFFFFFFFFFFFLL >> -(v4 & 0x3F));
        goto LABEL_44;
      }
    }
  }
}

void sub_23C3769EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23C376A04(void *a1, uint64_t *a2, void *a3)
{
  v3 = HIDWORD(*a2);
  v4 = ((a3[1] - *a3) >> 3) + v3 * *a2;
  if (v4)
  {
    if (!(v4 >> 61))
    {
      operator new();
    }

    sub_23C36C1E0();
  }

  if (HIDWORD(a2[1]) * v3)
  {
    v5 = a2[5];
    v6 = *a2;
    operator new();
  }

  if (*a3 != a3[1])
  {
    operator new();
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_23C376CCC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23C376CEC(uint64_t result)
{
  if (*(result + 96) == 1)
  {
    v1 = *(result + 72);
    if (v1)
    {
      *(result + 80) = v1;
      v2 = result;
      operator delete(v1);
      result = v2;
    }

    if (*(result + 40))
    {
      v3 = result;
      free(*(result + 40));
      result = v3;
    }

    *(result + 40) = 0;
  }

  return result;
}

uint64_t sub_23C376D50(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    if (v3 != v2)
    {
      v5 = *(a1 + 32);
      do
      {
        v7 = *(v5 - 24);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 16) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *(a1 + 24);
    }

    *(a1 + 32) = v2;
    operator delete(v4);
  }

  v8 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v8;
    operator delete(v8);
  }

  return a1;
}

void **sub_23C376DD8(void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    *v1 = 0;
    if (v3)
    {
      v4 = v3[6];
      if (v4)
      {
        v3[7] = v4;
        operator delete(v4);
      }

      v5 = v3[3];
      if (v5)
      {
        v3[4] = v5;
        operator delete(v5);
      }

      MEMORY[0x23EECF470](v3, 0x1010C40DA3B4497);
    }

    MEMORY[0x23EECF470](v1, 0x20C4093837F09);
    return v2;
  }

  return result;
}

void sub_23C376E6C(unsigned int __val@<W2>, uint64_t *a2@<X0>, char **a3@<X1>, uint64_t a4@<X8>)
{
  if (__val <= 0x10 && ((1 << __val) & 0x10101) != 0 || __val == 64 || __val == 110)
  {
    v84 = __val | 0x100;
    if (__val != 16)
    {
      sub_23C373044(a4, *a2, a3, &v84);
      return;
    }

    v5 = a3[1];
    v6 = v5 - *a3;
    if (8 * v6)
    {
      if (((8 * v6) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_23C36C1E0();
    }

    if (v5 != *a3)
    {
      v11 = 0;
      v12 = *a3;
      v13 = v5 - *a3;
      while (1)
      {
        v17 = *v12++;
        v16 = v17;
        v18 = (v11 + 7) >> 6;
        v19 = 1 << (v11 + 7);
        if (v17)
        {
          *(8 * v18) |= v19;
          v20 = (v11 + 6) >> 6;
          v21 = 1 << ((v11 + 6) & 0x3E);
          if ((v16 & 2) == 0)
          {
            goto LABEL_25;
          }

LABEL_18:
          *(8 * v20) |= v21;
          v22 = (v11 + 5) >> 6;
          v23 = 1 << ((v11 + 5) & 0x3D);
          if ((v16 & 4) != 0)
          {
            goto LABEL_19;
          }

LABEL_26:
          *(8 * v22) &= ~v23;
          v24 = (v11 + 4) >> 6;
          v25 = 1 << ((v11 + 4) & 0x3C);
          if ((v16 & 8) == 0)
          {
            goto LABEL_27;
          }

LABEL_20:
          *(8 * v24) |= v25;
          v26 = (v11 + 3) >> 6;
          v27 = 1 << ((v11 + 3) & 0x3B);
          if ((v16 & 0x10) != 0)
          {
            goto LABEL_21;
          }

LABEL_28:
          *(8 * v26) &= ~v27;
          v28 = (v11 + 2) >> 6;
          v29 = 1 << ((v11 + 2) & 0x3A);
          if ((v16 & 0x20) == 0)
          {
            goto LABEL_29;
          }

LABEL_22:
          *(8 * v28) |= v29;
          v30 = (v11 + 1) >> 6;
          v31 = 1 << ((v11 + 1) & 0x39);
          if ((v16 & 0x40) == 0)
          {
            goto LABEL_14;
          }

LABEL_30:
          *(8 * v30) |= v31;
          v14 = v11 >> 6;
          v15 = 1 << (v11 & 0x38);
          if (v16 < 0)
          {
            goto LABEL_31;
          }

LABEL_15:
          *(8 * v14) &= ~v15;
          v11 += 8;
          if (!--v13)
          {
            break;
          }
        }

        else
        {
          *(8 * v18) &= ~v19;
          v20 = (v11 + 6) >> 6;
          v21 = 1 << ((v11 + 6) & 0x3E);
          if ((v16 & 2) != 0)
          {
            goto LABEL_18;
          }

LABEL_25:
          *(8 * v20) &= ~v21;
          v22 = (v11 + 5) >> 6;
          v23 = 1 << ((v11 + 5) & 0x3D);
          if ((v16 & 4) == 0)
          {
            goto LABEL_26;
          }

LABEL_19:
          *(8 * v22) |= v23;
          v24 = (v11 + 4) >> 6;
          v25 = 1 << ((v11 + 4) & 0x3C);
          if ((v16 & 8) != 0)
          {
            goto LABEL_20;
          }

LABEL_27:
          *(8 * v24) &= ~v25;
          v26 = (v11 + 3) >> 6;
          v27 = 1 << ((v11 + 3) & 0x3B);
          if ((v16 & 0x10) == 0)
          {
            goto LABEL_28;
          }

LABEL_21:
          *(8 * v26) |= v27;
          v28 = (v11 + 2) >> 6;
          v29 = 1 << ((v11 + 2) & 0x3A);
          if ((v16 & 0x20) != 0)
          {
            goto LABEL_22;
          }

LABEL_29:
          *(8 * v28) &= ~v29;
          v30 = (v11 + 1) >> 6;
          v31 = 1 << ((v11 + 1) & 0x39);
          if ((v16 & 0x40) != 0)
          {
            goto LABEL_30;
          }

LABEL_14:
          *(8 * v30) &= ~v31;
          v14 = v11 >> 6;
          v15 = 1 << (v11 & 0x38);
          if ((v16 & 0x80) == 0)
          {
            goto LABEL_15;
          }

LABEL_31:
          *(8 * v14) |= v15;
          v11 += 8;
          if (!--v13)
          {
            break;
          }
        }
      }
    }

    v32 = -3;
    if ((MEMORY[0x1FFFFFFFFFFFFFF8] & 0x2000000000000000) == 0)
    {
      v32 = -2;
      if ((MEMORY[0x1FFFFFFFFFFFFFF8] & 0x4000000000000000) == 0)
      {
        v73 = 0uLL;
        *&__p = 0;
        operator new();
      }
    }

    v86 = 0;
    std::to_string(&v87, v32);
    v88[0] = &v85;
    v88[1] = &v87;
    v88[2] = &v85;
    v89 = &v87;
    v90 = &v87;
    v91 = v88;
    (off_284F01688[0])(&v91, &v85);
    if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v87.__r_.__value_.__l.__data_);
    }

    if (v86 == -1)
    {
      sub_23C370930();
    }

    v88[0] = &v87;
    (off_284F016B8[v86])(&v49, v88, &v85);
    if (v86 != -1)
    {
      (off_284F016A0[v86])(v88, &v85);
    }

    v33 = std::string::insert(&v49, 0, "The LSB padding bit at index ", 0x1DuLL);
    v34 = *&v33->__r_.__value_.__l.__data_;
    v51 = v33->__r_.__value_.__r.__words[2];
    *v50 = v34;
    v33->__r_.__value_.__l.__size_ = 0;
    v33->__r_.__value_.__r.__words[2] = 0;
    v33->__r_.__value_.__r.__words[0] = 0;
    v35 = SHIBYTE(v51);
    if ((SHIBYTE(v51) & 0x8000000000000000) != 0)
    {
      v35 = v50[1];
      v36 = (v51 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v36 - v50[1] < 0xD)
      {
        if ((0x7FFFFFFFFFFFFFF7 - (v51 & 0x7FFFFFFFFFFFFFFFLL)) < v50[1] - v36 + 13)
        {
          sub_23C36FA14();
        }

LABEL_44:
        operator new();
      }

      v37 = v50[0];
    }

    else
    {
      if ((SHIBYTE(v51) - 10) < 0xD)
      {
        goto LABEL_44;
      }

      v37 = v50;
    }

    qmemcpy(v35 + v37, " is not zero!", 13);
    v38 = v35 + 13;
    if (SHIBYTE(v51) < 0)
    {
      v50[1] = v35 + 13;
    }

    else
    {
      HIBYTE(v51) = v38 & 0x7F;
    }

    v38[v37] = 0;
    v40 = v50[0];
    v39 = v50[1];
    v52[0] = v51;
    *(v52 + 3) = *(&v51 + 3);
    v41 = SHIBYTE(v51);
    v50[1] = 0;
    v51 = 0;
    v50[0] = 0;
    if (v41 < 0)
    {
      sub_23C36FB58(&v53, v40, v39);
    }

    else
    {
      *&v53 = v40;
      *(&v53 + 1) = v39;
      *v54 = v52[0];
      *&v54[3] = *(v52 + 3);
      v55 = v41;
    }

    v56 = 1;
    LOBYTE(v57) = 0;
    v61 = 0;
    v62 = 1;
    sub_23C370624(0x2Du, &v53, &v73);
    *a4 = v73;
    *(a4 + 16) = 0;
    *(a4 + 112) = 0;
    if (v83 != 1)
    {
      *(a4 + 120) = 0;
      goto LABEL_63;
    }

    *(a4 + 40) = 0;
    v42 = v76;
    if (v76 == 1)
    {
      *(a4 + 16) = __p;
      *(a4 + 32) = v75;
      v75 = 0;
      __p = 0uLL;
      *(a4 + 40) = 1;
      *(a4 + 48) = 0;
      v43 = a4 + 48;
      *(a4 + 104) = 0;
      if ((v82 & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else
    {
      *(a4 + 48) = 0;
      v43 = a4 + 48;
      *(a4 + 104) = 0;
      if ((v82 & 1) == 0)
      {
LABEL_56:
        *(a4 + 112) = 1;
        *(a4 + 120) = 0;
        if (!v42)
        {
          goto LABEL_63;
        }

        goto LABEL_61;
      }
    }

    v44 = v79;
    *(v43 + 16) = v78;
    *v43 = v77;
    v77 = 0uLL;
    *(a4 + 72) = v44;
    *(a4 + 80) = v80;
    *(a4 + 96) = v81;
    v78 = 0;
    v80 = 0uLL;
    v81 = 0;
    *(a4 + 104) = 1;
    *(a4 + 112) = 1;
    *(a4 + 120) = 0;
    if (!v42)
    {
      goto LABEL_63;
    }

LABEL_61:
    if (SHIBYTE(v75) < 0)
    {
      operator delete(__p);
    }

LABEL_63:
    if (v62 == 1)
    {
      if (v61 == 1)
      {
        if (v60 < 0)
        {
          operator delete(v59);
        }

        if (v58 < 0)
        {
          operator delete(v57);
        }
      }

      if (v56 == 1 && v55 < 0)
      {
        operator delete(v53);
      }
    }

    if (v41 < 0)
    {
      operator delete(v40);
      if ((SHIBYTE(v51) & 0x80000000) == 0)
      {
LABEL_74:
        if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_78;
        }

        goto LABEL_79;
      }
    }

    else if ((SHIBYTE(v51) & 0x80000000) == 0)
    {
      goto LABEL_74;
    }

    operator delete(v50[0]);
    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_78:
      operator delete(v49.__r_.__value_.__l.__data_);
    }

LABEL_79:
    v45 = 0;
LABEL_80:
    operator delete(v45);
    return;
  }

  v84 = 0;
  LODWORD(v89) = 0;
  std::to_string(&v85, __val);
  v87 = v85;
  v7 = std::string::insert(&v87, 0, "Got unsupported version id ", 0x1BuLL);
  v9 = v7->__r_.__value_.__r.__words[0];
  size = v7->__r_.__value_.__l.__size_;
  LODWORD(v50[0]) = v7->__r_.__value_.__r.__words[2];
  *(v50 + 3) = *(&v7->__r_.__value_.__r.__words[2] + 3);
  v10 = SHIBYTE(v7->__r_.__value_.__r.__words[2]);
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (v10 < 0)
  {
    sub_23C36FB58(&v63, v9, size);
  }

  else
  {
    *&v63 = v9;
    *(&v63 + 1) = size;
    *v64 = v50[0];
    *&v64[3] = *(v50 + 3);
    v65 = v10;
  }

  v66 = 1;
  LOBYTE(v67) = 0;
  v71 = 0;
  v72 = 1;
  sub_23C370624(0x2Du, &v63, &v73);
  *a4 = v73;
  *(a4 + 16) = 0;
  *(a4 + 112) = 0;
  if (v83 != 1)
  {
    *(a4 + 120) = 0;
    goto LABEL_93;
  }

  *(a4 + 40) = 0;
  v46 = v76;
  if (v76 == 1)
  {
    *(a4 + 16) = __p;
    *(a4 + 32) = v75;
    v75 = 0;
    __p = 0uLL;
    *(a4 + 40) = 1;
    *(a4 + 48) = 0;
    v47 = a4 + 48;
    *(a4 + 104) = 0;
    if ((v82 & 1) == 0)
    {
      goto LABEL_86;
    }
  }

  else
  {
    *(a4 + 48) = 0;
    v47 = a4 + 48;
    *(a4 + 104) = 0;
    if ((v82 & 1) == 0)
    {
LABEL_86:
      *(a4 + 112) = 1;
      *(a4 + 120) = 0;
      if (!v46)
      {
        goto LABEL_93;
      }

      goto LABEL_91;
    }
  }

  v48 = v79;
  *(v47 + 16) = v78;
  *v47 = v77;
  v77 = 0uLL;
  *(a4 + 72) = v48;
  *(a4 + 80) = v80;
  *(a4 + 96) = v81;
  v78 = 0;
  v80 = 0uLL;
  v81 = 0;
  *(a4 + 104) = 1;
  *(a4 + 112) = 1;
  *(a4 + 120) = 0;
  if (!v46)
  {
    goto LABEL_93;
  }

LABEL_91:
  if (SHIBYTE(v75) < 0)
  {
    operator delete(__p);
  }

LABEL_93:
  if (v72 == 1)
  {
    if (v71 == 1)
    {
      if (v70 < 0)
      {
        operator delete(v69);
      }

      if (v68 < 0)
      {
        operator delete(v67);
      }
    }

    if (v66 == 1 && v65 < 0)
    {
      operator delete(v63);
    }
  }

  if (v10 < 0)
  {
    operator delete(v9);
  }

  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    v45 = v87.__r_.__value_.__r.__words[0];
    goto LABEL_80;
  }
}

void sub_23C377B00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p)
{
  if (__p)
  {
    operator delete(__p);
    if (v49)
    {
      goto LABEL_6;
    }
  }

  else if (v49)
  {
LABEL_6:
    operator delete(v49);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23C377C94(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23C36FA14();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v9) = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
    *(&__dst + v5) = 0;
    if ((SHIBYTE(v9) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v6 = __dst;
    sub_23C36FB58(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = 1;
    *(a1 + 32) = 0;
    *(a1 + 88) = 0;
    operator delete(v6);
    return a1;
  }

  LOBYTE(__dst) = 0;
  if (SHIBYTE(v9) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v9;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 88) = 0;
  return a1;
}

void sub_23C377DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23C36C1E0();
  }
}

void sub_23C377ED0(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_23C377EE8(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = *(a2 + 8);
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23C36C1E0();
  }

  return result;
}

void sub_23C377FFC(void *a1, unint64_t a2, int a3)
{
  v3 = a1[1];
  v4 = v3 + a2;
  a1[1] = v3 + a2;
  if (v3)
  {
    v5 = v4 - 1;
    if (((v4 - 1) ^ (v3 - 1)) < 0x40)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v5 = v4 - 1;
  }

  v6 = v5 >> 6;
  if (v4 >= 0x41)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  *(*a1 + 8 * v7) = 0;
LABEL_9:
  if (!a2)
  {
    return;
  }

  v8 = (*a1 + 8 * (v3 >> 6));
  v9 = v3 & 0x3F;
  if (a3)
  {
    if ((v3 & 0x3F) != 0)
    {
      v10 = (64 - v9);
      if (v10 >= a2)
      {
        v11 = a2;
      }

      else
      {
        v11 = v10;
      }

      *v8++ |= (0xFFFFFFFFFFFFFFFFLL >> (v10 - v11)) & (-1 << v3);
      a2 -= v11;
    }

    v12 = a2 >> 6;
    if (a2 >= 0x40)
    {
      v13 = a2;
      memset(v8, 255, 8 * v12);
      LOBYTE(a2) = v13;
    }

    if ((a2 & 0x3F) != 0)
    {
      v14 = v8[v12] | (0xFFFFFFFFFFFFFFFFLL >> -(a2 & 0x3F));
LABEL_29:
      v8[v12] = v14;
    }
  }

  else
  {
    if ((v3 & 0x3F) != 0)
    {
      v15 = (64 - v9);
      if (v15 >= a2)
      {
        v16 = a2;
      }

      else
      {
        v16 = v15;
      }

      *v8++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (v15 - v16)) & (-1 << v3));
      a2 -= v16;
    }

    v12 = a2 >> 6;
    if (a2 >= 0x40)
    {
      v17 = a2;
      bzero(v8, 8 * v12);
      LOBYTE(a2) = v17;
    }

    if ((a2 & 0x3F) != 0)
    {
      v14 = v8[v12] & ~(0xFFFFFFFFFFFFFFFFLL >> -(a2 & 0x3F));
      goto LABEL_29;
    }
  }
}

size_t sub_23C378170(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_284F016A0[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23C36FA14();
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

void sub_23C378264(uint64_t *a1, uint64_t a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v19 + 7) = *(a2 + 15);
  v5 = *a2;
  v19[0] = *(a2 + 8);
  v4 = v19[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v14 = v5;
  *v15 = v4;
  *&v15[7] = *(v19 + 7);
  v16 = v6;
  memset(v19, 0, 15);
  v7 = *(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23C36FA14();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v18 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_284F016A0[v10])(&v13, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_23C370B40(v3, &v14, 2uLL);
  *(v3 + 24) = 2;
  if (v18 < 0)
  {
    operator delete(__p);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
LABEL_11:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v14);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_23C378428(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_23C36BF7C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23C378480(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_23C36C1E0();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_23C36C8AC();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23C36FA14();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23C36FA14();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_23C3786C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23C370D5C(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_23C3786EC(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_23C378AEC(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    v5 = strlen(*(*a1 + 32));
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_23C36FA14();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v4[23] = v5;
    if (v5)
    {
      memmove(v4, v3, v5);
    }

    v4[v6] = 0;
    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

size_t sub_23C3787EC(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_284F016A0[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23C36FA14();
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

void sub_23C3788E0(uint64_t *a1, uint64_t a2)
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
  v6 = a1[1];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23C36FA14();
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
    (off_284F016A0[v9])(&v12, v2);
  }

LABEL_9:
  *(v2 + 24) = -1;
  sub_23C370B40(v2, &v13, 2uLL);
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

void sub_23C378AA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_23C36BF7C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_23C378AEC(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_23C36C1E0();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_23C36C8AC();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23C36FA14();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
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

void sub_23C378C88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23C370D5C(va);
  _Unwind_Resume(a1);
}

size_t sub_23C378C9C(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_284F016A0[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23C36FA14();
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

void sub_23C378D90(uint64_t *a1, uint64_t a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v19 + 7) = *(a2 + 15);
  v5 = *a2;
  v19[0] = *(a2 + 8);
  v4 = v19[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v14 = v5;
  *v15 = v4;
  *&v15[7] = *(v19 + 7);
  v16 = v6;
  memset(v19, 0, 15);
  v7 = *(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23C36FA14();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v18 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_284F016A0[v10])(&v13, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_23C370B40(v3, &v14, 2uLL);
  *(v3 + 24) = 2;
  if (v18 < 0)
  {
    operator delete(__p);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
LABEL_11:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v14);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_23C378F54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_23C36BF7C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23C378FAC(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_23C36C1E0();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_23C36C8AC();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23C36FA14();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_23C36FA14();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_23C3791EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23C370D5C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23C379208@<X0>(uint64_t *a1@<X1>, unint64_t a2@<X2>, uint64_t *a3@<X3>, int a4@<W4>, uint64_t *a5@<X5>, uint64_t **a6@<X8>)
{
  v9 = a2;
  v10 = a1;
  LODWORD(v11) = a2;
  if (a1 != a3 || a2 != a4)
  {
    do
    {
      v12 = *v10;
      v13 = a5[1];
      v14 = a5[2];
      if (v13 == v14 << 6)
      {
        if ((v13 + 1) < 0)
        {
          sub_23C36C1E0();
        }

        v15 = v14 << 7;
        if (v15 <= (v13 & 0x3FFFFFFFFFFFFFC0) + 64)
        {
          v15 = (v13 & 0x3FFFFFFFFFFFFFC0) + 64;
        }

        if (v13 <= 0x3FFFFFFFFFFFFFFELL)
        {
          v16 = v15;
        }

        else
        {
          v16 = 0x7FFFFFFFFFFFFFFFLL;
        }

        result = sub_23C376518(a5, v16);
        v13 = a5[1];
      }

      a5[1] = v13 + 1;
      v18 = *a5;
      v19 = v13 >> 6;
      v20 = 1 << v13;
      if ((v12 & (1 << v9)) != 0)
      {
        v21 = *(v18 + 8 * v19) | v20;
      }

      else
      {
        v21 = *(v18 + 8 * v19) & ~v20;
      }

      *(v18 + 8 * v19) = v21;
      v10 += v11 == 63;
      if (v11 == 63)
      {
        v11 = 0;
      }

      else
      {
        v11 = (v9 + 1);
      }

      v9 = v11 | v9 & 0xFFFFFFFF00000000;
    }

    while (v10 != a3 || v11 != a4);
  }

  *a6 = v10;
  a6[1] = v9;
  a6[2] = a5;
  return result;
}

uint64_t sub_23C379338@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = *(result + 8);
  v6 = *(a2 + 8) + 8 * (*a2 - *result);
  v7 = v6 - v5;
  if (*a3 == 1)
  {
    if (!v5)
    {
      goto LABEL_9;
    }

    v8 = (64 - v5);
    if (v8 >= v7)
    {
      v9 = v6 - v5;
    }

    else
    {
      v9 = (64 - v5);
    }

    v10 = (0xFFFFFFFFFFFFFFFFLL >> (64 - v5 - v9)) & (-1 << v5) & *v4;
    if (!v10)
    {
      if (v7 > v8)
      {
        v7 -= v9;
        ++v4;
LABEL_9:
        if (v7 >= 0x40)
        {
          do
          {
            v11 = *v4;
            if (*v4)
            {
              goto LABEL_28;
            }

            ++v4;
            v7 -= 64;
          }

          while (v7 > 0x3F);
        }

        if (!v7 || (v11 = *v4 & (0xFFFFFFFFFFFFFFFFLL >> -v7)) == 0)
        {
LABEL_14:
          *a4 = v4;
          *(a4 + 8) = v7;
          return result;
        }

LABEL_28:
        *a4 = v4;
        *(a4 + 8) = __clz(__rbit64(v11));
        return result;
      }

      goto LABEL_29;
    }

LABEL_20:
    *a4 = v4;
    *(a4 + 8) = __clz(__rbit64(v10));
    return result;
  }

  if (v5)
  {
    v12 = (64 - v5);
    if (v12 >= v7)
    {
      v13 = v6 - v5;
    }

    else
    {
      v13 = (64 - v5);
    }

    v10 = (0xFFFFFFFFFFFFFFFFLL >> (64 - v5 - v13)) & (-1 << v5) & ~*v4;
    if (v10)
    {
      goto LABEL_20;
    }

    if (v7 <= v12)
    {
LABEL_29:
      *a4 = &v4[v6 >> 6];
      *(a4 + 8) = v6 & 0x3F;
      return result;
    }

    v7 -= v13;
    ++v4;
  }

  if (v7 < 0x40)
  {
LABEL_26:
    if (!v7)
    {
      goto LABEL_14;
    }

    v11 = (0xFFFFFFFFFFFFFFFFLL >> -v7) & ~*v4;
    if (!v11)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

  while (*v4 == -1)
  {
    ++v4;
    v7 -= 64;
    if (v7 <= 0x3F)
    {
      goto LABEL_26;
    }
  }

  v14 = __clz(__rbit64(~*v4));
  *a4 = v4;
  *(a4 + 8) = v14;
  return result;
}

void (***sub_23C3794CC())(std::error_category *__hidden this)
{
  if (atomic_load_explicit(&qword_27E1F3E50, memory_order_acquire))
  {
    return &off_281A0B1E0;
  }

  if (__cxa_guard_acquire(&qword_27E1F3E50))
  {
    __cxa_atexit(std::error_category::~error_category, &off_281A0B1E0, &dword_23C368000);
    __cxa_guard_release(&qword_27E1F3E50);
  }

  return &off_281A0B1E0;
}

void sub_23C37954C(int a1@<W1>, char *a2@<X8>)
{
  if (a1 > 4)
  {
    if (a1 <= 6)
    {
      if (a1 != 5)
      {
        operator new();
      }

      operator new();
    }

    switch(a1)
    {
      case 7:
        a2[23] = 15;
        strcpy(a2, "Not enough arcs");
        return;
      case 8:
        a2[23] = 22;
        strcpy(a2, "Bad redundant arc bits");
        return;
      case 9:
        a2[23] = 14;
        strcpy(a2, "Bad magic bits");
        return;
    }
  }

  else
  {
    if (a1 > 1)
    {
      if (a1 != 2)
      {
        if (a1 != 3)
        {
          operator new();
        }

        operator new();
      }

      operator new();
    }

    if (!a1)
    {
      a2[23] = 8;
      strcpy(a2, "No error");
      return;
    }

    if (a1 == 1)
    {
      operator new();
    }
  }

  a2[23] = 13;
  strcpy(a2, "Unknown error");
}

void sub_23C37982C(std::error_category *a1)
{
  std::error_category::~error_category(a1);

  JUMPOUT(0x23EECF470);
}

_BYTE **sub_23C379870@<X0>(_BYTE **result@<X0>, void *a2@<X8>)
{
  if (**result <= 0xFu)
  {
    if (**result)
    {
      operator new();
    }
  }

  else if (**result == 110)
  {
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

void sub_23C379A20(uint64_t a1)
{
  v1 = 0;
  while (((*(a1 + ((v1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v1) & 1) != 0)
  {
    if (++v1 == 17)
    {
      goto LABEL_6;
    }
  }

  if (v1 == 16)
  {
    operator new();
  }

LABEL_6:
  operator new();
}

void sub_23C37A284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void **a24, uint64_t a25, char a26)
{
  sub_23C38003C(&a24);
  v27 = *a10;
  if (*a10)
  {
    *(a10 + 8) = v27;
    operator delete(v27);
  }

  sub_23C380134(&a21);
  if (__p)
  {
    operator delete(__p);
    if (!a11)
    {
LABEL_5:
      _Unwind_Resume(a1);
    }
  }

  else if (!a11)
  {
    goto LABEL_5;
  }

  operator delete(a11);
  _Unwind_Resume(a1);
}

void sub_23C37A384(unsigned __int8 *a1@<X2>, uint64_t a2@<X8>)
{
  v74 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (v3 == 8)
  {
    goto LABEL_4;
  }

  if (v3 == 110)
  {
    __dst = 0;
    v4 = 0;
    goto LABEL_11;
  }

  if (v3 == 16)
  {
LABEL_4:
    __dst = 6;
    if (v3 == 8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    __dst = 8;
  }

  if (v3 == 16)
  {
LABEL_9:
    v4 = 9;
    goto LABEL_11;
  }

  v4 = 5;
LABEL_11:
  v5 = v4 | (2 * (v3 != 110));
  if (v5)
  {
    v6 = __dst == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = __dst | (v5 << 32);
  }

  if (v7 <= 0x100000000)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  if (v7)
  {
    v9 = HIDWORD(v7) == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v7;
  }

  v58 = v10;
  v11 = HIDWORD(v10);
  v60 = v8;
  v12 = 8 * v8;
  v13 = v12 - 1;
  v14 = v11 * v12;
  v6 = (v12 & (v12 - 1)) == 0;
  v15 = 7;
  if (v6)
  {
    v15 = v13;
  }

  v16 = v15 | (v15 >> 1) | ((v15 | (v15 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  v20 = v14 & 0x7FFFFFFF8;
  if ((v14 & 0x7FFFFFFF8) != 0)
  {
    memptr[0] = 0;
    v21 = malloc_type_posix_memalign(memptr, v19, v14 & 0x7FFFFFFF8, 0x63222AC6uLL);
    if (v21)
    {
      sub_23C3A2EE4(v21);
    }

    v22 = memptr[0];
    v3 = *a1;
  }

  else
  {
    v22 = 0;
  }

  v55 = v11;
  size = v20;
  alignment = v19;
  __src = v22;
  if (v3 > 15)
  {
    if (v3 != 16)
    {
      if (v3 == 110)
      {
        *a2 = 0;
        *(a2 + 96) = 0;
        goto LABEL_97;
      }

      if (v3 != 64)
      {
        goto LABEL_67;
      }

LABEL_43:
      v23 = v22;
      if (v60 * HIDWORD(v7))
      {
        v24 = &v22[8 * v60 * HIDWORD(v7)];
        v25 = 0;
        v26 = 1;
        if (v7)
        {
          v27 = 1;
          do
          {
            *v23 = v27;
            v28 = v25 + 1;
            v29 = v25 + 1 == v7;
            if (v25 + 1 == v7)
            {
              v25 = 0;
            }

            else
            {
              ++v25;
            }

            if (v28 == v7)
            {
              v30 = 1 - v7;
            }

            else
            {
              v30 = 0;
            }

            if (v29)
            {
              v31 = v60;
            }

            else
            {
              v31 = v7 != 0;
            }

            v23 += v31 + v30;
            ++v27;
          }

          while (v23 != v24);
        }

        else
        {
          v32 = __src;
          do
          {
            *v32 = v26;
            v33 = v25 + 1;
            if (v25 + 1 == v7)
            {
              v25 = 0;
            }

            else
            {
              ++v25;
            }

            if (v33 == v7)
            {
              v34 = v60;
            }

            else
            {
              v34 = v7 != 0;
            }

            v32 += v34;
            ++v26;
          }

          while (v32 != v24);
        }
      }

      operator new();
    }

    goto LABEL_42;
  }

  if (!v3)
  {
    goto LABEL_43;
  }

  if (v3 == 8)
  {
LABEL_42:
    v73 = 0u;
    v72 = 0u;
    v71 = 0u;
    v70 = 0u;
    v69 = 0u;
    v67 = 0u;
    v68 = 0u;
    *memptr = 0u;
    operator new();
  }

LABEL_67:
  if (v20)
  {
    memptr[0] = 0;
    v35 = malloc_type_posix_memalign(memptr, v19, v20, 0x63222AC6uLL);
    v36 = v9;
    v37 = v7 != 0;
    if (v35)
    {
      sub_23C3A2EE4(v35);
    }

    __dsta = memptr[0];
  }

  else
  {
    __dsta = 0;
    v37 = v7 != 0;
    v36 = v9;
  }

  v38 = v37 | (v60 << 32);
  v39 = 8 * v38;
  if (v58)
  {
    v40 = v36;
  }

  else
  {
    v40 = 1;
  }

  if (v40)
  {
    v41 = 0;
  }

  else
  {
    v41 = v58;
  }

  v42 = HIDWORD(v41);
  v43 = v39 >> 35;
  v44 = HIDWORD(v41) * ((v38 >> 29) >> 3);
  if (v44 == -1 && sub_23C3A46B0("/Library/Caches/com.apple.xbs/Sources/ACCBaker/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 0x3D7u, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75, sub_23C3A4EB4))
  {
    goto LABEL_102;
  }

  if (!v42 || !v41)
  {
    goto LABEL_96;
  }

  v45 = v40 ? 0 : v55;
  if (v45 * v43 == -1 && sub_23C3A46B0("/Library/Caches/com.apple.xbs/Sources/ACCBaker/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 0x3D7u, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75, sub_23C3A4EB4))
  {
LABEL_102:
    abort();
  }

  if (v7)
  {
    if (v43 != v41)
    {
      v49 = 8 * v41;
      if (v42 == 1)
      {
        v50 = __dsta;
        v51 = __src;
      }

      else
      {
        v52 = v42 - 1;
        v53 = 8 * v43;
        v50 = __dsta;
        v51 = __src;
        do
        {
          memmove(v50, v51, v49);
          v51 += v53;
          v50 += v53;
          --v52;
        }

        while (v52);
      }

      v47 = v50;
      v48 = v51;
      v46 = v49;
      goto LABEL_95;
    }

    if (v44)
    {
      v46 = 8 * HIDWORD(v41) * ((v38 >> 29) >> 3);
      v47 = __dsta;
      v48 = __src;
LABEL_95:
      memmove(v47, v48, v46);
    }
  }

LABEL_96:
  *a2 = v7;
  *(a2 + 8) = v38;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 25) = v64;
  *(a2 + 27) = v65;
  *(a2 + 32) = size;
  *(a2 + 40) = __dsta;
  *(a2 + 48) = alignment;
  *(a2 + 56) = v58;
  *(a2 + 64) = v39;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
LABEL_97:
  if (__src)
  {
    free(__src);
  }

  v54 = *MEMORY[0x277D85DE8];
}

void sub_23C37E3F8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_23C36BF7C(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_23C37E750(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = *(a1 + 80);
  if (v3 != v2)
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(a1 + 32);
    if (v4 != a1 + 8)
    {
      goto LABEL_5;
    }

LABEL_9:
    (*(*v4 + 32))(v4);
    return a1;
  }

  (*(*v3 + 32))(v3);
  v4 = *(a1 + 32);
  if (v4 == a1 + 8)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  return a1;
}

uint64_t sub_23C37E84C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
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

uint64_t sub_23C37E88C(uint64_t a1)
{
  v2 = a1 + 8;
  v3 = *(a1 + 32);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

double sub_23C37E91C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 8);
  v7 = *(a2 + 8);
  v22 = 0uLL;
  v21 = 0;
  sub_23C376518(&v21, v7 + v6);
  sub_23C379208(*a1, 0, (*a1 + 8 * (*(a1 + 8) >> 6)), *(a1 + 8) & 0x3F, &v21, &v23);
  v9 = *a2;
  v8 = *(a2 + 8);
  v10 = v8 & 0x3F;
  if (v8 > 0x3F || (v8 & 0x3F) != 0)
  {
    v11 = 0;
    v12 = &v9[v8 >> 6];
    do
    {
      v13 = *v9;
      v14 = v22;
      if (v22 == *(&v22 + 1) << 6)
      {
        if (v22 + 1 < 0)
        {
          sub_23C36C1E0();
        }

        v15 = *(&v22 + 1) << 7;
        if (*(&v22 + 1) << 7 <= (v22 & 0x3FFFFFFFFFFFFFC0) + 64)
        {
          v15 = (v22 & 0x3FFFFFFFFFFFFFC0) + 64;
        }

        if (v22 <= 0x3FFFFFFFFFFFFFFELL)
        {
          v16 = v15;
        }

        else
        {
          v16 = 0x7FFFFFFFFFFFFFFFLL;
        }

        sub_23C376518(&v21, v16);
        v14 = v22;
      }

      *&v22 = v14 + 1;
      v17 = v14 >> 6;
      v18 = 1 << v14;
      if (((1 << v11) & v13) != 0)
      {
        v19 = *(v21 + 8 * v17) | v18;
      }

      else
      {
        v19 = *(v21 + 8 * v17) & ~v18;
      }

      *(v21 + 8 * v17) = v19;
      v9 += v11 == 63;
      if (v11 == 63)
      {
        v11 = 0;
      }

      else
      {
        ++v11;
      }
    }

    while (v9 != v12 || v11 != v10);
  }

  *a3 = v21;
  result = *&v22;
  *(a3 + 8) = v22;
  return result;
}

void sub_23C37EA88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23C37EAA8(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE **a3@<X2>, void *a4@<X8>)
{
  v8 = *(a1 + 8);
  v9 = *(a2 + 8);
  v51 = 0;
  v52 = 0;
  v50 = 0;
  sub_23C376518(&v50, v9 + v8);
  sub_23C379208(*a1, 0, (*a1 + 8 * (*(a1 + 8) >> 6)), *(a1 + 8) & 0x3F, &v50, &__p);
  sub_23C379208(*a2, 0, (*a2 + 8 * (*(a2 + 8) >> 6)), *(a2 + 8) & 0x3F, &v50, &__p);
  v10 = v51;
  v11 = v51 & 7;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  __p = v50;
  LODWORD(v54) = 0;
  v46 = v50;
  LODWORD(v51) = v51 & 7;
  sub_23C377DC4(&v47, &__p, &v50, v11);
  if (v11)
  {
    v12 = v48;
    if (v48 == v49 << 6)
    {
      if ((v48 + 1) < 0)
      {
        goto LABEL_123;
      }

      if (v48 > 0x3FFFFFFFFFFFFFFELL)
      {
        v13 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else if (v49 << 7 <= (v48 & 0x3FFFFFFFFFFFFFC0) + 64)
      {
        v13 = (v48 & 0x3FFFFFFFFFFFFFC0) + 64;
      }

      else
      {
        v13 = v49 << 7;
      }

      sub_23C376518(&v47, v13);
      v12 = v48;
    }

    v48 = v12 + 1;
    *(v47 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v12);
    if (v11 != 7)
    {
      v14 = v48;
      if (v48 == v49 << 6)
      {
        if ((v48 + 1) < 0)
        {
          goto LABEL_123;
        }

        if (v48 > 0x3FFFFFFFFFFFFFFELL)
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else if (v49 << 7 <= (v48 & 0x3FFFFFFFFFFFFFC0) + 64)
        {
          v15 = (v48 & 0x3FFFFFFFFFFFFFC0) + 64;
        }

        else
        {
          v15 = v49 << 7;
        }

        sub_23C376518(&v47, v15);
        v14 = v48;
      }

      v48 = v14 + 1;
      *(v47 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v14);
      if (v11 != 6)
      {
        v16 = v48;
        if (v48 == v49 << 6)
        {
          if ((v48 + 1) < 0)
          {
            goto LABEL_123;
          }

          if (v48 > 0x3FFFFFFFFFFFFFFELL)
          {
            v17 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else if (v49 << 7 <= (v48 & 0x3FFFFFFFFFFFFFC0) + 64)
          {
            v17 = (v48 & 0x3FFFFFFFFFFFFFC0) + 64;
          }

          else
          {
            v17 = v49 << 7;
          }

          sub_23C376518(&v47, v17);
          v16 = v48;
        }

        v48 = v16 + 1;
        *(v47 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v16);
        if (v11 != 5)
        {
          v18 = v48;
          if (v48 == v49 << 6)
          {
            if ((v48 + 1) < 0)
            {
              goto LABEL_123;
            }

            if (v48 > 0x3FFFFFFFFFFFFFFELL)
            {
              v19 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else if (v49 << 7 <= (v48 & 0x3FFFFFFFFFFFFFC0) + 64)
            {
              v19 = (v48 & 0x3FFFFFFFFFFFFFC0) + 64;
            }

            else
            {
              v19 = v49 << 7;
            }

            sub_23C376518(&v47, v19);
            v18 = v48;
          }

          v48 = v18 + 1;
          *(v47 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v18);
          if (v11 != 4)
          {
            v20 = v48;
            if (v48 == v49 << 6)
            {
              if ((v48 + 1) < 0)
              {
                goto LABEL_123;
              }

              if (v48 > 0x3FFFFFFFFFFFFFFELL)
              {
                v21 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else if (v49 << 7 <= (v48 & 0x3FFFFFFFFFFFFFC0) + 64)
              {
                v21 = (v48 & 0x3FFFFFFFFFFFFFC0) + 64;
              }

              else
              {
                v21 = v49 << 7;
              }

              sub_23C376518(&v47, v21);
              v20 = v48;
            }

            v48 = v20 + 1;
            *(v47 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v20);
            if (v11 != 3)
            {
              v22 = v48;
              if (v48 == v49 << 6)
              {
                if ((v48 + 1) < 0)
                {
                  goto LABEL_123;
                }

                if (v48 > 0x3FFFFFFFFFFFFFFELL)
                {
                  v23 = 0x7FFFFFFFFFFFFFFFLL;
                }

                else if (v49 << 7 <= (v48 & 0x3FFFFFFFFFFFFFC0) + 64)
                {
                  v23 = (v48 & 0x3FFFFFFFFFFFFFC0) + 64;
                }

                else
                {
                  v23 = v49 << 7;
                }

                sub_23C376518(&v47, v23);
                v22 = v48;
              }

              v48 = v22 + 1;
              *(v47 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v22);
              if (v11 != 2)
              {
                v24 = v48;
                if (v48 != v49 << 6)
                {
LABEL_64:
                  v48 = v24 + 1;
                  *(v47 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v24);
                  goto LABEL_65;
                }

                if ((v48 + 1) >= 0)
                {
                  if (v48 > 0x3FFFFFFFFFFFFFFELL)
                  {
                    v25 = 0x7FFFFFFFFFFFFFFFLL;
                  }

                  else if (v49 << 7 <= (v48 & 0x3FFFFFFFFFFFFFC0) + 64)
                  {
                    v25 = (v48 & 0x3FFFFFFFFFFFFFC0) + 64;
                  }

                  else
                  {
                    v25 = v49 << 7;
                  }

                  sub_23C376518(&v47, v25);
                  v24 = v48;
                  goto LABEL_64;
                }

LABEL_123:
                sub_23C36C1E0();
              }
            }
          }
        }
      }
    }
  }

LABEL_65:
  v26 = v10 & 0x3F;
  if (v10 > 0x3F || v26 != v11)
  {
    v27 = v46;
    v28 = &v46[v10 >> 6];
    do
    {
      v29 = *v27;
      v30 = v48;
      if (v48 == v49 << 6)
      {
        if ((v48 + 1) < 0)
        {
          sub_23C36C1E0();
        }

        v31 = v49 << 7;
        if (v49 << 7 <= (v48 & 0x3FFFFFFFFFFFFFC0) + 64)
        {
          v31 = (v48 & 0x3FFFFFFFFFFFFFC0) + 64;
        }

        if (v48 <= 0x3FFFFFFFFFFFFFFELL)
        {
          v32 = v31;
        }

        else
        {
          v32 = 0x7FFFFFFFFFFFFFFFLL;
        }

        sub_23C376518(&v47, v32);
        v30 = v48;
      }

      v48 = v30 + 1;
      v33 = v30 >> 6;
      v34 = 1 << v30;
      if (((1 << v11) & v29) != 0)
      {
        v35 = *(v47 + v33) | v34;
      }

      else
      {
        v35 = *(v47 + v33) & ~v34;
      }

      *(v47 + v33) = v35;
      v27 += v11 == 63;
      if (v11 == 63)
      {
        LODWORD(v11) = 0;
      }

      else
      {
        LODWORD(v11) = v11 + 1;
      }
    }

    while (v27 != v28 || v11 != v26);
  }

  if (v48 >= 8)
  {
    operator new();
  }

  v36 = **a3;
  v37 = v36 - 8;
  if (v36 == 8 || v36 == 16)
  {
    v38 = 19;
  }

  else if (v36 == 64)
  {
    v38 = 11;
  }

  else
  {
    v38 = 9;
  }

  sub_23C379870(a3, &__p);
  if (v54)
  {
    sub_23C379870(a3, &v50);
    v39 = v51 - 1;
    if (v50)
    {
      operator delete(v50);
    }

    v40 = __p;
    if (!__p)
    {
      goto LABEL_98;
    }
  }

  else
  {
    v39 = 0;
    v40 = __p;
    if (!__p)
    {
      goto LABEL_98;
    }
  }

  operator delete(v40);
LABEL_98:
  v41 = 8;
  if ((v37 & 0xF7) != 0)
  {
    v42 = 8;
  }

  else
  {
    v42 = 5;
  }

  v43 = **a3;
  switch(v43)
  {
    case 8:
      goto LABEL_104;
    case 110:
      v41 = 0;
      v44 = 0;
      goto LABEL_113;
    case 16:
LABEL_104:
      v41 = 6;
      break;
  }

  if (v43 == 8)
  {
    operator new();
  }

  if (v43 == 16)
  {
    v44 = 9;
  }

  else
  {
    v44 = 5;
  }

LABEL_113:
  v45 = v38 * v42 - v39 + v41 * v44;
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (v45)
  {
    if ((v45 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23C36C1E0();
  }

  if (v47)
  {
    operator delete(v47);
  }

  if (v46)
  {
    operator delete(v46);
  }
}

void sub_23C37F834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  v18 = v17;
  operator delete(v18);
  if (v16)
  {
    operator delete(v16);
    v20 = __p;
    if (!__p)
    {
LABEL_3:
      if (!a9)
      {
LABEL_8:
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a9);
      goto LABEL_8;
    }
  }

  else
  {
    v20 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v20);
  if (!a9)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

unint64_t sub_23C37F940@<X0>(unint64_t result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  v4 = *result;
  v3 = *(result + 8);
  v5 = &v3[-*result];
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (8 * v5)
  {
    if (((8 * v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23C36C1E0();
  }

  if (v3 != v4)
  {
    v6 = 0;
    v7 = *result;
    while (1)
    {
      v9 = *v7++;
      v8 = v9;
      v10 = (v6 + 7) >> 6;
      v11 = 1 << (v6 + 7);
      if (v9)
      {
        *(8 * v10) |= v11;
        v12 = (v6 + 6) >> 6;
        v13 = 1 << ((v6 + 6) & 0x3E);
        if ((v8 & 2) == 0)
        {
          goto LABEL_17;
        }

LABEL_9:
        *(8 * v12) |= v13;
        v14 = (v6 + 5) >> 6;
        v15 = 1 << ((v6 + 5) & 0x3D);
        if ((v8 & 4) != 0)
        {
          goto LABEL_10;
        }

LABEL_18:
        *(8 * v14) &= ~v15;
        v16 = (v6 + 4) >> 6;
        v17 = 1 << ((v6 + 4) & 0x3C);
        if ((v8 & 8) == 0)
        {
          goto LABEL_19;
        }

LABEL_11:
        *(8 * v16) |= v17;
        v18 = (v6 + 3) >> 6;
        v19 = 1 << ((v6 + 3) & 0x3B);
        if ((v8 & 0x10) != 0)
        {
          goto LABEL_12;
        }

LABEL_20:
        *(8 * v18) &= ~v19;
        v20 = (v6 + 2) >> 6;
        v21 = 1 << ((v6 + 2) & 0x3A);
        if ((v8 & 0x20) == 0)
        {
          goto LABEL_21;
        }

LABEL_13:
        *(8 * v20) |= v21;
        v22 = (v6 + 1) >> 6;
        v23 = 1 << ((v6 + 1) & 0x39);
        if ((v8 & 0x40) != 0)
        {
          goto LABEL_14;
        }

LABEL_22:
        result = *(8 * v22);
        *(8 * v22) = result & ~v23;
        v24 = v6 >> 6;
        v25 = 1 << (v6 & 0x38);
        if ((v8 & 0x80) == 0)
        {
          goto LABEL_6;
        }

LABEL_23:
        *(8 * v24) |= v25;
        v6 += 8;
        if (!--v5)
        {
          break;
        }
      }

      else
      {
        *(8 * v10) &= ~v11;
        v12 = (v6 + 6) >> 6;
        v13 = 1 << ((v6 + 6) & 0x3E);
        if ((v8 & 2) != 0)
        {
          goto LABEL_9;
        }

LABEL_17:
        *(8 * v12) &= ~v13;
        v14 = (v6 + 5) >> 6;
        v15 = 1 << ((v6 + 5) & 0x3D);
        if ((v8 & 4) == 0)
        {
          goto LABEL_18;
        }

LABEL_10:
        *(8 * v14) |= v15;
        v16 = (v6 + 4) >> 6;
        v17 = 1 << ((v6 + 4) & 0x3C);
        if ((v8 & 8) != 0)
        {
          goto LABEL_11;
        }

LABEL_19:
        *(8 * v16) &= ~v17;
        v18 = (v6 + 3) >> 6;
        v19 = 1 << ((v6 + 3) & 0x3B);
        if ((v8 & 0x10) == 0)
        {
          goto LABEL_20;
        }

LABEL_12:
        *(8 * v18) |= v19;
        v20 = (v6 + 2) >> 6;
        v21 = 1 << ((v6 + 2) & 0x3A);
        if ((v8 & 0x20) != 0)
        {
          goto LABEL_13;
        }

LABEL_21:
        *(8 * v20) &= ~v21;
        v22 = (v6 + 1) >> 6;
        v23 = 1 << ((v6 + 1) & 0x39);
        if ((v8 & 0x40) == 0)
        {
          goto LABEL_22;
        }

LABEL_14:
        result = *(8 * v22);
        *(8 * v22) = result | v23;
        v24 = v6 >> 6;
        v25 = 1 << (v6 & 0x38);
        if (v8 < 0)
        {
          goto LABEL_23;
        }

LABEL_6:
        *(8 * v24) &= ~v25;
        v6 += 8;
        if (!--v5)
        {
          break;
        }
      }
    }
  }

  if (*a2 == 8)
  {
    operator new();
  }

  return result;
}

void sub_23C37FD8C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_23C37FDA4(uint64_t *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 == 110)
  {
    if (a1[1] <= 7)
    {
      operator new();
    }

    v4 = *a1;
    memset(v5, 0, 24);
    sub_23C3805A8(v5, v4, 0, v4, 8, 8);
    *a3 = *&v5[0];
    *(a3 + 8) = *(v5 + 8);
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  *(a3 + 120) = 1;
}

void ***sub_23C38003C(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        v6 = v2[1];
        do
        {
          v8 = *(v6 - 3);
          v6 -= 24;
          v7 = v8;
          if (v8)
          {
            *(v4 - 2) = v7;
            operator delete(v7);
          }

          v4 = v6;
        }

        while (v6 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t sub_23C3800C4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = **(a1 + 16);
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
  }

  return a1;
}

void **sub_23C380134(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v7 = *(v5 - 3);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 2) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_23C3801AC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_23C3802A8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F017A0;
  a2[1] = v2;
  return result;
}

uint64_t sub_23C3802EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4cv3d7appcode5codec17FindClusteredArcsERKNSt3__16vectorImNS2_9allocatorImEEEERKNS3_IS6_NS4_IS6_EEEERKNS1_6FormatEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4cv3d7appcode5codec17FindClusteredArcsERKNSt3__16vectorImNS2_9allocatorImEEEERKNS3_IS6_NS4_IS6_EEEERKNS1_6FormatEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d7appcode5codec17FindClusteredArcsERKNSt3__16vectorImNS2_9allocatorImEEEERKNS3_IS6_NS4_IS6_EEEERKNS1_6FormatEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d7appcode5codec17FindClusteredArcsERKNSt3__16vectorImNS2_9allocatorImEEEERKNS3_IS6_NS4_IS6_EEEERKNS1_6FormatEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_23C380364(uint64_t result, unsigned int *a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v5 = *a2;
  v6 = a2[2];
  v7 = a4 - v6 + 8 * (a3 - *a2);
  if (v7 <= 0)
  {
    v21 = *a5;
    v19 = *(a5 + 8);
    goto LABEL_15;
  }

  if (v6)
  {
    if (v7 >= (64 - v6))
    {
      v8 = (64 - v6);
    }

    else
    {
      v8 = a4 - v6 + 8 * (a3 - *a2);
    }

    v7 -= v8;
    v9 = (0xFFFFFFFFFFFFFFFFLL >> (64 - v6 - v8)) & (-1 << v6) & *v5;
    v10 = *(a5 + 8);
    if (v8 >= (64 - v10))
    {
      v11 = (64 - v10);
    }

    else
    {
      v11 = v8;
    }

    v12 = *a5;
    v13 = v9 >> (v6 - v10);
    v14 = v10 >= v6;
    v16 = v10 - v6;
    v15 = v16 != 0 && v14;
    v17 = v9 << v16;
    if (!v15)
    {
      v17 = v13;
    }

    *v12 = **a5 & ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v10 - v11)) & (-1 << v10)) | v17;
    v18 = (v12 + (((v11 + v10) >> 3) & 0x3FFFFFF8));
    *a5 = v18;
    v19 = (v10 + v11) & 0x3F;
    *(a5 + 8) = v19;
    v20 = v8 - v11;
    if (v20 >= 1)
    {
      *v18 = (v9 >> (v11 + a2[2])) | *v18 & ~(0xFFFFFFFFFFFFFFFFLL >> -v20);
      *(a5 + 8) = v20;
      v19 = v20;
    }

    v5 = (*a2 + 8);
    *a2 = v5;
  }

  else
  {
    v19 = *(a5 + 8);
  }

  v22 = -1 << v19;
  if (v7 < 64)
  {
    v26 = v7;
    v21 = *a5;
    if (v26 >= 1)
    {
      goto LABEL_22;
    }

LABEL_15:
    *result = v21;
    *(result + 8) = v19;
    return result;
  }

  do
  {
    v23 = *v5;
    v24 = *a5;
    *v24 = **a5 & ~v22 | (v23 << v19);
    v25 = v24[1];
    *a5 = ++v24;
    *v24 = v25 & v22 | (v23 >> (64 - v19));
    v26 = v7 - 64;
    v5 = (*a2 + 8);
    *a2 = v5;
    v15 = v7 > 0x7F;
    v7 -= 64;
  }

  while (v15);
  v21 = *a5;
  if (v26 < 1)
  {
    goto LABEL_15;
  }

LABEL_22:
  v27 = *v5 & (0xFFFFFFFFFFFFFFFFLL >> -v26);
  if (v26 >= (64 - v19))
  {
    v28 = 64 - v19;
  }

  else
  {
    v28 = v26;
  }

  *v21 = *v21 & ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v19 - v28)) & v22) | (v27 << v19);
  v21 = (v21 + (((v28 + v19) >> 3) & 0x3FFFFFF8));
  *a5 = v21;
  v19 = (v19 + v28) & 0x3F;
  *(a5 + 8) = v19;
  v29 = v26 - v28;
  if (v26 - v28 < 1)
  {
    goto LABEL_15;
  }

  *v21 = *v21 & ~(0xFFFFFFFFFFFFFFFFLL >> (v28 - v26)) | (v27 >> v28);
  *(a5 + 8) = v29;
  *result = v21;
  *(result + 8) = v29;
  return result;
}

void sub_23C3805A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    if ((a6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_23C36C1E0();
  }
}

void sub_23C3806AC(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23C3806C4(uint64_t *a1, uint64_t *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v17 = *a1;
  v4 = a1[4];
  if (v4)
  {
    if (v4 == a1 + 1)
    {
      v19 = v18;
      (*(*v4 + 24))(v4, v18);
    }

    else
    {
      v19 = (*(*v4 + 16))(v4);
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = a1[5];
  v13 = *a2;
  v5 = a2[4];
  if (!v5)
  {
    goto LABEL_9;
  }

  if (v5 != a2 + 1)
  {
    v5 = (*(*v5 + 16))(v5);
LABEL_9:
    v15 = v5;
    goto LABEL_11;
  }

  v15 = v14;
  (*(*v5 + 24))(v5, v14);
LABEL_11:
  v16 = a2[5];
  v6 = v17;
  v7 = v13;
  if (v17 == v13)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      v6 += 8;
      v17 = v6;
      if (v6 != v20)
      {
        do
        {
          if (!v19)
          {
            sub_23C36EC88();
          }

          v9 = (*(*v19 + 48))(v19);
          v6 = v17;
          if (v9)
          {
            break;
          }

          v6 = v17 + 8;
          v17 = v6;
        }

        while (v6 != v20);
        v7 = v13;
      }

      ++v8;
    }

    while (v6 != v7);
  }

  if (v15 != v14)
  {
    if (v15)
    {
      (*(*v15 + 40))();
    }

    v10 = v19;
    if (v19 != v18)
    {
      goto LABEL_25;
    }

LABEL_28:
    (*(*v10 + 32))(v10);
    goto LABEL_29;
  }

  (*(*v15 + 32))(v15);
  v10 = v19;
  if (v19 == v18)
  {
    goto LABEL_28;
  }

LABEL_25:
  if (v10)
  {
    (*(*v10 + 40))(v10);
  }

LABEL_29:
  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_23C380990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_23C37E88C(va);
  _Unwind_Resume(a1);
}

void sub_23C3809A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_23C37E88C(va);
  sub_23C37E88C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_23C3809C4(uint64_t a1, void *a2, uint64_t *a3)
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 8);
  v28 = *a2;
  v6 = a2[4];
  if (v6)
  {
    if (v6 == a2 + 1)
    {
      v30 = v29;
      v7 = a2;
      (*(*v6 + 24))(v6, v29);
      a2 = v7;
    }

    else
    {
      v30 = a2[4];
      a2[4] = 0;
    }
  }

  else
  {
    v30 = 0;
  }

  v31 = a2[5];
  v24 = *a3;
  v8 = a3[4];
  if (v8)
  {
    if (v8 == a3 + 1)
    {
      v26 = v25;
      (*(*v8 + 24))(v8, v25);
    }

    else
    {
      v26 = a3[4];
      a3[4] = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  v27 = a3[5];
  v44 = v28;
  v9 = &v44;
  if (!v30)
  {
    goto LABEL_14;
  }

  if (v30 != v29)
  {
    v9 = &v28;
    v46 = v30;
LABEL_14:
    v9[4] = 0;
    goto LABEL_16;
  }

  v46 = v45;
  (*(*v30 + 24))();
LABEL_16:
  v47 = v31;
  v40 = v24;
  v10 = &v40;
  if (!v26)
  {
LABEL_19:
    v10[4] = 0;
    goto LABEL_21;
  }

  if (v26 != v25)
  {
    v10 = &v24;
    v42 = v26;
    goto LABEL_19;
  }

  v42 = v41;
  (*(*v26 + 24))();
LABEL_21:
  v43 = v27;
  sub_23C381158(&v48, &v44, &v40);
  if (v42 == v41)
  {
    (*(*v42 + 32))(v42);
    v11 = v46;
    if (v46 != v45)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (v42)
    {
      (*(*v42 + 40))();
    }

    v11 = v46;
    if (v46 != v45)
    {
LABEL_25:
      if (v11)
      {
        (*(*v11 + 40))(v11);
      }

      v12 = v50;
      v36 = v48;
      if (v50)
      {
        goto LABEL_28;
      }

LABEL_32:
      v38 = 0;
      goto LABEL_34;
    }
  }

  (*(*v11 + 32))(v11);
  v12 = v50;
  v36 = v48;
  if (!v50)
  {
    goto LABEL_32;
  }

LABEL_28:
  if (v12 == v49)
  {
    v38 = v37;
    (*(*v12 + 24))(v12, v37);
  }

  else
  {
    v38 = v12;
    v50 = 0;
  }

LABEL_34:
  v13 = v52;
  v39 = v51;
  v32 = v52;
  if (v54)
  {
    if (v54 != v53)
    {
      v34 = v54;
      v54 = 0;
      v35 = v55;
      v14 = v36;
      if (v36 != v52)
      {
        goto LABEL_37;
      }

LABEL_46:
      v15 = v5;
      goto LABEL_47;
    }

    v34 = v33;
    (*(*v54 + 24))();
    v13 = v32;
    v35 = v55;
    v14 = v36;
    if (v36 == v32)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v34 = 0;
    v35 = v55;
    v14 = v36;
    if (v36 == v52)
    {
      goto LABEL_46;
    }
  }

LABEL_37:
  v15 = v5;
  do
  {
    v16 = *v14++;
    *v15 = v16;
    v36 = v14;
    if (v14 != v39)
    {
      do
      {
        if (!v38)
        {
          sub_23C36EC88();
        }

        v17 = (*(*v38 + 48))(v38);
        v14 = v36;
        if (v17)
        {
          break;
        }

        v14 = v36 + 1;
        v36 = v14;
      }

      while (v14 != v39);
      v13 = v32;
    }

    ++v15;
  }

  while (v14 != v13);
LABEL_47:
  if (v34 == v33)
  {
    (*(*v34 + 32))(v34);
    v18 = v38;
    if (v38 != v37)
    {
      goto LABEL_51;
    }

LABEL_66:
    (*(*v18 + 32))(v18);
    v19 = v54;
    if (v54 != v53)
    {
      goto LABEL_54;
    }

LABEL_67:
    (*(*v19 + 32))(v19);
    v20 = v50;
    if (v50 != v49)
    {
      goto LABEL_57;
    }

LABEL_68:
    (*(*v20 + 32))(v20);
    v21 = v26;
    if (v26 != v25)
    {
      goto LABEL_60;
    }

    goto LABEL_69;
  }

  if (v34)
  {
    (*(*v34 + 40))();
  }

  v18 = v38;
  if (v38 == v37)
  {
    goto LABEL_66;
  }

LABEL_51:
  if (v18)
  {
    (*(*v18 + 40))(v18);
  }

  v19 = v54;
  if (v54 == v53)
  {
    goto LABEL_67;
  }

LABEL_54:
  if (v19)
  {
    (*(*v19 + 40))(v19);
  }

  v20 = v50;
  if (v50 == v49)
  {
    goto LABEL_68;
  }

LABEL_57:
  if (v20)
  {
    (*(*v20 + 40))(v20);
  }

  v21 = v26;
  if (v26 != v25)
  {
LABEL_60:
    if (v21)
    {
      (*(*v21 + 40))(v21);
    }

    result = v30;
    if (v30 != v29)
    {
      goto LABEL_63;
    }

LABEL_70:
    result = (*(*result + 32))(result);
    goto LABEL_71;
  }

LABEL_69:
  (*(*v21 + 32))(v21);
  result = v30;
  if (v30 == v29)
  {
    goto LABEL_70;
  }

LABEL_63:
  if (result)
  {
    result = (*(*result + 40))(result);
  }

LABEL_71:
  *(a1 + 8) = v15;
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23C3810E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if (a2)
  {
    sub_23C36BF7C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23C381158(void *a1, void *a2, uint64_t *a3)
{
  v61 = *MEMORY[0x277D85DE8];
  v37 = *a2;
  v5 = a2[4];
  if (v5)
  {
    if (v5 == a2 + 1)
    {
      v39 = v38;
      v6 = a2;
      (*(*v5 + 24))(v5, v38);
      a2 = v6;
    }

    else
    {
      v39 = a2[4];
      a2[4] = 0;
    }
  }

  else
  {
    v39 = 0;
  }

  v40 = a2[5];
  v33 = *a3;
  v7 = a3[4];
  if (v7)
  {
    if (v7 == a3 + 1)
    {
      v35 = v34;
      (*(*v7 + 24))(v7, v34);
    }

    else
    {
      v35 = a3[4];
      a3[4] = 0;
    }
  }

  else
  {
    v35 = 0;
  }

  v36 = a3[5];
  v8 = v37;
  v49 = v37;
  v9 = &v49;
  if (!v39)
  {
    goto LABEL_14;
  }

  if (v39 != v38)
  {
    v9 = &v37;
    v51 = v39;
LABEL_14:
    v9[4] = 0;
    goto LABEL_16;
  }

  v51 = v50;
  (*(*v39 + 24))();
  v8 = v49;
LABEL_16:
  v52 = v40;
  v57 = v8;
  if (!v51)
  {
    v59 = 0;
    v60 = v40;
    v53 = v8;
    v55 = 0;
    v56 = v40;
    v12 = 0;
    if (v58)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  if (v51 == v50)
  {
    v59 = v58;
    (*(*v51 + 24))();
    v10 = v59;
    v11 = v52;
    v60 = v52;
    v53 = v57;
    if (v59)
    {
      goto LABEL_19;
    }

LABEL_31:
    v55 = 0;
    v56 = v11;
    v12 = v59;
    if (v59 != v58)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  v10 = (*(*v51 + 16))();
  v11 = v52;
  v59 = v10;
  v60 = v52;
  v53 = v57;
  if (!v10)
  {
    goto LABEL_31;
  }

LABEL_19:
  if (v10 != v58)
  {
    v55 = v10;
    v56 = v11;
    v59 = 0;
    v12 = 0;
    if (!v58)
    {
      goto LABEL_21;
    }

LABEL_24:
    if (v12)
    {
      (*(*v12 + 40))(v12);
    }

    v13 = v33;
    v14 = v35;
    v41 = v33;
    v15 = &v41;
    if (!v35)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  v55 = v54;
  (*(*v10 + 24))(v10);
  v12 = v59;
  v56 = v60;
  if (v59 != v58)
  {
    goto LABEL_24;
  }

LABEL_21:
  (*(*v12 + 32))(v12);
  v13 = v33;
  v14 = v35;
  v41 = v33;
  v15 = &v41;
  if (!v35)
  {
    goto LABEL_29;
  }

LABEL_27:
  if (v14 != v34)
  {
    v15 = &v33;
    v43 = v14;
LABEL_29:
    v15[4] = 0;
    goto LABEL_34;
  }

  v43 = v42;
  (*(*v14 + 24))(v14, v42);
  v13 = v41;
LABEL_34:
  v16 = &v47;
  v44 = v36;
  v57 = v13;
  if (!v43)
  {
    v59 = 0;
    v60 = v36;
    v45 = v13;
    v47 = 0;
    v48 = v36;
    v19 = 0;
    if (v58)
    {
      goto LABEL_43;
    }

    goto LABEL_39;
  }

  if (v43 != v42)
  {
    v17 = (*(*v43 + 16))();
    v18 = v44;
    v59 = v17;
    v60 = v44;
    v45 = v57;
    if (v17)
    {
      goto LABEL_37;
    }

LABEL_50:
    v47 = 0;
    v48 = v18;
    v19 = v59;
    if (v59 != v58)
    {
      goto LABEL_43;
    }

    goto LABEL_39;
  }

  v59 = v58;
  (*(*v43 + 24))();
  v17 = v59;
  v18 = v44;
  v60 = v44;
  v45 = v57;
  if (!v59)
  {
    goto LABEL_50;
  }

LABEL_37:
  if (v17 == v58)
  {
    v47 = v46;
    (*(*v17 + 24))(v17);
    v19 = v59;
    v48 = v60;
    if (v59 != v58)
    {
      goto LABEL_43;
    }

LABEL_39:
    (*(*v19 + 32))(v19);
    v20 = v55;
    *a1 = v53;
    v21 = a1 + 1;
    if (!v20)
    {
      goto LABEL_40;
    }

LABEL_46:
    if (v20 == v54)
    {
      a1[4] = v21;
      (*(*v20 + 24))(v20);
      v25 = v45;
      v23 = v47;
      a1[5] = v56;
      a1[6] = v25;
      if (v23)
      {
        goto LABEL_53;
      }
    }

    else
    {
      a1[4] = v20;
      v55 = 0;
      v24 = v45;
      v23 = v47;
      a1[5] = v56;
      a1[6] = v24;
      if (v23)
      {
        goto LABEL_53;
      }
    }

LABEL_48:
    v16 = a1 + 10;
    goto LABEL_55;
  }

  v47 = v17;
  v48 = v18;
  v59 = 0;
  v19 = 0;
  if (!v58)
  {
    goto LABEL_39;
  }

LABEL_43:
  if (v19)
  {
    (*(*v19 + 40))(v19);
  }

  v20 = v55;
  *a1 = v53;
  v21 = a1 + 1;
  if (v20)
  {
    goto LABEL_46;
  }

LABEL_40:
  a1[4] = 0;
  v22 = v45;
  v23 = v47;
  a1[5] = v56;
  a1[6] = v22;
  if (!v23)
  {
    goto LABEL_48;
  }

LABEL_53:
  if (v23 != v46)
  {
    a1[10] = v23;
LABEL_55:
    *v16 = 0;
    v26 = v47;
    a1[11] = v48;
    if (v26 == v46)
    {
      goto LABEL_56;
    }

    goto LABEL_63;
  }

  a1[10] = a1 + 7;
  (*(*v23 + 24))(v23);
  v26 = v47;
  a1[11] = v48;
  if (v26 == v46)
  {
LABEL_56:
    (*(*v26 + 32))(v26, v21);
    v27 = v43;
    if (v43 == v42)
    {
      goto LABEL_57;
    }

    goto LABEL_66;
  }

LABEL_63:
  if (v26)
  {
    (*(*v26 + 40))(v26, v21);
  }

  v27 = v43;
  if (v43 == v42)
  {
LABEL_57:
    (*(*v27 + 32))(v27);
    v28 = v55;
    if (v55 == v54)
    {
      goto LABEL_58;
    }

    goto LABEL_69;
  }

LABEL_66:
  if (v27)
  {
    (*(*v27 + 40))(v27);
  }

  v28 = v55;
  if (v55 == v54)
  {
LABEL_58:
    (*(*v28 + 32))(v28);
    v29 = v51;
    if (v51 == v50)
    {
      goto LABEL_59;
    }

    goto LABEL_72;
  }

LABEL_69:
  if (v28)
  {
    (*(*v28 + 40))(v28);
  }

  v29 = v51;
  if (v51 == v50)
  {
LABEL_59:
    (*(*v29 + 32))(v29);
    v30 = v35;
    if (v35 == v34)
    {
      goto LABEL_60;
    }

LABEL_75:
    if (v30)
    {
      (*(*v30 + 40))(v30);
    }

    result = v39;
    if (v39 == v38)
    {
      goto LABEL_61;
    }

    goto LABEL_78;
  }

LABEL_72:
  if (v29)
  {
    (*(*v29 + 40))(v29);
  }

  v30 = v35;
  if (v35 != v34)
  {
    goto LABEL_75;
  }

LABEL_60:
  (*(*v30 + 32))(v30);
  result = v39;
  if (v39 == v38)
  {
LABEL_61:
    result = (*(*result + 32))(result);
    goto LABEL_80;
  }

LABEL_78:
  if (result)
  {
    result = (*(*result + 40))(result);
  }

LABEL_80:
  v32 = *MEMORY[0x277D85DE8];
  return result;
}