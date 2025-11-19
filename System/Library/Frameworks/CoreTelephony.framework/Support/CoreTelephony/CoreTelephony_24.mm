uint64_t sub_100171930(uint64_t a1)
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

uint64_t sub_100171A20(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E2CBF0;
  a2[1] = v2;
  return result;
}

void sub_100171A4C(uint64_t a1, uint64_t a2)
{
  v5 = *a2;
  v2 = v5;
  v6 = *(a2 + 8);
  v3 = v6;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4 = *(a1 + 8);
  v7[0] = v4;
  v7[1] = 0uLL;
  sub_100171D18(v7 + 8, v2, v3, 0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 6));
  v8[0] = 0;
  v8[1] = 0;
  sub_100004AA0(v8, (v4 + 8));
  operator new();
}

void sub_100171BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  a17 = &a10;
  sub_10016BF8C(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_100171BC0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_100171C0C(uint64_t **a1)
{
  v1 = *a1;
  v7 = a1;
  v8[0] = v1;
  v2 = v1[1];
  v3 = v1[2];
  if (v2 != v3)
  {
    v4 = *v1;
    do
    {
      v8[2] = v2 + 32;
      v5 = sub_1001705A0(v4 + 248, (v2 + 32));
      sub_100156E08(v5 + 448, v2);
      v2 += 192;
    }

    while (v2 != v3);
  }

  sub_100171CB8(v8);
  return sub_1000049E0(&v7);
}

void sub_100171C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100171CB8(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100171CB8(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = (v1 + 8);
    sub_10016BF8C(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_100171D18(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100171DA0(result, a4);
  }

  return result;
}

void sub_100171D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10016BF8C(&a9);
  _Unwind_Resume(a1);
}

void sub_100171DA0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x155555555555556)
  {
    sub_10016BDCC(a1, a2);
  }

  sub_1000CE3D4();
}

uint64_t sub_100171DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_10016A078(a4, v6);
      v6 += 192;
      a4 += 192;
      v7 -= 192;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_100171E4C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 192;
    do
    {
      v4 = sub_10011289C(v4) - 192;
      v2 += 192;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100171E70(uint64_t a1)
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

uint64_t **sub_100171EF0(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = sub_1000685CC(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          sub_100172078((v8 + 4), (v9 + 4));
          v16 = 0;
          v10 = sub_1001355F4(v5, &v16, v15 + 4);
          sub_1000070DC(v5, v16, v10, v15);
          v15 = v14;
          if (v14)
          {
            v14 = sub_1000685CC(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = sub_100172CAC(&v13);
  }

  if (a2 != a3)
  {
    sub_100172D04();
  }

  return result;
}

uint64_t sub_100172078(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  *(a1 + 24) = *(a2 + 24);
  if (a1 != a2)
  {
    sub_10006EAC4((a1 + 32), *(a2 + 32), (a2 + 40));
    sub_100172204((a1 + 56), *(a2 + 56), (a2 + 64));
    sub_10006EAC4((a1 + 80), *(a2 + 80), (a2 + 88));
  }

  v4 = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 104) = v4;
  return a1;
}

uint64_t sub_1001720F4(uint64_t **a1, uint64_t a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(a2 + 28) >= *(v4 + 7))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  sub_1000070DC(a1, v3, v5, a2);
  return a2;
}

uint64_t **sub_100172204(uint64_t **result, uint64_t *a2, uint64_t *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v21 = result;
    v22 = v8;
    v23 = v8;
    if (v8)
    {
      v22 = sub_1000685CC(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 8) = *(v9 + 8);
          if (v8 != v9)
          {
            sub_100172460(v8 + 5, v9[5], v9[6], (v9[6] - v9[5]) >> 6);
          }

          v11 = v9[8];
          v10 = v9[9];
          if (v10)
          {
            atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
          }

          v12 = v8[9];
          v8[8] = v11;
          v8[9] = v10;
          if (v12)
          {
            sub_100004A34(v12);
          }

          *(v8 + 40) = *(v9 + 40);
          v14 = v9[11];
          v13 = v9[12];
          if (v13)
          {
            atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
          }

          v15 = v8[12];
          v8[11] = v14;
          v8[12] = v13;
          if (v15)
          {
            sub_100004A34(v15);
          }

          v17 = v9[13];
          v16 = v9[14];
          if (v16)
          {
            atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
          }

          v18 = v8[14];
          v8[13] = v17;
          v8[14] = v16;
          if (v18)
          {
            sub_100004A34(v18);
          }

          sub_1001723F0(v5, v23);
          v8 = v22;
          v23 = v22;
          if (v22)
          {
            v22 = sub_1000685CC(v22);
          }

          v19 = v9[1];
          if (v19)
          {
            do
            {
              a2 = v19;
              v19 = *v19;
            }

            while (v19);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v20 = *a2 == v9;
              v9 = a2;
            }

            while (!v20);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_1001729D0(&v21);
  }

  if (a2 != a3)
  {
    sub_100172A28();
  }

  return result;
}

void sub_1001723DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001729D0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001723F0(uint64_t **a1, uint64_t a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(a2 + 32) >= *(v4 + 8))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  sub_1000070DC(a1, v3, v5, a2);
  return a2;
}

void sub_100172460(uint64_t *a1, __int128 *a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 6)
  {
    sub_1001725F0(a1);
    if (!(a4 >> 58))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 5;
      if (v9 >> 5 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFC0)
      {
        v11 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_100172630(a1, v11);
    }

    sub_1000CE3D4();
  }

  v12 = a1[1];
  if (a4 <= (v12 - v8) >> 6)
  {
    while (v6 != a3)
    {
      v15 = *v6;
      *(v8 + 16) = *(v6 + 16);
      *v8 = v15;
      sub_1001728D8(v8 + 24, v6 + 24);
      *(v8 + 56) = *(v6 + 28);
      v8 += 64;
      v6 += 4;
    }

    sub_10013E040(a1, v8);
  }

  else
  {
    v13 = a2 + v12 - v8;
    if (v12 != v8)
    {
      do
      {
        v14 = *v6;
        *(v8 + 16) = *(v6 + 16);
        *v8 = v14;
        sub_1001728D8(v8 + 24, v6 + 24);
        *(v8 + 56) = *(v6 + 28);
        v6 += 4;
        v8 += 64;
      }

      while (v6 != v13);
      v12 = a1[1];
    }

    a1[1] = sub_10017266C(a1, v13, a3, v12);
  }
}

void sub_1001725F0(uint64_t *a1)
{
  if (*a1)
  {
    sub_10013E040(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_100172630(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    sub_100172988(a1, a2);
  }

  sub_1000CE3D4();
}

uint64_t sub_10017266C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2 + 24;
    do
    {
      v7 = *(v6 - 24);
      *(v4 + 16) = *(v6 - 8);
      *v4 = v7;
      sub_10017272C(v4 + 24, v6);
      v8 = v6 - 24;
      *(v4 + 56) = *(v6 + 32);
      v4 = v13 + 64;
      v13 += 64;
      v6 += 64;
    }

    while (v8 + 64 != a3);
  }

  LOBYTE(v11) = 1;
  sub_10017284C(v10);
  return v4;
}

uint64_t sub_10017272C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_10017277C(a1, a2);
  return a1;
}

void sub_10017275C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_101760EC4(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10017277C(void *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = sub_1001727D0(result, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t sub_1001727D0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100034AE8(result, a4);
  }

  return result;
}

void sub_100172830(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10017284C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100172884(a1);
  }

  return a1;
}

void sub_100172884(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    if (*(v1 - 16) == 1)
    {
      v3 = *(v1 - 40);
      if (v3)
      {
        *(v1 - 32) = v3;
        operator delete(v3);
      }
    }

    v1 -= 64;
  }
}

void sub_1001728D8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v3 = *(a2 + 8);
      v4 = &v3[-*a2] >> 2;
      v5 = *a2;

      sub_1000B26FC(a1, v5, v3, v4);
    }
  }

  else if (*(a1 + 24))
  {
    v6 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v6;
      operator delete(v6);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_1001727D0(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
    *(a1 + 24) = 1;
  }
}

void sub_100172988(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1001729D0(uint64_t a1)
{
  sub_10004F340(*a1, *(a1 + 16));
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

    sub_10004F340(*a1, v2);
  }

  return a1;
}

void sub_100172B90(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100172C34(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_100172BAC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100172630(result, a4);
  }

  return result;
}

void sub_100172C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10013DFEC(&a9);
  _Unwind_Resume(a1);
}

void sub_100172C34(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *(a2 + 112);
    if (v3)
    {
      sub_100004A34(v3);
    }

    v4 = *(a2 + 96);
    if (v4)
    {
      sub_100004A34(v4);
    }

    v5 = *(a2 + 72);
    if (v5)
    {
      sub_100004A34(v5);
    }

    v6 = (a2 + 40);
    sub_10013DFEC(&v6);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t sub_100172CAC(uint64_t a1)
{
  sub_10013DF64(*a1, *(a1 + 16));
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

    sub_10013DF64(*a1, v2);
  }

  return a1;
}

void sub_100172D04()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  sub_100172D8C();
}

void sub_100172D68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    sub_10013F024(&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100172E04(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10013F024(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_100172E20(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  __dst[3] = *(a2 + 3);
  sub_100172EF0(__dst + 4, (a2 + 2));
  sub_100172F48(__dst + 7, a2 + 56);
  sub_100172EF0(__dst + 10, (a2 + 5));
  v5 = *(a2 + 13);
  *(__dst + 112) = *(a2 + 112);
  __dst[13] = v5;
  return __dst;
}

void sub_100172EAC(_Unwind_Exception *a1)
{
  sub_10004F340(v1 + 56, *(v1 + 64));
  sub_10006DCAC(v1 + 32, *(v1 + 40));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void *sub_100172EF0(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10010935C(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_100172F48(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100172FA0(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_100172FA0(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_100173028(v5, v5 + 1, v4 + 8);
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

uint64_t sub_100173028(void *a1, uint64_t *a2, int *a3)
{
  v4 = 0;
  v5 = 0;
  result = *sub_10002E2F4(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_100172AB4();
  }

  return result;
}

uint64_t **sub_1001730B8(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = sub_1000685CC(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          v16 = 0;
          v10 = sub_1001355F4(v5, &v16, v15 + 4);
          sub_1000070DC(v5, v16, v10, v15);
          v15 = v14;
          if (v14)
          {
            v14 = sub_1000685CC(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = sub_100173240(&v13);
  }

  if (a2 != a3)
  {
    sub_100173298();
  }

  return result;
}

uint64_t sub_100173240(uint64_t a1)
{
  sub_100009970(*a1, *(a1 + 16));
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

    sub_100009970(*a1, v2);
  }

  return a1;
}

void sub_100173298()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  sub_10000702C();
}

uint64_t **sub_1001732FC(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = sub_1000685CC(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          std::string::operator=((v8 + 7), (v9 + 7));
          v16 = 0;
          v10 = sub_1001355F4(v5, &v16, v15 + 4);
          sub_1000070DC(v5, v16, v10, v15);
          v15 = v14;
          if (v14)
          {
            v14 = sub_1000685CC(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = sub_100173490(&v13);
  }

  if (a2 != a3)
  {
    sub_1001734E8();
  }

  return result;
}

uint64_t sub_100173490(uint64_t a1)
{
  sub_1000DD0AC(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_1000DD0AC(*a1, v2);
  }

  return a1;
}

void sub_1001734E8()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  sub_1000E0A98();
}

uint64_t **sub_10017355C(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = sub_1000685CC(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 7) = *(v9 + 7);
          *(v8 + 16) = *(v9 + 16);
          sub_1001720F4(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = sub_1000685CC(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_10013CD24(&v12);
  }

  if (a2 != a3)
  {
    sub_1001736C8();
  }

  return result;
}

void sub_1001736B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10013CD24(va);
  _Unwind_Resume(a1);
}

void sub_100173768(uint64_t a1, void *a2)
{
  v4 = (a1 + 8);
  sub_100009970(a1, *(a1 + 8));
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

BOOL sub_1001737D4(const void **a1, const void **a2, const void **a3)
{
  if (a1 == a2)
  {
    return 1;
  }

  v15 = v3;
  v16 = v4;
  v8 = a1;
  do
  {
    result = sub_100022D3C(&v14, v8 + 4, a3 + 4);
    if (!result)
    {
      break;
    }

    v9 = v8[1];
    v10 = v8;
    if (v9)
    {
      do
      {
        v8 = v9;
        v9 = *v9;
      }

      while (v9);
    }

    else
    {
      do
      {
        v8 = v10[2];
        v11 = *v8 == v10;
        v10 = v8;
      }

      while (!v11);
    }

    v12 = a3[1];
    if (v12)
    {
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      do
      {
        v13 = a3[2];
        v11 = *v13 == a3;
        a3 = v13;
      }

      while (!v11);
    }

    a3 = v13;
  }

  while (v8 != a2);
  return result;
}

uint64_t **sub_10017389C(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = sub_1000685CC(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          v8[7] = v9[7];
          v16 = 0;
          v10 = sub_1001355F4(v5, &v16, v15 + 4);
          sub_1000070DC(v5, v16, v10, v15);
          v15 = v14;
          if (v14)
          {
            v14 = sub_1000685CC(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = sub_100173240(&v13);
  }

  if (a2 != a3)
  {
    sub_100173A2C();
  }

  return result;
}

void sub_100173A2C()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  sub_100173AB4();
}

void sub_100173A90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_1000E16DC(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100173B50(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000E16DC(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t **sub_100173B6C(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = sub_1000685CC(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 8) = *(v9 + 8);
          std::string::operator=((v8 + 5), (v9 + 5));
          std::string::operator=((v8 + 8), (v9 + 8));
          *(v8 + 22) = *(v9 + 22);
          std::string::operator=(v8 + 4, v9 + 4);
          *(v8 + 120) = *(v9 + 120);
          sub_1001723F0(v5, v14);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = sub_1000685CC(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_100173D04(&v12);
  }

  if (a2 != a3)
  {
    sub_100173D5C();
  }

  return result;
}

void sub_100173CF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100173D04(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100173D04(uint64_t a1)
{
  sub_100170380(*a1, *(a1 + 16));
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

    sub_100170380(*a1, v2);
  }

  return a1;
}

void sub_100173E68(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100173E84(v3, v2);
  _Unwind_Resume(a1);
}

void sub_100173E84(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 119) < 0)
    {
      operator delete(__p[12]);
    }

    if (*(__p + 87) < 0)
    {
      operator delete(__p[8]);
    }

    if (*(__p + 63) < 0)
    {
      operator delete(__p[5]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_100173F08(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *sub_100005C2C(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    sub_100173FBC();
  }

  return v2;
}

uint64_t sub_100174060(uint64_t a1, void **a2)
{
  v3 = 0;
  result = *sub_100005C2C(a1, &v3, a2);
  if (!result)
  {
    sub_100174104();
  }

  return result;
}

void sub_1001741C0(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10016A6D8(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t **sub_1001741DC(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = sub_1000685CC(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          *(v8 + 56) = *(v9 + 56);
          v16 = 0;
          v10 = sub_1001355F4(v5, &v16, v15 + 4);
          sub_1000070DC(v5, v16, v10, v15);
          v15 = v14;
          if (v14)
          {
            v14 = sub_1000685CC(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = sub_100173240(&v13);
  }

  if (a2 != a3)
  {
    sub_10017436C();
  }

  return result;
}

void sub_10017436C()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  sub_100134D64();
}

void sub_1001743D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_1000E16DC(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1001743F4(uint64_t a1, __int128 *a2)
{
  if (*a1 == 1)
  {
    result.n128_u64[0] = sub_10016D1B8(a1, a2).n128_u64[0];
  }

  else
  {
    v3 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v3;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v4 = *(a2 + 24);
    *(a1 + 48) = *(a2 + 5);
    *(a1 + 32) = v4;
    a2[2] = 0uLL;
    *(a2 + 3) = 0;
    v5 = a2[3];
    *(a1 + 72) = *(a2 + 8);
    *(a1 + 56) = v5;
    *(a2 + 56) = 0uLL;
    *(a2 + 6) = 0;
    v6 = *(a2 + 72);
    *(a1 + 96) = *(a2 + 11);
    *(a1 + 80) = v6;
    *(a2 + 72) = 0uLL;
    *(a2 + 11) = 0;
    result = a2[6];
    *(a1 + 120) = *(a2 + 14);
    *(a1 + 104) = result;
    a2[6] = 0uLL;
    *(a2 + 14) = 0;
    *a1 = 1;
  }

  return result;
}

void sub_100174488(const std::logic_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_1001744E8(exception, a1);
}

uint64_t sub_1001744E8(uint64_t a1, const std::logic_error *a2)
{
  *a1 = &off_101E25E78;
  std::logic_error::logic_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &off_101E2CCE0;
  *(a1 + 8) = off_101E2CD10;
  *(a1 + 24) = off_101E2CD38;
  return a1;
}

uint64_t sub_100174594(uint64_t a1)
{
  *(a1 + 24) = &off_101E25ED0;
  sub_100102904((a1 + 32));
  std::logic_error::~logic_error((a1 + 8));
  return a1;
}

void sub_1001747B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100102904(&a9);
  sub_100102904(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void sub_100174824(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_100174ACC(exception, a1);
}

void sub_100174880(uint64_t a1)
{
  *(a1 + 24) = &off_101E25ED0;
  sub_100102904((a1 + 32));
  std::logic_error::~logic_error((a1 + 8));

  operator delete();
}

void sub_1001748F4(uint64_t a1)
{
  *(a1 + 16) = &off_101E25ED0;
  sub_100102904((a1 + 24));

  std::logic_error::~logic_error(a1);
}

void sub_100174950(uint64_t a1)
{
  *(a1 + 16) = &off_101E25ED0;
  sub_100102904((a1 + 24));
  std::logic_error::~logic_error(a1);

  operator delete();
}

void sub_1001749C8(void *a1)
{
  *a1 = &off_101E25ED0;
  v1 = (a1 - 2);
  sub_100102904(a1 + 1);

  std::logic_error::~logic_error(v1);
}

void sub_100174A20(void *a1)
{
  *a1 = &off_101E25ED0;
  v1 = (a1 - 2);
  sub_100102904(a1 + 1);
  std::logic_error::~logic_error(v1);

  operator delete();
}

void sub_100174A94(std::logic_error *a1)
{
  std::logic_error::~logic_error(a1);

  operator delete();
}

uint64_t sub_100174ACC(uint64_t a1, uint64_t a2)
{
  *a1 = &off_101E25E78;
  std::logic_error::logic_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = &off_101E2CD58;
  v4 = *(a2 + 32);
  *(a1 + 24) = &off_101E25ED0;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &off_101E2CCE0;
  *(a1 + 8) = off_101E2CD10;
  *(a1 + 24) = off_101E2CD38;
  return a1;
}

double sub_100174C08(_BYTE *a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    sub_100F11BEC((a1 + 8), a2);
    sub_10016D348((a1 + 224), a2 + 216);
    a1[424] = *(a2 + 416);
  }

  else
  {

    *&result = sub_10016CF40(a1, a2).n128_u64[0];
  }

  return result;
}

uint64_t sub_100174C7C(uint64_t **a1, void **a2)
{
  v3 = sub_100007A6C(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_1000194D8(a1, v3);
  sub_100170460((v4 + 4));
  operator delete(v4);
  return 1;
}

void *sub_100174CD8(void *a1, void **a2, void **a3)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100074978(a1, a2, a3);
  return a1;
}

uint64_t sub_100174D28(uint64_t a1)
{
  *a1 = off_101E2CD80;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_100174D78(uint64_t a1)
{
  *a1 = off_101E2CD80;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

char *sub_100174E84(char *result, uint64_t a2)
{
  v2 = *(result + 1);
  *a2 = off_101E2CD80;
  *(a2 + 8) = v2;
  if (result[39] < 0)
  {
    return sub_100005F2C((a2 + 16), *(result + 2), *(result + 3));
  }

  v3 = *(result + 1);
  *(a2 + 32) = *(result + 4);
  *(a2 + 16) = v3;
  return result;
}

void sub_100174ED0(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }
}

void sub_100174EE4(void **__p)
{
  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

void sub_100174F28(uint64_t a1, _BYTE *a2)
{
  if ((*a2 & 1) == 0)
  {
    v3 = *(*(a1 + 8) + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_101762B60(a1, v3);
    }
  }
}

uint64_t sub_100174F7C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100174FC8(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *sub_100005C2C(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    sub_100175074();
  }

  return v2;
}

char *sub_1001750F4(char *__dst, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__dst + 24, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(__dst + 5) = *(a3 + 2);
    *(__dst + 24) = v6;
  }

  return __dst;
}

void sub_100175170(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10017518C(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *sub_100005C2C(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    sub_100175238();
  }

  return v2;
}

char *sub_1001752B8(char *__dst, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__dst + 24, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(__dst + 5) = *(a3 + 2);
    *(__dst + 24) = v6;
  }

  return __dst;
}

void sub_100175334(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100175350(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_100175350(a1, *a2);
    sub_100175350(a1, *(a2 + 1));
    v4 = (a2 + 48);
    sub_1000087B4(&v4);
    operator delete(a2);
  }
}

uint64_t sub_1001753B0(uint64_t a1, unsigned __int8 *a2)
{
  v4 = 0;
  v2 = *sub_100175454(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_100175454(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    while (2)
    {
      while (2)
      {
        v6 = v4;
        v7 = 32;
        v8 = a3;
        while (1)
        {
          v9 = *v8;
          v10 = *(v6 + v7);
          if (v9 != v10)
          {
            break;
          }

          ++v8;
          if (++v7 == 48)
          {
            goto LABEL_9;
          }
        }

        if (v9 < v10)
        {
          v4 = *v6;
          result = v6;
          if (*v6)
          {
            continue;
          }

          goto LABEL_17;
        }

        break;
      }

LABEL_9:
      v11 = 0;
      while (1)
      {
        v12 = *(v6 + v11 + 32);
        v13 = a3[v11];
        if (v12 != v13)
        {
          break;
        }

        if (++v11 == 16)
        {
          goto LABEL_17;
        }
      }

      if (v12 < v13)
      {
        result = v6 + 1;
        v4 = v6[1];
        if (v4)
        {
          continue;
        }
      }

      break;
    }
  }

  else
  {
    v6 = result;
  }

LABEL_17:
  *a2 = v6;
  return result;
}

uint64_t sub_1001754E8(uint64_t a1)
{
  sub_100175524(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_100175524(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

const void **sub_100175570(void *a1, const void **a2)
{
  v4 = sub_1000D3314(a1, a2);
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
    sub_1001757F4();
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

  if (!sub_100022D3C(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1001757D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_1001758B4(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100175898(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1001758B4(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1001758B4(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *sub_100175918(CellularPlanListModelLocal ***a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  CellularPlanListModelLocal::setUserSelectionChangeIccid_sync(*v1, 2, (v1 + 3), 0);
  sub_100175980(&v4);
  return sub_1000049E0(&v3);
}

void sub_100175964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100175980(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100175980(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 47) < 0)
    {
      operator delete(*(v1 + 24));
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_1001759D8(CellularPlanListModelLocal ***a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  CellularPlanListModelLocal::setUserSelectionChangeIccid_sync(*v1, 0, (v1 + 3), 0);
  sub_100175980(&v4);
  return sub_1000049E0(&v3);
}

void sub_100175A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100175980(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100175A40(uint64_t *a1)
{
  v1 = *a1;
  v26 = a1;
  v27 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "Fail";
    if (*(v1 + 9))
    {
      v4 = "Success";
    }

    v5 = (v1 + 16);
    if (*(v1 + 39) < 0)
    {
      v5 = *v5;
    }

    *buf = 136315394;
    v39 = v4;
    v40 = 2080;
    v41 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Monitor mode operation status %s. iccid:%s", buf, 0x16u);
  }

  v6 = *(v2 + 80);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = v7;
      v9 = *(v2 + 72);
      if (v9)
      {
        if (*(v1 + 9) == 1)
        {
          v10 = *(v1 + 8);
        }

        else
        {
          v10 = 0;
        }

        if ((*(*v9 + 168))(*(v2 + 72), v1 + 16))
        {
          if (v10)
          {
            (*(*v9 + 176))(v9, v1 + 16);
          }

          else
          {
            v19 = *(v2 + 40);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v20 = v1 + 16;
              if (*(v1 + 39) < 0)
              {
                v20 = *(v1 + 16);
              }

              *buf = 136315138;
              v39 = v20;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Disable SIM with iccid [%s] again.", buf, 0xCu);
            }

            CellularPlanListModelLocal::setUserSelectionChangeIccid_sync(v2, 0, v1 + 16, 0);
          }
        }

        else
        {
          (*(*v9 + 96))(buf, v9, v1 + 16);
          SlotForIccid_sync = CellularPlanListModelLocal::getSlotForIccid_sync(v2, v1 + 16);
          if (v10)
          {
            if ((*(**(v2 + 56) + 104))(*(v2 + 56)))
            {
              SlotToDisable = CellularPlanListModelLocal::getSlotToDisable(v2, v2 + 168);
              __p[0] = 0;
              __p[1] = 0;
              v31[0] = 0;
              CellularPlanListModelLocal::getIccidIfSameCellularPlanDetected_sync(v2, (v1 + 16), SlotForIccid_sync, __p);
              v13 = HIBYTE(v31[0]);
              v14 = SHIBYTE(v31[0]);
              if (SHIBYTE(v31[0]) < 0)
              {
                v13 = __p[1];
              }

              if ((SlotToDisable & 0x100000000) != 0 && v13)
              {
                v15 = *(v2 + 40);
                if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                {
                  v16 = __p[0];
                  if (v14 >= 0)
                  {
                    v16 = __p;
                  }

                  LODWORD(v36) = 136315138;
                  *(&v36 + 4) = v16;
                  _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Disable SIM with iccid [%s] after completing monitor mode.", &v36, 0xCu);
                }

                CellularPlanListModelLocal::setUserSelectionChangeIccid_sync(v2, 0, __p, 0);
                CellularPlanListModelLocal::forceTransferSimLabel(v2, __p, v1 + 16, 0);
                LOBYTE(v14) = HIBYTE(v31[0]);
              }

              if ((v14 & 0x80) != 0)
              {
                operator delete(__p[0]);
              }
            }

            if (v46 == 1)
            {
              v17 = v43;
              if ((v43 & 0x80u) != 0)
              {
                v17 = v42[1];
              }

              if (v17)
              {
                sub_10000501C(__p, "MonitorModeComplete");
                v31[1] = sub_100176214;
                *&v32 = 1;
                v37 = 0;
                v36 = 0uLL;
                sub_1001762DC(&v36, __p, &v33[1], 1uLL);
                (*(*v9 + 104))(v9, v42, &v36);
                v28[0] = &v36;
                sub_100176578(v28);
                sub_100176638(&v31[1]);
                if (SHIBYTE(v31[0]) < 0)
                {
                  operator delete(__p[0]);
                }
              }
            }
          }

          v36 = 0uLL;
          v37 = 0;
          CellularPlanListModelLocal::getCarrierNameForIccid_sync(v2, v1 + 16, &v36);
          if (v46 == 1 && v45 == 1)
          {
            v18 = (CFAbsoluteTimeGetCurrent() - v44);
          }

          else
          {
            v18 = 0;
          }

          if (*(v1 + 9) == 1 && (*(v1 + 8) & 1) == 0)
          {
            v22 = sub_100007A6C(v2 + 248, (v1 + 16));
            if (v2 + 256 == v22)
            {
              goto LABEL_57;
            }

            v23 = (*(**(v2 + 56) + 384))(*(v2 + 56), v22 + 80, v22 + 104, v22 + 128, v22 + 152, v1 + 16);
            v24 = *(v2 + 40);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(__p[0]) = 67109120;
              HIDWORD(__p[0]) = v23;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I suppressMonitorModeFailureAlert: %d", __p, 8u);
            }

            if ((v23 & 1) == 0)
            {
LABEL_57:
              v34 = 0u;
              v35 = 0u;
              v32 = 0u;
              *v33 = 0u;
              *__p = 0u;
              *v31 = 0u;
              CellularPlanListModelLocal::getPhoneNumberForSlot_sync(v2, SlotForIccid_sync, __p);
              v25 = *(v1 + 8);
              if (BYTE8(v35) == 1)
              {
                sub_10015E30C(__p, v28);
              }

              else
              {
                sub_10000501C(v28, "");
              }

              (*(*v9 + 120))(v9, v25, &v36, v28);
              if (v29 < 0)
              {
                operator delete(v28[0]);
              }

              if (BYTE8(v35) == 1)
              {
                if (SHIBYTE(v34) < 0)
                {
                  operator delete(v33[1]);
                }

                if (SHIBYTE(v32) < 0)
                {
                  operator delete(v31[1]);
                }

                if (SHIBYTE(v31[0]) < 0)
                {
                  operator delete(__p[0]);
                }
              }
            }
          }

          (*(*v9 + 128))(v9, &v36, *(v1 + 8), v18, v1 + 16);
          if (SHIBYTE(v37) < 0)
          {
            operator delete(v36);
          }

          if (v46 == 1)
          {
            sub_1002813D0(buf);
          }
        }

        CellularPlanListModelLocal::notifyLocalPlanInfoUpdate(v2);
        (*(*v9 + 56))(v9);
      }

      sub_100004A34(v8);
    }
  }

  sub_1001761BC(&v27);
  return sub_1000049E0(&v26);
}

void sub_1001760E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (LOBYTE(STACK[0x5B0]) == 1)
  {
    sub_1002813D0(&a34);
  }

  sub_100004A34(v34);
  sub_1001761BC(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_1001761BC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 39) < 0)
    {
      operator delete(*(v1 + 16));
    }

    operator delete();
  }

  return result;
}

void *sub_100176214(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      *(a3 + 8) = *(a2 + 8);
      *a3 = sub_100176214;
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    *(a3 + 8) = *(a2 + 8);
    *a3 = sub_100176214;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
  }

  if (a4)
  {
  }

  else
  {
    v6 = a5 == &unk_1017E6DA0;
  }

  if (v6)
  {
    return (a2 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001762DC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100176364(result, a4);
  }

  return result;
}

void sub_100176344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100176578(&a9);
  _Unwind_Resume(a1);
}

void sub_100176364(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    sub_1001763B4(a1, a2);
  }

  sub_1000CE3D4();
}

void sub_1001763B4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_100013D10();
}

char *sub_100176410(int a1, __int128 *a2, __int128 *a3, char *__dst)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_100176498(__dst, v6);
      v6 = (v6 + 56);
      __dst += 56;
      v7 -= 56;
    }

    while (v6 != a3);
  }

  return __dst;
}

void sub_100176470(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 56;
    do
    {
      sub_100176528(v4);
      v4 -= 56;
      v2 += 56;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

char *sub_100176498(char *__dst, __int128 *a2)
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

  *(__dst + 3) = 0;
  *(__dst + 4) = 0;
  v7 = *(a2 + 3);
  v6 = a2 + 24;
  v5 = v7;
  if (v7)
  {
    v5(1, v6, __dst + 24, 0, 0);
  }

  return __dst;
}

void sub_10017650C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100176528(uint64_t a1)
{
  sub_100176638((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void sub_100176578(void ***a1)
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
        v4 -= 56;
        sub_100176528(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1001765FC(uint64_t a1)
{
  sub_100176638((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t (**sub_100176638(uint64_t (**result)(void, void, void, void, void)))(void, void, void, void, void)
{
  if (*result)
  {
    return (*result)(0, result, 0, 0, 0);
  }

  return result;
}

uint64_t *sub_100176670(uint64_t *a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *v1;
  v3 = *(*v1 + 80);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(v2 + 72);
      if (v6)
      {
        (*(*v6 + 160))(v6, v1 + 8);
      }

      sub_100004A34(v5);
    }
  }

  sub_1000EF424(&v9);
  return sub_1000049E0(&v8);
}

void sub_100176704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_1000EF424(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t **sub_100176728(uint64_t **result, std::string *a2, std::string *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v10 = result;
    v11 = v8;
    v12 = v8;
    if (v8)
    {
      v11 = sub_1000685CC(v8);
      while (a2 != a3)
      {
        sub_100176830(v5, a2, v8);
        if (v9)
        {
          v8 = v11;
          v12 = v11;
          if (!v11)
          {
            ++a2;
            break;
          }

          v11 = sub_1000685CC(v11);
        }

        else
        {
          v8 = v12;
        }

        ++a2;
        if (!v8)
        {
          break;
        }
      }
    }

    result = sub_100173240(&v10);
  }

  while (a2 != a3)
  {
    result = sub_100005BA0(v5, &a2->__r_.__value_.__l.__data_);
    ++a2;
  }

  return result;
}

void sub_10017681C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100173240(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100176830(uint64_t **a1, std::string *a2, uint64_t a3)
{
  v9 = 0;
  v6 = sub_100005C2C(a1, &v9, &a2->__r_.__value_.__l.__data_);
  if (*v6)
  {
    return *v6;
  }

  v7 = v6;
  std::string::operator=((a3 + 32), a2);
  sub_1000070DC(a1, v9, v7, a3);
  return a3;
}

uint64_t sub_1001768B8(__CFDictionary *a1, void *cf, uint64_t a3)
{
  key = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v6 = a3;
  if (a3)
  {
    CFRetain(a3);
    if (key)
    {
      CFDictionaryAddValue(a1, key, a3);
      a3 = 1;
    }

    else
    {
      a3 = 0;
    }
  }

  sub_100DA3324(&v6);
  sub_100DA3324(&key);
  return a3;
}

void sub_100176938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_100DA3324(&a9);
  sub_100DA3324(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_10017695C(uint64_t a1, void **a2)
{
  v4 = 0;
  v2 = *sub_100005C2C(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_100176A04(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2080;
  *(a3 + 14) = v4;
  return result;
}

void sub_100176A28(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_100176B48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12)
{
  if (a12)
  {
    sub_101760EE4(a12);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100176BAC(uint64_t a1, void *a2)
{
  ctu::OsLogContext::OsLogContext(&v10, kCtLoggingSystemName, "rm.state");
  sub_100176D38((a1 + 8), "RadioState", QOS_CLASS_USER_INITIATED, &v10);
  ctu::OsLogContext::~OsLogContext(&v10);
  *a1 = off_101E2CE00;
  v4 = a2[1];
  *(a1 + 48) = *a2;
  *(a1 + 56) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000501C(&__p, "RadioState");
  v5 = *(a1 + 24);
  v7 = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  ctu::RestModule::RestModule();
  if (v7)
  {
    dispatch_release(v7);
  }

  if (v9 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 104) = 0;
  *(a1 + 112) = 4;
  *(a1 + 120) = 5;
  *(a1 + 124) = 4;
  *(a1 + 132) = 0;
  return a1;
}

void sub_100176CD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a11)
  {
    dispatch_release(a11);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  v19 = v17[7];
  if (v19)
  {
    sub_100004A34(v19);
  }

  ctu::OsLogLogger::~OsLogLogger((v17 + 5));
  sub_1000C0544(v17 + 1);
  _Unwind_Resume(a1);
}

void *sub_100176D38(void *a1, const char *a2, dispatch_qos_class_t qos_class, const OsLogContext *a4)
{
  v7 = dispatch_queue_attr_make_with_qos_class(0, qos_class, 0);
  v8 = dispatch_queue_create(a2, v7);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = v8;
  if (v8)
  {
    v9 = v8;
    dispatch_retain(v8);
    a1[3] = 0;
    dispatch_release(v9);
  }

  else
  {
    a1[3] = 0;
  }

  ctu::OsLogLogger::OsLogLogger(v11, a4);
  ctu::OsLogLogger::OsLogLogger((a1 + 4), v11);
  ctu::OsLogLogger::~OsLogLogger(v11);
  return a1;
}

void sub_100176DD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

void *sub_100176DFC(void *a1)
{
  *a1 = off_101E2CE00;
  sub_1001775AC((a1 + 10));
  v2 = a1[9];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    sub_100004A34(v3);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 5));
  sub_1000C0544(a1 + 1);
  return a1;
}

void sub_100176E6C(void *a1)
{
  sub_100176DFC(a1);

  operator delete();
}

void sub_100176EA4(uint64_t a1, int a2, ServiceStage *this)
{
  ServiceStage::holdOffStage(&group[1], this);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_100176FB4(uint64_t a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_1001770A8(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

void sub_10017718C(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

uint64_t sub_100177270(uint64_t a1)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_100178428;
  v5[3] = &unk_101E2D098;
  v5[4] = a1 + 8;
  v5[5] = &v4;
  v6 = v5;
  v2 = a1 + 24;
  v1 = *(a1 + 24);
  if (*(v2 + 8))
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_100178474;
    v10 = &unk_101E2D0D8;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_100178438;
    v10 = &unk_101E2D0B8;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13;
}

void sub_100177398(uint64_t a1, int a2)
{
  v2 = *(a1 + 128);
  if (v2 != a2 && (v2 | 2) == 2)
  {
    *(a1 + 132) = v2 == 2;
    sub_1001773C0(a1);
  }
}

void sub_1001773C0(uint64_t a1)
{
  v2 = *(a1 + 112);
  v3 = *(a1 + 120);
  v4 = *(a1 + 124);
  if (v3 <= 2)
  {
    if (*(a1 + 120))
    {
      if (v3 != 1)
      {
        if (v3 == 2)
        {
          v5 = 0;
          v3 = 6;
          goto LABEL_16;
        }

        goto LABEL_4;
      }

LABEL_11:
      v5 = 0;
      v3 = 2;
      goto LABEL_16;
    }

    v5 = 1;
  }

  else
  {
    if (*(a1 + 120) <= 5u)
    {
      if (v3 - 3 >= 2 && v3 == 5)
      {
        v5 = 0;
        v3 = 4;
        goto LABEL_16;
      }

LABEL_4:
      v5 = 0;
      v3 = 3;
      goto LABEL_16;
    }

    if (v3 != 6)
    {
      if (v3 != 7)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }

    v5 = 0;
    v3 = 1;
  }

LABEL_16:
  if ((v4 - 1) < 2)
  {
    *(a1 + 120) = 4;
    v6 = 3;
  }

  else if ((v4 - 3) >= 2)
  {
    if (v4 == 5)
    {
      v6 = 5;
      *(a1 + 120) = 5;
    }

    else if ((v5 & *(a1 + 132)) != 0)
    {
      v6 = 1;
    }

    else
    {
      v6 = v3;
    }
  }

  else
  {
    *(a1 + 120) = 5;
    v6 = 4;
  }

  if (v6 != v2)
  {
    *(a1 + 112) = v6;
    v7 = *(a1 + 104);
    if (v7)
    {
      (*(*v7 + 48))(v7);
    }

    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = radioStateAsString();
      v11 = 2080;
      v12 = radioStateAsString();
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Radio state changing from %s -> %s", &v9, 0x16u);
    }
  }
}

uint64_t sub_1001775AC(uint64_t a1)
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

void sub_1001776AC(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_100177780);
  __cxa_rethrow();
}

void sub_1001776EC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100177740(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100177780(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1001777AC(ServiceManager::Service *this)
{
  *this = off_101E2CF18;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_100177808(ServiceManager::Service *this)
{
  *this = off_101E2CF18;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_100177888@<X0>(void *a1@<X8>)
{
  v2 = 5;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_1001778CC(uint64_t a1, NSObject **a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
    sub_100176FB4(v2, &v4);
  }

  sub_100176FB4(v2, &v4);
}

uint64_t *sub_100177980(uint64_t *a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  ctu::RestModule::disconnect((*v1 + 64));
  sub_1000FF844(&v4);
  return sub_1000049E0(&v3);
}

void sub_1001779C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1001779E4(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6[0] = v1;
  v2 = *v1;
  Registry::createRestModuleOneTimeUseConnection(&v7, *(*v1 + 48));
  ctu::RestModule::connect();
  if (v8)
  {
    sub_100004A34(v8);
  }

  v3 = sub_100177AB4((v2 + 80), v2 + 64);
  if (capabilities::ct::supportsCMASCampOnlyMode(v3))
  {
    v6[1] = sub_100177398;
    v6[2] = 0;
    sub_100178000();
  }

  sub_1000FF844(v6);
  return sub_1000049E0(&v5);
}

void sub_100177A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100177AB4(void *a1, uint64_t a2)
{
  v4 = a2;
  sub_100177B18(a1, &v4);
  result = a1[3];
  if (result)
  {
    return (*(*result + 48))(result, a1 + 4);
  }

  return result;
}

void *sub_100177B18(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v5[0] = off_101E2CF98;
  v5[1] = v3;
  v5[3] = v5;
  sub_100177D94(v5, a1);
  sub_1001775AC(v5);
  return a1;
}

uint64_t sub_100177C1C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E2CF98;
  a2[1] = v2;
  return result;
}

uint64_t sub_100177C50(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100177C9C(uint64_t a1, unsigned int *a2)
{
  v2 = xpc_int64_create(*a2);
  if (!v2)
  {
    v2 = xpc_null_create();
  }

  sub_10000501C(&__p, "/cc/props/radio_state");
  object = v2;
  if (v2)
  {
    xpc_retain(v2);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v2);
}

void sub_100177D4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v15);
  _Unwind_Resume(a1);
}

void *sub_100177D94(void *result, void *a2)
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

void sub_100177FF4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_1001780EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10017819C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E2D028;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1001781D4(void *a1, xpc_object_t *a2)
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

  v10 = a1[3];
  v11 = a1[4];
  v12 = (a1[2] + (v11 >> 1));
  if (v11)
  {
    v10 = *(*v12 + v10);
  }

  return v10(v12, v5);
}

uint64_t sub_1001782CC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100178318(uint64_t **a1)
{
  v3 = a1;
  v1 = *a1;
  v2 = **a1;
  *(v2 + 124) = *(v1 + 2);
  sub_1001773C0(v2);
  operator delete();
}

void sub_1001783A0(uint64_t **a1)
{
  v3 = a1;
  v1 = *a1;
  v2 = **a1;
  *(v2 + 120) = *(v1 + 8);
  sub_1001773C0(v2);
  operator delete();
}

uint64_t sub_100178438(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_100178474(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

double sub_1001784B0(uint64_t a1)
{
  *a1 = off_101E2D108;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  return result;
}

void sub_1001784E4(uint64_t a1)
{
  *a1 = off_101E2D108;
  v4 = (a1 + 48);
  sub_100140868(&v4);
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    sub_100140988(a1 + 40, v2);
  }

  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v3)
  {
    sub_100140988(a1 + 32, v3);
  }

  v4 = (a1 + 8);
  sub_100140868(&v4);
  PB::Base::~Base(a1);
}

void sub_10017857C(uint64_t a1)
{
  sub_1001784E4(a1);

  operator delete();
}

uint64_t sub_1001785B4(uint64_t result, void *a2)
{
  *result = off_101E2D108;
  *(result + 8) = 0u;
  *(result + 40) = 0u;
  *(result + 24) = 0u;
  *(result + 56) = 0u;
  if (a2[5])
  {
    operator new();
  }

  if (a2[4])
  {
    operator new();
  }

  if (a2[6] != a2[7])
  {
    sub_100178738();
  }

  if (a2[1] != a2[2])
  {
    sub_10017888C();
  }

  return result;
}

uint64_t sub_1001789E4(void *a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = a1[1];
  v6 = a1[2];
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, this, "linkedInfos");
  }

  if (a1[4])
  {
    PB::TextFormatter::format();
  }

  if (a1[5])
  {
    PB::TextFormatter::format();
  }

  v8 = a1[6];
  v9 = a1[7];
  while (v8 != v9)
  {
    v10 = *v8++;
    (*(*v10 + 32))(v10, this, "pairedDeviceInfo");
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_100178B00(int a1, PB::Reader *this)
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
      if ((v9 >> 3) > 3)
      {
        if (v21 == 4)
        {
          sub_100178DB0();
        }

        if (v21 == 5)
        {
          sub_100178EFC();
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

void *sub_100179048(void *result, PB::Writer *this)
{
  v3 = result;
  if (result[5])
  {
    result = PB::Writer::write();
  }

  if (v3[4])
  {
    result = PB::Writer::write();
  }

  v4 = v3[6];
  v5 = v3[7];
  while (v4 != v5)
  {
    v6 = *v4++;
    result = PB::Writer::writeSubmessage(this, v6, 4u);
  }

  v8 = v3[1];
  v7 = v3[2];
  while (v8 != v7)
  {
    v9 = *v8++;
    result = PB::Writer::writeSubmessage(this, v9, 5u);
  }

  return result;
}

uint64_t alwaysUseIpv4v6(Registry **a1, uint64_t a2)
{
  cf = 0;
  ServiceMap = Registry::getServiceMap(*a1);
  v5 = ServiceMap;
  if ((v6 & 0x8000000000000000) != 0)
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
  v31 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v31);
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
  (*(*v12 + 96))(&cf, v12, a2, 1, @"RequiresIPv4v6PDPTypes", kCFBooleanFalse, 0);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  v14 = cf;
  LOBYTE(v31) = 0;
  if (cf && (v15 = CFGetTypeID(cf), v15 == CFBooleanGetTypeID()))
  {
    ctu::cf::assign(&v31, v14, v16);
    v17 = v31;
  }

  else
  {
    v17 = 0;
  }

  v18 = Registry::getServiceMap(*a1);
  v19 = v18;
  if ((v20 & 0x8000000000000000) != 0)
  {
    v21 = (v20 & 0x7FFFFFFFFFFFFFFFLL);
    v22 = 5381;
    do
    {
      v20 = v22;
      v23 = *v21++;
      v22 = (33 * v22) ^ v23;
    }

    while (v23);
  }

  std::mutex::lock(v18);
  v31 = v20;
  v24 = sub_100009510(&v19[1].__m_.__sig, &v31);
  if (v24)
  {
    v26 = v24[3];
    v25 = v24[4];
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v19);
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v25);
      v27 = 0;
      goto LABEL_23;
    }
  }

  else
  {
    v26 = 0;
  }

  std::mutex::unlock(v19);
  v25 = 0;
  v27 = 1;
LABEL_23:
  if ((v17 & (v26 != 0)) == 1)
  {
    v28 = (*(*v26 + 768))(v26, a2);
    if (v27)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v28 = 0;
  if ((v27 & 1) == 0)
  {
LABEL_27:
    sub_100004A34(v25);
  }

LABEL_28:
  sub_10000A1EC(&cf);
  return v28;
}

void sub_100179358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  if ((v9 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  sub_10000A1EC(&a9);
  _Unwind_Resume(a1);
}

uint64_t supportsPDNAuthentication(Registry **a1, uint64_t a2)
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
  (*(*v11 + 96))(&cf, v11, a2, 1, @"SupportsPDNAuthentication", kCFBooleanFalse, 0);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  v13 = cf;
  LOBYTE(v18) = 0;
  if (cf)
  {
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

void sub_100179514(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

unint64_t getNoDataSuspendDelayTimeout(Registry **a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    goto LABEL_15;
  }

  number = 0;
  ServiceMap = Registry::getServiceMap(*a1);
  v6 = ServiceMap;
  if ((v7 & 0x8000000000000000) != 0)
  {
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(ServiceMap);
  valuePtr = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &valuePtr);
  if (!v11)
  {
    v13 = 0;
    goto LABEL_9;
  }

  v13 = v11[3];
  v12 = v11[4];
  if (!v12)
  {
LABEL_9:
    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    goto LABEL_10;
  }

  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v6);
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v12);
  v14 = 0;
LABEL_10:
  (*(*v13 + 96))(&v28, v13, a2, 1, @"SatelliteNoDataSuspendDelayTimeout", 0, 0);
  sub_10010B240(&number, &v28);
  sub_10000A1EC(&v28);
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  if (number)
  {
    valuePtr = 0;
    ctu::cf::assign(&valuePtr, number, v15);
    v16 = valuePtr;
    goto LABEL_27;
  }

  sub_100029A48(&number);
LABEL_15:
  number = 0;
  v17 = Registry::getServiceMap(*a1);
  v18 = v17;
  if ((v19 & 0x8000000000000000) != 0)
  {
    v20 = (v19 & 0x7FFFFFFFFFFFFFFFLL);
    v21 = 5381;
    do
    {
      v19 = v21;
      v22 = *v20++;
      v21 = (33 * v21) ^ v22;
    }

    while (v22);
  }

  std::mutex::lock(v17);
  valuePtr = v19;
  v23 = sub_100009510(&v18[1].__m_.__sig, &valuePtr);
  if (!v23)
  {
    v25 = 0;
    goto LABEL_22;
  }

  v25 = v23[3];
  v24 = v23[4];
  if (!v24)
  {
LABEL_22:
    std::mutex::unlock(v18);
    v24 = 0;
    v26 = 1;
    goto LABEL_23;
  }

  atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v18);
  atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v24);
  v26 = 0;
LABEL_23:
  (*(*v25 + 96))(&v28, v25, a2, 1, @"NoDataSuspendDelayTimeout", 0, 0);
  sub_10010B240(&number, &v28);
  sub_10000A1EC(&v28);
  if ((v26 & 1) == 0)
  {
    sub_100004A34(v24);
  }

  v16 = 45;
  LODWORD(valuePtr) = 45;
  if (number)
  {
    CFNumberGetValue(number, kCFNumberIntType, &valuePtr);
    v16 = valuePtr;
  }

LABEL_27:
  sub_100029A48(&number);
  return v16;
}

void sub_1001797D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100029A48(va);
  _Unwind_Resume(a1);
}

uint64_t getBBCallSuspendDelayTimeout(Registry **a1, uint64_t a2)
{
  number = 0;
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
  valuePtr = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &valuePtr);
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
  (*(*v11 + 96))(&v15, v11, a2, 1, @"BBCallSuspendDelayTimeout", 0, 0);
  sub_10010B240(&number, &v15);
  sub_10000A1EC(&v15);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  LODWORD(valuePtr) = 0;
  if (number)
  {
    CFNumberGetValue(number, kCFNumberIntType, &valuePtr);
    v13 = valuePtr;
  }

  else
  {
    v13 = 0;
  }

  sub_100029A48(&number);
  return v13;
}

void sub_10017999C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100029A48(va);
  _Unwind_Resume(a1);
}

uint64_t isCallHandoverSupported(Registry **a1, uint64_t a2)
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
  *buf = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, buf);
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
      if (!v11)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
  v12 = 1;
  if (!v11)
  {
LABEL_7:
    v13 = sCTOsLogDefault;
    if (os_log_type_enabled(sCTOsLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "DATA";
      v32 = 2080;
      v33 = "isCallHandoverSupported";
      v14 = "#I %s: %s: DataService uninitialized";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 0x16u);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

LABEL_11:
  if ((*(*v11 + 1064))(v11))
  {
    v13 = sCTOsLogDefault;
    if (os_log_type_enabled(sCTOsLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "DATA";
      v32 = 2080;
      v33 = "isCallHandoverSupported";
      v14 = "#I %s: %s: In Call Handover is blocked";
      goto LABEL_14;
    }

LABEL_15:
    v15 = 0;
    goto LABEL_39;
  }

  v29 = 0;
  v30 = 0;
  (*(*v11 + 856))(&v29, v11, a2);
  if (v29)
  {
    theDict = 0;
    (*(*v29 + 40))(&theDict);
    if (theDict)
    {
      if (a2 == 2)
      {
        v16 = @"WiFiCallingInCallHandover2";
      }

      else
      {
        v16 = @"WiFiCallingInCallHandover";
      }

      v27 = 0;
      *buf = CFPreferencesCopyAppValue(v16, @"com.apple.commcenter");
      sub_10017A3BC(&v27, buf);
      v17 = v27;
      if (v27)
      {
        v18 = sCTOsLogDefault;
        if (os_log_type_enabled(sCTOsLogDefault, OS_LOG_TYPE_DEFAULT))
        {
          Value = CFBooleanGetValue(v17);
          v20 = "true";
          *buf = 136315650;
          *&buf[4] = "DATA";
          v33 = "isCallHandoverSupported";
          v32 = 2080;
          if (!Value)
          {
            v20 = "false";
          }

          v34 = 2080;
          v35 = v20;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s: %s: SupportCallHandover override is present = in call handover allowed = %s", buf, 0x20u);
          v17 = v27;
        }

        v15 = CFBooleanGetValue(v17) != 0;
      }

      else
      {
        v21 = CFDictionaryGetValue(theDict, @"SupportCallHandover");
        v22 = v21;
        if (v21 && (v23 = CFGetTypeID(v21), v23 == CFBooleanGetTypeID()))
        {
          buf[0] = 1;
          ctu::cf::assign(buf, v22, v24);
          v15 = buf[0];
        }

        else
        {
          v25 = sCTOsLogDefault;
          if (os_log_type_enabled(sCTOsLogDefault, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            *&buf[4] = "DATA";
            v32 = 2080;
            v33 = "isCallHandoverSupported";
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I %s: %s: SupportCallHandover is not found in TechSettings", buf, 0x16u);
          }

          v15 = 1;
        }
      }

      sub_100045C8C(&v27);
    }

    else
    {
      v15 = 1;
    }

    sub_10001021C(&theDict);
  }

  else
  {
    v15 = 1;
  }

  if (v30)
  {
    sub_100004A34(v30);
  }

LABEL_39:
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  return v15 & 1;
}

void sub_100179E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_100045C8C(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(a1);
}

unsigned int *getCarrierAssignedVoLTEServiceMask(Registry **a1, uint64_t a2)
{
  v22[0] = @"IMSConfig";
  v22[1] = @"CarrierAssignedVoLTEServiceMask";
  v20 = 0;
  v21 = 0;
  __p = 0;
  sub_10005B328(&__p, v22, &v23, 2uLL);
  cf = 0;
  ServiceMap = Registry::getServiceMap(*a1);
  v5 = ServiceMap;
  if ((v6 & 0x8000000000000000) != 0)
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
  v22[0] = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, v22);
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
  (*(*v12 + 104))(&cf, v12, a2, 1, &__p, 0, 0);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  v14 = cf;
  LODWORD(v22[0]) = 0;
  if (cf)
  {
    v15 = CFGetTypeID(cf);
    if (v15 == CFNumberGetTypeID())
    {
      ctu::cf::assign(v22, v14, v16);
      v14 = LODWORD(v22[0]);
    }

    else
    {
      v14 = 0;
    }
  }

  sub_10000A1EC(&cf);
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  return v14;
}

void sub_10017A084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12)
{
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t isCallHandoverWithoutIMSVoiceServiceSupported(Registry **a1, uint64_t a2)
{
  if (!isCallHandoverSupported(a1, a2))
  {
    LOBYTE(v7) = 0;
    return v7 & 1;
  }

  CarrierAssignedVoLTEServiceMask = getCarrierAssignedVoLTEServiceMask(a1, a2);
  if (CarrierAssignedVoLTEServiceMask)
  {
    v5 = CarrierAssignedVoLTEServiceMask;
    v6 = sCTOsLogDefault;
    if (os_log_type_enabled(sCTOsLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "DATA";
      *&buf[12] = 2080;
      *&buf[14] = "isCallHandoverWithoutIMSVoiceServiceSupported";
      *&buf[22] = 1024;
      v24 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: %s: Carrier insists using assigned IMSPref=%du", buf, 0x1Cu);
    }

    LOBYTE(v7) = 1;
    return v7 & 1;
  }

  v22[0] = @"IMSConfig";
  v22[1] = @"AllowHandoverWithoutIMSVoiceService";
  memset(buf, 0, sizeof(buf));
  sub_10005B328(buf, v22, buf, 2uLL);
  cf = 0;
  ServiceMap = Registry::getServiceMap(*a1);
  v10 = ServiceMap;
  if ((v11 & 0x8000000000000000) != 0)
  {
    v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
    v13 = 5381;
    do
    {
      v11 = v13;
      v14 = *v12++;
      v13 = (33 * v13) ^ v14;
    }

    while (v14);
  }

  std::mutex::lock(ServiceMap);
  v22[0] = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, v22);
  if (!v15)
  {
    v17 = 0;
    goto LABEL_15;
  }

  v17 = v15[3];
  v16 = v15[4];
  if (!v16)
  {
LABEL_15:
    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
    goto LABEL_16;
  }

  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v10);
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v16);
  v18 = 0;
LABEL_16:
  (*(*v17 + 104))(&cf, v17, a2, 1, buf, kCFBooleanFalse, 0);
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  v7 = cf;
  LOBYTE(v22[0]) = 0;
  if (cf)
  {
    v19 = CFGetTypeID(cf);
    if (v19 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(v22, v7, v20);
      LOBYTE(v7) = v22[0];
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  sub_10000A1EC(&cf);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  return v7 & 1;
}

void sub_10017A364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10017A3BC(void *a1, CFTypeRef *a2)
{
  v4 = *a2;
  if (*a2 && (v5 = CFGetTypeID(*a2), v5 == CFBooleanGetTypeID()))
  {
    *a1 = v4;
  }

  else
  {
    *a1 = 0;
    if (*a2)
    {
      CFRelease(*a2);
    }
  }

  return a1;
}

uint64_t sub_10017A428(xpc_object_t *a1)
{
  if (xpc_get_type(*a1) == &_xpc_type_dictionary)
  {
    remote_connection = xpc_dictionary_get_remote_connection(*a1);
    v6 = remote_connection;
    if (remote_connection)
    {
      v3 = remote_connection;
      xpc_retain(remote_connection);
    }

    else
    {
      v3 = xpc_null_create();
      v6 = v3;
    }

    if (xpc_get_type(v3) == &_xpc_type_connection)
    {
      memset(v5, 0, sizeof(v5));
      sub_1000155C8(v5);
    }

    xpc_release(v3);
  }

  return 0;
}

void sub_10017A554(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  if (a11)
  {
    sub_101762C10(a11);
  }

  xpc_release(object);
  _Unwind_Resume(a1);
}

void _ReInitThrottleTimer(uint64_t a1, Registry **a2, char *a3, uint64_t a4)
{
  ServiceMap = Registry::getServiceMap(*a2);
  v8 = ServiceMap;
  if ((v9 & 0x8000000000000000) != 0)
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
  v19 = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &v19);
  if (!v13)
  {
    v15 = 0;
LABEL_9:
    std::mutex::unlock(v8);
    v14 = 0;
    v16 = 1;
    if (!v15)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v15 = v13[3];
  v14 = v13[4];
  if (!v14)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v8);
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v14);
  v16 = 0;
  if (!v15)
  {
LABEL_11:
    if (v16)
    {
      return;
    }

    goto LABEL_12;
  }

LABEL_10:
  sub_10000501C(__p, a3);
  (*(*v15 + 352))(v15, a1, __p, a4);
  if ((v18 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  operator delete(__p[0]);
  if (v16)
  {
    return;
  }

LABEL_12:
  sub_100004A34(v14);
}

void sub_10017A6F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if ((v15 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void _DataSettingsChanged(uint64_t a1, Registry **a2, int a3, uint64_t a4)
{
  _ReInitThrottleTimer(a1, a2, "due to _DataSettingsChanged", 1);
  _PacketContextCellChanged(a1, a2, 0, a4);
  v28 = 0;
  v29 = 0;
  ServiceMap = Registry::getServiceMap(*a2);
  v9 = ServiceMap;
  if ((v10 & 0x8000000000000000) != 0)
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
  v30 = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, &v30);
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
      goto LABEL_9;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
LABEL_9:
  (*(*v16 + 8))(&v28, v16, a1);
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  if (v28)
  {
    (*(*v28 + 392))();
  }

  if (!a3)
  {
    v18 = Registry::getServiceMap(*a2);
    v19 = v18;
    if ((v20 & 0x8000000000000000) != 0)
    {
      v21 = (v20 & 0x7FFFFFFFFFFFFFFFLL);
      v22 = 5381;
      do
      {
        v20 = v22;
        v23 = *v21++;
        v22 = (33 * v22) ^ v23;
      }

      while (v23);
    }

    std::mutex::lock(v18);
    v30 = v20;
    v24 = sub_100009510(&v19[1].__m_.__sig, &v30);
    if (v24)
    {
      v26 = v24[3];
      v25 = v24[4];
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v19);
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v25);
        v27 = 0;
        if (!v26)
        {
LABEL_24:
          if ((v27 & 1) == 0)
          {
            sub_100004A34(v25);
          }

          goto LABEL_26;
        }

LABEL_23:
        (*(*v26 + 336))(v26, a1, 4, 1);
        goto LABEL_24;
      }
    }

    else
    {
      v26 = 0;
    }

    std::mutex::unlock(v19);
    v25 = 0;
    v27 = 1;
    if (!v26)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_26:
  if (v29)
  {
    sub_100004A34(v29);
  }
}

void sub_10017A9A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_10017A9E0()
{
  if (v0)
  {
    JUMPOUT(0x10017A9D8);
  }

  JUMPOUT(0x10017A9D0);
}

void _PacketContextCellChanged(uint64_t a1, Registry **a2, uint64_t a3, uint64_t a4)
{
  ServiceMap = Registry::getServiceMap(*a2);
  v8 = ServiceMap;
  if ((v9 & 0x8000000000000000) != 0)
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
  v17 = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &v17);
  if (!v13)
  {
    v15 = 0;
LABEL_9:
    std::mutex::unlock(v8);
    v14 = 0;
    v16 = 1;
    if (!v15)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v15 = v13[3];
  v14 = v13[4];
  if (!v14)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v8);
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v14);
  v16 = 0;
  if (v15)
  {
LABEL_10:
    (*(*v15 + 368))(v15, a1, a3, a4, 0);
  }

LABEL_11:
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }
}

void sub_10017AB24(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void ResetAllPacketHandlersAPNs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *sub_100020154();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    *v10 = 136315394;
    *&v10[4] = sub_100462D40(a2);
    *&v10[12] = 1024;
    *&v10[14] = a1;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "ResetAllPacketHandlersAPNs, %s[%d]", v10, 0x12u);
  }

  *v10 = 0;
  *&v10[8] = 0;
  sub_10020A8B4(v9, v10);
  if (*v10)
  {
    (*(**v10 + 664))(*v10, a1, a2, a3, a4);
  }

  if (*&v10[8])
  {
    sub_100004A34(*&v10[8]);
  }
}

void sub_10017AC6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void ResetAllPacketHandlersAPNs(Registry *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = 0;
  sub_10020A8B4(a1, &v7);
  if (v7)
  {
    v6 = (*(*v7 + 808))(v7);
    ResetAllPacketHandlersAPNs(v6, a1, a2, a3);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }
}

void sub_10017AD20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL needsAPN(Registry **a1)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v2 = ServiceMap;
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  std::mutex::lock(ServiceMap);
  v13 = v3;
  v7 = sub_100009510(&v2[1].__m_.__sig, &v13);
  if (v7)
  {
    v9 = v7[3];
    v8 = v7[4];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v2);
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v8);
      v10 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v9 = 0;
  }

  std::mutex::unlock(v2);
  v8 = 0;
  v10 = 1;
LABEL_9:
  RadioAccessTechnology = RegistrationInterface::getRadioAccessTechnology(v9);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v8);
  }

  return (RadioAccessTechnology - 6) < 0xFFFFFFFD;
}

void sub_10017AE28(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10017AE44(std::mutex *this@<X0>, void *a2@<X8>)
{
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

  std::mutex::lock(this);
  v11 = v4;
  v8 = sub_100009510(&this[1].__m_.__sig, &v11);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  std::mutex::unlock(this);
  *a2 = v10;
  a2[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v9);
  }
}

void sub_10017AF08(uint64_t a1)
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  v1 = a1;
  sub_100A5C398(v2, &v1, "kPacketGetProperty", sub_10001F084, 1);
}

void sub_10017B584(Registry **a1)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v2 = ServiceMap;
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  std::mutex::lock(ServiceMap);
  v11 = v3;
  v7 = sub_100009510(&v2[1].__m_.__sig, &v11);
  if (!v7)
  {
    v9 = 0;
LABEL_9:
    std::mutex::unlock(v2);
    v8 = 0;
    v10 = 1;
    if (!v9)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v9 = v7[3];
  v8 = v7[4];
  if (!v8)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v2);
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v8);
  v10 = 0;
  if (v9)
  {
LABEL_10:
    (*(*v9 + 80))(v9);
  }

LABEL_11:
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v8);
  }
}

void sub_10017B68C(_Unwind_Exception *exception_object)
{
  v3 = v1;
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_10017B6AC(Registry **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4, void *a5)
{
  if (xpc_dictionary_get_value(*a4, "kPacketContextIdentifer"))
  {
    *buf = a4;
    *&buf[8] = "kPacketContextIdentifer";
    sub_100006354(buf, object);
    v9 = xpc::dyn_cast_or_default(object, 0, v8);
    xpc_release(object[0]);
  }

  else
  {
    v9 = -1;
  }

  if (!xpc_dictionary_get_value(*a4, "kPacketServiceType"))
  {
    goto LABEL_17;
  }

  *buf = a4;
  *&buf[8] = "kPacketServiceType";
  sub_100006354(buf, object);
  v11 = xpc::dyn_cast_or_default(object, 0, v10);
  xpc_release(object[0]);
  ServiceMap = Registry::getServiceMap(*a1);
  v13 = ServiceMap;
  if (v14 < 0)
  {
    v15 = (v14 & 0x7FFFFFFFFFFFFFFFLL);
    v16 = 5381;
    do
    {
      v14 = v16;
      v17 = *v15++;
      v16 = (33 * v16) ^ v17;
    }

    while (v17);
  }

  std::mutex::lock(ServiceMap);
  *buf = v14;
  v18 = sub_100009510(&v13[1].__m_.__sig, buf);
  if (!v18)
  {
    v20 = 0;
LABEL_13:
    std::mutex::unlock(v13);
    v19 = 0;
    v21 = 1;
    if (!v20)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v20 = v18[3];
  v19 = v18[4];
  if (!v19)
  {
    goto LABEL_13;
  }

  atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v13);
  atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v19);
  v21 = 0;
  if (v20)
  {
LABEL_14:
    v22 = (*(*v20 + 808))(v20);
    v9 = (*(*v20 + 280))(v20, v22, v11);
  }

LABEL_15:
  if ((v21 & 1) == 0)
  {
    sub_100004A34(v19);
  }

LABEL_17:
  object[0] = 0;
  object[1] = 0;
  v30 = 0;
  if (CSIPDPManager::getInterfaceNameById())
  {
    v23 = *sub_100020154();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = object;
      if (v30 < 0)
      {
        v24 = object[0];
      }

      *buf = 136315906;
      *&buf[4] = "kPacketContextName";
      *&buf[12] = 2080;
      *&buf[14] = "kPacketContextIdentifer";
      v32 = 1024;
      v33 = v9;
      v34 = 2080;
      v35 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s: %s PDP Context %d name is %s", buf, 0x26u);
    }

    if (v30 >= 0)
    {
      v25 = object;
    }

    else
    {
      v25 = object[0];
    }

    v27 = xpc_string_create(v25);
    if (!v27)
    {
      v27 = xpc_null_create();
    }

    *buf = *a5;
    *&buf[8] = "kPacketContextName";
    sub_10000F688(buf, &v27, &v28);
    xpc_release(v28);
    v28 = 0;
    xpc_release(v27);
    v27 = 0;
  }

  else
  {
    v26 = *sub_100020154();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v9;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, " Getting PDP Context %d name not possible returning name is invalid", buf, 8u);
    }
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(object[0]);
  }
}

void sub_10017BA20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10017BAB0(Registry **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4)
{
  v6 = *sub_100020154();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CALL TO OBSOLETE API PacketSetActiveById, should use CoreTelephonyClient+Data.h API", buf, 2u);
  }

  if (xpc_dictionary_get_value(*a4, "kPacketContextIdentifer"))
  {
    *buf = a4;
    *&buf[8] = "kPacketContextIdentifer";
    sub_100006354(buf, &object);
    v8 = xpc::dyn_cast_or_default(&object, 0, v7);
    xpc_release(object);
    if (v8)
    {
      v9 = *sub_100020154();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_101762C48(v8, v9);
      }

      return;
    }

    *buf = a4;
    *&buf[8] = "kPacketStatus";
    sub_100006354(buf, &object);
    v11 = xpc::dyn_cast_or_default(&object, 0, v10);
    xpc_release(object);
    ServiceMap = Registry::getServiceMap(*a1);
    v13 = ServiceMap;
    if (v14 < 0)
    {
      v15 = (v14 & 0x7FFFFFFFFFFFFFFFLL);
      v16 = 5381;
      do
      {
        v14 = v16;
        v17 = *v15++;
        v16 = (33 * v16) ^ v17;
      }

      while (v17);
    }

    std::mutex::lock(ServiceMap);
    *buf = v14;
    v18 = sub_100009510(&v13[1].__m_.__sig, buf);
    if (v18)
    {
      v20 = v18[3];
      v19 = v18[4];
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v13);
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v19);
        v21 = 0;
        if (!v20)
        {
LABEL_31:
          if ((v21 & 1) == 0)
          {
            sub_100004A34(v19);
          }

          return;
        }

LABEL_16:
        v44 = 0;
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
        *v32 = 0u;
        v33 = 0u;
        *buf = 0u;
        memset(v31, 0, sizeof(v31));
        sub_10000D518(buf);
        sub_10000C030(buf);
        object = 0;
        v28 = 0;
        v29 = 0;
        sub_100A6024C(a4, &object);
        if (v29 >= 0)
        {
          v22 = HIBYTE(v29);
        }

        else
        {
          v22 = v28;
        }

        if (!v22)
        {
          if (SHIBYTE(v29) < 0)
          {
            v28 = 9;
            p_object = object;
          }

          else
          {
            HIBYTE(v29) = 9;
            p_object = &object;
          }

          strcpy(p_object, "<unknown>");
        }

        v24 = sub_10000C030(buf);
        sub_10000C030(v24);
        sub_10000D684(buf, __p);
        (*(*v20 + 64))(v20, v11 != 0, __p);
        if (v26 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v29) < 0)
        {
          operator delete(object);
        }

        if (SHIBYTE(v33) < 0)
        {
          operator delete(v32[1]);
        }

        std::locale::~locale(v31);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_31;
      }
    }

    else
    {
      v20 = 0;
    }

    std::mutex::unlock(v13);
    v19 = 0;
    v21 = 1;
    if (!v20)
    {
      goto LABEL_31;
    }

    goto LABEL_16;
  }
}

void sub_10017BEB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, xpc_object_t object, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(object);
  }

  sub_100D50834(&a21);
  if ((v22 & 1) == 0)
  {
    sub_100004A34(v21);
  }

  _Unwind_Resume(a1);
}

void sub_10017BF48(Registry **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4, void *a5)
{
  v8 = *sub_100020154();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CALL TO OBSOLETE API kPacketGetActiveById", buf, 2u);
  }

  if (xpc_dictionary_get_value(*a4, "kPacketContextIdentifer"))
  {
    v9 = *sub_100020154();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Calling _CTServerConnectionGetPacketContextActive()", buf, 2u);
    }

    *buf = a4;
    v26 = "kPacketContextIdentifer";
    sub_100006354(buf, &object);
    v11 = xpc::dyn_cast_or_default(&object, 0, v10);
    xpc_release(object);
    ServiceMap = Registry::getServiceMap(*a1);
    v13 = ServiceMap;
    if (v14 < 0)
    {
      v15 = (v14 & 0x7FFFFFFFFFFFFFFFLL);
      v16 = 5381;
      do
      {
        v14 = v16;
        v17 = *v15++;
        v16 = (33 * v16) ^ v17;
      }

      while (v17);
    }

    std::mutex::lock(ServiceMap);
    *buf = v14;
    v18 = sub_100009510(&v13[1].__m_.__sig, buf);
    if (v18)
    {
      v20 = v18[3];
      v19 = v18[4];
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v13);
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v19);
        v21 = 0;
        if (!v20)
        {
LABEL_18:
          if ((v21 & 1) == 0)
          {
            sub_100004A34(v19);
          }

          return;
        }

LABEL_15:
        v22 = (*(*v20 + 320))(v20, v11);
        v23 = xpc_int64_create(v22);
        if (!v23)
        {
          v23 = xpc_null_create();
        }

        *buf = *a5;
        v26 = "kPacketStatus";
        sub_10000F688(buf, &v23, &v24);
        xpc_release(v24);
        v24 = 0;
        xpc_release(v23);
        v23 = 0;
        goto LABEL_18;
      }
    }

    else
    {
      v20 = 0;
    }

    std::mutex::unlock(v13);
    v19 = 0;
    v21 = 1;
    if (!v20)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }
}

void sub_10017C190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t object)
{
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_10017C1C4(Registry **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4)
{
  *buf = a4;
  *&buf[8] = "kPacketServiceType";
  sub_100006354(buf, &object);
  v7 = xpc::dyn_cast_or_default(&object, 0, v6);
  xpc_release(object);
  *buf = a4;
  *&buf[8] = "kPacketStatus";
  sub_100006354(buf, &object);
  v9 = xpc::dyn_cast_or_default(&object, 0, v8);
  xpc_release(object);
  v10 = *sub_100020154();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Calling _CTServerConnectionSetPacketContextActiveByServiceType() = %llu", buf, 0xCu);
  }

  ServiceMap = Registry::getServiceMap(*a1);
  v12 = ServiceMap;
  if (v13 < 0)
  {
    v14 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
    v15 = 5381;
    do
    {
      v13 = v15;
      v16 = *v14++;
      v15 = (33 * v15) ^ v16;
    }

    while (v16);
  }

  std::mutex::lock(ServiceMap);
  *buf = v13;
  v17 = sub_100009510(&v12[1].__m_.__sig, buf);
  if (v17)
  {
    v19 = v17[3];
    v18 = v17[4];
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v12);
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v18);
      v20 = 0;
      if (!v19)
      {
        goto LABEL_27;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v19 = 0;
  }

  std::mutex::unlock(v12);
  v18 = 0;
  v20 = 1;
  if (!v19)
  {
    goto LABEL_27;
  }

LABEL_12:
  v44 = 0;
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
  *v32 = 0u;
  v33 = 0u;
  *buf = 0u;
  memset(v31, 0, sizeof(v31));
  sub_10000D518(buf);
  sub_10000C030(buf);
  object = 0;
  v28 = 0;
  v29 = 0;
  sub_100A6024C(a4, &object);
  if (v29 >= 0)
  {
    v21 = HIBYTE(v29);
  }

  else
  {
    v21 = v28;
  }

  if (!v21)
  {
    if (SHIBYTE(v29) < 0)
    {
      v28 = 9;
      p_object = object;
    }

    else
    {
      HIBYTE(v29) = 9;
      p_object = &object;
    }

    strcpy(p_object, "<unknown>");
  }

  v23 = sub_10000C030(buf);
  sub_10000C030(v23);
  v24 = (*(*v19 + 808))(v19);
  sub_10000D684(buf, __p);
  (*(*v19 + 88))(v19, v24, v7, v9 != 0, __p, 0, 0);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(object);
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32[1]);
  }

  std::locale::~locale(v31);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_27:
  if ((v20 & 1) == 0)
  {
    sub_100004A34(v18);
  }
}

void sub_10017C614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, xpc_object_t object, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(object);
  }

  sub_100D50834(&a21);
  if ((v22 & 1) == 0)
  {
    sub_100004A34(v21);
  }

  _Unwind_Resume(a1);
}

void sub_10017C6B8(Registry **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4, void *a5)
{
  *buf = a4;
  v36 = "kPacketServiceType";
  sub_100006354(buf, &object);
  v9 = xpc::dyn_cast_or_default(&object, 0, v8);
  xpc_release(object);
  ServiceMap = Registry::getServiceMap(*a1);
  v11 = ServiceMap;
  if (v12 < 0)
  {
    v13 = (v12 & 0x7FFFFFFFFFFFFFFFLL);
    v14 = 5381;
    do
    {
      v12 = v14;
      v15 = *v13++;
      v14 = (33 * v14) ^ v15;
    }

    while (v15);
  }

  std::mutex::lock(ServiceMap);
  *buf = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, buf);
  if (v16)
  {
    v18 = v16[3];
    v17 = v16[4];
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v11);
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v17);
      v19 = 0;
      if (!v18)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v18 = 0;
  }

  std::mutex::unlock(v11);
  v17 = 0;
  v19 = 1;
  if (!v18)
  {
LABEL_7:
    v20 = 0;
    LODWORD(v21) = -2;
    v22 = 2;
    if (v19)
    {
      goto LABEL_16;
    }

LABEL_15:
    sub_100004A34(v17);
    goto LABEL_16;
  }

LABEL_11:
  remote_connection = xpc_dictionary_get_remote_connection(*a4);
  v24 = remote_connection;
  if (remote_connection)
  {
    xpc_retain(remote_connection);
  }

  else
  {
    v24 = xpc_null_create();
  }

  v25 = (*(*v18 + 808))(v18);
  v21 = (*(*v18 + 256))(v18, v25, v9);
  LODWORD(v22) = v26;
  xpc_release(v24);
  v20 = BYTE4(v21);
  v22 = v22;
  if ((v19 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_16:
  v27 = *sub_100020154();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v21;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Calling _CTServerConnectionGetPacketContextActiveByServiceType(): context id is %d", buf, 8u);
  }

  v32 = xpc_int64_create(v21);
  if (!v32)
  {
    v32 = xpc_null_create();
  }

  *buf = *a5;
  v36 = "kPacketContextIdentifer";
  sub_10000F688(buf, &v32, &v33);
  xpc_release(v33);
  v33 = 0;
  xpc_release(v32);
  v32 = 0;
  v30 = xpc_int64_create(v20);
  if (!v30)
  {
    v30 = xpc_null_create();
  }

  *buf = *a5;
  v36 = "kPacketStatus";
  sub_10000F688(buf, &v30, &v31);
  xpc_release(v31);
  v31 = 0;
  xpc_release(v30);
  v30 = 0;
  v28 = xpc_int64_create(v22);
  if (!v28)
  {
    v28 = xpc_null_create();
  }

  *buf = *a5;
  v36 = "kPacketContextType";
  sub_10000F688(buf, &v28, &v29);
  xpc_release(v29);
  v29 = 0;
  xpc_release(v28);
}

void sub_10017C9F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t object)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10017CA88(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  ServiceMap = Registry::getServiceMap(*a1);
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
  *buf = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, buf);
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
      if (!v14)
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
  if (!v14)
  {
    goto LABEL_15;
  }

LABEL_10:
  v16 = (*(*v14 + 264))(v14);
  v17 = *sub_100020154();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Calling _CTServerConnectionGetPacketDataLoadInfo(): activateQueueSize %d", buf, 8u);
  }

  v18 = xpc_int64_create(v16);
  if (!v18)
  {
    v18 = xpc_null_create();
  }

  *buf = *a5;
  v21 = "kPacketActivateQueueSize";
  sub_10000F688(buf, &v18, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v18);
  v18 = 0;
LABEL_15:
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }
}

void sub_10017CC68(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_10017CCA8(Registry **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4)
{
  v6 = *sub_100020154();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CALL TO OBSOLETE API PacketSetProtocolActiveByInterface, should use CoreTelephonyClient+Data.h API", buf, 2u);
  }

  *buf = a4;
  *&buf[8] = "kPacketContextIdentifer";
  sub_100006354(buf, &object);
  v8 = xpc::dyn_cast_or_default(&object, 0, v7);
  xpc_release(object);
  if (v8)
  {
    v9 = *sub_100020154();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_101762CC0(v8, v9);
    }

    return;
  }

  *buf = a4;
  *&buf[8] = "kPacketStatus";
  sub_100006354(buf, &object);
  v11 = xpc::dyn_cast_or_default(&object, 0, v10);
  xpc_release(object);
  v12 = *sub_100020154();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Calling _CTServerConnectionSetPacketProtocolActiveByInterface()", buf, 2u);
  }

  ServiceMap = Registry::getServiceMap(*a1);
  v14 = ServiceMap;
  if (v15 < 0)
  {
    v16 = (v15 & 0x7FFFFFFFFFFFFFFFLL);
    v17 = 5381;
    do
    {
      v15 = v17;
      v18 = *v16++;
      v17 = (33 * v17) ^ v18;
    }

    while (v18);
  }

  std::mutex::lock(ServiceMap);
  *buf = v15;
  v19 = sub_100009510(&v14[1].__m_.__sig, buf);
  if (!v19)
  {
    v21 = 0;
LABEL_16:
    std::mutex::unlock(v14);
    v20 = 0;
    v22 = 1;
    if (!v21)
    {
      goto LABEL_32;
    }

LABEL_17:
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    *v33 = 0u;
    v34 = 0u;
    *buf = 0u;
    memset(v32, 0, sizeof(v32));
    sub_10000D518(buf);
    sub_10000C030(buf);
    object = 0;
    v29 = 0;
    v30 = 0;
    sub_100A6024C(a4, &object);
    if (v30 >= 0)
    {
      v23 = HIBYTE(v30);
    }

    else
    {
      v23 = v29;
    }

    if (!v23)
    {
      if (SHIBYTE(v30) < 0)
      {
        v29 = 9;
        p_object = object;
      }

      else
      {
        HIBYTE(v30) = 9;
        p_object = &object;
      }

      strcpy(p_object, "<unknown>");
    }

    v25 = sub_10000C030(buf);
    sub_10000C030(v25);
    sub_10000D684(buf, __p);
    (*(*v21 + 64))(v21, v11 != 0, __p);
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v30) < 0)
    {
      operator delete(object);
    }

    if (SHIBYTE(v34) < 0)
    {
      operator delete(v33[1]);
    }

    std::locale::~locale(v32);
    std::ostream::~ostream();
    std::ios::~ios();
    goto LABEL_32;
  }

  v21 = v19[3];
  v20 = v19[4];
  if (!v20)
  {
    goto LABEL_16;
  }

  atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v14);
  atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v20);
  v22 = 0;
  if (v21)
  {
    goto LABEL_17;
  }

LABEL_32:
  if ((v22 & 1) == 0)
  {
    sub_100004A34(v20);
  }
}

void sub_10017D0E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, xpc_object_t object, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(object);
  }

  sub_100D50834(&a21);
  if ((v22 & 1) == 0)
  {
    sub_100004A34(v21);
  }

  _Unwind_Resume(a1);
}

void sub_10017D170(Registry **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4)
{
  *buf = a4;
  *&buf[8] = "kPacketServiceType";
  sub_100006354(buf, &object);
  v7 = xpc::dyn_cast_or_default(&object, 0, v6);
  xpc_release(object);
  *buf = a4;
  *&buf[8] = "kPacketStatus";
  sub_100006354(buf, &object);
  v9 = xpc::dyn_cast_or_default(&object, 0, v8);
  xpc_release(object);
  v10 = *sub_100020154();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Calling _CTServerConnectionSetPacketProtocolActiveByServiceType()", buf, 2u);
  }

  remote_connection = xpc_dictionary_get_remote_connection(*a4);
  if (remote_connection)
  {
    v12 = remote_connection;
    xpc_retain(remote_connection);
  }

  else
  {
    v12 = xpc_null_create();
  }

  ServiceMap = Registry::getServiceMap(*a1);
  v14 = ServiceMap;
  if (v15 < 0)
  {
    v16 = (v15 & 0x7FFFFFFFFFFFFFFFLL);
    v17 = 5381;
    do
    {
      v15 = v17;
      v18 = *v16++;
      v17 = (33 * v17) ^ v18;
    }

    while (v18);
  }

  std::mutex::lock(ServiceMap);
  *buf = v15;
  v19 = sub_100009510(&v14[1].__m_.__sig, buf);
  if (v19)
  {
    v21 = v19[3];
    v20 = v19[4];
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v14);
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v20);
      v22 = 0;
      if (!v21)
      {
        goto LABEL_30;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v21 = 0;
  }

  std::mutex::unlock(v14);
  v20 = 0;
  v22 = 1;
  if (!v21)
  {
    goto LABEL_30;
  }

LABEL_15:
  v46 = 0;
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
  *v34 = 0u;
  v35 = 0u;
  *buf = 0u;
  memset(v33, 0, sizeof(v33));
  sub_10000D518(buf);
  sub_10000C030(buf);
  object = 0;
  v30 = 0;
  v31 = 0;
  sub_100A6024C(a4, &object);
  if (v31 >= 0)
  {
    v23 = HIBYTE(v31);
  }

  else
  {
    v23 = v30;
  }

  if (!v23)
  {
    if (SHIBYTE(v31) < 0)
    {
      v30 = 9;
      p_object = object;
    }

    else
    {
      HIBYTE(v31) = 9;
      p_object = &object;
    }

    strcpy(p_object, "<unknown>");
  }

  v25 = sub_10000C030(buf);
  sub_10000C030(v25);
  v26 = (*(*v21 + 808))(v21);
  sub_10000D684(buf, __p);
  (*(*v21 + 88))(v21, v26, v7, v9 != 0, __p, 0, 0);
  if (v28 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(object);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34[1]);
  }

  std::locale::~locale(v33);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_30:
  if ((v22 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  xpc_release(v12);
}

void sub_10017D5B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, xpc_object_t object, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(object);
  }

  sub_100D50834(&a21);
  if ((v23 & 1) == 0)
  {
    sub_100004A34(v22);
  }

  xpc_release(v21);
  _Unwind_Resume(a1);
}

void sub_10017D65C(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, void ***a5)
{
  v7 = *sub_100020154();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Calling _CTServerConnectionGetDataServiceAvailability()", buf, 2u);
  }

  v39 = 0;
  v8 = xpc_dictionary_create(0, 0, 0);
  v9 = v8;
  if (v8)
  {
    v39 = v8;
  }

  else
  {
    v9 = xpc_null_create();
    v39 = v9;
    if (!v9)
    {
      v10 = xpc_null_create();
      v9 = 0;
      goto LABEL_10;
    }
  }

  if (xpc_get_type(v9) == &_xpc_type_dictionary)
  {
    xpc_retain(v9);
    goto LABEL_11;
  }

  v10 = xpc_null_create();
LABEL_10:
  v39 = v10;
LABEL_11:
  xpc_release(v9);
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  *buf = 0u;
  v41 = 0u;
  ServiceMap = Registry::getServiceMap(*a1);
  v12 = ServiceMap;
  if (v13 < 0)
  {
    v14 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
    v15 = 5381;
    do
    {
      v13 = v15;
      v16 = *v14++;
      v15 = (33 * v15) ^ v16;
    }

    while (v16);
  }

  std::mutex::lock(ServiceMap);
  __p = v13;
  v17 = sub_100009510(&v12[1].__m_.__sig, &__p);
  if (v17)
  {
    v19 = v17[3];
    v18 = v17[4];
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v12);
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v18);
      v20 = 0;
      if (!v19)
      {
        goto LABEL_17;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v19 = 0;
  }

  std::mutex::unlock(v12);
  v18 = 0;
  v20 = 1;
  if (!v19)
  {
LABEL_17:
    v21 = 0;
    if (v20)
    {
      goto LABEL_30;
    }

LABEL_29:
    sub_100004A34(v18);
    goto LABEL_30;
  }

LABEL_21:
  __p = 0;
  v37 = 0;
  v38 = 0;
  v22 = (*(*v19 + 808))(v19);
  (*(*v19 + 592))(&__p, v19, v22);
  v24 = __p;
  v23 = v37;
  if (v37 == __p)
  {
    v21 = 0;
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    do
    {
      if (!v24[14 * v25])
      {
        *&buf[8 * v26++] = kCTDataConnectionServiceTypeFromIndex();
        v24 = __p;
        v23 = v37;
      }

      v25 = ++v27;
    }

    while (0x6DB6DB6DB6DB6DB7 * ((v23 - v24) >> 3) > v27);
    v21 = v26;
  }

  p_p = &__p;
  sub_10009C118(&p_p);
  if ((v20 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_30:
  __p = 0;
  v37 = 0;
  v38 = 0;
  ctu::cf::assign();
  v28 = CFArrayCreate(kCFAllocatorDefault, buf, v21, &kCFTypeArrayCallBacks);
  v34 = _CFXPCCreateXPCObjectFromCFObject();
  if (!v34)
  {
    v34 = xpc_null_create();
  }

  v29 = &__p;
  if (v38 < 0)
  {
    v29 = __p;
  }

  p_p = &v39;
  v33 = v29;
  sub_10000F688(&p_p, &v34, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v34);
  v34 = 0;
  v30 = v39;
  if (v39)
  {
    xpc_retain(v39);
  }

  else
  {
    v30 = xpc_null_create();
  }

  p_p = *a5;
  v33 = "kDataServiceAvailability";
  sub_100DAE90C(&p_p, &v30, &v31);
  xpc_release(v31);
  v31 = 0;
  xpc_release(v30);
  v30 = 0;
  CFRelease(v28);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p);
  }

  xpc_release(v39);
}

void sub_10017DA68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

const void **sub_10017DB08(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *buf = a4;
  v29 = "kPacketServiceType";
  sub_100006354(buf, &object);
  v8 = xpc::dyn_cast_or_default(&object, 0, v7);
  xpc_release(object);
  object = 0;
  ServiceMap = Registry::getServiceMap(*a1);
  v10 = ServiceMap;
  if (v11 < 0)
  {
    v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
    v13 = 5381;
    do
    {
      v11 = v13;
      v14 = *v12++;
      v13 = (33 * v13) ^ v14;
    }

    while (v14);
  }

  std::mutex::lock(ServiceMap);
  *buf = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, buf);
  if (v15)
  {
    v17 = v15[3];
    v16 = v15[4];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v10);
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v16);
      v18 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v17 = 0;
  }

  std::mutex::unlock(v10);
  v16 = 0;
  v18 = 1;
LABEL_9:
  (*(*v17 + 32))(&object, v17, kCarrierBundleId, @"AllowedServicesTypeMaskOnInternet", 0, 0);
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  v19 = object;
  *buf = 0;
  if (object)
  {
    v20 = CFGetTypeID(object);
    if (v20 == CFNumberGetTypeID())
    {
      ctu::cf::assign(buf, v19, v21);
      LODWORD(v19) = *buf;
    }

    else
    {
      LODWORD(v19) = 0;
    }
  }

  v22 = v19 & v8;
  v23 = *sub_100020154();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = v8;
    LOWORD(v29) = 1024;
    *(&v29 + 2) = v22 != 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Calling _CTServerConnectionIsServiceOverPublicInternet() for %d, with result %d", buf, 0xEu);
  }

  v25 = xpc_BOOL_create(v22 != 0);
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  *buf = *a5;
  v29 = "kDataServiceOverPublicInternet";
  sub_10000F688(buf, &v25, &v26);
  xpc_release(v26);
  v26 = 0;
  xpc_release(v25);
  v25 = 0;
  return sub_10000A1EC(&object);
}

void sub_10017DD94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_10017DE00(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  cf = 0;
  ServiceMap = Registry::getServiceMap(*a1);
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
  *buf = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, buf);
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
  (*(*v14 + 32))(&cf, v14, kCarrierBundleId, @"NATTKeepAliveIntervalOverCell", 0, 0);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  v16 = cf;
  v17 = 110;
  *buf = 110;
  if (cf)
  {
    v18 = CFGetTypeID(cf);
    if (v18 == CFNumberGetTypeID())
    {
      ctu::cf::assign(buf, v16, v19);
      v17 = *buf;
    }

    else
    {
      v17 = 110;
    }
  }

  v20 = *sub_100020154();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v17;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Calling _CTServerConnectionGetNATTKeepAliveOverCell(),  with result %d", buf, 8u);
  }

  v22 = xpc_int64_create(v17);
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  *buf = *a5;
  v26 = "kNATTKeepAliveOverCell";
  sub_10000F688(buf, &v22, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v22);
  v22 = 0;
  return sub_10000A1EC(&cf);
}

void sub_10017E038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10017E084(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *buf = a4;
  v29 = "kPacketContextIdentifer";
  sub_100006354(buf, &object);
  v8 = xpc::dyn_cast_or_default(&object, 0, v7);
  xpc_release(object);
  ServiceMap = Registry::getServiceMap(*a1);
  v10 = ServiceMap;
  if (v11 < 0)
  {
    v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
    v13 = 5381;
    do
    {
      v11 = v13;
      v14 = *v12++;
      v13 = (33 * v13) ^ v14;
    }

    while (v14);
  }

  std::mutex::lock(ServiceMap);
  *buf = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, buf);
  if (!v15)
  {
    v17 = 0;
LABEL_11:
    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
    if (!v17)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  v17 = v15[3];
  v16 = v15[4];
  if (!v16)
  {
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v10);
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v16);
  v18 = 0;
  if (!v17)
  {
LABEL_7:
    v19 = *sub_100020154();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "DataService not found", buf, 2u);
    }

    v20 = -1;
    v21 = -1;
    goto LABEL_14;
  }

LABEL_12:
  v21 = (*(*v17 + 216))(v17, v8);
  v20 = (*(*v17 + 224))(v17, v8);
  v22 = *sub_100020154();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    *&buf[4] = v21;
    LOWORD(v29) = 1024;
    *(&v29 + 2) = v20;
    HIWORD(v29) = 1024;
    v30 = v8;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "kPacketGetInterfaceFamilyStatus: active 0x%x and available 0x%x for PDP %d", buf, 0x14u);
  }

LABEL_14:
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  v25 = xpc_int64_create(v21);
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  *buf = *a5;
  v29 = "kPacketDataFamilyActive";
  sub_10000F688(buf, &v25, &v26);
  xpc_release(v26);
  v26 = 0;
  xpc_release(v25);
  v25 = 0;
  v23 = xpc_int64_create(v20);
  if (!v23)
  {
    v23 = xpc_null_create();
  }

  *buf = *a5;
  v29 = "kPacketDataFamilyAvailable";
  sub_10000F688(buf, &v23, &v24);
  xpc_release(v24);
  v24 = 0;
  xpc_release(v23);
}

void sub_10017E374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t object)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10017E3E4(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v32 = 0;
  value = 0;
  v8 = *sub_100020154();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Calling _CTServerConnectionGetPacketContextStatistics()", buf, 2u);
  }

  *buf = a4;
  v35 = "kPacketContextIdentifer";
  sub_100006354(buf, &object);
  v10 = xpc::dyn_cast_or_default(&object, 0, v9);
  xpc_release(object);
  v32 = 0;
  value = 0;
  ServiceMap = Registry::getServiceMap(*a1);
  v12 = ServiceMap;
  if (v13 < 0)
  {
    v14 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
    v15 = 5381;
    do
    {
      v13 = v15;
      v16 = *v14++;
      v15 = (33 * v15) ^ v16;
    }

    while (v16);
  }

  std::mutex::lock(ServiceMap);
  *buf = v13;
  v17 = sub_100009510(&v12[1].__m_.__sig, buf);
  if (v17)
  {
    v19 = v17[3];
    v18 = v17[4];
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v12);
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v18);
      v20 = 0;
      if (!v19)
      {
        goto LABEL_9;
      }

LABEL_13:
      (*(*v19 + 984))(buf, v19, v10);
      v21 = *buf;
      v22 = v35;
      if (v20)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v19 = 0;
  }

  std::mutex::unlock(v12);
  v18 = 0;
  v20 = 1;
  if (v19)
  {
    goto LABEL_13;
  }

LABEL_9:
  v21 = 0;
  v22 = 0;
  if ((v20 & 1) == 0)
  {
LABEL_14:
    sub_100004A34(v18);
  }

LABEL_15:
  if (v21)
  {
    (*(*v21 + 24))(v21, &value + 4, &value, &v32 + 4, &v32);
  }

  if (v22)
  {
    sub_100004A34(v22);
  }

  v29 = xpc_int64_create(HIDWORD(value));
  if (!v29)
  {
    v29 = xpc_null_create();
  }

  *buf = *a5;
  v35 = "kPacketDataUplinkPackets";
  sub_10000F688(buf, &v29, &v30);
  xpc_release(v30);
  v30 = 0;
  xpc_release(v29);
  v29 = 0;
  v27 = xpc_int64_create(value);
  if (!v27)
  {
    v27 = xpc_null_create();
  }

  *buf = *a5;
  v35 = "kPacketDataDownlinkPackets";
  sub_10000F688(buf, &v27, &v28);
  xpc_release(v28);
  v28 = 0;
  xpc_release(v27);
  v27 = 0;
  v25 = xpc_int64_create(HIDWORD(v32));
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  *buf = *a5;
  v35 = "kPacketDataUplinkBytes";
  sub_10000F688(buf, &v25, &v26);
  xpc_release(v26);
  v26 = 0;
  xpc_release(v25);
  v25 = 0;
  v23 = xpc_int64_create(v32);
  if (!v23)
  {
    v23 = xpc_null_create();
  }

  *buf = *a5;
  v35 = "kPacketDataDownlinkBytes";
  sub_10000F688(buf, &v23, &v24);
  xpc_release(v24);
  v24 = 0;
  xpc_release(v23);
}

void sub_10017E73C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, xpc_object_t object)
{
  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_10017E7B0(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *buf = a4;
  v43 = "kPacketContextIdentifer";
  sub_100006354(buf, &object);
  v6 = xpc::dyn_cast_or_default(&object, 0, v5);
  xpc_release(object);
  ServiceMap = Registry::getServiceMap(*a1);
  v8 = ServiceMap;
  v10 = v9;
  if (v9 < 0)
  {
    v11 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
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
  *buf = v10;
  v14 = sub_100009510(&v8[1].__m_.__sig, buf);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v8);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      if (!v16)
      {
        goto LABEL_7;
      }

LABEL_11:
      (*(*v16 + 984))(buf, v16, v6);
      v16 = *buf;
      v18 = v43;
      if (v17)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v8);
  v15 = 0;
  v17 = 1;
  if (v16)
  {
    goto LABEL_11;
  }

LABEL_7:
  v18 = 0;
  if ((v17 & 1) == 0)
  {
LABEL_12:
    sub_100004A34(v15);
  }

LABEL_13:
  if (v16)
  {
    (*(*v16 + 16))(v16);
    v19 = Registry::getServiceMap(*a1);
    v20 = v19;
    if (v9 < 0)
    {
      v21 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
      v22 = 5381;
      do
      {
        v9 = v22;
        v23 = *v21++;
        v22 = (33 * v22) ^ v23;
      }

      while (v23);
    }

    std::mutex::lock(v19);
    *buf = v9;
    v24 = sub_100009510(&v20[1].__m_.__sig, buf);
    if (v24)
    {
      v26 = v24[3];
      v25 = v24[4];
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v20);
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v25);
        v27 = 0;
        if (!v26)
        {
          goto LABEL_20;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v26 = 0;
    }

    std::mutex::unlock(v20);
    v25 = 0;
    v27 = 1;
    if (!v26)
    {
LABEL_20:
      v28 = 0;
      if (v27)
      {
LABEL_28:
        if (v6 != v28)
        {
          goto LABEL_39;
        }

        v31 = Registry::getServiceMap(*a1);
        v32 = v31;
        if (v33 < 0)
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

        std::mutex::lock(v31);
        *buf = v33;
        v37 = sub_100009510(&v32[1].__m_.__sig, buf);
        if (v37)
        {
          v39 = v37[3];
          v38 = v37[4];
          if (v38)
          {
            atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v32);
            atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v38);
            v40 = 0;
            goto LABEL_37;
          }
        }

        else
        {
          v39 = 0;
        }

        std::mutex::unlock(v32);
        v38 = 0;
        v40 = 1;
LABEL_37:
        (*(*v39 + 40))(v39);
        if ((v40 & 1) == 0)
        {
          sub_100004A34(v38);
        }

        goto LABEL_39;
      }

LABEL_27:
      sub_100004A34(v25);
      goto LABEL_28;
    }

LABEL_26:
    v30 = (*(*v26 + 808))(v26);
    v28 = (*(*v26 + 280))(v26, v30, 1);
    if (v27)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v29 = *sub_100020154();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Invalid PDP Context %d specified", buf, 8u);
  }

LABEL_39:
  if (v18)
  {
    sub_100004A34(v18);
  }
}

void sub_10017EBB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10017EC40(Registry **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v30[0] = a4;
  v30[1] = "kPacketContextIdentifer";
  sub_100006354(v30, &object);
  v6 = xpc::dyn_cast_or_default(&object, 0, v5);
  xpc_release(object);
  if (v6 != -1)
  {
    goto LABEL_14;
  }

  ServiceMap = Registry::getServiceMap(*a1);
  v8 = ServiceMap;
  if ((v9 & 0x8000000000000000) != 0)
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
  v30[0] = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, v30);
  if (!v13)
  {
    v15 = 0;
LABEL_10:
    std::mutex::unlock(v8);
    v14 = 0;
    v16 = 1;
    if (!v15)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v15 = v13[3];
  v14 = v13[4];
  if (!v14)
  {
    goto LABEL_10;
  }

  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v8);
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v14);
  v16 = 0;
  if (v15)
  {
LABEL_11:
    (*(*v15 + 536))(v15, 3, 0);
  }

LABEL_12:
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }

LABEL_14:
  v17 = *sub_100020154();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v30[0]) = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "CommCenter told to reset the settings for APN", v30, 2u);
  }

  if ((v6 + 1) <= 1)
  {
    v18 = Registry::getServiceMap(*a1);
    v19 = v18;
    if ((v20 & 0x8000000000000000) != 0)
    {
      v21 = (v20 & 0x7FFFFFFFFFFFFFFFLL);
      v22 = 5381;
      do
      {
        v20 = v22;
        v23 = *v21++;
        v22 = (33 * v22) ^ v23;
      }

      while (v23);
    }

    std::mutex::lock(v18);
    v30[0] = v20;
    v24 = sub_100009510(&v19[1].__m_.__sig, v30);
    if (v24)
    {
      v26 = v24[3];
      v25 = v24[4];
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v19);
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v25);
        v27 = 0;
        if (!v26)
        {
LABEL_27:
          if ((v27 & 1) == 0)
          {
            sub_100004A34(v25);
          }

          return;
        }

LABEL_26:
        v28 = (*(*v26 + 808))(v26);
        ResetAllPacketHandlersAPNs(v28, 3, 0xFFFFFFFFLL, 0);
        v29 = (*(*v26 + 808))(v26);
        (*(*v26 + 336))(v26, v29, 12, 0);
        goto LABEL_27;
      }
    }

    else
    {
      v26 = 0;
    }

    std::mutex::unlock(v19);
    v25 = 0;
    v27 = 1;
    if (!v26)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }
}

void sub_10017EF40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10017EF88(Registry **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v19[0] = a4;
  v19[1] = "kPacketContextIdentifer";
  sub_100006354(v19, &object);
  v6 = xpc::dyn_cast_or_default(&object, 0, v5);
  xpc_release(object);
  v7 = *sub_100020154();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19[0]) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "CommCenter told to suspend the context", v19, 2u);
  }

  ServiceMap = Registry::getServiceMap(*a1);
  v9 = ServiceMap;
  if ((v10 & 0x8000000000000000) != 0)
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
  v19[0] = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, v19);
  if (!v14)
  {
    v16 = 0;
LABEL_11:
    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    if (!v16)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v16 = v14[3];
  v15 = v14[4];
  if (!v15)
  {
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v9);
  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v15);
  v17 = 0;
  if (v16)
  {
LABEL_12:
    v18 = (*(*v16 + 808))(v16);
    (*(*v16 + 560))(v16, v18, v6);
  }

LABEL_13:
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }
}

void sub_10017F178(Registry **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v19[0] = a4;
  v19[1] = "kPacketContextIdentifer";
  sub_100006354(v19, &object);
  v6 = xpc::dyn_cast_or_default(&object, 0, v5);
  xpc_release(object);
  v7 = *sub_100020154();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19[0]) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "CommCenter told to resume the context", v19, 2u);
  }

  ServiceMap = Registry::getServiceMap(*a1);
  v9 = ServiceMap;
  if ((v10 & 0x8000000000000000) != 0)
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
  v19[0] = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, v19);
  if (!v14)
  {
    v16 = 0;
LABEL_11:
    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    if (!v16)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v16 = v14[3];
  v15 = v14[4];
  if (!v15)
  {
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v9);
  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v15);
  v17 = 0;
  if (v16)
  {
LABEL_12:
    v18 = (*(*v16 + 808))(v16);
    (*(*v16 + 568))(v16, v18, v6);
  }

LABEL_13:
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }
}

void sub_10017F368(Registry **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4)
{
  if (xpc_dictionary_get_value(*a4, "kPacketForceDormancy"))
  {
    *&buf = 2048;
    if (!IsTelephonyRunningExtended(&buf))
    {
      return;
    }

    v6 = *sub_100020154();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "client request to force dormancy", &buf, 2u);
    }

    sub_10005B8C8(&buf);
    (*(*buf + 280))(buf);
    goto LABEL_13;
  }

  if (xpc_dictionary_get_value(*a4, "kPacketDormancy"))
  {
    *&buf = 2048;
    if (!IsTelephonyRunningExtended(&buf))
    {
      return;
    }

    *&buf = a4;
    *(&buf + 1) = "kPacketDormancy";
    sub_100006354(&buf, &object);
    v8 = xpc::dyn_cast_or_default(&object, 0, v7);
    xpc_release(object);
    v9 = v8;
    v10 = *sub_100020154();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = "TRUE";
      if (!v9)
      {
        v11 = "FALSE";
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "client request to enable dormancy %s", &buf, 0xCu);
    }

    sub_10005B8C8(&buf);
    (*(*buf + 296))();
LABEL_13:
    v12 = *(&buf + 1);
    if (!*(&buf + 1))
    {
      return;
    }

    goto LABEL_14;
  }

  if (xpc_dictionary_get_value(*a4, "kCellularDataDisallow"))
  {
    if (!IsTelephonyRunning())
    {
      v26 = sub_100020154();
      if (os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
      {
        sub_101762D6C();
      }

      return;
    }

    *&buf = a4;
    *(&buf + 1) = "kCellularDataDisallow";
    sub_100006354(&buf, &object);
    v14 = xpc::dyn_cast_or_default(&object, 0, v13);
    xpc_release(object);
    v15 = *sub_100020154();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Calling _CTSetCellularDataIsDisallowed(): %d", &buf, 8u);
    }

    ServiceMap = Registry::getServiceMap(*a1);
    v17 = ServiceMap;
    if (v18 < 0)
    {
      v19 = (v18 & 0x7FFFFFFFFFFFFFFFLL);
      v20 = 5381;
      do
      {
        v18 = v20;
        v21 = *v19++;
        v20 = (33 * v20) ^ v21;
      }

      while (v21);
    }

    std::mutex::lock(ServiceMap);
    *&buf = v18;
    v22 = sub_100009510(&v17[1].__m_.__sig, &buf);
    if (v22)
    {
      v24 = v22[3];
      v23 = v22[4];
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v17);
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v23);
        v25 = 0;
        goto LABEL_30;
      }
    }

    else
    {
      v24 = 0;
    }

    std::mutex::unlock(v17);
    v23 = 0;
    v25 = 1;
LABEL_30:
    buf = 0uLL;
    v36 = 0;
    if (v24)
    {
      if ((*(*v24 + 544))(v24, &buf) == v14)
      {
        v27 = *sub_100020154();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          p_buf = &buf;
          if (v36 < 0)
          {
            p_buf = buf;
          }

          LODWORD(object) = 136446210;
          *(&object + 4) = p_buf;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Calling _CTSetCellularDataIsDisallowed() when we are already in that state - requested by %{public}s", &object, 0xCu);
        }
      }

      else
      {
        object = 0uLL;
        v34 = 0;
        sub_100A6024C(a4, &object);
        (*(*v24 + 552))(v24, v14 != 0, &object);
        v30 = *(*v24 + 480);
        if (v14)
        {
          v30(v24, 0, 4);
          v31 = (*(*v24 + 808))(v24);
          (*(*v24 + 336))(v24, v31, 4, 1);
        }

        else
        {
          v30(v24, 1, 4);
          v32 = (*(*v24 + 808))(v24);
          _ReInitThrottleTimer(v32, a1, "due to kCellularDataDisallow", 1);
        }

        if (SHIBYTE(v34) < 0)
        {
          operator delete(object);
        }
      }
    }

    else
    {
      v29 = sub_100020154();
      if (os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
      {
        sub_101762D38();
      }
    }

    if (SHIBYTE(v36) < 0)
    {
      operator delete(buf);
    }

    if ((v25 & 1) == 0)
    {
      v12 = v23;
LABEL_14:
      sub_100004A34(v12);
    }
  }
}

void sub_10017F934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if ((v22 & 1) == 0)
  {
    sub_100004A34(v21);
  }

  _Unwind_Resume(exception_object);
}

void sub_10017F9DC(Registry **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4, void *a5)
{
  if (xpc_dictionary_get_value(*a4, "kEnableCellularDataEx"))
  {
    v8 = *sub_100020154();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Calling _CTServerConnectionSetCellularDataIsEnabledEx()", buf, 2u);
    }

    *buf = a4;
    *&buf[8] = "kEnableCellularDataEx";
    sub_100006354(buf, &object);
    v10 = xpc::dyn_cast_or_default(&object, 0, v9);
    xpc_release(object);
    ServiceMap = Registry::getServiceMap(*a1);
    v12 = ServiceMap;
    if (v13 < 0)
    {
      v14 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
      v15 = 5381;
      do
      {
        v13 = v15;
        v16 = *v14++;
        v15 = (33 * v15) ^ v16;
      }

      while (v16);
    }

    std::mutex::lock(ServiceMap);
    *buf = v13;
    v17 = sub_100009510(&v12[1].__m_.__sig, buf);
    if (v17)
    {
      v19 = v17[3];
      v18 = v17[4];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v12);
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v18);
        v20 = 0;
        if (!v19)
        {
          goto LABEL_28;
        }

        goto LABEL_24;
      }
    }

    else
    {
      v19 = 0;
    }

    std::mutex::unlock(v12);
    v18 = 0;
    v20 = 1;
    if (!v19)
    {
      goto LABEL_28;
    }

LABEL_24:
    v82[0] = _NSConcreteStackBlock;
    v82[1] = 3321888768;
    v82[2] = sub_1001836E0;
    v82[3] = &unk_101E2D468;
    v33 = a5[1];
    v82[4] = *a5;
    v83 = v33;
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v84 = v10;
    (*(*v19 + 24))(v19, v10 != 0, v82);
    if (v83)
    {
      sub_100004A34(v83);
    }

LABEL_28:
    if (v20)
    {
      return;
    }

    goto LABEL_29;
  }

  if (xpc_dictionary_get_value(*a4, "kEnableCellularData"))
  {
    *buf = 6144;
    if (IsTelephonyRunningExtended(buf))
    {
      v21 = *sub_100020154();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Calling _CTSetCellularDataIsEnabled()", buf, 2u);
      }

      *buf = a4;
      *&buf[8] = "kEnableCellularData";
      sub_100006354(buf, &object);
      v23 = xpc::dyn_cast_or_default(&object, 0, v22);
      xpc_release(object);
      v24 = Registry::getServiceMap(*a1);
      v25 = v24;
      if (v26 < 0)
      {
        v27 = (v26 & 0x7FFFFFFFFFFFFFFFLL);
        v28 = 5381;
        do
        {
          v26 = v28;
          v29 = *v27++;
          v28 = (33 * v28) ^ v29;
        }

        while (v29);
      }

      std::mutex::lock(v24);
      *buf = v26;
      v30 = sub_100009510(&v25[1].__m_.__sig, buf);
      if (v30)
      {
        v31 = v30[3];
        v18 = v30[4];
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v25);
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v18);
          v32 = 0;
          if (!v31)
          {
            goto LABEL_78;
          }

LABEL_33:
          if ((*(*v31 + 720))(v31) == v23)
          {
            goto LABEL_78;
          }

          (*(*v31 + 480))(v31, 0, 3);
          v34 = a5[1];
          v80 = *a5;
          v81 = v34;
          if (v34)
          {
            atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*v31 + 80))(v31, v23 != 0, 1, &v80);
          if (v81)
          {
            sub_100004A34(v81);
          }

          v79 = 0;
          v77 = 0u;
          v78 = 0u;
          v75 = 0u;
          v76 = 0u;
          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          v69 = 0u;
          v70 = 0u;
          *v67 = 0u;
          v68 = 0u;
          *buf = 0u;
          memset(v66, 0, sizeof(v66));
          sub_10000D518(buf);
          sub_10000C030(buf);
          object = 0;
          v63 = 0;
          v64 = 0;
          sub_100A6024C(a4, &object);
          if (v64 >= 0)
          {
            v35 = HIBYTE(v64);
          }

          else
          {
            v35 = v63;
          }

          if (!v35)
          {
            if (SHIBYTE(v64) < 0)
            {
              v63 = 9;
              p_object = object;
            }

            else
            {
              HIBYTE(v64) = 9;
              p_object = &object;
            }

            strcpy(p_object, "<unknown>");
          }

          v37 = sub_10000C030(buf);
          sub_10000C030(v37);
          v38 = (*(*v31 + 808))(v31);
          sub_10000D684(buf, &__p);
          _DataSettingsChanged(v38, a1, v23, &__p);
          if (SHIBYTE(v61) < 0)
          {
            operator delete(__p);
          }

          v39 = Registry::getServiceMap(*a1);
          v40 = v39;
          if (v41 < 0)
          {
            v42 = (v41 & 0x7FFFFFFFFFFFFFFFLL);
            v43 = 5381;
            do
            {
              v41 = v43;
              v44 = *v42++;
              v43 = (33 * v43) ^ v44;
            }

            while (v44);
          }

          std::mutex::lock(v39);
          __p = v41;
          v45 = sub_100009510(&v40[1].__m_.__sig, &__p);
          if (v45)
          {
            v47 = v45[3];
            v46 = v45[4];
            if (v46)
            {
              atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v40);
              atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v46);
              if (!v47)
              {
LABEL_72:
                sub_100004A34(v46);
                goto LABEL_73;
              }

LABEL_57:
              __p = 0;
              v60 = 0;
              v61 = 0;
              remote_connection = xpc_dictionary_get_remote_connection(*a4);
              pid = xpc_connection_get_pid(remote_connection);
              (*(*v47 + 24))(&__p, v47, pid);
              v50 = HIBYTE(v61);
              if (v61 < 0)
              {
                v50 = v60;
              }

              if (!v50)
              {
                if (SHIBYTE(v61) < 0)
                {
                  v60 = 7;
                  p_p = __p;
                }

                else
                {
                  HIBYTE(v61) = 7;
                  p_p = &__p;
                }

                strcpy(p_p, "unknown");
              }

              ct_green_tea_logger_create_static();
              CTGreenTeaOsLogHandle = getCTGreenTeaOsLogHandle();
              v53 = CTGreenTeaOsLogHandle;
              if (CTGreenTeaOsLogHandle && os_log_type_enabled(CTGreenTeaOsLogHandle, OS_LOG_TYPE_INFO))
              {
                v54 = v23 != 0;
                v55 = SHIBYTE(v61);
                v56 = __p;
                v57 = asStringBool(v54);
                v58 = &__p;
                if (v55 < 0)
                {
                  v58 = v56;
                }

                *v85 = 136315394;
                v86 = v58;
                v87 = 2080;
                v88 = v57;
                _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "Process %s set Celluar Data %s", v85, 0x16u);
              }

              if (SHIBYTE(v61) < 0)
              {
                operator delete(__p);
              }

              if (!v46)
              {
                goto LABEL_73;
              }

              goto LABEL_72;
            }

            std::mutex::unlock(v40);
            if (v47)
            {
              goto LABEL_57;
            }
          }

          else
          {
            std::mutex::unlock(v40);
          }

LABEL_73:
          if (SHIBYTE(v64) < 0)
          {
            operator delete(object);
          }

          if (SHIBYTE(v68) < 0)
          {
            operator delete(v67[1]);
          }

          std::locale::~locale(v66);
          std::ostream::~ostream();
          std::ios::~ios();
LABEL_78:
          if (v32)
          {
            return;
          }

LABEL_29:
          sub_100004A34(v18);
          return;
        }
      }

      else
      {
        v31 = 0;
      }

      std::mutex::unlock(v25);
      v18 = 0;
      v32 = 1;
      if (!v31)
      {
        goto LABEL_78;
      }

      goto LABEL_33;
    }
  }
}

void sub_100180258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, xpc_object_t object, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v22)
  {
    sub_100004A34(v22);
  }

  if (a20 < 0)
  {
    operator delete(object);
  }

  sub_100D50834(&a21);
  if ((v23 & 1) == 0)
  {
    sub_100004A34(v21);
  }

  _Unwind_Resume(a1);
}

void sub_100180370(Registry **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4, void *a5)
{
  if (!xpc_dictionary_get_value(*a4, "kQOSInfo"))
  {
    return;
  }

  v26 = -1;
  v8 = *sub_100020154();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "server_CTRequestQos", buf, 2u);
  }

  v24 = "kQOSInfo";
  v25 = 0;
  *buf = a4;
  sub_100006354(buf, &v25);
  cf = 0;
  *buf = _CFXPCCreateCFObjectFromXPCObject();
  sub_100138C38(&cf, buf);
  ServiceMap = Registry::getServiceMap(*a1);
  v10 = ServiceMap;
  if (v11 < 0)
  {
    v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
    v13 = 5381;
    do
    {
      v11 = v13;
      v14 = *v12++;
      v13 = (33 * v13) ^ v14;
    }

    while (v14);
  }

  std::mutex::lock(ServiceMap);
  *buf = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, buf);
  if (v15)
  {
    v17 = v15[3];
    v16 = v15[4];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v10);
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v16);
      v18 = 0;
      if (!v17)
      {
        goto LABEL_16;
      }

LABEL_13:
      v21 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      (*(*v17 + 392))(v17, 1, &v21, &v26);
      sub_10001021C(&v21);
      goto LABEL_16;
    }
  }

  else
  {
    v17 = 0;
  }

  std::mutex::unlock(v10);
  v16 = 0;
  v18 = 1;
  if (v17)
  {
    goto LABEL_13;
  }

LABEL_16:
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  v19 = xpc_int64_create(v26);
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  *buf = *a5;
  v24 = "kQOSRequest";
  sub_10000F688(buf, &v19, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v19);
  v19 = 0;
  sub_10001021C(&cf);
  xpc_release(v25);
}

void sub_1001805A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, const void *a12, uint64_t a13, uint64_t a14, xpc_object_t object)
{
  sub_10001021C(&a11);
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  sub_10001021C(&a12);
  xpc_release(object);
  _Unwind_Resume(a1);
}

void sub_100180600(capabilities::ct *a1, uint64_t a2, uint64_t a3, xpc_object_t *a4, void *a5)
{
  if (capabilities::ct::supportsWirelessModem(a1))
  {
    v22 = 0uLL;
    v23 = 0;
    v20[0] = a4;
    v20[1] = "kAssertionName";
    sub_100006354(v20, &object);
    sub_10000501C(buf, "<unknown>");
    xpc::dyn_cast_or_default();
    if (v25 < 0)
    {
      operator delete(*buf);
    }

    xpc_release(object);
    *buf = a4;
    *&buf[8] = "kPacketServiceType";
    sub_100006354(buf, v20);
    v8 = xpc::dyn_cast_or_default(v20, 0, v7);
    xpc_release(v20[0]);
    v9 = *sub_100020154();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = &v22;
      if (v23 < 0)
      {
        v10 = v22;
      }

      *buf = 136315394;
      *&buf[4] = v10;
      *&buf[12] = 1024;
      *&buf[14] = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s is adding a tethering assertion of type %d", buf, 0x12u);
    }

    remote_connection = xpc_dictionary_get_remote_connection(*a4);
    v12 = remote_connection;
    if (remote_connection)
    {
      xpc_retain(remote_connection);
    }

    else
    {
      v12 = xpc_null_create();
    }

    TetheringAssertion::name(v18);
    v17 = v12;
    if (v12)
    {
      xpc_retain(v12);
    }

    else
    {
      v17 = xpc_null_create();
    }

    if (SHIBYTE(v23) < 0)
    {
      sub_100005F2C(__p, v22, *(&v22 + 1));
    }

    else
    {
      *__p = v22;
      v16 = v23;
    }

    sub_10007589C(v18, &v17, __p);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p[0]);
    }

    xpc_release(v17);
    v17 = 0;
    if (v19 < 0)
    {
      operator delete(v18[0]);
    }

    v13 = xpc_BOOL_create(1);
    if (!v13)
    {
      v13 = xpc_null_create();
    }

    *buf = *a5;
    *&buf[8] = "kDidSucceed";
    sub_10000F688(buf, &v13, &v14);
    xpc_release(v14);
    v14 = 0;
    xpc_release(v13);
    v13 = 0;
    xpc_release(v12);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22);
    }
  }
}

void sub_100180874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, xpc_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, xpc_object_t a25, uint64_t a26, xpc_object_t a27)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_10018096C(uint64_t a1, uint64_t a2, uint64_t a3, xpc_object_t *a4, void *a5)
{
  v20 = 0uLL;
  v21 = 0;
  v18[0] = a4;
  v18[1] = "kAssertionName";
  sub_100006354(v18, &object);
  sub_10000501C(&buf, "<unknown>");
  xpc::dyn_cast_or_default();
  if (v23 < 0)
  {
    operator delete(buf);
  }

  xpc_release(object);
  v7 = *sub_100020154();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = &v20;
    if (v21 < 0)
    {
      v8 = v20;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s is adding an OTA activation assertion", &buf, 0xCu);
  }

  remote_connection = xpc_dictionary_get_remote_connection(*a4);
  v10 = remote_connection;
  if (remote_connection)
  {
    xpc_retain(remote_connection);
  }

  else
  {
    v10 = xpc_null_create();
  }

  OTAActivationAssertion::name(v16);
  v15 = v10;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    v15 = xpc_null_create();
  }

  if (SHIBYTE(v21) < 0)
  {
    sub_100005F2C(__p, v20, *(&v20 + 1));
  }

  else
  {
    *__p = v20;
    v14 = v21;
  }

  sub_10007589C(v16, &v15, __p);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v15);
  v15 = 0;
  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  v11 = xpc_BOOL_create(1);
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  *&buf = *a5;
  *(&buf + 1) = "kDidSucceed";
  sub_10000F688(&buf, &v11, &v12);
  xpc_release(v12);
  v12 = 0;
  xpc_release(v11);
  v11 = 0;
  xpc_release(v10);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20);
  }
}

void sub_100180B98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, xpc_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, xpc_object_t a27)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_100180C74(uint64_t a1, uint64_t a2, uint64_t a3, xpc_object_t *a4, void *a5)
{
  v7 = *sub_100020154();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "CALL TO OBSOLETE API kPacketCreatePDPAssertion: should use a specific assertion type request", buf, 2u);
  }

  memset(buf, 0, sizeof(buf));
  v28 = 0;
  v25[0] = a4;
  v25[1] = "kAssertionName";
  sub_100006354(v25, &object);
  sub_10000501C(v29, "<unknown>");
  xpc::dyn_cast_or_default();
  if (v30 < 0)
  {
    operator delete(*v29);
  }

  xpc_release(object);
  *v29 = a4;
  *&v29[8] = "kPacketContextIdentifer";
  sub_100006354(v29, v25);
  v9 = xpc::dyn_cast_or_default(v25, 0, v8);
  xpc_release(v25[0]);
  v10 = *sub_100020154();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    v12 = buf;
    if (v28 < 0)
    {
      v12 = *buf;
    }

    *v29 = 136315394;
    *&v29[4] = v12;
    *&v29[12] = 1024;
    *&v29[14] = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s is adding an internet assertion for pdp %d", v29, 0x12u);
  }

  v13 = capabilities::ct::supportedPDPContextCount(v11);
  if (v13 >> 31)
  {
    __assert_rtn("kPacketCreatePDPAssertion", "PacketXPCServer.mm", 1030, "capabilities::ct::supportedPDPContextCount() <= std::numeric_limits<int>::max()");
  }

  v14 = capabilities::ct::supportedPDPContextCount(v13);
  if (v9 < 0 || v9 >= v14)
  {
    v17 = *sub_100020154();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 67109120;
      *&v29[4] = v9;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Invalid PDP Context %d specified", v29, 8u);
    }
  }

  else
  {
    remote_connection = xpc_dictionary_get_remote_connection(*a4);
    v16 = remote_connection;
    if (remote_connection)
    {
      xpc_retain(remote_connection);
    }

    else
    {
      v16 = xpc_null_create();
    }

    InternetAssertion::name(v23);
    v22 = v16;
    if (v16)
    {
      xpc_retain(v16);
    }

    else
    {
      v22 = xpc_null_create();
    }

    if (SHIBYTE(v28) < 0)
    {
      sub_100005F2C(__p, *buf, *&buf[8]);
    }

    else
    {
      *__p = *buf;
      v21 = v28;
    }

    sub_10007589C(v23, &v22, __p);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[0]);
    }

    xpc_release(v22);
    v22 = 0;
    if (v24 < 0)
    {
      operator delete(v23[0]);
    }

    v18 = xpc_BOOL_create(1);
    if (!v18)
    {
      v18 = xpc_null_create();
    }

    *v29 = *a5;
    *&v29[8] = "kDidSucceed";
    sub_10000F688(v29, &v18, &v19);
    xpc_release(v19);
    v19 = 0;
    xpc_release(v18);
    v18 = 0;
    xpc_release(v16);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(*buf);
  }
}

void sub_100180FB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, xpc_object_t object, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, xpc_object_t a24, uint64_t a25, xpc_object_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001810AC(uint64_t a1, uint64_t a2, uint64_t a3, xpc_object_t *a4, void *a5)
{
  v31[0] = 0;
  v31[1] = 0;
  v32 = 0;
  v30.__r_.__value_.__r.__words[0] = a4;
  v30.__r_.__value_.__l.__size_ = "kAssertionName";
  sub_100006354(&v30, object);
  sub_10000501C(buf, "<unknown>");
  xpc::dyn_cast_or_default();
  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  xpc_release(object[0]);
  v7 = *sub_100020154();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v31;
    if (v32 < 0)
    {
      v8 = v31[0];
    }

    *buf = 136315138;
    *&buf[4] = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s is adding an Data Activation assertion\n", buf, 0xCu);
  }

  memset(&v30, 0, sizeof(v30));
  v29 = 0;
  *buf = a4;
  *&buf[8] = "kPacketCreateDataActivationPopupAssertionCategories";
  sub_100006354(buf, &v29);
  if (xpc_get_type(v29) != &_xpc_type_null)
  {
    theArray = 0;
    *buf = _CFXPCCreateCFObjectFromXPCObject();
    sub_1001837C8(&theArray, buf);
    v9 = theArray;
    if (theArray)
    {
      for (i = 0; i < CFArrayGetCount(v9); ++i)
      {
        if (CFArrayGetValueAtIndex(theArray, i))
        {
          size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
          if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = v30.__r_.__value_.__l.__size_;
          }

          if (size)
          {
            memset(buf, 0, sizeof(buf));
            ctu::cf::assign();
            *object = *buf;
            v34 = *&buf[16];
            if ((buf[23] & 0x80u) == 0)
            {
              v12 = object;
            }

            else
            {
              v12 = object[0];
            }

            if ((buf[23] & 0x80u) == 0)
            {
              v13 = HIBYTE(v34);
            }

            else
            {
              v13 = object[1];
            }

            std::string::append(&v30, v12, v13);
            if (SHIBYTE(v34) < 0)
            {
              operator delete(object[0]);
            }
          }

          else
          {
            memset(buf, 0, sizeof(buf));
            ctu::cf::assign();
            v14 = *buf;
            object[0] = *&buf[8];
            *(object + 7) = *&buf[15];
            v15 = buf[23];
            if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v30.__r_.__value_.__l.__data_);
            }

            v30.__r_.__value_.__r.__words[0] = v14;
            v30.__r_.__value_.__l.__size_ = object[0];
            *(&v30.__r_.__value_.__r.__words[1] + 7) = *(object + 7);
            *(&v30.__r_.__value_.__s + 23) = v15;
          }
        }

        v9 = theArray;
      }
    }

    sub_100010250(&theArray);
  }

  v16 = *sub_100020154();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v31;
    if (v32 < 0)
    {
      v17 = v31[0];
    }

    v18 = &v30;
    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v18 = v30.__r_.__value_.__r.__words[0];
    }

    *buf = 136315394;
    *&buf[4] = v17;
    *&buf[12] = 2080;
    *&buf[14] = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s is adding an Data Activation assertion for category %s\n", buf, 0x16u);
  }

  remote_connection = xpc_dictionary_get_remote_connection(*a4);
  v20 = remote_connection;
  if (remote_connection)
  {
    xpc_retain(remote_connection);
  }

  else
  {
    v20 = xpc_null_create();
  }

  DataActivationPopupAssertion::name(v26);
  v25 = v20;
  if (v20)
  {
    xpc_retain(v20);
  }

  else
  {
    v25 = xpc_null_create();
  }

  if (SHIBYTE(v32) < 0)
  {
    sub_100005F2C(__p, v31[0], v31[1]);
  }

  else
  {
    *__p = *v31;
    v24 = v32;
  }

  sub_10007589C(v26, &v25, __p);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v25);
  v25 = 0;
  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  v21 = xpc_BOOL_create(1);
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  *buf = *a5;
  *&buf[8] = "kDidSucceed";
  sub_10000F688(buf, &v21, &v22);
  xpc_release(v22);
  v22 = 0;
  xpc_release(v21);
  v21 = 0;
  xpc_release(v20);
  xpc_release(v29);
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[0]);
  }
}

void sub_1001814EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, xpc_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, xpc_object_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, xpc_object_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_100181658(Registry **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4)
{
  if (xpc_dictionary_get_value(*a4, "kQOSInfo"))
  {
    v6 = *sub_100020154();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "server_CTReleaseQos", v19, 2u);
    }

    v19[0] = a4;
    v19[1] = "kQOSInfo";
    sub_100006354(v19, &object);
    v8 = xpc::dyn_cast_or_default(&object, 0, v7);
    xpc_release(object);
    ServiceMap = Registry::getServiceMap(*a1);
    v10 = ServiceMap;
    if ((v11 & 0x8000000000000000) != 0)
    {
      v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
      v13 = 5381;
      do
      {
        v11 = v13;
        v14 = *v12++;
        v13 = (33 * v13) ^ v14;
      }

      while (v14);
    }

    std::mutex::lock(ServiceMap);
    v19[0] = v11;
    v15 = sub_100009510(&v10[1].__m_.__sig, v19);
    if (v15)
    {
      v17 = v15[3];
      v16 = v15[4];
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v10);
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v16);
        v18 = 0;
        if (!v17)
        {
LABEL_14:
          if ((v18 & 1) == 0)
          {
            sub_100004A34(v16);
          }

          return;
        }

LABEL_13:
        (*(*v17 + 400))(v17, v8);
        goto LABEL_14;
      }
    }

    else
    {
      v17 = 0;
    }

    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
    if (!v17)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }
}

void sub_1001817F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100181828(Registry **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4)
{
  if (!xpc_dictionary_get_value(*a4, "kPacketFilterStatus") || !xpc_dictionary_get_value(*a4, "kQOSInfo"))
  {
    return;
  }

  v6 = *sub_100020154();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "_CTServerConnectionSetPacketNotificationFilter()", buf, 2u);
  }

  *buf = a4;
  v22 = "kPacketFilterStatus";
  sub_100006354(buf, &object);
  v8 = xpc::dyn_cast_or_default(&object, 0, v7);
  xpc_release(object);
  object = 0;
  *buf = a4;
  v22 = "kQOSInfo";
  sub_100006354(buf, &object);
  cf = 0;
  *buf = _CFXPCCreateCFObjectFromXPCObject();
  sub_100138C38(&cf, buf);
  ServiceMap = Registry::getServiceMap(*a1);
  v10 = ServiceMap;
  if (v11 < 0)
  {
    v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
    v13 = 5381;
    do
    {
      v11 = v13;
      v14 = *v12++;
      v13 = (33 * v13) ^ v14;
    }

    while (v14);
  }

  std::mutex::lock(ServiceMap);
  *buf = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, buf);
  if (v15)
  {
    v17 = v15[3];
    v16 = v15[4];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v10);
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v16);
      v18 = 0;
      if (!v17)
      {
        goto LABEL_17;
      }

LABEL_14:
      v19 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      (*(*v17 + 416))(v17, 1, v8 != 0, &v19);
      sub_10001021C(&v19);
      goto LABEL_17;
    }
  }

  else
  {
    v17 = 0;
  }

  std::mutex::unlock(v10);
  v16 = 0;
  v18 = 1;
  if (v17)
  {
    goto LABEL_14;
  }

LABEL_17:
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  sub_10001021C(&cf);
  xpc_release(object);
}