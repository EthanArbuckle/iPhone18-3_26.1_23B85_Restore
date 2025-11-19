void sub_1003EC774(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1003EC7CC(uint64_t a1, const void **a2, const void **a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2 + 4;
    do
    {
      v7 = v6 - 4;
      *v4 = *(v6 - 8);
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      sub_10004EFD0(v4 + 8, *(v6 - 3), *(v6 - 2), 0xAAAAAAAAAAAAAAABLL * ((*(v6 - 2) - *(v6 - 3)) >> 3));
      sub_10005C7A4((v4 + 32), v6);
      v4 = v12 + 40;
      v12 += 40;
      v6 += 5;
    }

    while (v7 + 5 != a3);
  }

  LOBYTE(v10) = 1;
  sub_1003EC8AC(v9);
  return v4;
}

uint64_t sub_1003EC8AC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1003EC8F8(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_1003EC8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v9[5] = v5;
    v9[6] = v6;
    v8 = a3;
    do
    {
      sub_100005978((v8 - 8));
      v9[0] = (v8 - 32);
      sub_1000087B4(v9);
      v8 -= 40;
    }

    while (v8 != a5);
  }
}

const void **sub_1003EC960(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 8) = 0;
  sub_10004EFD0(v4 + 8, *(a2 + 8), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
  result = sub_10005C7A4((v4 + 32), (a2 + 32));
  *(a1 + 8) = v4 + 40;
  return result;
}

uint64_t sub_1003EC9E0(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_1000CE3D4();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    sub_1003EC774(a1, v6);
  }

  v7 = 40 * v2;
  v14 = 0;
  v15 = v7;
  v16 = v7;
  *v7 = *a2;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 8) = 0;
  sub_10004EFD0(v7 + 8, *(a2 + 8), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
  sub_10005C7A4((v7 + 32), (a2 + 32));
  *&v16 = v16 + 40;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  sub_1003ECB40(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_1003ECC5C(&v14);
  return v13;
}

void sub_1003ECB2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1003ECC5C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003ECB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  v7 = a4;
  v6[0] = a1;
  v6[1] = &v7;
  v6[2] = &v8;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      *a4 = *v4;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 8) = 0;
      *(a4 + 8) = *(v4 + 8);
      *(a4 + 24) = *(v4 + 24);
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 32) = *(v4 + 32);
      *(v4 + 32) = 0;
      v4 += 40;
      a4 += 40;
    }

    while (v4 != a3);
    v8 = a4;
  }

  v6[3] = 1;
  sub_1003ECC00(a1, a2, a3);
  return sub_1003EC8AC(v6);
}

void sub_1003ECC00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v7[3] = v3;
    v7[4] = v4;
    v6 = a2;
    do
    {
      sub_100005978((v6 + 32));
      v7[0] = (v6 + 8);
      sub_1000087B4(v7);
      v6 += 40;
    }

    while (v6 != a3);
  }
}

uint64_t sub_1003ECC5C(uint64_t a1)
{
  sub_1003ECC94(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1003ECC94(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    sub_100005978((i - 8));
    v5 = (i - 32);
    sub_1000087B4(&v5);
  }
}

uint64_t sub_1003ECD00(uint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1000CE3D4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_1003ECE58(a1, v6);
  }

  v7 = 48 * v2;
  v15 = 0;
  v16 = v7;
  *(&v17 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 40) = *(a2 + 5);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *&v17 = 48 * v2 + 48;
  v9 = a1[1];
  v10 = 48 * v2 + *a1 - v9;
  sub_1003ECEB0(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_1003ECF8C(&v15);
  return v14;
}

void sub_1003ECE44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1003ECF8C(va);
  _Unwind_Resume(a1);
}

void sub_1003ECE58(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_100013D10();
}

void sub_1003ECEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *a4 = v7;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *v6 = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 40) = *(v6 + 40);
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      v6 += 48;
      a4 += 48;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      sub_1003ECF44(v5);
      v5 += 48;
    }
  }
}

void sub_1003ECF44(uint64_t a1)
{
  v2 = (a1 + 24);
  sub_1000087B4(&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t sub_1003ECF8C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    sub_1003ECF44(i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1003ECFDC(uint64_t a1)
{
  v3 = (a1 + 24);
  sub_1000087B4(&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1003ED028(void **a1)
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
        v3 -= 48;
        sub_1003ECF44(v3);
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

void sub_1003ED090(void ***a1)
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
        v4 -= 48;
        sub_1003ECF44(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1003ED114(uint64_t a1, void *a2)
{
  v4 = (a1 + 8);
  sub_10006EC28(a1, *(a1 + 8));
  *a1 = *a2;
  v5 = a2 + 1;
  v6 = a2[1];
  *v4 = v6;
  v7 = a2[2];
  *(a1 + 16) = v7;
  if (v7)
  {
    *(v6 + 16) = v4;
    *a2 = v5;
    *v5 = 0;
    a2[2] = 0;
  }

  else
  {
    *a1 = v4;
  }
}

void *sub_1003ED180(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10010935C(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_1003ED1D8(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1003EAB00(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_1003ED230(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10010935C(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1003ED288(uint64_t a1, _BYTE *a2)
{
  *a1 = 0;
  *(a1 + 104) = 0;
  if (a2[104] == 1)
  {
    *a1 = *a2;
    sub_100172EF0((a1 + 8), (a2 + 8));
    sub_1003ED180((a1 + 32), (a2 + 32));
    sub_1003ED1D8((a1 + 56), (a2 + 56));
    sub_1003ED230((a1 + 80), (a2 + 80));
    *(a1 + 104) = 1;
  }

  return a1;
}

void sub_1003ED30C(_Unwind_Exception *a1)
{
  sub_10006EC28(v1 + 56, *(v1 + 64));
  sub_10006DCAC(v1 + 32, *(v1 + 40));
  sub_10006DCAC(v2, *(v1 + 16));
  if (*(v1 + 104) == 1)
  {
    sub_1003C30B4(v1);
  }

  _Unwind_Resume(a1);
}

void *sub_1003ED368(void *a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  if (v4)
  {
    dispatch_retain(v4);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v5 = _Block_copy(v5);
  }

  a1[1] = v5;
  return a1;
}

NSObject **sub_1003ED3B4(NSObject **a1, NSObject **a2)
{
  v4 = *a2;
  *a1 = *a2;
  if (v4)
  {
    dispatch_retain(v4);
  }

  sub_1003FDB38((a1 + 1), (a2 + 1));
  return a1;
}

void sub_1003ED3F8(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    dispatch_release(*v1);
  }

  _Unwind_Resume(exception_object);
}

NSObject **sub_1003ED410(NSObject **a1, NSObject **a2)
{
  v4 = *a2;
  *a1 = *a2;
  if (v4)
  {
    dispatch_retain(v4);
  }

  sub_1003FE1C0((a1 + 1), (a2 + 1));
  return a1;
}

void sub_1003ED454(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    dispatch_release(*v1);
  }

  _Unwind_Resume(exception_object);
}

NSObject **sub_1003ED46C(NSObject **a1, NSObject **a2)
{
  v4 = *a2;
  *a1 = *a2;
  if (v4)
  {
    dispatch_retain(v4);
  }

  sub_1003FE848((a1 + 1), (a2 + 1));
  return a1;
}

void sub_1003ED4B0(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    dispatch_release(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003ED4C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005C7A4(a1, a2);
  sub_10005C7A4(v4 + 1, (a2 + 8));
  sub_10005C7A4((a1 + 16), (a2 + 16));
  sub_10005C7A4((a1 + 24), (a2 + 24));
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  sub_1003ED590((a1 + 72), a2 + 72);
  sub_1003ED714((a1 + 96), a2 + 96);
  sub_1003ED898((a1 + 120), a2 + 120);
  *(a1 + 144) = *(a2 + 144);
  return a1;
}

void sub_1003ED554(_Unwind_Exception *a1)
{
  sub_10006DCAC(v1 + 96, *(v1 + 104));
  sub_10006DCAC(v1 + 72, *(v1 + 80));
  sub_1003EDA14(v1);
  _Unwind_Resume(a1);
}

void *sub_1003ED590(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1003ED5E8(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1003ED5E8(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1003ED670(v5, v5 + 1, v4 + 8);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_1003ED670(void *a1, uint64_t *a2, int *a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *sub_10002E2F4(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *sub_1003ED714(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1003ED76C(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1003ED76C(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1003ED7F4(v5, v5 + 1, v4 + 8);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_1003ED7F4(void *a1, uint64_t *a2, int *a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *sub_10002E2F4(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *sub_1003ED898(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1003ED8F0(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1003ED8F0(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1003ED978(v5, v5 + 1, v4 + 8);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_1003ED978(void *a1, uint64_t *a2, int *a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *sub_10002E2F4(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

const void **sub_1003EDA14(const void **a1)
{
  sub_100005978(a1 + 3);
  sub_100005978(a1 + 2);
  sub_100005978(a1 + 1);

  return sub_100005978(a1);
}

void *sub_1003EDA60(void *a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  if (v4)
  {
    dispatch_retain(v4);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v5 = _Block_copy(v5);
  }

  a1[1] = v5;
  return a1;
}

void *sub_1003EDAAC(void *a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  if (v4)
  {
    dispatch_retain(v4);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v5 = _Block_copy(v5);
  }

  a1[1] = v5;
  return a1;
}

void *sub_1003EDAF8(void *a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  if (v4)
  {
    dispatch_retain(v4);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v5 = _Block_copy(v5);
  }

  a1[1] = v5;
  return a1;
}

void *sub_1003EDB44(void *a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  if (v4)
  {
    dispatch_retain(v4);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v5 = _Block_copy(v5);
  }

  a1[1] = v5;
  return a1;
}

void *sub_1003EDB90(void *a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  if (v4)
  {
    dispatch_retain(v4);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v5 = _Block_copy(v5);
  }

  a1[1] = v5;
  return a1;
}

void *sub_1003EDBDC(void *a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  if (v4)
  {
    dispatch_retain(v4);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v5 = _Block_copy(v5);
  }

  a1[1] = v5;
  return a1;
}

void *sub_1003EDC28(void *a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  if (v4)
  {
    dispatch_retain(v4);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v5 = _Block_copy(v5);
  }

  a1[1] = v5;
  return a1;
}

uint64_t sub_1003EDC74(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*a1)
  {
    dispatch_release(*a1);
  }

  return a1;
}

const void **sub_1003EDCB4(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return sub_10001021C(a1);
}

uint64_t sub_1003EDCF8(uint64_t a1)
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

void sub_1003EDDF8(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1003EDECC);
  __cxa_rethrow();
}

void sub_1003EDE38(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1003EDE8C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003EDECC(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1003EDEF8(uint64_t a1)
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

uint64_t *sub_1003EDF78(uint64_t *a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      if (*(v1 + 8))
      {
        entitlements::ControllerImpl::init_sync(v3);
      }

      sub_100004A34(v4);
    }
  }

  sub_10007060C(&v7);
  return sub_1000049E0(&v6);
}

void sub_1003EDFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_10007060C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003EE010(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(v1 + 8))
      {
        entitlements::ControllerImpl::start_sync(v3);
      }

      sub_100004A34(v5);
    }
  }

  sub_10007060C(&v8);
  return sub_1000049E0(&v7);
}

void sub_1003EE084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_10007060C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void *sub_1003EE0A8(void *a1)
{
  *a1 = off_101E49C20;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1003EE0F4(void *a1)
{
  *a1 = off_101E49C20;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1003EE1D4(uint64_t result, uint64_t a2)
{
  *a2 = off_101E49C20;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003EE214(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1003EE224(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1003EE264(void *a1, xpc_object_t *a2)
{
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  *v16 = 0u;
  *__p = 0u;
  sub_100C1CE2C(v16, a2);
  v3 = a1[3];
  if (v3)
  {
    v4 = a1[1];
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (a1[2])
      {
        v7 = ***(v4 + 88);
        if (SHIBYTE(__p[0]) >= 0)
        {
          v8 = HIBYTE(__p[0]);
        }

        else
        {
          v8 = v16[1];
        }

        v9 = *(v7 + 47);
        v10 = v9;
        if ((v9 & 0x80u) != 0)
        {
          v9 = *(v7 + 32);
        }

        if (v8 == v9)
        {
          v11 = SHIBYTE(__p[0]) >= 0 ? v16 : v16[0];
          v14 = *(v7 + 24);
          v12 = v7 + 24;
          v13 = v14;
          v15 = (v10 >= 0 ? v12 : v13);
          if (!memcmp(v11, v15, v8))
          {
            entitlements::ControllerImpl::handlePAssociatedUri_sync(v4, &__p[1]);
          }
        }
      }

      sub_100004A34(v6);
    }
  }

  v21 = &v19;
  sub_1000087B4(&v21);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(__p[0]) < 0)
  {
    operator delete(v16[0]);
  }
}

void sub_1003EE374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100004A34(v9);
  sub_1003EE3E4(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1003EE398(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003EE3E4(uint64_t a1)
{
  v3 = (a1 + 48);
  sub_1000087B4(&v3);
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

void *sub_1003EE440(void *a1)
{
  *a1 = off_101E49CA0;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1003EE48C(void *a1)
{
  *a1 = off_101E49CA0;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1003EE56C(uint64_t result, uint64_t a2)
{
  *a2 = off_101E49CA0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003EE5AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1003EE5BC(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1003EE5FC(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  v5 = *v4;
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v14 = *v4;
    ctu::rest::detail::read_enum_string_value(&v14, a2, v7);
    *v4 = v14;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v7);
  }

  v10 = a1[4];
  if (v10)
  {
    v11 = a1[2];
    v12 = std::__shared_weak_count::lock(v10);
    if (v12)
    {
      v13 = v12;
      if (a1[3])
      {
        entitlements::ControllerImpl::handleAirplaneModeChanged_sync(v11, v5);
      }

      sub_100004A34(v13);
    }
  }
}

uint64_t sub_1003EE6F0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1003EE73C(void *a1)
{
  *a1 = off_101E49D20;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1003EE788(void *a1)
{
  *a1 = off_101E49D20;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1003EE868(uint64_t result, uint64_t a2)
{
  *a2 = off_101E49D20;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003EE8A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1003EE8B8(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1003EE8F8(uint64_t *a1, xpc_object_t *a2)
{
  sub_10011E228(a1[1], a2);
  v3 = a1[4];
  if (v3)
  {
    v4 = a1[2];
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (a1[3])
      {
        entitlements::ControllerImpl::handleDataAttached_sync(v4);
      }

      sub_100004A34(v6);
    }
  }
}

uint64_t sub_1003EE988(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1003EE9D4(void *a1)
{
  *a1 = off_101E49DA0;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1003EEA20(void *a1)
{
  *a1 = off_101E49DA0;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1003EEB00(uint64_t result, uint64_t a2)
{
  *a2 = off_101E49DA0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003EEB40(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1003EEB50(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1003EEB90(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  v13 = *v4;
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v14 = *v4;
    ctu::rest::detail::read_enum_string_value(&v14, a2, v6);
    *v4 = v14;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v6);
  }

  v9 = a1[4];
  if (v9)
  {
    v10 = a1[2];
    v11 = std::__shared_weak_count::lock(v9);
    if (v11)
    {
      v12 = v11;
      if (a1[3])
      {
        entitlements::ControllerImpl::handleWifiAvailable_sync(v10, &v13, 0);
      }

      sub_100004A34(v12);
    }
  }
}

uint64_t sub_1003EEC8C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1003EECD8(void *a1)
{
  *a1 = off_101E49E20;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1003EED24(void *a1)
{
  *a1 = off_101E49E20;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1003EEE04(uint64_t result, uint64_t a2)
{
  *a2 = off_101E49E20;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003EEE44(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1003EEE54(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1003EEE94(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  v13 = *v4;
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v14 = *v4;
    ctu::rest::detail::read_enum_string_value(&v14, a2, v6);
    *v4 = v14;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v6);
  }

  v9 = a1[4];
  if (v9)
  {
    v10 = a1[2];
    v11 = std::__shared_weak_count::lock(v9);
    if (v11)
    {
      v12 = v11;
      if (a1[3])
      {
        entitlements::ControllerImpl::handleEthernetUpdated_sync(v10, &v13);
      }

      sub_100004A34(v12);
    }
  }
}

uint64_t sub_1003EEF8C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1003EEFD8(void *a1)
{
  *a1 = off_101E49EA0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1003EF024(void *a1)
{
  *a1 = off_101E49EA0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1003EF104(uint64_t result, uint64_t a2)
{
  *a2 = off_101E49EA0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003EF144(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1003EF154(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1003EF194(void *a1, xpc_object_t *a2)
{
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v14 = 0;
    ctu::rest::detail::read_enum_string_value(&v14, a2, v5);
    v8 = v14;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    v8 = xpc::dyn_cast_or_default(a2, 0, v5);
  }

  else
  {
    v8 = 0;
  }

  v9 = a1[3];
  if (v9)
  {
    v10 = a1[1];
    v11 = std::__shared_weak_count::lock(v9);
    if (v11)
    {
      v12 = v11;
      if (a1[2])
      {
        v13 = ***(v10 + 88);
        if (!*(v13 + 49) && *(v13 + 52) == v8)
        {
          entitlements::ControllerImpl::handleDataServiceConfigRefreshed_sync(v10);
        }
      }

      sub_100004A34(v12);
    }
  }
}

uint64_t sub_1003EF29C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1003EF2E8(void *a1)
{
  *a1 = off_101E49F20;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1003EF334(void *a1)
{
  *a1 = off_101E49F20;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1003EF414(uint64_t result, uint64_t a2)
{
  *a2 = off_101E49F20;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003EF454(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1003EF464(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1003EF4A4(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[1];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      if (a1[2])
      {
        entitlements::ControllerImpl::handleDumpState_sync(v3);
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_1003EF52C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1003EF578(void *a1)
{
  *a1 = off_101E49FA0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1003EF5C4(void *a1)
{
  *a1 = off_101E49FA0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1003EF6A4(uint64_t result, uint64_t a2)
{
  *a2 = off_101E49FA0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003EF6E4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1003EF6F4(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1003EF734(void *a1)
{
  v6 = 0;
  rest::carrier_space::read_rest_value();
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[1];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[2])
      {
        entitlements::ControllerImpl::handlePlanPurchased_sync(v3, &v6);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_1003EF7B8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1003EF804(void *a1)
{
  *a1 = off_101E4A020;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1003EF850(void *a1)
{
  *a1 = off_101E4A020;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1003EF930(uint64_t result, uint64_t a2)
{
  *a2 = off_101E4A020;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003EF970(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1003EF980(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1003EF9C0(uint64_t *a1, xpc_object_t *a2)
{
  sub_10032C208(a1[1], a2);
  v3 = a1[4];
  if (v3)
  {
    v4 = a1[2];
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (a1[3])
      {
        entitlements::ControllerImpl::readUniqueId_sync(v4);
        v8 = *(v4 + 104);
        v7 = *(v4 + 112);
        while (v8 != v7)
        {
          (*(**v8 + 352))(*v8);
          v8 += 2;
        }
      }

      sub_100004A34(v6);
    }
  }
}

uint64_t sub_1003EFA98(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1003EFAE4(void *a1)
{
  *a1 = off_101E4A0A0;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1003EFB30(void *a1)
{
  *a1 = off_101E4A0A0;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1003EFC10(uint64_t result, uint64_t a2)
{
  *a2 = off_101E4A0A0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003EFC50(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1003EFC60(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1003EFCA0(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v13 = *v4;
    ctu::rest::detail::read_enum_string_value(&v13, a2, v6);
    *v4 = v13;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v6);
  }

  v9 = a1[4];
  if (v9)
  {
    v10 = a1[2];
    v11 = std::__shared_weak_count::lock(v9);
    if (v11)
    {
      v12 = v11;
      if (a1[3])
      {
        entitlements::ControllerImpl::handleDataPreferredChanged(v10);
      }

      sub_100004A34(v12);
    }
  }
}

uint64_t sub_1003EFD8C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1003EFDD8(void *a1)
{
  *a1 = off_101E4A120;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1003EFE24(void *a1)
{
  *a1 = off_101E4A120;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1003EFF04(uint64_t result, uint64_t a2)
{
  *a2 = off_101E4A120;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003EFF44(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1003EFF54(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1003EFF94(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v10 = *v3;
  v11 = v5;
  if (v3[2])
  {
    *(v5 + 16) = &v11;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v10 = &v11;
  }

  sub_1002BB888(v3, a2);
  v6 = a1[4];
  if (v6)
  {
    v7 = a1[2];
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v9 = v8;
      if (a1[3] && (v7 + 1592) != sub_100007A6C(v7 + 1584, (***(v7 + 11) + 24)) && (&v11 == sub_100007A6C(&v10, (***(v7 + 11) + 24)) || rest::operator!=()))
      {
        entitlements::ControllerImpl::schedulePNRprefetchIfNeeded(v7);
      }

      sub_100004A34(v9);
    }
  }

  sub_1002B7314(&v10, v11);
}

void sub_1003F009C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char *a11)
{
  sub_100004A34(v11);
  sub_1002B7314(&a10, a11);
  _Unwind_Resume(a1);
}

uint64_t sub_1003F00CC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1003F0118(void *a1)
{
  *a1 = off_101E4A1A0;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1003F0164(void *a1)
{
  *a1 = off_101E4A1A0;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1003F0244(uint64_t result, uint64_t a2)
{
  *a2 = off_101E4A1A0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003F0284(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1003F0294(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1003F02D4(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v22 = *v3;
  v23 = v5;
  if (v3[2])
  {
    v5[2] = &v23;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v22 = &v23;
  }

  sub_1003F0514(v3, a2);
  v6 = a1[4];
  if (v6)
  {
    v7 = a1[2];
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v9 = v8;
      if (!a1[3])
      {
        goto LABEL_43;
      }

      v10 = *(v7 + 1616);
      if (!v10)
      {
        goto LABEL_43;
      }

      v11 = *(***(v7 + 88) + 52);
      v12 = v7 + 1616;
      do
      {
        if (*(v10 + 32) >= v11)
        {
          v12 = v10;
        }

        v10 = *(v10 + 8 * (*(v10 + 32) < v11));
      }

      while (v10);
      if (v12 == v7 + 1616 || v11 < *(v12 + 32))
      {
        goto LABEL_43;
      }

      v13 = *(v12 + 63);
      if (v13 < 0)
      {
        if (!*(v12 + 48))
        {
LABEL_43:
          sub_100004A34(v9);
          goto LABEL_44;
        }
      }

      else if (!*(v12 + 63))
      {
        goto LABEL_43;
      }

      v14 = *(v12 + 87);
      if (v14 < 0)
      {
        v14 = *(v12 + 72);
      }

      if (v14)
      {
        v15 = v23;
        if (!v23)
        {
          goto LABEL_42;
        }

        v16 = &v23;
        do
        {
          if (*(v15 + 8) >= v11)
          {
            v16 = v15;
          }

          v15 = v15[*(v15 + 8) < v11];
        }

        while (v15);
        if (v16 == &v23 || v11 < *(v16 + 8))
        {
          goto LABEL_42;
        }

        if (v13 >= 0)
        {
          v17 = *(v12 + 63);
        }

        else
        {
          v17 = *(v12 + 48);
        }

        v18 = *(v16 + 63);
        v19 = v18;
        if (v18 < 0)
        {
          v18 = v16[6];
        }

        if (v17 != v18 || (v13 >= 0 ? (v20 = (v12 + 40)) : (v20 = *(v12 + 40)), v19 >= 0 ? (v21 = v16 + 5) : (v21 = v16[5]), memcmp(v20, v21, v17) || !sub_100071DF8((v12 + 64), v16 + 8)))
        {
LABEL_42:
          entitlements::ControllerImpl::handleImsiMightChange(v7, "mcc_mnc_computed_info::sink");
        }
      }

      goto LABEL_43;
    }
  }

LABEL_44:
  sub_1001A8E08(&v22, v23);
}

void sub_1003F04A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11)
{
  sub_100004A34(v11);
  sub_1001A8E08(&a10, a11);
  _Unwind_Resume(a1);
}

uint64_t sub_1003F04C8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1003F0514(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a2;
  if (*a2 && xpc_get_type(*a2) == &_xpc_type_array)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
  }

  sub_1001A8E08(a1, *(a1 + 8));
  *a1 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    sub_100008EA4(&v13, object, 0);
    xpc_release(object[0]);
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(v12, object, count);
    xpc_release(object[0]);
    for (i = v14; i != v12[1] || v13 != v12[0]; i = ++v14)
    {
      v11 = 0;
      object[0] = &v13;
      object[1] = i;
      sub_10003EAD4(object, &v11);
      if (xpc_get_type(v11) == &_xpc_type_dictionary)
      {
        v10 = 0;
        v8 = 0u;
        *__p = 0u;
        *object = 0u;
        v6 = v11;
        if (v11)
        {
          xpc_retain(v11);
        }

        else
        {
          v6 = xpc_null_create();
        }

        sub_1003F07CC(object, &v6);
        xpc_release(v6);
        sub_1001AD83C(a1, object);
        if (SHIBYTE(v10) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v8) < 0)
        {
          operator delete(object[1]);
        }
      }

      xpc_release(v11);
    }

    xpc_release(v12[0]);
    xpc_release(v13);
  }

  xpc_release(v3);
}

void sub_1003F0730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, xpc_object_t a18)
{
  xpc_release(object);
  xpc_release(*(v19 - 48));
  xpc_release(v18);
  _Unwind_Resume(a1);
}

void sub_1003F07CC(int *a1, xpc_object_t *a2)
{
  v3 = *a2;
  v9 = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v9 = v3;
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    v6 = &v9;
    v7 = "first";
    sub_100006354(&v6, &object);
    type = xpc_get_type(object);
    if (type == &_xpc_type_string)
    {
      v10 = *a1;
      ctu::rest::detail::read_enum_string_value(&v10, &object, v5);
      *a1 = v10;
    }

    else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
    {
      *a1 = xpc::dyn_cast_or_default(&object, 0, v5);
    }

    xpc_release(object);
    v6 = &v9;
    v7 = "second";
    sub_100006354(&v6, &object);
    rest::read_rest_value();
    xpc_release(object);
    v3 = v9;
  }

  xpc_release(v3);
}

void sub_1003F092C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13)
{
  xpc_release(object);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

void *sub_1003F0980(void *a1)
{
  *a1 = off_101E4A220;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1003F09CC(void *a1)
{
  *a1 = off_101E4A220;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1003F0AAC(uint64_t result, uint64_t a2)
{
  *a2 = off_101E4A220;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003F0AEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1003F0AFC(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1003F0B3C(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v15 = *v3;
  v16 = v5;
  if (v3[2])
  {
    v5[2] = &v16;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v15 = &v16;
  }

  sub_10011E228(v3, a2);
  v6 = a1[4];
  if (v6)
  {
    v7 = a1[2];
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v9 = v8;
      if (a1[3])
      {
        v10 = *(v7 + 1640);
        if (v10)
        {
          v11 = *(***(v7 + 88) + 52);
          v12 = v7 + 1640;
          do
          {
            if (*(v10 + 28) >= v11)
            {
              v12 = v10;
            }

            v10 = *(v10 + 8 * (*(v10 + 28) < v11));
          }

          while (v10);
          if (v12 != v7 + 1640 && v11 >= *(v12 + 28) && *(v12 + 32) == 1)
          {
            v13 = v16;
            if (!v16)
            {
              goto LABEL_23;
            }

            v14 = &v16;
            do
            {
              if (*(v13 + 7) >= v11)
              {
                v14 = v13;
              }

              v13 = v13[*(v13 + 7) < v11];
            }

            while (v13);
            if (v14 == &v16 || v11 < *(v14 + 7) || *(v14 + 32) != 1)
            {
LABEL_23:
              entitlements::ControllerImpl::handleImsiMightChange(v7, "isim_files_status::sink");
            }
          }
        }
      }

      sub_100004A34(v9);
    }
  }

  sub_10006DCAC(&v15, v16);
}

void sub_1003F0C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11)
{
  sub_100004A34(v11);
  sub_10006DCAC(&a10, a11);
  _Unwind_Resume(a1);
}

uint64_t sub_1003F0CB4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1003F0D00(void *a1)
{
  *a1 = off_101E4A2A0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1003F0D4C(void *a1)
{
  *a1 = off_101E4A2A0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1003F0E2C(uint64_t result, uint64_t a2)
{
  *a2 = off_101E4A2A0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003F0E6C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1003F0E7C(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1003F0EBC(uint64_t a1)
{
  rest::read_rest_value();
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      sub_100004A34(v3);
    }
  }
}

void sub_1003F0F78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  sub_100004A34(v11);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003F0FA4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1003F0FF0(void *a1)
{
  *a1 = off_101E4A320;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1003F103C(void *a1)
{
  *a1 = off_101E4A320;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1003F111C(uint64_t result, uint64_t a2)
{
  *a2 = off_101E4A320;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003F115C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1003F116C(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1003F11AC(uint64_t *a1, xpc_object_t *a2)
{
  sub_1003F14D8(a1[1], a2);
  v3 = a1[4];
  if (v3)
  {
    v4 = a1[2];
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (!a1[3])
      {
LABEL_23:
        sub_100004A34(v6);
        return;
      }

      v17 = 0u;
      memset(v16, 0, sizeof(v16));
      sub_1003F193C(v16, *(v4 + 88) + 144);
      v7 = *(v4 + 88);
      if (v7[344] == 1)
      {
        sub_1003E9A5C((v7 + 144));
        v7[344] = 0;
        v7 = *(v4 + 88);
      }

      v8 = sub_100007A6C(v4 + 1656, (**v7 + 24));
      if (v4 + 1664 == v8)
      {
        v9 = *(v4 + 40);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = PersonalityInfo::logPrefix(***(v4 + 88));
          *buf = 136315394;
          v19 = v10;
          v20 = 2080;
          v21 = " ";
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#W %s%sNo my info in ims_info_ready", buf, 0x16u);
        }

        goto LABEL_14;
      }

      if ((*(v8 + 151) & 0x8000000000000000) != 0)
      {
        if (!*(v8 + 136))
        {
          goto LABEL_14;
        }
      }

      else if (!*(v8 + 151))
      {
LABEL_14:
        v11 = *(v4 + 88);
        if ((*(v11 + 344) & 1) == 0 && BYTE8(v17) == 1)
        {
          v12 = *(v4 + 40);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = PersonalityInfo::logPrefix(**v11);
            *buf = 136315394;
            v19 = v13;
            v20 = 2080;
            v21 = " ";
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%sIMS info was revoked", buf, 0x16u);
          }
        }

        v14 = *(v4 + 104);
        v15 = *(v4 + 112);
        while (v14 != v15)
        {
          (*(**v14 + 432))(*v14, *(*(v4 + 88) + 344));
          v14 += 2;
        }

        sub_1003CA228(*(v4 + 88), 0);
        if (BYTE8(v17) == 1)
        {
          sub_1003E9A5C(v16);
        }

        goto LABEL_23;
      }

      sub_1003F18F8((*(v4 + 88) + 144), (v8 + 56));
      entitlements::ControllerImpl::handleImsiMightChange(v4, "ims_info_ready::sink");
      goto LABEL_14;
    }
  }
}

void sub_1003F144C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if (a34 == 1)
  {
    sub_1003E9A5C(&a9);
  }

  sub_100004A34(v34);
  _Unwind_Resume(a1);
}

uint64_t sub_1003F148C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1003F14D8(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a2;
  if (*a2 && xpc_get_type(*a2) == &_xpc_type_array)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
  }

  sub_1002B73A8(a1, *(a1 + 8));
  *a1 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    sub_100008EA4(&v11, object, 0);
    xpc_release(object[0]);
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(v10, object, count);
    xpc_release(object[0]);
    for (i = v12; i != v10[1] || v11 != v10[0]; i = ++v12)
    {
      v9 = 0;
      object[0] = &v11;
      object[1] = i;
      sub_10003EAD4(object, &v9);
      if (xpc_get_type(v9) == &_xpc_type_dictionary)
      {
        *object = 0u;
        memset(v8, 0, sizeof(v8));
        v6 = v9;
        if (v9)
        {
          xpc_retain(v9);
        }

        else
        {
          v6 = xpc_null_create();
        }

        sub_1003F17B0(object, &v6);
        xpc_release(v6);
        sub_1002BB118(a1, object);
        sub_1003E9A5C(v8 + 8);
        if (SBYTE7(v8[0]) < 0)
        {
          operator delete(object[0]);
        }
      }

      xpc_release(v9);
    }

    xpc_release(v10[0]);
    xpc_release(v11);
  }

  xpc_release(v3);
}

void sub_1003F1714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v12 - 80));
  xpc_release(v11);
  _Unwind_Resume(a1);
}

void sub_1003F17B0(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a2;
  v7 = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v7 = v3;
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    v4 = &v7;
    v5 = "first";
    sub_100006354(&v4, &object);
    read_rest_value();
    xpc_release(object);
    v4 = &v7;
    v5 = "second";
    sub_100006354(&v4, &object);
    sub_100C1DE98(a1 + 24, &object);
    xpc_release(object);
    v3 = v7;
  }

  xpc_release(v3);
}

void sub_1003F18A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

char *sub_1003F18F8(char *a1, __int128 *a2)
{
  if (a1[200] == 1)
  {
    sub_1003F1BD0(a1, a2);
  }

  else
  {
    sub_1003F19A4(a1, a2);
    a1[200] = 1;
  }

  return a1;
}

char *sub_1003F193C(char *__dst, uint64_t a2)
{
  *__dst = 0;
  __dst[200] = 0;
  if (*(a2 + 200) == 1)
  {
    sub_1003F19A4(__dst, a2);
    __dst[200] = 1;
  }

  return __dst;
}

void sub_1003F1984(_Unwind_Exception *exception_object)
{
  if (*(v1 + 200) == 1)
  {
    sub_1003E9A5C(v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1003F19A4(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  if (*(a2 + 71) < 0)
  {
    sub_100005F2C(__dst + 48, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(__dst + 8) = *(a2 + 8);
    *(__dst + 3) = v6;
  }

  if (*(a2 + 95) < 0)
  {
    sub_100005F2C(__dst + 72, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    *(__dst + 11) = *(a2 + 11);
    *(__dst + 72) = v7;
  }

  if (*(a2 + 119) < 0)
  {
    sub_100005F2C(__dst + 96, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v8 = a2[6];
    *(__dst + 14) = *(a2 + 14);
    *(__dst + 6) = v8;
  }

  *(__dst + 15) = 0;
  *(__dst + 16) = 0;
  *(__dst + 17) = 0;
  sub_10004EFD0((__dst + 120), *(a2 + 15), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 15)) >> 3));
  if (*(a2 + 167) < 0)
  {
    sub_100005F2C(__dst + 144, *(a2 + 18), *(a2 + 19));
  }

  else
  {
    v9 = a2[9];
    *(__dst + 20) = *(a2 + 20);
    *(__dst + 9) = v9;
  }

  *(__dst + 21) = 0;
  *(__dst + 22) = 0;
  *(__dst + 23) = 0;
  sub_10004EFD0((__dst + 168), *(a2 + 21), *(a2 + 22), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 22) - *(a2 + 21)) >> 3));
  *(__dst + 48) = *(a2 + 48);
  return __dst;
}

void sub_1003F1B28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000087B4(va);
  if (*(v2 + 119) < 0)
  {
    operator delete(*(v2 + 96));
  }

  if (*(v2 + 95) < 0)
  {
    operator delete(*(v2 + 72));
  }

  if (*(v2 + 71) < 0)
  {
    operator delete(*(v2 + 48));
  }

  if (*(v2 + 47) < 0)
  {
    operator delete(*(v2 + 24));
  }

  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003F1BD0(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  std::string::operator=((a1 + 24), (a2 + 24));
  std::string::operator=((a1 + 48), (a2 + 48));
  std::string::operator=((a1 + 72), (a2 + 72));
  std::string::operator=((a1 + 96), (a2 + 96));
  if (a1 == a2)
  {
    std::string::operator=((a1 + 144), (a2 + 144));
  }

  else
  {
    sub_100008234((a1 + 120), *(a2 + 120), *(a2 + 128), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 128) - *(a2 + 120)) >> 3));
    std::string::operator=((a1 + 144), (a2 + 144));
    sub_100008234((a1 + 168), *(a2 + 168), *(a2 + 176), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 176) - *(a2 + 168)) >> 3));
  }

  *(a1 + 192) = *(a2 + 192);
  return a1;
}

void *sub_1003F1C98(void *a1)
{
  *a1 = off_101E4A3A0;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1003F1CE4(void *a1)
{
  *a1 = off_101E4A3A0;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1003F1DC4(uint64_t result, uint64_t a2)
{
  *a2 = off_101E4A3A0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003F1E04(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1003F1E14(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1003F1E54(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  if (xpc_get_type(*a2) == &_xpc_type_null)
  {
    if (*(v4 + 24))
    {
      v9[0] = v4;
      sub_1003E9950(v9);
      *(v4 + 24) = 0;
    }
  }

  else
  {
    if ((*(v4 + 24) & 1) == 0)
    {
      memset(v9, 0, sizeof(v9));
      sub_1003F1F98(v4, v9);
      v10 = v9;
      sub_1003E9950(&v10);
    }

    sub_1003F2018(v4, a2);
  }

  v5 = a1[4];
  if (v5)
  {
    v6 = a1[2];
    v7 = std::__shared_weak_count::lock(v5);
    if (v7)
    {
      v8 = v7;
      if (a1[3])
      {
        entitlements::ControllerImpl::handleRemoteDevicesChanged(v6);
      }

      sub_100004A34(v8);
    }
  }
}

uint64_t sub_1003F1F4C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003F1F98(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    sub_1003F2250(a1);
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_1003F2018(uint64_t *a1, xpc_object_t *a2)
{
  v3 = *a2;
  if (*a2 && xpc_get_type(*a2) == &_xpc_type_array)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
  }

  sub_1003E99A4(a1, *a1);
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    sub_100008EA4(&v11, object, 0);
    xpc_release(object[0]);
    v9[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      v9[0] = xpc_null_create();
    }

    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(object, v9, count);
    xpc_release(v9[0]);
    for (i = v12; i != object[1] || v11 != object[0]; i = ++v12)
    {
      v9[0] = &v11;
      v9[1] = i;
      v6 = a1[1];
      if (v6 >= a1[2])
      {
        v7 = sub_1003F2290(a1);
      }

      else
      {
        v6[5] = 0u;
        v6[6] = 0u;
        v6[3] = 0u;
        v6[4] = 0u;
        v6[1] = 0u;
        v6[2] = 0u;
        v7 = (v6 + 7);
        *v6 = 0u;
      }

      a1[1] = v7;
      sub_100008EF0(v9, &v8);
      sub_100808168(v7 - 112, &v8);
      xpc_release(v8);
    }

    xpc_release(object[0]);
    xpc_release(v11);
  }

  xpc_release(v3);
}

void sub_1003F21DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object, uint64_t a12, xpc_object_t a13, uint64_t a14, xpc_object_t a15)
{
  xpc_release(object);
  xpc_release(a15);
  xpc_release(v15);
  _Unwind_Resume(a1);
}

void sub_1003F2250(uint64_t *a1)
{
  if (*a1)
  {
    sub_1003E99A4(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_1003F2290(uint64_t *a1)
{
  v1 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4);
  v2 = v1 + 1;
  if ((v1 + 1) > 0x249249249249249)
  {
    sub_1000CE3D4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v2)
  {
    v2 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v4 = 0x249249249249249;
  }

  else
  {
    v4 = v2;
  }

  v15 = a1;
  if (v4)
  {
    sub_1003F23D0(a1, v4);
  }

  v5 = 112 * v1;
  v12 = 0;
  v13 = v5;
  *(&v14 + 1) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *&v14 = 112 * v1 + 112;
  v6 = a1[1];
  v7 = 112 * v1 + *a1 - v6;
  sub_1003F242C(a1, *a1, v6, v5 + *a1 - v6);
  v8 = *a1;
  *a1 = v7;
  v9 = a1[2];
  v11 = v14;
  *(a1 + 1) = v14;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  v12 = v8;
  v13 = v8;
  sub_1003F25E4(&v12);
  return v11;
}

void sub_1003F23BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1003F25E4(va);
  _Unwind_Resume(a1);
}

void sub_1003F23D0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1003F242C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 == a3)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *(a4 + 24) = *(v7 + 24);
      v8 = *(v7 + 32);
      *(a4 + 48) = *(v7 + 48);
      *(a4 + 32) = v8;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 32) = 0;
      v9 = *(v7 + 56);
      *(a4 + 72) = *(v7 + 72);
      *(a4 + 56) = v9;
      *(v7 + 64) = 0;
      *(v7 + 72) = 0;
      *(v7 + 56) = 0;
      v10 = *(v7 + 80);
      *(a4 + 96) = *(v7 + 96);
      *(a4 + 80) = v10;
      *(v7 + 88) = 0;
      *(v7 + 96) = 0;
      *(v7 + 80) = 0;
      *(a4 + 104) = *(v7 + 104);
      v7 += 112;
      a4 += 112;
    }

    while (v7 != a3);
    v15 = a4;
    LOBYTE(v13) = 1;
    while (v5 != a3)
    {
      sub_1003E99F8(a1, v5);
      v5 += 112;
    }
  }

  return sub_1003F2558(v12);
}

uint64_t sub_1003F2558(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1003F2590(a1);
  }

  return a1;
}

void sub_1003F2590(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 112;
      sub_1003E99F8(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_1003F25E4(uint64_t a1)
{
  sub_1003F261C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1003F261C(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 112;
    sub_1003E99F8(v5, v4 - 112);
  }
}

void *sub_1003F2664(void *a1)
{
  *a1 = off_101E4A420;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1003F26B0(void *a1)
{
  *a1 = off_101E4A420;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1003F2790(uint64_t result, uint64_t a2)
{
  *a2 = off_101E4A420;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003F27D0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1003F27E0(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1003F2820(void *a1, unsigned __int8 *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = *a2;
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[2])
      {
        (*(*v5 + 552))(v5, v4, 0);
      }

      sub_100004A34(v7);
    }
  }
}

uint64_t sub_1003F28DC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003F2928(uint64_t a1)
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

void sub_1003F29A8(uint64_t **a1)
{
  v3 = a1;
  v1 = **a1;
  v2 = ***(v1 + 88);
  v4 = 0;
  if (*(v2 + 47) < 0)
  {
    sub_100005F2C(&__p, *(v2 + 24), *(v2 + 32));
  }

  else
  {
    __p = *(v2 + 24);
    v6 = *(v2 + 40);
  }

  sub_1003E3940(v1 + 1536, &v4);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void *sub_1003F2A94(void *a1)
{
  *a1 = off_101E4A4B0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1003F2AE0(void *a1)
{
  *a1 = off_101E4A4B0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1003F2BC0(uint64_t result, uint64_t a2)
{
  *a2 = off_101E4A4B0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003F2C00(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1003F2C10(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1003F2C50(void *a1, uint64_t a2, __int16 *a3)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *v11 = *(a2 + 16);
  *&v11[3] = *(a2 + 19);
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v7 = a1[3];
  if (v7)
  {
    v8 = *a3;
    v9 = a1[1];
    v10 = std::__shared_weak_count::lock(v7);
    if (v10)
    {
      if (a1[2])
      {
        if (v6 < 0)
        {
          sub_100005F2C(__p, v4, v5);
        }

        else
        {
          __p[0] = v4;
          __p[1] = v5;
          *v13 = *v11;
          *&v13[3] = *&v11[3];
          v14 = v6;
        }

        v15 = v8;
        sub_1003F2DA8((v9 + 8));
      }

      sub_100004A34(v10);
    }
  }

  if (v6 < 0)
  {
    operator delete(v4);
  }
}

void sub_1003F2D40(_Unwind_Exception *a1)
{
  sub_100004A34(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1003F2D5C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1003F2DA8(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_1003F2E98(uint64_t *a1)
{
  v1 = a1;
  v3 = a1;
  v2 = *a1;
  sub_1003F2F48(*a1);
  v4 = 0;
  if (!v2)
  {
    v3 = 0;
    goto LABEL_5;
  }

  sub_1003F3574(&v4, v2);
  v1 = v3;
  v3 = 0;
  if (v1)
  {
LABEL_5:
    sub_1002B78C4(&v3, v1);
  }
}

void sub_1003F2F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = v11;
  a10 = 0;
  if (v12)
  {
    sub_1003F3574(&a10, v12);
    v10 = a9;
    a9 = 0;
    if (!v10)
    {
      goto LABEL_5;
    }
  }

  else
  {
    a9 = 0;
  }

  sub_1002B78C4(&a9, v10);
LABEL_5:
  _Unwind_Resume(a1);
}

void sub_1003F2F48(uint64_t a1)
{
  v2 = *a1;
  memset(&__p, 0, sizeof(__p));
  if (*(a1 + 31) < 0)
  {
    sub_100005F2C(&__p, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    __p = *(a1 + 8);
  }

  if (*(a1 + 33) == 1)
  {
    entitlements::ControllerImpl::getLastUsedImsi(v2, &buf);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = buf;
    v3 = *(v2 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = PersonalityInfo::logPrefix(***(v2 + 88));
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((*(a1 + 33) & 1) == 0)
      {
        sub_1000D1644();
      }

      v6 = v4;
      v7 = asString();
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
      *(buf.__r_.__value_.__r.__words + 4) = v6;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
      v49 = p_p;
      v50 = 2080;
      v51 = v7;
      v8 = "#E %s%sFailed to read IMSI, using last used (%s) with error:%s";
      v9 = v3;
      v10 = 42;
LABEL_72:
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v8, &buf, v10);
    }
  }

  else
  {
    if ((*(a1 + 31) & 0x8000000000000000) != 0)
    {
      if (*(a1 + 16))
      {
        goto LABEL_20;
      }
    }

    else if (*(a1 + 31))
    {
      goto LABEL_20;
    }

    entitlements::ControllerImpl::getLastUsedImsi(v2, &buf);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = buf;
    v11 = *(v2 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v39 = PersonalityInfo::logPrefix(***(v2 + 88));
      v40 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v40 = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
      *(buf.__r_.__value_.__r.__words + 4) = v39;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
      v49 = v40;
      v8 = "#E %s%sEmpty IMSI, using last used: (%s)";
      v9 = v11;
      v10 = 32;
      goto LABEL_72;
    }
  }

LABEL_20:
  v12 = *(v2 + 88);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v14 = *(v12 + 87);
  v15 = v14;
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(v12 + 72);
  }

  if (size == v14)
  {
    v16 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v19 = *(v12 + 64);
    v17 = v12 + 64;
    v18 = v19;
    v20 = (v15 >= 0 ? v17 : v18);
    if (!memcmp(v16, v20, size))
    {
      goto LABEL_64;
    }
  }

  if (!entitlements::ControllerImpl::isAllowedImsi(v2, &__p))
  {
    goto LABEL_64;
  }

  std::string::operator=((*(v2 + 88) + 64), &__p);
  v21 = *(v2 + 40);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = PersonalityInfo::logPrefix(***(v2 + 88));
    v23 = *(v2 + 88);
    v24 = (v23 + 64);
    if (*(v23 + 87) < 0)
    {
      v24 = v24->__r_.__value_.__r.__words[0];
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
    *(buf.__r_.__value_.__r.__words + 4) = v22;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
    v49 = v24;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s%sObtained IMSI: %s", &buf, 0x20u);
  }

  ServiceMap = Registry::getServiceMap(*(v2 + 64));
  v26 = ServiceMap;
  if ((v27 & 0x8000000000000000) != 0)
  {
    v28 = (v27 & 0x7FFFFFFFFFFFFFFFLL);
    v29 = 5381;
    do
    {
      v27 = v29;
      v30 = *v28++;
      v29 = (33 * v29) ^ v30;
    }

    while (v30);
  }

  std::mutex::lock(ServiceMap);
  buf.__r_.__value_.__r.__words[0] = v27;
  v31 = sub_100009510(&v26[1].__m_.__sig, &buf);
  if (!v31)
  {
    v33 = 0;
    goto LABEL_45;
  }

  v33 = v31[3];
  v32 = v31[4];
  if (!v32)
  {
LABEL_45:
    std::mutex::unlock(v26);
    v32 = 0;
    v34 = 1;
    goto LABEL_46;
  }

  atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v26);
  atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v32);
  v34 = 0;
LABEL_46:
  v35 = *(v2 + 88);
  v36 = **v35;
  if (*(v35 + 87) < 0)
  {
    sub_100005F2C(&v41, v35[8], v35[9]);
  }

  else
  {
    v41 = *(v35 + 8);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&__dst, v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
  }

  else
  {
    __dst = v41;
  }

  v44 = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&buf, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    buf = __dst;
  }

  v46 = 0;
  if (ctu::cf::convert_copy())
  {
    v37 = v44;
    v44 = v46;
    v47 = v37;
    sub_100005978(&v47);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v38 = v44;
  v42 = v44;
  v44 = 0;
  sub_100005978(&v44);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  (*(*v33 + 16))(v33, v36 + 24, @"last-used-imsi", v38, kCarrierEntitlementsWalletDomain, 0, 1, 0);
  sub_100005978(&v42);
  if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v34)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

  operator delete(v41.__r_.__value_.__l.__data_);
  if ((v34 & 1) == 0)
  {
LABEL_63:
    sub_100004A34(v32);
  }

LABEL_64:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1003F34B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, const void *a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  sub_100005978(&a22);
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if ((v38 & 1) == 0)
  {
    sub_100004A34(v37);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void sub_1003F3574(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 31) < 0)
    {
      operator delete(*(a2 + 8));
    }

    operator delete();
  }
}

uint64_t sub_1003F35D0(uint64_t a1)
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

uint64_t sub_1003F3650(uint64_t a1)
{
  *a1 = off_101E4A540;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1003F36AC(uint64_t a1)
{
  *a1 = off_101E4A540;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

void sub_1003F37CC(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

char *sub_1003F37EC(char *result, uint64_t a2)
{
  *a2 = off_101E4A540;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 3);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  if (result[55] < 0)
  {
    return sub_100005F2C((a2 + 32), *(result + 4), *(result + 5));
  }

  v3 = *(result + 2);
  *(a2 + 48) = *(result + 6);
  *(a2 + 32) = v3;
  return result;
}

void sub_1003F3870(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003F3890(void *a1)
{
  sub_10028F698(a1 + 8);

  operator delete(a1);
}

void sub_1003F38CC(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v9 = *a2;
  v8 = *(a2 + 8);
  v10 = v8;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = *(a1 + 8);
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      if (*(a1 + 16))
      {
        v11 = v5;
        if (*(a1 + 55) < 0)
        {
          sub_100005F2C(__p, *(a1 + 32), *(a1 + 40));
          v3 = v9;
          v7 = v10;
        }

        else
        {
          *__p = *(a1 + 32);
          __p[2] = *(a1 + 48);
          v7 = v8;
        }

        v13 = 0uLL;
        v14 = 0;
        sub_10027E628(&v13, v3, v7, 0x2E8BA2E8BA2E8BA3 * ((v7 - v3) >> 3));
        v15[0] = 0;
        v15[1] = 0;
        sub_100004AA0(v15, (v5 + 8));
        operator new();
      }

      sub_100004A34(v6);
    }
  }

  v11 = &v9;
  sub_100112048(&v11);
}

void sub_1003F3ACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  sub_100004A34(v20);
  a14 = &a11;
  sub_100112048(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_1003F3B10(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1003F3B5C(void **a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v9 = 0u;
  memset(v8, 0, sizeof(v8));
  sGetProfileDetails();
  if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
  {
    v3 = PersonalityInfo::logPrefix(***(v2 + 88));
    sub_10176F994(v3, v7);
  }

  if (BYTE8(v9) == 1)
  {
    sub_100E3A5D4(v8);
  }

  sub_1003F3D50(&v6);
  return sub_1000049E0(&v5);
}

void sub_1003F3D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  if (a42 == 1)
  {
    sub_100E3A5D4(&a15);
  }

  sub_1003F3D50(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003F3D50(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = (v1 + 32);
    sub_100112048(&v2);
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

void *sub_1003F3DC0(void *a1)
{
  *a1 = off_101E4A5C0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1003F3E0C(void *a1)
{
  *a1 = off_101E4A5C0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1003F3EEC(uint64_t result, uint64_t a2)
{
  *a2 = off_101E4A5C0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003F3F2C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1003F3F3C(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1003F3F7C(void *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *v11 = *(a2 + 16);
  *&v11[3] = *(a2 + 19);
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v7 = a1[3];
  if (v7)
  {
    v8 = *a3;
    v9 = a1[1];
    v10 = std::__shared_weak_count::lock(v7);
    if (v10)
    {
      if (a1[2])
      {
        if (v6 < 0)
        {
          sub_100005F2C(__p, v4, v5);
        }

        else
        {
          __p[0] = v4;
          __p[1] = v5;
          *v13 = *v11;
          *&v13[3] = *&v11[3];
          v14 = v6;
        }

        v15 = v8;
        v16 = BYTE4(v8);
        sub_1003F40DC((v9 + 8));
      }

      sub_100004A34(v10);
    }
  }

  if (v6 < 0)
  {
    operator delete(v4);
  }
}

void sub_1003F4074(_Unwind_Exception *a1)
{
  sub_100004A34(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1003F4090(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1003F40DC(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_1003F41C4(uint64_t *a1)
{
  v1 = a1;
  v3 = a1;
  v2 = *a1;
  sub_1003F4274(*a1);
  v4 = 0;
  if (!v2)
  {
    v3 = 0;
    goto LABEL_5;
  }

  sub_1003F48A0(&v4, v2);
  v1 = v3;
  v3 = 0;
  if (v1)
  {
LABEL_5:
    sub_1002B78C4(&v3, v1);
  }
}

void sub_1003F4230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = v11;
  a10 = 0;
  if (v12)
  {
    sub_1003F48A0(&a10, v12);
    v10 = a9;
    a9 = 0;
    if (!v10)
    {
      goto LABEL_5;
    }
  }

  else
  {
    a9 = 0;
  }

  sub_1002B78C4(&a9, v10);
LABEL_5:
  _Unwind_Resume(a1);
}

void sub_1003F4274(uint64_t a1)
{
  v2 = *a1;
  memset(&__p, 0, sizeof(__p));
  if (*(a1 + 31) < 0)
  {
    sub_100005F2C(&__p, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    __p = *(a1 + 8);
  }

  if (*(a1 + 36) == 1)
  {
    entitlements::ControllerImpl::getLastUsedImsi(v2, &buf);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = buf;
    v3 = *(v2 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = PersonalityInfo::logPrefix(***(v2 + 88));
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((*(a1 + 36) & 1) == 0)
      {
        sub_1000D1644();
      }

      v6 = v4;
      v7 = subscriber::asString();
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
      *(buf.__r_.__value_.__r.__words + 4) = v6;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
      v49 = p_p;
      v50 = 2080;
      v51 = v7;
      v8 = "#E %s%sFailed to read IMSI, using last used (%s) with error:%s";
      v9 = v3;
      v10 = 42;
LABEL_72:
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v8, &buf, v10);
    }
  }

  else
  {
    if ((*(a1 + 31) & 0x8000000000000000) != 0)
    {
      if (*(a1 + 16))
      {
        goto LABEL_20;
      }
    }

    else if (*(a1 + 31))
    {
      goto LABEL_20;
    }

    entitlements::ControllerImpl::getLastUsedImsi(v2, &buf);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = buf;
    v11 = *(v2 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v39 = PersonalityInfo::logPrefix(***(v2 + 88));
      v40 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v40 = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
      *(buf.__r_.__value_.__r.__words + 4) = v39;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
      v49 = v40;
      v8 = "#E %s%sEmpty IMSI, using last used: (%s)";
      v9 = v11;
      v10 = 32;
      goto LABEL_72;
    }
  }

LABEL_20:
  v12 = *(v2 + 88);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v14 = *(v12 + 87);
  v15 = v14;
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(v12 + 72);
  }

  if (size == v14)
  {
    v16 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v19 = *(v12 + 64);
    v17 = v12 + 64;
    v18 = v19;
    v20 = (v15 >= 0 ? v17 : v18);
    if (!memcmp(v16, v20, size))
    {
      goto LABEL_64;
    }
  }

  if (!entitlements::ControllerImpl::isAllowedImsi(v2, &__p))
  {
    goto LABEL_64;
  }

  std::string::operator=((*(v2 + 88) + 64), &__p);
  v21 = *(v2 + 40);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = PersonalityInfo::logPrefix(***(v2 + 88));
    v23 = *(v2 + 88);
    v24 = (v23 + 64);
    if (*(v23 + 87) < 0)
    {
      v24 = v24->__r_.__value_.__r.__words[0];
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
    *(buf.__r_.__value_.__r.__words + 4) = v22;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
    v49 = v24;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s%sObtained IMSI: %s", &buf, 0x20u);
  }

  ServiceMap = Registry::getServiceMap(*(v2 + 64));
  v26 = ServiceMap;
  if ((v27 & 0x8000000000000000) != 0)
  {
    v28 = (v27 & 0x7FFFFFFFFFFFFFFFLL);
    v29 = 5381;
    do
    {
      v27 = v29;
      v30 = *v28++;
      v29 = (33 * v29) ^ v30;
    }

    while (v30);
  }

  std::mutex::lock(ServiceMap);
  buf.__r_.__value_.__r.__words[0] = v27;
  v31 = sub_100009510(&v26[1].__m_.__sig, &buf);
  if (!v31)
  {
    v33 = 0;
    goto LABEL_45;
  }

  v33 = v31[3];
  v32 = v31[4];
  if (!v32)
  {
LABEL_45:
    std::mutex::unlock(v26);
    v32 = 0;
    v34 = 1;
    goto LABEL_46;
  }

  atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v26);
  atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v32);
  v34 = 0;
LABEL_46:
  v35 = *(v2 + 88);
  v36 = **v35;
  if (*(v35 + 87) < 0)
  {
    sub_100005F2C(&v41, v35[8], v35[9]);
  }

  else
  {
    v41 = *(v35 + 8);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&__dst, v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
  }

  else
  {
    __dst = v41;
  }

  v44 = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&buf, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    buf = __dst;
  }

  v46 = 0;
  if (ctu::cf::convert_copy())
  {
    v37 = v44;
    v44 = v46;
    v47 = v37;
    sub_100005978(&v47);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v38 = v44;
  v42 = v44;
  v44 = 0;
  sub_100005978(&v44);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  (*(*v33 + 16))(v33, v36 + 24, @"last-used-imsi", v38, kCarrierEntitlementsWalletDomain, 0, 1, 0);
  sub_100005978(&v42);
  if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v34)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

  operator delete(v41.__r_.__value_.__l.__data_);
  if ((v34 & 1) == 0)
  {
LABEL_63:
    sub_100004A34(v32);
  }

LABEL_64:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1003F47E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, const void *a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  sub_100005978(&a22);
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if ((v38 & 1) == 0)
  {
    sub_100004A34(v37);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void sub_1003F48A0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 31) < 0)
    {
      operator delete(*(a2 + 8));
    }

    operator delete();
  }
}

uint64_t sub_1003F48FC(uint64_t a1)
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

uint64_t *sub_1003F497C(void **a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = v1[2];
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (v1[1])
      {
        entitlements::ControllerImpl::readUniqueId_sync(v3);
        std::mutex::lock((v3 + 2168));
        *(v3 + 2104) = 0;
        std::mutex::unlock((v3 + 2168));
      }

      sub_100004A34(v5);
    }
  }

  sub_10007060C(&v8);
  return sub_1000049E0(&v7);
}

void sub_1003F4A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_10007060C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

const void **sub_1003F4A2C@<X0>(uint64_t a1@<X0>, const void **a2@<X8>)
{
  v3 = **(a1 + 40);
  *a2 = 0;
  theDict = 0;
  entitlements::ControllerImpl::readPhoneNumberSignatureFromKeychain_sync(v3, &theDict);
  v24 = 0;
  ServiceMap = Registry::getServiceMap(*(v3 + 64));
  v5 = ServiceMap;
  if (v6 < 0)
  {
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  *buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, buf);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v13 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_9:
  (*(*v12 + 24))(&v23, v12, ***(v3 + 88) + 24, @"rcstoken-pnr", kCarrierEntitlementsWalletDomain, 0, 4);
  sub_100010180(&v24, &v23);
  sub_10000A1EC(&v23);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  if (!v24)
  {
    sub_1000676D4(a2, &theDict);
    goto LABEL_26;
  }

  v23 = 0;
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (!MutableCopy)
    {
      goto LABEL_17;
    }
  }

  v15 = v23;
  v23 = MutableCopy;
  *buf = v15;
  sub_1000296E0(buf);
LABEL_17:
  Value = CFDictionaryGetValue(v24, @"signed-response");
  v17 = Value;
  if (Value && (v18 = CFGetTypeID(Value), v18 == CFStringGetTypeID()))
  {
    CFDictionarySetValue(v23, @"kCarrierPhoneNumberRCSToken", v17);
  }

  else
  {
    v19 = *(v3 + 40);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = PersonalityInfo::logPrefix(***(v3 + 88));
      *buf = 136315650;
      *&buf[4] = v20;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v27 = 2112;
      v28 = @"signed-response";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#W %s%s'%@' field is missing or of wrong format", buf, 0x20u);
    }

    *buf = off_101E4A670;
    *&buf[8] = v3;
    v28 = buf;
    logger::CFTypeRefLogger();
    sub_100007E44(buf);
  }

  sub_100010180(&v22, &v23);
  if (&v22 != a2)
  {
    *buf = 0;
    *a2 = v22;
    v22 = 0;
    sub_10001021C(buf);
  }

  sub_10001021C(&v22);
  sub_1000296E0(&v23);
LABEL_26:
  sub_10001021C(&v24);
  return sub_10001021C(&theDict);
}

void sub_1003F4D88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  sub_1000296E0(va);
  sub_10001021C(va1);
  sub_10001021C(va2);
  sub_10001021C(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1003F4E88(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E4A670;
  a2[1] = v2;
  return result;
}

void sub_1003F4EB4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(***(v3 + 88));
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    v7 = 136315650;
    v8 = v5;
    v9 = 2080;
    v10 = " ";
    v11 = 2080;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#W %s%s%s", &v7, 0x20u);
  }
}

uint64_t sub_1003F4F98(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const void **sub_1003F4FE4(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  if (v2 != &v5)
  {
    v3 = *v2;
    *v2 = 0;
    v6 = v3;
    *v2 = v5;
    v5 = 0;
    sub_10001021C(&v6);
  }

  return sub_10001021C(&v5);
}

const void **sub_1003F505C(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  if (v2 != &v5)
  {
    v3 = *v2;
    *v2 = 0;
    v6 = v3;
    *v2 = v5;
    v5 = 0;
    sub_10001021C(&v6);
  }

  return sub_10001021C(&v5);
}

void *sub_1003F50D4(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

const void **sub_1003F510C(const void **a1, const void **a2)
{
  if (a1 != a2)
  {
    v5 = 0;
    sub_1003F5164(&v5, a2);
    v3 = *a1;
    *a1 = v5;
    v5 = v3;
    sub_100029A48(&v5);
  }

  return a1;
}

const void **sub_1003F5164(const void **a1, const void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

__n128 sub_1003F5210(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E4A730;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

unint64_t sub_1003F5240(uint64_t a1, int *a2)
{
  v3 = *a2;
  result = sub_100070C90(*(a1 + 8), *a2);
  if (result)
  {
    if (v3 - 10 < 0xD || (v3 <= 8 ? (v5 = ((1 << v3) & 0x1CC) == 0) : (v5 = 1), !v5))
    {
      ***(a1 + 16) = 1;
    }
  }

  return result;
}

uint64_t sub_1003F52AC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1003F52F8(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v24 = 0;
  v25 = 0;
  entitlements::ControllerImpl::findDriverForTask(v2, *(v1 + 2), &v24);
  v3 = v24;
  if (!v24)
  {
    v5 = *(v2 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PersonalityInfo::logPrefix(***(v2 + 88));
      v7 = sub_1000710D4(1);
      *buf = 136315650;
      *&buf[4] = v6;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v27 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#W %s%sno driver for action %s", buf, 0x20u);
    }

LABEL_22:
    v4 = 0;
    goto LABEL_23;
  }

  if ((*(*v24 + 376))(v24, 1, 1))
  {
    v4 = 1;
LABEL_23:
    v21 = ***(v2 + 88);
    if (*(v21 + 47) < 0)
    {
      sub_100005F2C(buf, *(v21 + 24), *(v21 + 32));
    }

    else
    {
      *buf = *(v21 + 24);
      *&buf[16] = *(v21 + 40);
    }

    v22 = 0;
    v23 = 0;
    sub_1003F5784(&event::entitlements::set_entitlement_result, buf, v4, &v22);
    if (v23)
    {
      sub_100004A34(v23);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    goto LABEL_30;
  }

  v8 = 0;
  while (1)
  {
    v9 = 1 << v8;
    if ((v1[2] & (1 << v8)) != 0)
    {
      if ((*(v2 + 192) & v9) == 0)
      {
        v15 = *(v2 + 40);
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_18;
        }

        v16 = PersonalityInfo::logPrefix(***(v2 + 88));
        v17 = sub_10006EE44(v8);
        *buf = 136315650;
        *&buf[4] = v16;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2080;
        v27 = v17;
        v13 = v15;
        v14 = "#I %s%sIgnoring %s entitlement for 'set entitlement' - not supported";
LABEL_17:
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 0x20u);
        goto LABEL_18;
      }

      if ((sub_100070C90(v2, v8) & 1) == 0)
      {
        v18 = *(v2 + 40);
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_18;
        }

        v19 = PersonalityInfo::logPrefix(***(v2 + 88));
        v20 = sub_10006EE44(v8);
        *buf = 136315650;
        *&buf[4] = v19;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2080;
        v27 = v20;
        v13 = v18;
        v14 = "#I %s%sIgnoring %s entitlement for 'set entitlement' - not activated yet";
        goto LABEL_17;
      }

      if ((v8 & 0x1E) != 6)
      {
        v10 = *(v2 + 40);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = PersonalityInfo::logPrefix(***(v2 + 88));
          v12 = sub_10006EE44(v8);
          *buf = 136315650;
          *&buf[4] = v11;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          *&buf[22] = 2080;
          v27 = v12;
          v13 = v10;
          v14 = "#I %s%sIgnoring %s entitlement for 'set entitlement' - not applicable";
          goto LABEL_17;
        }

LABEL_18:
        v1[2] &= ~v9;
      }
    }

    if (++v8 == 23)
    {
      if ((v1[2] & 0x7FFFFF) == 0 || ((*(*v3 + 32))(v3, v1 + 2) & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_30:
      if (v25)
      {
        sub_100004A34(v25);
      }

      operator delete();
    }
  }
}

void sub_1003F5708(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  operator delete();
}

void sub_1003F5784(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v15 = *(a2 + 16);
  }

  v8 = a4[1];
  v12 = *a4;
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003F58A4((a1 + 24), __p, a3);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  v9 = a4[1];
  v10 = *a4;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003F5AE8(a1, a2, a3, &v10);
  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_1003F5868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003F58A4(uint64_t *a1, uint64_t a2, int a3)
{
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  v20 = 0u;
  v21 = 0u;
  *v19 = 0u;
  memset(v18, 0, sizeof(v18));
  v17 = 0u;
  sub_10000D518(&v17);
  v6 = *(a2 + 23);
  v7 = (v6 & 0x80u) != 0;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (v7)
  {
    v8 = *a2;
  }

  else
  {
    v8 = a2;
  }

  if (v6)
  {
    v9 = v8;
  }

  else
  {
    v9 = "<invalid>";
  }

  strlen(v9);
  v10 = sub_10000C030(&v17);
  v11 = sub_10000C030(v10);
  v12 = sub_100A38E30(a3);
  strlen(v12);
  v13 = sub_10000C030(v11);
  sub_10000C030(v13);
  std::ostream::operator<<();
  sub_10006EE70(&v17 + 8, __p);
  sub_1000841A0(a1, __p);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[1]);
  }

  std::locale::~locale(v18);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1003F5AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100D50834(va);
  _Unwind_Resume(a1);
}

void sub_1003F5AE8(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v7 = sub_1002B8AC0((a1 + 8));
  v8 = a4[1];
  v9 = *a4;
  v10 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003F5B74(v7, a2, a3, &v9);
  if (v10)
  {
    sub_100004A34(v10);
  }
}

void sub_1003F5B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint **sub_1003F5B74(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  v28 = a3;
  v27 = 0uLL;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(&v31, v7);
  v8 = a1[1];
  if (v8)
  {
    if (atomic_load_explicit((v8 + 8), memory_order_acquire) == 1)
    {
      sub_1002B90F8(a1, &v31, 0, 1);
    }

    v9 = *a1;
    v10 = a1[1];
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
    }
  }

  else
  {
    v10 = 0;
    v9 = *a1;
  }

  v11 = v27;
  *&v27 = v9;
  *(&v27 + 1) = v10;
  v30[0] = v11;
  sub_10004A724(v30 + 1);
  sub_10004A704(*(&v42 + 1));
  sub_10004A6B0(&v31);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  v46 = 0;
  v47 = 10;
  v48 = &v31 + 8;
  v49 = 0;
  v50 = a2;
  v51 = &v28;
  v53 = 0;
  v54 = 0;
  v52 = a4;
  v12 = sub_1002B8D90(&v27);
  v26[0] = &v31;
  v26[1] = a1;
  v26[2] = sub_1002BA07C(v12);
  v13 = sub_1002B8D90(&v27);
  v14 = sub_10004AA88((v13 + 16));
  v15 = sub_1002B8D90(&v27);
  v16 = *(sub_1002BA07C(v15) + 8);
  v17 = sub_1002B8D90(&v27);
  *&v24 = v16;
  *(&v24 + 1) = sub_1002BA07C(v17);
  *&v25 = &v31;
  *(&v25 + 1) = *(&v24 + 1);
  sub_1003F5FEC(&v24);
  v18 = sub_1002B8D90(&v27);
  v19 = sub_1002BA07C(v18);
  v20 = sub_1002B8D90(&v27);
  *&v22 = v19;
  *(&v22 + 1) = sub_1002BA07C(v20);
  *&v23 = &v31;
  *(&v23 + 1) = *(&v22 + 1);
  sub_1003F5FEC(&v22);
  v30[0] = v24;
  v30[1] = v25;
  v29[0] = v22;
  v29[1] = v23;
  sub_1003F5DF8(v14, v30, v29);
  sub_1003F63B4(v26);
  sub_1003F6598(&v31);
  return sub_10004A724(&v27 + 1);
}

void sub_1003F5DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, atomic_uint *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  sub_1000FFEDC(&a33);
  sub_10004A724(&a22);
  _Unwind_Resume(a1);
}

void sub_1003F5DF8(uint64_t a1, uint64_t *a2, void *a3)
{
  while (*a2 != *a3)
  {
    sub_1003F5E80(a2);
    *a2 = *(*a2 + 8);
    sub_1003F5FEC(a2);
    v5 = a2[2];
    if (*v5 == 1)
    {
      *v5 = 0;
    }
  }
}

_BYTE *sub_1003F5E80(void *a1)
{
  v2 = a1[2];
  if ((*v2 & 1) == 0)
  {
    sub_1003F5F20((v2 + 272), (*a1 + 16));
    if ((*v2 & 1) == 0)
    {
      *v2 = 1;
    }
  }

  v3 = a1[2];
  if ((*v3 & 1) == 0)
  {
    sub_101761304();
  }

  return v3 + 1;
}

void sub_1003F5F20(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002B8DD4(a2);
  v4 = sub_1002B982C((v3 + 32));
  sub_1003F5F70(&v5, (v4 + 24), a1);
}

void sub_1003F5F70(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *a3;
  v6 = **(a3 + 8);
  v7 = *(a3 + 16);
  v9 = *v7;
  v8 = v7[1];
  *&v10 = v9;
  *(&v10 + 1) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1002BA6B0(a2, v5, v6, &v10);
  if (*(&v10 + 1))
  {
    sub_100004A34(*(&v10 + 1));
  }
}

void sub_1003F5FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003F5FEC(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 != a1[3])
  {
    if (v1 == a1[1])
    {
      goto LABEL_15;
    }

    while (1)
    {
      sub_10004AB6C((a1[2] + 8), *(a1[2] + 264));
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v3 = sub_1003F624C((*a1 + 16));
      sub_10004ABC4(&v14, v3);
      v4 = sub_1002B8DD4((*a1 + 16));
      sub_1003F6290(v4, &v14, (a1[2] + 8));
      v5 = sub_1002B8DD4((*a1 + 16));
      v6 = a1[2];
      if (*(v5 + 24) == 1)
      {
        ++*(v6 + 296);
      }

      else
      {
        ++*(v6 + 300);
      }

      v7 = sub_1002B8DD4((*a1 + 16));
      if (*(v7 + 24) != 1 || (v8 = *(v7 + 16)) != 0 && atomic_load_explicit((v8 + 8), memory_order_acquire))
      {
        v9 = 1;
      }

      else
      {
        sub_10014A760(a1, &v14, *a1);
        v9 = 0;
      }

      (*(**(&v25 + 1) + 32))(*(&v25 + 1));
      sub_10004A6B0(&v14);
      v10 = *a1;
      v1 = a1[1];
      if (!v9)
      {
        break;
      }

      v11 = *(v10 + 8);
      *a1 = v11;
      if (v11 == v1)
      {
        goto LABEL_15;
      }
    }

    if (v10 == v1)
    {
LABEL_15:
      v12 = a1[3];
      if (v12 != v1)
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        v13 = sub_1003F624C((v12 + 16));
        sub_10004ABC4(&v14, v13);
        sub_10014A760(a1, &v14, a1[1]);
        (*(**(&v25 + 1) + 32))(*(&v25 + 1));
        sub_10004A6B0(&v14);
      }
    }
  }
}

void sub_1003F6210(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003F624C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_1003F6290(atomic_uint **result, void *a2, void *a3)
{
  v3 = (result + 4);
  if (result[4])
  {
    v6 = result;
    for (i = *sub_1002B982C(result + 4); ; i += 6)
    {
      result = sub_1002B982C(v3);
      if (i == result[1])
      {
        break;
      }

      memset(v8, 0, sizeof(v8));
      sub_10004ACE8(i, v8);
      if (sub_100048EA8(i))
      {
        if (*(v6 + 24) == 1)
        {
          *(v6 + 24) = 0;
          sub_10004B3DC(v6, a2);
        }

        return sub_10004B040(v8);
      }

      sub_10004AFC8(a3, v8);
      sub_10004B040(v8);
    }
  }

  return result;
}

void sub_1003F6390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003F63B4(uint64_t a1)
{
  if (*(*a1 + 300) > *(*a1 + 296))
  {
    sub_1003F63F8(*(a1 + 8), *(a1 + 16));
  }

  return a1;
}

void sub_1003F63F8(uint64_t *a1, uint64_t a2)
{
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v9, v4);
  v5 = sub_1002B8D90(a1);
  if (sub_1002BA07C(v5) == a2)
  {
    v6 = a1[1];
    if (!v6 || atomic_load_explicit((v6 + 8), memory_order_acquire) != 1)
    {
      operator new();
    }

    v7 = sub_1002B8D90(a1);
    v8 = *(sub_1002BA07C(v7) + 8);
    sub_1002B8FE0(a1, v9, 0, &v8, 0);
  }

  sub_10004A704(*(&v10 + 1));
  sub_10004A6B0(v9);
}

uint64_t sub_1003F6598(uint64_t a1)
{
  v2 = *(a1 + 304);
  if (v2)
  {
    v5 = 0u;
    memset(v4, 0, sizeof(v4));
    sub_10004ABC4(v4, v2);
    sub_10004B3DC(*(a1 + 304), v4);
    (*(**(&v5 + 1) + 32))(*(&v5 + 1));
    sub_10004A6B0(v4);
  }

  sub_10004B4D0((a1 + 8));
  if (*a1 == 1)
  {
    *a1 = 0;
  }

  return a1;
}

void sub_1003F6670(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1003F6690(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v11 = 0;
  v12 = 0;
  entitlements::ControllerImpl::findDriverForTask(v2, *(v1 + 2), &v11);
  v3 = v11;
  if (v11)
  {
    if ((*(*v11 + 376))(v11, 2, 0))
    {
      v4 = 1;
LABEL_9:
      v8 = ***(v2 + 88);
      if (*(v8 + 47) < 0)
      {
        sub_100005F2C(buf, *(v8 + 24), *(v8 + 32));
      }

      else
      {
        *buf = *(v8 + 24);
        *&buf[16] = *(v8 + 40);
      }

      v9 = 0;
      v10 = 0;
      sub_1003F696C(&event::entitlements::get_provisioning_update, buf, v4, &v9);
      if (v10)
      {
        sub_100004A34(v10);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

LABEL_16:
      if (v12)
      {
        sub_100004A34(v12);
      }

      operator delete();
    }

    v9 = v1 + 2;
    v10 = v2;
    *buf = off_101E4A7B0;
    *&buf[8] = v2;
    *&buf[16] = &v9;
    v14 = buf;
    sub_1000700B8(buf);
    sub_100072048(buf);
    if (v1[2] & 0x7FFFFF) != 0 && ((*(*v3 + 40))(v3, v1 + 2))
    {
      goto LABEL_16;
    }
  }

  else
  {
    v5 = *(v2 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PersonalityInfo::logPrefix(***(v2 + 88));
      v7 = sub_1000710D4(2);
      *buf = 136315650;
      *&buf[4] = v6;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#W %s%sno driver for action %s", buf, 0x20u);
    }
  }

  v4 = 0;
  goto LABEL_9;
}

void sub_1003F68F0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  sub_100072048(&__p);
  if (a14)
  {
    sub_100004A34(a14);
  }

  operator delete();
}

void sub_1003F696C(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v15 = *(a2 + 16);
  }

  v8 = a4[1];
  v12 = *a4;
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003F6CC0((a1 + 24), __p, a3);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  v9 = a4[1];
  v10 = *a4;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003F6F04(a1, a2, a3, &v10);
  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_1003F6A50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1003F6B00(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E4A7B0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1003F6B30(uint64_t a1, int *a2)
{
  v3 = *a2;
  if (sub_100070C90(*(a1 + 8), *a2))
  {
    v4 = *(a1 + 16);
    if (v3 != 8 && (**v4 & (1 << v3)) != 0)
    {
      v6 = *(v4 + 8);
      v7 = *(v6 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = PersonalityInfo::logPrefix(***(v6 + 88));
        v9 = 136315650;
        v10 = v8;
        v11 = 2080;
        v12 = " ";
        v13 = 2080;
        v14 = sub_10006EE44(v3);
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sIgnoring %s entitlement for 'get provisioning'", &v9, 0x20u);
      }

      if (v3 >= 0x17)
      {
        sub_1000A58E4("bitset reset argument out of range");
      }

      **v4 &= ~(1 << v3);
    }
  }
}

uint64_t sub_1003F6C74(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003F6CC0(uint64_t *a1, uint64_t a2, int a3)
{
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  v20 = 0u;
  v21 = 0u;
  *v19 = 0u;
  memset(v18, 0, sizeof(v18));
  v17 = 0u;
  sub_10000D518(&v17);
  v6 = *(a2 + 23);
  v7 = (v6 & 0x80u) != 0;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (v7)
  {
    v8 = *a2;
  }

  else
  {
    v8 = a2;
  }

  if (v6)
  {
    v9 = v8;
  }

  else
  {
    v9 = "<invalid>";
  }

  strlen(v9);
  v10 = sub_10000C030(&v17);
  v11 = sub_10000C030(v10);
  v12 = sub_100A38E30(a3);
  strlen(v12);
  v13 = sub_10000C030(v11);
  sub_10000C030(v13);
  std::ostream::operator<<();
  sub_10006EE70(&v17 + 8, __p);
  sub_1000841A0(a1, __p);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[1]);
  }

  std::locale::~locale(v18);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1003F6EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100D50834(va);
  _Unwind_Resume(a1);
}

void sub_1003F6F04(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v7 = sub_1002250A8((a1 + 8));
  v8 = a4[1];
  v9 = *a4;
  v10 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003F6F90(v7, a2, a3, &v9);
  if (v10)
  {
    sub_100004A34(v10);
  }
}

void sub_1003F6F78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint **sub_1003F6F90(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  v28 = a3;
  v27 = 0uLL;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(&v31, v7);
  v8 = a1[1];
  if (v8)
  {
    if (atomic_load_explicit((v8 + 8), memory_order_acquire) == 1)
    {
      sub_1002256E0(a1, &v31, 0, 1);
    }

    v9 = *a1;
    v10 = a1[1];
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
    }
  }

  else
  {
    v10 = 0;
    v9 = *a1;
  }

  v11 = v27;
  *&v27 = v9;
  *(&v27 + 1) = v10;
  v30[0] = v11;
  sub_10004A724(v30 + 1);
  sub_10004A704(*(&v42 + 1));
  sub_10004A6B0(&v31);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  v46 = 0;
  v47 = 10;
  v48 = &v31 + 8;
  v49 = 0;
  v50 = a2;
  v51 = &v28;
  v53 = 0;
  v54 = 0;
  v52 = a4;
  v12 = sub_100225378(&v27);
  v26[0] = &v31;
  v26[1] = a1;
  v26[2] = sub_100226664(v12);
  v13 = sub_100225378(&v27);
  v14 = sub_10004AA88((v13 + 16));
  v15 = sub_100225378(&v27);
  v16 = *(sub_100226664(v15) + 8);
  v17 = sub_100225378(&v27);
  *&v24 = v16;
  *(&v24 + 1) = sub_100226664(v17);
  *&v25 = &v31;
  *(&v25 + 1) = *(&v24 + 1);
  sub_1003F7408(&v24);
  v18 = sub_100225378(&v27);
  v19 = sub_100226664(v18);
  v20 = sub_100225378(&v27);
  *&v22 = v19;
  *(&v22 + 1) = sub_100226664(v20);
  *&v23 = &v31;
  *(&v23 + 1) = *(&v22 + 1);
  sub_1003F7408(&v22);
  v30[0] = v24;
  v30[1] = v25;
  v29[0] = v22;
  v29[1] = v23;
  sub_1003F7214(v14, v30, v29);
  sub_1003F77D0(v26);
  sub_1003F79B4(&v31);
  return sub_10004A724(&v27 + 1);
}

void sub_1003F71C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, atomic_uint *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  sub_1000FFEDC(&a33);
  sub_10004A724(&a22);
  _Unwind_Resume(a1);
}

void sub_1003F7214(uint64_t a1, uint64_t *a2, void *a3)
{
  while (*a2 != *a3)
  {
    sub_1003F729C(a2);
    *a2 = *(*a2 + 8);
    sub_1003F7408(a2);
    v5 = a2[2];
    if (*v5 == 1)
    {
      *v5 = 0;
    }
  }
}

_BYTE *sub_1003F729C(void *a1)
{
  v2 = a1[2];
  if ((*v2 & 1) == 0)
  {
    sub_1003F733C((v2 + 272), (*a1 + 16));
    if ((*v2 & 1) == 0)
    {
      *v2 = 1;
    }
  }

  v3 = a1[2];
  if ((*v3 & 1) == 0)
  {
    sub_101761304();
  }

  return v3 + 1;
}

void sub_1003F733C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002253BC(a2);
  v4 = sub_100225E14((v3 + 32));
  sub_1003F738C(&v5, (v4 + 24), a1);
}

void sub_1003F738C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *a3;
  v6 = **(a3 + 8);
  v7 = *(a3 + 16);
  v9 = *v7;
  v8 = v7[1];
  *&v10 = v9;
  *(&v10 + 1) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1002269BC(a2, v5, v6, &v10);
  if (*(&v10 + 1))
  {
    sub_100004A34(*(&v10 + 1));
  }
}

void sub_1003F73F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003F7408(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 != a1[3])
  {
    if (v1 == a1[1])
    {
      goto LABEL_15;
    }

    while (1)
    {
      sub_10004AB6C((a1[2] + 8), *(a1[2] + 264));
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v3 = sub_1003F7668((*a1 + 16));
      sub_10004ABC4(&v14, v3);
      v4 = sub_1002253BC((*a1 + 16));
      sub_1003F76AC(v4, &v14, (a1[2] + 8));
      v5 = sub_1002253BC((*a1 + 16));
      v6 = a1[2];
      if (*(v5 + 24) == 1)
      {
        ++*(v6 + 296);
      }

      else
      {
        ++*(v6 + 300);
      }

      v7 = sub_1002253BC((*a1 + 16));
      if (*(v7 + 24) != 1 || (v8 = *(v7 + 16)) != 0 && atomic_load_explicit((v8 + 8), memory_order_acquire))
      {
        v9 = 1;
      }

      else
      {
        sub_10014A760(a1, &v14, *a1);
        v9 = 0;
      }

      (*(**(&v25 + 1) + 32))(*(&v25 + 1));
      sub_10004A6B0(&v14);
      v10 = *a1;
      v1 = a1[1];
      if (!v9)
      {
        break;
      }

      v11 = *(v10 + 8);
      *a1 = v11;
      if (v11 == v1)
      {
        goto LABEL_15;
      }
    }

    if (v10 == v1)
    {
LABEL_15:
      v12 = a1[3];
      if (v12 != v1)
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        v13 = sub_1003F7668((v12 + 16));
        sub_10004ABC4(&v14, v13);
        sub_10014A760(a1, &v14, a1[1]);
        (*(**(&v25 + 1) + 32))(*(&v25 + 1));
        sub_10004A6B0(&v14);
      }
    }
  }
}

void sub_1003F762C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003F7668(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_1003F76AC(atomic_uint **result, void *a2, void *a3)
{
  v3 = (result + 4);
  if (result[4])
  {
    v6 = result;
    for (i = *sub_100225E14(result + 4); ; i += 6)
    {
      result = sub_100225E14(v3);
      if (i == result[1])
      {
        break;
      }

      memset(v8, 0, sizeof(v8));
      sub_10004ACE8(i, v8);
      if (sub_100048EA8(i))
      {
        if (*(v6 + 24) == 1)
        {
          *(v6 + 24) = 0;
          sub_10004B3DC(v6, a2);
        }

        return sub_10004B040(v8);
      }

      sub_10004AFC8(a3, v8);
      sub_10004B040(v8);
    }
  }

  return result;
}

void sub_1003F77AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003F77D0(uint64_t a1)
{
  if (*(*a1 + 300) > *(*a1 + 296))
  {
    sub_1003F7814(*(a1 + 8), *(a1 + 16));
  }

  return a1;
}

void sub_1003F7814(uint64_t *a1, uint64_t a2)
{
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v9, v4);
  v5 = sub_100225378(a1);
  if (sub_100226664(v5) == a2)
  {
    v6 = a1[1];
    if (!v6 || atomic_load_explicit((v6 + 8), memory_order_acquire) != 1)
    {
      operator new();
    }

    v7 = sub_100225378(a1);
    v8 = *(sub_100226664(v7) + 8);
    sub_1002255C8(a1, v9, 0, &v8, 0);
  }

  sub_10004A704(*(&v10 + 1));
  sub_10004A6B0(v9);
}

uint64_t sub_1003F79B4(uint64_t a1)
{
  v2 = *(a1 + 304);
  if (v2)
  {
    v5 = 0u;
    memset(v4, 0, sizeof(v4));
    sub_10004ABC4(v4, v2);
    sub_10004B3DC(*(a1 + 304), v4);
    (*(**(&v5 + 1) + 32))(*(&v5 + 1));
    sub_10004A6B0(v4);
  }

  sub_10004B4D0((a1 + 8));
  if (*a1 == 1)
  {
    *a1 = 0;
  }

  return a1;
}

void sub_1003F7A8C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1003F7AAC(uint64_t *a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *v1;
  v13 = 0;
  v14 = 0;
  entitlements::ControllerImpl::findDriverForTask(v2, *(v1 + 8), &v13);
  v3 = v13;
  if (!v13)
  {
    v4 = *(v2 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = PersonalityInfo::logPrefix(***(v2 + 88));
      v6 = sub_1000710D4(3);
      *buf = 136315650;
      *&buf[4] = v5;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#W %s%sno driver for action %s", buf, 0x20u);
    }

LABEL_8:
    v11 = 0;
    v12 = 0;
    LODWORD(v10) = 6005;
    sub_1003F7E34();
  }

  if ((*(*v13 + 376))(v13, 3, 1))
  {
    goto LABEL_8;
  }

  v11 = v1 + 16;
  v12 = v2;
  *buf = off_101E4A830;
  *&buf[8] = v2;
  *&buf[16] = &v11;
  v16 = buf;
  sub_1000700B8(buf);
  sub_100072048(buf);
  if (!*(v1 + 32) || ((*(*v3 + 48))(v3, v1 + 16) & 1) == 0)
  {
    goto LABEL_8;
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  sub_1003F7DE0(&v9);
  return sub_1000049E0(&v8);
}

void sub_1003F7D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_100072048(&__p);
  if (a17)
  {
    sub_100004A34(a17);
  }

  sub_1003F7DE0(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003F7DE0(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10006EC28(v1 + 16, *(v1 + 24));
    operator delete();
  }

  return result;
}

void sub_1003F7F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_1003F7F4C(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v15 = *(a2 + 16);
  }

  v8 = a4[1];
  v12 = *a4;
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003F85A0((a1 + 24), __p, a3);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  v9 = a4[1];
  v10 = *a4;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003F87E4(a1, a2, a3, &v10);
  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_1003F8030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1003F80E0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E4A830;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

unint64_t sub_1003F8110(uint64_t a1, int *a2)
{
  v3 = *a2;
  result = sub_100070C90(*(a1 + 8), *a2);
  if (result)
  {
    v5 = *(a1 + 16);
    v6 = *v5;
    v7 = *(*v5 + 8);
    if (v7)
    {
      v8 = v5[1];
      v9 = *v5 + 8;
      do
      {
        if (*(v7 + 32) >= v3)
        {
          v9 = v7;
        }

        v7 = *(v7 + 8 * (*(v7 + 32) < v3));
      }

      while (v7);
      if (v9 != *v5 + 8 && v3 != 8 && *(v9 + 32) <= v3)
      {
        v10 = *(v8 + 40);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = PersonalityInfo::logPrefix(***(v8 + 88));
          v12 = 136315650;
          v13 = v11;
          v14 = 2080;
          v15 = " ";
          v16 = 2080;
          v17 = sub_10006EE44(v3);
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sIgnoring %s entitlement for 'set provisioning'", &v12, 0x20u);
          v6 = *v5;
        }

        v12 = v3;
        return sub_1002D749C(v6, &v12);
      }
    }
  }

  return result;
}

uint64_t sub_1003F826C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003F832C(uint64_t a1, int *a2, uint64_t *a3)
{
  *(a1 + 8) = 0u;
  *a1 = off_101E4A8B0;
  v4 = *a2;
  v6 = *a3;
  v5 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  *(a1 + 24) = v4;
  *(a1 + 32) = 0u;
  *(a1 + 48) = v6;
  *(a1 + 56) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v5);
  }

  return a1;
}

void sub_1003F83C0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E4A8B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1003F8420(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    sub_100004A34(v3);
  }
}

void sub_1003F8470(uint64_t a1, int a2, uint64_t *a3)
{
  v8 = a2;
  v9 = &v8;
  v4 = sub_1002D750C(a1, &v8);
  v6 = *a3;
  v5 = a3[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = v4[6];
  v4[5] = v6;
  v4[6] = v5;
  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_1003F8504(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E4A900;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1003F8558(uint64_t a1)
{
  sub_10006DCAC(a1 + 48, *(a1 + 56));
  v2 = *(a1 + 32);

  sub_10006EC28(a1 + 24, v2);
}

uint64_t sub_1003F85A0(uint64_t *a1, uint64_t a2, int a3)
{
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  v20 = 0u;
  v21 = 0u;
  *v19 = 0u;
  memset(v18, 0, sizeof(v18));
  v17 = 0u;
  sub_10000D518(&v17);
  v6 = *(a2 + 23);
  v7 = (v6 & 0x80u) != 0;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (v7)
  {
    v8 = *a2;
  }

  else
  {
    v8 = a2;
  }

  if (v6)
  {
    v9 = v8;
  }

  else
  {
    v9 = "<invalid>";
  }

  strlen(v9);
  v10 = sub_10000C030(&v17);
  v11 = sub_10000C030(v10);
  v12 = sub_100A38E30(a3);
  strlen(v12);
  v13 = sub_10000C030(v11);
  sub_10000C030(v13);
  std::ostream::operator<<();
  sub_10006EE70(&v17 + 8, __p);
  sub_1000841A0(a1, __p);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[1]);
  }

  std::locale::~locale(v18);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1003F87CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100D50834(va);
  _Unwind_Resume(a1);
}

void sub_1003F87E4(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v7 = sub_100226F54((a1 + 8));
  v8 = a4[1];
  v9 = *a4;
  v10 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003F8870(v7, a2, a3, &v9);
  if (v10)
  {
    sub_100004A34(v10);
  }
}

void sub_1003F8858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint **sub_1003F8870(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  v28 = a3;
  v27 = 0uLL;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(&v31, v7);
  v8 = a1[1];
  if (v8)
  {
    if (atomic_load_explicit((v8 + 8), memory_order_acquire) == 1)
    {
      sub_10022758C(a1, &v31, 0, 1);
    }

    v9 = *a1;
    v10 = a1[1];
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
    }
  }

  else
  {
    v10 = 0;
    v9 = *a1;
  }

  v11 = v27;
  *&v27 = v9;
  *(&v27 + 1) = v10;
  v30[0] = v11;
  sub_10004A724(v30 + 1);
  sub_10004A704(*(&v42 + 1));
  sub_10004A6B0(&v31);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  v46 = 0;
  v47 = 10;
  v48 = &v31 + 8;
  v49 = 0;
  v50 = a2;
  v51 = &v28;
  v53 = 0;
  v54 = 0;
  v52 = a4;
  v12 = sub_100227224(&v27);
  v26[0] = &v31;
  v26[1] = a1;
  v26[2] = sub_100228510(v12);
  v13 = sub_100227224(&v27);
  v14 = sub_10004AA88((v13 + 16));
  v15 = sub_100227224(&v27);
  v16 = *(sub_100228510(v15) + 8);
  v17 = sub_100227224(&v27);
  *&v24 = v16;
  *(&v24 + 1) = sub_100228510(v17);
  *&v25 = &v31;
  *(&v25 + 1) = *(&v24 + 1);
  sub_1003F8CE8(&v24);
  v18 = sub_100227224(&v27);
  v19 = sub_100228510(v18);
  v20 = sub_100227224(&v27);
  *&v22 = v19;
  *(&v22 + 1) = sub_100228510(v20);
  *&v23 = &v31;
  *(&v23 + 1) = *(&v22 + 1);
  sub_1003F8CE8(&v22);
  v30[0] = v24;
  v30[1] = v25;
  v29[0] = v22;
  v29[1] = v23;
  sub_1003F8AF4(v14, v30, v29);
  sub_1003F90B0(v26);
  sub_1003F9294(&v31);
  return sub_10004A724(&v27 + 1);
}

void sub_1003F8AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, atomic_uint *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  sub_1000FFEDC(&a33);
  sub_10004A724(&a22);
  _Unwind_Resume(a1);
}

void sub_1003F8AF4(uint64_t a1, uint64_t *a2, void *a3)
{
  while (*a2 != *a3)
  {
    sub_1003F8B7C(a2);
    *a2 = *(*a2 + 8);
    sub_1003F8CE8(a2);
    v5 = a2[2];
    if (*v5 == 1)
    {
      *v5 = 0;
    }
  }
}

_BYTE *sub_1003F8B7C(void *a1)
{
  v2 = a1[2];
  if ((*v2 & 1) == 0)
  {
    sub_1003F8C1C((v2 + 272), (*a1 + 16));
    if ((*v2 & 1) == 0)
    {
      *v2 = 1;
    }
  }

  v3 = a1[2];
  if ((*v3 & 1) == 0)
  {
    sub_101761304();
  }

  return v3 + 1;
}

void sub_1003F8C1C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100227268(a2);
  v4 = sub_100227CC0((v3 + 32));
  sub_1003F8C6C(&v5, (v4 + 24), a1);
}

void sub_1003F8C6C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *a3;
  v6 = **(a3 + 8);
  v7 = *(a3 + 16);
  v9 = *v7;
  v8 = v7[1];
  *&v10 = v9;
  *(&v10 + 1) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100228868(a2, v5, v6, &v10);
  if (*(&v10 + 1))
  {
    sub_100004A34(*(&v10 + 1));
  }
}

void sub_1003F8CD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003F8CE8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 != a1[3])
  {
    if (v1 == a1[1])
    {
      goto LABEL_15;
    }

    while (1)
    {
      sub_10004AB6C((a1[2] + 8), *(a1[2] + 264));
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v3 = sub_1003F8F48((*a1 + 16));
      sub_10004ABC4(&v14, v3);
      v4 = sub_100227268((*a1 + 16));
      sub_1003F8F8C(v4, &v14, (a1[2] + 8));
      v5 = sub_100227268((*a1 + 16));
      v6 = a1[2];
      if (*(v5 + 24) == 1)
      {
        ++*(v6 + 296);
      }

      else
      {
        ++*(v6 + 300);
      }

      v7 = sub_100227268((*a1 + 16));
      if (*(v7 + 24) != 1 || (v8 = *(v7 + 16)) != 0 && atomic_load_explicit((v8 + 8), memory_order_acquire))
      {
        v9 = 1;
      }

      else
      {
        sub_10014A760(a1, &v14, *a1);
        v9 = 0;
      }

      (*(**(&v25 + 1) + 32))(*(&v25 + 1));
      sub_10004A6B0(&v14);
      v10 = *a1;
      v1 = a1[1];
      if (!v9)
      {
        break;
      }

      v11 = *(v10 + 8);
      *a1 = v11;
      if (v11 == v1)
      {
        goto LABEL_15;
      }
    }

    if (v10 == v1)
    {
LABEL_15:
      v12 = a1[3];
      if (v12 != v1)
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        v13 = sub_1003F8F48((v12 + 16));
        sub_10004ABC4(&v14, v13);
        sub_10014A760(a1, &v14, a1[1]);
        (*(**(&v25 + 1) + 32))(*(&v25 + 1));
        sub_10004A6B0(&v14);
      }
    }
  }
}

void sub_1003F8F0C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003F8F48(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_1003F8F8C(atomic_uint **result, void *a2, void *a3)
{
  v3 = (result + 4);
  if (result[4])
  {
    v6 = result;
    for (i = *sub_100227CC0(result + 4); ; i += 6)
    {
      result = sub_100227CC0(v3);
      if (i == result[1])
      {
        break;
      }

      memset(v8, 0, sizeof(v8));
      sub_10004ACE8(i, v8);
      if (sub_100048EA8(i))
      {
        if (*(v6 + 24) == 1)
        {
          *(v6 + 24) = 0;
          sub_10004B3DC(v6, a2);
        }

        return sub_10004B040(v8);
      }

      sub_10004AFC8(a3, v8);
      sub_10004B040(v8);
    }
  }

  return result;
}

void sub_1003F908C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003F90B0(uint64_t a1)
{
  if (*(*a1 + 300) > *(*a1 + 296))
  {
    sub_1003F90F4(*(a1 + 8), *(a1 + 16));
  }

  return a1;
}

void sub_1003F90F4(uint64_t *a1, uint64_t a2)
{
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v9, v4);
  v5 = sub_100227224(a1);
  if (sub_100228510(v5) == a2)
  {
    v6 = a1[1];
    if (!v6 || atomic_load_explicit((v6 + 8), memory_order_acquire) != 1)
    {
      operator new();
    }

    v7 = sub_100227224(a1);
    v8 = *(sub_100228510(v7) + 8);
    sub_100227474(a1, v9, 0, &v8, 0);
  }

  sub_10004A704(*(&v10 + 1));
  sub_10004A6B0(v9);
}

uint64_t sub_1003F9294(uint64_t a1)
{
  v2 = *(a1 + 304);
  if (v2)
  {
    v5 = 0u;
    memset(v4, 0, sizeof(v4));
    sub_10004ABC4(v4, v2);
    sub_10004B3DC(*(a1 + 304), v4);
    (*(**(&v5 + 1) + 32))(*(&v5 + 1));
    sub_10004A6B0(v4);
  }

  sub_10004B4D0((a1 + 8));
  if (*a1 == 1)
  {
    *a1 = 0;
  }

  return a1;
}

void sub_1003F936C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1003F93AC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E4A950;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t *sub_1003F9400(uint64_t *a1)
{
  v1 = *a1;
  v18 = a1;
  v19 = v1;
  v2 = *v1;
  v26 = 0;
  v27 = 0;
  entitlements::ControllerImpl::findDriverForTask(v2, *(v1 + 8), &v26);
  v3 = v26;
  if (!v26)
  {
    v5 = *(v2 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PersonalityInfo::logPrefix(***(v2 + 88));
      v7 = sub_1000710D4(4);
      *buf = 136315650;
      *&buf[4] = v6;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v29 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#W %s%sno driver for action %s", buf, 0x20u);
    }

    goto LABEL_21;
  }

  if ((*(*v26 + 376))(v26, 4, *(v1 + 12)))
  {
    v4 = 1;
LABEL_22:
    v16 = ***(v2 + 88);
    if (*(v16 + 47) < 0)
    {
      sub_100005F2C(buf, *(v16 + 24), *(v16 + 32));
    }

    else
    {
      *buf = *(v16 + 24);
      *&buf[16] = *(v16 + 40);
    }

    v22 = 0;
    v23 = 0;
    sub_1003F987C(&event::entitlements::psas_updated, buf, v4, &v22);
    if (v23)
    {
      sub_100004A34(v23);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    goto LABEL_29;
  }

  v25 = 0;
  v22 = (v1 + 80);
  v23 = &v25;
  *buf = off_101E4A9A0;
  *&buf[8] = v2;
  *&buf[16] = &v22;
  v29 = buf;
  sub_1000700B8(buf);
  sub_100072048(buf);
  v8 = *(v2 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(***(v2 + 88));
    sub_100A4193C(&v22);
    v10 = v24;
    v11 = v22;
    sub_100072374(&v25, __p);
    v12 = &v22;
    if (v10 < 0)
    {
      v12 = v11;
    }

    if (v21 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    *buf = 136315906;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v29 = v12;
    v30 = 2080;
    v31 = v13;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sgetRegisteredLocationStatus: %s, %s", buf, 0x2Au);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    if (v24 < 0)
    {
      operator delete(v22);
    }
  }

  v14 = *(v1 + 24);
  *buf = *(v1 + 16);
  *&buf[8] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = (*(*v3 + 56))(v3, buf, v1 + 32, &v25);
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if ((v15 & 1) == 0)
  {
LABEL_21:
    v4 = 0;
    goto LABEL_22;
  }

LABEL_29:
  if (v27)
  {
    sub_100004A34(v27);
  }

  sub_1003F9808(&v19);
  return sub_1000049E0(&v18);
}

void sub_1003F976C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a23)
  {
    sub_100004A34(a23);
  }

  sub_1003F9808(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003F9808(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 79) < 0)
    {
      operator delete(*(v1 + 56));
    }

    if (*(v1 + 55) < 0)
    {
      operator delete(*(v1 + 32));
    }

    v2 = *(v1 + 24);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return result;
}

void sub_1003F987C(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v15 = *(a2 + 16);
  }

  v8 = a4[1];
  v12 = *a4;
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003F9B00((a1 + 24), __p, a3);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  v9 = a4[1];
  v10 = *a4;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003F9D44(a1, a2, a3, &v10);
  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_1003F9960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1003F9A10(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E4A9A0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

unint64_t sub_1003F9A40(uint64_t a1, int *a2)
{
  v3 = *a2;
  result = sub_100070C90(*(a1 + 8), *a2);
  if (result)
  {
    v5 = *(a1 + 16);
    if ((**v5 & (1 << v3)) != 0)
    {
      if (v3 >= 0x17)
      {
        sub_1000A58E4("bitset set argument out of range");
      }

      *v5[1] |= 1 << v3;
    }
  }

  return result;
}

uint64_t sub_1003F9AB4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003F9B00(uint64_t *a1, uint64_t a2, int a3)
{
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  v20 = 0u;
  v21 = 0u;
  *v19 = 0u;
  memset(v18, 0, sizeof(v18));
  v17 = 0u;
  sub_10000D518(&v17);
  v6 = *(a2 + 23);
  v7 = (v6 & 0x80u) != 0;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (v7)
  {
    v8 = *a2;
  }

  else
  {
    v8 = a2;
  }

  if (v6)
  {
    v9 = v8;
  }

  else
  {
    v9 = "<invalid>";
  }

  strlen(v9);
  v10 = sub_10000C030(&v17);
  v11 = sub_10000C030(v10);
  v12 = sub_100A38E30(a3);
  strlen(v12);
  v13 = sub_10000C030(v11);
  sub_10000C030(v13);
  std::ostream::operator<<();
  sub_10006EE70(&v17 + 8, __p);
  sub_1000841A0(a1, __p);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[1]);
  }

  std::locale::~locale(v18);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1003F9D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100D50834(va);
  _Unwind_Resume(a1);
}

void sub_1003F9D44(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  v7 = sub_100352360((a1 + 8));
  v8 = a4[1];
  v9 = *a4;
  v10 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003F9DD0(v7, a2, a3, &v9);
  if (v10)
  {
    sub_100004A34(v10);
  }
}

void sub_1003F9DB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint **sub_1003F9DD0(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  v28 = a3;
  v27 = 0uLL;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(&v31, v7);
  v8 = a1[1];
  if (v8)
  {
    if (atomic_load_explicit((v8 + 8), memory_order_acquire) == 1)
    {
      sub_100352998(a1, &v31, 0, 1);
    }

    v9 = *a1;
    v10 = a1[1];
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
    }
  }

  else
  {
    v10 = 0;
    v9 = *a1;
  }

  v11 = v27;
  *&v27 = v9;
  *(&v27 + 1) = v10;
  v30[0] = v11;
  sub_10004A724(v30 + 1);
  sub_10004A704(*(&v42 + 1));
  sub_10004A6B0(&v31);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  v46 = 0;
  v47 = 10;
  v48 = &v31 + 8;
  v49 = 0;
  v50 = a2;
  v51 = &v28;
  v53 = 0;
  v54 = 0;
  v52 = a4;
  v12 = sub_100352630(&v27);
  v26[0] = &v31;
  v26[1] = a1;
  v26[2] = sub_10035391C(v12);
  v13 = sub_100352630(&v27);
  v14 = sub_10004AA88((v13 + 16));
  v15 = sub_100352630(&v27);
  v16 = *(sub_10035391C(v15) + 8);
  v17 = sub_100352630(&v27);
  *&v24 = v16;
  *(&v24 + 1) = sub_10035391C(v17);
  *&v25 = &v31;
  *(&v25 + 1) = *(&v24 + 1);
  sub_1003FA248(&v24);
  v18 = sub_100352630(&v27);
  v19 = sub_10035391C(v18);
  v20 = sub_100352630(&v27);
  *&v22 = v19;
  *(&v22 + 1) = sub_10035391C(v20);
  *&v23 = &v31;
  *(&v23 + 1) = *(&v22 + 1);
  sub_1003FA248(&v22);
  v30[0] = v24;
  v30[1] = v25;
  v29[0] = v22;
  v29[1] = v23;
  sub_1003FA054(v14, v30, v29);
  sub_1003FA610(v26);
  sub_1003FA7F4(&v31);
  return sub_10004A724(&v27 + 1);
}

void sub_1003FA000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, atomic_uint *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  sub_1000FFEDC(&a33);
  sub_10004A724(&a22);
  _Unwind_Resume(a1);
}

void sub_1003FA054(uint64_t a1, uint64_t *a2, void *a3)
{
  while (*a2 != *a3)
  {
    sub_1003FA0DC(a2);
    *a2 = *(*a2 + 8);
    sub_1003FA248(a2);
    v5 = a2[2];
    if (*v5 == 1)
    {
      *v5 = 0;
    }
  }
}

_BYTE *sub_1003FA0DC(void *a1)
{
  v2 = a1[2];
  if ((*v2 & 1) == 0)
  {
    sub_1003FA17C((v2 + 272), (*a1 + 16));
    if ((*v2 & 1) == 0)
    {
      *v2 = 1;
    }
  }

  v3 = a1[2];
  if ((*v3 & 1) == 0)
  {
    sub_101761304();
  }

  return v3 + 1;
}

void sub_1003FA17C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100352674(a2);
  v4 = sub_1003530CC((v3 + 32));
  sub_1003FA1CC(&v5, (v4 + 24), a1);
}

void sub_1003FA1CC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *a3;
  v6 = **(a3 + 8);
  v7 = *(a3 + 16);
  v9 = *v7;
  v8 = v7[1];
  *&v10 = v9;
  *(&v10 + 1) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100353F50(a2, v5, v6, &v10);
  if (*(&v10 + 1))
  {
    sub_100004A34(*(&v10 + 1));
  }
}

void sub_1003FA230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003FA248(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 != a1[3])
  {
    if (v1 == a1[1])
    {
      goto LABEL_15;
    }

    while (1)
    {
      sub_10004AB6C((a1[2] + 8), *(a1[2] + 264));
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v3 = sub_1003FA4A8((*a1 + 16));
      sub_10004ABC4(&v14, v3);
      v4 = sub_100352674((*a1 + 16));
      sub_1003FA4EC(v4, &v14, (a1[2] + 8));
      v5 = sub_100352674((*a1 + 16));
      v6 = a1[2];
      if (*(v5 + 24) == 1)
      {
        ++*(v6 + 296);
      }

      else
      {
        ++*(v6 + 300);
      }

      v7 = sub_100352674((*a1 + 16));
      if (*(v7 + 24) != 1 || (v8 = *(v7 + 16)) != 0 && atomic_load_explicit((v8 + 8), memory_order_acquire))
      {
        v9 = 1;
      }

      else
      {
        sub_10014A760(a1, &v14, *a1);
        v9 = 0;
      }

      (*(**(&v25 + 1) + 32))(*(&v25 + 1));
      sub_10004A6B0(&v14);
      v10 = *a1;
      v1 = a1[1];
      if (!v9)
      {
        break;
      }

      v11 = *(v10 + 8);
      *a1 = v11;
      if (v11 == v1)
      {
        goto LABEL_15;
      }
    }

    if (v10 == v1)
    {
LABEL_15:
      v12 = a1[3];
      if (v12 != v1)
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        v13 = sub_1003FA4A8((v12 + 16));
        sub_10004ABC4(&v14, v13);
        sub_10014A760(a1, &v14, a1[1]);
        (*(**(&v25 + 1) + 32))(*(&v25 + 1));
        sub_10004A6B0(&v14);
      }
    }
  }
}

void sub_1003FA46C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003FA4A8(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_1003FA4EC(atomic_uint **result, void *a2, void *a3)
{
  v3 = (result + 4);
  if (result[4])
  {
    v6 = result;
    for (i = *sub_1003530CC(result + 4); ; i += 6)
    {
      result = sub_1003530CC(v3);
      if (i == result[1])
      {
        break;
      }

      memset(v8, 0, sizeof(v8));
      sub_10004ACE8(i, v8);
      if (sub_100048EA8(i))
      {
        if (*(v6 + 24) == 1)
        {
          *(v6 + 24) = 0;
          sub_10004B3DC(v6, a2);
        }

        return sub_10004B040(v8);
      }

      sub_10004AFC8(a3, v8);
      sub_10004B040(v8);
    }
  }

  return result;
}

void sub_1003FA5EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003FA610(uint64_t a1)
{
  if (*(*a1 + 300) > *(*a1 + 296))
  {
    sub_1003FA654(*(a1 + 8), *(a1 + 16));
  }

  return a1;
}

void sub_1003FA654(uint64_t *a1, uint64_t a2)
{
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v9, v4);
  v5 = sub_100352630(a1);
  if (sub_10035391C(v5) == a2)
  {
    v6 = a1[1];
    if (!v6 || atomic_load_explicit((v6 + 8), memory_order_acquire) != 1)
    {
      operator new();
    }

    v7 = sub_100352630(a1);
    v8 = *(sub_10035391C(v7) + 8);
    sub_100352880(a1, v9, 0, &v8, 0);
  }

  sub_10004A704(*(&v10 + 1));
  sub_10004A6B0(v9);
}

uint64_t sub_1003FA7F4(uint64_t a1)
{
  v2 = *(a1 + 304);
  if (v2)
  {
    v5 = 0u;
    memset(v4, 0, sizeof(v4));
    sub_10004ABC4(v4, v2);
    sub_10004B3DC(*(a1 + 304), v4);
    (*(**(&v5 + 1) + 32))(*(&v5 + 1));
    sub_10004A6B0(v4);
  }

  sub_10004B4D0((a1 + 8));
  if (*a1 == 1)
  {
    *a1 = 0;
  }

  return a1;
}

void sub_1003FA8CC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1003FA8EC(uint64_t *a1)
{
  v1 = *a1;
  v26 = a1;
  v27 = v1;
  v2 = *v1;
  v4 = *(*v1 + 104);
  v3 = *(*v1 + 112);
  v5 = *(*v1 + 40);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3 == v4)
  {
    if (v6)
    {
      v24 = PersonalityInfo::logPrefix(***(v2 + 88));
      *buf = 136315650;
      *&buf[4] = v24;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v31 = sub_1000710D4(5);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#W %s%sno driver for action %s", buf, 0x20u);
    }
  }

  else
  {
    if (v6)
    {
      v7 = PersonalityInfo::logPrefix(***(v2 + 88));
      v8 = *(v1 + 8);
      v9 = *(v1 + 16);
      v10 = sub_100A3E238((v1 + 8));
      *buf = 136315906;
      *&buf[4] = v7;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2048;
      v31 = (0x8E38E38E38E38E39 * ((v9 - v8) >> 3));
      v32 = 2080;
      v33 = asStringBool(v10);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%senablePushNotification %zu items (valid:%s)", buf, 0x2Au);
    }

    v11 = *(v1 + 8);
    for (i = *(v1 + 16); v11 != i; v11 += 18)
    {
      v13 = *(v2 + 40);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = PersonalityInfo::logPrefix(***(v2 + 88));
        v15 = sub_1013E5CD0(*v11);
        *buf = 136315650;
        *&buf[4] = v14;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2080;
        v31 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%s\t%s", buf, 0x20u);
      }
    }

    v16 = *(v2 + 104);
    for (j = *(v2 + 112); v16 != j; v16 += 2)
    {
      v18 = (*(**v16 + 376))(*v16, 5, 0);
      if ((v18 & 1) == 0)
      {
        memset(buf, 0, sizeof(buf));
        v19 = *(v1 + 8);
        v20 = *(v1 + 16);
        while (v19 != v20)
        {
          v21 = v16[1];
          v29[0] = *v16;
          v29[1] = &v21->__vftable;
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v18 = entitlements::ControllerImpl::supportPushTopicOnDriver(v18, v29, *v19);
          v22 = v18;
          if (v21)
          {
            sub_100004A34(v21);
          }

          if (v22)
          {
            v18 = sub_1003FAD5C(buf, v19);
          }

          v19 += 18;
        }

        if (sub_100A3E238(buf))
        {
          v23 = *v16;
          memset(v28, 0, sizeof(v28));
          sub_1003FB24C(v28, *buf, *&buf[8], 0x8E38E38E38E38E39 * ((*&buf[8] - *buf) >> 3));
          (*(*v23 + 64))(v23, v28);
          v29[0] = v28;
          sub_1003EAC3C(v29);
        }

        v29[0] = buf;
        sub_1003EAC3C(v29);
      }
    }
  }

  sub_1003FACFC(&v27);
  return sub_1000049E0(&v26);
}

void sub_1003FAC90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  sub_1003FACFC(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003FACFC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = (v1 + 8);
    sub_1003EAC3C(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_1003FAD5C(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1003FAE28(a1, a2);
  }

  else
  {
    sub_1003FAD9C(a1, a2);
    result = v3 + 72;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_1003FAD9C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  sub_10006F264((v4 + 2), (a2 + 8));
  result = sub_10006F264((v4 + 10), (a2 + 40));
  *(a1 + 8) = v4 + 18;
  return result;
}

void sub_1003FADF4(_Unwind_Exception *exception_object)
{
  if (*(v3 + 32) == 1 && *(v3 + 31) < 0)
  {
    operator delete(*v2);
  }

  *(v1 + 8) = v3;
  _Unwind_Resume(exception_object);
}

uint64_t sub_1003FAE28(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_1000CE3D4();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1003FAFAC(a1, v6);
  }

  v13 = 0;
  v14 = 72 * v2;
  v15 = 72 * v2;
  *(72 * v2) = *a2;
  sub_10006F264(72 * v2 + 8, (a2 + 8));
  sub_10006F264(72 * v2 + 40, (a2 + 40));
  *&v15 = v15 + 72;
  v7 = a1[1];
  v8 = v14 + *a1 - v7;
  sub_1003FB008(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1003FB1CC(&v13);
  return v12;
}

void sub_1003FAF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v5 + 32) == 1 && *(v5 + 31) < 0)
  {
    operator delete(*v4);
  }

  sub_1003FB1CC(va);
  _Unwind_Resume(a1);
}

void sub_1003FAFAC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1003FB008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v17 = a4;
  v14[0] = a1;
  v14[1] = &v16;
  v14[2] = &v17;
  v15 = 0;
  if (a2 == a3)
  {
    LOBYTE(v15) = 1;
  }

  else
  {
    v5 = a2;
    v7 = 0;
    do
    {
      v8 = a2 + v7;
      v9 = a4 + v7;
      *v9 = *(a2 + v7);
      *(a4 + v7 + 8) = 0;
      *(v9 + 32) = 0;
      if (*(a2 + v7 + 32) == 1)
      {
        v10 = *(v8 + 8);
        *(a4 + v7 + 24) = *(v8 + 24);
        *(a4 + v7 + 8) = v10;
        *(v8 + 16) = 0;
        *(v8 + 24) = 0;
        *(v8 + 8) = 0;
        *(v9 + 32) = 1;
      }

      *(v9 + 40) = 0;
      *(v9 + 64) = 0;
      if (*(v8 + 64) == 1)
      {
        v11 = (a2 + v7);
        v12 = *(a2 + v7 + 40);
        *(v9 + 56) = *(a2 + v7 + 56);
        *(v9 + 40) = v12;
        v11[6] = 0;
        v11[7] = 0;
        v11[5] = 0;
        *(v9 + 64) = 1;
      }

      v7 += 72;
    }

    while (v8 + 72 != a3);
    v17 = a4 + v7;
    LOBYTE(v15) = 1;
    while (v5 != a3)
    {
      sub_1003EACE4(a1, v5);
      v5 += 72;
    }
  }

  return sub_1003FB140(v14);
}

uint64_t sub_1003FB140(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1003FB178(a1);
  }

  return a1;
}

void sub_1003FB178(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 72;
      sub_1003EACE4(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_1003FB1CC(uint64_t a1)
{
  sub_1003FB204(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1003FB204(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 72;
    sub_1003EACE4(v5, v4 - 72);
  }
}

uint64_t sub_1003FB24C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1003FB2D4(result, a4);
  }

  return result;
}

void sub_1003FB2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1003EAC3C(&a9);
  _Unwind_Resume(a1);
}

void sub_1003FB2D4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    sub_1003FAFAC(a1, a2);
  }

  sub_1000CE3D4();
}

_DWORD *sub_1003FB324(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = *v6;
      sub_10006F264((v4 + 2), (v6 + 8));
      sub_10006F264((v4 + 10), (v6 + 40));
      v6 += 72;
      v4 = v11 + 18;
      v11 += 18;
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  sub_1003FB140(v8);
  return v4;
}

uint64_t *sub_1003FB400(uint64_t *a1)
{
  v1 = *a1;
  v27 = a1;
  v28 = v1;
  v2 = *v1;
  v4 = *(*v1 + 104);
  v3 = *(*v1 + 112);
  v5 = *(*v1 + 40);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3 == v4)
  {
    if (v6)
    {
      v25 = PersonalityInfo::logPrefix(***(v2 + 88));
      *buf = 136315650;
      *&buf[4] = v25;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v32 = sub_1000710D4(6);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#W %s%sno driver for action %s", buf, 0x20u);
    }
  }

  else
  {
    if (v6)
    {
      v7 = PersonalityInfo::logPrefix(***(v2 + 88));
      v8 = *(v1 + 8);
      v9 = *(v1 + 16);
      v10 = sub_100A3E27C((v1 + 8));
      *buf = 136315906;
      *&buf[4] = v7;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2048;
      v32 = (0xCCCCCCCCCCCCCCCDLL * ((v9 - v8) >> 3));
      v33 = 2080;
      v34 = asStringBool(v10);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sdisablePushNotification %zu items (valid:%s)", buf, 0x2Au);
    }

    v11 = *(v1 + 8);
    for (i = *(v1 + 16); v11 != i; v11 += 10)
    {
      v13 = *(v2 + 40);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = PersonalityInfo::logPrefix(***(v2 + 88));
        v15 = sub_1013E5CD0(*v11);
        *buf = 136315650;
        *&buf[4] = v14;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2080;
        v32 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%s\t%s", buf, 0x20u);
      }
    }

    v16 = *(v2 + 104);
    for (j = *(v2 + 112); v16 != j; v16 += 2)
    {
      v18 = (*(**v16 + 376))(*v16, 6, 0);
      if ((v18 & 1) == 0)
      {
        memset(buf, 0, sizeof(buf));
        v19 = *(v1 + 8);
        v20 = *(v1 + 16);
        while (v19 != v20)
        {
          v21 = v16[1];
          v30[0] = *v16;
          v30[1] = &v21->__vftable;
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v18 = entitlements::ControllerImpl::supportPushTopicOnDriver(v18, v30, *v19);
          v22 = v18;
          if (v21)
          {
            sub_100004A34(v21);
          }

          if (v22)
          {
            v23 = *&buf[8];
            if (*&buf[8] >= *&buf[16])
            {
              v18 = sub_1003FB898(buf, v19);
            }

            else
            {
              **&buf[8] = *v19;
              sub_10006F264(v23 + 8, (v19 + 8));
              v18 = v23 + 40;
            }

            *&buf[8] = v18;
          }

          v19 += 40;
        }

        if (sub_100A3E27C(buf))
        {
          v24 = *v16;
          memset(v29, 0, sizeof(v29));
          sub_1003FBC44(v29, *(v1 + 8), *(v1 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(v1 + 16) - *(v1 + 8)) >> 3));
          (*(*v24 + 72))(v24, v29);
          v30[0] = v29;
          sub_1003EAD54(v30);
        }

        v30[0] = buf;
        sub_1003EAD54(v30);
      }
    }
  }

  sub_1003FB838(&v28);
  return sub_1000049E0(&v27);
}

void sub_1003FB7C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  sub_1003FB838(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003FB838(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = (v1 + 8);
    sub_1003EAD54(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_1003FB898(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_1000CE3D4();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1003FB9D0(a1, v6);
  }

  v13 = 0;
  v14 = 40 * v2;
  v15 = 40 * v2;
  *v14 = *a2;
  sub_10006F264(40 * v2 + 8, (a2 + 8));
  *&v15 = v15 + 40;
  v7 = a1[1];
  v8 = v14 + *a1 - v7;
  sub_1003FBA28(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1003FBBA4(&v13);
  return v12;
}

void sub_1003FB9BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1003FBBA4(va);
  _Unwind_Resume(a1);
}

void sub_1003FB9D0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1003FBA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v11 = 0;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    v5 = a2;
    v6 = (a2 + 8);
    do
    {
      v7 = v6 - 8;
      *a4 = *(v6 - 2);
      *(a4 + 8) = 0;
      *(a4 + 32) = 0;
      if (*(v6 + 24) == 1)
      {
        v8 = *v6;
        *(a4 + 24) = *(v6 + 2);
        *(a4 + 8) = v8;
        *(v6 + 1) = 0;
        *(v6 + 2) = 0;
        *v6 = 0;
        *(a4 + 32) = 1;
      }

      a4 += 40;
      v6 = (v6 + 40);
    }

    while (v7 + 40 != a3);
    v13 = a4;
    LOBYTE(v11) = 1;
    while (v5 != a3)
    {
      if (*(v5 + 32) == 1 && *(v5 + 31) < 0)
      {
        operator delete(*(v5 + 8));
      }

      v5 += 40;
    }
  }

  return sub_1003FBB18(v10);
}

uint64_t sub_1003FBB18(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1003FBB50(a1);
  }

  return a1;
}

void sub_1003FBB50(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    if (*(v1 - 8) == 1 && *(v1 - 9) < 0)
    {
      operator delete(*(v1 - 32));
    }

    v1 -= 40;
  }
}

uint64_t sub_1003FBBA4(uint64_t a1)
{
  sub_1003FBBDC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1003FBBDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 40;
      *(a1 + 16) = v2 - 40;
      if (*(v2 - 8) == 1 && *(v2 - 9) < 0)
      {
        operator delete(*(v2 - 32));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t sub_1003FBC44(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1003FBCCC(result, a4);
  }

  return result;
}

void sub_1003FBCAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1003EAD54(&a9);
  _Unwind_Resume(a1);
}

void sub_1003FBCCC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    sub_1003FB9D0(a1, a2);
  }

  sub_1000CE3D4();
}

_DWORD *sub_1003FBD18(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = *v6;
      sub_10006F264((v4 + 2), (v6 + 8));
      v6 += 40;
      v4 = v11 + 10;
      v11 += 10;
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  sub_1003FBB18(v8);
  return v4;
}

uint64_t *sub_1003FBDC0(void *a1)
{
  v1 = *a1;
  v22 = a1;
  v23 = v1;
  v2 = *v1;
  if (*(v1 + 32) && (v3 = (v1 + 48), *(v1 + 48)))
  {
    v4 = *(v2 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = PersonalityInfo::logPrefix(***(v2 + 88));
      v6 = *(v1 + 24);
      v7 = asStringBool(*(v1 + 40));
      *buf = 136315906;
      *&buf[4] = v5;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 1024;
      LODWORD(v27) = v6;
      WORD2(v27) = 2080;
      *(&v27 + 6) = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%squeryAccountSubscriptionAndUsageStatusWithCallback, type: %u, isActivating: %s", buf, 0x26u);
    }

    if (*(v1 + 40) == 1)
    {
      v8 = *(v2 + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = PersonalityInfo::logPrefix(***(v2 + 88));
        *buf = 136315394;
        *&buf[4] = v9;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sreset failures since isActivating = true -> possible new account", buf, 0x16u);
      }

      entitlements::ControllerImpl::resetFailuresAndBackoffTimer_sync(v2, 1);
    }

    v24 = 0;
    v25 = 0;
    entitlements::ControllerImpl::findDriverForTask(v2, 4u, &v24);
    if (v24)
    {
      if (*(v1 + 24) && ((*(*v24 + 376))(v24, 11, *(v1 + 41)) & 1) == 0)
      {
        v10 = *(v2 + 40);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = PersonalityInfo::logPrefix(***(v2 + 88));
          *buf = 136315394;
          *&buf[4] = v11;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sQuerying subscription, usage status immediately", buf, 0x16u);
        }

        sub_1003FC530(buf, (v1 + 32), (v1 + 48));
        operator new();
      }
    }

    else
    {
      v14 = *(v2 + 40);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = PersonalityInfo::logPrefix(***(v2 + 88));
        v16 = sub_1000714D8(4);
        *buf = 136315650;
        *&buf[4] = v15;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2080;
        *&v27 = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#W %s%sno driver for task %s", buf, 0x20u);
      }
    }

    v17 = *(v2 + 40);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = PersonalityInfo::logPrefix(***(v2 + 88));
      *buf = 136315394;
      *&buf[4] = v18;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#W %s%sUnable to query subscription and usage", buf, 0x16u);
    }

    v19 = *(v1 + 32);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 1174405120;
    *&buf[16] = sub_1003FC434;
    *&v27 = &unk_101E4AA10;
    v20 = *v3;
    if (*v3)
    {
      v20 = _Block_copy(v20);
    }

    *(&v27 + 1) = v20;
    dispatch_async(v19, buf);
    if (*(&v27 + 1))
    {
      _Block_release(*(&v27 + 1));
    }

    if (v25)
    {
      sub_100004A34(v25);
    }
  }

  else
  {
    v12 = *(v2 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = PersonalityInfo::logPrefix(***(v2 + 88));
      *buf = 136315394;
      *&buf[4] = v13;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#W %s%squeue or consumer for subscription and usage query is missing", buf, 0x16u);
    }
  }

  sub_1003FC3C4(&v23);
  return sub_1000049E0(&v22);
}

void sub_1003FC34C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_1003FC3C4(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void *sub_1003FC3C4(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = v1[6];
    if (v2)
    {
      _Block_release(v2);
    }

    v3 = v1[4];
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = v1[2];
    if (v4)
    {
      sub_100004A34(v4);
    }

    operator delete();
  }

  return result;
}

const void **sub_1003FC434(uint64_t a1)
{
  v2 = sub_10164D2DC(&v4);
  (*(*(a1 + 32) + 16))(v2);
  sub_10006DCAC(v10, v10[1]);
  sub_10006DCAC(v9, v9[1]);
  sub_10006DCAC(v8, v8[1]);
  sub_100005978(&v7);
  sub_100005978(&v6);
  sub_100005978(&v5);
  return sub_100005978(&v4);
}

void sub_1003FC4C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1003DEBB8(va);
  _Unwind_Resume(a1);
}

void *sub_1003FC4D8(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void sub_1003FC50C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

NSObject **sub_1003FC530(NSObject **a1, NSObject **a2, void **a3)
{
  v5 = *a2;
  *a1 = *a2;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *a3;
  if (*a3)
  {
    v6 = _Block_copy(v6);
  }

  a1[1] = v6;
  return a1;
}

uint64_t *sub_1003FC57C(void **a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PersonalityInfo::logPrefix(***(v2 + 88));
    v5 = v1[3];
    *buf = 136315650;
    v10 = v4;
    v11 = 2080;
    v12 = " ";
    v13 = 2048;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sTO IMPLEMENT --- Got VVM Account Status request with %zu commands", buf, 0x20u);
  }

  sub_1003FC688(&v8);
  return sub_1000049E0(&v7);
}