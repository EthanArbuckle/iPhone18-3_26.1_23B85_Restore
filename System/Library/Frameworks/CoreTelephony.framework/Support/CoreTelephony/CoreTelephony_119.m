uint64_t sub_1007D1FD8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4)
  {
    result = PB::Writer::write(this, v4, 1u);
  }

  v5 = *(v3 + 16);
  if (v5)
  {

    return PB::Writer::writeSubmessage(this, v5, 4u);
  }

  return result;
}

uint64_t sub_1007D203C(uint64_t result)
{
  if (!*(result + 16))
  {
    operator new();
  }

  return result;
}

void sub_1007D20CC(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_1007D5AC8(a2, 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3));
  v4 = *a1;
  for (i = a1[1]; v4 != i; v4 += 40)
  {
    sub_10006F264(__p, v4);
    v6 = *(v4 + 32);
    v7 = vceq_s32(v6, 0x200000002);
    v14 = vsub_s32(vbic_s8(vmvn_s8(vceq_s32(v6, 0x100000001)), v7), v7);
    v8 = a2[1];
    if (v8 >= a2[2])
    {
      v10 = sub_1007D5D34(a2, __p);
    }

    else
    {
      v8->i8[0] = 0;
      v8[3].i8[0] = 0;
      if (v13 == 1)
      {
        v9 = *__p;
        v8[2] = v12;
        *v8->i8 = v9;
        __p[1] = 0;
        v12 = 0;
        __p[0] = 0;
        v8[3].i8[0] = 1;
      }

      v8[4] = v14;
      v10 = &v8[5];
    }

    a2[1] = v10;
    if (v13 == 1 && v12.i8[7] < 0)
    {
      operator delete(__p[0]);
    }
  }
}

char *sub_1007D2234@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  if (result[23] < 0)
  {
    result = sub_100005F2C(a2, *result, *(result + 1));
  }

  else
  {
    *a2 = *result;
    *(a2 + 16) = *(result + 2);
  }

  if (v2[47] < 0)
  {
    result = sub_100005F2C((a2 + 24), *(v2 + 3), *(v2 + 4));
  }

  else
  {
    *(a2 + 24) = *(v2 + 24);
    *(a2 + 40) = *(v2 + 5);
  }

  if (v2[71] < 0)
  {
    return sub_100005F2C((a2 + 48), *(v2 + 6), *(v2 + 7));
  }

  *(a2 + 48) = *(v2 + 3);
  *(a2 + 64) = *(v2 + 8);
  return result;
}

void sub_1007D22D0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1007D234C@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  if (result[23] < 0)
  {
    result = sub_100005F2C(a2, *result, *(result + 1));
  }

  else
  {
    *a2 = *result;
    *(a2 + 16) = *(result + 2);
  }

  *(a2 + 24) = 1;
  if (*(v2 + 6))
  {
    v4 = 0;
  }

  else
  {
    v4 = -1;
  }

  *(a2 + 32) = v4;
  return result;
}

void sub_1007D23B0(char **a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_1007D5E90(a2, (a1[1] - *a1) >> 5);
  v4 = *a1;
  for (i = a1[1]; v4 != i; v4 += 32)
  {
    sub_1007D234C(v4, __p);
    v6 = a2[1];
    if (v6 >= a2[2])
    {
      v8 = sub_1007D605C(a2, __p);
    }

    else
    {
      *v6 = 0;
      *(v6 + 24) = 0;
      if (v11 == 1)
      {
        v7 = *__p;
        *(v6 + 16) = v10;
        *v6 = v7;
        __p[1] = 0;
        v10 = 0;
        __p[0] = 0;
        *(v6 + 24) = 1;
      }

      *(v6 + 32) = v12;
      v8 = v6 + 40;
    }

    a2[1] = v8;
    if (v11 == 1 && SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1007D24E0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  if (*(a1 + 23) < 0)
  {
    sub_100005F2C(__p, *a1, *(a1 + 8));
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }
  }

  else
  {
    *__p = *a1;
    v11 = *(a1 + 16);
  }

  *a2 = *__p;
  *(a2 + 16) = v11;
  if (*(a1 + 48) == 1)
  {
    v6 = *(a1 + 24);
    v5 = a1 + 24;
    v4 = v6;
    v7 = *(v5 + 23);
    if (v7 >= 0)
    {
      v8 = v5;
    }

    else
    {
      v8 = v4;
    }

    if (v7 >= 0)
    {
      v9 = *(v5 + 23);
    }

    else
    {
      v9 = *(v5 + 8);
    }

    __p[1] = 0;
    v11 = 0;
    __p[0] = 0;
    sub_1001E0D88(__p, v8, v8 + v9, v9);
    sub_1001E9734(a2 + 24, __p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_1007D25EC(int *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = (a1 + 2);
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  *a2 = v6;
  sub_1007D24E0(v4, &v10);
  *(a2 + 8) = v10;
  *(a2 + 24) = v11;
  *(a2 + 32) = 0;
  *(a2 + 56) = 0;
  if (v14 == 1)
  {
    *(a2 + 32) = v12;
    *(a2 + 48) = v13;
    *(a2 + 56) = 1;
  }

  *(a2 + 64) = 1;
  v7 = a1[16];
  if (v7 == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

  if (v7 == 2)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  *(a2 + 72) = v9;
}

void sub_1007D268C(int **a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_1007D61B8(a2, 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3));
  v4 = *a1;
  for (i = a1[1]; v4 != i; v4 += 18)
  {
    sub_1007D25EC(v4, &v8);
    v6 = a2[1];
    if (v6 >= a2[2])
    {
      v7 = sub_1007D649C(a2, &v8);
    }

    else
    {
      *v6 = v8;
      sub_1007D6378((v6 + 8), &v9);
      *(v6 + 72) = v15;
      v7 = v6 + 80;
    }

    a2[1] = v7;
    if (v14 == 1)
    {
      if (v13 == 1 && __p)
      {
        v12 = __p;
        operator delete(__p);
      }

      if (v10 < 0)
      {
        operator delete(v9);
      }
    }
  }
}

char *sub_1007D27C4@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  if (result[23] < 0)
  {
    result = sub_100005F2C(a2, *result, *(result + 1));
  }

  else
  {
    *a2 = *result;
    *(a2 + 16) = *(result + 2);
  }

  if (v2[47] < 0)
  {
    return sub_100005F2C((a2 + 24), *(v2 + 3), *(v2 + 4));
  }

  *(a2 + 24) = *(v2 + 24);
  *(a2 + 40) = *(v2 + 5);
  return result;
}

void sub_1007D2838(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007D2854(char **a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_1007D65D8(a2, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4));
  v4 = *a1;
  for (i = a1[1]; v4 != i; v4 += 48)
  {
    sub_1007D27C4(v4, v19);
    v6 = a2[1];
    v7 = a2[2];
    if (v6 >= v7)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a2) >> 4);
      v11 = v10 + 1;
      if (v10 + 1 > 0x555555555555555)
      {
        sub_1000CE3D4();
      }

      v12 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a2) >> 4);
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0x2AAAAAAAAAAAAAALL)
      {
        v13 = 0x555555555555555;
      }

      else
      {
        v13 = v11;
      }

      v23[4] = a2;
      if (v13)
      {
        sub_1001904B4(a2, v13);
      }

      v14 = 48 * v10;
      v23[0] = 0;
      v23[1] = v14;
      v23[3] = 0;
      v15 = *v19;
      *(v14 + 16) = v20;
      *v14 = v15;
      v19[1] = 0;
      v20 = 0;
      v19[0] = 0;
      v16 = __p;
      *(v14 + 40) = v22;
      *(v14 + 24) = v16;
      v22 = 0;
      __p = 0uLL;
      v23[2] = 48 * v10 + 48;
      sub_1006FAE88(a2, v23);
      v17 = a2[1];
      sub_1001C7794(v23);
      v18 = SHIBYTE(v22);
      a2[1] = v17;
      if (v18 < 0)
      {
        operator delete(__p);
      }
    }

    else
    {
      v8 = *v19;
      *(v6 + 16) = v20;
      *v6 = v8;
      v19[1] = 0;
      v20 = 0;
      v19[0] = 0;
      v9 = v22;
      *(v6 + 24) = __p;
      *(v6 + 40) = v9;
      v22 = 0;
      __p = 0uLL;
      a2[1] = v6 + 48;
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(v19[0]);
    }
  }
}

void sub_1007D2A34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001C6984(va);
  _Unwind_Resume(a1);
}

void sub_1007D2A74(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 96))
  {
    sub_1007D2304(a1, v8);
    *a2 = *v8;
    *(a2 + 16) = v9;
    v8[0] = 0;
    v8[1] = 0;
    *(a2 + 24) = *v10;
    *(a2 + 40) = v11;
    v9 = 0;
    v10[0] = 0;
    v10[1] = 0;
    v11 = 0;
    *(a2 + 64) = v13;
    *(a2 + 48) = *__p;
    __p[0] = 0;
    __p[1] = 0;
    *(a2 + 72) = v14;
    *(a2 + 88) = v15;
    v13 = 0;
    v14 = 0uLL;
    v15 = 0;
    *(a2 + 96) = 1;
    *&v16 = &v14;
    sub_1006FA290(&v16);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v11) < 0)
    {
      operator delete(v10[0]);
    }

    if (SHIBYTE(v9) < 0)
    {
      operator delete(v8[0]);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 96) = 0;
  }

  if (*(a1 + 128))
  {
    sub_1007D268C((a1 + 104), v8);
    *(a2 + 104) = *v8;
    *(a2 + 120) = v9;
    v8[1] = 0;
    v9 = 0;
    v8[0] = 0;
    *&v16 = v8;
    sub_1006FA34C(&v16);
    v4 = 1;
  }

  else
  {
    v4 = 0;
    *(a2 + 104) = 0;
  }

  *(a2 + 128) = v4;
  if (*(a1 + 160))
  {
    sub_1007D23B0((a1 + 136), v8);
    *(a2 + 136) = *v8;
    *(a2 + 152) = v9;
    v8[1] = 0;
    v9 = 0;
    v8[0] = 0;
    *&v16 = v8;
    sub_1006FA290(&v16);
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *(a2 + 136) = 0;
  }

  *(a2 + 160) = v5;
  sub_10006F264(v8, (a1 + 168));
  *(a2 + 168) = 0;
  *(a2 + 192) = 0;
  if (LOBYTE(v10[0]) == 1)
  {
    *(a2 + 168) = *v8;
    *(a2 + 184) = v9;
    v8[1] = 0;
    v9 = 0;
    v8[0] = 0;
    *(a2 + 192) = 1;
  }

  *(a2 + 200) = 1;
  if (*(a1 + 224))
  {
    v16 = 0uLL;
    v17 = 0;
    sub_10004EFD0(&v16, *(a1 + 200), *(a1 + 208), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 208) - *(a1 + 200)) >> 3));
    *(a2 + 208) = v16;
    *(a2 + 224) = v17;
    v17 = 0;
    v16 = 0uLL;
    v18 = &v16;
    sub_1000087B4(&v18);
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *(a2 + 208) = 0;
  }

  *(a2 + 232) = v6;
  if (*(a1 + 256))
  {
    sub_1007D2854((a1 + 232), &v16);
    *(a2 + 240) = v16;
    *(a2 + 256) = v17;
    v17 = 0;
    v16 = 0uLL;
    v18 = &v16;
    sub_1001C6984(&v18);
    v7 = 1;
  }

  else
  {
    v7 = 0;
    *(a2 + 240) = 0;
  }

  *(a2 + 264) = v7;
  if (LOBYTE(v10[0]) == 1 && SHIBYTE(v9) < 0)
  {
    operator delete(v8[0]);
  }
}

void sub_1007D2D40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (*(v15 + 232) == 1)
  {
    *(v18 - 56) = v17;
    sub_1000087B4((v18 - 56));
  }

  if (*(v15 + 200) == 1 && *(v15 + 192) == 1 && *(v15 + 191) < 0)
  {
    operator delete(*(v15 + 168));
  }

  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 160) == 1)
  {
    sub_1006FA290(&__p);
  }

  if (*(v15 + 128) == 1)
  {
    *(v18 - 56) = v16;
    sub_1006FA34C((v18 - 56));
  }

  sub_100733E3C(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_1007D2E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 264))
  {
    sub_1007D2A74(a1, &v6);
    *a2 = 0;
    *(a2 + 96) = 0;
    if (v14 == 1)
    {
      *a2 = v6;
      *(a2 + 16) = v7;
      v6 = 0uLL;
      v4 = v8;
      v7 = 0;
      *&v8 = 0;
      *(a2 + 24) = v4;
      *(a2 + 40) = v9;
      *(&v8 + 1) = 0;
      v9 = 0;
      *(a2 + 64) = v11;
      *(a2 + 48) = v10;
      v10 = 0uLL;
      *(a2 + 72) = v12;
      *(a2 + 88) = v13;
      v11 = 0;
      v12 = 0uLL;
      v13 = 0;
      *(a2 + 96) = 1;
    }

    *(a2 + 104) = 0;
    *(a2 + 128) = 0;
    if (v17 == 1)
    {
      *(a2 + 104) = v15;
      *(a2 + 120) = v16;
      v16 = 0;
      v15 = 0uLL;
      *(a2 + 128) = 1;
    }

    *(a2 + 136) = 0;
    *(a2 + 160) = 0;
    if (v20 == 1)
    {
      *(a2 + 136) = v18;
      *(a2 + 152) = v19;
      v19 = 0;
      v18 = 0uLL;
      *(a2 + 160) = 1;
    }

    *(a2 + 168) = 0;
    *(a2 + 200) = 0;
    if (v24 == 1)
    {
      *(a2 + 192) = 0;
      if (v23 == 1)
      {
        *(a2 + 168) = v21;
        *(a2 + 184) = v22;
        v22 = 0;
        v21 = 0uLL;
        *(a2 + 192) = 1;
      }

      *(a2 + 200) = 1;
    }

    *(a2 + 208) = 0;
    *(a2 + 232) = 0;
    if (v27 == 1)
    {
      *(a2 + 208) = v25;
      *(a2 + 224) = v26;
      v26 = 0;
      v25 = 0uLL;
      *(a2 + 232) = 1;
    }

    *(a2 + 240) = 0;
    *(a2 + 264) = 0;
    if (v30 == 1)
    {
      *(a2 + 240) = v28;
      *(a2 + 256) = v29;
      v29 = 0;
      v28 = 0uLL;
      *(a2 + 264) = 1;
    }

    *(a2 + 272) = 1;
    sub_1006FA180(&v6);
  }

  else
  {
    *a2 = 0;
    *(a2 + 272) = 0;
  }

  return sub_10006F264(a2 + 280, (a1 + 272));
}

void sub_1007D3008(_Unwind_Exception *exception_object)
{
  if (*(v1 + 272) == 1)
  {
    sub_1006FA180(v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1007D3028@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  if (result[23] < 0)
  {
    result = sub_100005F2C(a2, *result, *(result + 1));
  }

  else
  {
    *a2 = *result;
    *(a2 + 16) = *(result + 2);
  }

  if (v2[47] < 0)
  {
    return sub_100005F2C((a2 + 24), *(v2 + 3), *(v2 + 4));
  }

  *(a2 + 24) = *(v2 + 24);
  *(a2 + 40) = *(v2 + 5);
  return result;
}

void sub_1007D309C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007D30B8(char **a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_1007D6688(a2, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4));
  v4 = *a1;
  for (i = a1[1]; v4 != i; v4 += 48)
  {
    sub_1007D3028(v4, v19);
    v6 = a2[1];
    v7 = a2[2];
    if (v6 >= v7)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a2) >> 4);
      v11 = v10 + 1;
      if (v10 + 1 > 0x555555555555555)
      {
        sub_1000CE3D4();
      }

      v12 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a2) >> 4);
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0x2AAAAAAAAAAAAAALL)
      {
        v13 = 0x555555555555555;
      }

      else
      {
        v13 = v11;
      }

      v23[4] = a2;
      if (v13)
      {
        sub_1001904B4(a2, v13);
      }

      v14 = 48 * v10;
      v23[0] = 0;
      v23[1] = v14;
      v23[3] = 0;
      v15 = *v19;
      *(v14 + 16) = v20;
      *v14 = v15;
      v19[1] = 0;
      v20 = 0;
      v19[0] = 0;
      v16 = __p;
      *(v14 + 40) = v22;
      *(v14 + 24) = v16;
      v22 = 0;
      __p = 0uLL;
      v23[2] = 48 * v10 + 48;
      sub_1006FAE88(a2, v23);
      v17 = a2[1];
      sub_1001C7794(v23);
      v18 = SHIBYTE(v22);
      a2[1] = v17;
      if (v18 < 0)
      {
        operator delete(__p);
      }
    }

    else
    {
      v8 = *v19;
      *(v6 + 16) = v20;
      *v6 = v8;
      v19[1] = 0;
      v20 = 0;
      v19[0] = 0;
      v9 = v22;
      *(v6 + 24) = __p;
      *(v6 + 40) = v9;
      v22 = 0;
      __p = 0uLL;
      a2[1] = v6 + 48;
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(v19[0]);
    }
  }
}

void sub_1007D3298(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001C6984(va);
  _Unwind_Resume(a1);
}

void sub_1007D32D8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1007D2E00(a1, a2);
  sub_10006F264(a2 + 312, (a1 + 304));
  sub_10006F264(a2 + 344, (a1 + 336));
  sub_10006F264(a2 + 376, (a1 + 368));
  sub_10006F264(a2 + 408, (a1 + 400));
  sub_10006F264(a2 + 440, (a1 + 432));
  sub_10006F264(a2 + 472, (a1 + 464));
  sub_10006F264(a2 + 504, (a1 + 496));
  v4 = (a2 + 536);
  if (*(a1 + 552))
  {
    sub_1007D30B8((a1 + 528), &v6);
    *v4 = v6;
    *(a2 + 552) = v7;
    v7 = 0;
    v6 = 0uLL;
    v8 = &v6;
    sub_1001C6984(&v8);
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *v4 = 0;
  }

  *(a2 + 560) = v5;
}

void sub_1007D33B8(_Unwind_Exception *a1)
{
  if (*(v1 + 528) == 1 && *(v1 + 527) < 0)
  {
    operator delete(*(v1 + 504));
  }

  if (*(v1 + 496) == 1 && *(v1 + 495) < 0)
  {
    operator delete(*(v1 + 472));
  }

  if (*(v1 + 464) == 1 && *(v1 + 463) < 0)
  {
    operator delete(*(v1 + 440));
  }

  if (*(v1 + 432) == 1 && *(v1 + 431) < 0)
  {
    operator delete(*(v1 + 408));
  }

  if (*(v1 + 400) == 1 && *(v1 + 399) < 0)
  {
    operator delete(*(v1 + 376));
  }

  if (*(v1 + 368) == 1 && *(v1 + 367) < 0)
  {
    operator delete(*(v1 + 344));
  }

  if (*(v1 + 336) == 1 && *(v1 + 335) < 0)
  {
    operator delete(*(v1 + 312));
  }

  sub_1007340F4(v1);
  _Unwind_Resume(a1);
}

double sub_1007D34C8@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_100005F2C(a2, *a1, *(a1 + 1));
  }

  else
  {
    v4 = *a1;
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 2);
  }

  if (a1[3])
  {
    if (*(a1 + 47) < 0)
    {
      sub_100005F2C(&v6, *(a1 + 3), *(a1 + 4));
    }

    else
    {
      v6 = *(a1 + 24);
      v7 = *(a1 + 5);
    }

    *&v4 = v6;
    *(a2 + 24) = v6;
    *(a2 + 40) = v7;
    *(a2 + 48) = 1;
  }

  else
  {
    *(a2 + 24) = 0;
    *(a2 + 48) = 0;
  }

  return *&v4;
}

void sub_1007D3570(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007D358C(int a1)
{
  if ((a1 - 1) >= 0xD)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (a1 - 1);
  }
}

char *sub_1007D359C@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v4 = *result - 1;
  if (v4 >= 3)
  {
    v4 = -1;
  }

  *a2 = v4;
  if (result[31] < 0)
  {
    result = sub_100005F2C((a2 + 8), *(result + 1), *(result + 2));
  }

  else
  {
    *(a2 + 8) = *(result + 8);
    *(a2 + 24) = *(result + 3);
  }

  if (v2[55] < 0)
  {
    return sub_100005F2C((a2 + 32), *(v2 + 4), *(v2 + 5));
  }

  *(a2 + 32) = *(v2 + 2);
  *(a2 + 48) = *(v2 + 6);
  return result;
}

void sub_1007D3630(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1007D364C@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  if (result[23] < 0)
  {
    result = sub_100005F2C(a2, *result, *(result + 1));
  }

  else
  {
    *a2 = *result;
    *(a2 + 16) = *(result + 2);
  }

  if (v2[47] < 0)
  {
    return sub_100005F2C((a2 + 24), *(v2 + 3), *(v2 + 4));
  }

  *(a2 + 24) = *(v2 + 24);
  *(a2 + 40) = *(v2 + 5);
  return result;
}

void sub_1007D36C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007D36DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    *a2 = *a1;
    v4 = 1;
  }

  else
  {
    v4 = 0;
    *a2 = 0;
  }

  *(a2 + 16) = v4;
  if (*(a1 + 48))
  {
    if (*(a1 + 47) < 0)
    {
      sub_100005F2C(&v6, *(a1 + 24), *(a1 + 32));
    }

    else
    {
      v6 = *(a1 + 24);
      v7 = *(a1 + 40);
    }

    *(a2 + 24) = v6;
    *(a2 + 40) = v7;
    *(a2 + 48) = 1;
    *(a2 + 56) = 1;
  }

  else
  {
    *(a2 + 24) = 0;
    *(a2 + 56) = 0;
  }

  sub_10006F264(a2 + 64, (a1 + 56));
  return sub_10006F264(a2 + 96, (a1 + 88));
}

void sub_1007D379C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 88) == 1 && *(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 56) == 1 && *(v1 + 48) == 1 && *(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007D37F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_100005F2C(a2, *a1, *(a1 + 8));
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  if (*(a1 + 47) < 0)
  {
    sub_100005F2C((a2 + 24), *(a1 + 24), *(a1 + 32));
  }

  else
  {
    *(a2 + 24) = *(a1 + 24);
    *(a2 + 40) = *(a1 + 40);
  }

  if (*(a1 + 71) < 0)
  {
    sub_100005F2C((a2 + 48), *(a1 + 48), *(a1 + 56));
  }

  else
  {
    *(a2 + 48) = *(a1 + 48);
    *(a2 + 64) = *(a1 + 64);
  }

  sub_10006F264(a2 + 72, (a1 + 72));
  return sub_10006F264(a2 + 104, (a1 + 104));
}

void sub_1007D38A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007D3918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_100005F2C(a2, *a1, *(a1 + 8));
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  return sub_10006F264(a2 + 24, (a1 + 24));
}

void sub_1007D3970(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007D398C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_100005F2C(a2, *a1, *(a1 + 8));
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  sub_10006F264(a2 + 24, (a1 + 24));
  return sub_10006F264(a2 + 56, (a1 + 56));
}

void sub_1007D39F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 48) == 1 && *(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007D3A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_100005F2C(a2, *a1, *(a1 + 8));
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  return sub_10006F264(a2 + 24, (a1 + 24));
}

void sub_1007D3A88(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007D3AA4@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  *a2 = sub_1007D358C(*a1);
  v4 = sub_1007D34C8((a1 + 8), (a2 + 2));
  v5 = *(a1 + 208);
  if (v5 == -1)
  {
    sub_10058114C();
  }

  v8 = &v7;
  return (off_101E7FE28[v5])(&v8, a1 + 72, v4);
}

uint64_t sub_1007D3B40@<X0>(_DWORD *a1@<X0>, int *a2@<X8>)
{
  if (*a1 == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = -1;
  }

  if (*a1 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  v4 = a1[56];
  if (v4 == -1)
  {
    sub_10058114C();
  }

  v7 = &v6;
  return (off_101E7FE90[v4])(&v7, a1 + 2);
}

uint64_t sub_1007D3BAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_100005F2C(a2, *a1, *(a1 + 8));
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  return sub_1007D3C20((a1 + 24), (a2 + 24));
}

void sub_1007D3C04(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007D3C20@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_1007D6738(a2, 0x34F72C234F72C235 * ((a1[1] - *a1) >> 3));
  v5 = *a1;
  v6 = a1[1];
  if (*a1 != v6)
  {
    do
    {
      sub_1007D3B40(v5, &v9);
      v7 = a2[1];
      if (v7 >= a2[2])
      {
        v8 = sub_1007D68F0(a2, &v9);
      }

      else
      {
        *v7 = v9;
        v8 = (v7 + 58);
        sub_1007D5910((v7 + 2), v10);
      }

      a2[1] = v8;
      result = sub_10018FAC8(v10);
      v5 += 58;
    }

    while (v5 != v6);
  }

  return result;
}

uint64_t sub_1007D3D50@<X0>(_DWORD *a1@<X0>, int *a2@<X8>)
{
  if (*a1 == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = -1;
  }

  if (*a1 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  v4 = a1[60];
  if (v4 == -1)
  {
    sub_10058114C();
  }

  v7 = &v6;
  return (off_101E7FEA0[v4])(&v7, a1 + 2);
}

uint64_t sub_1007D3DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_100005F2C(a2, *a1, *(a1 + 8));
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  return sub_1007D3E30((a1 + 24), (a2 + 24));
}

void sub_1007D3E14(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007D3E30@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_1007D6A3C(a2, 0xEF7BDEF7BDEF7BDFLL * ((a1[1] - *a1) >> 3));
  v5 = *a1;
  v6 = a1[1];
  if (*a1 != v6)
  {
    do
    {
      sub_1007D3D50(v5, &v9);
      v7 = a2[1];
      if (v7 >= a2[2])
      {
        v8 = sub_1007D6CE0(a2, &v9);
      }

      else
      {
        *v7 = v9;
        v8 = (v7 + 62);
        sub_1007D6BA0((v7 + 2), v10);
      }

      a2[1] = v8;
      result = sub_1001918CC(v10);
      v5 += 62;
    }

    while (v5 != v6);
  }

  return result;
}

uint64_t sub_1007D3F60@<X0>(_DWORD *a1@<X0>, int *a2@<X8>)
{
  if (*a1 == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = -1;
  }

  if (*a1 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  v4 = a1[60];
  if (v4 == -1)
  {
    sub_10058114C();
  }

  v7 = &v6;
  return (off_101E7FEC0[v4])(&v7, a1 + 2);
}

uint64_t sub_1007D3FCC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_1007D6E2C(a2, 0xEF7BDEF7BDEF7BDFLL * ((a1[1] - *a1) >> 3));
  v5 = *a1;
  v6 = a1[1];
  if (*a1 != v6)
  {
    do
    {
      sub_1007D3F60(v5, &v9);
      v7 = a2[1];
      if (v7 >= a2[2])
      {
        v8 = sub_1007D7080(a2, &v9);
      }

      else
      {
        *v7 = v9;
        v8 = (v7 + 62);
        sub_1007D6F90((v7 + 2), v10);
      }

      a2[1] = v8;
      result = sub_100191D80(v10);
      v5 += 62;
    }

    while (v5 != v6);
  }

  return result;
}

char *sub_1007D40FC@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  *a2 = *result;
  v4 = (a2 + 8);
  if (result[31] < 0)
  {
    result = sub_100005F2C(v4, *(result + 1), *(result + 2));
  }

  else
  {
    *v4 = *(result + 8);
    *(a2 + 24) = *(result + 3);
  }

  if (v2[55] < 0)
  {
    return sub_100005F2C((a2 + 32), *(v2 + 4), *(v2 + 5));
  }

  *(a2 + 32) = *(v2 + 2);
  *(a2 + 48) = *(v2 + 6);
  return result;
}

void sub_1007D4184(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

double sub_1007D41A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  bzero(a2, 0x2B0uLL);
  sub_1007D32D8(a1, __p);
  sub_10073454C(a2, __p);
  sub_1006FA044(__p);
  if (*(a1 + 584))
  {
    sub_1007D3FCC((a1 + 560), &v14);
    *__p = v14;
    *&__p[16] = v15;
    v15 = 0;
    v14 = 0uLL;
    v16 = &v14;
    sub_100191E28(&v16);
    v4 = 1;
  }

  else
  {
    v4 = 0;
    __p[0] = 0;
  }

  LOBYTE(v11) = v4;
  sub_100734D90(a2 + 568, __p);
  if (v11 == 1)
  {
    *&v14 = __p;
    sub_100191E28(&v14);
  }

  sub_1007D40FC((a1 + 592), __p);
  v5 = (a2 + 608);
  *(a2 + 600) = __p[0];
  if (*(a2 + 631) < 0)
  {
    operator delete(*v5);
  }

  v6 = (a2 + 632);
  *v5 = *&__p[8];
  *(a2 + 624) = v11;
  HIBYTE(v11) = 0;
  __p[8] = 0;
  if (*(a2 + 655) < 0)
  {
    operator delete(*v6);
    v8 = SHIBYTE(v11);
    result = *&v12;
    *v6 = v12;
    *(a2 + 648) = v13;
    HIBYTE(v13) = 0;
    LOBYTE(v12) = 0;
    if (v8 < 0)
    {
      operator delete(*&__p[8]);
    }
  }

  else
  {
    result = *&v12;
    *v6 = v12;
    *(a2 + 648) = v13;
  }

  if (*(a1 + 672) == 1)
  {
    if (*(a1 + 671) < 0)
    {
      sub_100005F2C(__p, *(a1 + 648), *(a1 + 656));
    }

    else
    {
      *__p = *(a1 + 648);
      *&__p[16] = *(a1 + 664);
    }

    v9 = (a2 + 656);
    if (*(a2 + 680) == 1)
    {
      if (*(a2 + 679) < 0)
      {
        operator delete(*v9);
      }

      result = *__p;
      *v9 = *__p;
      *(a2 + 672) = *&__p[16];
    }

    else
    {
      result = *__p;
      *v9 = *__p;
      *(a2 + 672) = *&__p[16];
      *(a2 + 680) = 1;
    }
  }

  return result;
}

uint64_t sub_1007D43C4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_1007D71CC(a2, 0x34F72C234F72C235 * ((a1[1] - *a1) >> 3));
  v5 = *a1;
  v6 = a1[1];
  if (*a1 != v6)
  {
    do
    {
      sub_1007D3B40(v5, &v9);
      v7 = a2[1];
      if (v7 >= a2[2])
      {
        v8 = sub_1007D72B4(a2, &v9);
      }

      else
      {
        *v7 = v9;
        v8 = (v7 + 58);
        sub_1007D5910((v7 + 2), v10);
      }

      a2[1] = v8;
      result = sub_10018FAC8(v10);
      v5 += 58;
    }

    while (v5 != v6);
  }

  return result;
}

int32x2_t sub_1007D44F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = vceq_s32(*a1, 0x200000002);
  result = vsub_s32(vbic_s8(vmvn_s8(vceq_s32(*a1, 0x100000001)), v3), v3);
  *a2 = result;
  if (*(a1 + 11) == 1)
  {
    v5 = *(a1 + 8) | (*(a1 + 10) << 16) | 0x1000000;
  }

  else
  {
    v5 = 0;
  }

  *(a2 + 8) = v5;
  if (*(a1 + 15) == 1)
  {
    v6 = *(a1 + 12) | (*(a1 + 14) << 16) | 0x1000000;
  }

  else
  {
    v6 = 0;
  }

  *(a2 + 12) = v6;
  if (*(a1 + 40))
  {
    if (*(a1 + 39) < 0)
    {
      sub_100005F2C(&v7, *(a1 + 16), *(a1 + 24));
    }

    else
    {
      v7 = *(a1 + 16);
      v8 = *(a1 + 32);
    }

    result = v7;
    *(a2 + 16) = v7;
    *(a2 + 32) = v8;
    *(a2 + 40) = 1;
  }

  else
  {
    *(a2 + 16) = 0;
    *(a2 + 40) = 0;
  }

  return result;
}

uint64_t sub_1007D45E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_100005F2C(a2, *a1, *(a1 + 8));
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  if (*(a1 + 47) < 0)
  {
    sub_100005F2C((a2 + 24), *(a1 + 24), *(a1 + 32));
  }

  else
  {
    *(a2 + 24) = *(a1 + 24);
    *(a2 + 40) = *(a1 + 40);
  }

  *(a2 + 48) = *(a1 + 48);
  sub_10006F264(a2 + 56, (a1 + 56));
  sub_10006F264(a2 + 88, (a1 + 88));
  *(a2 + 120) = *(a1 + 120);
  *(a2 + 128) = *(a1 + 128);
  v4 = *(a1 + 136) - 1;
  if (v4 >= 3)
  {
    v4 = -1;
  }

  *(a2 + 136) = v4;
  return sub_10006F264(a2 + 144, (a1 + 144));
}

void sub_1007D46A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007D4724(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1007D48B0(a1, a2);
  if (*(a1 + 208))
  {
    if (*(a1 + 207) < 0)
    {
      sub_100005F2C(&v5, *(a1 + 184), *(a1 + 192));
    }

    else
    {
      v5 = *(a1 + 184);
      v6 = *(a1 + 200);
    }

    *(a2 + 184) = v5;
    *(a2 + 200) = v6;
    *(a2 + 208) = 1;
  }

  else
  {
    *(a2 + 184) = 0;
    *(a2 + 208) = 0;
  }

  if (*(a1 + 240))
  {
    if (*(a1 + 239) < 0)
    {
      sub_100005F2C(&v5, *(a1 + 216), *(a1 + 224));
    }

    else
    {
      v5 = *(a1 + 216);
      v6 = *(a1 + 232);
    }

    *(a2 + 216) = v5;
    *(a2 + 232) = v6;
    *(a2 + 240) = 1;
  }

  else
  {
    *(a2 + 216) = 0;
    *(a2 + 240) = 0;
  }

  if (*(a1 + 272))
  {
    sub_1007D43C4((a1 + 248), &v5);
    *(a2 + 248) = v5;
    *(a2 + 264) = v6;
    v6 = 0;
    v5 = 0uLL;
    v7 = &v5;
    sub_10019029C(&v7);
    v4 = 1;
  }

  else
  {
    v4 = 0;
    *(a2 + 248) = 0;
  }

  *(a2 + 272) = v4;
}

void sub_1007D4854(_Unwind_Exception *a1)
{
  if (*(v1 + 208) == 1 && *(v1 + 207) < 0)
  {
    operator delete(*(v1 + 184));
  }

  sub_100191184(v1);
  _Unwind_Resume(a1);
}

void sub_1007D48B0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 176))
  {
    sub_1007D45E4(a1, v8);
    *a2 = *v8;
    *(a2 + 16) = v9;
    v8[0] = 0;
    v8[1] = 0;
    *(a2 + 24) = *v10;
    v9 = 0;
    v10[0] = 0;
    v3 = v11;
    v4 = v12;
    v10[1] = 0;
    v11 = 0;
    *(a2 + 40) = v3;
    *(a2 + 48) = v4;
    *(a2 + 56) = 0;
    *(a2 + 80) = 0;
    v5 = v15;
    if (v15 == 1)
    {
      *(a2 + 56) = *v13;
      *(a2 + 72) = v14;
      v13[1] = 0;
      v14 = 0;
      v13[0] = 0;
      *(a2 + 80) = 1;
    }

    *(a2 + 88) = 0;
    *(a2 + 112) = 0;
    v6 = v18;
    if (v18 == 1)
    {
      *(a2 + 88) = *__p;
      *(a2 + 104) = v17;
      __p[1] = 0;
      v17 = 0;
      __p[0] = 0;
      *(a2 + 112) = 1;
    }

    v7 = v19;
    *(a2 + 144) = 0;
    *(a2 + 120) = v7;
    *(a2 + 136) = v20;
    *(a2 + 168) = 0;
    if (v23 == 1)
    {
      *(a2 + 144) = v21;
      *(a2 + 160) = v22;
      v22 = 0;
      v21 = 0uLL;
      *(a2 + 168) = 1;
    }

    *(a2 + 176) = 1;
    if (v6 && SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
      v5 = v15;
    }

    if ((v5 & 1) != 0 && SHIBYTE(v14) < 0)
    {
      operator delete(v13[0]);
    }

    if (SHIBYTE(v11) < 0)
    {
      operator delete(v10[0]);
    }

    if (SHIBYTE(v9) < 0)
    {
      operator delete(v8[0]);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 176) = 0;
  }
}

void sub_1007D4A60(_Unwind_Exception *exception_object)
{
  if (*(v1 + 40) == 1 && *(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

double sub_1007D4A88@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = NAN;
  *a2 = -1;
  if (*a1 == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = -1;
  }

  if (*a1 == 2)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  *(a2 + 8) = v5;
  if (*(a1 + 7) == 1)
  {
    v6 = *(a1 + 4) | (*(a1 + 6) << 16) | 0x1000000;
  }

  else
  {
    v6 = 0;
  }

  *(a2 + 12) = v6;
  if (*(a1 + 11) == 1)
  {
    v7 = *(a1 + 8) | (*(a1 + 10) << 16) | 0x1000000;
  }

  else
  {
    v7 = 0;
  }

  *(a2 + 16) = v7;
  if (*(a1 + 40))
  {
    if (*(a1 + 39) < 0)
    {
      sub_100005F2C(&v8, *(a1 + 16), *(a1 + 24));
    }

    else
    {
      v8 = *(a1 + 16);
      v9 = *(a1 + 32);
    }

    result = *&v8;
    *(a2 + 24) = v8;
    *(a2 + 40) = v9;
    *(a2 + 48) = 1;
  }

  else
  {
    *(a2 + 24) = 0;
    *(a2 + 48) = 0;
  }

  return result;
}

void sub_1007D4B74(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1007D48B0(a1, a2);
  if (*(a1 + 208))
  {
    if (*(a1 + 207) < 0)
    {
      sub_100005F2C(&v5, *(a1 + 184), *(a1 + 192));
    }

    else
    {
      v5 = *(a1 + 184);
      v6 = *(a1 + 200);
    }

    *(a2 + 184) = v5;
    *(a2 + 200) = v6;
    *(a2 + 208) = 1;
  }

  else
  {
    *(a2 + 184) = 0;
    *(a2 + 208) = 0;
  }

  if (*(a1 + 240))
  {
    if (*(a1 + 239) < 0)
    {
      sub_100005F2C(&v5, *(a1 + 216), *(a1 + 224));
    }

    else
    {
      v5 = *(a1 + 216);
      v6 = *(a1 + 232);
    }

    *(a2 + 216) = v5;
    *(a2 + 232) = v6;
    *(a2 + 240) = 1;
  }

  else
  {
    *(a2 + 216) = 0;
    *(a2 + 240) = 0;
  }

  if (*(a1 + 272))
  {
    sub_1007D43C4((a1 + 248), &v5);
    *(a2 + 248) = v5;
    *(a2 + 264) = v6;
    v6 = 0;
    v5 = 0uLL;
    v7 = &v5;
    sub_10019029C(&v7);
    v4 = 1;
  }

  else
  {
    v4 = 0;
    *(a2 + 248) = 0;
  }

  *(a2 + 272) = v4;
}

void sub_1007D4CA4(_Unwind_Exception *a1)
{
  if (*(v1 + 208) == 1 && *(v1 + 207) < 0)
  {
    operator delete(*(v1 + 184));
  }

  sub_100191184(v1);
  _Unwind_Resume(a1);
}

void sub_1007D4D00(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1007D4A88(a1, a2);
  sub_1007D4D64((a1 + 48), (a2 + 56));
  *(a2 + 80) = 0;
  *(a2 + 104) = 0;
}

void sub_1007D4D3C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 48) == 1 && *(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

void sub_1007D4D64(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_1007D7400(a2, 0xAF8AF8AF8AF8AF8BLL * ((a1[1] - *a1) >> 3));
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    do
    {
      sub_1007D4B74(v4, v8);
      v6 = a2[1];
      if (v6 >= a2[2])
      {
        v7 = sub_1007D797C(a2, v8);
      }

      else
      {
        sub_1007D75B4(a2, a2[1], v8);
        v7 = v6 + 280;
      }

      a2[1] = v7;
      if (v28[24] == 1)
      {
        v29 = v28;
        sub_10019029C(&v29);
      }

      if (v27 == 1 && v26 < 0)
      {
        operator delete(__p);
      }

      if (v24 == 1 && v23 < 0)
      {
        operator delete(v22);
      }

      if (v21 == 1)
      {
        if (v20 == 1 && v19 < 0)
        {
          operator delete(v18);
        }

        if (v17 == 1 && v16 < 0)
        {
          operator delete(v15);
        }

        if (v14 == 1 && v13 < 0)
        {
          operator delete(v12);
        }

        if (v11 < 0)
        {
          operator delete(v10);
        }

        if (v9 < 0)
        {
          operator delete(v8[0]);
        }
      }

      v4 += 280;
    }

    while (v4 != v5);
  }
}

void sub_1007D4F38(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; sub_1007D4F8C(a1, i))
  {
    i -= 80;
  }

  *(a1 + 8) = a2;
}

void sub_1007D4F8C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 64) == 1)
  {
    if (*(a2 + 56) == 1)
    {
      v3 = *(a2 + 32);
      if (v3)
      {
        *(a2 + 40) = v3;
        operator delete(v3);
      }
    }

    if (*(a2 + 31) < 0)
    {
      v4 = *(a2 + 8);

      operator delete(v4);
    }
  }
}

uint64_t sub_1007D4FFC(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    if (*(a1 + 56) == 1)
    {
      v2 = *(a1 + 32);
      if (v2)
      {
        *(a1 + 40) = v2;
        operator delete(v2);
      }
    }

    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }
  }

  return a1;
}

double sub_1007D5058@<D0>(char *a1@<X1>, uint64_t a2@<X8>)
{
  sub_1007D359C(a1, &v4);
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  result = *&v7;
  *(a2 + 40) = v7;
  *(a2 + 56) = v8;
  *(a2 + 144) = 0;
  return result;
}

double sub_1007D50B8@<D0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_100005F2C(&v4, *a1, *(a1 + 1));
  }

  else
  {
    v4 = *a1;
    v5 = *(a1 + 2);
  }

  result = *&v4;
  *(a2 + 8) = v4;
  *(a2 + 24) = v5;
  *(a2 + 144) = 1;
  return result;
}

double sub_1007D5124@<D0>(char *a1@<X1>, uint64_t a2@<X8>)
{
  sub_1007D364C(a1, &v4);
  *(a2 + 8) = v4;
  *(a2 + 24) = v5;
  result = *&v6;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  *(a2 + 144) = 2;
  return result;
}

double sub_1007D5180@<D0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_100005F2C(&v4, *a1, *(a1 + 1));
  }

  else
  {
    v4 = *a1;
    v5 = *(a1 + 2);
  }

  result = *&v4;
  *(a2 + 8) = v4;
  *(a2 + 24) = v5;
  *(a2 + 144) = 3;
  return result;
}

double sub_1007D51EC@<D0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_100005F2C(&v4, *a1, *(a1 + 1));
  }

  else
  {
    v4 = *a1;
    v5 = *(a1 + 2);
  }

  result = *&v4;
  *(a2 + 8) = v4;
  *(a2 + 24) = v5;
  *(a2 + 144) = 4;
  return result;
}

void sub_1007D5258(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1007D36DC(a1, v3);
  sub_1007D5540((a2 + 8), v3);
  *(a2 + 144) = 5;
  if (v13 == 1 && v12 < 0)
  {
    operator delete(__p);
  }

  if (v10 == 1 && v9 < 0)
  {
    operator delete(v8);
  }

  if (v7 == 1 && v6 == 1 && v5 < 0)
  {
    operator delete(v4);
  }
}

uint64_t sub_1007D5320@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = sub_1007D3918(a1, &v5);
  v4 = v5;
  *(a2 + 32) = 0;
  *(a2 + 8) = v4;
  *(a2 + 24) = v6;
  *(a2 + 56) = 0;
  if (v9 == 1)
  {
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
    *(a2 + 56) = 1;
  }

  *(a2 + 144) = 8;
  return result;
}

void sub_1007D539C(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1007D398C(a1, v5);
  v3 = *v5;
  *(a2 + 32) = 0;
  *(a2 + 8) = v3;
  *(a2 + 24) = v6;
  v5[1] = 0;
  v6 = 0;
  v5[0] = 0;
  *(a2 + 56) = 0;
  v4 = v9;
  if (v9 == 1)
  {
    *(a2 + 32) = *__p;
    *(a2 + 48) = v8;
    __p[1] = 0;
    v8 = 0;
    __p[0] = 0;
    *(a2 + 56) = 1;
  }

  *(a2 + 64) = 0;
  *(a2 + 88) = 0;
  if (v12 == 1)
  {
    *(a2 + 64) = v10;
    *(a2 + 80) = v11;
    v11 = 0;
    v10 = 0uLL;
    *(a2 + 88) = 1;
  }

  *(a2 + 144) = 9;
  if (v4 && SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
    if (SHIBYTE(v6) < 0)
    {
      operator delete(v5[0]);
    }
  }
}

uint64_t sub_1007D5484@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = sub_1007D3A30(a1, &v5);
  v4 = v5;
  *(a2 + 32) = 0;
  *(a2 + 8) = v4;
  *(a2 + 24) = v6;
  *(a2 + 56) = 0;
  if (v9 == 1)
  {
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
    *(a2 + 56) = 1;
  }

  *(a2 + 144) = 10;
  return result;
}

void sub_1007D5500(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  if (*a1)
  {
    v2 = 0;
  }

  else
  {
    v2 = -1;
  }

  *(a2 + 8) = v2;
  *(a2 + 144) = 11;
}

void sub_1007D551C(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  if (*a1 == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = -1;
  }

  if (*a1 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  *(a2 + 8) = v3;
  *(a2 + 144) = 12;
}

__n128 sub_1007D5540(__n128 *a1, uint64_t a2)
{
  result = *a2;
  a1[1].n128_u64[0] = *(a2 + 16);
  *a1 = result;
  a1[1].n128_u8[8] = 0;
  a1[3].n128_u8[8] = 0;
  if (*(a2 + 56) == 1)
  {
    a1[3].n128_u8[0] = 0;
    if (*(a2 + 48) == 1)
    {
      result = *(a2 + 24);
      a1[2].n128_u64[1] = *(a2 + 40);
      *(a1 + 24) = result;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 24) = 0;
      a1[3].n128_u8[0] = 1;
    }

    a1[3].n128_u8[8] = 1;
  }

  a1[4].n128_u8[0] = 0;
  a1[5].n128_u8[8] = 0;
  if (*(a2 + 88) == 1)
  {
    result = *(a2 + 64);
    a1[5].n128_u64[0] = *(a2 + 80);
    a1[4] = result;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 64) = 0;
    a1[5].n128_u8[8] = 1;
  }

  a1[6].n128_u8[0] = 0;
  a1[7].n128_u8[8] = 0;
  if (*(a2 + 120) == 1)
  {
    result = *(a2 + 96);
    a1[7].n128_u64[0] = *(a2 + 112);
    a1[6] = result;
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    *(a2 + 96) = 0;
    a1[7].n128_u8[8] = 1;
  }

  return result;
}

void sub_1007D5614(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1007D37F4(a1, v3);
  sub_1006A9260(a2 + 8, v3);
  *(a2 + 144) = 7;
  if (v14 == 1 && v13 < 0)
  {
    operator delete(__p);
  }

  if (v11 == 1 && v10 < 0)
  {
    operator delete(v9);
  }

  if (v8 < 0)
  {
    operator delete(v7);
  }

  if (v6 < 0)
  {
    operator delete(v5);
  }

  if (v4 < 0)
  {
    operator delete(v3[0]);
  }
}

void sub_1007D56C4(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1007D3AA4(a1, &v3);
  sub_1006A980C(a2, &v3);
  *(a2 + 216) = 0;
  sub_10018FBF0(&v9);
  if (v8 == 1 && v7 < 0)
  {
    operator delete(__p);
  }

  if (v5 < 0)
  {
    operator delete(v4);
  }
}

void sub_1007D5778(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  sub_1007D34C8(a1, &v3);
  *a2 = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = 0;
  *(a2 + 48) = 0;
  if (v7 == 1)
  {
    *(a2 + 24) = v5;
    *(a2 + 40) = v6;
    *(a2 + 48) = 1;
  }

  *(a2 + 216) = 1;
}

uint64_t sub_1007D57F4@<X0>(_DWORD *a1@<X1>, _DWORD *a2@<X8>)
{
  sub_1007D3B40(a1, &v4);
  *a2 = v4;
  sub_1007D5910((a2 + 2), v5);
  a2[58] = 0;
  return sub_10018FAC8(v5);
}

void sub_1007D5884(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1007D3BAC(a1, __p);
  *a2 = *__p;
  *(a2 + 16) = v4;
  __p[0] = 0;
  __p[1] = 0;
  *(a2 + 24) = v5;
  *(a2 + 40) = v6;
  v4 = 0;
  v5 = 0uLL;
  v6 = 0;
  *(a2 + 232) = 1;
  v7 = &v5;
  sub_100191974(&v7);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t sub_1007D5910(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 216) = -1;
  sub_1007D5948(a1, a2);
  return a1;
}

uint64_t sub_1007D5948(uint64_t a1, uint64_t a2)
{
  result = sub_10018FAC8(a1);
  v5 = *(a2 + 216);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_101E7FEB0[v5])(&v6, a2);
    *(a1 + 216) = v5;
  }

  return result;
}

uint64_t sub_1007D59AC@<X0>(_DWORD *a1@<X1>, _DWORD *a2@<X8>)
{
  sub_1007D3B40(a1, &v4);
  *a2 = v4;
  sub_1007D5910((a2 + 2), v5);
  a2[58] = 0;
  return sub_10018FAC8(v5);
}

void sub_1007D5A3C(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1007D3DBC(a1, __p);
  *a2 = *__p;
  *(a2 + 16) = v4;
  __p[0] = 0;
  __p[1] = 0;
  *(a2 + 24) = v5;
  *(a2 + 40) = v6;
  v4 = 0;
  v5 = 0uLL;
  v6 = 0;
  *(a2 + 232) = 1;
  v7 = &v5;
  sub_100191B24(&v7);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }
}

void *sub_1007D5AC8(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x666666666666667)
    {
      sub_100733198(result, a2);
    }

    sub_1000CE3D4();
  }

  return result;
}

void sub_1007D5B90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1007D5C94(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007D5BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v12 = 0;
  v13 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v5 = a2;
    v6 = 0;
    do
    {
      v7 = a4 + v6;
      v8 = (a2 + v6);
      *v7 = 0;
      *(v7 + 24) = 0;
      if (*(a2 + v6 + 24) == 1)
      {
        v9 = *v8;
        *(v7 + 16) = *(v8 + 2);
        *v7 = v9;
        *(v8 + 1) = 0;
        *(v8 + 2) = 0;
        *v8 = 0;
        *(v7 + 24) = 1;
      }

      *(v7 + 32) = *(v8 + 4);
      v6 += 40;
    }

    while (a2 + v6 != a3);
    v14 = a4 + v6;
    LOBYTE(v12) = 1;
    while (v5 != a3)
    {
      if (*(v5 + 24) == 1 && *(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 40;
    }
  }

  return sub_100733298(v11);
}

uint64_t sub_1007D5C94(uint64_t a1)
{
  sub_1007D5CCC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1007D5CCC(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 5;
      *(a1 + 16) = v2 - 5;
      if (*(v2 - 16) == 1 && *(v2 - 17) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t sub_1007D5D34(uint64_t *a1, __int128 *a2)
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

  v18 = a1;
  if (v6)
  {
    sub_100733198(a1, v6);
  }

  v7 = 40 * v2;
  v15 = 0;
  v16 = v7;
  v17 = 0uLL;
  *v7 = 0;
  *(v7 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    v8 = *a2;
    *(40 * v2 + 0x10) = *(a2 + 2);
    *v7 = v8;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(40 * v2 + 0x18) = 1;
  }

  *(40 * v2 + 0x20) = *(a2 + 4);
  *&v17 = v7 + 40;
  v9 = a1[1];
  v10 = v7 + *a1 - v9;
  sub_1007D5BA4(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_1007D5C94(&v15);
  return v14;
}

void sub_1007D5E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1007D5C94(va);
  _Unwind_Resume(a1);
}

void *sub_1007D5E90(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x666666666666667)
    {
      sub_100733A00(result, a2);
    }

    sub_1000CE3D4();
  }

  return result;
}

void sub_1007D5F58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1007D5C94(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007D5F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v12 = 0;
  v13 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v5 = a2;
    v6 = 0;
    do
    {
      v7 = a4 + v6;
      v8 = (a2 + v6);
      *v7 = 0;
      *(v7 + 24) = 0;
      if (*(a2 + v6 + 24) == 1)
      {
        v9 = *v8;
        *(v7 + 16) = *(v8 + 2);
        *v7 = v9;
        *(v8 + 1) = 0;
        *(v8 + 2) = 0;
        *v8 = 0;
        *(v7 + 24) = 1;
      }

      *(v7 + 32) = *(v8 + 8);
      v6 += 40;
    }

    while (a2 + v6 != a3);
    v14 = a4 + v6;
    LOBYTE(v12) = 1;
    while (v5 != a3)
    {
      if (*(v5 + 24) == 1 && *(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 40;
    }
  }

  return sub_100733B00(v11);
}

uint64_t sub_1007D605C(uint64_t *a1, __int128 *a2)
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

  v18 = a1;
  if (v6)
  {
    sub_100733A00(a1, v6);
  }

  v7 = 40 * v2;
  v15 = 0;
  v16 = v7;
  v17 = 0uLL;
  *v7 = 0;
  *(v7 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    v8 = *a2;
    *(40 * v2 + 0x10) = *(a2 + 2);
    *v7 = v8;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(40 * v2 + 0x18) = 1;
  }

  *(40 * v2 + 0x20) = *(a2 + 8);
  *&v17 = v7 + 40;
  v9 = a1[1];
  v10 = v7 + *a1 - v9;
  sub_1007D5F6C(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_1007D5C94(&v15);
  return v14;
}

void sub_1007D61A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1007D5C94(va);
  _Unwind_Resume(a1);
}

void *sub_1007D61B8(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x333333333333334)
    {
      sub_100733524(result, a2);
    }

    sub_1000CE3D4();
  }

  return result;
}

void sub_1007D6280(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1007D641C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007D6294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 == a3)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v8 = a2 + 8;
    do
    {
      *v4 = *(v8 - 8);
      sub_1007D6378((v4 + 8), v8);
      *(v4 + 72) = *(v8 + 64);
      v4 = v14 + 80;
      v14 += 80;
      v9 = v8 + 72;
      v8 += 80;
    }

    while (v9 != a3);
    LOBYTE(v12) = 1;
    while (v6 != a3)
    {
      sub_1007D4F8C(a1, v6);
      v6 += 80;
    }
  }

  return sub_1007337B0(v11);
}

_BYTE *sub_1007D6378(_BYTE *a1, __int128 *a2)
{
  *a1 = 0;
  a1[56] = 0;
  sub_1007D63AC(a1, a2);
  return a1;
}

uint64_t sub_1007D63AC(uint64_t result, __int128 *a2)
{
  if (*(a2 + 56) == 1)
  {
    v2 = *a2;
    *(result + 16) = *(a2 + 2);
    *result = v2;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(result + 24) = 0;
    *(result + 48) = 0;
    if (*(a2 + 48) == 1)
    {
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 40) = 0;
      *(result + 24) = *(a2 + 24);
      *(result + 40) = *(a2 + 5);
      *(a2 + 3) = 0;
      *(a2 + 4) = 0;
      *(a2 + 5) = 0;
      *(result + 48) = 1;
    }

    *(result + 56) = 1;
  }

  return result;
}

uint64_t sub_1007D641C(uint64_t a1)
{
  sub_1007D6454(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1007D6454(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 80;
    sub_1007D4F8C(v5, v4 - 80);
  }
}

uint64_t sub_1007D649C(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    sub_1000CE3D4();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    sub_100733524(a1, v6);
  }

  v7 = 80 * v2;
  v14 = 0;
  v15 = v7;
  *(&v16 + 1) = 0;
  *v7 = *a2;
  sub_1007D6378((v7 + 8), (a2 + 8));
  *(v7 + 72) = *(a2 + 72);
  *&v16 = v7 + 80;
  v8 = a1[1];
  v9 = v7 + *a1 - v8;
  sub_1007D6294(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_1007D641C(&v14);
  return v13;
}

void sub_1007D65C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1007D641C(va);
  _Unwind_Resume(a1);
}

void *sub_1007D65D8(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      sub_1001904B4(result, a2);
    }

    sub_1000CE3D4();
  }

  return result;
}

void sub_1007D6674(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001C7794(va);
  _Unwind_Resume(a1);
}

void *sub_1007D6688(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      sub_1001904B4(result, a2);
    }

    sub_1000CE3D4();
  }

  return result;
}

void sub_1007D6724(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001C7794(va);
  _Unwind_Resume(a1);
}

void *sub_1007D6738(void *result, unint64_t a2)
{
  if (0x34F72C234F72C235 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x11A7B9611A7B962)
    {
      sub_10018F920(result, a2);
    }

    sub_1000CE3D4();
  }

  return result;
}

void sub_1007D680C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1007D689C(va);
  _Unwind_Resume(a1);
}

void sub_1007D6820(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a4 + 8;
    v7 = a2;
    v8 = a2;
    do
    {
      v9 = *v8;
      v8 += 58;
      *(v6 - 8) = v9;
      v6 = sub_1007D5910(v6, (v7 + 2)) + 232;
      v7 = v8;
    }

    while (v8 != a3);
    while (v5 != a3)
    {
      sub_10018FAC8((v5 + 2));
      v5 += 58;
    }
  }
}

uint64_t sub_1007D689C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 232;
    sub_10018FAC8(i - 224);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1007D68F0(uint64_t a1, _DWORD *a2)
{
  v2 = 0x34F72C234F72C235 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x11A7B9611A7B961)
  {
    sub_1000CE3D4();
  }

  if (0x69EE58469EE5846ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x69EE58469EE5846ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x34F72C234F72C235 * ((*(a1 + 16) - *a1) >> 3)) >= 0x8D3DCB08D3DCB0)
  {
    v6 = 0x11A7B9611A7B961;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    sub_10018F920(a1, v6);
  }

  v7 = 232 * v2;
  v14 = 0;
  v15 = v7;
  *(&v16 + 1) = 0;
  *v7 = *a2;
  sub_1007D5910(v7 + 8, (a2 + 2));
  *&v16 = v7 + 232;
  v8 = *(a1 + 8);
  v9 = v7 + *a1 - v8;
  sub_1007D6820(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_1007D689C(&v14);
  return v13;
}

void sub_1007D6A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1007D689C(va);
  _Unwind_Resume(a1);
}

void *sub_1007D6A3C(void *result, unint64_t a2)
{
  if (0xEF7BDEF7BDEF7BDFLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x108421084210843)
    {
      sub_100191724(result, a2);
    }

    sub_1000CE3D4();
  }

  return result;
}

void sub_1007D6B10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1007D6C8C(va);
  _Unwind_Resume(a1);
}

void sub_1007D6B24(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a4 + 8;
    v7 = a2;
    v8 = a2;
    do
    {
      v9 = *v8;
      v8 += 62;
      *(v6 - 8) = v9;
      v6 = sub_1007D6BA0(v6, (v7 + 2)) + 248;
      v7 = v8;
    }

    while (v8 != a3);
    while (v5 != a3)
    {
      sub_1001918CC((v5 + 2));
      v5 += 62;
    }
  }
}

uint64_t sub_1007D6BA0(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 232) = -1;
  sub_1007D6BD8(a1, a2);
  return a1;
}

uint64_t sub_1007D6BD8(uint64_t a1, uint64_t a2)
{
  result = sub_1001918CC(a1);
  v5 = *(a2 + 232);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_101E7FED0[v5])(&v6, a2);
    *(a1 + 232) = v5;
  }

  return result;
}

uint64_t sub_1007D6C3C(_DWORD **a1, _DWORD *a2)
{
  v2 = *a1;
  *v2 = *a2;
  return sub_1007D5910((v2 + 2), (a2 + 2));
}

__n128 sub_1007D6C4C(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  *(v2 + 16) = *(a2 + 2);
  *v2 = v3;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  result = *(a2 + 24);
  *(v2 + 24) = result;
  *(v2 + 40) = *(a2 + 5);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  return result;
}

uint64_t sub_1007D6C8C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 248;
    sub_1001918CC(i - 240);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1007D6CE0(uint64_t a1, _DWORD *a2)
{
  v2 = 0xEF7BDEF7BDEF7BDFLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x108421084210842)
  {
    sub_1000CE3D4();
  }

  if (0xDEF7BDEF7BDEF7BELL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xDEF7BDEF7BDEF7BELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xEF7BDEF7BDEF7BDFLL * ((*(a1 + 16) - *a1) >> 3) >= 0x84210842108421)
  {
    v6 = 0x108421084210842;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    sub_100191724(a1, v6);
  }

  v7 = 248 * v2;
  v14 = 0;
  v15 = v7;
  *(&v16 + 1) = 0;
  *v7 = *a2;
  sub_1007D6BA0(v7 + 8, (a2 + 2));
  *&v16 = v7 + 248;
  v8 = *(a1 + 8);
  v9 = v7 + *a1 - v8;
  sub_1007D6B24(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_1007D6C8C(&v14);
  return v13;
}

void sub_1007D6E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1007D6C8C(va);
  _Unwind_Resume(a1);
}

void *sub_1007D6E2C(void *result, unint64_t a2)
{
  if (0xEF7BDEF7BDEF7BDFLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x108421084210843)
    {
      sub_100191724(result, a2);
    }

    sub_1000CE3D4();
  }

  return result;
}

void sub_1007D6F00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1007D702C(va);
  _Unwind_Resume(a1);
}

void sub_1007D6F14(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a4 + 8;
    v7 = a2;
    v8 = a2;
    do
    {
      v9 = *v8;
      v8 += 62;
      *(v6 - 8) = v9;
      v6 = sub_1007D6F90(v6, (v7 + 2)) + 248;
      v7 = v8;
    }

    while (v8 != a3);
    while (v5 != a3)
    {
      sub_100191D80((v5 + 2));
      v5 += 62;
    }
  }
}

uint64_t sub_1007D6F90(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 232) = -1;
  sub_1007D6FC8(a1, a2);
  return a1;
}

uint64_t sub_1007D6FC8(uint64_t a1, uint64_t a2)
{
  result = sub_100191D80(a1);
  v5 = *(a2 + 232);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_101E7FEE0[v5])(&v6, a2);
    *(a1 + 232) = v5;
  }

  return result;
}

uint64_t sub_1007D702C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 248;
    sub_100191D80(i - 240);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1007D7080(uint64_t a1, _DWORD *a2)
{
  v2 = 0xEF7BDEF7BDEF7BDFLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x108421084210842)
  {
    sub_1000CE3D4();
  }

  if (0xDEF7BDEF7BDEF7BELL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xDEF7BDEF7BDEF7BELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xEF7BDEF7BDEF7BDFLL * ((*(a1 + 16) - *a1) >> 3) >= 0x84210842108421)
  {
    v6 = 0x108421084210842;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    sub_100191724(a1, v6);
  }

  v7 = 248 * v2;
  v14 = 0;
  v15 = v7;
  *(&v16 + 1) = 0;
  *v7 = *a2;
  sub_1007D6F90(v7 + 8, (a2 + 2));
  *&v16 = v7 + 248;
  v8 = *(a1 + 8);
  v9 = v7 + *a1 - v8;
  sub_1007D6F14(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_1007D702C(&v14);
  return v13;
}

void sub_1007D71B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1007D702C(va);
  _Unwind_Resume(a1);
}

void *sub_1007D71CC(void *result, unint64_t a2)
{
  if (0x34F72C234F72C235 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x11A7B9611A7B962)
    {
      sub_10018F920(result, a2);
    }

    sub_1000CE3D4();
  }

  return result;
}

void sub_1007D72A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1007D689C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007D72B4(uint64_t a1, _DWORD *a2)
{
  v2 = 0x34F72C234F72C235 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x11A7B9611A7B961)
  {
    sub_1000CE3D4();
  }

  if (0x69EE58469EE5846ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x69EE58469EE5846ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x34F72C234F72C235 * ((*(a1 + 16) - *a1) >> 3)) >= 0x8D3DCB08D3DCB0)
  {
    v6 = 0x11A7B9611A7B961;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    sub_10018F920(a1, v6);
  }

  v7 = 232 * v2;
  v14 = 0;
  v15 = v7;
  *(&v16 + 1) = 0;
  *v7 = *a2;
  sub_1007D5910(v7 + 8, (a2 + 2));
  *&v16 = v7 + 232;
  v8 = *(a1 + 8);
  v9 = v7 + *a1 - v8;
  sub_1007D6820(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_1007D689C(&v14);
  return v13;
}

void sub_1007D73EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1007D689C(va);
  _Unwind_Resume(a1);
}

void *sub_1007D7400(void *result, unint64_t a2)
{
  if (0xAF8AF8AF8AF8AF8BLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xEA0EA0EA0EA0EBLL)
    {
      sub_100191448(result, a2);
    }

    sub_1000CE3D4();
  }

  return result;
}

void sub_1007D74D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1007D78FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007D74E8(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      sub_1007D75B4(a1, a4, v7);
      v7 = (v7 + 280);
      a4 = v12 + 280;
      v12 += 280;
    }

    while (v7 != a3);
    LOBYTE(v10) = 1;
    while (v5 != a3)
    {
      sub_1007D7774(a1, v5);
      v5 += 280;
    }
  }

  return sub_1007D7870(v9);
}

__n128 sub_1007D75B4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *a2 = 0;
  *(a2 + 176) = 0;
  if (*(a3 + 176) == 1)
  {
    v3 = *a3;
    *(a2 + 16) = *(a3 + 2);
    *a2 = v3;
    *(a3 + 1) = 0;
    *(a3 + 2) = 0;
    *a3 = 0;
    v4 = *(a3 + 24);
    *(a2 + 40) = *(a3 + 5);
    *(a2 + 24) = v4;
    *(a3 + 4) = 0;
    *(a3 + 5) = 0;
    *(a3 + 3) = 0;
    v5 = *(a3 + 6);
    *(a2 + 56) = 0;
    *(a2 + 48) = v5;
    *(a2 + 80) = 0;
    if (*(a3 + 80) == 1)
    {
      v6 = *(a3 + 56);
      *(a2 + 72) = *(a3 + 9);
      *(a2 + 56) = v6;
      *(a3 + 8) = 0;
      *(a3 + 9) = 0;
      *(a3 + 7) = 0;
      *(a2 + 80) = 1;
    }

    *(a2 + 88) = 0;
    *(a2 + 112) = 0;
    if (*(a3 + 112) == 1)
    {
      v7 = *(a3 + 88);
      *(a2 + 104) = *(a3 + 13);
      *(a2 + 88) = v7;
      *(a3 + 12) = 0;
      *(a3 + 13) = 0;
      *(a3 + 11) = 0;
      *(a2 + 112) = 1;
    }

    result = *(a3 + 120);
    v9 = *(a3 + 34);
    *(a2 + 144) = 0;
    *(a2 + 136) = v9;
    *(a2 + 120) = result;
    *(a2 + 168) = 0;
    if (*(a3 + 168) == 1)
    {
      result = a3[9];
      *(a2 + 160) = *(a3 + 20);
      *(a2 + 144) = result;
      *(a3 + 19) = 0;
      *(a3 + 20) = 0;
      *(a3 + 18) = 0;
      *(a2 + 168) = 1;
    }

    *(a2 + 176) = 1;
  }

  *(a2 + 184) = 0;
  *(a2 + 208) = 0;
  if (*(a3 + 208) == 1)
  {
    result = *(a3 + 184);
    *(a2 + 200) = *(a3 + 25);
    *(a2 + 184) = result;
    *(a3 + 24) = 0;
    *(a3 + 25) = 0;
    *(a3 + 23) = 0;
    *(a2 + 208) = 1;
  }

  *(a2 + 216) = 0;
  *(a2 + 240) = 0;
  if (*(a3 + 240) == 1)
  {
    result = *(a3 + 216);
    *(a2 + 232) = *(a3 + 29);
    *(a2 + 216) = result;
    *(a3 + 28) = 0;
    *(a3 + 29) = 0;
    *(a3 + 27) = 0;
    *(a2 + 240) = 1;
  }

  *(a2 + 248) = 0;
  *(a2 + 272) = 0;
  if (*(a3 + 272) == 1)
  {
    *(a2 + 248) = 0;
    *(a2 + 256) = 0;
    *(a2 + 264) = 0;
    result = *(a3 + 248);
    *(a2 + 248) = result;
    *(a2 + 264) = *(a3 + 33);
    *(a3 + 31) = 0;
    *(a3 + 32) = 0;
    *(a3 + 33) = 0;
    *(a2 + 272) = 1;
  }

  return result;
}

void sub_1007D7774(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 272) == 1)
  {
    v3 = (a2 + 248);
    sub_10019029C(&v3);
  }

  if (*(a2 + 240) == 1 && *(a2 + 239) < 0)
  {
    operator delete(*(a2 + 216));
  }

  if (*(a2 + 208) == 1 && *(a2 + 207) < 0)
  {
    operator delete(*(a2 + 184));
  }

  if (*(a2 + 176) == 1)
  {
    if (*(a2 + 168) == 1 && *(a2 + 167) < 0)
    {
      operator delete(*(a2 + 144));
    }

    if (*(a2 + 112) == 1 && *(a2 + 111) < 0)
    {
      operator delete(*(a2 + 88));
    }

    if (*(a2 + 80) == 1 && *(a2 + 79) < 0)
    {
      operator delete(*(a2 + 56));
    }

    if (*(a2 + 47) < 0)
    {
      operator delete(*(a2 + 24));
    }

    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }
  }
}

uint64_t sub_1007D7870(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1007D78A8(a1);
  }

  return a1;
}

void sub_1007D78A8(uint64_t *a1)
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
      v3 -= 280;
      sub_1007D7774(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_1007D78FC(uint64_t a1)
{
  sub_1007D7934(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1007D7934(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 280;
    sub_1007D7774(v5, v4 - 280);
  }
}

uint64_t sub_1007D797C(uint64_t a1, __int128 *a2)
{
  v2 = 0xAF8AF8AF8AF8AF8BLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xEA0EA0EA0EA0EALL)
  {
    sub_1000CE3D4();
  }

  if (0x5F15F15F15F15F16 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5F15F15F15F15F16 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAF8AF8AF8AF8AF8BLL * ((*(a1 + 16) - *a1) >> 3) >= 0x75075075075075)
  {
    v6 = 0xEA0EA0EA0EA0EALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_100191448(a1, v6);
  }

  v13 = 0;
  v14 = 280 * v2;
  sub_1007D75B4(a1, 280 * v2, a2);
  v15 = 280 * v2 + 280;
  v7 = *(a1 + 8);
  v8 = 280 * v2 + *a1 - v7;
  sub_1007D74E8(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1007D78FC(&v13);
  return v12;
}

void sub_1007D7AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1007D78FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007D7AC8(uint64_t a1)
{
  if (*(a1 + 272) == 1)
  {
    v3 = (a1 + 248);
    sub_10019029C(&v3);
  }

  if (*(a1 + 240) == 1 && *(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  if (*(a1 + 208) == 1 && *(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  return sub_100191184(a1);
}

void *sub_1007D7B4C(void *result)
{
  *result = off_101E7FF00;
  result[1] = 0;
  return result;
}

void sub_1007D7B6C(void ***a1)
{
  *a1 = off_101E7FF00;
  sub_100140928(a1 + 1, 0);

  PB::Base::~Base(a1);
}

void sub_1007D7BC4(void ***a1)
{
  *a1 = off_101E7FF00;
  sub_100140928(a1 + 1, 0);
  PB::Base::~Base(a1);

  operator delete();
}

void *sub_1007D7C30(void *result, uint64_t a2)
{
  *result = off_101E7FF00;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_1007D7CDC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    PB::TextFormatter::format(this, "csn", v5);
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1007D7D38(int a1, PB::Reader *this)
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
            goto LABEL_29;
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

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

      if (!PB::Reader::skip(this, v9 >> 3, v9 & 7, 0))
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_29:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t sub_1007D7EF8(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::write(this, v2, 1u);
  }

  return result;
}

void *sub_1007D7F14(void *result)
{
  result[1] = 0;
  result[2] = 0;
  *result = off_101E7FF50;
  return result;
}

void sub_1007D7F38(uint64_t a1)
{
  *a1 = off_101E7FF50;
  v4 = *(a1 + 16);
  v2 = (a1 + 16);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_100140988(v2, v3);
  }

  sub_100140928((a1 + 8), 0);

  PB::Base::~Base(a1);
}

void sub_1007D7FA8(uint64_t a1)
{
  sub_1007D7F38(a1);

  operator delete();
}

void *sub_1007D7FE0(void *result, uint64_t a2)
{
  *result = off_101E7FF50;
  result[1] = 0;
  result[2] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  return result;
}

uint64_t sub_1007D8100(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    PB::TextFormatter::format(this, "csn", v5);
  }

  if (*(a1 + 16))
  {
    PB::TextFormatter::format();
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1007D8174(int a1, PB::Reader *this)
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
            goto LABEL_31;
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
      if ((v9 >> 3) == 2)
      {
        operator new();
      }

      if (v21 == 1)
      {
        operator new();
      }

      if (!PB::Reader::skip(this, v21, v9 & 7, 0))
      {
        v22 = 0;
        return v22 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_31:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t sub_1007D839C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4)
  {
    result = PB::Writer::write(this, v4, 1u);
  }

  if (*(v3 + 16))
  {

    return PB::Writer::write();
  }

  return result;
}

uint64_t sub_1007D8400(uint64_t result)
{
  *result = off_101E7FFA0;
  *(result + 8) = 0;
  *(result + 24) = 0;
  return result;
}

void sub_1007D8424(void ***a1)
{
  *a1 = off_101E7FFA0;
  sub_100140928(a1 + 1, 0);

  PB::Base::~Base(a1);
}

void sub_1007D847C(void ***a1)
{
  *a1 = off_101E7FFA0;
  sub_100140928(a1 + 1, 0);
  PB::Base::~Base(a1);

  operator delete();
}

uint64_t sub_1007D84E8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    PB::TextFormatter::format(this, "csn", v5);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    PB::TextFormatter::format(this, "error", *(a1 + 16));
    v6 = *(a1 + 24);
  }

  if ((v6 & 2) != 0)
  {
    PB::TextFormatter::format(this, "result", *(a1 + 20));
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1007D857C(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_55;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(a1 + 24) |= 1u;
        v28 = *(this + 1);
        v27 = *(this + 2);
        v29 = *this;
        if (v28 > 0xFFFFFFFFFFFFFFF5 || v28 + 10 > v27)
        {
          v36 = 0;
          v37 = 0;
          v32 = 0;
          v17 = v27 >= v28;
          v38 = v27 - v28;
          if (!v17)
          {
            v38 = 0;
          }

          v39 = (v29 + v28);
          v40 = v28 + 1;
          while (1)
          {
            if (!v38)
            {
              LODWORD(v32) = 0;
              *(this + 24) = 1;
              goto LABEL_50;
            }

            v41 = *v39;
            *(this + 1) = v40;
            v32 |= (v41 & 0x7F) << v36;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            --v38;
            ++v39;
            ++v40;
            v14 = v37++ > 8;
            if (v14)
            {
LABEL_46:
              LODWORD(v32) = 0;
              goto LABEL_50;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v32) = 0;
          }
        }

        else
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = (v29 + v28);
          v34 = v28 + 1;
          while (1)
          {
            *(this + 1) = v34;
            v35 = *v33++;
            v32 |= (v35 & 0x7F) << v30;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            ++v34;
            v14 = v31++ > 8;
            if (v14)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_50:
        *(a1 + 16) = v32;
      }

      else if (v22 == 2)
      {
        *(a1 + 24) |= 2u;
        v23 = *(this + 1);
        if (v23 >= *(this + 2))
        {
          v26 = 0;
          *(this + 24) = 1;
        }

        else
        {
          v24 = v23 + 1;
          v25 = *(*this + v23);
          *(this + 1) = v24;
          v26 = v25 != 0;
        }

        *(a1 + 20) = v26;
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

        if (!PB::Reader::skip(this, v22, v10 & 7, 0))
        {
          v43 = 0;
          return v43 & 1;
        }
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_55:
  v43 = v4 ^ 1;
  return v43 & 1;
}

uint64_t sub_1007D8884(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4)
  {
    result = PB::Writer::write(this, v4, 1u);
  }

  v5 = *(v3 + 24);
  if ((v5 & 2) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 20), 2u);
    v5 = *(v3 + 24);
  }

  if (v5)
  {
    v6 = *(v3 + 16);

    return PB::Writer::writeVarInt(this, v6, 3u);
  }

  return result;
}

uint64_t LazuliProvisioningWebHelper::LazuliProvisioningWebHelper(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  ctu::OsLogContext::OsLogContext(&v22, kCtLoggingSystemName, "lazuli.prov.web");
  sub_1001303E4((a1 + 8), v4, &v22);
  ctu::OsLogContext::~OsLogContext(&v22);
  v23[0] = off_101E2B528;
  v23[1] = sub_1007D8D94;
  v23[3] = v23;
  sub_1007D8DC0((a1 + 48));
  sub_1000A8744(v23);
  *a1 = &off_101E7FFF0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 81) = 0u;
  *(a1 + 100) = *a2;
  v5 = *(a2 + 8);
  *(a1 + 104) = v5;
  v6 = *(a2 + 16);
  *(a1 + 112) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v5 = *(a1 + 104);
  }

  ServiceMap = Registry::getServiceMap(v5);
  v8 = ServiceMap;
  if (v9 < 0)
  {
    v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v11 = 5381;
    do
    {
      v9 = v11;
      v12 = *v10++;
      v11 = (33 * v11) ^ v12;
    }

    while (v12);
  }

  std::mutex::lock(ServiceMap);
  v22.var0 = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &v22);
  if (v13)
  {
    v15 = v13[3];
    v14 = v13[4];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  std::mutex::unlock(v8);
  *(a1 + 120) = v15;
  *(a1 + 128) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v14);
  }

  v16 = *(a2 + 48);
  if (*(v16 + 23) < 0)
  {
    sub_100005F2C((a1 + 136), *v16, *(v16 + 1));
  }

  else
  {
    v17 = *v16;
    *(a1 + 152) = *(v16 + 2);
    *(a1 + 136) = v17;
  }

  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  sub_1000DF684(a1 + 184, 0, 0);
  *(a1 + 248) = 0u;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 328) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 289) = 0u;
  *(a1 + 336) = *(a2 + 32);
  v18 = *(a2 + 40);
  *(a1 + 344) = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 16), 1uLL, memory_order_relaxed);
  }

  sub_10006F264(a1 + 352, (a2 + 56));
  *(a1 + 384) = *(a2 + 88);
  sub_10006F264(a1 + 392, (a2 + 136));
  v19 = *(a2 + 168);
  *(a1 + 424) = v19;
  v20 = *(a2 + 176);
  *(a1 + 432) = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
    v19 = *(a1 + 424);
  }

  if (!v19)
  {
    __TUAssertTrigger();
  }

  return a1;
}

void sub_1007D8BC0(_Unwind_Exception *a1)
{
  v6 = *(v1 + 432);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (*(v1 + 416) == 1 && *(v1 + 415) < 0)
  {
    operator delete(*(v1 + 392));
  }

  if (*(v1 + 376) == 1 && *(v1 + 375) < 0)
  {
    operator delete(*(v1 + 352));
  }

  v7 = *(v1 + 344);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  if (*(v1 + 328) == 1 && *(v1 + 327) < 0)
  {
    operator delete(*(v1 + 304));
  }

  v8 = v2 - 24;
  if (*(v1 + 303) < 0)
  {
    operator delete(*(v1 + 280));
  }

  if (*(v1 + 279) < 0)
  {
    operator delete(*(v1 + 256));
  }

  sub_100416C34(v8);
  v9 = *(v1 + 216);
  if (v9)
  {
    sub_100004A34(v9);
  }

  sub_1000DD0AC((v3 + 3), *(v1 + 192));
  if (*(v1 + 183) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 159) < 0)
  {
    operator delete(*(v1 + 136));
  }

  v10 = *(v1 + 128);
  if (v10)
  {
    sub_100004A34(v10);
  }

  v11 = *(v1 + 112);
  if (v11)
  {
    sub_100004A34(v11);
  }

  v12 = *(v1 + 80);
  *(v1 + 80) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  if (*(v1 + 79) < 0)
  {
    operator delete(*v4);
  }

  v13 = *(v1 + 48);
  *(v1 + 48) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  ctu::OsLogLogger::~OsLogLogger((v1 + 40));
  sub_1000C0544((v1 + 8));
  _Unwind_Resume(a1);
}

const char *sub_1007D8D94(int a1)
{
  v1 = "lazuli.prov.mdl";
  if (a1 == 2)
  {
    v1 = "lazuli.prov.web.2";
  }

  if (a1 == 1)
  {
    return "lazuli.prov.web.1";
  }

  else
  {
    return v1;
  }
}

capabilities::ct *sub_1007D8DC0(capabilities::ct *a1)
{
  *a1 = 0;
  if ((capabilities::ct::supportsGemini(a1) & 1) == 0)
  {
    operator new();
  }

  if (!*a1)
  {
    operator new();
  }

  return a1;
}

void sub_1007D8F18(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_1000A8744(va);
  operator delete();
}

void LazuliProvisioningWebHelper::~LazuliProvisioningWebHelper(LazuliProvisioningWebHelper *this)
{
  *this = &off_101E7FFF0;
  v2 = *(this + 54);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(this + 416) == 1 && *(this + 415) < 0)
  {
    operator delete(*(this + 49));
  }

  if (*(this + 376) == 1 && *(this + 375) < 0)
  {
    operator delete(*(this + 44));
  }

  v3 = *(this + 43);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  if (*(this + 328) == 1 && *(this + 327) < 0)
  {
    operator delete(*(this + 38));
  }

  if (*(this + 303) < 0)
  {
    operator delete(*(this + 35));
  }

  if (*(this + 279) < 0)
  {
    operator delete(*(this + 32));
  }

  sub_100416C34(this + 224);
  v4 = *(this + 27);
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_1000DD0AC(this + 184, *(this + 24));
  if (*(this + 183) < 0)
  {
    operator delete(*(this + 20));
  }

  if (*(this + 159) < 0)
  {
    operator delete(*(this + 17));
  }

  v5 = *(this + 16);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(this + 14);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(this + 10);
  *(this + 10) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  v8 = *(this + 6);
  *(this + 6) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  ctu::OsLogLogger::~OsLogLogger((this + 40));
  sub_1000C0544(this + 1);
}

void *LazuliProvisioningWebHelper::getCurrentConfig(LazuliProvisioningWebHelper *this)
{
  v2 = *(this + 43);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 42);
      if (v5)
      {
        CurrentConfig = LazuliProvisioningServerWrapper::getCurrentConfig(v5);
        sub_100004A34(v4);
        return CurrentConfig;
      }

      sub_100004A34(v4);
    }
  }

  return GetDefaultLazuliProvisioningInitializer();
}

uint64_t LazuliProvisioningWebHelper::isPushEnabled(LazuliProvisioningWebHelper *this)
{
  v2 = *(this + 43);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(this + 42);
  if (v5)
  {
    isPushEnabled = LazuliProvisioningServerWrapper::isPushEnabled(v5);
  }

  else
  {
    isPushEnabled = 0;
  }

  sub_100004A34(v4);
  return isPushEnabled;
}

void LazuliProvisioningWebHelper::getHeaders(LazuliProvisioningWebHelper *this@<X0>, const unint64_t *a2@<X1>, void *a3@<X8>)
{
  a3[2] = 0;
  a3[1] = 0;
  *a3 = a3 + 1;
  CurrentConfig = LazuliProvisioningWebHelper::getCurrentConfig(this);
  v7 = CurrentConfig;
  size = HIBYTE(CurrentConfig[2].__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = CurrentConfig[2].__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v9 = *a2;
    if ((*a2 & 0x20) != 0)
    {
      sub_10000501C(&__str, "imei");
      __p.__r_.__value_.__r.__words[0] = &__str;
      v10 = sub_100416DA4(a3, &__str);
      std::string::operator=((v10 + 56), v7 + 1);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v9 = *a2;
    }

    if ((v9 & 0x40) != 0)
    {
      sub_10000501C(&__str, "imsi");
      __p.__r_.__value_.__r.__words[0] = &__str;
      v11 = sub_100416DA4(a3, &__str);
      std::string::operator=((v11 + 56), v7);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v9 = *a2;
    }

    if ((v9 & 0x200000) != 0)
    {
      sub_10000501C(&__str, "client_pushkey_upload");
      __p.__r_.__value_.__r.__words[0] = &__str;
      v12 = sub_100416DA4(a3, &__str);
      if (*(v12 + 79) < 0)
      {
        *(v12 + 64) = 13;
        v13 = *(v12 + 56);
      }

      else
      {
        v13 = (v12 + 56);
        *(v12 + 79) = 13;
      }

      strcpy(v13, "clientpushkey");
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v9 = *a2;
    }

    if (v9)
    {
      if ((*(this + 388) & 1) == 0)
      {
        sub_10000501C(&__str, "vers");
        __p.__r_.__value_.__r.__words[0] = &__str;
        v18 = sub_100416DA4(a3, &__str);
        if (*(v18 + 79) < 0)
        {
          *(v18 + 64) = 1;
          v19 = *(v18 + 56);
        }

        else
        {
          v19 = (v18 + 56);
          *(v18 + 79) = 1;
        }

        *v19 = 48;
LABEL_31:
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        goto LABEL_33;
      }

      std::to_string(&__str, *(this + 96));
      sub_10000501C(&__p, "vers");
      v137.__r_.__value_.__r.__words[0] = &__p;
      v16 = sub_100416DA4(a3, &__p);
      v17 = v16;
      if (*(v16 + 79) < 0)
      {
        operator delete(*(v16 + 56));
      }

      *(v17 + 56) = __str;
      *(&__str.__r_.__value_.__s + 23) = 0;
      __str.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        goto LABEL_31;
      }
    }

LABEL_33:
    v20 = *a2;
    if ((*a2 & 0x200) != 0)
    {
      if (*(this + 376) == 1)
      {
        if (*(this + 375) < 0)
        {
          sub_100005F2C(&__str, *(this + 44), *(this + 45));
        }

        else
        {
          __str = *(this + 352);
        }
      }

      else
      {
        sub_10000501C(&__str, "");
      }

      sub_10000501C(&__p, "token");
      v137.__r_.__value_.__r.__words[0] = &__p;
      v21 = sub_100416DA4(a3, &__p);
      std::string::operator=((v21 + 56), &__str);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v20 = *a2;
    }

    if ((v20 & 2) != 0)
    {
      sub_10000501C(&__str, "provisioning_version");
      __p.__r_.__value_.__r.__words[0] = &__str;
      v22 = sub_100416DA4(a3, &__str);
      if (*(v22 + 79) < 0)
      {
        *(v22 + 64) = 3;
        v23 = *(v22 + 56);
      }

      else
      {
        v23 = (v22 + 56);
        *(v22 + 79) = 3;
      }

      *v23 = 3157557;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v20 = *a2;
    }

    if ((v20 & 4) != 0)
    {
      sub_10000501C(&__str, "terminal_vendor");
      __p.__r_.__value_.__r.__words[0] = &__str;
      v24 = sub_100416DA4(a3, &__str);
      if (*(v24 + 79) < 0)
      {
        *(v24 + 64) = 4;
        v25 = *(v24 + 56);
      }

      else
      {
        v25 = (v24 + 56);
        *(v24 + 79) = 4;
      }

      strcpy(v25, "Appl");
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v20 = *a2;
    }

    if ((v20 & 8) != 0)
    {
      v26 = *(this + 14);
      v131[0] = *(this + 13);
      v131[1] = v26;
      if (v26)
      {
        atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
      }

      sub_1007DACD0(v131, &__str);
      sub_10000501C(&__p, "terminal_model");
      v137.__r_.__value_.__r.__words[0] = &__p;
      v27 = sub_100416DA4(a3, &__p);
      v28 = v27;
      if (*(v27 + 79) < 0)
      {
        operator delete(*(v27 + 56));
      }

      *(v28 + 56) = __str;
      *(&__str.__r_.__value_.__s + 23) = 0;
      __str.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }
      }

      if (v26)
      {
        sub_100004A34(v26);
      }

      v20 = *a2;
    }

    if ((v20 & 0x100000) != 0)
    {
      if (*(this + 79) < 0)
      {
        sub_100005F2C(&__dst, *(this + 7), *(this + 8));
      }

      else
      {
        __dst = *(this + 56);
      }

      sub_1007DAE84(&__dst, &__str);
      sub_10000501C(&__p, "participant_key_signed_nonce");
      v137.__r_.__value_.__r.__words[0] = &__p;
      v29 = sub_100416DA4(a3, &__p);
      v30 = v29;
      if (*(v29 + 79) < 0)
      {
        operator delete(*(v29 + 56));
      }

      *(v30 + 56) = __str;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      v20 = *a2;
    }

    if ((v20 & 0x10) == 0)
    {
      goto LABEL_195;
    }

    ServiceMap = Registry::getServiceMap(*(this + 13));
    v32 = ServiceMap;
    if ((v33 & 0x8000000000000000) != 0)
    {
      v34 = (v33 & 0x7FFFFFFFFFFFFFFFLL);
      v35 = 5381;
      do
      {
        v33 = v35;
        v36 = *v34++;
        v35 = (33 * v35) ^ v36;
      }

      while (v36);
    }

    std::mutex::lock(ServiceMap);
    __str.__r_.__value_.__r.__words[0] = v33;
    v37 = sub_100009510(&v32[1].__m_.__sig, &__str);
    if (!v37)
    {
      std::mutex::unlock(v32);
      goto LABEL_195;
    }

    v39 = v37[3];
    v38 = v37[4];
    if (v38)
    {
      atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v32);
      atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v38);
      if (!v39)
      {
LABEL_194:
        sub_100004A34(v38);
        goto LABEL_195;
      }
    }

    else
    {
      std::mutex::unlock(v32);
      if (!v39)
      {
        goto LABEL_195;
      }
    }

    memset(&__str, 0, sizeof(__str));
    (*(*v39 + 224))(&__str, v39);
    v40 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v40 = __str.__r_.__value_.__l.__size_;
    }

    if (!v40)
    {
      v47 = (*(**(this + 6) + 16))(*(this + 6), *(this + 25));
      if (os_log_type_enabled(*v47, OS_LOG_TYPE_ERROR))
      {
        v48 = (*(*this + 72))(this);
        sub_10177F300(v48, &v137);
      }

LABEL_191:
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (v38)
      {
        goto LABEL_194;
      }

LABEL_195:
      v83 = *a2;
      if ((*a2 & 0x100) != 0)
      {
        sub_10000501C(&__str, "app");
        __p.__r_.__value_.__r.__words[0] = &__str;
        v84 = sub_100416DA4(a3, &__str);
        sub_1000167D4((v84 + 56), "ap2001&app=ap2002&app=urn%3Aoma%3Amo%3Aext-3gpp-ims%3A1.0&app=urn%3Aoma%3Amo%3Aext-3gpp-nas-config%3A1.0", 0x68uLL);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v83 = *a2;
      }

      if ((v83 & 0x400) != 0)
      {
        sub_10000501C(&__str, "SMS_port");
        __p.__r_.__value_.__r.__words[0] = &__str;
        v85 = sub_100416DA4(a3, &__str);
        if (*(v85 + 79) < 0)
        {
          *(v85 + 64) = 5;
          v86 = *(v85 + 56);
        }

        else
        {
          v86 = (v85 + 56);
          *(v85 + 79) = 5;
        }

        strcpy(v86, "37273");
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v83 = *a2;
      }

      if ((v83 & 0x80) != 0)
      {
        sub_100A978EC(&v7[3], &__str);
        sub_10000501C(&__p, "msisdn");
        v129.__r_.__value_.__r.__words[0] = &__p;
        v87 = sub_100416DA4(a3, &__p);
        v88 = v87;
        if (*(v87 + 79) < 0)
        {
          operator delete(*(v87 + 56));
        }

        *(v88 + 56) = __str;
        *(&__str.__r_.__value_.__s + 23) = 0;
        __str.__r_.__value_.__s.__data_[0] = 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }
        }

        v83 = *a2;
      }

      if ((v83 & 0x40000) != 0)
      {
        sub_10000501C(&__str, "GID1");
        __p.__r_.__value_.__r.__words[0] = &__str;
        v89 = sub_100416DA4(a3, &__str);
        std::string::operator=((v89 + 56), v7 + 5);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v83 = *a2;
      }

      if ((v83 & 0x80000) != 0)
      {
        sub_10000501C(&__str, "GID2");
        __p.__r_.__value_.__r.__words[0] = &__str;
        v90 = sub_100416DA4(a3, &__str);
        std::string::operator=((v90 + 56), v7 + 6);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v83 = *a2;
      }

      if ((v83 & 0x800) == 0)
      {
        goto LABEL_233;
      }

      if (*(this + 388))
      {
        std::to_string(&__str, *(this + 96));
        sub_10000501C(&__p, "rcs_state");
        v129.__r_.__value_.__r.__words[0] = &__p;
        v91 = sub_100416DA4(a3, &__p);
        v92 = v91;
        if (*(v91 + 79) < 0)
        {
          operator delete(*(v91 + 56));
        }

        *(v92 + 56) = __str;
        *(&__str.__r_.__value_.__s + 23) = 0;
        __str.__r_.__value_.__s.__data_[0] = 0;
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_233;
        }

        operator delete(__p.__r_.__value_.__l.__data_);
      }

      else
      {
        sub_10000501C(&__str, "rcs_state");
        __p.__r_.__value_.__r.__words[0] = &__str;
        v93 = sub_100416DA4(a3, &__str);
        if (*(v93 + 79) < 0)
        {
          *(v93 + 64) = 1;
          v94 = *(v93 + 56);
        }

        else
        {
          v94 = (v93 + 56);
          *(v93 + 79) = 1;
        }

        *v94 = 48;
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

LABEL_233:
      v95 = *a2;
      if ((*a2 & 0x1000) != 0)
      {
        sub_10000501C(&__str, "client_vendor");
        __p.__r_.__value_.__r.__words[0] = &__str;
        v96 = sub_100416DA4(a3, &__str);
        if (*(v96 + 79) < 0)
        {
          *(v96 + 64) = 4;
          v97 = *(v96 + 56);
        }

        else
        {
          v97 = (v96 + 56);
          *(v96 + 79) = 4;
        }

        strcpy(v97, "Appl");
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v95 = *a2;
      }

      if ((v95 & 0x2000) != 0)
      {
        v98 = v7[8].__r_.__value_.__s.__data_[4];
        isPushEnabled = LazuliProvisioningWebHelper::isPushEnabled(this);
        v100 = "2.4";
        if (v98)
        {
          v100 = "3.0";
        }

        if (isPushEnabled)
        {
          v101 = "3.1";
        }

        else
        {
          v101 = v100;
        }

        sub_10000501C(&__str, "client_version");
        __p.__r_.__value_.__r.__words[0] = &__str;
        v102 = sub_100416DA4(a3, &__str);
        sub_100016890((v102 + 56), v101);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v95 = *a2;
      }

      if ((v95 & 0x4000) != 0)
      {
        v103 = v7[8].__r_.__value_.__s.__data_[4];
        v104 = LazuliProvisioningWebHelper::isPushEnabled(this);
        v105 = "UP_2.4";
        if (v103)
        {
          v105 = "UP_3.0";
        }

        if (v104)
        {
          v106 = "UP_3.1";
        }

        else
        {
          v106 = v105;
        }

        sub_10000501C(&__str, "rcs_profile");
        __p.__r_.__value_.__r.__words[0] = &__str;
        v107 = sub_100416DA4(a3, &__str);
        sub_100016890((v107 + 56), v106);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v95 = *a2;
      }

      if ((v95 & 0x8000) != 0)
      {
        sub_10000501C(&__str, "client_authenticity_support");
        __p.__r_.__value_.__r.__words[0] = &__str;
        v108 = sub_100416DA4(a3, &__str);
        if (*(v108 + 79) < 0)
        {
          *(v108 + 64) = 15;
          v109 = *(v108 + 56);
        }

        else
        {
          v109 = (v108 + 56);
          *(v108 + 79) = 15;
        }

        strcpy(v109, "apple-appattest");
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        *&__p.__r_.__value_.__l.__data_ = 0uLL;
        (*(**(this + 53) + 72))(&__p);
        if ((*(*__p.__r_.__value_.__l.__data_ + 24))(__p.__r_.__value_.__r.__words[0]))
        {
          sub_10000501C(&__str, "client_certificate_upload");
          v129.__r_.__value_.__r.__words[0] = &__str;
          v110 = sub_100416DA4(a3, &__str);
          if (*(v110 + 79) < 0)
          {
            *(v110 + 64) = 16;
            v111 = *(v110 + 56);
          }

          else
          {
            v111 = (v110 + 56);
            *(v110 + 79) = 16;
          }

          strcpy(v111, "applecertificate");
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }
        }

        if (__p.__r_.__value_.__l.__size_)
        {
          sub_100004A34(__p.__r_.__value_.__l.__size_);
        }

        v95 = *a2;
      }

      if ((v95 & 0x10000) != 0)
      {
        sub_10000501C(&__str, "config_client_vendor");
        __p.__r_.__value_.__r.__words[0] = &__str;
        v112 = sub_100416DA4(a3, &__str);
        if (*(v112 + 79) < 0)
        {
          *(v112 + 64) = 4;
          v113 = *(v112 + 56);
        }

        else
        {
          v113 = (v112 + 56);
          *(v112 + 79) = 4;
        }

        strcpy(v113, "Appl");
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v95 = *a2;
      }

      if ((v95 & 0x20000) != 0)
      {
        v114 = *(this + 14);
        v125[0] = *(this + 13);
        v125[1] = v114;
        if (v114)
        {
          atomic_fetch_add_explicit((v114 + 8), 1uLL, memory_order_relaxed);
        }

        sub_1007DACD0(v125, &__str);
        sub_10000501C(&__p, "config_client_version");
        v129.__r_.__value_.__r.__words[0] = &__p;
        v115 = sub_100416DA4(a3, &__p);
        v116 = v115;
        if (*(v115 + 79) < 0)
        {
          operator delete(*(v115 + 56));
        }

        *(v116 + 56) = __str;
        *(&__str.__r_.__value_.__s + 23) = 0;
        __str.__r_.__value_.__s.__data_[0] = 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }
        }

        if (v114)
        {
          sub_100004A34(v114);
        }
      }

      v117 = *(this + 43);
      if (v117)
      {
        v118 = std::__shared_weak_count::lock(v117);
        if (v118)
        {
          v119 = v118;
          if (*(this + 42) && *(this + 416) == 1)
          {
            if (*(this + 415) < 0)
            {
              sub_100005F2C(&v124, *(this + 49), *(this + 50));
            }

            else
            {
              v124 = *(this + 392);
            }

            sub_1007DAE84(&v124, &__str);
            sub_10000501C(&__p, "participant_public_key");
            v129.__r_.__value_.__r.__words[0] = &__p;
            v120 = sub_100416DA4(a3, &__p);
            v121 = v120;
            if (*(v120 + 79) < 0)
            {
              operator delete(*(v120 + 56));
            }

            *(v121 + 56) = __str;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v124.__r_.__value_.__l.__data_);
            }

            sub_10000501C(&__str, "home_kds");
            __p.__r_.__value_.__r.__words[0] = &__str;
            v122 = sub_100416DA4(a3, &__str);
            if (*(v122 + 79) < 0)
            {
              *(v122 + 64) = 1;
              v123 = *(v122 + 56);
            }

            else
            {
              v123 = (v122 + 56);
              *(v122 + 79) = 1;
            }

            *v123 = 49;
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }
          }

          sub_100004A34(v119);
        }
      }

      return;
    }

    memset(&__p, 0, sizeof(__p));
    sub_10000501C(&__p, "");
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v42 = __str.__r_.__value_.__l.__size_;
    }

    if (v42 >= 1)
    {
      v43 = p_str + v42;
      v44 = v42;
      v45 = p_str;
      do
      {
        v46 = memchr(v45, 46, v44);
        if (!v46)
        {
          break;
        }

        if (*v46 == 46)
        {
          if (v46 == v43 || v46 - p_str == -1)
          {
            break;
          }

          memset(&v137, 0, sizeof(v137));
          v49 = p_str;
          do
          {
            v50 = memchr(v49, 46, v42);
            if (!v50)
            {
              break;
            }

            if (*v50 == 46)
            {
              goto LABEL_114;
            }

            v49 = (v50 + 1);
            v42 = v43 - v49;
          }

          while (v43 - v49 > 0);
          v50 = v43;
LABEL_114:
          if (v50 == v43)
          {
            v51 = -1;
          }

          else
          {
            v51 = v50 - p_str;
          }

          v52 = std::string::basic_string(&v137, &__str, 0, v51, &v129);
          v53 = std::stoi(v52, 0, 10);
          memset(&v129, 0, sizeof(v129));
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v54 = &__str;
          }

          else
          {
            v54 = __str.__r_.__value_.__r.__words[0];
          }

          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v55 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v55 = __str.__r_.__value_.__l.__size_;
          }

          v56 = v54 + v55;
          if (v55 >= 1)
          {
            v57 = v54;
            do
            {
              v58 = memchr(v57, 46, v55);
              if (!v58)
              {
                break;
              }

              if (*v58 == 46)
              {
                goto LABEL_129;
              }

              v57 = (v58 + 1);
              v55 = v56 - v57;
            }

            while (v56 - v57 > 0);
          }

          v58 = v56;
LABEL_129:
          if (v58 == v56)
          {
            v59 = 0;
          }

          else
          {
            v59 = v58 - v54 + 1;
          }

          std::string::basic_string(&v129, &__str, v59, 0xFFFFFFFFFFFFFFFFLL, &v128);
          v60 = std::stoi(&v129, 0, 10);
          std::to_string(&v127, v53);
          v61 = std::string::append(&v127, ".", 1uLL);
          v62 = *&v61->__r_.__value_.__l.__data_;
          v128.__r_.__value_.__r.__words[2] = v61->__r_.__value_.__r.__words[2];
          *&v128.__r_.__value_.__l.__data_ = v62;
          v61->__r_.__value_.__l.__size_ = 0;
          v61->__r_.__value_.__r.__words[2] = 0;
          v61->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v126, v60);
          if ((v126.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v63 = &v126;
          }

          else
          {
            v63 = v126.__r_.__value_.__r.__words[0];
          }

          if ((v126.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v64 = HIBYTE(v126.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v64 = v126.__r_.__value_.__l.__size_;
          }

          v65 = std::string::append(&v128, v63, v64);
          v66 = v65->__r_.__value_.__r.__words[0];
          *v134 = v65->__r_.__value_.__l.__size_;
          *&v134[7] = *(&v65->__r_.__value_.__r.__words[1] + 7);
          v67 = HIBYTE(v65->__r_.__value_.__r.__words[2]);
          v65->__r_.__value_.__l.__size_ = 0;
          v65->__r_.__value_.__r.__words[2] = 0;
          v65->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p.__r_.__value_.__r.__words[0] = v66;
          __p.__r_.__value_.__l.__size_ = *v134;
          *(&__p.__r_.__value_.__r.__words[1] + 7) = *&v134[7];
          *(&__p.__r_.__value_.__s + 23) = v67;
          if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v126.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v128.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v127.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v129.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v137.__r_.__value_.__l.__data_);
          }

          goto LABEL_160;
        }

        v45 = (v46 + 1);
        v44 = v43 - v45;
      }

      while (v43 - v45 >= 1);
    }

    memset(&v137, 0, sizeof(v137));
    v68 = &v137;
    sub_1000677C4(&v137, v42 + 2);
    if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v68 = v137.__r_.__value_.__r.__words[0];
    }

    if (v42)
    {
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v69 = &__str;
      }

      else
      {
        v69 = __str.__r_.__value_.__r.__words[0];
      }

      memmove(v68, v69, v42);
    }

    strcpy(v68 + v42, ".0");
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v137;
LABEL_160:
    if ((*(*v39 + 64))(v39))
    {
      memset(&v137, 0, sizeof(v137));
      (*(*v39 + 216))(&v137, v39);
      memset(&v129, 0, sizeof(v129));
      std::string::basic_string(&v129, &v137, 3uLL, 0xFFFFFFFFFFFFFFFFLL, &v128);
      v70 = std::stoi(&v129, 0, 10);
      memset(&v128, 0, sizeof(v128));
      sub_10000501C(&v128, "0");
      if (v70 >= 1)
      {
        std::to_string(&v127, v70);
        if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v128.__r_.__value_.__l.__data_);
        }

        v128 = v127;
      }

      std::operator+<char>();
      v71 = std::string::append(&v126, "-", 1uLL);
      v72 = *&v71->__r_.__value_.__l.__data_;
      v127.__r_.__value_.__r.__words[2] = v71->__r_.__value_.__r.__words[2];
      *&v127.__r_.__value_.__l.__data_ = v72;
      v71->__r_.__value_.__l.__size_ = 0;
      v71->__r_.__value_.__r.__words[2] = 0;
      v71->__r_.__value_.__r.__words[0] = 0;
      if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v73 = &v128;
      }

      else
      {
        v73 = v128.__r_.__value_.__r.__words[0];
      }

      if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v74 = HIBYTE(v128.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v74 = v128.__r_.__value_.__l.__size_;
      }

      v75 = std::string::append(&v127, v73, v74);
      v76 = v75->__r_.__value_.__r.__words[0];
      v136[0] = v75->__r_.__value_.__l.__size_;
      *(v136 + 7) = *(&v75->__r_.__value_.__r.__words[1] + 7);
      v77 = HIBYTE(v75->__r_.__value_.__r.__words[2]);
      v75->__r_.__value_.__l.__size_ = 0;
      v75->__r_.__value_.__r.__words[2] = 0;
      v75->__r_.__value_.__r.__words[0] = 0;
      sub_10000501C(v134, "terminal_sw_version");
      v133 = v134;
      v78 = sub_100416DA4(a3, v134);
      v79 = v78;
      if (*(v78 + 79) < 0)
      {
        operator delete(*(v78 + 56));
      }

      v80 = v136[0];
      *(v79 + 56) = v76;
      *(v79 + 64) = v80;
      *(v79 + 71) = *(v136 + 7);
      *(v79 + 79) = v77;
      if (v135 < 0)
      {
        operator delete(*v134);
      }

      if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v127.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v126.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v128.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v129.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_187;
      }
    }

    else
    {
      (*(*v39 + 16))(v39);
      std::operator+<char>();
      sub_10000501C(&v129, "terminal_sw_version");
      v128.__r_.__value_.__r.__words[0] = &v129;
      v81 = sub_100416DA4(a3, &v129);
      v82 = v81;
      if (*(v81 + 79) < 0)
      {
        operator delete(*(v81 + 56));
      }

      *(v82 + 56) = v137;
      *(&v137.__r_.__value_.__s + 23) = 0;
      v137.__r_.__value_.__s.__data_[0] = 0;
      if ((SHIBYTE(v129.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_189;
      }
    }

    operator delete(v129.__r_.__value_.__l.__data_);
LABEL_187:
    if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v137.__r_.__value_.__l.__data_);
    }

LABEL_189:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_191;
  }

  v14 = (*(**(this + 6) + 16))(*(this + 6), *(this + 25));
  if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
  {
    v15 = (*(*this + 72))(this);
    sub_10177F350(v15, &__str);
  }
}

void sub_1007DA91C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (*(v58 - 137) < 0)
  {
    operator delete(*(v58 - 160));
  }

  if (a56 < 0)
  {
    operator delete(a51);
  }

  if (*(v58 - 105) < 0)
  {
    operator delete(*(v58 - 128));
  }

  if (v57)
  {
    sub_100004A34(v57);
  }

  sub_1000DD0AC(v56, *(v56 + 8));
  _Unwind_Resume(a1);
}

void sub_1007DACD0(Registry **a1@<X0>, uint64_t a2@<X8>)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v4 = ServiceMap;
  if (v5 < 0)
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
  __p[0] = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, __p);
  if (!v9)
  {
    v11 = 0;
LABEL_9:
    std::mutex::unlock(v4);
    v10 = 0;
    v12 = 1;
    if (!v11)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v11 = v9[3];
  v10 = v9[4];
  if (!v10)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v4);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v10);
  v12 = 0;
  if (!v11)
  {
LABEL_7:
    sub_10000501C(a2, "iPhone");
    goto LABEL_16;
  }

LABEL_10:
  __p[0] = 0;
  __p[1] = 0;
  v15 = 0;
  (*(*v11 + 256))(__p, v11);
  v13 = HIBYTE(v15);
  if (v15 < 0)
  {
    v13 = __p[1];
  }

  if (v13)
  {
    *a2 = *__p;
    *(a2 + 16) = v15;
  }

  else
  {
    sub_10000501C(a2, "iPhone");
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_16:
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }
}

void sub_1007DAE4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if ((v16 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1007DAE84@<Q0>(std::string *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = a1->__r_.__value_.__r.__words[0];
    size = a1->__r_.__value_.__l.__size_;
    if (!size)
    {
LABEL_3:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v5 = a1;
    size = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
    if (!*(&a1->__r_.__value_.__s + 23))
    {
      goto LABEL_3;
    }
  }

  do
  {
    if (v5->__r_.__value_.__s.__data_[0] == 43)
    {
      v5->__r_.__value_.__s.__data_[0] = 45;
    }

    v5 = (v5 + 1);
    --size;
  }

  while (size);
  LOBYTE(v4) = *(&a1->__r_.__value_.__s + 23);
  if ((v4 & 0x80) == 0)
  {
LABEL_4:
    v7 = v4;
    v8 = a1;
    if (!v4)
    {
      goto LABEL_5;
    }

    do
    {
LABEL_13:
      if (v8->__r_.__value_.__s.__data_[0] == 47)
      {
        v8->__r_.__value_.__s.__data_[0] = 95;
      }

      v8 = (v8 + 1);
      --v7;
    }

    while (v7);
    LOBYTE(v4) = *(&a1->__r_.__value_.__s + 23);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_12:
  v8 = a1->__r_.__value_.__r.__words[0];
  v7 = a1->__r_.__value_.__l.__size_;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  if ((v4 & 0x80) == 0)
  {
LABEL_6:
    v4 = v4;
    goto LABEL_18;
  }

LABEL_17:
  a1 = a1->__r_.__value_.__r.__words[0];
  v4 = v2->__r_.__value_.__l.__size_;
LABEL_18:
  v14 = 61;
  v9 = sub_1007DF8F4(a1, a1 + v4, &v14);
  v10 = SHIBYTE(v2->__r_.__value_.__r.__words[2]);
  if (v10 < 0)
  {
    v12 = v2->__r_.__value_.__r.__words[0];
    v11 = (v2->__r_.__value_.__r.__words[0] + v2->__r_.__value_.__l.__size_);
  }

  else
  {
    v11 = v2 + v10;
    v12 = v2;
  }

  std::string::erase(v2, v9 - v12, v11 - v9);
  result = *&v2->__r_.__value_.__l.__data_;
  *a2 = *&v2->__r_.__value_.__l.__data_;
  *(a2 + 16) = *(&v2->__r_.__value_.__l + 2);
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  return result;
}

void LazuliProvisioningWebHelper::retryLastRequest(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v4 = *(a1 + 344);
    if (v4)
    {
      v5 = std::__shared_weak_count::lock(v4);
      if (v5)
      {
        if (*(a1 + 336))
        {
          LazuliProvisioningServerWrapper::resetRetryTimer(*(a1 + 336));
          sub_100004AA0(&buf, (a1 + 8));
          v6 = *&buf_4[4];
          if (*&buf_4[4])
          {
            atomic_fetch_add_explicit((*&buf_4[4] + 16), 1uLL, memory_order_relaxed);
            sub_100004A34(v6);
          }

          v23 = 0;
          operator new();
        }

        sub_100004A34(v5);
      }
    }
  }

  else
  {
    v7 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if ((*(*a1 + 72))(a1))
      {
        v8 = "C";
      }

      else
      {
        v8 = "NC";
      }

      v9 = sub_100701D5C((a1 + 88));
      v10 = *(a1 + 200);
      buf = 136315650;
      *buf_4 = v8;
      *&buf_4[8] = 2080;
      *&buf_4[10] = v9;
      v27 = 2048;
      v28 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I [%s] Retrying last request now: %s, header-size: %zu", &buf, 0x20u);
    }

    if (*(a1 + 200))
    {
      v11 = *(a1 + 184);
      if (v11 != (a1 + 192))
      {
        do
        {
          v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = (*(*a1 + 72))(a1);
            v14 = v11 + 4;
            if (v13)
            {
              v15 = "C";
            }

            else
            {
              v15 = "NC";
            }

            if (*(v11 + 55) < 0)
            {
              v14 = *v14;
            }

            v16 = v11 + 7;
            if (*(v11 + 79) < 0)
            {
              v16 = *v16;
            }

            buf = 136315650;
            *buf_4 = v15;
            *&buf_4[8] = 2080;
            *&buf_4[10] = v14;
            v27 = 2080;
            v28 = v16;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I [%s] fHeaders = %s: %s", &buf, 0x20u);
          }

          v17 = v11[1];
          if (v17)
          {
            do
            {
              v18 = v17;
              v17 = *v17;
            }

            while (v17);
          }

          else
          {
            do
            {
              v18 = v11[2];
              v19 = *v18 == v11;
              v11 = v18;
            }

            while (!v19);
          }

          v11 = v18;
        }

        while (v18 != (a1 + 192));
      }
    }

    sub_1007DF9AC(v24, a1 + 224);
    sub_1007DF95C(&__p, (a1 + 304));
    LazuliProvisioningWebHelper::runWithTimeout(a1, a1 + 88, (a1 + 160));
    if (v22 == 1 && v21 < 0)
    {
      operator delete(__p);
    }

    sub_100416C34(v24);
  }
}

void sub_1007DB358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  sub_10002B644(&a19);
  sub_100004A34(v25);
  _Unwind_Resume(a1);
}

void LazuliProvisioningWebHelper::runWithTimeout(uint64_t a1, _DWORD *a2, std::string *__str, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a1 + 88) = *a2;
  std::string::operator=((a1 + 160), __str);
  if (a1 + 184 != a4)
  {
    sub_10078CA48((a1 + 184), *a4, (a4 + 8));
  }

  sub_1007DBE64((a1 + 224), a5);
  sub_10012BF3C((a1 + 304), a6);
  CurrentConfig = LazuliProvisioningWebHelper::getCurrentConfig(a1);
  v55[1] = 0;
  v56 = 0;
  ctu::Http::HttpRequest::create();
  v12 = *(a1 + 216);
  *(a1 + 208) = *buf;
  v13 = (a1 + 208);
  *buf = 0;
  *&buf[8] = 0;
  if (v12)
  {
    sub_100004A34(v12);
  }

  if (v56)
  {
    sub_100004A34(v56);
  }

  if (*v13)
  {
    sub_100A99478(*(a1 + 100), (a1 + 104), (a1 + 208));
    v14 = (a1 + 208);
    (*(**(a1 + 208) + 96))(*(a1 + 208), 120.0);
    (*(**v14 + 208))(*v14, 1);
    (*(**v14 + 8))(*v14, *(a1 + 24));
    (*(**v14 + 232))(*v14, 1);
    if (*(a6 + 24) == 1)
    {
      v15 = *(a6 + 23);
      if (v15 < 0)
      {
        v16 = *a6;
        v15 = *(a6 + 8);
      }

      else
      {
        v16 = a6;
      }

      memset(buf, 0, sizeof(buf));
      sub_1002853E4(buf, v16, v16 + v15, v15);
      (*(**v13 + 56))(*v13, buf);
      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }
    }

    v55[0] = 0;
    sub_100A99D70(a1 + 120, (a1 + 40), v55);
    if (v55[0])
    {
      v20 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = (*(*a1 + 72))(a1);
        Count = CFArrayGetCount(v55[0]);
        v23 = "NC";
        if (v21)
        {
          v23 = "C";
        }

        *buf = 136315394;
        *&buf[4] = v23;
        *&buf[12] = 2048;
        *&buf[14] = Count;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I [%s] Setting trust anchor certificates (%ld) from carrier bundle", buf, 0x16u);
      }

      (*(**v13 + 72))(*v13, v55[0]);
    }

    sub_100010250(v55);
    v25 = CurrentConfig[51];
    v24 = CurrentConfig + 51;
    if (sub_1004CE02C(v25))
    {
      (*(**v13 + 152))(*v13, kCTDataConnectionServiceTypeInternet);
    }

    sub_100004AA0(buf, (a1 + 8));
    v27 = *buf;
    v26 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(v26);
    }

    v28 = *(a1 + 208);
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 1174405120;
    v53[2] = sub_1007DBED8;
    v53[3] = &unk_101E80048;
    v53[4] = a1;
    v53[5] = v27;
    v54 = v26;
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v28 + 16))(v28, v53);
    v29 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = (*(*a1 + 72))(a1);
      v31 = sub_1004CDF60(v24);
      v32 = "NC";
      if (v30)
      {
        v32 = "C";
      }

      *buf = 136315394;
      *&buf[4] = v32;
      *&buf[12] = 2080;
      *&buf[14] = v31;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I [%s] Starting web request on: %s", buf, 0x16u);
    }

    v33 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
    v34 = *(a6 + 24);
    if (v34 == 1)
    {
      if (*(a6 + 23) < 0)
      {
        sub_100005F2C(buf, *a6, *(a6 + 8));
      }

      else
      {
        *buf = *a6;
        *&buf[16] = *(a6 + 16);
      }
    }

    else
    {
      memset(buf, 0, sizeof(buf));
    }

    sub_100A95200(v33, (a1 + 184), __str, v34, buf);
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    v35 = *v13;
    __p[1] = 0;
    v52 = 0;
    __p[0] = 0;
    (*(*v35 + 40))(v35, __p);
    if (SHIBYTE(v52) < 0)
    {
      operator delete(__p[0]);
    }

    v36 = *(a1 + 80);
    if (v36)
    {
      *(a1 + 80) = 0;
      (*(*v36 + 8))(v36);
    }

    *buf = 0;
    *&buf[8] = 0;
    Registry::getTimerService(buf, *(a1 + 104));
    v37 = *buf;
    if (*buf)
    {
      sub_10000501C(v49, "Operation timeout timer");
      v38 = *(a1 + 24);
      object = v38;
      if (v38)
      {
        dispatch_retain(v38);
      }

      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1174405120;
      aBlock[2] = sub_1007DC2A8;
      aBlock[3] = &unk_101E80078;
      aBlock[4] = a1;
      aBlock[5] = v27;
      v46 = v26;
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v47 = _Block_copy(aBlock);
      sub_100D23364(v37, v49, 0, 120000000, &object, &v47);
      v39 = v55[0];
      v55[0] = 0;
      v40 = *(a1 + 80);
      *(a1 + 80) = v39;
      if (v40)
      {
        (*(*v40 + 8))(v40);
        v41 = v55[0];
        v55[0] = 0;
        if (v41)
        {
          (*(*v41 + 8))(v41);
        }
      }

      if (v47)
      {
        _Block_release(v47);
      }

      if (object)
      {
        dispatch_release(object);
      }

      if (v50 < 0)
      {
        operator delete(v49[0]);
      }

      if (v46)
      {
        std::__shared_weak_count::__release_weak(v46);
      }
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (*(a1 + 80))
    {
      v42 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = (*(*a1 + 72))(a1);
        v44 = "NC";
        if (v43)
        {
          v44 = "C";
        }

        *buf = 136315394;
        *&buf[4] = v44;
        *&buf[12] = 2048;
        *&buf[14] = 120;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#I [%s] Operation timeout started for: %lld seconds", buf, 0x16u);
      }
    }

    if (v54)
    {
      std::__shared_weak_count::__release_weak(v54);
    }

    if (v26)
    {
      std::__shared_weak_count::__release_weak(v26);
    }
  }

  else
  {
    v17 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = (*(*a1 + 72))(a1);
      v19 = "NC";
      if (v18)
      {
        v19 = "C";
      }

      *buf = 136315138;
      *&buf[4] = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I [%s] Invalid web request", buf, 0xCu);
    }
  }
}

void sub_1007DBD3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *aBlock, dispatch_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::__shared_weak_count *a37)
{
  if (a37)
  {
    std::__shared_weak_count::__release_weak(a37);
  }

  if (v37)
  {
    std::__shared_weak_count::__release_weak(v37);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1007DBE64(void *a1, uint64_t a2)
{
  sub_1007DF9AC(v4, a2);
  sub_1007DFE54(v4, a1);
  sub_100416C34(v4);
  return a1;
}

void sub_1007DBED8(void *a1, uint64_t *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v8 = *a2;
        if (*a2)
        {
          v9 = *(v5 + 80);
          if (v9)
          {
            *(v5 + 80) = 0;
            (*(*v9 + 8))(v9);
            v8 = *a2;
          }

          *(v5 + 92) = (*(*v8 + 24))(v8);
          LazuliProvisioningWebHelper::handleHttpResponse(v5, a2);
        }

        else
        {
          v10 = *(*(**(v5 + 48) + 16))(*(v5 + 48), *(v5 + 100));
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = (*(*v5 + 72))(v5);
            v12 = "NC";
            if (v11)
            {
              v12 = "C";
            }

            v13 = 136315138;
            v14 = v12;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I [%s] Invalid response received", &v13, 0xCu);
          }
        }
      }

      sub_100004A34(v7);
    }
  }
}

void LazuliProvisioningWebHelper::handleHttpResponse(uint64_t a1, void *a2)
{
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
  v5 = a2[1];
  v10 = *a2;
  v11 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100A96920(v4, &v10, a1 + 136);
  if (v11)
  {
    sub_100004A34(v11);
  }

  v6 = (*(**a2 + 24))();
  *(a1 + 92) = v6;
  if (v6 == 503 && *(a1 + 96) == 1)
  {
    v7 = *a2;
    v8 = a2[1];
    v9[0] = v7;
    v9[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    LazuliProvisioningWebHelper::response503(a1, v9);
    if (v8)
    {
      sub_100004A34(v8);
    }
  }

  else if (*(a1 + 248))
  {
    v12 = 0u;
    v13 = 0u;
    sub_1007DF9AC(&v12, a1 + 224);
    sub_1007E00C0(a1 + 224);
    if (!*(&v13 + 1))
    {
      sub_100022DB4();
    }

    (*(**(&v13 + 1) + 48))(*(&v13 + 1), a2);
    sub_100416C34(&v12);
  }
}

void sub_1007DC238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v14 = v13;
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007DC27C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1007DC298(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1007DC2A8(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v6 = *(*(**(v3 + 6) + 16))(*(v3 + 6), *(v3 + 25));
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = (*(*v3 + 72))(v3);
          v8 = "NC";
          if (v7)
          {
            v8 = "C";
          }

          v10 = 136315138;
          v11 = v8;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [%s] Operation timed out", &v10, 0xCu);
        }

        LazuliProvisioningWebHelper::handleTimeout(v3);
        v9 = *(v3 + 10);
        *(v3 + 10) = 0;
        if (v9)
        {
          (*(*v9 + 8))(v9);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void LazuliProvisioningWebHelper::handleTimeout(LazuliProvisioningWebHelper *this)
{
  v2 = *(this + 43);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(this + 42);
      if (v4)
      {
        v11 = 13;
        LazuliProvisioningServerWrapper::submitMetricForPhase(v4, this + 22, 0, &v11, 0, 0);
        RetryDelayAndIncrementCount = LazuliProvisioningServerWrapper::getRetryDelayAndIncrementCount(v4);
        v6 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 25));
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = (*(*this + 72))(this);
          v8 = "NC";
          if (v7)
          {
            v8 = "C";
          }

          v11 = 136315394;
          v12 = v8;
          v13 = 2048;
          v14 = RetryDelayAndIncrementCount;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [%s] Retry for timeout scheduled after %llds", &v11, 0x16u);
        }

        LazuliProvisioningWebHelper::retryLastRequest(this, RetryDelayAndIncrementCount, 1);
LABEL_13:
        sub_100004A34(v3);
        return;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v9 = (*(**(this + 6) + 16))(*(this + 6), *(this + 25));
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
  {
    v10 = (*(*this + 72))(this);
    sub_10177F3A0(v10, &v11);
  }

  if (v3)
  {
    goto LABEL_13;
  }
}

void LazuliProvisioningWebHelper::getCookie(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_10000501C(__p, "Set-Cookie");
  v4 = sub_10038F068(a1, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 8 == v4)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else if (*(v4 + 79) < 0)
  {
    sub_100005F2C(a2, *(v4 + 56), *(v4 + 64));
  }

  else
  {
    v5 = *(v4 + 56);
    *(a2 + 16) = *(v4 + 72);
    *a2 = v5;
  }
}

void sub_1007DC710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void LazuliProvisioningWebHelper::response503(uint64_t a1, uint64_t a2)
{
  v60 = 0;
  v61[0] = 0;
  v61[1] = 0;
  (*(**a2 + 56))(&v60);
  sub_10000501C(&__p, "Retry-After");
  v4 = sub_10038F068(&v60, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v61 == v4)
  {
    v7 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      v8 = (*(*a1 + 72))(a1);
      sub_10177F3F0(v8, &__dst);
    }

    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  else
  {
    memset(&__str, 0, sizeof(__str));
    sub_10000501C(&__p, "Retry-After");
    v5 = sub_100732A58(&v60, &__p);
    if (*(v5 + 23) < 0)
    {
      sub_100005F2C(&__str, *v5, *(v5 + 8));
    }

    else
    {
      v6 = *v5;
      __str.__r_.__value_.__r.__words[2] = *(v5 + 16);
      *&__str.__r_.__value_.__l.__data_ = v6;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
      if (__str.__r_.__value_.__l.__size_)
      {
        p_str = __str.__r_.__value_.__r.__words[0];
        goto LABEL_17;
      }
    }

    else if (*(&__str.__r_.__value_.__s + 23))
    {
      p_str = &__str;
LABEL_17:
      while (1)
      {
        v14 = p_str->__r_.__value_.__s.__data_[0];
        if (v14 < 0 || (_DefaultRuneLocale.__runetype[v14] & 0x400) == 0)
        {
          break;
        }

        p_str = (p_str + 1);
        if (!--size)
        {
          v15 = std::stoi(&__str, 0, 10);
          v16 = v15 >> 8;
          v17 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = (*(*a1 + 72))(a1);
            v19 = "NC";
            if (v18)
            {
              v19 = "C";
            }

            LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
            *(__p.__r_.__value_.__r.__words + 4) = v19;
            WORD2(__p.__r_.__value_.__r.__words[1]) = 2048;
            __p.__r_.__value_.__s.__data_[14] = v15;
            *(&__p.__r_.__value_.__r.__words[1] + 7) = v15 >> 8;
            *(&__p.__r_.__value_.__r.__words[2] + 1) = (v15 >> 8) >> 16;
            __p.__r_.__value_.__s.__data_[21] = (v15 >> 8) >> 48;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I [%s] Retry-After: %lu", &__p, 0x16u);
          }

          v9 = 1;
          LOBYTE(v20) = v15;
          goto LABEL_44;
        }
      }
    }

    sub_10000501C(&__p, "Date");
    v21 = sub_10038F068(&v60, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v61 == v21)
    {
      v24 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v52 = (*(*a1 + 72))(a1);
        v53 = "NC";
        if (v52)
        {
          v53 = "C";
        }

        v54 = &__str;
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v54 = __str.__r_.__value_.__r.__words[0];
        }

        LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
        *(__p.__r_.__value_.__r.__words + 4) = v53;
        WORD2(__p.__r_.__value_.__r.__words[1]) = 2082;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = v54;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "[%s] Retry-After: %{public}s cannot be used as server date is not known.", &__p, 0x16u);
      }

      v9 = 0;
      v16 = 0;
      LOBYTE(v20) = 0;
    }

    else
    {
      memset(&__dst, 0, sizeof(__dst));
      sub_10000501C(&__p, "Date");
      v22 = sub_100732A58(&v60, &__p);
      if (*(v22 + 23) < 0)
      {
        sub_100005F2C(&__dst, *v22, *(v22 + 8));
      }

      else
      {
        v23 = *v22;
        __dst.__r_.__value_.__r.__words[2] = *(v22 + 16);
        *&__dst.__r_.__value_.__l.__data_ = v23;
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v25 = sub_100A93E5C(&__str);
      v26 = sub_100A93E5C(&__dst);
      v20 = v25 - v26;
      v9 = v25 > v26;
      if (v25 <= v26)
      {
        v30 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v55 = (*(*a1 + 72))(a1);
          v56 = "NC";
          if (v55)
          {
            v56 = "C";
          }

          v57 = &__str;
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v57 = __str.__r_.__value_.__r.__words[0];
          }

          LODWORD(__p.__r_.__value_.__l.__data_) = 136315650;
          p_dst = &__dst;
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_dst = __dst.__r_.__value_.__r.__words[0];
          }

          *(__p.__r_.__value_.__r.__words + 4) = v56;
          WORD2(__p.__r_.__value_.__r.__words[1]) = 2082;
          *(&__p.__r_.__value_.__r.__words[1] + 6) = v57;
          HIWORD(__p.__r_.__value_.__r.__words[2]) = 2082;
          v63 = p_dst;
          _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "[%s] Retry-After: %{public}s & Date: %{public}s invalid", &__p, 0x20u);
        }

        v16 = 0;
        LOBYTE(v20) = 0;
      }

      else
      {
        v16 = v20 >> 8;
        v27 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = (*(*a1 + 72))(a1);
          v29 = "NC";
          if (v28)
          {
            v29 = "C";
          }

          LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
          *(__p.__r_.__value_.__r.__words + 4) = v29;
          WORD2(__p.__r_.__value_.__r.__words[1]) = 2048;
          *(&__p.__r_.__value_.__r.__words[1] + 6) = v20;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I [%s] Retry-After (calculated) : %lu", &__p, 0x16u);
        }
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }
    }

LABEL_44:
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v10 = v16 << 8;
    v11 = v20;
  }

  memset(&__p, 0, sizeof(__p));
  (*(**a2 + 56))(v59);
  LazuliProvisioningWebHelper::getCookie(v59, &__p);
  sub_1000DD0AC(v59, v59[1]);
  v31 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v31 = __p.__r_.__value_.__l.__size_;
  }

  if (v31)
  {
    sub_10000501C(&__str, "Cookie");
    v32 = sub_10038F068(a1 + 184, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (a1 + 192 != v32)
    {
      v33 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v33 = __p.__r_.__value_.__l.__size_;
      }

      if (v33)
      {
        sub_10000501C(&__str, "Cookie");
        v61[3] = &__str;
        v34 = sub_100416DA4(a1 + 184, &__str);
        std::string::operator=((v34 + 56), &__p);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v35 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = (*(*a1 + 72))(a1);
          v37 = "NC";
          if (v36)
          {
            v37 = "C";
          }

          LODWORD(__str.__r_.__value_.__l.__data_) = 136315138;
          *(__str.__r_.__value_.__r.__words + 4) = v37;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I [%s] New cookie stored for 503 retry", &__str, 0xCu);
        }
      }
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v9)
    {
      goto LABEL_64;
    }
  }

  else if (v9)
  {
LABEL_64:
    RetryDelayAndIncrementCount = v11 | v10;
    goto LABEL_65;
  }

  v47 = *(a1 + 344);
  if (!v47)
  {
    v44 = 0;
    goto LABEL_81;
  }

  v44 = std::__shared_weak_count::lock(v47);
  if (!v44 || (v48 = *(a1 + 336)) == 0)
  {
LABEL_81:
    v49 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v50 = (*(*a1 + 72))(a1);
      v51 = "NC";
      if (v50)
      {
        v51 = "C";
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
      *(__p.__r_.__value_.__r.__words + 4) = v51;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I [%s] Server wrapper missing", &__p, 0xCu);
    }

    if (v44)
    {
      goto LABEL_86;
    }

    goto LABEL_87;
  }

  RetryDelayAndIncrementCount = LazuliProvisioningServerWrapper::getRetryDelayAndIncrementCount(v48);
  sub_100004A34(v44);
LABEL_65:
  v39 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = (*(*a1 + 72))(a1);
    v41 = "NC";
    if (v40)
    {
      v41 = "C";
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
    *(__p.__r_.__value_.__r.__words + 4) = v41;
    WORD2(__p.__r_.__value_.__r.__words[1]) = 2048;
    *(&__p.__r_.__value_.__r.__words[1] + 6) = RetryDelayAndIncrementCount;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I [%s] Retrying operation after: %lu seconds", &__p, 0x16u);
  }

  v42 = *(a1 + 344);
  if (v42)
  {
    v43 = std::__shared_weak_count::lock(v42);
    if (v43)
    {
      v44 = v43;
      v45 = *(a1 + 336);
      if (v45)
      {
        LODWORD(__p.__r_.__value_.__l.__data_) = 10;
        LazuliProvisioningServerWrapper::submitMetricForPhase(v45, (a1 + 88), 0x1000001F7, &__p, RetryDelayAndIncrementCount, 1);
        sub_100004AA0(&__p, (a1 + 8));
        v46 = __p.__r_.__value_.__l.__size_;
        if (__p.__r_.__value_.__l.__size_)
        {
          atomic_fetch_add_explicit((__p.__r_.__value_.__l.__size_ + 16), 1uLL, memory_order_relaxed);
          sub_100004A34(v46);
        }

        v61[7] = 0;
        operator new();
      }

LABEL_86:
      sub_100004A34(v44);
    }
  }

LABEL_87:
  sub_1000DD0AC(&v60, v61[0]);
}

void sub_1007DD22C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 73) < 0)
  {
    operator delete(*(v33 - 96));
  }

  sub_1000DD0AC(&a12, a13);
  _Unwind_Resume(a1);
}

void LazuliProvisioningWebHelper::responseUnknown(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(**a2 + 72))(&v23);
  v6 = sub_100A9A264(&v23);
  sub_1003A5A8C(&v23);
  if (v6)
  {
    v7 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      sub_10177F460();
    }

    v8 = *(a1 + 344);
    if (v8)
    {
      v9 = std::__shared_weak_count::lock(v8);
      if (v9)
      {
        v10 = *(a1 + 336);
        if (v10)
        {
          v11 = (*(**a2 + 24))();
          v23 = 15;
          LazuliProvisioningServerWrapper::submitMetricForPhase(v10, (a1 + 88), v11 | &_mh_execute_header, &v23, 0, 0);
          v23 = 3;
          LazuliProvisioningServerWrapper::failedFatally(v10);
        }
      }
    }

    else
    {
      v9 = 0;
    }

    v19 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
    if (os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
    {
      v20 = (*(*a1 + 72))(a1);
      sub_10177F514(v20, &v23);
    }

    goto LABEL_22;
  }

  sub_1007DBE64((a1 + 224), a3);
  v12 = (*(**a2 + 24))();
  v13 = *(a1 + 344);
  if (!v13)
  {
    v9 = 0;
    goto LABEL_20;
  }

  v9 = std::__shared_weak_count::lock(v13);
  if (!v9 || (v14 = *(a1 + 336)) == 0)
  {
LABEL_20:
    v21 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
    if (os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
    {
      v22 = (*(*a1 + 72))(a1);
      sub_10177F3A0(v22, &v23);
    }

LABEL_22:
    if (!v9)
    {
      return;
    }

    goto LABEL_23;
  }

  RetryDelayAndIncrementCount = LazuliProvisioningServerWrapper::getRetryDelayAndIncrementCount(*(a1 + 336));
  v16 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = (*(*a1 + 72))(a1);
    v18 = "NC";
    v23 = 136315650;
    if (v17)
    {
      v18 = "C";
    }

    v24 = v18;
    v25 = 1024;
    v26 = v12;
    v27 = 2048;
    v28 = RetryDelayAndIncrementCount;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I [%s] Will retry for error code: [%d] after %llds", &v23, 0x1Cu);
  }

  v23 = 10;
  LazuliProvisioningServerWrapper::submitMetricForPhase(v14, (a1 + 88), v12 | &_mh_execute_header, &v23, 0, 0);
  LazuliProvisioningWebHelper::retryLastRequest(a1, RetryDelayAndIncrementCount, 1);
LABEL_23:
  sub_100004A34(v9);
}

void LazuliProvisioningWebHelper::scheduleOtpResponse(LazuliProvisioningWebHelper *this)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, this + 1);
  operator new();
}

void LazuliProvisioningWebHelper::handleOtp(LazuliProvisioningWebHelper *a1, const std::string *a2)
{
  std::string::operator=((a1 + 280), a2);
  v3 = *(a1 + 279);
  if (v3 < 0)
  {
    v3 = *(a1 + 33);
  }

  v4 = *(*(**(a1 + 6) + 16))(*(a1 + 6), *(a1 + 25));
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = (*(*a1 + 72))(a1);
      v6 = "NC";
      if (v5)
      {
        v6 = "C";
      }

      v7 = 136315138;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I [%s] OTP recieved. Attestation completed.", &v7, 0xCu);
    }

    LazuliProvisioningWebHelper::scheduleOtpResponse(a1);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10177F564();
  }
}

void LazuliProvisioningWebHelper::handleDeprovisioningComplete(uint64_t a1, uint64_t a2)
{
  v4 = (*(**a2 + 24))();
  v5 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
  if (v4 == 511)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10177F614();
    }

    *buf = 0u;
    v20 = 0u;
    (*(**a2 + 56))(v17);
    LazuliProvisioningWebHelper::getFailureReasonsFrom511Response(a1, v17, buf);
    sub_1000DD0AC(v17, v17[1]);
    sub_100416748(__p, buf);
    LazuliProvisioningWebHelper::showAlertIfNeeded(a1, __p);
    if (v16 == 1 && __p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (BYTE8(v20) == 1 && *buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }
  }

  else
  {
    if (v4 == 200)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = (*(*a1 + 72))(a1);
        v7 = "NC";
        if (v6)
        {
          v7 = "C";
        }

        *buf = 136315138;
        *&buf[4] = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I [%s] Received 200 OK", buf, 0xCu);
      }

      v8 = *(a1 + 344);
      if (v8)
      {
        v9 = std::__shared_weak_count::lock(v8);
        if (v9)
        {
          v10 = v9;
          v11 = *(a1 + 336);
          if (v11)
          {
            v18 = 10;
            *buf = 6;
            LazuliProvisioningServerWrapper::submitMetricForPhase(v11, buf, 0x1000000C8, &v18, 0, 0);
            LazuliProvisioningServerWrapper::handleDeprovisioningComplete(v11, 1);
          }

LABEL_25:
          sub_100004A34(v10);
          return;
        }
      }

      return;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10177F6C4();
    }
  }

  v12 = *(a1 + 344);
  if (v12)
  {
    v13 = std::__shared_weak_count::lock(v12);
    if (v13)
    {
      v10 = v13;
      v14 = *(a1 + 336);
      if (v14)
      {
        v18 = 10;
        *buf = 6;
        LazuliProvisioningServerWrapper::submitMetricForPhase(v14, buf, v4 | &_mh_execute_header, &v18, 0, 0);
        LazuliProvisioningServerWrapper::handleDeprovisioningComplete(v14, 0);
      }

      goto LABEL_25;
    }
  }
}

void LazuliProvisioningWebHelper::getFailureReasonsFrom511Response(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10000501C(__p, "X-Acs-Token-Request-Failure-Reasons");
  v6 = sub_10038F068(a2, __p);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (a2 + 8 == v6)
  {
    *a3 = 0;
    *(a3 + 24) = 0;
  }

  else
  {
    v7 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = (*(*a1 + 72))(a1);
      v9 = "C";
      if (!v8)
      {
        v9 = "NC";
      }

      v10 = (v6 + 56);
      if (*(v6 + 79) < 0)
      {
        v10 = *v10;
      }

      *__p = 136315394;
      *&__p[4] = v9;
      *&__p[12] = 2082;
      *&__p[14] = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I [%s] Received '%{public}s' as failure reason(s) in 511 response", __p, 0x16u);
    }

    sub_1004CE574(__p, v6 + 56);
    *a3 = *__p;
    *(a3 + 16) = *&__p[16];
    *(a3 + 24) = 1;
  }
}

void sub_1007DDEEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void LazuliProvisioningWebHelper::showAlertIfNeeded(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    __p = 0;
    v32 = 0;
    v33 = 0;
    sub_1004167EC(&__p, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
    if ((sub_1004CE578(&__p) & 1) == 0)
    {
LABEL_27:
      if (__p)
      {
        v32 = __p;
        operator delete(__p);
      }

      return;
    }

    v3 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = (*(*a1 + 72))(a1);
      v5 = "NC";
      if (v4)
      {
        v5 = "C";
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I [%s] Need to show 'Phone Number Added To Device' alert", &buf, 0xCu);
    }

    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v7 = dispatch_queue_create("lazuli.alert", v6);
    ServiceMap = Registry::getServiceMap(*(a1 + 104));
    v9 = ServiceMap;
    if (v10 < 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    *&buf = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &buf);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
        if (!v16)
        {
LABEL_13:
          v18 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
          if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
          {
            v19 = (*(*a1 + 72))(a1);
            sub_10177F7D4(v19, &buf);
          }

          if ((v17 & 1) == 0)
          {
            sub_100004A34(v15);
          }

          if (v7)
          {
            dispatch_release(v7);
          }

          goto LABEL_27;
        }

LABEL_17:
        v30 = 0;
        v20 = kCellularLocalizationTable;
        (*(*v16 + 40))(&v30, v16, kCellularLocalizationTable, kCellularLocalizationLazuliPhoneNumberAddedToDeviceTitle, 0);
        v29 = 0;
        (*(*v16 + 40))(&v29, v16, v20, kCellularLocalizationLazuliPhoneNumberAddedToDeviceMessage, 0);
        if (!v30 || !v29)
        {
          v21 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
          if (os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
          {
            v22 = (*(*a1 + 72))(a1);
            sub_10177F784(v22, v35);
          }

          v23 = CFStringCreateWithCString(kCFAllocatorDefault, "Phone Number Added to Device", 0x8000100u);
          v24 = v30;
          v30 = v23;
          *&buf = v24;
          sub_100005978(&buf);
          v25 = CFStringCreateWithCString(kCFAllocatorDefault, "Your phone number is now being used on another device. If you didn't add your number to another device, contact your carrier immediately for support.", 0x8000100u);
          v26 = v29;
          v29 = v25;
          *&buf = v26;
          sub_100005978(&buf);
        }

        v28 = 0;
        v27 = (*(*v16 + 40))(&v28, v16, v20, kCellularLocalizationLazuliPhoneNumberAddedToDeviceAlertOk, @"OK");
        buf = 0uLL;
        UserAlertGenerationInterface::create(v27);
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    if (!v16)
    {
      goto LABEL_13;
    }

    goto LABEL_17;
  }
}

void sub_1007DE518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, const void *a14, const void *a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_100005978(&a14);
  sub_100005978(&a15);
  if ((v25 & 1) == 0)
  {
    sub_100004A34(v24);
  }

  if (v23)
  {
    dispatch_release(v23);
  }

  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void LazuliProvisioningWebHelper::resetTimers(LazuliProvisioningWebHelper *this)
{
  v2 = *(this + 43);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 42);
      if (v5)
      {
        LazuliProvisioningServerWrapper::resetRetryTimer(v5);
      }

      sub_100004A34(v4);
    }
  }
}

void LazuliProvisioningWebHelper::handleOtpReceptionTimeout(LazuliProvisioningWebHelper *this)
{
  v2 = *(this + 43);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3 && *(this + 42))
    {
      RetryDelayAndIncrementCount = LazuliProvisioningServerWrapper::getRetryDelayAndIncrementCount(*(this + 42));
      v5 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 25));
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = (*(*this + 72))(this);
        v7 = "NC";
        if (v6)
        {
          v7 = "C";
        }

        buf = 136315394;
        *buf_4 = v7;
        *&buf_4[8] = 2048;
        *&buf_4[10] = RetryDelayAndIncrementCount;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I [%s] OTP reception timeout, next retry after: %llds", &buf, 0x16u);
      }

      sub_100004AA0(&buf, this + 1);
      v8 = *&buf_4[4];
      if (*&buf_4[4])
      {
        atomic_fetch_add_explicit((*&buf_4[4] + 16), 1uLL, memory_order_relaxed);
        sub_100004A34(v8);
      }

      operator new();
    }
  }

  else
  {
    v3 = 0;
  }

  v9 = (*(**(this + 6) + 16))(*(this + 6), *(this + 25));
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
  {
    v10 = (*(*this + 72))(this);
    sub_10177F3A0(v10, &buf);
  }

  if (v3)
  {
    sub_100004A34(v3);
  }
}

void LazuliProvisioningWebHelper::startOtpReceptionTimer(LazuliProvisioningWebHelper *this)
{
  v2 = *(this + 43);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      if (*(this + 42))
      {
        sub_100004AA0(&v6, this + 1);
        v4 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v4);
        }

        sub_100004AA0(&v6, this + 1);
        v5 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v5);
        }

        v8 = 0;
        operator new();
      }

      sub_100004A34(v3);
    }
  }
}

void sub_1007DEA74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10002B644(va);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  sub_100004A34(v4);
  _Unwind_Resume(a1);
}

void LazuliProvisioningWebHelper::restartProvisioning(LazuliProvisioningServerWrapper **this, int a2)
{
  LazuliProvisioningWebHelper::resetTimers(this);
  v4 = this[43];
  if (a2)
  {
    if (v4)
    {
      v5 = std::__shared_weak_count::lock(v4);
      if (v5)
      {
        v6 = v5;
        v7 = this[42];
        if (v7)
        {
          v8 = *(*(*this[6] + 16))(this[6], *(this + 25));
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v9 = (*(*this + 9))(this);
            v10 = "NC";
            if (v9)
            {
              v10 = "C";
            }

            buf = 136315138;
            *buf_4 = v10;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I [%s] Restarting provisioning (one-time instantaneous retry)", &buf, 0xCu);
          }

          LazuliProvisioningServerWrapper::restartProvisioning(v7);
        }

LABEL_26:
        sub_100004A34(v6);
      }
    }
  }

  else
  {
    if (v4)
    {
      v6 = std::__shared_weak_count::lock(v4);
      if (v6 && this[42])
      {
        RetryDelayAndIncrementCount = LazuliProvisioningServerWrapper::getRetryDelayAndIncrementCount(this[42]);
        v12 = *(*(*this[6] + 16))(this[6], *(this + 25));
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = (*(*this + 9))(this);
          v14 = "NC";
          if (v13)
          {
            v14 = "C";
          }

          buf = 136315394;
          *buf_4 = v14;
          *&buf_4[8] = 2048;
          *&buf_4[10] = RetryDelayAndIncrementCount;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I [%s] Restarting provisioning, next retry after: %llds", &buf, 0x16u);
        }

        sub_100004AA0(&buf, this + 1);
        v15 = *&buf_4[4];
        if (*&buf_4[4])
        {
          atomic_fetch_add_explicit((*&buf_4[4] + 16), 1uLL, memory_order_relaxed);
          sub_100004A34(v15);
        }

        sub_100004AA0(&buf, this + 1);
        v16 = *&buf_4[4];
        if (*&buf_4[4])
        {
          atomic_fetch_add_explicit((*&buf_4[4] + 16), 1uLL, memory_order_relaxed);
          sub_100004A34(v16);
        }

        operator new();
      }
    }

    else
    {
      v6 = 0;
    }

    v17 = (*(*this[6] + 16))(this[6], *(this + 25));
    if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      v18 = (*(*this + 9))(this);
      sub_10177F3A0(v18, &buf);
    }

    if (v6)
    {
      goto LABEL_26;
    }
  }
}

void LazuliProvisioningWebHelper::runLastAccess(LazuliProvisioningWebHelper *this, int a2)
{
  if (a2)
  {
    v3 = 15166;
  }

  else
  {
    v3 = 15358;
  }

  v16 = v3;
  if (((*(*this + 72))(this) & 1) == 0)
  {
    v16 = v3 | 0x30000;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  LazuliProvisioningWebHelper::getHeaders(this, &v16, &v13);
  sub_10000501C(&__p, "rcs_state");
  p_p = &__p;
  v4 = sub_100416DA4(&v13, &__p);
  if (*(v4 + 79) < 0)
  {
    *(v4 + 64) = 2;
    v5 = *(v4 + 56);
  }

  else
  {
    v5 = (v4 + 56);
    *(v4 + 79) = 2;
  }

  strcpy(v5, "-4");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_100A9C1EC(&v13, &__p);
  v11[0] = 0;
  v11[1] = 0;
  aBlock[4] = this;
  p_p = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 0x40000000;
  aBlock[2] = sub_1007DF168;
  aBlock[3] = &unk_101E800A8;
  v18 = 0;
  v17[0] = off_101E4BC98;
  v17[1] = _Block_copy(aBlock);
  v18 = v17;
  LOBYTE(v6) = 0;
  v8 = 0;
  LazuliProvisioningWebHelper::runWithTimeout(this, this + 22, &__p, &p_p, v17, &v6);
  if (v8 == 1 && v7 < 0)
  {
    operator delete(v6);
  }

  sub_100416C34(v17);
  sub_1000DD0AC(&p_p, v11[0]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_1000DD0AC(&v13, v14);
}

void sub_1007DF0EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, void *a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a16 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  sub_100416C34(v30 - 56);
  sub_1000DD0AC(&a22, a23);
  if (a30 < 0)
  {
    operator delete(a25);
  }

  sub_1000DD0AC(v30 - 96, *(v30 - 88));
  _Unwind_Resume(a1);
}

BOOL LazuliProvisioningWebHelper::requiresPSAccess(uint64_t a1, uint64_t a2)
{
  sub_10000501C(__p, "X-Failed-Reason");
  v3 = sub_10038F068(a2, __p);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (a2 + 8 != v3)
  {
    v4 = *(v3 + 79);
    if (v4 < 0)
    {
      v5 = *(v3 + 56);
      v4 = *(v3 + 64);
    }

    else
    {
      v5 = (v3 + 56);
    }

    if (v4 >= 12)
    {
      v6 = &v5[v4];
      v7 = v5;
      do
      {
        v8 = memchr(v7, 78, v4 - 11);
        if (!v8)
        {
          break;
        }

        if (*v8 == 0x634153506465654ELL && *(v8 + 2) == 1936942435)
        {
          return v8 != v6 && v8 - v5 != -1;
        }

        v7 = v8 + 1;
        v4 = v6 - v7;
      }

      while (v6 - v7 >= 12);
    }
  }

  return 0;
}

void sub_1007DF270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void LazuliProvisioningWebHelper::describe(LazuliProvisioningWebHelper *this)
{
  v2 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 25));
  v3 = "NC";
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if ((*(*this + 72))(this))
    {
      v4 = "C";
    }

    else
    {
      v4 = "NC";
    }

    *buf = 136315394;
    v27 = v4;
    v28 = 2080;
    v29 = subscriber::asString();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [%s] slot: %s", buf, 0x16u);
  }

  v5 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 25));
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if ((*(*this + 72))(this))
    {
      v6 = "C";
    }

    else
    {
      v6 = "NC";
    }

    v7 = (this + 136);
    if (*(this + 159) < 0)
    {
      v7 = *v7;
    }

    *buf = 136315394;
    v27 = v6;
    v28 = 2080;
    v29 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I [%s] url: %s", buf, 0x16u);
  }

  v8 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 25));
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if ((*(*this + 72))(this))
    {
      v9 = "C";
    }

    else
    {
      v9 = "NC";
    }

    v10 = (this + 160);
    if (*(this + 183) < 0)
    {
      v10 = *v10;
    }

    *buf = 136315394;
    v27 = v9;
    v28 = 2080;
    v29 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I [%s] last used url: %s", buf, 0x16u);
  }

  v11 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 25));
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if ((*(*this + 72))(this))
    {
      v12 = "C";
    }

    else
    {
      v12 = "NC";
    }

    v13 = "YES";
    v14 = *(this + 31);
    if (*(this + 26))
    {
      v15 = "YES";
    }

    else
    {
      v15 = "NO";
    }

    *buf = 136315650;
    v27 = v12;
    v28 = 2080;
    if (!v14)
    {
      v13 = "NO";
    }

    v29 = v15;
    v30 = 2080;
    v31 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I [%s] web-request: %s, callback: %s", buf, 0x20u);
  }

  v16 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 25));
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    if ((*(*this + 72))(this))
    {
      v17 = "C";
    }

    else
    {
      v17 = "NC";
    }

    v18 = (this + 256);
    if (*(this + 279) < 0)
    {
      v18 = *v18;
    }

    *buf = 136315394;
    v27 = v17;
    v28 = 2080;
    v29 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I [%s] last-cookie: %s", buf, 0x16u);
  }

  v19 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 25));
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    if ((*(*this + 72))(this))
    {
      v20 = "C";
    }

    else
    {
      v20 = "NC";
    }

    v21 = *(this + 23);
    *buf = 136315394;
    v27 = v20;
    v28 = 1024;
    LODWORD(v29) = v21;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I [%s] last-response-code: %d", buf, 0x12u);
  }

  v22 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 25));
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    if ((*(*this + 72))(this))
    {
      v3 = "C";
    }

    v23 = "(none)";
    if (*(this + 376) == 1)
    {
      v23 = this + 352;
      if (*(this + 375) < 0)
      {
        v23 = *v23;
      }
    }

    if (*(this + 388) == 1)
    {
      std::to_string(&v25, *(this + 96));
      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &v25;
      }

      else
      {
        v24 = v25.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      v27 = v3;
      v28 = 2080;
      v29 = v23;
      v30 = 2080;
      v31 = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I [%s] token: %s, Version: %s", buf, 0x20u);
      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      *buf = 136315650;
      v27 = v3;
      v28 = 2080;
      v29 = v23;
      v30 = 2080;
      v31 = "(none)";
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I [%s] token: %s, Version: %s", buf, 0x20u);
    }
  }
}

unsigned __int8 *sub_1007DF8F4(void *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = memchr(a1, *a3, a2 - a1);
  if (!result)
  {
    result = a2;
  }

  v6 = result + 1;
  if (result != a2 && v6 != a2)
  {
    do
    {
      v8 = *v6;
      if (v8 != *a3)
      {
        *result++ = v8;
      }

      ++v6;
    }

    while (v6 != a2);
  }

  return result;
}

uint64_t sub_1007DF95C(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_10006F35C(a1, a2);
  return a1;
}

void sub_1007DF98C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_1017633D8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007DF9AC(uint64_t a1, uint64_t a2)
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

void *sub_1007DFA44(void *a1)
{
  *a1 = off_101E801D0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1007DFA90(void *a1)
{
  *a1 = off_101E801D0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_1007DFB70(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = off_101E801D0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void sub_1007DFBB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1007DFBC0(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1007DFC00(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[1])
      {
        v6 = *(*(**(v3 + 48) + 16))(*(v3 + 48), *(v3 + 100));
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = (*(*v3 + 72))(v3);
          v8 = sub_100701D5C((v3 + 88));
          v9 = "NC";
          v10 = *(v3 + 200);
          *buf = 136315650;
          if (v7)
          {
            v9 = "C";
          }

          v15 = v9;
          v16 = 2080;
          v17 = v8;
          v18 = 2048;
          v19 = v10;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [%s] Retrying last request: %s, header-size: %zu", buf, 0x20u);
        }

        sub_1007DF9AC(buf, v3 + 224);
        sub_1007DF95C(__p, (v3 + 304));
        LazuliProvisioningWebHelper::runWithTimeout(v3, (v3 + 88), (v3 + 160), v3 + 184, buf, __p);
        if (v13 == 1 && v12 < 0)
        {
          operator delete(__p[0]);
        }

        sub_100416C34(buf);
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1007DFDB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, __int16 a17, char a18, char a19)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  sub_100416C34(&a17);
  sub_100004A34(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_1007DFE08(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1007DFE54(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        memset(v5, 0, sizeof(v5));
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1007E00B4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t sub_1007E00C0(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

void *sub_1007E0144(void *a1)
{
  *a1 = off_101E80250;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1007E0190(void *a1)
{
  *a1 = off_101E80250;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_1007E0270(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = off_101E80250;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void sub_1007E02B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1007E02C0(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1007E0300(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[1])
      {
        v6 = *(*(**(v3 + 48) + 16))(*(v3 + 48), *(v3 + 100));
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = (*(*v3 + 72))(v3);
          v8 = "NC";
          if (v7)
          {
            v8 = "C";
          }

          v9 = 136315138;
          v10 = v8;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [%s] Retrying on 503 retry-after", &v9, 0xCu);
        }

        LazuliProvisioningWebHelper::retryLastRequest(v3, 0, 0);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_1007E0464(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1007E04B0(uint64_t **a1)
{
  v2 = a1;
  v1 = **a1;
  memset(&__str, 0, sizeof(__str));
  sub_100A9C400(v1 + 280, &__str);
  __dst[0] = 0;
  __dst[1] = 0;
  v10 = 0;
  if (*(v1 + 279) < 0)
  {
    sub_100005F2C(__dst, *(v1 + 256), *(v1 + 264));
  }

  else
  {
    *__dst = *(v1 + 256);
    v10 = *(v1 + 272);
  }

  LazuliProvisioningWebHelper::resetTimers(v1);
  *(v1 + 96) = 1;
  sub_1007E079C(v14, &off_101E802C0, __dst);
  sub_1000DF684(v7, v14, 1);
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 0x40000000;
  aBlock[2] = sub_1007E0774;
  aBlock[3] = &unk_101E802C8;
  aBlock[4] = v1;
  v13 = 0;
  v12[0] = off_101E4BC98;
  v12[1] = _Block_copy(aBlock);
  v13 = v12;
  LOBYTE(__p) = 0;
  v5 = 0;
  LazuliProvisioningWebHelper::runWithTimeout(v1, (v1 + 88), &__str, v7, v12, &__p);
  if (v5 == 1 && v4 < 0)
  {
    operator delete(__p);
  }

  sub_100416C34(v12);
  sub_1000DD0AC(v7, v8);
  if (v17 < 0)
  {
    operator delete(v16);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  operator delete();
}

void sub_1007E06C4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

uint64_t sub_1007E079C(uint64_t a1, char **a2, __int128 *a3)
{
  sub_10000501C(a1, *a2);
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C((a1 + 24), *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a1 + 40) = *(a3 + 2);
    *(a1 + 24) = v5;
  }

  return a1;
}

void sub_1007E07F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1007E0810(void *a1)
{
  *a1 = off_101E802F8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1007E085C(void *a1)
{
  *a1 = off_101E802F8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_1007E093C(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = off_101E802F8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void sub_1007E097C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1007E098C(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1007E09CC(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[1])
      {
        LazuliProvisioningWebHelper::resetTimers(v3);
        (*(*v3 + 32))(v3);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_1007E0A7C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1007E0AC8(void *a1)
{
  *a1 = off_101E80378;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1007E0B14(void *a1)
{
  *a1 = off_101E80378;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_1007E0BF4(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = off_101E80378;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void sub_1007E0C34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1007E0C44(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1007E0C84(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[1])
      {
        LazuliProvisioningWebHelper::handleOtpReceptionTimeout(v3);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_1007E0D0C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1007E0D58(void *a1)
{
  *a1 = off_101E803F8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1007E0DA4(void *a1)
{
  *a1 = off_101E803F8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_1007E0E84(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = off_101E803F8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void sub_1007E0EC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1007E0ED4(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1007E0F14(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[1])
      {
        v6 = *(v3 + 344);
        if (v6)
        {
          v7 = std::__shared_weak_count::lock(v6);
          if (v7)
          {
            v8 = v7;
            v9 = *(v3 + 336);
            if (v9)
            {
              v10 = *(*(**(v3 + 48) + 16))(*(v3 + 48), *(v3 + 100));
              if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
              {
                v11 = (*(*v3 + 72))(v3);
                v12 = "NC";
                if (v11)
                {
                  v12 = "C";
                }

                v13 = 136315138;
                v14 = v12;
                _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I [%s] Restarting provisioning", &v13, 0xCu);
              }

              LazuliProvisioningServerWrapper::restartProvisioning(v9);
            }

            sub_100004A34(v8);
          }
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1007E1080(_Unwind_Exception *a1)
{
  sub_100004A34(v2);
  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1007E10A4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}