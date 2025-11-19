void *sub_1001D1D40(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x2A;
  v3 = v1 - 42;
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
    sub_1000FB8B8(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_100129284(a1, &v10);
}

void sub_1001D1EC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1001D1F14(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 42 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x2A)
  {
    a2 = 1;
  }

  if (v5 < 0x54)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

const void **sub_1001D1F8C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 42 * ((v2 - v1) >> 3) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x2A)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v11[4] = a1;
    sub_1000FB8B8(a1, v10);
  }

  *(a1 + 32) = v5 + 42;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return sub_10012938C(a1, v11);
}

void sub_1001D2190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1001D21DC(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x2A];
    v7 = *v6 + 96 * (v5 % 0x2A);
    v8 = v2[(a1[5] + v5) / 0x2A] + 96 * ((a1[5] + v5) % 0x2A);
    if (v7 != v8)
    {
      do
      {
        sub_1001CAB54(v7);
        v7 += 96;
        if (v7 - *v6 == 4032)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 21;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 42;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return sub_10001BD44(a1);
}

_BYTE *sub_1001D233C(void *a1, uint64_t a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - result) >> 3) < a4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      sub_1001CA634(a1, v11);
    }

    sub_1000CE3D4();
  }

  v12 = a1[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 3) >= a4)
  {
    while (v5 != a3)
    {
      *result = *v5;
      result[16] = *(v5 + 16);
      v5 += 24;
      result += 24;
    }

    a1[1] = result;
  }

  else
  {
    v13 = (a2 + v12 - result);
    if (v12 != result)
    {
      do
      {
        *result = *v5;
        result[16] = *(v5 + 16);
        v5 += 24;
        result += 24;
      }

      while (v5 != v13);
    }

    if (v13 == a3)
    {
      v14 = v12;
    }

    else
    {
      v14 = v12;
      do
      {
        v15 = *v13;
        *(v12 + 16) = *(v13 + 2);
        *v12 = v15;
        v12 += 24;
        v13 = (v13 + 24);
        v14 += 24;
      }

      while (v13 != a3);
    }

    a1[1] = v14;
  }

  return result;
}

char *sub_1001D24C8(char **a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
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

      sub_1001CAFD4(a1, v10);
    }

    sub_1000CE3D4();
  }

  v11 = a1[1];
  if (a4 <= (v11 - result) >> 4)
  {
    while (v5 != a3)
    {
      v17 = *v5;
      v18 = v5[1];
      v5 += 2;
      *result = v17;
      *(result + 1) = v18;
      result += 16;
    }

    a1[1] = result;
  }

  else
  {
    v12 = (a2 + v11 - result);
    if (v11 != result)
    {
      do
      {
        v13 = *v5;
        v14 = v5[1];
        v5 += 2;
        *result = v13;
        *(result + 1) = v14;
        result += 16;
      }

      while (v5 != v12);
    }

    if (v12 == a3)
    {
      v15 = v11;
    }

    else
    {
      v15 = v11;
      do
      {
        v16 = *v12++;
        *v11 = v16;
        v11 += 16;
        v15 += 16;
      }

      while (v12 != a3);
    }

    a1[1] = v15;
  }

  return result;
}

void sub_1001D25EC(uint64_t *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_1001D2628(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

void sub_1001D2628(uint64_t *a1, unint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 24 * a2;
      v11 = 24 * a2;
      do
      {
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
        v4 += 24;
        v11 -= 24;
      }

      while (v11);
      v4 = v10;
    }

    a1[1] = v4;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1000CE3D4();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1001CA680(a1, v9);
    }

    v12 = 24 * a2;
    v13 = 24 * v6;
    do
    {
      *v13 = 0;
      *(v13 + 8) = 0;
      *(v13 + 16) = 0;
      v13 += 24;
      v12 -= 24;
    }

    while (v12);
    v14 = *a1;
    v15 = a1[1];
    v16 = 24 * v6 + *a1 - v15;
    if (v15 != *a1)
    {
      v17 = 24 * v6 + *a1 - v15;
      do
      {
        v18 = *v14;
        *(v17 + 16) = v14[2];
        *v17 = v18;
        v17 += 24;
        v14 += 3;
      }

      while (v14 != v15);
      v14 = *a1;
    }

    *a1 = v16;
    a1[1] = 24 * v6 + 24 * a2;
    a1[2] = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

uint64_t sub_1001D27A4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    sub_1001CD6B4(&__p, *a1, *(a1 + 8), *(a1 + 8) - *a1);
  }

  else
  {
    __p = 0;
    v19 = 0;
    v20 = 0;
  }

  if (*(a2 + 16) == 1)
  {
    sub_1001CD6B4(&v15, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    v3 = HIBYTE(v17);
    v5 = v15;
    v4 = v16;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v3 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  v6 = HIBYTE(v20);
  if (v20 >= 0)
  {
    v7 = HIBYTE(v20);
  }

  else
  {
    v7 = v19;
  }

  if (v20 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v3 & 0x80u) == 0)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if ((v3 & 0x80u) == 0)
  {
    v10 = &v15;
  }

  else
  {
    v10 = v5;
  }

  if (v9 >= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v9;
  }

  v12 = memcmp(p_p, v10, v11);
  if ((v3 & 0x80) != 0)
  {
    operator delete(v5);
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }
  }

  else if ((v6 & 0x80) == 0)
  {
    goto LABEL_24;
  }

  operator delete(__p);
LABEL_24:
  v13 = v9 < v7;
  if (v7 < v9)
  {
    v13 = -1;
  }

  if (v12)
  {
    return v12;
  }

  else
  {
    return v13;
  }
}

void sub_1001D28C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001D28DC(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, char a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C((a1 + 24), *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    *(a1 + 40) = *(a2 + 2);
    *(a1 + 24) = v9;
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C((a1 + 48), *a3, *(a3 + 1));
  }

  else
  {
    v10 = *a3;
    *(a1 + 64) = *(a3 + 2);
    *(a1 + 48) = v10;
  }

  if (*(a4 + 23) < 0)
  {
    sub_100005F2C((a1 + 72), *a4, *(a4 + 1));
  }

  else
  {
    v11 = *a4;
    *(a1 + 88) = *(a4 + 2);
    *(a1 + 72) = v11;
  }

  *(a1 + 96) = a5;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  return a1;
}

void sub_1001D29A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001D29F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = v2 * 1.6;
  if (v2 + a2 <= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2 + a2;
  }

  sub_1001D2A18(a1, v4);
}

void sub_1001D2A18(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x100)
  {
    operator new();
  }
}

uint64_t sub_1001D2AA0(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  v14[0] = a2;
  v14[1] = &a2[a3];
  v15 = 0;
  v16 = 0;
  v17 = v4;
  v10 = *a4;
  v11 = a4[2];
  LOBYTE(v7.__locale_) = 0;
  v8 = 0;
  v9 = a1;
  LOBYTE(v12.__locale_) = 0;
  v13 = 0;
  v5 = sub_1001D2B68(v14, &v9);
  if (v13 == 1)
  {
    std::locale::~locale(&v12);
  }

  return v5;
}

void sub_1001D2B38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a17 == 1)
  {
    std::locale::~locale(v17 + 4);
    if (a11)
    {
      std::locale::~locale(&a10);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001D2B68(unsigned __int8 **a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  if (*a1 != v2)
  {
    while (1)
    {
      v7 = *v3;
      if (v7 == 125)
      {
        break;
      }

      if (v7 != 123)
      {
        goto LABEL_10;
      }

      if (++v3 == v2)
      {
        sub_1001D2C50("The format string terminates at a '{'");
      }

      if (*v3 == 123)
      {
LABEL_10:
        ++v3;
        sub_1001D9040(v4, v7);
        if (v3 == v2)
        {
          return v4;
        }
      }

      else
      {
        *a2 = v4;
        v3 = sub_1001D2CAC(v3, v2, a1, a2);
        v4 = *a2;
        if (v3 == v2)
        {
          return v4;
        }
      }
    }

    if (++v3 == v2 || *v3 != 125)
    {
      sub_1001D2C50("The format string contains an invalid escape sequence");
    }

    goto LABEL_10;
  }

  return v4;
}

void sub_1001D2C50(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1001D2DEC(exception, a1);
}

unsigned __int8 *sub_1001D2CAC(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 **a3, void *a4)
{
  v7 = sub_1001D2E5C(a1, a2, a3);
  if (v7 == a2)
  {
    goto LABEL_14;
  }

  v9 = *v7;
  v20 = v9 == 58;
  if (v9 == 125)
  {
    goto LABEL_5;
  }

  if (v9 != 58)
  {
LABEL_14:
    sub_1001D2C50("The argument index should end with a ':' or a '}'");
  }

  ++v7;
LABEL_5:
  *a3 = v7;
  v19[0] = a3;
  v19[1] = a4;
  v19[2] = &v20;
  v10 = a4[1];
  if (v10 <= v8)
  {
    LOBYTE(v22) = 0;
  }

  else if (v10 > 0xC)
  {
    v15 = (a4[2] + 32 * v8);
    v16 = v15[1];
    v21 = *v15;
    v22 = v16;
  }

  else
  {
    v11 = (a4[2] + 16 * v8);
    v13 = *v11;
    v12 = v11[1];
    v14 = (a4[3] >> (5 * v8)) & 0x1FLL;
    *&v21 = v13;
    *(&v21 + 1) = v12;
    LOBYTE(v22) = v14;
  }

  sub_1001D2F0C(v19, &v21);
  v17 = *a3;
  if (*a3 == a2 || *v17 != 125)
  {
    sub_1001D2C50("The replacement field misses a terminating '}'");
  }

  return v17 + 1;
}

std::runtime_error *sub_1001D2DEC(std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = &off_101E2FEA8;
  return result;
}

void sub_1001D2E24(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  operator delete();
}

unsigned __int8 *sub_1001D2E5C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *a1;
  if (v4 == 125 || v4 == 58)
  {
    sub_1001D3730(a3);
    return v3;
  }

  if (v4 == 48)
  {
    v5 = *(a3 + 16);
    if (v5)
    {
      if (v5 == 2)
      {
        sub_1001D2C50("Using manual argument numbering in automatic argument numbering mode");
      }
    }

    else
    {
      *(a3 + 16) = 1;
    }

    return a1 + 1;
  }

  if ((v4 - 58) <= 0xFFFFFFF5)
  {
    sub_1001D2C50("The argument index starts with an invalid character");
  }

  return sub_1001D36E8(a1, a2, a3);
}

void *sub_1001D2F0C(uint64_t a1, unsigned __int8 *a2)
{
  switch(a2[16])
  {
    case 1u:
      v3 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v4 = *a1;
        v5 = sub_1001D38D0(v60, *a1, 311);
        sub_1001D3AF4(v60, "a BOOL");
        *v4 = v5;
      }

      v6 = *(a1 + 8);
      result = sub_1001D3844(v60, v3, v6);
      goto LABEL_65;
    case 2u:
      v26 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v27 = *a1;
        v28 = sub_1001D38D0(v60, *a1, 311);
        sub_1001D62A8(v60, "a character");
        *v27 = v28;
      }

      v6 = *(a1 + 8);
      result = sub_1001D61F8(v60, v26, v6);
      goto LABEL_65;
    case 3u:
      v29 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v30 = *a1;
        v31 = sub_1001D38D0(v60, *a1, 311);
        sub_1001D63A8(v60, "an integer");
        *v30 = v31;
      }

      v6 = *(a1 + 8);
      result = sub_1001D6324(v60, v29, v6);
      goto LABEL_65;
    case 4u:
      v16 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v17 = *a1;
        v18 = sub_1001D38D0(v60, *a1, 311);
        sub_1001D63A8(v60, "an integer");
        *v17 = v18;
      }

      v6 = *(a1 + 8);
      result = sub_1001D6464(v60, v16, v6);
      goto LABEL_65;
    case 5u:
      v36 = *a2;
      v35 = *(a2 + 1);
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v37 = *a1;
        v38 = sub_1001D38D0(v60, *a1, 311);
        sub_1001D63A8(v60, "an integer");
        *v37 = v38;
      }

      v6 = *(a1 + 8);
      result = sub_1001D6F10(v60, v36, v35, v6);
      goto LABEL_65;
    case 6u:
      v32 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v33 = *a1;
        v34 = sub_1001D38D0(v60, *a1, 311);
        sub_1001D63A8(v60, "an integer");
        *v33 = v34;
      }

      v6 = *(a1 + 8);
      result = sub_1001D7DCC(v60, v32, v6);
      goto LABEL_65;
    case 7u:
      v42 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v43 = *a1;
        v44 = sub_1001D38D0(v60, *a1, 311);
        sub_1001D63A8(v60, "an integer");
        *v43 = v44;
      }

      v6 = *(a1 + 8);
      result = sub_1001D7E9C(v60, v42, v6);
      goto LABEL_65;
    case 8u:
      v23 = *a2;
      v22 = *(a2 + 1);
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v24 = *a1;
        v25 = sub_1001D38D0(v60, *a1, 311);
        sub_1001D63A8(v60, "an integer");
        *v24 = v25;
      }

      v6 = *(a1 + 8);
      result = sub_1001D7F6C(v60, v23, v22, v6);
      goto LABEL_65;
    case 9u:
      v19 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_56;
      }

      v20 = *a1;
      v21 = sub_1001D38D0(v60, *a1, 319);
      if (v60[1] - 13 < 6)
      {
        if ((*&v60[2] & 0x80000000) == 0 && *&v60[8] == -1)
        {
          *&v60[8] = 6;
        }

LABEL_55:
        *v20 = v21;
LABEL_56:
        v6 = *(a1 + 8);
        v54 = sub_1001D44B0(v60, v6);
        result = sub_1001D804C(v6, v54, v55, v19);
        goto LABEL_65;
      }

      if (v60[1] <= 0xCu && ((1 << v60[1]) & 0x1801) != 0)
      {
        goto LABEL_55;
      }

      goto LABEL_67;
    case 0xAu:
      v45 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_64;
      }

      v46 = *a1;
      v47 = sub_1001D38D0(v60, *a1, 319);
      if (v60[1] - 13 < 6)
      {
        if ((*&v60[2] & 0x80000000) == 0 && *&v60[8] == -1)
        {
          *&v60[8] = 6;
        }

LABEL_63:
        *v46 = v47;
LABEL_64:
        v6 = *(a1 + 8);
        v58 = sub_1001D44B0(v60, v6);
        result = sub_1001D908C(v6, v58, v59, v45);
        goto LABEL_65;
      }

      if (v60[1] <= 0xCu && ((1 << v60[1]) & 0x1801) != 0)
      {
        goto LABEL_63;
      }

      goto LABEL_67;
    case 0xBu:
      v39 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_60;
      }

      v40 = *a1;
      v41 = sub_1001D38D0(v60, *a1, 319);
      if (v60[1] - 13 >= 6)
      {
        if (v60[1] > 0xCu || ((1 << v60[1]) & 0x1801) == 0)
        {
LABEL_67:
          sub_1001D3FC8("a floating-point");
        }
      }

      else if ((*&v60[2] & 0x80000000) == 0 && *&v60[8] == -1)
      {
        *&v60[8] = 6;
      }

      *v40 = v41;
LABEL_60:
      v6 = *(a1 + 8);
      v56 = sub_1001D44B0(v60, v6);
      result = sub_1001D9E54(v6, v56, v57, v39);
LABEL_65:
      *v6 = result;
      return result;
    case 0xCu:
      v48 = *a2;
      *v60 = 1;
      *&v60[4] = 0xFFFFFFFF00000000;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v49 = *a1;
        *v49 = sub_1001DA7A8(v60, *a1);
      }

      v6 = *(a1 + 8);
      result = sub_1001DA7EC(v60, v48, v6);
      goto LABEL_65;
    case 0xDu:
      v10 = *a2;
      v11 = *(a2 + 1);
      *v60 = 1;
      *&v60[4] = 0xFFFFFFFF00000000;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v12 = *a1;
        *v12 = sub_1001DA7A8(v60, *a1);
      }

      v6 = *(a1 + 8);
      v13 = *v6;
      v14 = sub_1001D44B0(v60, v6);
      result = sub_1001DA864(v10, v11, v13, v14, v15);
      goto LABEL_65;
    case 0xEu:
      v8 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (**(a1 + 16) == 1)
      {
        v9 = *a1;
        *v9 = sub_1001DA904(v60, *a1);
      }

      v6 = *(a1 + 8);
      result = sub_1001DA94C(v60, v8, v6);
      goto LABEL_65;
    case 0xFu:
      v50 = *a1;
      v51 = *a2;
      v52 = *(a2 + 1);
      v53 = *(a1 + 8);

      return v52(v50, v53, v51);
    default:
      sub_1001D2C50("The argument index value is too large for the number of arguments supplied");
  }
}

unsigned __int8 *sub_1001D36E8(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  result = sub_1001D3774(a1, a2);
  v5 = *(a3 + 16);
  if (v5)
  {
    if (v5 == 2)
    {
      sub_1001D2C50("Using manual argument numbering in automatic argument numbering mode");
    }
  }

  else
  {
    *(a3 + 16) = 1;
  }

  return result;
}

uint64_t sub_1001D3730(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (v1 == 1)
    {
      sub_1001D2C50("Using automatic argument numbering in manual argument numbering mode");
    }
  }

  else
  {
    *(a1 + 16) = 2;
  }

  v2 = *(a1 + 24);
  *(a1 + 24) = v2 + 1;
  return v2;
}

unsigned __int8 *sub_1001D3774(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1;
  v3 = a1 + 9;
  if (a2 - a1 <= 9)
  {
    v3 = a2;
  }

  v5 = *a1;
  result = a1 + 1;
  v6 = v5 - 48;
  if (result == v3)
  {
    v3 = result;
LABEL_9:
    if (v3 == a2)
    {
      return a2;
    }

    else
    {
      v8 = *v3;
      if ((v8 - 48) > 9)
      {
        return v3;
      }

      else if ((v8 + 10 * v6 - 48) >> 31 || (result = v2 + 2, v2 + 2 != a2) && *result - 48 <= 9)
      {
        sub_1001D2C50("The numeric value of the format specifier is too large");
      }
    }
  }

  else
  {
    v2 = v3 - 1;
    while (1)
    {
      v7 = *result;
      if ((v7 - 58) < 0xFFFFFFF6)
      {
        break;
      }

      v6 = v7 + 10 * v6 - 48;
      if (++result == v3)
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

void *sub_1001D3844(uint64_t a1, unsigned int a2, void *a3)
{
  if (*(a1 + 1) > 1u)
  {
    v9 = sub_1001D44B0(a1, a3);

    return sub_1001D451C(a2, a3, v9, v8, 0);
  }

  else
  {
    v6 = sub_1001D44B0(a1, a3);

    return sub_1001D4310(a2, a3, v6, v5);
  }
}

unsigned __int8 *sub_1001D38D0(_BYTE *a1, unsigned __int8 **a2, __int16 a3)
{
  result = *a2;
  v5 = a2[1];
  v14 = result;
  if (result == v5)
  {
    return result;
  }

  v6 = *result;
  if (v6 == 125 || (a3 & 0x40) != 0 && v6 == 58)
  {
    return result;
  }

  v9 = sub_1001D3B5C(a1, &v14, v5);
  result = v14;
  if (v9)
  {
    if (v14 == v5)
    {
      return result;
    }
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_15;
  }

  v10 = *v14;
  switch(v10)
  {
    case ' ':
      v11 = *a1 | 0x18;
LABEL_14:
      *a1 = v11;
      v14 = ++result;
      if (result == v5)
      {
        return result;
      }

      break;
    case '+':
      v11 = *a1 & 0xE7 | 0x10;
      goto LABEL_14;
    case '-':
      v11 = *a1 & 0xE7 | 8;
      goto LABEL_14;
  }

LABEL_15:
  if ((a3 & 2) == 0 || *result != 35 || (*a1 |= 0x20u, ++result, v14 = result, result != v5))
  {
    if ((a3 & 4) == 0 || *result != 48)
    {
      goto LABEL_23;
    }

    if ((*a1 & 7) == 0)
    {
      *a1 |= 4u;
    }

    v14 = ++result;
    if (result != v5)
    {
LABEL_23:
      v12 = sub_1001D3CA4(a1, &v14, v5, a2);
      result = v14;
      if (!v12 || v14 != v5)
      {
        if ((a3 & 8) == 0 || (v13 = sub_1001D3D38(a1, &v14, v5, a2), result = v14, !v13) || v14 != v5)
        {
          if ((a3 & 0x10) == 0 || *result != 76 || (*a1 |= 0x40u, ++result, v14 = result, result != v5))
          {
            if ((a3 & 0x80) == 0 || *result != 110 || (*a1 |= 0x80u, ++result, v14 = result, result != v5))
            {
              if ((a3 & 0x20) != 0)
              {
                sub_1001D3E00(a1, &v14);
              }

              result = v14;
              if ((a3 & 0x100) != 0 && v14 != v5 && *v14 != 125)
              {
                sub_1001D2C50("The format specifier should consume the input or end with a '}'");
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1001D3AF4(uint64_t result, const char *a2)
{
  v2 = *(result + 1);
  if (v2 - 2 >= 6)
  {
    if (v2 > 1)
    {
      sub_1001D3FC8(a2);
    }

    v3 = result;
    result = sub_1001D40B4(result, 48, a2, -1);
    if ((*v3 & 7) == 0)
    {
      *v3 |= 1u;
    }
  }

  return result;
}

uint64_t sub_1001D3B5C(_BYTE *a1, unsigned __int8 **a2, unsigned __int8 *a3)
{
  v15[0] = *a2;
  v15[1] = a3;
  if ((sub_101764990(v15) & 0x80000000) != 0)
  {
    sub_1001D2C50("The format specifier contains malformed Unicode characters");
  }

  v6 = v15[0];
  if (v15[0] >= a3)
  {
    goto LABEL_7;
  }

  v7 = *v15[0];
  switch(v7)
  {
    case '<':
      v8 = 1;
LABEL_17:
      *a1 = *a1 & 0xF8 | v8;
      v13 = *a2;
      v14 = v6 - *a2;
      if (v14 == 1)
      {
        if (*v13 == 123)
        {
          sub_1001D2C50("The fill option contains an invalid value");
        }
      }

      else if (v6 == v13)
      {
LABEL_22:
        v11 = &v13[v14];
        goto LABEL_23;
      }

      memmove(a1 + 12, v13, v14);
      v13 = *a2;
      goto LABEL_22;
    case '>':
      v8 = 3;
      goto LABEL_17;
    case '^':
      v8 = 2;
      goto LABEL_17;
  }

LABEL_7:
  v9 = **a2;
  switch(v9)
  {
    case '<':
      v10 = 1;
      break;
    case '>':
      v10 = 3;
      break;
    case '^':
      v10 = 2;
      break;
    default:
      return 0;
  }

  *a1 = *a1 & 0xF8 | v10;
  v11 = *a2;
LABEL_23:
  *a2 = v11 + 1;
  return 1;
}

uint64_t sub_1001D3CA4(uint64_t a1, unsigned __int8 **a2, unsigned __int8 *a3, uint64_t a4)
{
  v6 = *a2;
  v7 = **a2;
  if (v7 == 123)
  {
    v9 = v6 + 1;
    *a2 = v9;
    v10 = sub_1001D3F6C(v9, a3, a4);
    *(a1 + 2) |= 0x4000u;
  }

  else
  {
    if (v7 == 48)
    {
      sub_1001D2C50("The width option should not have a leading zero");
    }

    if ((v7 - 58) < 0xFFFFFFF6)
    {
      return 0;
    }

    v10 = sub_1001D3774(v6, a3);
  }

  *(a1 + 4) = v11;
  *a2 = v10;
  return 1;
}

BOOL sub_1001D3D38(uint64_t a1, unsigned __int8 **a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = *a2;
  v5 = **a2;
  if (v5 == 46)
  {
    v8 = v4 + 1;
    *a2 = v4 + 1;
    if (v4 + 1 == a3)
    {
      sub_1001D2C50("End of input while parsing format specifier precision");
    }

    v9 = *v8;
    if (v9 == 123)
    {
      *a2 = v4 + 2;
      v10 = sub_1001D3F6C(v4 + 2, a3, a4);
      *(a1 + 2) |= 0x8000u;
      *(a1 + 8) = v11;
    }

    else
    {
      if ((v9 - 58) <= 0xFFFFFFF5)
      {
        sub_1001D2C50("The precision option does not contain a value or an argument index");
      }

      v10 = sub_1001D3774(v8, a3);
      *(a1 + 8) = v12;
      *(a1 + 2) &= ~0x8000u;
    }

    *a2 = v10;
  }

  return v5 == 46;
}

uint64_t sub_1001D3E00(uint64_t result, unsigned __int8 **a2)
{
  v2 = *a2;
  v3 = **a2;
  if (v3 > 0x62)
  {
    if (**a2 <= 0x66u)
    {
      if (**a2 > 0x64u)
      {
        if (v3 == 101)
        {
          v4 = 13;
        }

        else
        {
          v4 = 15;
        }
      }

      else if (v3 == 99)
      {
        v4 = 10;
      }

      else
      {
        if (v3 != 100)
        {
          return result;
        }

        v4 = 5;
      }
    }

    else if (**a2 <= 0x6Fu)
    {
      if (v3 == 103)
      {
        v4 = 17;
      }

      else
      {
        if (v3 != 111)
        {
          return result;
        }

        v4 = 4;
      }
    }

    else
    {
      switch(v3)
      {
        case 'p':
          v4 = 8;
          break;
        case 's':
          v4 = 1;
          break;
        case 'x':
          v4 = 6;
          break;
        default:
          return result;
      }
    }
  }

  else if (**a2 <= 0x46u)
  {
    if (**a2 > 0x44u)
    {
      if (v3 == 69)
      {
        v4 = 14;
      }

      else
      {
        v4 = 16;
      }
    }

    else if (v3 == 65)
    {
      v4 = 12;
    }

    else
    {
      if (v3 != 66)
      {
        return result;
      }

      v4 = 3;
    }
  }

  else if (**a2 <= 0x57u)
  {
    if (v3 == 71)
    {
      v4 = 18;
    }

    else
    {
      if (v3 != 80)
      {
        return result;
      }

      v4 = 9;
    }
  }

  else
  {
    switch(v3)
    {
      case 'X':
        v4 = 7;
        break;
      case 'a':
        v4 = 11;
        break;
      case 'b':
        v4 = 2;
        break;
      default:
        return result;
    }
  }

  *(result + 1) = v4;
  *a2 = (v2 + 1);
  return result;
}

unsigned __int8 *sub_1001D3F6C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    sub_1001D2C50("End of input while parsing an argument index");
  }

  v4 = sub_1001D2E5C(a1, a2, a3);
  if (v4 == a2 || *v4 != 125)
  {
    sub_1001D2C50("The argument index is invalid");
  }

  return v4 + 1;
}

void sub_1001D3FC8(const char *a1)
{
  sub_10000501C(&v8, "The type option contains an invalid value for ");
  v2 = strlen(a1);
  v3 = std::string::append(&v8, a1, v2);
  v4 = *&v3->__r_.__value_.__l.__data_;
  v9.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v9.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  v5 = std::string::append(&v9, " formatting argument", 0x14uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v11 = v5->__r_.__value_.__r.__words[2];
  v10 = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (v11 >= 0)
  {
    v7 = &v10;
  }

  else
  {
    v7 = v10;
  }

  sub_1001D2C50(v7);
}

void sub_1001D4068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 25) < 0)
  {
    operator delete(*(v21 - 48));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001D40B4(uint64_t result, char a2, const char *a3, int a4)
{
  if ((a2 & 1) == 0 && (*result & 0x18) != 0)
  {
    v6 = "sign";
    goto LABEL_23;
  }

  if ((a2 & 2) == 0 && (*result & 0x20) != 0)
  {
    v6 = "alternate form";
    goto LABEL_23;
  }

  if ((a2 & 4) == 0 && (*result & 7) == 4)
  {
    v6 = "zero-padding";
    goto LABEL_23;
  }

  if ((a2 & 8) == 0 && *(result + 8) != -1)
  {
    v6 = "precision";
    goto LABEL_23;
  }

  if ((a2 & 0x10) == 0 && (*result & 0x40) != 0)
  {
    v6 = "locale-specific form";
LABEL_23:
    sub_1001D4194(a3, v6);
  }

  v4 = *(result + 1);
  if (*(result + 1))
  {
    if (v4 >= 0x20)
    {
      sub_1001D2C50("The type does not fit in the mask");
    }

    v5 = 1 << v4;
  }

  else
  {
    v5 = 1;
  }

  if ((v5 & a4) == 0)
  {
    sub_1001D3FC8(a3);
  }

  return result;
}

void sub_1001D4194(const char *a1, const char *a2)
{
  sub_10000501C(&v15, "The format specifier for ");
  v4 = strlen(a1);
  v5 = std::string::append(&v15, a1, v4);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v16, " does not allow the ", 0x14uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = strlen(a2);
  v10 = std::string::append(&v17, a2, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v18, " option", 7uLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v20 = v12->__r_.__value_.__r.__words[2];
  v19 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (v20 >= 0)
  {
    v14 = &v19;
  }

  else
  {
    v14 = v19;
  }

  sub_1001D2C50(v14);
}

void sub_1001D4294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 25) < 0)
  {
    operator delete(*(v28 - 48));
  }

  if (*(v28 - 57) < 0)
  {
    operator delete(*(v28 - 80));
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1001D4310(int a1, void **a2, uint64_t a3, unint64_t a4)
{
  if ((a3 & 0x40) != 0)
  {
    sub_1001D46A8(a2, &v17);
    v12 = std::locale::use_facet(&v17, &std::numpunct<char>::id);
    std::locale::~locale(&v17);
    v17.__locale_ = 0;
    v18 = 0;
    v19 = 0;
    v13 = v12->__vftable;
    if (a1)
    {
      (v13[2].~facet)(&v17, v12);
    }

    else
    {
      (v13[2].~facet_0)(&v17, v12);
    }

    if (v19 >= 0)
    {
      locale = &v17;
    }

    else
    {
      locale = v17.__locale_;
    }

    if (v19 >= 0)
    {
      v15 = HIBYTE(v19);
    }

    else
    {
      v15 = v18;
    }

    v16 = sub_1001D4718(locale, v15, *a2, a3, a4);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(v17.__locale_);
    }

    return v16;
  }

  else
  {
    if (a1)
    {
      v8 = 4;
    }

    else
    {
      v8 = 5;
    }

    v9 = *a2;
    if (a1)
    {
      v10 = "true";
    }

    else
    {
      v10 = "false";
    }

    return sub_1001D48CC(v10, v8, v9, a3, a4, v8);
  }
}

void sub_1001D4484(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_1001D44B0(char *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = sub_1001D50B0(a1, a2);
  sub_1001D518C(a1, a2);
  return (v5 << 8) | (v6 << 32) | v4 & 0x7F;
}

void *sub_1001D451C(unsigned int a1, void **a2, unint64_t a3, unint64_t a4, char a5)
{
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      goto LABEL_11;
    }

    memset(v11, 0, sizeof(v11));
    v10 = 2;
    if (BYTE1(a3) == 2)
    {
      v7 = "0b";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v7 = "0B";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = v12;
    return sub_1001D5340(a1, a2, v8, a4, a5, v11, v9, v7, v10);
  }

  if (BYTE1(a3) > 5u)
  {
    *&v11[7] = 0;
    *v11 = 0;
    v10 = 16;
    if (BYTE1(a3) == 6)
    {
      v7 = "0x";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v7 = "0X";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = &v11[11];
    return sub_1001D5340(a1, a2, v8, a4, a5, v11, v9, v7, v10);
  }

  if (BYTE1(a3) != 4)
  {
LABEL_11:
    *&v11[7] = 0;
    *v11 = 0;
    return sub_1001D5340(a1, a2, a3, a4, a5, v11, &v11[11], 0, 0xAu);
  }

  *&v11[5] = 0;
  *v11 = 0;
  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  return sub_1001D5340(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, v11, &v11[13], v5, 8u);
}

std::locale *sub_1001D46A8@<X0>(uint64_t a1@<X0>, std::locale *a2@<X8>)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    std::locale::locale(&v5);
    sub_1001D47C4(a1 + 32, &v5);
    std::locale::~locale(&v5);
  }

  return std::locale::locale(a2, (a1 + 32));
}

void *sub_1001D4718(char *__src, size_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if (a4 <= 0)
  {
    sub_1001D49A8(a3, __src, a2);
    return a3;
  }

  else
  {
    v10 = sub_1001D4808(__src, a2, HIDWORD(a4), 1);

    return sub_1001D48CC(__src, a2, a3, a4, a5, v10);
  }
}

uint64_t sub_1001D47C4(uint64_t a1, const std::locale *a2)
{
  if (*(a1 + 8) == 1)
  {
    std::locale::operator=(a1, a2);
  }

  else
  {
    std::locale::locale(a1, a2);
    *(a1 + 8) = 1;
  }

  return a1;
}

uint64_t sub_1001D4808(unsigned __int8 *a1, uint64_t a2, unint64_t a3, int a4)
{
  result = 0;
  if (a2 && a3)
  {
    if (*a1 < 0)
    {
      v8 = a1;
    }

    else
    {
      v7 = 0;
      v8 = &a1[a3 - 1];
      while (1)
      {
        if (a2 - 1 == v7)
        {
          return a2;
        }

        if (a3 - 1 == v7)
        {
          break;
        }

        v9 = a1[++v7];
        if (v9 < 0)
        {
          a3 = a3 - v7 + 1;
          v8 = &a1[v7 - 1];
          return v8 - a1 + sub_101764B80(v8, &a1[a2], a3, a4);
        }
      }

      if ((a1[a3] & 0x80000000) == 0)
      {
        return a3;
      }

      a3 = 1;
    }

    return v8 - a1 + sub_101764B80(v8, &a1[a2], a3, a4);
  }

  return result;
}

void *sub_1001D48CC(char *__src, size_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v9 = (a4 >> 32) - a6;
  if (a4 >> 32 <= a6)
  {
    sub_1001D49A8(a3, __src, a2);
    return a3;
  }

  v10 = HIDWORD(a5);
  if ((a4 & 7u) > 1)
  {
    if ((a4 & 7) != 3)
    {
      v11 = v9 >> 1;
      v9 -= v9 >> 1;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if ((a4 & 7) == 0)
  {
LABEL_7:
    v11 = (a4 >> 32) - a6;
    v9 = 0;
    goto LABEL_9;
  }

  v11 = 0;
LABEL_9:
  v13 = sub_1001D4F60(a3, v11, SHIDWORD(a5));
  sub_1001D49A8(v13, __src, a2);

  return sub_1001D4F60(v13, v9, v10);
}

void *sub_1001D49A8(void *result, char *__src, size_t a3)
{
  v4 = result;
  v5 = result[4];
  if (v5)
  {
    v7 = *v5;
    v6 = v5[1];
    if (*v5 - v6 >= a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = *v5 - v6;
    }

    v5[1] = v6 + a3;
    if (v7 <= v6 || v8 == 0)
    {
      return result;
    }
  }

  else
  {
    v8 = a3;
  }

  v10 = result[2];
  do
  {
    v11 = *(v4 + 8) - v10;
    if (v11 < v8 + 1)
    {
      result = (*(v4 + 24))(v4, v8 + 2);
      v10 = *(v4 + 16);
      v11 = *(v4 + 8) - v10;
    }

    if (v11 >= v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      result = memmove((*v4 + v10), __src, v12);
      v10 = *(v4 + 16);
    }

    v10 += v12;
    *(v4 + 16) = v10;
    __src += v12;
    v13 = v8 > v11;
    v8 -= v12;
  }

  while (v13);
  return result;
}

uint64_t sub_1001D4A80(uint64_t a1)
{
  v3 = a1 + 16;
  v2 = *(a1 + 16);
    ;
  }

  return v2;
}

uint64_t sub_1001D4AD8(unsigned int a1)
{
  if (a1 - 262142 < 0xFFFC1102)
  {
    return 1;
  }

  v2 = 107;
  v3 = "_";
  do
  {
    v4 = v2 >> 1;
    v5 = &v3[4 * (v2 >> 1)];
    v7 = *v5;
    v6 = (v5 + 1);
    v2 += ~(v2 >> 1);
    if (((a1 << 14) | 0x3FFF) >= v7)
    {
      v3 = v6;
    }

    else
    {
      v2 = v4;
    }
  }

  while (v2);
  v1 = 1;
  if (v3 != "_")
  {
    if ((*(v3 - 1) & 0x3FFFu) + (*(v3 - 1) >> 14) < a1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return v1;
}

uint64_t sub_1001D4B64(uint64_t a1, unsigned int a2)
{
  *a1 = a2;
  v4 = sub_1001D4BD8(a2);
  *(a1 + 4) = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (v4 == 3)
  {
    v5 = 2;
    goto LABEL_7;
  }

  if (v4 == 9)
  {
    v5 = 3;
LABEL_7:
    *(a1 + 8) = v5;
    return a1;
  }

  if (!sub_1001D4C44(a2))
  {
    v5 = 1;
    goto LABEL_7;
  }

  return a1;
}

uint64_t sub_1001D4BD8(unsigned int a1)
{
  v1 = 1496;
  v2 = &unk_1017DA848;
  do
  {
    v3 = v1 >> 1;
    v4 = &v2[v1 >> 1];
    v6 = *v4;
    v5 = v4 + 1;
    v1 += ~(v1 >> 1);
    if (((a1 << 11) | 0x7FF) >= v6)
    {
      v2 = v5;
    }

    else
    {
      v1 = v3;
    }
  }

  while (v1);
  v7 = 16;
  if (v2 != &unk_1017DA848)
  {
    v8 = *(v2 - 1);
    v9 = ((v8 >> 4) & 0x7F) + (v8 >> 11);
    v10 = v8 & 0xF;
    if (v9 >= a1)
    {
      return v10;
    }

    else
    {
      return 16;
    }
  }

  return v7;
}

uint64_t sub_1001D4C44(unsigned int a1)
{
  v1 = 201;
  v2 = &unk_1017DBFA8;
  do
  {
    v3 = v1 >> 1;
    v4 = &v2[v1 >> 1];
    v6 = *v4;
    v5 = v4 + 1;
    v1 += ~(v1 >> 1);
    if (((a1 << 11) | 0x7FF) >= v6)
    {
      v2 = v5;
    }

    else
    {
      v1 = v3;
    }
  }

  while (v1);
  v7 = 3;
  if (v2 != &unk_1017DBFA8)
  {
    v8 = *(v2 - 1);
    v9 = ((v8 >> 2) & 0x1FF) + (v8 >> 11);
    v10 = v8 & 3;
    if (v9 >= a1)
    {
      return v10;
    }

    else
    {
      return 3;
    }
  }

  return v7;
}

uint64_t sub_1001D4CB0(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 8);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      return sub_1001D4EF8(a1, a2, a3);
    }

    *(a1 + 8) = 0;
    if (a3 == 9)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return sub_1001D4E4C(a1, a2, a3);
  }

  return sub_1001D4CE8(a1, a2, a3);
}

uint64_t sub_1001D4CE8(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v5 = *(a1 + 4);
  if (a3 == 5 && !*(a1 + 4))
  {
    return 0;
  }

  result = 1;
  v7 = v5 > 5 || ((1 << v5) & 0x23) == 0;
  if (v7 && (a3 > 5 || ((1 << a3) & 0x23) == 0))
  {
    if (v5 > 6)
    {
      if (v5 != 7)
      {
        if (v5 != 12)
        {
          goto LABEL_21;
        }

        goto LABEL_17;
      }

      v8 = a3 - 2;
      if (a3 - 2 >= 0xC)
      {
        goto LABEL_30;
      }

      v9 = 2817;
    }

    else
    {
      if (v5 != 4)
      {
        if (v5 != 6)
        {
          goto LABEL_21;
        }

LABEL_17:
        if ((a3 - 11) >= 2u)
        {
LABEL_21:
          if (a3 == 11 && v5 == 11 || a3 <= 0xD && ((1 << a3) & 0x2404) != 0 || v5 == 8)
          {
            return 0;
          }

LABEL_30:
          if (sub_1001D4C44(a2))
          {
            if (a3 == 9)
            {
              v12 = 3;
              v11 = 8;
              goto LABEL_37;
            }

            if (a3 != 3)
            {
              return 1;
            }

            v10 = 2;
            v11 = 12;
          }

          else
          {
            v10 = 1;
            v11 = 16;
          }

          v12 = 0;
          *(a1 + 8) = v10;
LABEL_37:
          *(a1 + v11) = v12;
          return 1;
        }

        return 0;
      }

      v8 = a3 - 2;
      if (a3 - 2 >= 0xC)
      {
        goto LABEL_30;
      }

      v9 = 3381;
    }

    if (((v9 >> v8) & 1) == 0)
    {
      goto LABEL_30;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1001D4E4C(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = sub_1001D4C44(a2);
  if (v6 != 3)
  {
    if (*(a1 + 16))
    {
      if ((v6 - 1) >= 2)
      {
        if (v6)
        {
          goto LABEL_2;
        }

        *(a1 + 16) = 0;
      }
    }

    else if (v6 != 1)
    {
      if (v6 != 2)
      {
        goto LABEL_2;
      }

      *(a1 + 16) = 1;
    }

    return 0;
  }

LABEL_2:
  *(a1 + 8) = 0;

  return sub_1001D4CE8(a1, a2, a3);
}

uint64_t sub_1001D4EF8(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 12);
  if (v3 == 2)
  {
    if (a3 == 3)
    {
      *(a1 + 12) = 0;
      return 0;
    }

LABEL_11:
    *(a1 + 8) = 0;
    return sub_1001D4CE8(a1, a2, a3);
  }

  if (v3 != 1)
  {
    if (a3 == 13)
    {
LABEL_12:
      v4 = 2;
      goto LABEL_13;
    }

    if (a3 == 2)
    {
      v4 = 1;
LABEL_13:
      *(a1 + 12) = v4;
      return 0;
    }

    goto LABEL_11;
  }

  if (a3 != 2)
  {
    if (a3 != 13)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  return 0;
}

void *sub_1001D4F60(void *a1, size_t a2, int a3)
{
  v3 = a2;
  __src = a3;
  v5 = __clz(~a3);
  v6 = v5 - 24;
  if (v5 == 24)
  {
    sub_1001D4FE0(a1, a2, a3);
  }

  else if (a2)
  {
    do
    {
      sub_1001D49A8(a1, &__src, v6);
      --v3;
    }

    while (v3);
  }

  return a1;
}

void *sub_1001D4FE0(void *result, size_t a2, int __c)
{
  v4 = a2;
  v5 = result;
  v6 = result[4];
  if (!v6)
  {
    goto LABEL_8;
  }

  v8 = *v6;
  v7 = v6[1];
  if (*v6 - v7 < a2)
  {
    v4 = *v6 - v7;
  }

  v6[1] = v7 + a2;
  if (v8 > v7 && v4 != 0)
  {
LABEL_8:
    v10 = result[2];
    do
    {
      v11 = *(v5 + 8) - v10;
      if (v11 < v4 + 1)
      {
        result = (*(v5 + 24))(v5, v4 + 2);
        v10 = *(v5 + 16);
        v11 = *(v5 + 8) - v10;
      }

      if (v11 >= v4)
      {
        v12 = v4;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        result = memset((*v5 + v10), __c, v12);
        v10 = *(v5 + 16);
      }

      v10 += v12;
      *(v5 + 16) = v10;
      v13 = v4 > v11;
      v4 -= v12;
    }

    while (v13);
  }

  return result;
}

unint64_t sub_1001D50B0(uint64_t a1, void *a2)
{
  if ((*(a1 + 2) & 0x4000) == 0)
  {
    return *(a1 + 4);
  }

  v4 = *(a1 + 4);
  v5 = a2[1];
  if (v5 <= v4)
  {
    LOBYTE(v6) = 0;
  }

  else if (v5 > 0xC)
  {
    v8 = a2[2] + 32 * v4;
    v4 = *v8;
    v2 = *(v8 + 8);
    LOBYTE(v6) = *(v8 + 16);
    v10[0] = *(v8 + 17);
    *(v10 + 7) = *(v8 + 24);
  }

  else
  {
    v6 = (a2[3] >> (5 * v4)) & 0x1FLL;
    v7 = (a2[2] + 16 * v4);
    v4 = *v7;
    v2 = v7[1];
  }

  v11[0] = v4;
  v11[1] = v2;
  v12 = v6;
  v13[0] = v10[0];
  *(v13 + 7) = *(v10 + 7);
  return sub_1001D5268(&v9, v11);
}

unint64_t sub_1001D518C(uint64_t a1, void *a2)
{
  if ((*(a1 + 2) & 0x80000000) == 0)
  {
    return *(a1 + 8);
  }

  v4 = *(a1 + 8);
  v5 = a2[1];
  if (v5 <= v4)
  {
    LOBYTE(v6) = 0;
  }

  else if (v5 > 0xC)
  {
    v8 = a2[2] + 32 * v4;
    v4 = *v8;
    v2 = *(v8 + 8);
    LOBYTE(v6) = *(v8 + 16);
    v10[0] = *(v8 + 17);
    *(v10 + 7) = *(v8 + 24);
  }

  else
  {
    v6 = (a2[3] >> (5 * v4)) & 0x1FLL;
    v7 = (a2[2] + 16 * v4);
    v4 = *v7;
    v2 = v7[1];
  }

  v11[0] = v4;
  v11[1] = v2;
  v12 = v6;
  v13[0] = v10[0];
  *(v13 + 7) = *(v10 + 7);
  return sub_1001D5268(&v9, v11);
}

unint64_t sub_1001D5268(uint64_t a1, unint64_t *a2)
{
  switch(*(a2 + 16))
  {
    case 1:
    case 2:
    case 5:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
      sub_1001D2C50("Replacement argument isn't a standard signed or unsigned integer type");
    case 3:
      result = *a2;
      if ((result & 0x80000000) != 0)
      {
        sub_1001D2C50("An argument index may not have a negative value");
      }

      return result;
    case 4:

      return sub_1001D5304(a1, a2);
    case 6:
      result = *a2;
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_7;
      }

      return result;
    case 7:
      result = *a2;
      if (*a2 >> 31)
      {
LABEL_7:
        sub_1001D2C50("The value of the argument index exceeds its maximum value");
      }

      return result;
    default:
      sub_1001D2C50("The argument index value is too large for the number of arguments supplied");
  }
}

unint64_t sub_1001D5304(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    sub_1001D2C50("An argument index may not have a negative value");
  }

  if (result >> 31)
  {
    sub_1001D2C50("The value of the argument index exceeds its maximum value");
  }

  return result;
}

void *sub_1001D5340(unsigned int a1, void **a2, unint64_t a3, unint64_t a4, char a5, char *a6, uint64_t a7, _BYTE *a8, unsigned int a9)
{
  v9 = a6;
  v13 = a3;
  if (a5)
  {
    v14 = 45;
LABEL_7:
    *a6 = v14;
    v16 = a6 + 1;
    goto LABEL_8;
  }

  v15 = (a3 >> 3) & 3;
  if (v15 == 2)
  {
    v14 = 43;
    goto LABEL_7;
  }

  v16 = a6;
  if (v15 == 3)
  {
    v14 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v17 = *a8;
      if (*a8)
      {
        v18 = a8 + 1;
        do
        {
          *v16 = v17;
          v16 = (v16 + 1);
          v19 = *v18++;
          v17 = v19;
        }

        while (v19);
      }
    }
  }

  v20 = sub_1001D59A0(v16, a7, a1, a9);
  if ((v13 & 0x40) == 0)
  {
    goto LABEL_41;
  }

  sub_1001D46A8(a2, &v43);
  v21 = std::locale::use_facet(&v43, &std::numpunct<char>::id);
  std::locale::~locale(&v43);
  v43.__locale_ = 0;
  v44 = 0;
  v45 = 0;
  (v21->__vftable[1].__on_zero_shared)(&v43, v21);
  if ((SHIBYTE(v45) & 0x8000000000000000) != 0)
  {
    locale = v43.__locale_;
    if (!v44)
    {
LABEL_40:
      operator delete(locale);
      goto LABEL_41;
    }
  }

  else
  {
    if (!HIBYTE(v45))
    {
      goto LABEL_41;
    }

    locale = &v43;
  }

  if (v20 - v16 <= *locale)
  {
    if (SHIBYTE(v45) < 0)
    {
      locale = v43.__locale_;
      goto LABEL_40;
    }

LABEL_41:
    v35 = HIDWORD(a3);
    if ((v13 & 7) == 4)
    {
      sub_1001D49A8(*a2, v9, v16 - v9);
      v36 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v16 - v9)
      {
        LODWORD(v37) = v16 - v9;
      }

      else
      {
        LODWORD(v37) = HIDWORD(a3);
      }

      v35 = (HIDWORD(a3) - v37);
      LOBYTE(v37) = 48;
      v9 = v16;
    }

    else
    {
      v37 = HIDWORD(a4);
      v36 = a3;
    }

    v38 = *a2;
    v39 = v35 << 32;
    if ((a3 & 0xFF00) == 0x700)
    {
      return sub_1001D589C(v9, v20, v38, v39 | a3 & 0xFFFF0000 | v36 | 0x700, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), sub_1001D5988);
    }

    else
    {
      return sub_1001D48CC(v9, v20 - v9, v38, v39 | a3 & 0xFFFFFF00 | v36, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), v20 - v9);
    }
  }

  v23 = *a2;
  memset(&__p, 0, sizeof(__p));
  v24 = v43.__locale_ + v44;
  if (v45 < 0)
  {
    v25 = v43.__locale_;
  }

  else
  {
    v24 = &v43 + SHIBYTE(v45);
    v25 = &v43;
  }

  v26 = *v25;
  v27 = v20 - v16 - *v25;
  if (v27 >= 1)
  {
    v28 = v24 - 1;
    do
    {
      std::string::push_back(&__p, v26);
      if (v25 == v28)
      {
        v26 = *v25;
      }

      else
      {
        v29 = v25 + 1;
        v30 = v25 + 1;
        do
        {
          v31 = *v30++;
          v26 = v31;
          if (v31)
          {
            v32 = 1;
          }

          else
          {
            v32 = v29 == v28;
          }

          v29 = v30;
        }

        while (!v32);
        v25 = v30 - 1;
      }

      v27 -= v26;
    }

    while (v27 > 0);
  }

  std::string::push_back(&__p, v26 + v27);
  v33 = (v21->__vftable[1].~facet_0)(v21);
  v34 = sub_1001D56C0(v23, v9, v16, v20, &__p, v33, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(v43.__locale_);
  }

  return v34;
}

void sub_1001D567C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15.__locale_);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1001D56C0(void *a1, char *__src, char *a3, int a4, uint64_t *a5, char a6, uint64_t a7, unint64_t a8)
{
  v8 = a7;
  v11 = a3;
  v13 = a1;
  v14 = HIDWORD(a7);
  v15 = HIDWORD(a8);
  v16 = a3 - __src;
  LODWORD(v17) = *(a5 + 23);
  if ((v17 & 0x80u) != 0)
  {
    v17 = a5[1];
  }

  v18 = a4 - __src - 1 + v17;
  if ((a7 & 7) != 4)
  {
    if (SHIDWORD(a7) <= v18)
    {
      v19 = 0;
LABEL_16:
      sub_1001D49A8(v13, __src, v16);
      goto LABEL_17;
    }

    v19 = (a7 >> 32) - v18;
    if ((a7 & 7u) > 1)
    {
      if ((a7 & 7) != 3)
      {
        v20 = v19 >> 1;
        v19 -= v19 >> 1;
        goto LABEL_15;
      }
    }

    else if ((a7 & 7) != 0)
    {
      v20 = 0;
LABEL_15:
      v13 = sub_1001D4F60(a1, v20, SHIDWORD(a8));
      goto LABEL_16;
    }

    v20 = (a7 >> 32) - v18;
    v19 = 0;
    goto LABEL_15;
  }

  sub_1001D49A8(a1, __src, a3 - __src);
  if (v14 > v18)
  {
    sub_1001D4FE0(v13, v14 - v18, 48);
  }

  v19 = 0;
LABEL_17:
  v21 = *(a5 + 23);
  v22 = v21;
  v23 = a5 + v21;
  if (v22 >= 0)
  {
    v24 = v23;
  }

  else
  {
    v24 = (*a5 + a5[1]);
  }

  if (v22 >= 0)
  {
    v25 = a5;
  }

  else
  {
    v25 = *a5;
  }

  v26 = v25 + 1;
  v27 = v8 & 0xFF00;
  for (i = v24; ; v24 = i)
  {
    v30 = *--i;
    v29 = v30;
    if (v27 == 1792)
    {
      v31 = &v11[v29];
      sub_1001D60F8(v13, v11, &v11[v29], sub_1001D5988);
      v11 = v31;
    }

    else
    {
      sub_1001D49A8(v13, v11, v29);
      v11 += *i;
    }

    if (v24 == v26)
    {
      break;
    }

    sub_1001D9040(v13, a6);
  }

  return sub_1001D4F60(v13, v19, v15);
}

void *sub_1001D589C(char *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(void))
{
  v10 = (a4 >> 32) - (a2 - a1);
  if (a4 >> 32 <= a2 - a1)
  {
    sub_1001D60F8(a3, a1, a2, a6);
    return a3;
  }

  v11 = HIDWORD(a5);
  if ((a4 & 7u) > 1)
  {
    if ((a4 & 7) != 3)
    {
      v12 = v10 >> 1;
      v10 -= v10 >> 1;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if ((a4 & 7) == 0)
  {
LABEL_7:
    v12 = (a4 >> 32) - (a2 - a1);
    v10 = 0;
    goto LABEL_9;
  }

  v12 = 0;
LABEL_9:
  v14 = sub_1001D4F60(a3, v12, SHIDWORD(a5));
  sub_1001D60F8(v14, a1, a2, a6);

  return sub_1001D4F60(v14, v10, v11);
}

uint64_t sub_1001D5988(int a1)
{
  if ((a1 - 97) >= 6)
  {
    return a1;
  }

  else
  {
    return (a1 - 32);
  }
}

char *sub_1001D59A0(_WORD *a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v4 = a2;
  HIDWORD(v6) = a4 - 2;
  LODWORD(v6) = a4 - 2;
  v5 = v6 >> 1;
  if (v5 != 4)
  {
    if (!v5)
    {
      return sub_1001D5F14(a1, a2, a3);
    }

    if (v5 == 3)
    {
      return sub_1001D5FB0(a1, a2, a3);
    }

    if (v5 != 7)
    {
      v10 = a2 - a1;
      v11 = sub_1001D5B00(a3, a4);
      if (v10 < v11)
      {
        return a2;
      }

      v4 = a1 + v11;
      v12 = v4 - 1;
      v13 = a3;
      do
      {
        *v12-- = a0123456789abcd[v13 % a4];
        v14 = v13 >= a4;
        v13 /= a4;
      }

      while (v14);
      return v4;
    }

    return sub_1001D6058(a1, a2, a3);
  }

  if (a2 - a1 > 9)
  {
    return sub_1001D5B64(a1, a3);
  }

  v7 = (1233 * (32 - __clz(a3 | 1))) >> 12;
  if (a2 - a1 >= (((__PAIR64__(v7, a3) - dword_1017DC2D8[v7]) >> 32) + 1))
  {
    return sub_1001D5B64(a1, a3);
  }

  return v4;
}

uint64_t sub_1001D5B00(unsigned int a1, unsigned int a2)
{
  if (a1 < a2)
  {
    return 1;
  }

  v3 = a1;
  v4 = a2 * a2;
  v5 = v4 * v4;
  result = 4;
  while (1)
  {
    if (v3 < v4)
    {
      return (result - 2);
    }

    if (v3 < a2 * a2 * a2)
    {
      break;
    }

    if (v3 < v5)
    {
      return result;
    }

    v3 /= v5;
    result = (result + 4);
    if (v3 < a2)
    {
      return (result - 3);
    }
  }

  return (result - 1);
}

char *sub_1001D5B64(_WORD *a1, unsigned int a2)
{
  if (a2 >= 0xF4240)
  {
    if (a2 >= 0x5F5E100)
    {
      v7 = a2 / 0x5F5E100;
      if (a2 > 0x3B9AC9FF)
      {
        *a1 = *&a00010203040506[2 * v7];
        a1[1] = *&a00010203040506[2 * (a2 % 0x5F5E100 / 0xF4240uLL)];
        a1[2] = *&a00010203040506[2 * (a2 % 0x5F5E100 % 0xF4240 / 0x2710uLL)];
        v13 = a2 % 0x5F5E100 % 0xF4240 % 0x2710;
        a1[3] = *&a00010203040506[2 * (v13 / 0x64u)];
        a1[4] = *&a00010203040506[2 * (v13 % 0x64u)];
        v2 = 10;
      }

      else
      {
        *a1 = v7 | 0x30;
        v8 = (140737489 * (a2 % 0x5F5E100)) >> 47;
        *(a1 + 1) = *&a00010203040506[2 * v8];
        v9 = a2 % 0x5F5E100 - 1000000 * v8;
        *(a1 + 3) = *&a00010203040506[2 * (v9 / 0x2710uLL)];
        v9 %= 0x2710u;
        *(a1 + 5) = *&a00010203040506[2 * (v9 / 0x64u)];
        *(a1 + 7) = *&a00010203040506[2 * (v9 % 0x64u)];
        v2 = 9;
      }
    }

    else
    {
      v3 = a2 / 0xF4240;
      if (a2 > 0x98967F)
      {
        *a1 = *&a00010203040506[2 * v3];
        a1[1] = *&a00010203040506[2 * (a2 % 0xF4240 / 0x2710uLL)];
        v11 = a2 % 0xF4240 % 0x2710;
        a1[2] = *&a00010203040506[2 * (v11 / 0x64u)];
        a1[3] = *&a00010203040506[2 * (v11 % 0x64u)];
        v2 = 8;
      }

      else
      {
        *a1 = v3 + 48;
        v4 = (429497 * (a2 % 0xF4240)) >> 32;
        *(a1 + 1) = *&a00010203040506[2 * v4];
        v5 = a2 % 0xF4240 - 10000 * v4;
        *(a1 + 3) = *&a00010203040506[2 * (v5 / 0x64u)];
        *(a1 + 5) = *&a00010203040506[2 * (v5 % 0x64u)];
        v2 = 7;
      }
    }
  }

  else if (a2 >> 4 > 0x270)
  {
    v6 = a2 / 0x2710;
    if (a2 >> 5 > 0xC34)
    {
      *a1 = *&a00010203040506[2 * v6];
      v12 = a2 % 0x2710;
      a1[1] = *&a00010203040506[2 * (v12 / 0x64u)];
      a1[2] = *&a00010203040506[2 * (v12 % 0x64u)];
      v2 = 6;
    }

    else
    {
      *a1 = v6 | 0x30;
      *(a1 + 1) = *&a00010203040506[2 * ((5243 * (a2 % 0x2710)) >> 19)];
      *(a1 + 3) = *&a00010203040506[2 * (a2 % 0x2710 - 100 * (((5243 * (a2 % 0x2710)) >> 16) >> 3))];
      v2 = 5;
    }
  }

  else if (a2 > 0x63)
  {
    v10 = a2 / 0x64u;
    if (a2 > 0x3E7)
    {
      *a1 = *&a00010203040506[2 * v10];
      a1[1] = *&a00010203040506[2 * (a2 % 0x64u)];
      v2 = 4;
    }

    else
    {
      *a1 = v10 | 0x30;
      *(a1 + 1) = *&a00010203040506[2 * (a2 % 0x64u)];
      v2 = 3;
    }
  }

  else if (a2 > 9)
  {
    *a1 = *&a00010203040506[2 * a2];
    v2 = 2;
  }

  else
  {
    *a1 = a2 | 0x30;
    v2 = 1;
  }

  return a1 + v2;
}

uint64_t sub_1001D5F14(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = 32 - __clz(a3 | 1);
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x11)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 4;
      *(v5 - 4) = *&a00010203040506[4 * (a3 & 0xF) + 200];
      v5 -= 4;
      v7 = a3 > 0x10F;
      a3 >>= 4;
    }

    while (v7);
  }

  v8 = (v5 - 1);
  do
  {
    *v8-- = a01[v6 & 1];
    v7 = v6 > 1;
    v6 >>= 1;
  }

  while (v7);
  return v4;
}

uint64_t sub_1001D5FB0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = (86 * (34 - __clz(a3 | 1))) >> 8;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x41)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 6;
      *(v5 - 2) = *&a00010203040506[2 * (a3 & 0x3F) + 264];
      v5 -= 2;
      a3 = v6;
    }

    while (v6 > 0x40);
  }

  v7 = (v5 - 1);
  do
  {
    *v7-- = a01234567[v6 & 7];
    v8 = v6 > 7;
    v6 >>= 3;
  }

  while (v8);
  return v4;
}

uint64_t sub_1001D6058(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = (35 - __clz(a3 | 1)) >> 2;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x101)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 8;
      *(v5 - 2) = *&a00010203040506[2 * a3 + 392];
      v5 -= 2;
      a3 = v6;
    }

    while (v6 > 0x100);
  }

  v7 = (v5 - 1);
  do
  {
    *v7-- = a0123456789abcd_0[v6 & 0xF];
    v8 = v6 > 0xF;
    v6 >>= 4;
  }

  while (v8);
  return v4;
}

uint64_t sub_1001D60F8(uint64_t result, char *a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a2;
  v6 = result;
  v7 = a3 - a2;
  v8 = *(result + 32);
  if (v8)
  {
    v10 = *v8;
    v9 = v8[1];
    if (*v8 - v9 >= v7)
    {
      v11 = a3 - a2;
    }

    else
    {
      v11 = *v8 - v9;
    }

    v8[1] = v9 + v7;
    if (v10 <= v9 || v11 == 0)
    {
      return result;
    }
  }

  else
  {
    v11 = a3 - a2;
  }

  v13 = *(result + 16);
  do
  {
    v14 = *(v6 + 8) - v13;
    if (v14 < v11 + 1)
    {
      result = (*(v6 + 24))(v6, v11 + 2);
      v13 = *(v6 + 16);
      v14 = *(v6 + 8) - v13;
    }

    if (v14 >= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v14;
    }

    if (v15)
    {
      v16 = (*v6 + v13);
      v17 = v15;
      v18 = v5;
      do
      {
        v19 = *v18++;
        result = a4(v19);
        *v16++ = result;
        --v17;
      }

      while (v17);
      v13 = *(v6 + 16);
    }

    v5 += v15;
    v13 += v15;
    *(v6 + 16) = v13;
    v20 = v11 > v14;
    v11 -= v15;
  }

  while (v20);
  return result;
}

void *sub_1001D61F8(uint64_t a1, unsigned __int8 a2, void *a3)
{
  v5 = *(a1 + 1);
  if (v5 == 10 || v5 == 0)
  {
    v7 = *a3;
    v8 = sub_1001D44B0(a1, a3);
    __src = a2;
    return sub_1001D48CC(&__src, 1uLL, v7, v8, v9, 1);
  }

  else
  {
    v11 = sub_1001D44B0(a1, a3);

    return sub_1001D451C(a2, a3, v11, v12, 0);
  }
}

uint64_t sub_1001D62A8(uint64_t result, const char *a2)
{
  v2 = *(result + 1);
  if (v2 - 2 >= 6)
  {
    v3 = v2 > 0x13;
    v4 = (1 << v2) & 0x80401;
    if (v3 || v4 == 0)
    {
      sub_1001D3FC8(a2);
    }

    v6 = result;
    result = sub_1001D40B4(result, 48, a2, -1);
    if ((*v6 & 7) == 0)
    {
      *v6 |= 1u;
    }
  }

  return result;
}

void *sub_1001D6324(char *a1, int a2, void *a3)
{
  v6 = sub_1001D44B0(a1, a3);
  v7 = v5;
  if ((v6 & 0xFF00) == 0xA00)
  {
    v8 = *a3;

    return sub_1001D6414(a2, v8, v6, v7);
  }

  else
  {
    if (a2 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = -a2;
    }

    return sub_1001D451C(v10, a3, v6, v5, a2 < 0);
  }
}

uint64_t sub_1001D63A8(uint64_t result, const char *a2)
{
  v2 = *(result + 1);
  if ((v2 - 2) >= 6 && v2 != 0)
  {
    if (v2 != 10)
    {
      sub_1001D3FC8(a2);
    }

    v4 = result;
    result = sub_1001D40B4(result, 48, a2, -1);
    if ((*v4 & 7) == 0)
    {
      *v4 |= 1u;
    }
  }

  return result;
}

void *sub_1001D6414(int a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (a1 != a1)
  {
    sub_1001D2C50("Integral value outside the range of the char type");
  }

  __src = a1;
  return sub_1001D48CC(&__src, 1uLL, a2, a3, a4, 1);
}

void *sub_1001D6464(char *a1, uint64_t a2, void *a3)
{
  v6 = sub_1001D44B0(a1, a3);
  v7 = v5;
  if ((v6 & 0xFF00) == 0xA00)
  {
    v8 = *a3;

    return sub_1001D64E8(a2, v8, v6, v7);
  }

  else
  {
    if (a2 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = -a2;
    }

    return sub_1001D6538(v10, a3, v6, v5, a2 < 0);
  }
}

void *sub_1001D64E8(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (a1 != a1)
  {
    sub_1001D2C50("Integral value outside the range of the char type");
  }

  __src = a1;
  return sub_1001D48CC(&__src, 1uLL, a2, a3, a4, 1);
}

void *sub_1001D6538(unint64_t a1, void **a2, unint64_t a3, unint64_t a4, char a5)
{
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      goto LABEL_11;
    }

    memset(v11, 0, sizeof(v11));
    v10 = 2;
    if (BYTE1(a3) == 2)
    {
      v7 = "0b";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v7 = "0B";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = v12;
    return sub_1001D66CC(a1, a2, v8, a4, a5, v11, v9, v7, v10);
  }

  if (BYTE1(a3) > 5u)
  {
    memset(v11, 0, 19);
    v10 = 16;
    if (BYTE1(a3) == 6)
    {
      v7 = "0x";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v7 = "0X";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = &v11[19];
    return sub_1001D66CC(a1, a2, v8, a4, a5, v11, v9, v7, v10);
  }

  if (BYTE1(a3) != 4)
  {
LABEL_11:
    memset(v11, 0, 21);
    return sub_1001D66CC(a1, a2, a3, a4, a5, v11, &v11[21], 0, 10);
  }

  memset(v11, 0, 24);
  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  return sub_1001D66CC(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, v11, &v11[24], v5, 8);
}

void *sub_1001D66CC(unint64_t a1, void **a2, unint64_t a3, unint64_t a4, char a5, char *a6, uint64_t a7, _BYTE *a8, signed int a9)
{
  v9 = a6;
  v13 = a3;
  if (a5)
  {
    v14 = 45;
LABEL_7:
    *a6 = v14;
    v16 = a6 + 1;
    goto LABEL_8;
  }

  v15 = (a3 >> 3) & 3;
  if (v15 == 2)
  {
    v14 = 43;
    goto LABEL_7;
  }

  v16 = a6;
  if (v15 == 3)
  {
    v14 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v17 = *a8;
      if (*a8)
      {
        v18 = a8 + 1;
        do
        {
          *v16++ = v17;
          v19 = *v18++;
          v17 = v19;
        }

        while (v19);
      }
    }
  }

  v20 = sub_1001D6A4C(v16, a7, a1, a9);
  if ((v13 & 0x40) == 0)
  {
    goto LABEL_41;
  }

  sub_1001D46A8(a2, &v43);
  v21 = std::locale::use_facet(&v43, &std::numpunct<char>::id);
  std::locale::~locale(&v43);
  v43.__locale_ = 0;
  v44 = 0;
  v45 = 0;
  (v21->__vftable[1].__on_zero_shared)(&v43, v21);
  if ((SHIBYTE(v45) & 0x8000000000000000) != 0)
  {
    locale = v43.__locale_;
    if (!v44)
    {
LABEL_40:
      operator delete(locale);
      goto LABEL_41;
    }
  }

  else
  {
    if (!HIBYTE(v45))
    {
      goto LABEL_41;
    }

    locale = &v43;
  }

  if (v20 - v16 <= *locale)
  {
    if (SHIBYTE(v45) < 0)
    {
      locale = v43.__locale_;
      goto LABEL_40;
    }

LABEL_41:
    v35 = HIDWORD(a3);
    if ((v13 & 7) == 4)
    {
      sub_1001D49A8(*a2, v9, v16 - v9);
      v36 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v16 - v9)
      {
        LODWORD(v37) = v16 - v9;
      }

      else
      {
        LODWORD(v37) = HIDWORD(a3);
      }

      v35 = (HIDWORD(a3) - v37);
      LOBYTE(v37) = 48;
      v9 = v16;
    }

    else
    {
      v37 = HIDWORD(a4);
      v36 = a3;
    }

    v38 = *a2;
    v39 = v35 << 32;
    if ((a3 & 0xFF00) == 0x700)
    {
      return sub_1001D589C(v9, v20, v38, v39 | a3 & 0xFFFF0000 | v36 | 0x700, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), sub_1001D5988);
    }

    else
    {
      return sub_1001D48CC(v9, v20 - v9, v38, v39 | a3 & 0xFFFFFF00 | v36, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), v20 - v9);
    }
  }

  v23 = *a2;
  memset(&__p, 0, sizeof(__p));
  v24 = v43.__locale_ + v44;
  if (v45 < 0)
  {
    v25 = v43.__locale_;
  }

  else
  {
    v24 = &v43 + SHIBYTE(v45);
    v25 = &v43;
  }

  v26 = *v25;
  v27 = v20 - v16 - *v25;
  if (v27 >= 1)
  {
    v28 = v24 - 1;
    do
    {
      std::string::push_back(&__p, v26);
      if (v25 == v28)
      {
        v26 = *v25;
      }

      else
      {
        v29 = v25 + 1;
        v30 = v25 + 1;
        do
        {
          v31 = *v30++;
          v26 = v31;
          if (v31)
          {
            v32 = 1;
          }

          else
          {
            v32 = v29 == v28;
          }

          v29 = v30;
        }

        while (!v32);
        v25 = v30 - 1;
      }

      v27 -= v26;
    }

    while (v27 > 0);
  }

  std::string::push_back(&__p, v26 + v27);
  v33 = (v21->__vftable[1].~facet_0)(v21);
  v34 = sub_1001D56C0(v23, v9, v16, v20, &__p, v33, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(v43.__locale_);
  }

  return v34;
}

void sub_1001D6A08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15.__locale_);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1001D6A4C(char *a1, uint64_t a2, unint64_t a3, signed int a4)
{
  v4 = a3;
  v5 = a2;
  HIDWORD(v7) = a4 - 2;
  LODWORD(v7) = a4 - 2;
  v6 = v7 >> 1;
  if (v6 != 4)
  {
    if (!v6)
    {
      return sub_1001D6D2C(a1, a2, a3);
    }

    if (v6 == 3)
    {
      return sub_1001D6DC8(a1, a2, a3);
    }

    if (v6 != 7)
    {
      v12 = a1;
      v13 = a2 - a1;
      v15 = sub_1001D6C10(a3, a4);
      if (v13 < v15)
      {
        return a2;
      }

      v5 = &v12[v15];
      v16 = (v5 - 1);
      do
      {
        *v16-- = a0123456789abcd[(v4 % a4)];
        v17 = v4 >= a4;
        v4 /= a4;
      }

      while (v17);
      return v5;
    }

    return sub_1001D6E70(a1, a2, a3);
  }

  if (a2 - a1 > 19 || (v8 = (1233 * (64 - __clz(a3 | 1))) >> 12, a2 - a1 >= v8 - (qword_1019B8FF0[v8] > a3) + 1))
  {
    if (!HIDWORD(a3))
    {
      return sub_1001D5B64(a1, a3);
    }

    if (a3 > 0x2540BE3FFLL)
    {
      a1 = sub_1001D5B64(a1, a3 / 0x2540BE400);
      v4 %= 0x2540BE400uLL;
    }

    return sub_1001D6C78(a1, v4);
  }

  return v5;
}

uint64_t sub_1001D6C10(unint64_t a1, unsigned int a2)
{
  if (a2 > a1)
  {
    return 1;
  }

  v3 = a1;
  v4 = a2 * a2;
  v5 = (v4 * v4);
  result = 4;
  while (1)
  {
    if (v3 < v4)
    {
      return (result - 2);
    }

    if (v3 < v4 * a2)
    {
      break;
    }

    if (v3 < v5)
    {
      return result;
    }

    v3 /= v5;
    result = (result + 4);
    if (v3 < a2)
    {
      return (result - 3);
    }
  }

  return (result - 1);
}

_WORD *sub_1001D6C78(_WORD *a1, unint64_t a2)
{
  *a1 = *&a00010203040506[(a2 / 0x2FAF080) & 0xFFFFFFFE];
  v2 = a2 % 0x5F5E100;
  a1[1] = *&a00010203040506[2 * (v2 / 0xF4240uLL)];
  v2 %= 0xF4240u;
  a1[2] = *&a00010203040506[2 * (v2 / 0x2710uLL)];
  v2 %= 0x2710u;
  a1[3] = *&a00010203040506[2 * (v2 / 0x64u)];
  a1[4] = *&a00010203040506[2 * (v2 % 0x64u)];
  return a1 + 5;
}

uint64_t sub_1001D6D2C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 64 - __clz(a3 | 1);
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x11)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 4;
      *(v5 - 4) = *&a00010203040506[4 * (a3 & 0xF) + 200];
      v5 -= 4;
      v7 = a3 > 0x10F;
      a3 >>= 4;
    }

    while (v7);
  }

  v8 = (v5 - 1);
  do
  {
    *v8-- = a01[v6 & 1];
    v7 = v6 > 1;
    v6 >>= 1;
  }

  while (v7);
  return v4;
}

uint64_t sub_1001D6DC8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (86 * (66 - __clz(a3 | 1))) >> 8;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x41)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 6;
      *(v5 - 2) = *&a00010203040506[2 * (a3 & 0x3F) + 264];
      v5 -= 2;
      a3 = v6;
    }

    while (v6 > 0x40);
  }

  v7 = (v5 - 1);
  do
  {
    *v7-- = a01234567[v6 & 7];
    v8 = v6 > 7;
    v6 >>= 3;
  }

  while (v8);
  return v4;
}

uint64_t sub_1001D6E70(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 67 - __clz(a3 | 1);
  if (a2 - a1 < (v3 >> 2))
  {
    return a2;
  }

  v4 = a1 + (v3 >> 2);
  if (a3 < 0x101)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + (v3 >> 2);
    do
    {
      v6 = a3 >> 8;
      *(v5 - 2) = *&a00010203040506[2 * a3 + 392];
      v5 -= 2;
      a3 = v6;
    }

    while (v6 > 0x100);
  }

  v7 = (v5 - 1);
  do
  {
    *v7-- = a0123456789abcd_0[v6 & 0xF];
    v8 = v6 > 0xF;
    v6 >>= 4;
  }

  while (v8);
  return v4;
}

void *sub_1001D6F10(char *a1, unint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1001D44B0(a1, a4);
  if ((v8 & 0xFF00) == 0xA00)
  {
    v9 = *a4;

    return sub_1001D6FB4(a2, a3, v9, v8, v7);
  }

  else
  {

    v11 = __PAIR128__(a3 ^ (a3 >> 63), a2 ^ (a3 >> 63)) - __PAIR128__(a3 >> 63, a3 >> 63);
    return sub_1001D700C(v11, *(&v11 + 1), a4, v8, v7, a3 < 0);
  }
}

void *sub_1001D6FB4(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if (__PAIR128__(-1, -257) >= __PAIR128__((a1 >= 0x80) + a2 - 1, a1 - 128))
  {
    sub_1001D2C50("Integral value outside the range of the char type");
  }

  __src = a1;
  return sub_1001D48CC(&__src, 1uLL, a3, a4, a5, 1);
}

void *sub_1001D700C(unint64_t a1, unint64_t a2, void **a3, unint64_t a4, unint64_t a5, char a6)
{
  if (BYTE1(a4) <= 3u)
  {
    if (!BYTE1(a4))
    {
      goto LABEL_11;
    }

    v17 = 0u;
    memset(v18, 0, sizeof(v18));
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    v12 = 0u;
    memset(v13, 0, sizeof(v13));
    v11 = 2;
    if (BYTE1(a4) == 2)
    {
      v10 = "0b";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v10 = "0B";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = v19;
    return sub_1001D71D8(a1, a2, a3, v8, a5, a6, &v12, v9, v10, v11);
  }

  if (BYTE1(a4) > 5u)
  {
    v12 = 0u;
    memset(v13, 0, 19);
    v11 = 16;
    if (BYTE1(a4) == 6)
    {
      v10 = "0x";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v10 = "0X";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = &v13[19];
    return sub_1001D71D8(a1, a2, a3, v8, a5, a6, &v12, v9, v10, v11);
  }

  if (BYTE1(a4) != 4)
  {
LABEL_11:
    v12 = 0u;
    memset(v13, 0, 24);
    return sub_1001D71D8(a1, a2, a3, a4, a5, a6, &v12, &v13[24], 0, 10);
  }

  v12 = 0u;
  memset(v13, 0, 29);
  if (a1 | a2)
  {
    v6 = "0";
  }

  else
  {
    v6 = 0;
  }

  return sub_1001D71D8(a1, a2, a3, a4 & 0xFFFFFFFFFFFF00FFLL | 0x400, a5, a6, &v12, &v13[29], v6, 8);
}

void *sub_1001D71D8(unint64_t a1, unint64_t a2, void **a3, unint64_t a4, unint64_t a5, char a6, char *a7, uint64_t a8, _BYTE *a9, signed int a10)
{
  v10 = a7;
  v14 = a4;
  if (a6)
  {
    v15 = 45;
LABEL_7:
    *a7 = v15;
    v17 = a7 + 1;
    goto LABEL_8;
  }

  v16 = (a4 >> 3) & 3;
  if (v16 == 2)
  {
    v15 = 43;
    goto LABEL_7;
  }

  v17 = a7;
  if (v16 == 3)
  {
    v15 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a4 & 0x20) != 0)
  {
    if (a9)
    {
      v18 = *a9;
      if (*a9)
      {
        v19 = a9 + 1;
        do
        {
          *v17++ = v18;
          v20 = *v19++;
          v18 = v20;
        }

        while (v20);
      }
    }
  }

  v21 = sub_1001D7560(v17, a8, a1, a2, a10);
  if ((v14 & 0x40) == 0)
  {
    goto LABEL_41;
  }

  sub_1001D46A8(a3, &v44);
  v22 = std::locale::use_facet(&v44, &std::numpunct<char>::id);
  std::locale::~locale(&v44);
  v44.__locale_ = 0;
  v45 = 0;
  v46 = 0;
  (v22->__vftable[1].__on_zero_shared)(&v44, v22);
  if ((SHIBYTE(v46) & 0x8000000000000000) != 0)
  {
    locale = v44.__locale_;
    if (!v45)
    {
LABEL_40:
      operator delete(locale);
      goto LABEL_41;
    }
  }

  else
  {
    if (!HIBYTE(v46))
    {
      goto LABEL_41;
    }

    locale = &v44;
  }

  if (v21 - v17 <= *locale)
  {
    if (SHIBYTE(v46) < 0)
    {
      locale = v44.__locale_;
      goto LABEL_40;
    }

LABEL_41:
    v36 = HIDWORD(a4);
    if ((v14 & 7) == 4)
    {
      sub_1001D49A8(*a3, v10, v17 - v10);
      v37 = a4 & 0xF8 | 3;
      if (SHIDWORD(a4) >= v17 - v10)
      {
        LODWORD(v38) = v17 - v10;
      }

      else
      {
        LODWORD(v38) = HIDWORD(a4);
      }

      v36 = (HIDWORD(a4) - v38);
      LOBYTE(v38) = 48;
      v10 = v17;
    }

    else
    {
      v38 = HIDWORD(a5);
      v37 = a4;
    }

    v39 = *a3;
    v40 = v36 << 32;
    if ((a4 & 0xFF00) == 0x700)
    {
      return sub_1001D589C(v10, v21, v39, v40 | a4 & 0xFFFF0000 | v37 | 0x700, a5 & 0xFFFFFF00FFFFFFFFLL | (v38 << 32), sub_1001D5988);
    }

    else
    {
      return sub_1001D48CC(v10, v21 - v10, v39, v40 | a4 & 0xFFFFFF00 | v37, a5 & 0xFFFFFF00FFFFFFFFLL | (v38 << 32), v21 - v10);
    }
  }

  v24 = *a3;
  memset(&__p, 0, sizeof(__p));
  v25 = v44.__locale_ + v45;
  if (v46 < 0)
  {
    v26 = v44.__locale_;
  }

  else
  {
    v25 = &v44 + SHIBYTE(v46);
    v26 = &v44;
  }

  v27 = *v26;
  v28 = v21 - v17 - *v26;
  if (v28 >= 1)
  {
    v29 = v25 - 1;
    do
    {
      std::string::push_back(&__p, v27);
      if (v26 == v29)
      {
        v27 = *v26;
      }

      else
      {
        v30 = v26 + 1;
        v31 = v26 + 1;
        do
        {
          v32 = *v31++;
          v27 = v32;
          if (v32)
          {
            v33 = 1;
          }

          else
          {
            v33 = v30 == v29;
          }

          v30 = v31;
        }

        while (!v33);
        v26 = v31 - 1;
      }

      v28 -= v27;
    }

    while (v28 > 0);
  }

  std::string::push_back(&__p, v27 + v28);
  v34 = (v22->__vftable[1].~facet_0)(v22);
  v35 = sub_1001D56C0(v24, v10, v17, v21, &__p, v34, a4, a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46) < 0)
  {
    operator delete(v44.__locale_);
  }

  return v35;
}

void sub_1001D751C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15.__locale_);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1001D7560(char *a1, uint64_t a2, unint64_t a3, unint64_t a4, signed int a5)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  HIDWORD(v9) = a5 - 2;
  LODWORD(v9) = a5 - 2;
  v8 = v9 >> 1;
  if (v8 != 4)
  {
    if (!v8)
    {
      return sub_1001D7B64(a1, a2, a3, a4);
    }

    if (v8 == 3)
    {
      return sub_1001D7C30(a1, a2, a3, a4);
    }

    if (v8 != 7)
    {
      v17 = a1;
      v18 = a2 - a1;
      v19 = sub_1001D77B4(a3, a4, a5);
      if (v18 >= v19)
      {
        v7 = &v17[v19];
        v20 = (v7 - 1);
        do
        {
          v21 = __udivti3();
          v22 = __PAIR128__(v5, v6) >= a5;
          *v20-- = a0123456789abcd[(v6 - v21 * a5)];
          v6 = v21;
          v5 = v23;
        }

        while (v22);
      }

      return v7;
    }

    return sub_1001D7D04(a1, a2, a3, a4);
  }

  v10 = a2 - a1;
  if (a4)
  {
    if (v10 <= 38)
    {
      v11 = (1233 * (128 - __clz(a4))) >> 12;
      if (v10 < v11 - (__PAIR128__(a4, a3) < xmmword_1017DC690[v11]) + 1)
      {
        return v7;
      }
    }

    return sub_1001D7860(a1, a3, a4);
  }

  if (v10 > 19 || (v12 = (1233 * (64 - __clz(a3 | 1))) >> 12, v10 >= v12 - (qword_1019B8FF0[v12] > a3) + 1))
  {
    if (!HIDWORD(a3))
    {
      return sub_1001D5B64(a1, a3);
    }

    if (a3 > 0x2540BE3FFLL)
    {
      a1 = sub_1001D5B64(a1, a3 / 0x2540BE400);
      v6 %= 0x2540BE400uLL;
    }

    return sub_1001D6C78(a1, v6);
  }

  return v7;
}

uint64_t sub_1001D77B4(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (__PAIR128__(a2, a1) < a3)
  {
    return 1;
  }

  v5 = a3 * a3;
  v6 = a3 * a3 * a3;
  v3 = 4;
  while (1)
  {
    if (__PAIR128__(a2, a1) < v5)
    {
      return (v3 - 2);
    }

    if (__PAIR128__(a2, a1) < v6)
    {
      break;
    }

    if (__PAIR128__(a2, a1) < v5 * v5)
    {
      return v3;
    }

    a1 = __udivti3();
    v3 = (v3 + 4);
    if (__PAIR128__(a2, a1) < a3)
    {
      return (v3 - 3);
    }
  }

  return (v3 - 1);
}

_WORD *sub_1001D7860(char *a1, unint64_t a2, unint64_t a3)
{
  v3 = a1;
  if (__PAIR128__(a3, a2) >= __PAIR128__(0x4B3B4CA85A86C47ALL, 0x98A224000000000))
  {
    *a1 = __udivti3() | 0x30;
    v7 = __udivti3();
    v3[1] = ((1441151881 * v7) >> 57) + 48;
    *(v3 + 1) = *&a00010203040506[2 * (v7 % 0x5F5E100 / 0xF4240uLL)];
    v8 = v7 % 0x5F5E100 % 0xF4240;
    *(v3 + 2) = *&a00010203040506[2 * (v8 / 0x2710uLL)];
    v8 %= 0x2710u;
    *(v3 + 3) = *&a00010203040506[2 * (v8 / 0x64u)];
    *(v3 + 4) = *&a00010203040506[2 * (v8 % 0x64u)];
    v9 = __udivti3();
    v10 = v3 + 10;
  }

  else
  {
    v4 = __udivti3();
    v5 = v4;
    if (!HIDWORD(v4))
    {
      v6 = sub_1001D5B64(v3, v4);
      goto LABEL_9;
    }

    if (v4 > 0x2540BE3FFLL)
    {
      v11 = v4 / 0x2540BE400;
      v3 = sub_1001D5B64(v3, v4 / 0x2540BE400);
      v5 -= 10000000000 * v11;
    }

    v10 = v3;
    v9 = v5;
  }

  v6 = sub_1001D6C78(v10, v9);
LABEL_9:
  v12 = v6;
  v13 = __umodti3();
  *v12 = v13 / 0x2540BE400 / 0x5F5E100 + 48;
  v14 = v13 / 0x2540BE400 % 0x5F5E100;
  *(v12 + 1) = *&a00010203040506[2 * (v14 / 0xF4240uLL)];
  v14 %= 0xF4240u;
  *(v12 + 3) = *&a00010203040506[2 * (v14 / 0x2710uLL)];
  v14 %= 0x2710u;
  *(v12 + 5) = *&a00010203040506[2 * (v14 / 0x64u)];
  *(v12 + 7) = *&a00010203040506[2 * (v14 % 0x64u)];

  return sub_1001D6C78(v12 + 9, v13 % 0x2540BE400);
}

uint64_t sub_1001D7B64(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = 128 - v5;
  if (a2 - a1 < v6)
  {
    return a2;
  }

  v7 = a1 + v6;
  if (__PAIR128__(a4, a3) < 0x11)
  {
    v9 = a3;
    v11 = a4;
    v8 = v7;
  }

  else
  {
    v8 = a1 + v6;
    do
    {
      *(&v10 + 1) = a4;
      *&v10 = a3;
      v9 = v10 >> 4;
      v11 = a4 >> 4;
      *(v8 - 4) = *&a00010203040506[4 * (a3 & 0xF) + 200];
      v8 -= 4;
      v12 = a3 <= 0x10F;
      a3 = v9;
      a4 >>= 4;
    }

    while (!v12);
  }

  v13 = (v8 - 1);
  do
  {
    v14 = v9 & 1;
    v12 = v9 <= 1;
    *(&v15 + 1) = v11;
    *&v15 = v9;
    v9 = v15 >> 1;
    v11 >>= 1;
    *v13-- = a01[v14];
  }

  while (!v12);
  return v7;
}

uint64_t sub_1001D7C30(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = (-126 - v5) / 3u;
  if (a2 - a1 < v6)
  {
    return a2;
  }

  v7 = a1 + v6;
  if (__PAIR128__(a4, a3) < 0x41)
  {
    v9 = a3;
    v8 = v7;
  }

  else
  {
    v8 = a1 + v6;
    do
    {
      *(&v10 + 1) = a4;
      *&v10 = a3;
      v9 = v10 >> 6;
      a4 >>= 6;
      *(v8 - 2) = *&a00010203040506[2 * (a3 & 0x3F) + 264];
      v8 -= 2;
      a3 = v9;
    }

    while (v9 > 0x40);
  }

  v11 = (v8 - 1);
  do
  {
    v12 = v9 & 7;
    v13 = v9 <= 7;
    *(&v14 + 1) = a4;
    *&v14 = v9;
    v9 = v14 >> 3;
    a4 >>= 3;
    *v11-- = a01234567[v12];
  }

  while (!v13);
  return v7;
}

uint64_t sub_1001D7D04(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = 131 - v5;
  if (a2 - a1 < (v6 >> 2))
  {
    return a2;
  }

  v7 = a1 + (v6 >> 2);
  if (__PAIR128__(a4, a3) < 0x101)
  {
    v9 = a3;
    v8 = v7;
  }

  else
  {
    v8 = a1 + (v6 >> 2);
    do
    {
      *(&v10 + 1) = a4;
      *&v10 = a3;
      v9 = v10 >> 8;
      a4 >>= 8;
      *(v8 - 2) = *&a00010203040506[2 * a3 + 392];
      v8 -= 2;
      a3 = v9;
    }

    while (v9 > 0x100);
  }

  v11 = (v8 - 1);
  do
  {
    v12 = v9 & 0xF;
    v13 = v9 <= 0xF;
    *(&v14 + 1) = a4;
    *&v14 = v9;
    v9 = v14 >> 4;
    a4 >>= 4;
    *v11-- = a0123456789abcd_0[v12];
  }

  while (!v13);
  return v7;
}

void *sub_1001D7DCC(char *a1, unsigned int a2, void *a3)
{
  v6 = sub_1001D44B0(a1, a3);
  v7 = v5;
  if ((v6 & 0xFF00) == 0xA00)
  {
    v8 = *a3;

    return sub_1001D7E4C(a2, v8, v6, v7);
  }

  else
  {

    return sub_1001D451C(a2, a3, v6, v5, 0);
  }
}

void *sub_1001D7E4C(unsigned int a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (a1 >= 0x80)
  {
    sub_1001D2C50("Integral value outside the range of the char type");
  }

  __src = a1;
  return sub_1001D48CC(&__src, 1uLL, a2, a3, a4, 1);
}

void *sub_1001D7E9C(char *a1, unint64_t a2, void *a3)
{
  v6 = sub_1001D44B0(a1, a3);
  v7 = v5;
  if ((v6 & 0xFF00) == 0xA00)
  {
    v8 = *a3;

    return sub_1001D7F1C(a2, v8, v6, v7);
  }

  else
  {

    return sub_1001D6538(a2, a3, v6, v5, 0);
  }
}

void *sub_1001D7F1C(unint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (a1 >= 0x80)
  {
    sub_1001D2C50("Integral value outside the range of the char type");
  }

  __src = a1;
  return sub_1001D48CC(&__src, 1uLL, a2, a3, a4, 1);
}

void *sub_1001D7F6C(char *a1, unint64_t a2, unint64_t a3, void *a4)
{
  v8 = sub_1001D44B0(a1, a4);
  if ((v8 & 0xFF00) == 0xA00)
  {
    v9 = *a4;

    return sub_1001D8004(a2, a3, v9, v8, v7);
  }

  else
  {

    return sub_1001D700C(a2, a3, a4, v8, v7, 0);
  }
}

void *sub_1001D8004(unint64_t a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if (__PAIR128__(a2, a1) >= 0x80)
  {
    sub_1001D2C50("Integral value outside the range of the char type");
  }

  __src = a1;
  return sub_1001D48CC(&__src, 1uLL, a3, a4, a5, 1);
}

void *sub_1001D804C(void **a1, uint64_t a2, unint64_t a3, float a4)
{
  if ((LODWORD(a4) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    v33 = *a1;

    return sub_1001D84C0(v33, a2, a3, a4 < 0.0, 0);
  }

  else
  {
    v7 = fabsf(a4);
    memset(v40, 0, sizeof(v40));
    *__p = 0u;
    if (a3 == -1)
    {
      v8 = 149;
    }

    else
    {
      v8 = a3;
    }

    v37 = v8;
    v38 = 0;
    if (v8 < 150)
    {
      __p[0] = (v8 + 45);
      if ((v8 + 45) >= 0x101)
      {
        operator new();
      }
    }

    else
    {
      v37 = 149;
      v38 = v8 - 149;
      __p[0] = 194;
    }

    __p[1] = v40;
    v35 = 0u;
    *v36 = 0u;
    sub_1001D85CC(&v37, a4 < 0.0, (a3 & 0x80000000) == 0, (a2 >> 3) & 3, BYTE1(a2), &v35, v7);
    if ((a2 & 0x20) != 0)
    {
      v9 = *(&v35 + 1);
      v10 = *&v36[2];
      if (*(&v35 + 1) == *&v36[2])
      {
        ++*&v36[2];
        *v10 = 46;
        v11 = *v36;
        v12 = *&v36[2] - 1;
        if (*v36 != *&v36[2] - 1)
        {
          if (*v36 + 1 == v12)
          {
            v14 = **v36;
            **v36 = *(*v36 + 1);
            v11[1] = v14;
          }

          else
          {
            v13 = *(*&v36[2] - 1);
            memmove((*v36 + 1), *v36, v12 - *v36);
            *v11 = v13;
          }
        }

        v9 = *v36;
        *(&v35 + 1) = (*v36)++;
      }

      if ((BYTE1(a2) - 17) <= 1u)
      {
        if (a3 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = a3;
        }

        if ((a3 & 0x80000000) != 0)
        {
          v15 = 6;
        }

        if (*v36 == *&v36[2])
        {
          v16 = v35 - v9;
        }

        else
        {
          v16 = -1;
        }

        v17 = v16 + v15;
        v18 = ~v9 + *v36;
        if (v18 < v17)
        {
          v38 += v17 - v18;
        }
      }
    }

    if ((a2 & 0x40) != 0)
    {
      v26 = *a1;
      sub_1001D46A8(a1, &v34);
      v27 = sub_1001D879C(v26, &v37, &v35, &v34, a2, a3);
      std::locale::~locale(&v34);
    }

    else
    {
      v19 = *&v36[2];
      v20 = __p[1];
      v21 = *&v36[2] - __p[1];
      v22 = v38;
      if ((*&v36[2] - __p[1] + v38) >= a2 >> 32)
      {
        if (!v38 || (v28 = *v36, *v36 == *&v36[2]))
        {
          v27 = *a1;
          sub_1001D49A8(*a1, __p[1], *&v36[2] - __p[1]);
          sub_1001D4FE0(v27, v22, 48);
        }

        else
        {
          v27 = *a1;
          sub_1001D49A8(*a1, __p[1], *v36 - __p[1]);
          sub_1001D4FE0(v27, v22, 48);
          sub_1001D49A8(v27, v28, v19 - v28);
        }
      }

      else
      {
        v23 = *a1;
        if ((a2 & 7) == 4)
        {
          if (__p[1] != v35)
          {
            sub_1001D9040(v23, *__p[1]);
            ++v20;
          }

          v24 = a2 & 0xB8 | 3;
          v25 = 48;
        }

        else
        {
          v25 = BYTE4(a3);
          v24 = a2;
        }

        v29 = a2 & 0xFFFFFFFFFFFFFF00 | v24;
        v30 = a3 & 0xFFFFFF00FFFFFFFFLL | (v25 << 32);
        if (v22)
        {
          v31 = sub_1001D8C10(v20, *&v36[2], v23, v29, v30, v21, *v36, v22);
        }

        else
        {
          v31 = sub_1001D48CC(v20, *&v36[2] - v20, v23, v29, v30, v21);
        }

        v27 = v31;
      }
    }

    if (__p[0] >= 0x101)
    {
      operator delete(__p[1]);
    }

    return v27;
  }
}

void sub_1001D8484(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, void *__p)
{
  if (a16 >= 0x101)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1001D84C0(void *a1, uint64_t a2, unint64_t a3, char a4, int a5)
{
  __src = 0;
  if (a4)
  {
    v5 = 45;
  }

  else
  {
    v6 = (a2 >> 3) & 3;
    if (v6 == 2)
    {
      v5 = 43;
    }

    else
    {
      if (v6 != 3)
      {
        p_src = &__src;
        goto LABEL_8;
      }

      v5 = 32;
    }
  }

  p_src = &__src + 1;
  LOBYTE(__src) = v5;
LABEL_8:
  if (BYTE1(a2) <= 0x10u && ((1 << SBYTE1(a2)) & 0x15000) != 0)
  {
    v8 = 6;
  }

  else
  {
    v8 = 6;
    if (BYTE1(a2) != 18)
    {
      v8 = 0;
    }
  }

  v9 = 3;
  if (!a5)
  {
    v9 = 0;
  }

  v10 = &aInfnaninfnan[v8 + v9];
  *p_src = *v10;
  p_src[2] = v10[2];
  if ((a2 & 7) == 4)
  {
    v11 = a2 & 0xF8 | 3;
  }

  else
  {
    v11 = a2;
  }

  return sub_1001D48CC(&__src, p_src - &__src + 3, a1, a2 & 0xFFFFFFFFFFFFFF00 | v11, a3, p_src - &__src + 3);
}

std::__1 *sub_1001D85CC@<X0>(uint64_t a1@<X0>, char a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, std::__1 **a6@<X8>, float a7@<S0>)
{
  v9 = *(a1 + 16);
  if (a2)
  {
    v10 = 45;
  }

  else if (a4 == 2)
  {
    v10 = 43;
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_8;
    }

    v10 = 32;
  }

  *v9 = v10;
  v9 = (v9 + 1);
LABEL_8:
  if (a5 > 14)
  {
    if ((a5 - 15) < 2)
    {
      v12 = *a1;
      *a6 = v9;
      result = std::to_chars();
      a6[2] = result;
      a6[3] = result;
      if (v12)
      {
        v13 = v12 + 1;
      }

      else
      {
        v13 = 0;
      }

      a6[1] = (result - v13);
      return result;
    }

    if (a5 != 17)
    {
      *a6 = 0u;
      *(a6 + 1) = 0u;
      result = sub_1001D8CF0(a1, v9, a6);
      v14 = a6[2];
      if (v14 == a6[3])
      {
        return result;
      }

      goto LABEL_35;
    }

    goto LABEL_25;
  }

  if (a5 <= 11)
  {
    if (a5)
    {
      if (a3)
      {
        v16 = *a1;
      }

      else
      {
        v16 = -1;
      }

      return sub_1001D8E84(v16, v9, a6);
    }

    if (!a3)
    {

      return sub_1001D8DD4(v9, a1, v9, a6, a7);
    }

LABEL_25:

    return sub_1001D8CF0(a1, v9, a6);
  }

  if (a5 != 12)
  {
    if (a5 == 13)
    {

      return sub_1001D8F84(v9, a6);
    }

    *a6 = 0u;
    *(a6 + 1) = 0u;
    result = sub_1001D8F84(v9, a6);
    v14 = a6[2];
LABEL_35:
    *v14 = 69;
    return result;
  }

  if (a3)
  {
    v15 = *a1;
  }

  else
  {
    v15 = -1;
  }

  return sub_1001D8F20(v15, v9, a6);
}

void *sub_1001D879C(void *a1, uint64_t a2, char **a3, std::locale *this, uint64_t a5, unint64_t a6)
{
  v11 = std::locale::use_facet(this, &std::numpunct<char>::id);
  memset(&__p, 0, sizeof(__p));
  (v11->__vftable[1].__on_zero_shared)(&__p);
  v12 = a3[2];
  v13 = *a3;
  if (v12 >= a3[1])
  {
    v12 = a3[1];
  }

  v50 = v12 - v13;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
    if (!__p.__r_.__value_.__l.__size_)
    {
      goto LABEL_29;
    }

    p_p = __p.__r_.__value_.__r.__words[0];
    if (v50 <= *__p.__r_.__value_.__l.__data_)
    {
      *__p.__r_.__value_.__l.__data_ = 0;
      __p.__r_.__value_.__l.__size_ = 0;
      goto LABEL_29;
    }

    v16 = __p.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_29;
    }

    if (v50 <= __p.__r_.__value_.__s.__data_[0])
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_29;
    }

    p_p = &__p;
    size = __p.__r_.__value_.__l.__size_;
    v16 = __p.__r_.__value_.__r.__words[0];
  }

  memset(&v51, 0, sizeof(v51));
  v17 = (v16 + size);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &__p + SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  v18 = p_p->__r_.__value_.__s.__data_[0];
  v19 = v50 - p_p->__r_.__value_.__s.__data_[0];
  if (v19 >= 1)
  {
    v20 = (v17 - 1);
    do
    {
      std::string::push_back(&v51, v18);
      if (p_p == v20)
      {
        v18 = p_p->__r_.__value_.__s.__data_[0];
      }

      else
      {
        v21 = (&p_p->__r_.__value_.__l.__data_ + 1);
        v22 = &p_p->__r_.__value_.__s.__data_[1];
        do
        {
          v23 = *v22++;
          v18 = v23;
          if (v23)
          {
            v24 = 1;
          }

          else
          {
            v24 = v21 == v20;
          }

          v21 = v22;
        }

        while (!v24);
        p_p = (v22 - 1);
      }

      v19 -= v18;
    }

    while (v19 > 0);
  }

  std::string::push_back(&v51, v18 + v19);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v51;
LABEL_29:
  v25 = HIDWORD(a6);
  v26 = *(a2 + 16);
  v27 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v27 = __p.__r_.__value_.__l.__size_;
  }

  v28 = a3[3] - v26 + *(a2 + 4) + v27 - (v27 != 0);
  v29 = a5 & 7;
  v30 = (a5 >> 32) - v28;
  if (a5 >> 32 <= v28)
  {
    *v49 = 0;
    v30 = 0;
    v31 = v25;
    goto LABEL_45;
  }

  if (v29 == 4)
  {
    v31 = 48;
  }

  else
  {
    v31 = v25;
  }

  if (v29 == 4)
  {
    v32 = 3;
  }

  else
  {
    v32 = a5 & 7;
  }

  if (v32 > 1)
  {
    if (v32 != 3)
    {
      *v49 = v30 - (v30 >> 1);
      v30 >>= 1;
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (!v32)
  {
LABEL_43:
    *v49 = 0;
    goto LABEL_45;
  }

  *v49 = (a5 >> 32) - v28;
  v30 = 0;
LABEL_45:
  if (v29 == 4 && v13 != v26)
  {
    sub_1001D9040(a1, *v26);
  }

  v33 = v25 & 0xFFFFFF00 | v31;
  v34 = sub_1001D4F60(a1, v30, v33);
  v35 = v34;
  if (v29 != 4)
  {
    v36 = *(a2 + 16);
    if (v13 != v36)
    {
      sub_1001D9040(v34, *v36);
    }
  }

  v37 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (*(&__p.__r_.__value_.__s + 23))
    {
      v38 = &__p;
      goto LABEL_56;
    }

LABEL_59:
    sub_1001D49A8(v35, v13, v50);
    goto LABEL_60;
  }

  v37 = __p.__r_.__value_.__l.__size_;
  if (!__p.__r_.__value_.__l.__size_)
  {
    goto LABEL_59;
  }

  v38 = __p.__r_.__value_.__r.__words[0];
LABEL_56:
  v39 = v38 + v37;
  v40 = (v11->__vftable[1].~facet_0)(v11);
  v41 = &v38->__r_.__value_.__s.__data_[1];
  for (i = v39; ; v39 = i)
  {
    v43 = *--i;
    sub_1001D49A8(v35, v13, v43);
    if (v39 == v41)
    {
      break;
    }

    v13 += *i;
    sub_1001D9040(v35, v40);
  }

LABEL_60:
  v44 = a3[1];
  if (v44 != a3[3])
  {
    v45 = (v11->__vftable[1].~facet)(v11);
    sub_1001D9040(v35, v45);
    sub_1001D49A8(v35, a3[1] + 1, a3[2] - (a3[1] + 1));
    sub_1001D4FE0(v35, *(a2 + 4), 48);
    v44 = a3[3];
  }

  v46 = a3[2];
  if (v46 != v44)
  {
    sub_1001D49A8(v35, v46, v44 - v46);
  }

  v47 = sub_1001D4F60(v35, *v49, v33);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v47;
}

void sub_1001D8BA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1001D8C10(char *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, char *a7, size_t a8)
{
  v12 = (a4 >> 32) - (a6 + a8);
  if ((a4 & 7u) <= 1)
  {
    if ((a4 & 7) != 0)
    {
      v13 = 0;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if ((a4 & 7) == 3)
  {
LABEL_5:
    v13 = (a4 >> 32) - (a6 + a8);
    v12 = 0;
    goto LABEL_7;
  }

  v13 = v12 >> 1;
  v12 -= v12 >> 1;
LABEL_7:
  v14 = HIDWORD(a5);
  v15 = sub_1001D4F60(a3, v13, SHIDWORD(a5));
  sub_1001D49A8(v15, a1, a7 - a1);
  sub_1001D4FE0(v15, a8, 48);
  sub_1001D49A8(v15, a7, a2 - a7);

  return sub_1001D4F60(v15, v12, v14);
}

_BYTE *sub_1001D8CF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  *(a1 + 4) = 0;
  a3[1] = 0;
  v5 = a3 + 1;
  a3[2] = 0;
  *a3 = a2;
  v6 = std::to_chars();
  a3[3] = v6;
  result = (a2 + 1);
  if (a2 + 1 == v6)
  {
    *v5 = v6;
    v11 = 2;
    goto LABEL_13;
  }

  v8 = v6 - result;
  if (v6 - result < 4)
  {
LABEL_8:
    a3[2] = v6;
  }

  else
  {
    v9 = 6;
    if (v8 < 6)
    {
      v9 = v6 - result;
    }

    v10 = -v9;
    while (*(v6 + v10) != 101)
    {
      if (++v10 == -3)
      {
        goto LABEL_8;
      }
    }

    a3[2] = v6 + v10;
    if (v10)
    {
      if (*result == 46)
      {
        v6 = a2 + 1;
      }

      goto LABEL_11;
    }
  }

  result = memchr(result, 46, v8);
  if (result)
  {
    v6 = result;
  }

LABEL_11:
  v11 = 1;
LABEL_13:
  a3[v11] = v6;
  return result;
}

_BYTE *sub_1001D8DD4@<X0>(std::__1 *this@<X1>, uint64_t a2@<X0>, char *a3@<X2>, void *a4@<X8>, float a5@<S0>)
{
  *a4 = this;
  v7 = std::to_chars(this, (*(a2 + 16) + *(a2 + 8)), a3, a5);
  v8 = v7;
  a4[3] = v7;
  v9 = v7 - this;
  if (v7 - this < 4)
  {
LABEL_7:
    v11 = v7;
  }

  else
  {
    if (v9 >= 6)
    {
      v9 = 6;
    }

    v10 = -v9;
    while (*(v7 + v10) != 101)
    {
      if (++v10 == -3)
      {
        goto LABEL_7;
      }
    }

    v11 = (v7 + v10);
  }

  a4[2] = v11;
  result = memchr(this + 1, 46, v11 - (this + 1));
  if (result)
  {
    v13 = result;
  }

  else
  {
    v13 = v11;
  }

  if (v13 == v11)
  {
    v13 = v8;
  }

  a4[1] = v13;
  return result;
}

uint64_t sub_1001D8E84@<X0>(int a1@<W1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  *a3 = a2;
  if (a1 == -1)
  {
    result = std::to_chars();
  }

  else
  {
    result = std::to_chars();
  }

  a3[3] = result;
  v7 = *(a2 + 1);
  v6 = a2 + 1;
  if (v7 == 46)
  {
    v8 = result - 2;
    v9 = memchr((result - 5), 112, 3uLL);
    result = v6;
    if (v9)
    {
      v6 = v9;
    }

    else
    {
      v6 = v8;
    }
  }

  a3[1] = result;
  a3[2] = v6;
  return result;
}

uint64_t sub_1001D8F20@<X0>(int a1@<W1>, uint64_t a2@<X2>, char **a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 1) = 0u;
  result = sub_1001D8E84(a1, a2, a3);
  v5 = *a3;
  v6 = a3[2];
  if (*a3 != v6)
  {
    do
    {
      result = sub_1001D5988(*v5);
      *v5++ = result;
    }

    while (v5 != v6);
    v6 = a3[2];
  }

  *v6 = 80;
  return result;
}

uint64_t sub_1001D8F84@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  a2[1] = 0;
  v4 = a2 + 1;
  a2[2] = 0;
  *a2 = a1;
  result = std::to_chars();
  a2[3] = result;
  v6 = a1 + 1;
  if (*(a1 + 1) == 46)
  {
    *v4 = v6;
    v7 = result - a1 - 2;
    if (v7 < 4)
    {
LABEL_8:
      v6 = result;
    }

    else
    {
      if (v7 >= 6)
      {
        v7 = 6;
      }

      v8 = -v7;
      while (*(result + v8) != 101)
      {
        if (++v8 == -3)
        {
          goto LABEL_8;
        }
      }

      v6 = result + v8;
    }
  }

  else
  {
    *v4 = result;
  }

  a2[2] = v6;
  return result;
}

uint64_t sub_1001D9040(uint64_t result, char a2)
{
  v2 = *(result + 32);
  if (!v2 || (v4 = *v2, v3 = v2[1], v2[1] = v3 + 1, v3 < v4))
  {
    v5 = *result;
    v6 = *(result + 16);
    *(result + 16) = v6 + 1;
    *(v5 + v6) = a2;
    if (*(result + 16) == *(result + 8))
    {
      return (*(result + 24))(result, 2);
    }
  }

  return result;
}

void *sub_1001D908C(void **a1, uint64_t a2, unint64_t a3, double a4)
{
  v7 = *&a4 >> 63;
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v35 = *a1;

    return sub_1001D84C0(v35, a2, a3, a4 < 0.0, 0);
  }

  else
  {
    v8 = a2 >> 8;
    v9 = fabs(a4);
    bzero(&v41, 0x410uLL);
    if (a3 == -1)
    {
      v10 = 1074;
    }

    else
    {
      v10 = a3;
    }

    v39 = v10;
    v40 = 0;
    if (v10 >= 1075)
    {
      v39 = 1074;
      v40 = v10 - 1074;
      v41 = 1390;
      goto LABEL_8;
    }

    v41 = v10 + 316;
    if ((v10 + 316) >= 0x401)
    {
LABEL_8:
      operator new();
    }

    __p = &v43;
    v37 = 0u;
    *v38 = 0u;
    sub_1001D94C0(&v39, v7, (a3 & 0x80000000) == 0, (a2 >> 3) & 3, v8, &v37, v9);
    if ((a2 & 0x20) != 0)
    {
      v11 = *(&v37 + 1);
      v12 = *&v38[2];
      if (*(&v37 + 1) == *&v38[2])
      {
        ++*&v38[2];
        *v12 = 46;
        v13 = *v38;
        v14 = *&v38[2] - 1;
        if (*v38 != *&v38[2] - 1)
        {
          if (*v38 + 1 == v14)
          {
            v16 = **v38;
            **v38 = *(*v38 + 1);
            v13[1] = v16;
          }

          else
          {
            v15 = *(*&v38[2] - 1);
            memmove((*v38 + 1), *v38, v14 - *v38);
            *v13 = v15;
          }
        }

        v11 = *v38;
        *(&v37 + 1) = (*v38)++;
      }

      if ((BYTE1(a2) - 17) <= 1u)
      {
        if (a3 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = a3;
        }

        if ((a3 & 0x80000000) != 0)
        {
          v17 = 6;
        }

        if (*v38 == *&v38[2])
        {
          v18 = v37 - v11;
        }

        else
        {
          v18 = -1;
        }

        v19 = v18 + v17;
        v20 = ~v11 + *v38;
        if (v20 < v19)
        {
          v40 += v19 - v20;
        }
      }
    }

    if ((a2 & 0x40) != 0)
    {
      v28 = *a1;
      sub_1001D46A8(a1, &v36);
      v29 = sub_1001D9690(v28, &v39, &v37, &v36, a2, a3);
      std::locale::~locale(&v36);
    }

    else
    {
      v21 = *&v38[2];
      v22 = __p;
      v23 = *&v38[2] - __p;
      v24 = v40;
      if (*&v38[2] - __p + v40 >= a2 >> 32)
      {
        if (!v40 || (v30 = *v38, *v38 == *&v38[2]))
        {
          v29 = *a1;
          sub_1001D49A8(*a1, __p, *&v38[2] - __p);
          sub_1001D4FE0(v29, v24, 48);
        }

        else
        {
          v29 = *a1;
          sub_1001D49A8(*a1, __p, *v38 - __p);
          sub_1001D4FE0(v29, v24, 48);
          sub_1001D49A8(v29, v30, v21 - v30);
        }
      }

      else
      {
        v25 = *a1;
        if ((a2 & 7) == 4)
        {
          if (__p != v37)
          {
            sub_1001D9040(v25, *__p);
            ++v22;
          }

          v26 = a2 & 0xB8 | 3;
          v27 = 48;
        }

        else
        {
          v27 = BYTE4(a3);
          v26 = a2;
        }

        v31 = a2 & 0xFFFFFFFFFFFFFF00 | v26;
        v32 = a3 & 0xFFFFFF00FFFFFFFFLL | (v27 << 32);
        if (v24)
        {
          v33 = sub_1001D8C10(v22, *&v38[2], v25, v31, v32, v23, *v38, v24);
        }

        else
        {
          v33 = sub_1001D48CC(v22, *&v38[2] - v22, v25, v31, v32, v23);
        }

        v29 = v33;
      }
    }

    if (v41 >= 0x401)
    {
      operator delete(__p);
    }

    return v29;
  }
}

void sub_1001D9484(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, void *__p)
{
  if (a16 >= 0x401)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::__1 *sub_1001D94C0@<X0>(uint64_t a1@<X0>, char a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, std::__1 **a6@<X8>, double a7@<D0>)
{
  v9 = *(a1 + 16);
  if (a2)
  {
    v10 = 45;
  }

  else if (a4 == 2)
  {
    v10 = 43;
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_8;
    }

    v10 = 32;
  }

  *v9 = v10;
  v9 = (v9 + 1);
LABEL_8:
  if (a5 > 14)
  {
    if ((a5 - 15) < 2)
    {
      v12 = *a1;
      *a6 = v9;
      result = std::to_chars();
      a6[2] = result;
      a6[3] = result;
      if (v12)
      {
        v13 = v12 + 1;
      }

      else
      {
        v13 = 0;
      }

      a6[1] = (result - v13);
      return result;
    }

    if (a5 != 17)
    {
      *a6 = 0u;
      *(a6 + 1) = 0u;
      result = sub_1001D9B04(a1, v9, a6);
      v14 = a6[2];
      if (v14 == a6[3])
      {
        return result;
      }

      goto LABEL_35;
    }

    goto LABEL_25;
  }

  if (a5 <= 11)
  {
    if (a5)
    {
      if (a3)
      {
        v16 = *a1;
      }

      else
      {
        v16 = -1;
      }

      return sub_1001D9C98(v16, v9, a6);
    }

    if (!a3)
    {

      return sub_1001D9BE8(v9, a1, v9, a6, a7);
    }

LABEL_25:

    return sub_1001D9B04(a1, v9, a6);
  }

  if (a5 != 12)
  {
    if (a5 == 13)
    {

      return sub_1001D9D98(v9, a6);
    }

    *a6 = 0u;
    *(a6 + 1) = 0u;
    result = sub_1001D9D98(v9, a6);
    v14 = a6[2];
LABEL_35:
    *v14 = 69;
    return result;
  }

  if (a3)
  {
    v15 = *a1;
  }

  else
  {
    v15 = -1;
  }

  return sub_1001D9D34(v15, v9, a6);
}

void *sub_1001D9690(void *a1, uint64_t a2, char **a3, std::locale *this, uint64_t a5, unint64_t a6)
{
  v11 = std::locale::use_facet(this, &std::numpunct<char>::id);
  memset(&__p, 0, sizeof(__p));
  (v11->__vftable[1].__on_zero_shared)(&__p);
  v12 = a3[2];
  v13 = *a3;
  if (v12 >= a3[1])
  {
    v12 = a3[1];
  }

  v50 = v12 - v13;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
    if (!__p.__r_.__value_.__l.__size_)
    {
      goto LABEL_29;
    }

    p_p = __p.__r_.__value_.__r.__words[0];
    if (v50 <= *__p.__r_.__value_.__l.__data_)
    {
      *__p.__r_.__value_.__l.__data_ = 0;
      __p.__r_.__value_.__l.__size_ = 0;
      goto LABEL_29;
    }

    v16 = __p.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_29;
    }

    if (v50 <= __p.__r_.__value_.__s.__data_[0])
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_29;
    }

    p_p = &__p;
    size = __p.__r_.__value_.__l.__size_;
    v16 = __p.__r_.__value_.__r.__words[0];
  }

  memset(&v51, 0, sizeof(v51));
  v17 = (v16 + size);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &__p + SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  v18 = p_p->__r_.__value_.__s.__data_[0];
  v19 = v50 - p_p->__r_.__value_.__s.__data_[0];
  if (v19 >= 1)
  {
    v20 = (v17 - 1);
    do
    {
      std::string::push_back(&v51, v18);
      if (p_p == v20)
      {
        v18 = p_p->__r_.__value_.__s.__data_[0];
      }

      else
      {
        v21 = (&p_p->__r_.__value_.__l.__data_ + 1);
        v22 = &p_p->__r_.__value_.__s.__data_[1];
        do
        {
          v23 = *v22++;
          v18 = v23;
          if (v23)
          {
            v24 = 1;
          }

          else
          {
            v24 = v21 == v20;
          }

          v21 = v22;
        }

        while (!v24);
        p_p = (v22 - 1);
      }

      v19 -= v18;
    }

    while (v19 > 0);
  }

  std::string::push_back(&v51, v18 + v19);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v51;
LABEL_29:
  v25 = HIDWORD(a6);
  v26 = *(a2 + 16);
  v27 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v27 = __p.__r_.__value_.__l.__size_;
  }

  v28 = a3[3] - v26 + *(a2 + 4) + v27 - (v27 != 0);
  v29 = a5 & 7;
  v30 = (a5 >> 32) - v28;
  if (a5 >> 32 <= v28)
  {
    *v49 = 0;
    v30 = 0;
    v31 = v25;
    goto LABEL_45;
  }

  if (v29 == 4)
  {
    v31 = 48;
  }

  else
  {
    v31 = v25;
  }

  if (v29 == 4)
  {
    v32 = 3;
  }

  else
  {
    v32 = a5 & 7;
  }

  if (v32 > 1)
  {
    if (v32 != 3)
    {
      *v49 = v30 - (v30 >> 1);
      v30 >>= 1;
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (!v32)
  {
LABEL_43:
    *v49 = 0;
    goto LABEL_45;
  }

  *v49 = (a5 >> 32) - v28;
  v30 = 0;
LABEL_45:
  if (v29 == 4 && v13 != v26)
  {
    sub_1001D9040(a1, *v26);
  }

  v33 = v25 & 0xFFFFFF00 | v31;
  v34 = sub_1001D4F60(a1, v30, v33);
  v35 = v34;
  if (v29 != 4)
  {
    v36 = *(a2 + 16);
    if (v13 != v36)
    {
      sub_1001D9040(v34, *v36);
    }
  }

  v37 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (*(&__p.__r_.__value_.__s + 23))
    {
      v38 = &__p;
      goto LABEL_56;
    }

LABEL_59:
    sub_1001D49A8(v35, v13, v50);
    goto LABEL_60;
  }

  v37 = __p.__r_.__value_.__l.__size_;
  if (!__p.__r_.__value_.__l.__size_)
  {
    goto LABEL_59;
  }

  v38 = __p.__r_.__value_.__r.__words[0];
LABEL_56:
  v39 = v38 + v37;
  v40 = (v11->__vftable[1].~facet_0)(v11);
  v41 = &v38->__r_.__value_.__s.__data_[1];
  for (i = v39; ; v39 = i)
  {
    v43 = *--i;
    sub_1001D49A8(v35, v13, v43);
    if (v39 == v41)
    {
      break;
    }

    v13 += *i;
    sub_1001D9040(v35, v40);
  }

LABEL_60:
  v44 = a3[1];
  if (v44 != a3[3])
  {
    v45 = (v11->__vftable[1].~facet)(v11);
    sub_1001D9040(v35, v45);
    sub_1001D49A8(v35, a3[1] + 1, a3[2] - (a3[1] + 1));
    sub_1001D4FE0(v35, *(a2 + 4), 48);
    v44 = a3[3];
  }

  v46 = a3[2];
  if (v46 != v44)
  {
    sub_1001D49A8(v35, v46, v44 - v46);
  }

  v47 = sub_1001D4F60(v35, *v49, v33);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v47;
}

void sub_1001D9A9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1001D9B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  *(a1 + 4) = 0;
  a3[1] = 0;
  v5 = a3 + 1;
  a3[2] = 0;
  *a3 = a2;
  v6 = std::to_chars();
  a3[3] = v6;
  result = (a2 + 1);
  if (a2 + 1 == v6)
  {
    *v5 = v6;
    v11 = 2;
    goto LABEL_13;
  }

  v8 = v6 - result;
  if (v6 - result < 4)
  {
LABEL_8:
    a3[2] = v6;
  }

  else
  {
    v9 = 6;
    if (v8 < 6)
    {
      v9 = v6 - result;
    }

    v10 = -v9;
    while (*(v6 + v10) != 101)
    {
      if (++v10 == -3)
      {
        goto LABEL_8;
      }
    }

    a3[2] = v6 + v10;
    if (v10)
    {
      if (*result == 46)
      {
        v6 = a2 + 1;
      }

      goto LABEL_11;
    }
  }

  result = memchr(result, 46, v8);
  if (result)
  {
    v6 = result;
  }

LABEL_11:
  v11 = 1;
LABEL_13:
  a3[v11] = v6;
  return result;
}

_BYTE *sub_1001D9BE8@<X0>(std::__1 *this@<X1>, uint64_t a2@<X0>, char *a3@<X2>, void *a4@<X8>, double a5@<D0>)
{
  *a4 = this;
  v7 = std::to_chars(this, (*(a2 + 16) + *(a2 + 8)), a3, a5);
  v8 = v7;
  a4[3] = v7;
  v9 = v7 - this;
  if (v7 - this < 4)
  {
LABEL_7:
    v11 = v7;
  }

  else
  {
    if (v9 >= 6)
    {
      v9 = 6;
    }

    v10 = -v9;
    while (*(v7 + v10) != 101)
    {
      if (++v10 == -3)
      {
        goto LABEL_7;
      }
    }

    v11 = (v7 + v10);
  }

  a4[2] = v11;
  result = memchr(this + 1, 46, v11 - (this + 1));
  if (result)
  {
    v13 = result;
  }

  else
  {
    v13 = v11;
  }

  if (v13 == v11)
  {
    v13 = v8;
  }

  a4[1] = v13;
  return result;
}

uint64_t sub_1001D9C98@<X0>(int a1@<W1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  *a3 = a2;
  if (a1 == -1)
  {
    result = std::to_chars();
  }

  else
  {
    result = std::to_chars();
  }

  a3[3] = result;
  v7 = *(a2 + 1);
  v6 = a2 + 1;
  if (v7 == 46)
  {
    v8 = result - 2;
    v9 = memchr((result - 6), 112, 4uLL);
    result = v6;
    if (v9)
    {
      v6 = v9;
    }

    else
    {
      v6 = v8;
    }
  }

  a3[1] = result;
  a3[2] = v6;
  return result;
}

uint64_t sub_1001D9D34@<X0>(int a1@<W1>, uint64_t a2@<X2>, char **a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 1) = 0u;
  result = sub_1001D9C98(a1, a2, a3);
  v5 = *a3;
  v6 = a3[2];
  if (*a3 != v6)
  {
    do
    {
      result = sub_1001D5988(*v5);
      *v5++ = result;
    }

    while (v5 != v6);
    v6 = a3[2];
  }

  *v6 = 80;
  return result;
}

uint64_t sub_1001D9D98@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  a2[1] = 0;
  v4 = a2 + 1;
  a2[2] = 0;
  *a2 = a1;
  result = std::to_chars();
  a2[3] = result;
  v6 = a1 + 1;
  if (*(a1 + 1) == 46)
  {
    *v4 = v6;
    v7 = result - a1 - 2;
    if (v7 < 4)
    {
LABEL_8:
      v6 = result;
    }

    else
    {
      if (v7 >= 6)
      {
        v7 = 6;
      }

      v8 = -v7;
      while (*(result + v8) != 101)
      {
        if (++v8 == -3)
        {
          goto LABEL_8;
        }
      }

      v6 = result + v8;
    }
  }

  else
  {
    *v4 = result;
  }

  a2[2] = v6;
  return result;
}

void *sub_1001D9E54(void **a1, uint64_t a2, unint64_t a3, double a4)
{
  v7 = *&a4 >> 63;
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v35 = *a1;

    return sub_1001D84C0(v35, a2, a3, a4 < 0.0, 0);
  }

  else
  {
    v8 = a2 >> 8;
    v9 = fabs(a4);
    bzero(&v41, 0x410uLL);
    if (a3 == -1)
    {
      v10 = 1074;
    }

    else
    {
      v10 = a3;
    }

    v39 = v10;
    v40 = 0;
    if (v10 >= 1075)
    {
      v39 = 1074;
      v40 = v10 - 1074;
      v41 = 1390;
      goto LABEL_8;
    }

    v41 = v10 + 316;
    if ((v10 + 316) >= 0x401)
    {
LABEL_8:
      operator new();
    }

    __p = &v43;
    v37 = 0u;
    *v38 = 0u;
    sub_1001DA288(&v39, v7, (a3 & 0x80000000) == 0, (a2 >> 3) & 3, v8, &v37, v9);
    if ((a2 & 0x20) != 0)
    {
      v11 = *(&v37 + 1);
      v12 = *&v38[2];
      if (*(&v37 + 1) == *&v38[2])
      {
        ++*&v38[2];
        *v12 = 46;
        v13 = *v38;
        v14 = *&v38[2] - 1;
        if (*v38 != *&v38[2] - 1)
        {
          if (*v38 + 1 == v14)
          {
            v16 = **v38;
            **v38 = *(*v38 + 1);
            v13[1] = v16;
          }

          else
          {
            v15 = *(*&v38[2] - 1);
            memmove((*v38 + 1), *v38, v14 - *v38);
            *v13 = v15;
          }
        }

        v11 = *v38;
        *(&v37 + 1) = (*v38)++;
      }

      if ((BYTE1(a2) - 17) <= 1u)
      {
        if (a3 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = a3;
        }

        if ((a3 & 0x80000000) != 0)
        {
          v17 = 6;
        }

        if (*v38 == *&v38[2])
        {
          v18 = v37 - v11;
        }

        else
        {
          v18 = -1;
        }

        v19 = v18 + v17;
        v20 = ~v11 + *v38;
        if (v20 < v19)
        {
          v40 += v19 - v20;
        }
      }
    }

    if ((a2 & 0x40) != 0)
    {
      v28 = *a1;
      sub_1001D46A8(a1, &v36);
      v29 = sub_1001D9690(v28, &v39, &v37, &v36, a2, a3);
      std::locale::~locale(&v36);
    }

    else
    {
      v21 = *&v38[2];
      v22 = __p;
      v23 = *&v38[2] - __p;
      v24 = v40;
      if (*&v38[2] - __p + v40 >= a2 >> 32)
      {
        if (!v40 || (v30 = *v38, *v38 == *&v38[2]))
        {
          v29 = *a1;
          sub_1001D49A8(*a1, __p, *&v38[2] - __p);
          sub_1001D4FE0(v29, v24, 48);
        }

        else
        {
          v29 = *a1;
          sub_1001D49A8(*a1, __p, *v38 - __p);
          sub_1001D4FE0(v29, v24, 48);
          sub_1001D49A8(v29, v30, v21 - v30);
        }
      }

      else
      {
        v25 = *a1;
        if ((a2 & 7) == 4)
        {
          if (__p != v37)
          {
            sub_1001D9040(v25, *__p);
            ++v22;
          }

          v26 = a2 & 0xB8 | 3;
          v27 = 48;
        }

        else
        {
          v27 = BYTE4(a3);
          v26 = a2;
        }

        v31 = a2 & 0xFFFFFFFFFFFFFF00 | v26;
        v32 = a3 & 0xFFFFFF00FFFFFFFFLL | (v27 << 32);
        if (v24)
        {
          v33 = sub_1001D8C10(v22, *&v38[2], v25, v31, v32, v23, *v38, v24);
        }

        else
        {
          v33 = sub_1001D48CC(v22, *&v38[2] - v22, v25, v31, v32, v23);
        }

        v29 = v33;
      }
    }

    if (v41 >= 0x401)
    {
      operator delete(__p);
    }

    return v29;
  }
}

void sub_1001DA24C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, void *__p)
{
  if (a16 >= 0x401)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::__1 *sub_1001DA288@<X0>(uint64_t a1@<X0>, char a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, std::__1 **a6@<X8>, long double a7@<D0>)
{
  v9 = *(a1 + 16);
  if (a2)
  {
    v10 = 45;
  }

  else if (a4 == 2)
  {
    v10 = 43;
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_8;
    }

    v10 = 32;
  }

  *v9 = v10;
  v9 = (v9 + 1);
LABEL_8:
  if (a5 > 14)
  {
    if ((a5 - 15) < 2)
    {
      v12 = *a1;
      *a6 = v9;
      result = std::to_chars();
      a6[2] = result;
      a6[3] = result;
      if (v12)
      {
        v13 = v12 + 1;
      }

      else
      {
        v13 = 0;
      }

      a6[1] = (result - v13);
      return result;
    }

    if (a5 != 17)
    {
      *a6 = 0u;
      *(a6 + 1) = 0u;
      result = sub_1001DA458(a1, v9, a6);
      v14 = a6[2];
      if (v14 == a6[3])
      {
        return result;
      }

      goto LABEL_35;
    }

    goto LABEL_25;
  }

  if (a5 <= 11)
  {
    if (a5)
    {
      if (a3)
      {
        v16 = *a1;
      }

      else
      {
        v16 = -1;
      }

      return sub_1001DA5EC(v16, v9, a6);
    }

    if (!a3)
    {

      return sub_1001DA53C(v9, a1, v9, a6, a7);
    }

LABEL_25:

    return sub_1001DA458(a1, v9, a6);
  }

  if (a5 != 12)
  {
    if (a5 == 13)
    {

      return sub_1001DA6EC(v9, a6);
    }

    *a6 = 0u;
    *(a6 + 1) = 0u;
    result = sub_1001DA6EC(v9, a6);
    v14 = a6[2];
LABEL_35:
    *v14 = 69;
    return result;
  }

  if (a3)
  {
    v15 = *a1;
  }

  else
  {
    v15 = -1;
  }

  return sub_1001DA688(v15, v9, a6);
}

_BYTE *sub_1001DA458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  *(a1 + 4) = 0;
  a3[1] = 0;
  v5 = a3 + 1;
  a3[2] = 0;
  *a3 = a2;
  v6 = std::to_chars();
  a3[3] = v6;
  result = (a2 + 1);
  if (a2 + 1 == v6)
  {
    *v5 = v6;
    v11 = 2;
    goto LABEL_13;
  }

  v8 = v6 - result;
  if (v6 - result < 4)
  {
LABEL_8:
    a3[2] = v6;
  }

  else
  {
    v9 = 6;
    if (v8 < 6)
    {
      v9 = v6 - result;
    }

    v10 = -v9;
    while (*(v6 + v10) != 101)
    {
      if (++v10 == -3)
      {
        goto LABEL_8;
      }
    }

    a3[2] = v6 + v10;
    if (v10)
    {
      if (*result == 46)
      {
        v6 = a2 + 1;
      }

      goto LABEL_11;
    }
  }

  result = memchr(result, 46, v8);
  if (result)
  {
    v6 = result;
  }

LABEL_11:
  v11 = 1;
LABEL_13:
  a3[v11] = v6;
  return result;
}

_BYTE *sub_1001DA53C@<X0>(std::__1 *this@<X1>, uint64_t a2@<X0>, char *a3@<X2>, void *a4@<X8>, long double a5@<D0>)
{
  *a4 = this;
  v7 = std::to_chars(this, (*(a2 + 16) + *(a2 + 8)), a3, a5);
  v8 = v7;
  a4[3] = v7;
  v9 = v7 - this;
  if (v7 - this < 4)
  {
LABEL_7:
    v11 = v7;
  }

  else
  {
    if (v9 >= 6)
    {
      v9 = 6;
    }

    v10 = -v9;
    while (*(v7 + v10) != 101)
    {
      if (++v10 == -3)
      {
        goto LABEL_7;
      }
    }

    v11 = (v7 + v10);
  }

  a4[2] = v11;
  result = memchr(this + 1, 46, v11 - (this + 1));
  if (result)
  {
    v13 = result;
  }

  else
  {
    v13 = v11;
  }

  if (v13 == v11)
  {
    v13 = v8;
  }

  a4[1] = v13;
  return result;
}

uint64_t sub_1001DA5EC@<X0>(int a1@<W1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  *a3 = a2;
  if (a1 == -1)
  {
    result = std::to_chars();
  }

  else
  {
    result = std::to_chars();
  }

  a3[3] = result;
  v7 = *(a2 + 1);
  v6 = a2 + 1;
  if (v7 == 46)
  {
    v8 = result - 2;
    v9 = memchr((result - 6), 112, 4uLL);
    result = v6;
    if (v9)
    {
      v6 = v9;
    }

    else
    {
      v6 = v8;
    }
  }

  a3[1] = result;
  a3[2] = v6;
  return result;
}

uint64_t sub_1001DA688@<X0>(int a1@<W1>, uint64_t a2@<X2>, char **a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 1) = 0u;
  result = sub_1001DA5EC(a1, a2, a3);
  v5 = *a3;
  v6 = a3[2];
  if (*a3 != v6)
  {
    do
    {
      result = sub_1001D5988(*v5);
      *v5++ = result;
    }

    while (v5 != v6);
    v6 = a3[2];
  }

  *v6 = 80;
  return result;
}

uint64_t sub_1001DA6EC@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  a2[1] = 0;
  v4 = a2 + 1;
  a2[2] = 0;
  *a2 = a1;
  result = std::to_chars();
  a2[3] = result;
  v6 = a1 + 1;
  if (*(a1 + 1) == 46)
  {
    *v4 = v6;
    v7 = result - a1 - 2;
    if (v7 < 4)
    {
LABEL_8:
      v6 = result;
    }

    else
    {
      if (v7 >= 6)
      {
        v7 = 6;
      }

      v8 = -v7;
      while (*(result + v8) != 101)
      {
        if (++v8 == -3)
        {
          goto LABEL_8;
        }
      }

      v6 = result + v8;
    }
  }

  else
  {
    *v4 = result;
  }

  a2[2] = v6;
  return result;
}

unsigned __int8 *sub_1001DA7A8(_BYTE *a1, unsigned __int8 **a2)
{
  result = sub_1001D38D0(a1, a2, 296);
  v4 = a1[1];
  if (v4 >= 2 && v4 != 19)
  {
    sub_1001D2C50("The type option contains an invalid value for a string formatting argument");
  }

  return result;
}

void *sub_1001DA7EC(char *a1, char *__s, void *a3)
{
  v6 = strlen(__s);
  v7 = *a3;
  v9 = sub_1001D44B0(a1, a3);

  return sub_1001DA864(__s, v6, v7, v9, v8);
}

void *sub_1001DA864(char *__src, size_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if ((a5 & 0x80000000) != 0)
  {

    return sub_1001D4718(__src, a2, a3, a4, a5);
  }

  else
  {
    v9 = sub_1001D4808(__src, a2, a5 & 0x7FFFFFFF, 0);
    v11 = v10 - __src;

    return sub_1001D48CC(__src, v11, a3, a4, a5, v9);
  }
}

unsigned __int8 *sub_1001DA904(_BYTE *a1, unsigned __int8 **a2)
{
  result = sub_1001D38D0(a1, a2, 292);
  v4 = a1[1];
  if ((v4 - 8) >= 2 && v4 != 0)
  {
    sub_1001D3FC8("a pointer");
  }

  return result;
}

void *sub_1001DA94C(char *a1, unint64_t a2, void *a3)
{
  v5 = sub_1001D44B0(a1, a3);
  v7 = 1536;
  if ((v5 & 0xFF00) == 0x900)
  {
    v7 = 1792;
  }

  return sub_1001DA9B8(a2, a3, v5 & 0xFFFFFFFFFFFF00FFLL | v7 | 0x20, v6, 0);
}

void *sub_1001DA9B8(unint64_t a1, void **a2, unint64_t a3, unint64_t a4, char a5)
{
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      goto LABEL_11;
    }

    memset(v11, 0, sizeof(v11));
    v10 = 2;
    if (BYTE1(a3) == 2)
    {
      v7 = "0b";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v7 = "0B";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = v12;
    return sub_1001DAB4C(a1, a2, v8, a4, a5, v11, v9, v7, v10);
  }

  if (BYTE1(a3) > 5u)
  {
    memset(v11, 0, 19);
    v10 = 16;
    if (BYTE1(a3) == 6)
    {
      v7 = "0x";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v7 = "0X";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = &v11[19];
    return sub_1001DAB4C(a1, a2, v8, a4, a5, v11, v9, v7, v10);
  }

  if (BYTE1(a3) != 4)
  {
LABEL_11:
    memset(v11, 0, 21);
    return sub_1001DAB4C(a1, a2, a3, a4, a5, v11, &v11[21], 0, 10);
  }

  memset(v11, 0, 24);
  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  return sub_1001DAB4C(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, v11, &v11[24], v5, 8);
}

void *sub_1001DAB4C(unint64_t a1, void **a2, unint64_t a3, unint64_t a4, char a5, char *a6, uint64_t a7, _BYTE *a8, signed int a9)
{
  v9 = a6;
  v13 = a3;
  if (a5)
  {
    v14 = 45;
LABEL_7:
    *a6 = v14;
    v16 = a6 + 1;
    goto LABEL_8;
  }

  v15 = (a3 >> 3) & 3;
  if (v15 == 2)
  {
    v14 = 43;
    goto LABEL_7;
  }

  v16 = a6;
  if (v15 == 3)
  {
    v14 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v17 = *a8;
      if (*a8)
      {
        v18 = a8 + 1;
        do
        {
          *v16++ = v17;
          v19 = *v18++;
          v17 = v19;
        }

        while (v19);
      }
    }
  }

  v20 = sub_1001D6A4C(v16, a7, a1, a9);
  if ((v13 & 0x40) == 0)
  {
    goto LABEL_41;
  }

  sub_1001D46A8(a2, &v43);
  v21 = std::locale::use_facet(&v43, &std::numpunct<char>::id);
  std::locale::~locale(&v43);
  v43.__locale_ = 0;
  v44 = 0;
  v45 = 0;
  (v21->__vftable[1].__on_zero_shared)(&v43, v21);
  if ((SHIBYTE(v45) & 0x8000000000000000) != 0)
  {
    locale = v43.__locale_;
    if (!v44)
    {
LABEL_40:
      operator delete(locale);
      goto LABEL_41;
    }
  }

  else
  {
    if (!HIBYTE(v45))
    {
      goto LABEL_41;
    }

    locale = &v43;
  }

  if (v20 - v16 <= *locale)
  {
    if (SHIBYTE(v45) < 0)
    {
      locale = v43.__locale_;
      goto LABEL_40;
    }

LABEL_41:
    v35 = HIDWORD(a3);
    if ((v13 & 7) == 4)
    {
      sub_1001D49A8(*a2, v9, v16 - v9);
      v36 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v16 - v9)
      {
        LODWORD(v37) = v16 - v9;
      }

      else
      {
        LODWORD(v37) = HIDWORD(a3);
      }

      v35 = (HIDWORD(a3) - v37);
      LOBYTE(v37) = 48;
      v9 = v16;
    }

    else
    {
      v37 = HIDWORD(a4);
      v36 = a3;
    }

    v38 = *a2;
    v39 = v35 << 32;
    if ((a3 & 0xFF00) == 0x700)
    {
      return sub_1001D589C(v9, v20, v38, v39 | a3 & 0xFFFF0000 | v36 | 0x700, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), sub_1001D5988);
    }

    else
    {
      return sub_1001D48CC(v9, v20 - v9, v38, v39 | a3 & 0xFFFFFF00 | v36, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), v20 - v9);
    }
  }

  v23 = *a2;
  memset(&__p, 0, sizeof(__p));
  v24 = v43.__locale_ + v44;
  if (v45 < 0)
  {
    v25 = v43.__locale_;
  }

  else
  {
    v24 = &v43 + SHIBYTE(v45);
    v25 = &v43;
  }

  v26 = *v25;
  v27 = v20 - v16 - *v25;
  if (v27 >= 1)
  {
    v28 = v24 - 1;
    do
    {
      std::string::push_back(&__p, v26);
      if (v25 == v28)
      {
        v26 = *v25;
      }

      else
      {
        v29 = v25 + 1;
        v30 = v25 + 1;
        do
        {
          v31 = *v30++;
          v26 = v31;
          if (v31)
          {
            v32 = 1;
          }

          else
          {
            v32 = v29 == v28;
          }

          v29 = v30;
        }

        while (!v32);
        v25 = v30 - 1;
      }

      v27 -= v26;
    }

    while (v27 > 0);
  }

  std::string::push_back(&__p, v26 + v27);
  v33 = (v21->__vftable[1].~facet_0)(v21);
  v34 = sub_1001D56C0(v23, v9, v16, v20, &__p, v33, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(v43.__locale_);
  }

  return v34;
}

void sub_1001DAE88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15.__locale_);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1001DAECC(const std::locale *a1, char *a2, char *a3)
{
  v5 = *a2;
  v6 = std::locale::use_facet(a1, &std::ctype<char>::id);
  LODWORD(v5) = (v6->__vftable[1].~facet)(v6, v5);
  v7 = *a3;
  v8 = std::locale::use_facet(a1, &std::ctype<char>::id);
  return v5 == (v8->__vftable[1].~facet)(v8, v7);
}

double sub_1001DAF78(uint64_t a1)
{
  *a1 = &off_101E2FEE8;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

void sub_1001DAFA4(PB::Base *this)
{
  *this = &off_101E2FEE8;
  v4 = *(this + 4);
  v2 = (this + 32);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_100140988(v2, v3);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5)
  {
    sub_100140988(this + 24, v5);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    sub_100140988(this + 16, v6);
  }

  v7 = *(this + 1);
  *(this + 1) = 0;
  if (v7)
  {
    sub_100140988(this + 8, v7);
  }

  PB::Base::~Base(this);
}

void sub_1001DB044(PB::Base *a1)
{
  sub_1001DAFA4(a1);

  operator delete();
}

uint64_t sub_1001DB07C(uint64_t result, void *a2)
{
  *result = &off_101E2FEE8;
  *(result + 8) = 0u;
  *(result + 24) = 0u;
  if (a2[2])
  {
    operator new();
  }

  if (a2[1])
  {
    operator new();
  }

  if (a2[4])
  {
    operator new();
  }

  if (a2[3])
  {
    operator new();
  }

  return result;
}

uint64_t sub_1001DB27C(void *a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (a1[1])
  {
    PB::TextFormatter::format();
  }

  if (a1[2])
  {
    PB::TextFormatter::format();
  }

  if (a1[3])
  {
    PB::TextFormatter::format();
  }

  if (a1[4])
  {
    PB::TextFormatter::format();
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1001DB320(int a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v6 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v9 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v6 + v2);
        v19 = v2 + 1;
        while (1)
        {
          if (!v17)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_37;
          }

          v20 = *v18;
          *(this + 1) = v19;
          v9 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v13 = v15++ > 8;
          if (v13)
          {
LABEL_18:
            v9 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v9 = 0;
        }
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = (v6 + v2);
        v11 = v2 + 1;
        while (1)
        {
          *(this + 1) = v11;
          v12 = *v10++;
          v9 |= (v12 & 0x7F) << v7;
          if ((v12 & 0x80) == 0)
          {
            break;
          }

          v7 += 7;
          ++v11;
          v13 = v8++ > 8;
          if (v13)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v9 & 7) == 4))
      {
        break;
      }

      v21 = v9 >> 3;
      if ((v9 >> 3) > 2)
      {
        if (v21 == 3)
        {
          operator new();
        }

        if (v21 == 4)
        {
          operator new();
        }
      }

      else
      {
        if (v21 == 1)
        {
          operator new();
        }

        if (v21 == 2)
        {
          operator new();
        }
      }

      if ((PB::Reader::skip(this, v21, v9 & 7, 0) & 1) == 0)
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_37:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_1001DB604(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = PB::Writer::write();
  }

  if (v1[1])
  {
    result = PB::Writer::write();
  }

  if (v1[4])
  {
    result = PB::Writer::write();
  }

  if (v1[3])
  {

    return PB::Writer::write();
  }

  return result;
}

uint64_t sub_1001DB690(char *a1)
{
  v1 = a1;
  if (a1[23] < 0)
  {
    v1 = *a1;
  }

  if (!strcasecmp(v1, "CEPT"))
  {
    return 1;
  }

  if (!strcasecmp(v1, "HK"))
  {
    return 2;
  }

  if (!strcasecmp(v1, "UK"))
  {
    return 3;
  }

  return 4 * (strcasecmp(v1, "AU") == 0);
}

const void **sub_1001DB72C@<X0>(uint64_t a1@<X0>, CFUUIDRef *a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_100005F2C(v6, *a1, *(a1 + 8));
  }

  else
  {
    *v6 = *a1;
    v7 = *(a1 + 16);
  }

  if (SHIBYTE(v7) < 0)
  {
    sub_100005F2C(__p, v6[0], v6[1]);
  }

  else
  {
    *__p = *v6;
    v11 = v7;
  }

  v9 = 0;
  if (SHIBYTE(v11) < 0)
  {
    sub_100005F2C(&__dst, __p[0], __p[1]);
  }

  else
  {
    __dst = *__p;
    v13 = v11;
  }

  v14 = 0;
  if (ctu::cf::convert_copy())
  {
    v3 = v9;
    v9 = v14;
    v15 = v3;
    sub_100005978(&v15);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(__dst);
  }

  v4 = v9;
  v8 = v9;
  v9 = 0;
  sub_100005978(&v9);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6[0]);
  }

  *a2 = CFUUIDCreateFromString(0, v4);
  return sub_100005978(&v8);
}

void sub_1001DB868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_100005978(&a18);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

const void **sub_1001DB8CC@<X0>(const void **result@<X0>, uint64_t a2@<X8>)
{
  if (*result)
  {
    v3 = CFUUIDCreateString(kCFAllocatorDefault, *result);
    v4 = 0uLL;
    v5 = 0;
    ctu::cf::assign();
    *a2 = 0uLL;
    *(a2 + 16) = v5;
    return sub_100005978(&v3);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

void sub_1001DB944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a9);
  _Unwind_Resume(a1);
}

void sub_1001DB968(uint64_t a1, uint64_t a2)
{
  global_queue = dispatch_get_global_queue(0, 0);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1001DB9F0;
  v5[3] = &unk_101E2FF28;
  v5[4] = a2;
  v5[5] = a1;
  dispatch_async(global_queue, v5);
}

void sub_1001DB9F0(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(**(a1 + 32));
  v3 = ServiceMap;
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v6 = 5381;
    do
    {
      v4 = v6;
      v7 = *v5++;
      v6 = (33 * v6) ^ v7;
    }

    while (v7);
  }

  std::mutex::lock(ServiceMap);
  v15 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v15);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v3);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v9);
      v11 = 0;
      if (!v10)
      {
        goto LABEL_7;
      }

LABEL_11:
      v15 = 0;
      v13 = kOtaspLocalizationTable;
      (*(*v10 + 16))(&v15, v10, kOtaspLocalizationTable, @"Call disallowed", 1);
      v14 = 0;
      (*(*v10 + 16))(&v14, v10, v13, @"OK", 1);
      sub_10078D184(0x14u, v15, &stru_101F6AFB8, v14);
      sub_100005978(&v14);
      sub_100005978(&v15);
      goto LABEL_12;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
  if (v10)
  {
    goto LABEL_11;
  }

LABEL_7:
  v12 = **(a1 + 40);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_101764DB0(v12);
  }

LABEL_12:
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }
}

void sub_1001DBBA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_100005978(&a9);
  sub_100005978(&a10);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(a1);
}

void sub_1001DBBE4(int a1@<W0>, uint64_t a2@<X1>, CFStringRef *a3@<X8>)
{
  v33 = 0;
  v34 = 0;
  __dst = 0;
  if (a1)
  {
    v5 = "could possibly end";
  }

  else
  {
    v5 = "will end";
  }

  if (a1)
  {
    v6 = 18;
  }

  else
  {
    v6 = 8;
  }

  HIBYTE(v34) = v6;
  memcpy(&__dst, v5, v6);
  *(&__dst + v6) = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  if (v34 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if (v34 >= 0)
  {
    v8 = HIBYTE(v34);
  }

  else
  {
    v8 = v33;
  }

  sub_1001DC8E8(&v29, p_dst, &p_dst[v8], v8);
  v27[0] = 0;
  v27[1] = 0;
  v28 = 0;
  v9 = *(a2 + 23);
  if (v9 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  if (v9 >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = *(a2 + 8);
  }

  sub_1001DC8E8(v27, v10, &v10[v11], v11);
  sub_1001DBEB4("C", v27, &v22);
  v12 = std::wstring::append(&v22, dword_1017DC950, 2uLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (v31 >= 0)
  {
    v14 = &v29;
  }

  else
  {
    v14 = v29;
  }

  if (v31 >= 0)
  {
    v15 = HIBYTE(v31);
  }

  else
  {
    v15 = v30;
  }

  v16 = std::wstring::append(&v23, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::wstring::append(&v24, dword_1017DC95C, 0x12uLL);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v26 = v18->__r_.__value_.__r.__words[2];
  *__p = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  v20 = HIBYTE(v26);
  if (v26 >= 0)
  {
    v21 = __p;
  }

  else
  {
    v21 = __p[0];
  }

  if (v26 < 0)
  {
    v20 = __p[1];
  }

  *a3 = CFStringCreateWithBytes(kCFAllocatorDefault, v21, 4 * v20, 0x1C000100u, 0);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27[0]);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(v29);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(__dst);
  }
}

void sub_1001DBE0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (*(v35 - 81) < 0)
  {
    operator delete(*(v35 - 104));
  }

  if (*(v35 - 57) < 0)
  {
    operator delete(*(v35 - 80));
  }

  if (*(v35 - 33) < 0)
  {
    operator delete(*(v35 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001DBEB4@<X0>(const __int32 *a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v6 = wcslen(a1);
  v7 = v6;
  if (*(a2 + 23) >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = a2[1];
  }

  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  result = sub_1001DC97C(a3, v8 + v6);
  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  if (v7)
  {
    result = memmove(a3, a1, 4 * v7);
  }

  if (v8)
  {
    if (*(a2 + 23) >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    result = memmove(a3 + 4 * v7, v10, 4 * v8);
  }

  *(a3 + v7 + v8) = 0;
  return result;
}

CFStringRef sub_1001DBF74(NSObject **a1, Registry **a2, uint64_t a3)
{
  v46 = 0;
  ServiceMap = Registry::getServiceMap(*a2);
  v7 = ServiceMap;
  if (v8 < 0)
  {
    v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  std::mutex::lock(ServiceMap);
  *&v37.var0 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v37);
  if (v12)
  {
    v14 = v12[3];
    v13 = v12[4];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v7);
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v13);
      v15 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
LABEL_9:
  (*(*v14 + 96))(&v46, v14, a3, 1, @"OverrideVoiceMailWithSIMEntry", 0, 0);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  v16 = v46;
  if (!v46)
  {
    goto LABEL_21;
  }

  LOBYTE(v37.var0) = 0;
  v17 = CFGetTypeID(v46);
  if (v17 == CFBooleanGetTypeID())
  {
    ctu::cf::assign(&v37, v16, v18);
  }

  if (LOBYTE(v37.var0) != 1)
  {
LABEL_21:
    v29 = 0;
    goto LABEL_49;
  }

  v44 = 0u;
  v45 = 0u;
  v43 = 0u;
  v41 = 0u;
  *v42 = 0u;
  v39 = 0u;
  *v40 = 0u;
  *v38 = 0u;
  memset(&v37, 0, sizeof(v37));
  CSIPhoneNumber::CSIPhoneNumber(&v37);
  v19 = Registry::getServiceMap(*a2);
  v20 = v19;
  if (v21 < 0)
  {
    v22 = (v21 & 0x7FFFFFFFFFFFFFFFLL);
    v23 = 5381;
    do
    {
      v21 = v23;
      v24 = *v22++;
      v23 = (33 * v23) ^ v24;
    }

    while (v24);
  }

  std::mutex::lock(v19);
  __p[0] = v21;
  v25 = sub_100009510(&v20[1].__m_.__sig, __p);
  if (!v25)
  {
    v27 = 0;
    goto LABEL_23;
  }

  v27 = v25[3];
  v26 = v25[4];
  if (!v26)
  {
LABEL_23:
    std::mutex::unlock(v20);
    v26 = 0;
    v28 = 1;
    goto LABEL_24;
  }

  atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v20);
  atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v26);
  v28 = 0;
LABEL_24:
  v30 = (*(*v27 + 288))(v27, a3, &v37);
  if ((v28 & 1) == 0)
  {
    sub_100004A34(v26);
  }

  if (v30)
  {
    CSIPhoneNumber::getFullNumber(__p, &v37);
    if (v36 >= 0)
    {
      v31 = __p;
    }

    else
    {
      v31 = __p[0];
    }

    v29 = CFStringCreateWithCString(kCFAllocatorDefault, v31, 0x8000100u);
    if (v36 < 0)
    {
      operator delete(__p[0]);
    }

    v32 = *a1;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      CSIPhoneNumber::getFullNumber(__p, &v37);
      v33 = v36 >= 0 ? __p : __p[0];
      *buf = 136315138;
      v48 = v33;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I OverrideVoiceMailWithSIMEntry true: Overriding Pilot Number with the voice mail number from the SIM Card: %s", buf, 0xCu);
      if (v36 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    v29 = 0;
  }

  if (SBYTE7(v45) < 0)
  {
    operator delete(v44);
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42[1]);
  }

  if (SBYTE7(v41) < 0)
  {
    operator delete(v40[0]);
  }

  if (SBYTE7(v39) < 0)
  {
    operator delete(v38[0]);
  }

  if (*(&v37.var2.__rep_.__l + 23) < 0)
  {
    operator delete(v37.var2.__rep_.__l.__data_);
  }

LABEL_49:
  sub_10000A1EC(&v46);
  return v29;
}

void sub_1001DC354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  sub_10034F8E8(&a16);
  sub_10000A1EC((v16 - 120));
  _Unwind_Resume(a1);
}

uint64_t sub_1001DC3D8(Registry **a1, uint64_t a2)
{
  cf = 0;
  ServiceMap = Registry::getServiceMap(*a1);
  v4 = ServiceMap;
  if ((v5 & 0x8000000000000000) != 0)
  {
    v6 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  std::mutex::lock(ServiceMap);
  v18 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v18);
  if (v9)
  {
    v11 = v9[3];
    v10 = v9[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v4);
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
      v12 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
  v12 = 1;
LABEL_9:
  (*(*v11 + 96))(&cf, v11, a2, 1, @"ExitEmergencyModeWhenPlacingFirstRegularCall", 0, 1);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  v13 = cf;
  if (cf)
  {
    LOBYTE(v18) = 0;
    v14 = CFGetTypeID(cf);
    if (v14 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v18, v13, v15);
      LOBYTE(v13) = v18;
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  sub_10000A1EC(&cf);
  return v13 & 1;
}

void sub_1001DC544(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001DC570(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void *sub_1001DC5A0(void *a1, void *a2, NSObject **a3)
{
  ctu::OsLogContext::OsLogContext(&v8, kCtLoggingSystemName, "call.hlp");
  sub_1001DC660(a1 + 1, a3, &v8);
  ctu::OsLogContext::~OsLogContext(&v8);
  *a1 = off_101E2FF58;
  v6 = a2[1];
  a1[6] = *a2;
  a1[7] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  a1[8] = 0;
  a1[9] = 0;
  a1[10] = 0;
  return a1;
}

void *sub_1001DC660(void *a1, NSObject **a2, OsLogContext *a3)
{
  *a1 = 0;
  a1[1] = 0;
  v5 = *a2;
  a1[2] = *a2;
  if (v5)
  {
    dispatch_retain(v5);
  }

  a1[3] = 0;
  ctu::OsLogLogger::OsLogLogger(v7, a3);
  ctu::OsLogLogger::OsLogLogger((a1 + 4), v7);
  ctu::OsLogLogger::~OsLogLogger(v7);
  return a1;
}

void sub_1001DC6C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1001DC6EC(uint64_t a1)
{
  *a1 = off_101E2FF58;
  v2 = qword_101FCB718;
  qword_101FCB710 = 0;
  qword_101FCB718 = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    CFUserNotificationCancel(v3);
  }

  sub_1001DCA14((a1 + 80));
  v4 = *(a1 + 72);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    sub_100004A34(v5);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_1001DC78C(uint64_t a1)
{
  sub_1001DC6EC(a1);

  operator delete();
}

void sub_1001DC854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001DC880(uint64_t a1)
{
  sub_100004AA0(&v4, (a1 + 8));
  v2 = v4;
  v1 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = qword_101FCB718;
  qword_101FCB710 = v2;
  qword_101FCB718 = v1;
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
    v1 = v5;
  }

  if (v1)
  {
    sub_100004A34(v1);
  }
}

uint64_t sub_1001DC8E8(uint64_t result, char *a2, char *a3, unint64_t a4)
{
  if (a4 >= 0x3FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  v5 = result;
  if (a4 > 4)
  {
    if ((a4 | 1) == 5)
    {
      v6 = 7;
    }

    else
    {
      v6 = (a4 | 1) + 1;
    }

    sub_100016740(result, v6);
  }

  *(result + 23) = a4;
  while (a2 != a3)
  {
    v7 = *a2++;
    *v5++ = v7;
  }

  *v5 = 0;
  return result;
}

uint64_t sub_1001DC97C(uint64_t result, unint64_t a2)
{
  if (a2 >= 0x3FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  if (a2 > 4)
  {
    if ((a2 | 1) == 5)
    {
      v2 = 7;
    }

    else
    {
      v2 = (a2 | 1) + 1;
    }

    if (!(v2 >> 62))
    {
      operator new();
    }

    sub_100013D10();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

const void **sub_1001DCA14(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1001DCAC8(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1001DCB9C);
  __cxa_rethrow();
}

void sub_1001DCB08(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1001DCB5C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001DCB9C(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1001DCC08(uint64_t a1, const char *a2)
{
  ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "cp.db");
  ctu::OsLogLogger::OsLogLogger(v9, buf);
  ctu::OsLogLogger::OsLogLogger(a1, v9);
  ctu::OsLogLogger::~OsLogLogger(v9);
  ctu::OsLogContext::~OsLogContext(buf);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (a2[23] >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  v5 = sqlite3_open(v4, (a1 + 24));
  if (v5)
  {
    v6 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      if (a2[23] >= 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = *a2;
      }

      *buf = 136315394;
      v11 = v8;
      v12 = 1024;
      v13 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Unable to open db %s (%d)", buf, 0x12u);
    }
  }

  return a1;
}

void sub_1001DCD3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14)
{
  v16 = *(v14 + 2);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  ctu::OsLogLogger::~OsLogLogger(v14);
  _Unwind_Resume(a1);
}

void sub_1001DCD84(ctu::OsLogLogger *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    sqlite3_close(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  ctu::OsLogLogger::~OsLogLogger(this);
}

uint64_t sub_1001DCDD4(uint64_t a1, __int128 *a2)
{
  ctu::OsLogContext::OsLogContext(&v6, kCtLoggingSystemName, "cp.db");
  ctu::OsLogLogger::OsLogLogger(v7, &v6);
  ctu::OsLogLogger::OsLogLogger((a1 + 8), v7);
  ctu::OsLogLogger::~OsLogLogger(v7);
  ctu::OsLogContext::~OsLogContext(&v6);
  *a1 = &off_101E300C0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C((a1 + 32), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 48) = *(a2 + 2);
    *(a1 + 32) = v4;
  }

  sub_1001DCEF8(a1);
  return a1;
}

void sub_1001DCE98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  v14 = v12[3];
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  CellularPlanDatabaseStoreInterface::~CellularPlanDatabaseStoreInterface(v12);
  ctu::OsLogLogger::~OsLogLogger((v12 + 1));
  _Unwind_Resume(a1);
}

void sub_1001DCEF8(uint64_t a1)
{
  v36 = 0;
  v37 = 0;
  sub_1001DDB5C(a1, &v36);
  v2 = v36;
  if (v36)
  {
    memset(&__s, 0, sizeof(__s));
    v3 = v37;
    v34[0] = v36;
    v34[1] = v37;
    if (v37)
    {
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_10000501C(&__p, "remote_subscription");
    sub_1001DFDD4(v34, &__p, &__s);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v3)
    {
      sub_100004A34(v3);
    }

    size = SHIBYTE(__s.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = __s.__r_.__value_.__l.__size_;
      if (__s.__r_.__value_.__l.__size_)
      {
        p_s = __s.__r_.__value_.__r.__words[0];
        goto LABEL_15;
      }
    }

    else if (*(&__s.__r_.__value_.__s + 23))
    {
      p_s = &__s;
LABEL_15:
      if (size >= 18)
      {
        v6 = p_s + size;
        v7 = p_s;
        do
        {
          v8 = memchr(v7, 32, size - 17);
          if (!v8)
          {
            break;
          }

          if (*v8 == 0x6E5F656E6F687020 && *(v8 + 1) == 0x4554207265626D75 && *(v8 + 8) == 21592)
          {
            if (v8 != v6 && v8 - p_s != -1)
            {
              goto LABEL_47;
            }

            break;
          }

          v7 = (v8 + 1);
          size = v6 - v7;
        }

        while (v6 - v7 >= 18);
      }

      v31[0] = v2;
      v31[1] = v3;
      if (v3)
      {
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_10000501C(&__p, "ALTER TABLE 'remote_subscription' ADD COLUMN phone_number TEXT DEFAULT '';");
      v45 = 0;
      v12 = sub_1001DE028(v31, &__p, v44);
      sub_1001E0698(v44);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v3)
      {
        sub_100004A34(v3);
      }

      if (!v12 && os_log_type_enabled(*(a1 + 8), OS_LOG_TYPE_ERROR))
      {
        sub_101764DF4();
      }

LABEL_47:
      v30[0] = v2;
      v30[1] = v3;
      if (v3)
      {
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_10000501C(v28, "local_subscription");
      sub_1001DFDD4(v30, v28, &__p);
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }

      __s = __p;
      *(&__p.__r_.__value_.__s + 23) = 0;
      __p.__r_.__value_.__s.__data_[0] = 0;
      if (v29 < 0)
      {
        operator delete(v28[0]);
      }

      if (v3)
      {
        sub_100004A34(v3);
      }

      v13 = SHIBYTE(__s.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        v13 = __s.__r_.__value_.__l.__size_;
        if (__s.__r_.__value_.__l.__size_)
        {
          v14 = __s.__r_.__value_.__r.__words[0];
          goto LABEL_60;
        }
      }

      else if (*(&__s.__r_.__value_.__s + 23))
      {
        v14 = &__s;
LABEL_60:
        if (v13 >= 18)
        {
          v15 = v14 + v13;
          v16 = v14;
          do
          {
            v17 = memchr(v16, 32, v13 - 17);
            if (!v17)
            {
              break;
            }

            if (*v17 == 0x6E5F656E6F687020 && *(v17 + 1) == 0x4554207265626D75 && *(v17 + 8) == 21592)
            {
              if (v17 != v15 && v17 - v14 != -1)
              {
                goto LABEL_92;
              }

              break;
            }

            v16 = (v17 + 1);
            v13 = v15 - v16;
          }

          while (v15 - v16 >= 18);
        }

        v26[0] = v2;
        v26[1] = v3;
        if (v3)
        {
          atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_10000501C(&__p, "ALTER TABLE 'local_subscription' ADD COLUMN phone_number TEXT DEFAULT '';");
        v41 = 0;
        v21 = sub_1001DE028(v26, &__p, v40);
        sub_1001E0698(v40);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v3)
        {
          sub_100004A34(v3);
        }

        if (!v21 && os_log_type_enabled(*(a1 + 8), OS_LOG_TYPE_ERROR))
        {
          sub_101764E6C();
        }

        goto LABEL_92;
      }

      v27[0] = v2;
      v27[1] = v3;
      if (v3)
      {
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_10000501C(&__p, "CREATE TABLE IF NOT EXISTS 'local_subscription' (timestamp DATETIME NOT NULL, iccid TEXT, status INTEGER, device_id TEXT NOT NULL, primary_iccid TEXT, manage_account_url TEXT, manage_account_postdata TEXT, plan_type INTEGER, smdp_address TEXT, present_in_response BOOL, is_alt_em_address_update_url BOOL, phone_number TEXT DEFAULT '', UNIQUE(iccid, device_id, primary_iccid));");
      v43 = 0;
      v20 = sub_1001DE028(v27, &__p, v42);
      sub_1001E0698(v42);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v3)
      {
        sub_100004A34(v3);
      }

      if (!v20 && os_log_type_enabled(*(a1 + 8), OS_LOG_TYPE_ERROR))
      {
        sub_101764EA8();
      }

LABEL_92:
      v25[0] = v2;
      v25[1] = v3;
      if (v3)
      {
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_10000501C(v28, "remote_plan");
      sub_1001DFDD4(v25, v28, &__p);
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }

      __s = __p;
      *(&__p.__r_.__value_.__s + 23) = 0;
      __p.__r_.__value_.__s.__data_[0] = 0;
      if (v29 < 0)
      {
        operator delete(v28[0]);
      }

      if (v3)
      {
        sub_100004A34(v3);
      }

      v22 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v22 = __s.__r_.__value_.__l.__size_;
      }

      if (!v22)
      {
        v24[0] = v2;
        v24[1] = v3;
        if (v3)
        {
          atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_10000501C(&__p, "CREATE TABLE IF NOT EXISTS 'remote_plan' (keyName TEXT PRIMARY KEY, value BLOB);");
        v39 = 0;
        v23 = sub_1001DE028(v24, &__p, v38);
        sub_1001E0698(v38);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v3)
        {
          sub_100004A34(v3);
        }

        if (!v23 && os_log_type_enabled(*(a1 + 8), OS_LOG_TYPE_ERROR))
        {
          sub_101764EE4();
        }
      }

      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }

      goto LABEL_114;
    }

    v32[0] = v2;
    v32[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_10000501C(&__p, "CREATE TABLE IF NOT EXISTS 'remote_subscription' (timestamp DATETIME NOT NULL, iccid TEXT, status INTEGER, device_id TEXT NOT NULL, primary_iccid TEXT, manage_account_url TEXT, manage_account_postdata TEXT, plan_type INTEGER, smdp_address TEXT, present_in_response BOOL, is_alt_em_address_update_url BOOL, phone_number TEXT DEFAULT '', UNIQUE(iccid, device_id, primary_iccid));");
    v47 = 0;
    v11 = sub_1001DE028(v32, &__p, v46);
    sub_1001E0698(v46);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v3)
    {
      sub_100004A34(v3);
    }

    if (!v11 && os_log_type_enabled(*(a1 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_101764E30();
    }

    goto LABEL_47;
  }

  if (os_log_type_enabled(*(a1 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_101764F20();
  }

LABEL_114:
  if (v37)
  {
    sub_100004A34(v37);
  }
}

void sub_1001DD4F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, char a45)
{
  sub_1001E0698(&a45);
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (v45)
  {
    sub_100004A34(v45);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (v45)
  {
    sub_100004A34(v45);
  }

  _Unwind_Resume(a1);
}

void **sub_1001DD5E0(void **this)
{
  *this = &off_101E300C0;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  v2 = this[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  CellularPlanDatabaseStoreInterface::~CellularPlanDatabaseStoreInterface(this);
  ctu::OsLogLogger::~OsLogLogger((this + 1));
  return this;
}

void sub_1001DD650(void **a1)
{
  sub_1001DD5E0(a1);

  operator delete();
}

void sub_1001DD688(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (sub_1001DDA90(a2, 1))
  {
    v31 = 0;
    v32 = 0;
    sub_1001DDB5C(a1, &v31);
    v6 = v31;
    if (v31)
    {
      memset(&v30, 0, sizeof(v30));
      sub_10000501C(&v30, "SELECT value");
      sub_10000501C(&v29, "remote_plan");
      v7 = std::string::insert(&v29, 0, " FROM ", 6uLL);
      v8 = *&v7->__r_.__value_.__l.__data_;
      v34 = v7->__r_.__value_.__r.__words[2];
      *__p = v8;
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
      if ((v34 & 0x8000000000000000) == 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      if ((v34 & 0x8000000000000000) == 0)
      {
        v10 = HIBYTE(v34);
      }

      else
      {
        v10 = __p[1];
      }

      std::string::append(&v30, v9, v10);
      if (SHIBYTE(v34) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      std::string::append(&v30, " WHERE keyName LIKE ?1;", 0x17uLL);
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      ppStmt = 0;
      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &v30;
      }

      else
      {
        v11 = v30.__r_.__value_.__r.__words[0];
      }

      sqlite3_prepare_v2(*(v6 + 24), v11, -1, &ppStmt, 0);
      if (*(a2 + 23) >= 0)
      {
        v12 = a2;
      }

      else
      {
        v12 = *a2;
      }

      sqlite3_bind_text(ppStmt, 1, v12, -1, 0xFFFFFFFFFFFFFFFFLL);
      while (sqlite3_step(ppStmt) == 100)
      {
        v13 = sqlite3_column_blob(ppStmt, 0);
        v14 = sqlite3_column_bytes(ppStmt, 0);
        memset(&v29, 0, sizeof(v29));
        sub_1000DCF88(&v29, v13, v13 + v14, v14);
        v15 = *(a3 + 8);
        v16 = *(a3 + 16);
        if (v15 >= v16)
        {
          v17 = 0xAAAAAAAAAAAAAAABLL * ((v15 - *a3) >> 3);
          v18 = v17 + 1;
          if (v17 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_1000CE3D4();
          }

          v19 = 0xAAAAAAAAAAAAAAABLL * ((v16 - *a3) >> 3);
          if (2 * v19 > v18)
          {
            v18 = 2 * v19;
          }

          if (v19 >= 0x555555555555555)
          {
            v20 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v20 = v18;
          }

          v36 = a3;
          if (v20)
          {
            sub_1001DFEA0(a3, v20);
          }

          v21 = 24 * v17;
          *v21 = 0;
          *(v21 + 8) = 0;
          *(v21 + 16) = 0;
          *v21 = v29;
          memset(&v29, 0, sizeof(v29));
          v22 = 24 * v17 + 24;
          v23 = *(a3 + 8) - *a3;
          v24 = 24 * v17 - v23;
          memcpy((v21 - v23), *a3, v23);
          v25 = *a3;
          *a3 = v24;
          *(a3 + 8) = v22;
          v26 = *(a3 + 16);
          *(a3 + 16) = 0;
          v34 = v25;
          v35 = v26;
          __p[0] = v25;
          __p[1] = v25;
          sub_1001DFEF8(__p);
          v27 = v29.__r_.__value_.__r.__words[0];
          *(a3 + 8) = v22;
          if (v27)
          {
            v29.__r_.__value_.__l.__size_ = v27;
            operator delete(v27);
          }
        }

        else
        {
          v15->__r_.__value_.__r.__words[0] = 0;
          v15->__r_.__value_.__l.__size_ = 0;
          v15->__r_.__value_.__r.__words[2] = 0;
          *v15 = v29;
          *(a3 + 8) = v15 + 1;
        }
      }

      if (ppStmt)
      {
        sqlite3_finalize(ppStmt);
      }

      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      if (os_log_type_enabled(*(a1 + 8), OS_LOG_TYPE_ERROR))
      {
        sub_101764FCC();
      }

      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
    }

    if (v32)
    {
      sub_100004A34(v32);
    }
  }

  else
  {
    if (os_log_type_enabled(*(a1 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_101764F5C();
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }
}