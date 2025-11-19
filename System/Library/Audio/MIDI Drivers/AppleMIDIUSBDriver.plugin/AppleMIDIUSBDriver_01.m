_DWORD *sub_10900(_DWORD *result, uint64_t a2, char *__src)
{
  v3 = result;
  v4 = *__src;
  v5 = byte_23008[v4 >> 28];
  v6 = *(result + 7);
  if (byte_23008[v4 >> 28])
  {
    v7 = (result + 272);
    v8 = v4 & 0xF0000000;
    v9 = result[17];
    if (v6)
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (!v9)
      {
        goto LABEL_34;
      }

      if (!v6)
      {
        if (v8 != 805306368)
        {
          goto LABEL_31;
        }

LABEL_33:
        v6 += v6[2] + 3;
LABEL_34:
        if (&v6[v5 + 3] <= v7)
        {
          LODWORD(v19) = 0;
          result[17] = v9 + 1;
          *v6 = a2;
          v6[2] = 0;
          goto LABEL_37;
        }

        goto LABEL_35;
      }
    }

    else
    {
      v11 = v6[2];
      v12 = v11 >= 2;
      v13 = v11 - 2;
      if (v12 && v6[3] >> 28 == 3)
      {
        v14 = v6[v13 + 3];
        if (v14 >> 28 == 3)
        {
          v15 = (v14 >> 20) & 0xF;
        }

        else
        {
          v15 = 255;
        }

        if (v15)
        {
          v16 = v15 == 3;
        }

        else
        {
          v16 = 1;
        }

        v17 = v16;
        v18 = 1;
LABEL_27:
        if ((v4 & 0xF0E00000) != 0x30000000 && (((v8 == 805306368) ^ v18) & 1) == 0 && *v6 == a2 && (v17 & 1) == 0)
        {
LABEL_31:
          v19 = v6[2];
          if (&v6[v19 + 3 + v5] <= v7)
          {
LABEL_37:
            result = &v6[v19 + 3];
            if (v5 > 2)
            {
              if (v5 != 3)
              {
                if (v5 != 4)
                {
LABEL_49:
                  result = memmove(result, __src, 4 * v5);
                  goto LABEL_47;
                }

                v20 = *__src;
                __src += 4;
                *result = v20;
                result = &v6[v19 + 4];
              }

              v21 = *__src;
              __src += 4;
              *result++ = v21;
            }

            else
            {
              if (v5 == 1)
              {
LABEL_46:
                *result = *__src;
LABEL_47:
                v6[2] += v5;
                goto LABEL_48;
              }

              if (v5 != 2)
              {
                goto LABEL_49;
              }
            }

            v22 = *__src;
            __src += 4;
            *result++ = v22;
            goto LABEL_46;
          }

          goto LABEL_35;
        }

        goto LABEL_33;
      }
    }

    v18 = 0;
    v17 = 0;
    goto LABEL_27;
  }

  if (!v6)
  {
LABEL_35:
    result = sub_10ADC(result, a2, __src, v5);
    v6 = result;
  }

LABEL_48:
  *(v3 + 7) = v6;
  return result;
}

uint64_t sub_10ADC(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  if (*(a1 + 68))
  {
    v19 = a1 + 64;
    (**a1)(a1 + 8, &v19);
    *(a1 + 68) = 0;
    v8 = a1 + 72;
    if (!a4)
    {
      return v8;
    }

    if (a4 <= 251)
    {
      *(a1 + 68) = 1;
      *(a1 + 72) = a2;
      *(a1 + 80) = 0;
      v12 = (a1 + 84);
      v13 = (4 * a4) >> 2;
      if (v13 <= 1)
      {
        v17 = 0;
        if (!v13)
        {
LABEL_18:
          *(a1 + 80) = v17 + a4;
          return v8;
        }

        if (v13 == 1)
        {
LABEL_17:
          *v12 = *a3;
          v17 = *(a1 + 80);
          goto LABEL_18;
        }
      }

      else
      {
        switch(v13)
        {
          case 2:
LABEL_14:
            v16 = *a3++;
            *v12++ = v16;
            goto LABEL_17;
          case 3:
LABEL_13:
            v15 = *a3++;
            *v12++ = v15;
            goto LABEL_14;
          case 4:
            v14 = *a3++;
            v12 = (a1 + 88);
            *(a1 + 84) = v14;
            goto LABEL_13;
        }
      }

      memmove(v12, a3, 4 * a4);
      v17 = 0;
      goto LABEL_18;
    }
  }

  v9 = *(a1 + 64);
  MIDI::EventList::create();
  v21 = v19;
  (**a1)(a1 + 8, &v21);
  v10 = v19;
  v19 = 0;
  if (v10)
  {
    v20();
    v11 = v19;
    v8 = a1 + 72;
    *(a1 + 56) = a1 + 72;
    *(a1 + 68) = 0;
    v19 = 0;
    if (v11)
    {
      v20();
    }
  }

  else
  {
    v8 = a1 + 72;
    *(a1 + 56) = a1 + 72;
    *(a1 + 68) = 0;
  }

  return v8;
}

void sub_10C70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void (*a11)(void))
{
  if (a10)
  {
    a11();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10C94(uint64_t a1)
{
  if (*(a1 + 68))
  {
    v3 = a1 + 64;
    (**a1)(a1 + 8, &v3);
  }

  *(a1 + 68) = 0;
  *(a1 + 56) = a1 + 72;
  (*(*a1 + 24))(a1 + 8);
  return a1;
}

unsigned int *sub_10D08(unsigned int *result, _DWORD **a2)
{
  if (*result)
  {
    v3 = result;
    v4 = 0;
    v5 = (result + 1);
    do
    {
      result = sub_10D74(a2, v5);
      v5 = (v5 + *(v5 + 8) + 13) & 0xFFFFFFFFFFFFFFFCLL;
      ++v4;
    }

    while (v4 < *v3);
  }

  return result;
}

uint64_t sub_10D74(_DWORD **a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v8[0] = a2 + 10;
  v8[1] = v3;
  v8[2] = *a2;
  v8[3] = 0;
  v6 = 0;
  *v7 = 0;
  __src = 0;
  result = sub_10DF8(v8, v7, &__src);
  if (result)
  {
    do
    {
      sub_10900(*a1, *v7, &__src);
      v6 = 0;
      *v7 = 0;
      __src = 0;
      result = sub_10DF8(v8, v7, &__src);
    }

    while ((result & 1) != 0);
  }

  return result;
}

uint64_t sub_10DF8(uint64_t *a1, void *a2, _DWORD *a3)
{
  v3 = a1[1];
  v4 = a1[3];
  if (v4 >= v3)
  {
    return 0;
  }

  v5 = *a1;
  v6 = (*a1 + v4);
  v7 = *v6;
  if (*v6 < -16)
  {
LABEL_3:
    v8 = 2;
    if ((v7 & 0xE0) != 0xC0)
    {
      v8 = 3;
    }

    v9 = v8 + v4;
    v10 = v9 <= v3;
    if (v9 <= v3)
    {
      v11 = v6[1] & 0x7F;
      if ((v7 & 0xE0) == 0xC0)
      {
        v12 = 0;
      }

      else
      {
        v12 = v6[2] & 0x7F;
      }

      *a3 = v12 | (v7 << 16) | (v11 << 8) | 0x20000000;
      *a2 = a1[2];
      v3 = v9;
    }

    goto LABEL_20;
  }

  while (2)
  {
    if (v7 < 0xF1)
    {
      v16 = v7 == 240;
      if (v7 == 240)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v16)
      {
        a1[3] = ++v4;
      }

      v18 = 0;
      v19 = 0;
      v20 = 0;
      while (1)
      {
        v21 = (v4 < v3) | v19;
        if (v4 < v3 && (v19 & 1) == 0)
        {
          v22 = *(v5 + v4);
          if ((v22 & 0x80000000) == 0)
          {
            if (v18 == 6)
            {
              goto LABEL_43;
            }

            v21 = 0;
            a1[3] = ++v4;
            ++v20;
            goto LABEL_42;
          }

          if (v22 == -9)
          {
            a1[3] = ++v4;
          }

          if (v17 == 1)
          {
            v17 = 0;
          }

          else
          {
            v17 = 3;
          }

          v21 = 1;
        }

        if (v18 == 6)
        {
LABEL_43:
          v23 = bswap32(v28);
          *a3 = (v17 << 20) | (v20 << 16) | (v27[0] << 8) | v27[1] | 0x30000000;
          a3[1] = v23;
          *a2 = a1[2];
          return 1;
        }

        LOBYTE(v22) = 0;
LABEL_42:
        v27[v18++] = v22;
        v19 = v21;
      }
    }

    if (v7 == 247)
    {
      *a3 = 808452096;
      *a2 = a1[2];
      v24 = v4 + 1;
      goto LABEL_53;
    }

    if ((0x22B1uLL >> (v7 + 16)))
    {
      v13 = v4;
      do
      {
        v4 = v13 + 1;
        a1[3] = v13 + 1;
        if (v13 + 1 >= v3)
        {
          return 0;
        }

        v14 = *(v5 + v13++ + 1);
      }

      while ((v14 & 0x80000000) == 0);
      v6 = (v5 + v4);
      v7 = *(v5 + v4);
      if (*(v5 + v4) > -17)
      {
        continue;
      }

      goto LABEL_3;
    }

    break;
  }

  v24 = v4 + byte_22F10[v7 - 240];
  if (v24 > v3)
  {
    v10 = 0;
LABEL_20:
    a1[3] = v3;
    return v10;
  }

  if ((0xDD40uLL >> (v7 + 16)))
  {
    v25 = 0;
    goto LABEL_51;
  }

  v25 = v6[1] & 0x7F;
  if (v7 != 242)
  {
LABEL_51:
    v26 = 0;
    goto LABEL_52;
  }

  v26 = v6[2] & 0x7F;
LABEL_52:
  *a3 = (v7 << 16) | (v25 << 8) | v26 | 0x10000000;
  *a2 = a1[2];
LABEL_53:
  a1[3] = v24;
  return 1;
}

void *sub_11064(void *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = &off_28A88;
  *a1 = off_28AC0;
  a1[1] = v3;
  (*(v3 + 16))(a1 + 2, a2 + 1);
  bzero(a1 + 8, 0x821uLL);
  return a1;
}

void *sub_110CC(void *a1)
{
  *a1 = off_28AC0;
  (*(a1[1] + 24))(a1 + 2);
  return a1;
}

void sub_11120(void *a1)
{
  *a1 = off_28AC0;
  (*(a1[1] + 24))(a1 + 2);

  operator delete();
}

uint64_t sub_11194(uint64_t a1, _DWORD *a2)
{
  if (*a2 == 2)
  {
    v10 = a2;
    return (**(a1 + 8))(a1 + 16, &v10);
  }

  else
  {
    if (*a2 != 1)
    {
      std::terminate();
    }

    v4 = *(a1 + 8);
    v9 = 0;
    v10 = v4;
    (*(v4 + 8))(v11, a1 + 16);
    v11[7] = 2;
    v11[6] = &v12;
    v6 = &v9;
    v7 = a1;
    v8 = &v10;
    sub_11380(a2, &v6);
    v6 = &v10;
    v7 = &v9;
    sub_11458((a1 + 64), &v6);
    return sub_10C94(&v10);
  }
}

void sub_11294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10C94(va);
  _Unwind_Resume(a1);
}

uint64_t sub_112B4(uint64_t a1, unsigned int *a2)
{
  v7 = *(a1 + 8);
  (*(v7 + 8))(v8, a1 + 16);
  v8[7] = 2;
  v8[6] = &v9;
  v5[0] = a1;
  v5[1] = &v7;
  v6 = v5;
  sub_11C98(a2, &v6);
  return sub_10C94(&v7);
}

void sub_11364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10C94(va);
  _Unwind_Resume(a1);
}

uint64_t sub_11380(uint64_t result, uint64_t a2)
{
  if (*(result + 4))
  {
    v3 = result;
    v4 = 0;
    v5 = result + 8;
    do
    {
      v6 = *(v5 + 8);
      v12[0] = v5 + 12;
      v12[1] = v6;
      v12[2] = *v5;
      v12[3] = 0;
      v10 = 0;
      v11 = 0;
      __src = 0;
      result = sub_379C(v12, &v11, &__src);
      if (result)
      {
        do
        {
          v8 = *a2;
          v7 = *(a2 + 8);
          *v8 = v11;
          v13[0] = *(a2 + 16);
          v13[1] = v8;
          sub_115D8(v7 + 64, &__src, v13);
          v10 = 0;
          v11 = 0;
          __src = 0;
          result = sub_379C(v12, &v11, &__src);
        }

        while ((result & 1) != 0);
      }

      v5 += 12 + 4 * *(v5 + 8);
      ++v4;
    }

    while (v4 < *(v3 + 4));
  }

  return result;
}

_DWORD *sub_11458(_DWORD *result, _DWORD **a2)
{
  v3 = result;
  v4 = *result;
  v5 = v4 >> 28;
  if (v4 >> 28)
  {
    v6 = v5 == 15;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6 || (v4 & 0xFF0000) == 0;
  if (!v7 && (BYTE1(v4) | 0x20) == 0x26)
  {
    LODWORD(v20) = BYTE3(v4) & 0xF;
    if (v5 == 15)
    {
      v20 = 255;
    }

    else
    {
      v20 = v20;
    }

    *(&result[32 * v20 + 8 + 2 * ((v4 >> 16) & 0xF)] + 1) = 0;
    *(result + 32) = 1;
  }

  if (BYTE2(v4))
  {
    v23 = 0;
    if (v5)
    {
      v8 = v5 == 15;
    }

    else
    {
      v8 = 1;
    }

    v9 = v4 & 0xF000000 | 0x40000000;
    if (v8)
    {
      v9 = -16777216;
    }

    v21 = v9 | v4 & 0xFF00 | (BYTE2(v4) << 16);
    v10 = v4;
    v11 = v4 << 25;
    if (v10 >= 0x41)
    {
      v12 = (v10 & 0x3F) << 19;
      if (v12)
      {
        do
        {
          v11 |= v12;
          v13 = v12 > 0x3F;
          v12 >>= 6;
        }

        while (v13);
      }
    }

    v22 = v11;
    result = sub_10900(*a2, *a2[1], &v21);
    *v3 = 0;
  }

  v14 = v3[4];
  if (BYTE2(v14))
  {
    v23 = 0;
    if (v14 >> 28)
    {
      v15 = v14 >> 28 == 15;
    }

    else
    {
      v15 = 1;
    }

    v16 = v14 & 0xF000000 | 0x40000000;
    if (v15)
    {
      v16 = -16777216;
    }

    v21 = v16 | v14 & 0xFF00 | (BYTE2(v14) << 16);
    v17 = v14;
    v18 = v14 << 25;
    if (v17 >= 0x41)
    {
      v19 = (v17 & 0x3F) << 19;
      if (v19)
      {
        do
        {
          v18 |= v19;
          v13 = v19 > 0x3F;
          v19 >>= 6;
        }

        while (v13);
      }
    }

    v22 = v18;
    result = sub_10900(*a2, *a2[1], &v21);
    v3[4] = 0;
  }

  return result;
}

void sub_115D8(uint64_t a1, char *__src, _DWORD **a3)
{
  v5 = *__src;
  if (*__src >> 28 != 2)
  {
    v24 = *a3;
    v25 = *a3[1];

    sub_10900(v24, v25, __src);
    return;
  }

  v53 = 0;
  v54 = 0;
  v52 = BYTE2(v5);
  v51 = 0;
  v50[0] = a1;
  v50[1] = &v52;
  v50[2] = __src;
  v50[3] = (&v51 + 1);
  v50[4] = &v51;
  v7 = *(a1 + 32);
  if ((v7 & 1) == 0)
  {
    sub_11AC4(v50);
  }

  v8 = v5 & 0x7F;
  v9 = HIBYTE(v5) & 0xF;
  v10 = HIBYTE(v5) & 0xF | 0x40;
  v11 = *a1;
  v12 = BYTE2(*a1);
  if (BYTE2(*a1) && v7)
  {
    *(a1 + 32) = 1;
    v57 = 0;
    __srca = v11 & 0xFF00 | (v12 << 16) & 0x80FFFFFF | ((HIBYTE(v5) & 0xF | 0x40) << 24);
    v13 = v11;
    v14 = v11 << 25;
    if (v13 >= 0x41)
    {
      v15 = (v13 & 0x3F) << 19;
      if (v15)
      {
        do
        {
          v14 |= v15;
          v16 = v15 > 0x3F;
          v15 >>= 6;
        }

        while (v16);
      }
    }

    v56 = v14;
    sub_10900(*a3, *a3[1], &__srca);
    *a1 = 0;
    v57 = 0;
    v17 = *(a1 + 16);
    if (BYTE2(v17))
    {
      __srca = *(a1 + 16) & 0xFF00 | (BYTE2(*(a1 + 16)) << 16) | (v10 << 24);
      v18 = v17;
      v19 = v17 << 25;
      v20 = v18 >= 0x41;
      v21 = (v18 & 0x3F) << 19;
      if (v20 && v21 != 0)
      {
        do
        {
          v19 |= v21;
          v16 = v21 > 0x3F;
          v21 >>= 6;
        }

        while (v16);
      }

      v56 = v19;
      sub_10900(*a3, *a3[1], &__srca);
      *(a1 + 16) = 0;
    }

    v23 = v52;
    *(a1 + (v9 << 7) + 8 * (v52 & 0xF) + 33) = 0;
  }

  else
  {
    v23 = v52;
  }

  v26 = (v5 >> 8) & 0x7F;
  v27 = v23 >> 4;
  if (v23 >> 4 <= 0xA)
  {
    if (v27 != 8)
    {
      if (v27 != 9)
      {
        if (v27 != 10)
        {
          goto LABEL_62;
        }

        HIDWORD(v52) = (v10 << 24) | (v23 << 16) | (v26 << 8);
        v32 = v5 << 25;
        if (v8 >= 0x41)
        {
          v33 = (v5 & 0x3F) << 19;
          if (v33)
          {
            do
            {
              v32 |= v33;
              v16 = v33 > 0x3F;
              v33 >>= 6;
            }

            while (v16);
          }
        }

        goto LABEL_55;
      }

      if ((v5 & 0x7F) == 0)
      {
        v23 -= 16;
        LODWORD(v52) = v23;
        v8 = 64;
      }
    }

    HIDWORD(v52) = (v10 << 24) | (v23 << 16) | (v26 << 8);
    v40 = v8 << 9;
    if (v8 >= 0x41)
    {
      v41 = 8 * (v8 & 0x3F);
      if (v41)
      {
        do
        {
          v40 |= v41;
          v16 = v41 > 0x3F;
          v41 >>= 6;
        }

        while (v16);
      }
    }

    v32 = v40 << 16;
    goto LABEL_55;
  }

  if (v23 >> 4 > 0xC)
  {
    if (v27 == 13)
    {
      HIDWORD(v52) = (v23 << 16) | (v10 << 24);
      v38 = v5 >> 8 << 25;
      if (v26 >= 0x41)
      {
        v39 = ((v5 >> 8) & 0x3F) << 19;
        if (v39)
        {
          do
          {
            v38 |= v39;
            v16 = v39 > 0x3F;
            v39 >>= 6;
          }

          while (v16);
        }
      }

      v53 = v38;
      goto LABEL_62;
    }

    if (v27 != 14)
    {
      goto LABEL_62;
    }

    HIDWORD(v52) = (v23 << 16) | (v10 << 24);
    v34 = v26 | (v8 << 7);
    v32 = v34 << 18;
    if (v34 > 0x2000)
    {
      for (i = 32 * (v34 & 0x1FFF); i; i >>= 13)
      {
        v32 |= i;
      }
    }

LABEL_55:
    v53 = v32;
    goto LABEL_62;
  }

  if (v27 != 11)
  {
    if (v27 == 12)
    {
      v28 = a1 + (v9 << 7) + 8 * (v23 & 0xF);
      v30 = *(v28 + 33);
      v29 = v28 + 33;
      if (v30 == 1)
      {
        v31 = *(a1 + 32) ^ 1;
      }

      else
      {
        v31 = 0;
      }

      v43 = (v26 << 24) | (*(v29 + 2) << 8) | *(v29 + 3);
      HIDWORD(v52) = (v23 << 16) | (v10 << 24) | v31;
      v53 = v43;
      *v29 = 0;
LABEL_61:
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
    }

LABEL_62:
    sub_10900(*a3, *a3[1], &v52 + 4);
    return;
  }

  v36 = (a1 + (v9 << 7) + 8 * (v23 & 0xF));
  if (((v5 >> 8) & 0x7F) <= 0x61)
  {
    if (((v5 >> 8) & 0x7F) > 0x1F)
    {
      if (v26 != 32)
      {
        if (v26 == 38)
        {
          v37 = v5 & 0x7F;
          goto LABEL_67;
        }

LABEL_88:
        HIDWORD(v52) = (v10 << 24) | (v23 << 16) | (v26 << 8);
        v32 = v5 << 25;
        if (v8 >= 0x41)
        {
          v49 = (v5 & 0x3F) << 19;
          if (v49)
          {
            do
            {
              v32 |= v49;
              v16 = v49 > 0x3F;
              v49 >>= 6;
            }

            while (v16);
          }
        }

        goto LABEL_55;
      }

      v36[36] = v8;
    }

    else
    {
      if (v26)
      {
        if (v26 == 6)
        {
          v37 = 0;
          v36[39] = v8;
LABEL_67:
          v36[40] = v37;
LABEL_79:
          if ((*(a1 + 32) & 1) == 0 && v36[34])
          {
            if (v36[34] == 1)
            {
              v45 = 32;
            }

            else
            {
              v45 = 48;
            }

            HIDWORD(v52) = (v10 << 24) | ((v45 | v23 & 0xF) << 16) | (v36[37] << 8) | v36[38];
            v46 = v36[40] | (v36[39] << 7);
            v47 = v46 << 18;
            if (v46 > 0x2000)
            {
              for (j = 32 * (v46 & 0x1FFF); j; j >>= 13)
              {
                v47 |= j;
              }
            }

            v53 = v47;
            goto LABEL_61;
          }

          goto LABEL_88;
        }

        goto LABEL_88;
      }

      v36[35] = v8;
    }

    v36[33] = 1;
    goto LABEL_78;
  }

  if (((v5 >> 8) & 0x7F) > 0x63)
  {
    if (v26 != 100)
    {
      if (v26 != 101)
      {
        goto LABEL_88;
      }

      v42 = 1;
      goto LABEL_71;
    }

    v44 = 1;
  }

  else
  {
    if (v26 != 98)
    {
      v42 = 2;
LABEL_71:
      v36[34] = v42;
      v36[37] = v8;
      goto LABEL_78;
    }

    v44 = 2;
  }

  v36[34] = v44;
  v36[38] = v8;
LABEL_78:
  if (*(a1 + 32))
  {
    goto LABEL_79;
  }
}

__n128 sub_11AC4(unsigned int **a1)
{
  v1 = *a1;
  if ((*a1)[8])
  {
    return result;
  }

  v2 = *a1[1];
  v3 = v2 >> 4;
  v4 = *v1;
  if ((*v1 & 0xFF0000) != 0)
  {
    if (((v2 ^ HIWORD(v4)) & 0xF) != 0)
    {
      *(v1 + 32) = 1;
      return result;
    }

    if (v3 == 11)
    {
      if (BYTE1(v4) > 0x62u)
      {
        switch(BYTE1(v4))
        {
          case 'c':
            v9 = a1[2];
            v10 = *v9 & 0xFF00;
            v11 = *v9 & 0xF0DF00;
            v12 = 25088;
            break;
          case 'd':
            v9 = a1[2];
            v10 = *v9 & 0xFF00;
            v11 = *v9 & 0xF0DF00;
            v12 = 25856;
            break;
          case 'e':
            v9 = a1[2];
            if ((*v9 & 0xFF00) != 0x6400 && (*v9 & 0xF0DF00) != 0xB00600)
            {
              return result;
            }

            goto LABEL_39;
          default:
            return result;
        }
      }

      else
      {
        if (!BYTE1(v4))
        {
          v9 = a1[2];
          if (*(v9 + 1) << 8 != 0x2000)
          {
            return result;
          }

          goto LABEL_39;
        }

        if (BYTE1(v4) == 32)
        {
          v9 = a1[2];
          if (*(v9 + 1))
          {
            return result;
          }

          goto LABEL_39;
        }

        if (BYTE1(v4) != 98)
        {
          return result;
        }

        v9 = a1[2];
        v10 = *v9 & 0xFF00;
        v11 = *v9 & 0xF0DF00;
        v12 = 25344;
      }

      if (v10 != v12 && v11 != 11535872)
      {
        return result;
      }

LABEL_39:
      result = *v9;
      *(v1 + 1) = *v9;
    }
  }

  else if (v3 == 11)
  {
    v5 = a1[2];
    if ((v5->n128_u32[0] & 0xF00000) == 0xB00000)
    {
      v6 = BYTE1(v5->n128_u32[0]);
      if ((v6 - 98) < 4 || (v6 != 32 ? (v7 = v6 == 0) : (v7 = 1), v7))
      {
        result = *v5;
        *v1 = *v5;
      }
    }
  }

  return result;
}

unsigned int *sub_11C98(unsigned int *result, uint64_t **a2)
{
  if (*result)
  {
    v3 = result;
    v4 = 0;
    v5 = (result + 1);
    do
    {
      result = sub_11D04(a2, v5);
      v5 = (v5 + *(v5 + 8) + 13) & 0xFFFFFFFFFFFFFFFCLL;
      ++v4;
    }

    while (v4 < *v3);
  }

  return result;
}

uint64_t sub_11D04(uint64_t **a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v10[0] = a2 + 10;
  v10[1] = v3;
  v10[2] = *a2;
  v10[3] = 0;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  result = sub_10DF8(v10, &v9, &v7);
  if (result)
  {
    do
    {
      v5 = *a1;
      v12 = v9;
      v6 = *v5;
      v11[0] = v5[1];
      v11[1] = &v12;
      sub_115D8(v6 + 64, &v7, v11);
      v8 = 0;
      v9 = 0;
      v7 = 0;
      result = sub_10DF8(v10, &v9, &v7);
    }

    while ((result & 1) != 0);
  }

  return result;
}

void sub_11DA0(void ***a1)
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
        v4 -= 296;
        sub_11E24(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_11E24(uint64_t result)
{
  v1 = result;
  v2 = *(result + 272);
  if (v2 != -1)
  {
    result = (off_28AE0[v2])(&v3, result);
  }

  *(v1 + 272) = -1;
  return result;
}

void sub_11E80(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

void *sub_11E94(void *a1)
{
  for (i = a1[1]; i != a1; i = i[1])
  {
    v3 = i[4];
    if (v3)
    {
      free(v3);
    }
  }

  sub_11EE4(a1);
  return a1;
}

void *sub_11EE4(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

uint64_t sub_11F48(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_11FBC(result, a4);
  }

  return result;
}

void sub_11FA0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_11FBC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_11FF8(a1, a2);
  }

  sub_CE0();
}

void sub_11FF8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_DD0();
}

void sub_12058(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_120B4(exception, a1);
}

std::logic_error *sub_120B4(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void *sub_120E8(void *a1)
{
  v2 = a1[12];
  if (v2)
  {
    a1[13] = v2;
    operator delete(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    a1[10] = v3;
    operator delete(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    a1[7] = v4;
    operator delete(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    a1[4] = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_1214C(void *a1, void *a2)
{
  v2 = (a1[1] - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    sub_CE0();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v14 = a1;
  if (v7)
  {
    sub_11FF8(a1, v7);
  }

  __p = 0;
  v11 = (8 * v2);
  v13 = 0;
  *v11 = *a2;
  v12 = 8 * v2 + 8;
  sub_1226C(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_12234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1226C(uint64_t result, void *a2)
{
  v2 = *result;
  v3 = *(result + 8);
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = (a2[1] + *result - v3);
    do
    {
      v6 = *v2++;
      *v5++ = v6;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  *(result + 8) = v2;
  a2[1] = v2;
  v7 = *(result + 8);
  *(result + 8) = a2[2];
  a2[2] = v7;
  v8 = *(result + 16);
  *(result + 16) = a2[3];
  a2[3] = v8;
  *a2 = a2[1];
  return result;
}

_BYTE *sub_122D4(_BYTE *a1)
{
  if (a1[8] == 1)
  {
    v2 = *a1;
    (*(**a1 + 24))();
  }

  return a1;
}

uint64_t sub_12330(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    result = sub_1254C(a1, a2);
  }

  else
  {
    v5 = sub_126A8(v4, a2);
    v6 = *(a2 + 280);
    *(v5 + 285) = *(a2 + 285);
    *(v5 + 280) = v6;
    result = v5 + 296;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_1239C(uint64_t a1, unsigned int *a2, int a3, int a4, char a5)
{
  *(a1 + 252) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 272) = 0;
  *(a1 + 280) = a3;
  *(a1 + 284) = a4;
  *(a1 + 288) = 0;
  v7 = a2[2];
  v8 = 4 * v7;
  *(a1 + 292) = a5;
  sub_11E24(a1);
  if (v7 > 0x40)
  {
    sub_12488(a1, v8 + 12);
    *(a1 + 272) = 1;
    v9 = *a1;
  }

  else
  {
    *(a1 + 252) = 0u;
    *(a1 + 224) = 0u;
    *(a1 + 240) = 0u;
    *(a1 + 192) = 0u;
    *(a1 + 208) = 0u;
    *(a1 + 160) = 0u;
    *(a1 + 176) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    v9 = a1;
    *(a1 + 272) = 0;
  }

  memmove(v9, a2, v8 + 12);
  return a1;
}

void *sub_12488(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_124FC(result, a2);
  }

  return result;
}

void sub_124E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_124FC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_CE0();
}

uint64_t sub_1254C(uint64_t *a1, uint64_t a2)
{
  v2 = 0x14C1BACF914C1BADLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0xDD67C8A60DD67CLL)
  {
    sub_CE0();
  }

  if (0x2983759F2298375ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x2983759F2298375ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x14C1BACF914C1BADLL * ((a1[2] - *a1) >> 3)) >= 0x6EB3E45306EB3ELL)
  {
    v6 = 0xDD67C8A60DD67CLL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_12778(a1, v6);
  }

  v7 = 296 * v2;
  v15 = 0;
  v16 = v7;
  *(&v17 + 1) = 0;
  sub_126A8(v7, a2);
  v8 = *(a2 + 280);
  *(v7 + 285) = *(a2 + 285);
  *(v7 + 280) = v8;
  *&v17 = v7 + 296;
  v9 = a1[1];
  v10 = v7 + *a1 - v9;
  sub_127D4(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_1285C(&v15);
  return v14;
}

void sub_12694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1285C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_126A8(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 272) = -1;
  sub_126E0(a1, a2);
  return a1;
}

uint64_t sub_126E0(uint64_t a1, uint64_t a2)
{
  result = sub_11E24(a1);
  v5 = *(a2 + 272);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_28B08[v5])(&v6, a2);
    *(a1 + 272) = v5;
  }

  return result;
}

__n128 sub_12750(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  v2->n128_u64[0] = 0;
  v2->n128_u64[1] = 0;
  v2[1].n128_u64[0] = 0;
  result = *a2;
  *v2 = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void sub_12778(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xDD67C8A60DD67DLL)
  {
    operator new();
  }

  sub_DD0();
}

void sub_127D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_126A8(a4, v7);
      v9 = *(v7 + 280);
      *(v8 + 285) = *(v7 + 285);
      *(v8 + 280) = v9;
      v7 += 296;
      a4 = v8 + 296;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_11E24(v6);
      v6 += 296;
    }
  }
}

uint64_t sub_1285C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 296;
    sub_11E24(i - 296);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_128AC(uint64_t a1)
{
  v1 = *(a1 + 272);
  if (v1 == -1)
  {
    sub_128F8();
  }

  v4 = &v3;
  return (off_28B30[v1])(&v4, a1);
}

void sub_128F8()
{
  exception = __cxa_allocate_exception(8uLL);
}

double *sub_12958(double **a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = v4 - *a1;
  v6 = v5 + 1;
  if ((v5 + 1) >> 61)
  {
    sub_CE0();
  }

  v8 = a1[2] - v3;
  if (v8 >> 2 > v6)
  {
    v6 = v8 >> 2;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    v6 = 0x1FFFFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    sub_11FF8(a1, v6);
  }

  v9 = (8 * v5);
  v10 = *a2;
  v11 = &v9[-(v4 - *a1)];
  *v9 = v10;
  v12 = (v9 + 1);
  sub_12A4C(a1, v3, v4, v11);
  v13 = *a1;
  *a1 = v11;
  a1[1] = v12;
  a1[2] = 0;
  if (v13)
  {
    operator delete(v13);
  }

  return v12;
}

double sub_12A4C(uint64_t a1, double *a2, double *a3, double *a4)
{
  while (a2 != a3)
  {
    v4 = *a2++;
    result = v4;
    *a4++ = v4;
  }

  return result;
}

uint64_t sub_12A64(uint64_t a1, uint64_t a2)
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

void *sub_12AFC(void *a1)
{
  *a1 = off_28B50;
  sub_12DD0((a1 + 2));
  return a1;
}

void sub_12B40(void *a1)
{
  *a1 = off_28B50;
  sub_12DD0((a1 + 2));

  operator delete();
}

uint64_t sub_12C20(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = off_28B50;
  a2[1] = v2;
  return sub_12A64((a2 + 2), a1 + 16);
}

void sub_12C58(void *a1)
{
  sub_12DD0(a1 + 16);

  operator delete(a1);
}

uint64_t sub_12C9C(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t sub_12D1C(uint64_t (**a1)(uint64_t, char *), uint64_t *a2)
{
  v3 = *a2;
  v7 = 0;
  v4 = (*a1)(v3, &v7);
  v5 = 0;
  if (v7 == 1)
  {
    sub_12D7C((a1 + 1), v4);
    v5 = v7;
  }

  return v5 & 1;
}

uint64_t sub_12D7C(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_1A58();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_12DD0(uint64_t a1)
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

uint64_t sub_12E50(uint64_t a1, uint64_t a2)
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

void *sub_12EE8(void *a1)
{
  *a1 = off_28B98;
  sub_131BC((a1 + 2));
  return a1;
}

void sub_12F2C(void *a1)
{
  *a1 = off_28B98;
  sub_131BC((a1 + 2));

  operator delete();
}

uint64_t sub_1300C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = off_28B98;
  a2[1] = v2;
  return sub_12E50((a2 + 2), a1 + 16);
}

void sub_13044(void *a1)
{
  sub_131BC(a1 + 16);

  operator delete(a1);
}

uint64_t sub_13088(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t sub_13108(uint64_t (**a1)(uint64_t, char *), uint64_t *a2)
{
  v3 = *a2;
  v7 = 0;
  v4 = (*a1)(v3, &v7);
  v5 = 0;
  if (v7 == 1)
  {
    sub_13168((a1 + 1), v4);
    v5 = v7;
  }

  return v5 & 1;
}

uint64_t sub_13168(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_1A58();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_131BC(uint64_t a1)
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

void sub_132C4(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_BF6C();
  if (v2)
  {
    sub_BF6C();
    v3 = qword_2C180;
    if (os_log_type_enabled(qword_2C180, OS_LOG_TYPE_DEBUG))
    {
      v4 = 136315650;
      v5 = "USBMIDIDevice.cpp";
      v6 = 1024;
      v7 = 100;
      v8 = 1024;
      v9 = v2;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d =====> NOTICE: USB I/O destructive tracing at level %d <=====", &v4, 0x18u);
    }
  }
}

uint64_t sub_13400(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_28C28;
  a2[1] = v2;
  return result;
}

uint64_t sub_134AC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_28C70;
  a2[1] = v2;
  return result;
}

uint64_t sub_13558(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_28CB8;
  a2[1] = v2;
  return result;
}

void sub_136E0(void *a1, uint64_t *a2, void *a3, unsigned __int16 *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_288B0;
  sub_1373C((a1 + 3), a2, a3, a4);
}

void sub_1373C(uint64_t a1, uint64_t *a2, void *a3, unsigned __int16 *a4)
{
  v4 = *a2;
  v5 = a3[1];
  v7[0] = *a3;
  v7[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  v6 = *a4;
  sub_A5F0(a1, v4, v7);
}

void sub_137A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_13854(void *a1, __int128 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_28D50;
  sub_13930((a1 + 3), a2, a3, a4);
}

void sub_138D0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_28D50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_13930(uint64_t a1, __int128 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  sub_800C(a1, &v4, a3, a4);
}

void sub_1397C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_46A0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_13994(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        sub_46A0(v5);
      }
    }
  }
}

void sub_13A1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_6528(a1, a4);
  *v5 = off_28D88;
  v5[8] = a2;
  v5[9] = 0;
  v5[10] = 0;
  v5[11] = 0;
  *(v5 + 48) = 0;
  v6[0] = off_28DC8;
  v6[1] = v5;
  v6[3] = v6;
  sub_BE44(@"forcemidi1fallback", @"com.apple.coremidi", sub_1014, v6);
}

void sub_13C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_131BC(&a18);
  sub_A1A0(&a9);
  sub_2748(v18);
  _Unwind_Resume(a1);
}

void sub_13CD0()
{
  if ((atomic_load_explicit(&qword_2C198, memory_order_acquire) & 1) == 0)
  {
    sub_20AD8();
  }
}

void *sub_13D04(void *a1)
{
  *a1 = off_28D88;
  sub_13CD0();
  v2 = qword_2C190;
  if (os_log_type_enabled(qword_2C190, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 136315650;
    *&v4[4] = "USBMIDIDeviceManager.cpp";
    v5 = 1024;
    v6 = 63;
    v7 = 2048;
    v8 = a1;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] USBMIDIDeviceManager(%p)::~USBMIDIDeviceManager()", v4, 0x1Cu);
  }

  *v4 = a1 + 9;
  sub_A1A0(v4);
  sub_2748(a1);
  return a1;
}

void sub_13E08(void *a1)
{
  sub_13D04(a1);

  operator delete();
}

uint64_t sub_13E40(uint64_t a1, uint64_t a2)
{
  sub_13CD0();
  v4 = qword_2C190;
  if (os_log_type_enabled(qword_2C190, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315906;
    v7 = "USBMIDIDeviceManager.cpp";
    v8 = 1024;
    v9 = 72;
    v10 = 2048;
    v11 = a1;
    v12 = 2048;
    v13 = a2;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] USBMIDIDeviceManager(%p)::MatchDevice(%p)", &v6, 0x26u);
  }

  return (*(**(a1 + 64) + 120))(*(a1 + 64), a2);
}

uint64_t sub_13F48(uint64_t a1, uint64_t a2)
{
  sub_13CD0();
  v4 = qword_2C190;
  if (os_log_type_enabled(qword_2C190, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315906;
    v7 = "USBMIDIDeviceManager.cpp";
    v8 = 1024;
    v9 = 84;
    v10 = 2048;
    v11 = a1;
    v12 = 2048;
    v13 = a2;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] USBMIDIDeviceManager(%p)::UseDevice(%p)", &v6, 0x26u);
  }

  return sub_14034(a1, a2, 0);
}

uint64_t sub_14034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_4E88(a2);
  v67 = a3;
  if (a3)
  {
    v5 = sub_5F80(a3);
    v82 = 0;
    v81 = 0;
    v80 = 0;
    if (v5)
    {
      v6 = v5;
      if (sub_638C(a3) && !(*(*v6 + 176))(v6, 1))
      {
        sub_13CD0();
        v7 = qword_2C190;
        if (os_log_type_enabled(qword_2C190, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *&buf[4] = "USBMIDIDeviceManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 152;
          v64 = 1;
          _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "%25s:%-5d      Using MIDI 2.0 alt setting...", buf, 0x12u);
        }

        else
        {
          v64 = 1;
        }

        v63 = 0;
      }

      else
      {
        v63 = 0;
        v64 = 0;
      }
    }

    else
    {
      v63 = 1;
      v64 = 0;
    }
  }

  else
  {
    v82 = 0;
    v81 = 0;
    v63 = 1;
    v64 = 0;
    v80 = 0;
  }

  v8 = (*(*v4 + 104))(v4, &v81 + 2);
  if (v8)
  {
    goto LABEL_139;
  }

  v8 = (*(*v4 + 112))(v4, &v81);
  if (v8)
  {
    goto LABEL_139;
  }

  sub_13CD0();
  v9 = qword_2C190;
  if (os_log_type_enabled(qword_2C190, OS_LOG_TYPE_INFO))
  {
    *buf = 136316418;
    *&buf[4] = "USBMIDIDeviceManager.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 160;
    *&buf[18] = 1024;
    *&buf[20] = HIWORD(v81);
    *&buf[24] = 1024;
    *&buf[26] = v81;
    *&buf[30] = 1024;
    v90.i32[0] = HIWORD(v81);
    v90.i16[2] = 1024;
    *(&v90.i32[1] + 2) = v81;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%25s:%-5d [+] USBMIDIDeviceManager::UseDeviceAndInterface() vendor/product %d %d / 0x%04x 0x%04x", buf, 0x2Au);
  }

  v10 = HIWORD(v81);
  v11 = v81;
  if ((*(*v4 + 288))(v4, &v82))
  {
    cf2 = 0;
  }

  else
  {
    cf2 = sub_56A0(a2, v82);
  }

  v8 = (*(*v4 + 160))(v4, &v80);
  if (v8)
  {
    goto LABEL_137;
  }

  v12 = MIDIGetDriverDeviceList((*(a1 + 64) + 8));
  NumberOfDevices = MIDIDeviceListGetNumberOfDevices(v12);
  v65 = 0;
  v13 = v11 | (v10 << 16);
  if (cf2)
  {
    v14 = 1;
  }

  else
  {
    v14 = 3;
  }

  if (cf2)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  while (NumberOfDevices < 1)
  {
LABEL_57:
    if (v15++ >= v14)
    {
      MIDIDeviceListDispose(v12);
      goto LABEL_64;
    }
  }

  v16 = 0;
  while (1)
  {
    v72[0] = 0;
    outValue = 0;
    v78 = 0;
    value = 0;
    Device = MIDIDeviceListGetDevice(v12, v16);
    if (MIDIObjectGetIntegerProperty(Device, @"USBVendorProduct", &outValue) || outValue != v13)
    {
      goto LABEL_56;
    }

    if (v15 != 3)
    {
      break;
    }

    if (!MIDIObjectGetIntegerProperty(Device, kMIDIPropertyOffline, &value) && value)
    {
      goto LABEL_59;
    }

LABEL_56:
    if ((NumberOfDevices & 0x7FFFFFFF) == ++v16)
    {
      goto LABEL_57;
    }
  }

  if (v15 == 2)
  {
    if (!MIDIObjectGetIntegerProperty(Device, @"USBLocationID", v72) && v72[0] == v80)
    {
      goto LABEL_59;
    }

    goto LABEL_56;
  }

  if (v15 != 1)
  {
    goto LABEL_56;
  }

  str[0] = 0;
  if (MIDIObjectGetStringProperty(Device, @"SerialNumber", str))
  {
    *buf = 0;
    if (!MIDIObjectGetStringProperty(Device, kMIDIPropertyName, buf))
    {
      v18 = CFEqual(*buf, @"USB MIDI Device") == 0;
      CFRelease(*buf);
      if (!v18)
      {
        goto LABEL_59;
      }
    }

    goto LABEL_56;
  }

  if (!CFEqual(str[0], cf2))
  {
    CFRelease(str[0]);
    goto LABEL_56;
  }

  if (!MIDIObjectGetIntegerProperty(Device, @"pluralSerial", &v78) && v78)
  {
    sub_13CD0();
    v19 = qword_2C190;
    if (os_log_type_enabled(qword_2C190, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "USBMIDIDeviceManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 202;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "%25s:%-5d Device is known to have a plural serial number.", buf, 0x12u);
    }

    goto LABEL_55;
  }

  IntegerProperty = MIDIObjectGetIntegerProperty(Device, kMIDIPropertyOffline, &value);
  if (!(IntegerProperty | value))
  {
    sub_13CD0();
    v21 = qword_2C190;
    if (os_log_type_enabled(qword_2C190, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "USBMIDIDeviceManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 211;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "%25s:%-5d WARNING - device has a plural serial number.", buf, 0x12u);
    }

    MIDIObjectSetIntegerProperty(Device, @"pluralSerial", 1);
    v65 = 1;
    goto LABEL_55;
  }

  if (v14 == 3)
  {
LABEL_55:
    CFRelease(str[0]);
    v14 = 3;
    goto LABEL_56;
  }

  CFRelease(str[0]);
LABEL_59:
  MIDIDeviceListDispose(v12);
  Entity = MIDIDeviceGetEntity(Device, 0);
  *buf = 0;
  if ((v64 ^ (MIDIObjectGetIntegerProperty(Entity, kMIDIPropertyUMPActiveGroupBitmap, buf) != 0)))
  {
    if (!HIWORD(v81) || HIWORD(v81) == 6666)
    {
      v24 = Device;
      goto LABEL_65;
    }

    if (v64)
    {
      sub_153AC(Device);
    }

    else
    {
      sub_1522C(Device);
    }

    sub_13CD0();
    v60 = qword_2C190;
    if (os_log_type_enabled(qword_2C190, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "USBMIDIDeviceManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 343;
      _os_log_impl(&dword_0, v60, OS_LOG_TYPE_INFO, "%25s:%-5d      existing device found", buf, 0x12u);
    }

    if (v63 & 1) != 0 || (sub_638C(v67))
    {
      (*(**(a1 + 64) + 136))(*(a1 + 64), Device, a2, v67);
      goto LABEL_106;
    }

    v8 = 3758097101;
    sub_13CD0();
    v62 = qword_2C190;
    if (os_log_type_enabled(qword_2C190, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "USBMIDIDeviceManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 345;
      v55 = "%25s:%-5d      interface could not be opened (already in use by another driver?)";
      v56 = v62;
      v57 = 18;
LABEL_141:
      _os_log_impl(&dword_0, v56, OS_LOG_TYPE_INFO, v55, buf, v57);
    }

    return v8;
  }

  MIDISetupRemoveDevice(Device);
LABEL_64:
  v24 = 0;
LABEL_65:
  sub_13CD0();
  v25 = qword_2C190;
  if (os_log_type_enabled(qword_2C190, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "USBMIDIDeviceManager.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 282;
    _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "%25s:%-5d      creating new device", buf, 0x12u);
  }

  LODWORD(Device) = (*(**(a1 + 64) + 128))(*(a1 + 64), a2, v67);
  NumberOfEntities = MIDIDeviceGetNumberOfEntities(Device);
  v90 = 0u;
  memset(buf, 0, sizeof(buf));
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  *str = 0u;
  *v72 = 0u;
  v73 = 0u;
  value = 0;
  if (v24)
  {
    v27 = NumberOfEntities;
    MIDIObjectGetIntegerProperty(v24, kMIDIPropertyUniqueID, &value);
    if (MIDIDeviceGetNumberOfEntities(v24) == v27)
    {
      outValue = 0;
      if (v27)
      {
        v28 = 0;
        propertyID = v27;
        while (1)
        {
          v29 = MIDIDeviceGetEntity(v24, v28);
          v30 = MIDIDeviceGetEntity(Device, v28);
          MIDIObjectGetIntegerProperty(v29, kMIDIPropertyUniqueID, &outValue);
          sub_15530(buf, &outValue);
          NumberOfSources = MIDIEntityGetNumberOfSources(v29);
          NumberOfDestinations = MIDIEntityGetNumberOfDestinations(v29);
          v33 = MIDIEntityGetNumberOfSources(v30);
          v34 = MIDIEntityGetNumberOfDestinations(v30);
          if (NumberOfSources != v33 || NumberOfDestinations != v34)
          {
            break;
          }

          if (NumberOfSources)
          {
            for (i = 0; i != NumberOfSources; ++i)
            {
              Source = MIDIEntityGetSource(v29, i);
              MIDIObjectGetIntegerProperty(Source, kMIDIPropertyUniqueID, &outValue);
              sub_15530(str, &outValue);
            }
          }

          if (NumberOfDestinations)
          {
            for (j = 0; j != NumberOfDestinations; ++j)
            {
              Destination = MIDIEntityGetDestination(v29, j);
              MIDIObjectGetIntegerProperty(Destination, kMIDIPropertyUniqueID, &outValue);
              sub_15530(v72, &outValue);
            }
          }

          if (++v28 == propertyID)
          {
            goto LABEL_84;
          }
        }

        value = 0;
      }
    }

LABEL_84:
    sub_13CD0();
    v39 = qword_2C190;
    if (os_log_type_enabled(qword_2C190, OS_LOG_TYPE_INFO))
    {
      outValue = 136315394;
      v84 = "USBMIDIDeviceManager.cpp";
      v85 = 1024;
      v86 = 319;
      _os_log_impl(&dword_0, v39, OS_LOG_TYPE_INFO, "%25s:%-5d      purging stale USB MIDI cache for device...", &outValue, 0x12u);
    }

    MIDISetupRemoveDevice(v24);
    if (value)
    {
      MIDIObjectSetIntegerProperty(Device, kMIDIPropertyUniqueID, value);
      for (k = 0; MIDIDeviceGetNumberOfEntities(Device) > k; ++k)
      {
        v41 = MIDIDeviceGetEntity(Device, k);
        MIDIObjectSetIntegerProperty(v41, kMIDIPropertyUniqueID, *(*(*&buf[8] + ((v90.i64[0] >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v90.i16[0] & 0x3FF)));
        v90 = vaddq_s64(v90, xmmword_22F30);
        if (v90.i64[0] >= 0x800uLL)
        {
          operator delete(**&buf[8]);
          *&buf[8] += 8;
          v90.i64[0] -= 1024;
        }

        for (m = 0; MIDIEntityGetNumberOfSources(v41) > m; ++m)
        {
          v43 = MIDIEntityGetSource(v41, m);
          MIDIObjectSetIntegerProperty(v43, kMIDIPropertyUniqueID, (*(&str[1]->isa + ((v77.i64[0] >> 7) & 0x1FFFFFFFFFFFFF8)))[v77.i16[0] & 0x3FF]);
          v77 = vaddq_s64(v77, xmmword_22F30);
          if (v77.i64[0] >= 0x800uLL)
          {
            operator delete(str[1]->isa);
            str[1] = (str[1] + 8);
            v77.i64[0] -= 1024;
          }
        }

        for (n = 0; MIDIEntityGetNumberOfDestinations(v41) > n; ++n)
        {
          v45 = MIDIEntityGetDestination(v41, n);
          MIDIObjectSetIntegerProperty(v45, kMIDIPropertyUniqueID, *(*(*&v72[2] + ((v74.i64[0] >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v74.i16[0] & 0x3FF)));
          v74 = vaddq_s64(v74, xmmword_22F30);
          if (v74.i64[0] >= 0x800uLL)
          {
            operator delete(**&v72[2]);
            *&v72[2] += 8;
            v74.i64[0] -= 1024;
          }
        }
      }
    }
  }

  v8 = MIDISetupAddDevice(Device);
  if (v8)
  {
    sub_15E00(v72);
    sub_15E00(str);
    sub_15E00(buf);
  }

  else
  {
    sub_13CD0();
    v46 = qword_2C190;
    if (os_log_type_enabled(qword_2C190, OS_LOG_TYPE_INFO))
    {
      outValue = 136315650;
      v84 = "USBMIDIDeviceManager.cpp";
      v85 = 1024;
      v86 = 341;
      v87 = 2048;
      v88 = Device;
      _os_log_impl(&dword_0, v46, OS_LOG_TYPE_INFO, "%25s:%-5d      device 0x%lx added to setup", &outValue, 0x1Cu);
    }

    sub_15E00(v72);
    sub_15E00(str);
    sub_15E00(buf);
LABEL_106:
    MIDIObjectSetIntegerProperty(Device, @"USBVendorProduct", v13);
    MIDIObjectSetIntegerProperty(Device, @"USBLocationID", v80);
    if (cf2)
    {
      MIDIObjectSetStringProperty(Device, @"SerialNumber", cf2);
    }

    if (v65)
    {
      sub_13CD0();
      v47 = qword_2C190;
      if (os_log_type_enabled(qword_2C190, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "USBMIDIDeviceManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 358;
        _os_log_impl(&dword_0, v47, OS_LOG_TYPE_INFO, "%25s:%-5d      setting kMIDIPropertyPluralSerialNumber property on new device", buf, 0x12u);
      }

      MIDIObjectSetIntegerProperty(Device, @"pluralSerial", 1);
    }

    v72[0] = 0;
    MIDIObjectGetIntegerProperty(Device, @"UMP Enabled", v72);
    (*(**(a1 + 64) + 192))(str);
    if (str[0])
    {
      if (!v67 || !v72[0])
      {
        BYTE3(str[0][15].info) = 0;
        sub_13CD0();
        v51 = qword_2C190;
        if (os_log_type_enabled(qword_2C190, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *&buf[4] = "USBMIDIDeviceManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 388;
          v52 = "%25s:%-5d      Default pipe protocol will be legacy MIDI 1.0.";
          goto LABEL_126;
        }

LABEL_127:
        v8 = 0;
        goto LABEL_128;
      }

      sub_13CD0();
      v48 = qword_2C190;
      if (os_log_type_enabled(qword_2C190, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "USBMIDIDeviceManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 370;
        _os_log_impl(&dword_0, v48, OS_LOG_TYPE_INFO, "%25s:%-5d      UMP is selected on this midiDevice; default pipe protocol will be UMP.", buf, 0x12u);
      }

      v49 = str[0];
      BYTE3(str[0][15].info) = 1;
      if (*(a1 + 97) == 1)
      {
        BYTE5(v49[15].info) = 1;
      }

      if (*(a1 + 96))
      {
        sub_13CD0();
        v50 = qword_2C190;
        if (os_log_type_enabled(qword_2C190, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *&buf[4] = "USBMIDIDeviceManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 383;
          _os_log_impl(&dword_0, v50, OS_LOG_TYPE_INFO, "%25s:%-5d      [AQAMIDI] forcemidi1fallback defaults is set. Not changing alt setting.", buf, 0x12u);
        }

        v8 = 0;
        BYTE4(str[0][15].info) = 1;
        goto LABEL_128;
      }

      v59 = sub_5F80(v67);
      if (v59)
      {
        v8 = (*(*v59 + 176))(v59, 1);
        if (!v8)
        {
          sub_13CD0();
          v51 = qword_2C190;
          if (os_log_type_enabled(qword_2C190, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            *&buf[4] = "USBMIDIDeviceManager.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 378;
            v52 = "%25s:%-5d      [AQAMIDI] MIDI 2.0 alt setting selected, so device will use Universal MIDI Packets (UMP) rather than USB MIDI 1.0 from now.";
LABEL_126:
            _os_log_impl(&dword_0, v51, OS_LOG_TYPE_INFO, v52, buf, 0x12u);
          }

          goto LABEL_127;
        }
      }

      else
      {
        v8 = 0;
      }

      sub_13CD0();
      v61 = qword_2C190;
      if (os_log_type_enabled(qword_2C190, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "USBMIDIDeviceManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 380;
        _os_log_impl(&dword_0, v61, OS_LOG_TYPE_ERROR, "%25s:%-5d      Unable to set MIDI 2.0 alt setting!", buf, 0x12u);
      }

LABEL_128:
      sub_13CD0();
      v53 = qword_2C190;
      if (os_log_type_enabled(qword_2C190, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        *&buf[4] = "USBMIDIDeviceManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 390;
        *&buf[18] = 2048;
        *&buf[20] = str[0];
        _os_log_impl(&dword_0, v53, OS_LOG_TYPE_INFO, "%25s:%-5d      initializing USB MIDI device %p", buf, 0x1Cu);
      }

      if ((*(str[0]->isa + 2))(str[0]))
      {
        if (*(a1 + 80) == *(a1 + 72))
        {
          sub_155B8((a1 + 72), 4uLL);
        }

        sub_7EF8((a1 + 72), str);
      }

      else
      {
        sub_20B38(str, v8, buf);
        v8 = *buf;
      }
    }

    else
    {
      v8 = 4294956451;
    }

    if (str[1])
    {
      sub_46A0(str[1]);
    }
  }

LABEL_137:
  if (cf2)
  {
    CFRelease(cf2);
  }

LABEL_139:
  sub_13CD0();
  v54 = qword_2C190;
  if (os_log_type_enabled(qword_2C190, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "USBMIDIDeviceManager.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 403;
    *&buf[18] = 1024;
    *&buf[20] = v8;
    v55 = "%25s:%-5d [-] USBMIDIDeviceManager::UseDeviceAndInterface() = 0x%x";
    v56 = v54;
    v57 = 24;
    goto LABEL_141;
  }

  return v8;
}

void sub_151AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, std::__shared_weak_count *a28)
{
  if (a28)
  {
    sub_46A0(a28);
  }

  _Unwind_Resume(exception_object);
}

ItemCount sub_1522C(MIDIDeviceRef a1)
{
  result = MIDIDeviceGetNumberOfEntities(a1);
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      Entity = MIDIDeviceGetEntity(a1, i);
      NumberOfSources = MIDIEntityGetNumberOfSources(Entity);
      if (NumberOfSources < MIDIEntityGetNumberOfDestinations(Entity))
      {
        outValue = 0;
        MIDIObjectGetIntegerProperty(Entity, @"Cable", &outValue);
        if (i != outValue)
        {
          sub_13CD0();
          v6 = qword_2C190;
          if (os_log_type_enabled(qword_2C190, OS_LOG_TYPE_INFO))
          {
            *buf = 136315906;
            v9 = "USBMIDIDeviceManager.cpp";
            v10 = 1024;
            v11 = 100;
            v12 = 1024;
            v13 = outValue;
            v14 = 1024;
            v15 = i;
            _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "%25s:%-5d replacing bad cable number %d with entity (cable) number %d", buf, 0x1Eu);
          }

          MIDIObjectSetIntegerProperty(Entity, @"Cable", i);
        }
      }

      result = MIDIDeviceGetNumberOfEntities(a1);
    }
  }

  return result;
}

unint64_t sub_153AC(MIDIDeviceRef a1)
{
  result = sub_15B88(a1);
  if (v3)
  {
    v4 = result;
    value = 0;
    v5 = kMIDIPropertyAssociatedEndpoint;
    result = MIDIObjectGetIntegerProperty(result, kMIDIPropertyAssociatedEndpoint, &value);
    if (result)
    {
      sub_13CD0();
      v6 = qword_2C190;
      if (os_log_type_enabled(qword_2C190, OS_LOG_TYPE_INFO))
      {
        value = 136315394;
        v10 = "USBMIDIDeviceManager.cpp";
        v11 = 1024;
        v12 = 117;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "%25s:%-5d      updating cached UMP Endpoint properties", &value, 0x12u);
      }

      value = 0;
      if (!MIDIObjectGetIntegerProperty(v4, kMIDIPropertyUniqueID, &value))
      {
        MIDIObjectSetIntegerProperty(HIDWORD(v4), v5, value);
      }

      value = 0;
      if (!MIDIObjectGetIntegerProperty(HIDWORD(v4), kMIDIPropertyUniqueID, &value))
      {
        MIDIObjectSetIntegerProperty(v4, v5, value);
      }

      NumberOfEntities = MIDIDeviceGetNumberOfEntities(a1);
      Entity = MIDIDeviceGetEntity(a1, NumberOfEntities - 1);
      return MIDIObjectSetIntegerProperty(Entity, kMIDIPropertyUMPActiveGroupBitmap, 15);
    }
  }

  return result;
}

void *sub_15530(void *result, _DWORD *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 7) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = sub_15EFC(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v9 & 0x3FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *sub_155B8(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_A0D0(result, a2);
    }

    sub_CE0();
  }

  return result;
}

void sub_15654(uint64_t a1, io_registry_entry_t entry)
{
  CFProperty = IORegistryEntryCreateCFProperty(entry, @"locationID", kCFAllocatorDefault, 0);
  if (CFProperty)
  {
    v5 = CFProperty;
    v6 = CFGetTypeID(CFProperty);
    if (v6 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      v7 = CFNumberGetValue(v5, kCFNumberSInt32Type, &valuePtr) == 0;
      CFRelease(v5);
      if (v7)
      {
        return;
      }

      sub_13CD0();
      v8 = qword_2C190;
      if (os_log_type_enabled(qword_2C190, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v29 = "USBMIDIDeviceManager.cpp";
        v30 = 1024;
        v31 = 438;
        v32 = 1024;
        v33 = entry;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d [+] USBMIDIDeviceManager::ServiceTerminated(0x%x)", buf, 0x18u);
      }

      v26 = a1;
      v9 = *(a1 + 72);
      v25 = a1 + 72;
      v10 = *(a1 + 80);
      if (v9 == v10)
      {
        goto LABEL_39;
      }

      v11 = *(a1 + 80);
      v12 = valuePtr;
      while (1)
      {
        v13 = *v9;
        v14 = v9[1];
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v15 = *(*(v13 + 88) + 16);
        if (v15 == v12)
        {
          sub_13CD0();
          v16 = qword_2C190;
          if (os_log_type_enabled(qword_2C190, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v29 = "USBMIDIDeviceManager.cpp";
            v30 = 1024;
            v31 = 442;
            v32 = 1024;
            v33 = entry;
            _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d      shutting down removed device 0x%X\n", buf, 0x18u);
          }

          MIDIObjectSetIntegerProperty(*(v13 + 8), kMIDIPropertyOffline, 1);
        }

        if (v14)
        {
          sub_46A0(v14);
        }

        if (v15 == v12)
        {
          break;
        }

        v9 += 2;
        if (v9 == v10)
        {
          goto LABEL_40;
        }
      }

      if (v9 == v10)
      {
        goto LABEL_40;
      }

      v17 = v9 + 2;
      if (v9 + 2 == v10)
      {
LABEL_39:
        v11 = v9;
      }

      else
      {
        v11 = v9;
        do
        {
          v18 = *v17;
          v19 = v17[1];
          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v20 = *(*(v18 + 88) + 16);
          if (v20 == v12)
          {
            sub_13CD0();
            v21 = qword_2C190;
            if (os_log_type_enabled(qword_2C190, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315650;
              v29 = "USBMIDIDeviceManager.cpp";
              v30 = 1024;
              v31 = 442;
              v32 = 1024;
              v33 = entry;
              _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d      shutting down removed device 0x%X\n", buf, 0x18u);
            }

            MIDIObjectSetIntegerProperty(*(v18 + 8), kMIDIPropertyOffline, 1);
          }

          if (v19)
          {
            sub_46A0(v19);
          }

          if (v20 != v12)
          {
            v22 = *v17;
            *v17 = 0;
            v17[1] = 0;
            v23 = *(v11 + 8);
            *v11 = v22;
            if (v23)
            {
              sub_46A0(v23);
            }

            v11 += 16;
          }

          v17 += 2;
        }

        while (v17 != v10);
      }

LABEL_40:
      sub_15A88(v25, v11, *(v26 + 80));
      sub_13CD0();
      v24 = qword_2C190;
      if (os_log_type_enabled(qword_2C190, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v29 = "USBMIDIDeviceManager.cpp";
        v30 = 1024;
        v31 = 447;
        v32 = 1024;
        v33 = entry;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d [-] USBMIDIDeviceManager::ServiceTerminated(0x%x)", buf, 0x18u);
      }

      return;
    }

    CFRelease(v5);
  }
}

void sub_15A64(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_46A0(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_15A88(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    sub_15C3C(&v10, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v8 = *(v7 - 8);
        if (v8)
        {
          sub_46A0(v8);
        }

        v7 -= 16;
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

BOOL sub_15B0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 72);
  v2 = *(a1 + 80);
  if (v3 == v2)
  {
    return 0;
  }

  v4 = *(a2 + 16);
  v5 = v3 + 16;
  do
  {
    v6 = *(*(*(v5 - 16) + 88) + 16);
    result = v6 == v4;
    v8 = v6 == v4 || v5 == v2;
    v5 += 16;
  }

  while (!v8);
  return result;
}

BOOL sub_15B4C(uint64_t a1, int a2)
{
  v3 = *(a1 + 72);
  v2 = *(a1 + 80);
  if (v3 == v2)
  {
    return 0;
  }

  v4 = v3 + 16;
  do
  {
    v5 = *(*(*(v4 - 16) + 96) + 8);
    result = v5 == a2;
    v7 = v5 == a2 || v4 == v2;
    v4 += 16;
  }

  while (!v7);
  return result;
}

unint64_t sub_15B88(MIDIDeviceRef a1)
{
  if (MIDIDeviceGetNumberOfEntities(a1))
  {
    NumberOfEntities = MIDIDeviceGetNumberOfEntities(a1);
    Entity = MIDIDeviceGetEntity(a1, NumberOfEntities - 1);
    NumberOfSources = MIDIEntityGetNumberOfSources(Entity);
    NumberOfDestinations = MIDIEntityGetNumberOfDestinations(Entity);
    v6 = 0;
    v7 = 0;
    if (NumberOfSources && NumberOfDestinations)
    {
      MIDIEntityGetNumberOfSources(Entity);
      Source = MIDIEntityGetSource(Entity, 0);
      MIDIEntityGetNumberOfDestinations(Entity);
      v7 = Source & 0xFFFFFF00 | (MIDIEntityGetDestination(Entity, 0) << 32);
      v6 = Source;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

__int128 *sub_15C3C(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
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
        sub_46A0(v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_15D18(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_28DC8;
  a2[1] = v2;
  return result;
}

uint64_t sub_15DC4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_28E10;
  a2[1] = v2;
  return result;
}

uint64_t sub_15E00(void *a1)
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
    v5 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 1024;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_15EAC(a1);
}

uint64_t sub_15EAC(uint64_t a1)
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

void *sub_15EFC(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
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
    sub_164F8(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_160D0(a1, &v10);
}

void sub_16084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_160D0(void *result, void *a2)
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

      sub_164F8(result, v11);
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

const void **sub_161D8(const void **result, void *a2)
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

      sub_164F8(result, v9);
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

void *sub_162E4(void *result, void *a2)
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

      sub_164F8(result[4], v11);
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

const void **sub_163EC(const void **result, void *a2)
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

      sub_164F8(result[4], v9);
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

void sub_164F8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_DD0();
}

const char *sub_16540(int a1)
{
  if (a1 > 111)
  {
    if (a1 > 125)
    {
      if (a1 == 126)
      {
        return "Invalidate MUID";
      }

      if (a1 == 127)
      {
        return "NAK";
      }
    }

    else
    {
      if (a1 == 112)
      {
        return "Discovery";
      }

      if (a1 == 113)
      {
        return "DiscoveryReply";
      }
    }

    return "Unknown Message Type";
  }

  else
  {
    v1 = a1 - 16;
    result = "Protocol Negotiation Inquiry";
    switch(v1)
    {
      case 0:
        return result;
      case 1:
        result = "Protocol Negotiation Inquiry Response";
        break;
      case 2:
        result = "Protocol Negotiation Set";
        break;
      case 3:
        result = "Protocol Negotiation Test";
        break;
      case 4:
        result = "Protocol Negotiation Test Response";
        break;
      case 5:
        result = "Protocol Negotiation Confirmation";
        break;
      case 16:
        result = "Profile Inquiry";
        break;
      case 17:
        result = "Profile Inquiry Reply";
        break;
      case 18:
        result = "Set Profile On";
        break;
      case 19:
        result = "Set Profile Off";
        break;
      case 20:
        result = "Profile Enabled";
        break;
      case 21:
        result = "Profile Disabled";
        break;
      case 22:
        result = "Profile-Specific Data";
        break;
      case 32:
        result = "Property Inquiry";
        break;
      case 33:
        result = "Property Inquiry Reply";
        break;
      case 34:
        result = "Has Property";
        break;
      case 35:
        result = "Has Property Reply";
        break;
      case 36:
        result = "Get Property";
        break;
      case 37:
        result = "Get Property Reply";
        break;
      case 38:
        result = "Set Property";
        break;
      case 39:
        result = "Set Property Reply";
        break;
      case 40:
        result = "Property Subscription";
        break;
      case 41:
        result = "Property Subscription Reply";
        break;
      case 47:
        result = "Property Notify";
        break;
      default:
        return "Unknown Message Type";
    }
  }

  return result;
}

uint64_t sub_167B4(uint64_t a1, uint64_t a2)
{
  v3 = sub_4E88(a1);
  sub_5F80(a2);
  return v3;
}

CFStringRef sub_167EC(uint64_t a1, const __CFString *a2)
{
  v4 = sub_4E88(a1);
  v5 = a2;
  if (v4)
  {
    v14 = 0;
    v6 = (*(*v4 + 272))(v4, &v14);
    if (v6)
    {
      v7 = v6;
      sub_169D8();
      v8 = qword_2C1A0;
      v5 = a2;
      if (os_log_type_enabled(qword_2C1A0, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v16 = "USBMIDIDriverBase.cpp";
        v17 = 1024;
        v18 = 79;
        v19 = 1024;
        v20 = v7;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d [!]  USBGetManufacturerStringIndex() returned error 0x%x", buf, 0x18u);
        v5 = a2;
      }
    }

    else
    {
      v5 = sub_56A0(a1, v14);
    }

    v9 = (*(*v4 + 280))(v4, &v14);
    if (v9)
    {
      v10 = v9;
      sub_169D8();
      v11 = qword_2C1A0;
      if (os_log_type_enabled(qword_2C1A0, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v16 = "USBMIDIDriverBase.cpp";
        v17 = 1024;
        v18 = 84;
        v19 = 1024;
        v20 = v10;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d [!]  USBGetProductStringIndex() returned error 0x%x", buf, 0x18u);
      }
    }

    else
    {
      sub_56A0(a1, v14);
    }
  }

  if (v5)
  {
    return v5;
  }

  else
  {
    return a2;
  }
}

void sub_169D8()
{
  if ((atomic_load_explicit(&qword_2C1A8, memory_order_acquire) & 1) == 0)
  {
    sub_20C20();
  }
}

double sub_16A08@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (*(*a1 + 448))(a1, 0, 0);
  if (v3)
  {
    v4 = v3;
    v5 = *v3;
    if (*v3)
    {
      if (v5 >= 8)
      {
        operator new();
      }

      v11[23] = 3 * v5;
      bzero(v11, 3 * v5);
      v11[3 * v5] = 0;
      if (v11[23] >= 0)
      {
        v8 = v11;
      }

      else
      {
        v8 = *v11;
      }

      v9 = v4;
      do
      {
        v10 = *v9++;
        *v8 = a0123456789abcd_1[v10 >> 4];
        v8[1] = a0123456789abcd_1[v10 & 0xF];
        v8[2] = 32;
        v8 += 3;
        --v5;
      }

      while (v5);
    }

    else
    {
      v11[23] = 0;
      v11[0] = 0;
    }

    *a2 = v4;
    result = *v11;
    *(a2 + 8) = *v11;
    *(a2 + 24) = *&v11[16];
  }

  else
  {
    sub_169D8();
    v6 = qword_2C1A0;
    if (os_log_type_enabled(qword_2C1A0, OS_LOG_TYPE_ERROR))
    {
      *v11 = 136315394;
      *&v11[4] = "USBMIDIDriverBase.cpp";
      *&v11[12] = 1024;
      *&v11[14] = 99;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] findDescriptors() - no interface descriptor found", v11, 0x12u);
    }

    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

__n128 sub_16BD4(uint64_t a1, unsigned __int8 *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a1)
  {
    return result;
  }

  v6 = a2;
  if (!a2)
  {
    return result;
  }

  v7 = a1;
  sub_169D8();
  v8 = &unk_2C000;
  v9 = qword_2C1A0;
  if (os_log_type_enabled(qword_2C1A0, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v103 = "USBMIDIDriverBase.cpp";
    v104 = 1024;
    v105 = 108;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%25s:%-5d [+] USBMIDIDriverBase::ParseDescriptors()", buf, 0x12u);
  }

  v92 = 0;
  v91 = -1;
  v101 = 0;
  v88 = v7;
  do
  {
    v10 = *v6;
    if (*v6)
    {
      if (v10 >= 8)
      {
        operator new();
      }

      v98 = 3 * v10;
      bzero(&__p, 3 * v10);
      *(&__p + 3 * v10) = 0;
      p_p = __p;
      if (v98 >= 0)
      {
        p_p = &__p;
      }

      v12 = v6;
      do
      {
        v13 = *v12++;
        *p_p = a0123456789abcd_1[v13 >> 4];
        p_p[1] = a0123456789abcd_1[v13 & 0xF];
        p_p[2] = 32;
        p_p += 3;
        --v10;
      }

      while (v10);
    }

    else
    {
      v98 = 0;
      LOBYTE(__p) = 0;
    }

    v14 = v6[1];
    v15 = v6[2];
    sub_169D8();
    v16 = *(v8 + 52);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = &__p;
      if (v98 < 0)
      {
        v17 = __p;
      }

      *buf = 136315650;
      v103 = "USBMIDIDriverBase.cpp";
      v104 = 1024;
      v105 = 139;
      v106 = 2080;
      *&v107 = v17;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d      Now @: %s", buf, 0x1Cu);
    }

    LOBYTE(v18) = 0;
    if (v14 > 35)
    {
      if (v14 != 36)
      {
        if (v14 != 37)
        {
          goto LABEL_131;
        }

        if (v15 == 1 && (v91 & 0x80000000) == 0)
        {
          sub_169D8();
          v26 = *(v8 + 52);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v103 = "USBMIDIDriverBase.cpp";
            v104 = 1024;
            v105 = 197;
            _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, "%25s:%-5d      USB MIDI 1.0 CS endpoint descriptor", buf, 0x12u);
          }

          v27 = v6[3];
          sub_169D8();
          v28 = *(v8 + 52);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v29 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 1);
            *buf = 136315906;
            v103 = "USBMIDIDriverBase.cpp";
            v104 = 1024;
            v105 = 200;
            v106 = 1024;
            LODWORD(v107) = v27;
            WORD2(v107) = 2048;
            *(&v107 + 6) = v29;
            _os_log_impl(&dword_0, v28, OS_LOG_TYPE_INFO, "%25s:%-5d      %d embedded MIDI jack(s), searching %lu jack(s) for a match", buf, 0x22u);
          }

          if (v27)
          {
            v30 = 0;
            if (v91)
            {
              v31 = a4;
            }

            else
            {
              v31 = a5;
            }

            do
            {
              v33 = *a3;
              v32 = a3[1];
              if (*a3 != v32)
              {
                while (*(v33 + 2) != v6[v30 + 4])
                {
                  v33 += 6;
                  if (v33 == v32)
                  {
                    goto LABEL_49;
                  }
                }
              }

              if (v33 == v32 || v33 == 0)
              {
LABEL_49:
                sub_169D8();
                v35 = *(v8 + 52);
                if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
                {
                  *buf = 136315650;
                  v103 = "USBMIDIDriverBase.cpp";
                  v104 = 1024;
                  v105 = 206;
                  v106 = 1024;
                  LODWORD(v107) = v92;
                  _os_log_impl(&dword_0, v35, OS_LOG_TYPE_INFO, "%25s:%-5d      Jack not found for endpoint 0x%x", buf, 0x18u);
                }
              }

              else
              {
                sub_169D8();
                v36 = *(v8 + 52);
                if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
                {
                  v38 = *(v33 + 2);
                  *buf = 136315906;
                  v103 = "USBMIDIDriverBase.cpp";
                  v104 = 1024;
                  v105 = 204;
                  v106 = 1024;
                  LODWORD(v107) = v38;
                  WORD2(v107) = 1024;
                  *(&v107 + 6) = v92;
                  _os_log_impl(&dword_0, v36, OS_LOG_TYPE_INFO, "%25s:%-5d      Found jack %d for endpoint 0x%x", buf, 0x1Eu);
                }

                *(v33 + 5) = v92;
                sub_17D38(v31, v33);
                v8 = &unk_2C000;
              }

              ++v30;
            }

            while (v30 != v27);
            LOBYTE(v18) = 0;
          }

          else
          {
            LOBYTE(v18) = 0;
          }

LABEL_124:
          v7 = v88;
          goto LABEL_131;
        }

        sub_169D8();
        v49 = *(v8 + 52);
        if (v15 == 2)
        {
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v103 = "USBMIDIDriverBase.cpp";
            v104 = 1024;
            v105 = 216;
            _os_log_impl(&dword_0, v49, OS_LOG_TYPE_INFO, "%25s:%-5d             (USB MIDI 2.0 CS endpoint descriptor)", buf, 0x12u);
          }

          v18 = v6[3];
          v50 = v92;
          if (v6[3])
          {
            v51 = 0;
            if (v91)
            {
              v52 = v92;
            }

            else
            {
              v52 = 0;
            }

            v90 = v52;
            if (v91)
            {
              v50 = 0;
            }

            v89 = v50;
            v53 = a6;
            do
            {
              v54 = v6[v51 + 4];
              for (i = *v53; i != v53[1]; i += 12)
              {
                if (*i == v54)
                {
                  sub_169D8();
                  v64 = qword_2C1A0;
                  if (os_log_type_enabled(qword_2C1A0, OS_LOG_TYPE_INFO))
                  {
                    v65 = *i;
                    *buf = 136315906;
                    v103 = "USBMIDIDriverBase.cpp";
                    v104 = 1024;
                    v105 = 233;
                    v106 = 1024;
                    LODWORD(v107) = v65;
                    WORD2(v107) = 1024;
                    *(&v107 + 6) = v92;
                    _os_log_impl(&dword_0, v64, OS_LOG_TYPE_INFO, "%25s:%-5d      Reusing group terminal blockID %d for endpoint 0x%x", buf, 0x1Eu);
                  }

                  v53 = a6;
                  if (v91)
                  {
                    i[6] = v92;
                  }

                  else
                  {
                    i[7] = v92;
                  }

                  goto LABEL_108;
                }
              }

              sub_169D8();
              v56 = qword_2C1A0;
              if (os_log_type_enabled(qword_2C1A0, OS_LOG_TYPE_INFO))
              {
                *buf = 136315906;
                v103 = "USBMIDIDriverBase.cpp";
                v104 = 1024;
                v105 = 226;
                v106 = 1024;
                LODWORD(v107) = v54;
                WORD2(v107) = 1024;
                *(&v107 + 6) = v92;
                _os_log_impl(&dword_0, v56, OS_LOG_TYPE_INFO, "%25s:%-5d      New group terminal blockID %d for endpoint 0x%x", buf, 0x1Eu);
              }

              v53 = a6;
              v57 = *(a6 + 8);
              v58 = *(a6 + 16);
              if (v57 >= v58)
              {
                v60 = 0xAAAAAAAAAAAAAAABLL * ((v57 - *a6) >> 2);
                v61 = v60 + 1;
                if (v60 + 1 > 0x1555555555555555)
                {
                  sub_CE0();
                }

                v62 = 0xAAAAAAAAAAAAAAABLL * ((v58 - *a6) >> 2);
                if (2 * v62 > v61)
                {
                  v61 = 2 * v62;
                }

                if (v62 >= 0xAAAAAAAAAAAAAAALL)
                {
                  v63 = 0x1555555555555555;
                }

                else
                {
                  v63 = v61;
                }

                if (v63)
                {
                  sub_1C37C(a6, v63);
                }

                v66 = 12 * v60;
                *v66 = v54;
                *(v66 + 1) = 0;
                *(v66 + 5) = 0;
                *(v66 + 6) = v90;
                *(v66 + 7) = v89;
                *(v66 + 8) = 0;
                v59 = 12 * v60 + 12;
                v67 = *(a6 + 8) - *a6;
                v68 = v66 - v67;
                memcpy((v66 - v67), *a6, v67);
                v69 = *a6;
                *a6 = v68;
                v53 = a6;
                *(a6 + 8) = v59;
                *(a6 + 16) = 0;
                if (v69)
                {
                  operator delete(v69);
                }
              }

              else
              {
                *v57 = v54;
                *(v57 + 1) = 0;
                *(v57 + 5) = 0;
                *(v57 + 6) = v90;
                *(v57 + 7) = v89;
                v59 = v57 + 12;
                *(v57 + 8) = 0;
              }

              v53[1] = v59;
LABEL_108:
              ++v51;
            }

            while (v51 != v18);
            LOBYTE(v18) = 0;
            v8 = &unk_2C000;
          }

          goto LABEL_124;
        }

        if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_130;
        }

        *buf = 136315906;
        v103 = "USBMIDIDriverBase.cpp";
        v104 = 1024;
        v105 = 241;
        v106 = 1024;
        LODWORD(v107) = 37;
        WORD2(v107) = 1024;
        *(&v107 + 6) = v15;
        v22 = v49;
        v23 = OS_LOG_TYPE_ERROR;
        v24 = "%25s:%-5d      Unrecognized type/subtype: 0x%x / 0x%x";
        v25 = 30;
        goto LABEL_27;
      }

      if (v15 == 3)
      {
        LOBYTE(v95) = 3;
        v72 = v6[6];
        *(&v95 + 1) = *(v6 + 3);
        HIBYTE(v95) = v72;
        v96 = v6[2 * v6[5] + 6];
        sub_17D38(a3, &v95);
        sub_169D8();
        v73 = *(v8 + 52);
        if (!os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
        {
          goto LABEL_130;
        }

        v74 = "external";
        if (BYTE1(v95) == 1)
        {
          v74 = "embedded";
        }

        v75 = v6[5];
        *buf = 136316418;
        v103 = "USBMIDIDriverBase.cpp";
        v104 = 1024;
        v105 = 184;
        v106 = 2080;
        *&v107 = v74;
        WORD4(v107) = 1024;
        *(&v107 + 10) = BYTE2(v95);
        HIWORD(v107) = 1024;
        *v108 = HIBYTE(v95);
        *&v108[4] = 1024;
        v109 = v75;
        v22 = v73;
        v23 = OS_LOG_TYPE_INFO;
        v24 = "%25s:%-5d      Added %s MIDI output jack %d: source jack %d, %d input pin(s)";
        v25 = 46;
        goto LABEL_27;
      }

      if (v15 == 2)
      {
        LOBYTE(v95) = 2;
        *(&v95 + 1) = *(v6 + 3);
        HIBYTE(v95) = 0;
        v96 = v6[5];
        sub_17D38(a3, &v95);
        sub_169D8();
        v70 = *(v8 + 52);
        if (!os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
        {
          goto LABEL_130;
        }

        v71 = "external";
        if (BYTE1(v95) == 1)
        {
          v71 = "embedded";
        }

        *buf = 136315906;
        v103 = "USBMIDIDriverBase.cpp";
        v104 = 1024;
        v105 = 173;
        v106 = 2080;
        *&v107 = v71;
        WORD4(v107) = 1024;
        *(&v107 + 10) = BYTE2(v95);
        v22 = v70;
        v23 = OS_LOG_TYPE_INFO;
        v24 = "%25s:%-5d      Added %s MIDI input jack %d";
LABEL_26:
        v25 = 34;
LABEL_27:
        _os_log_impl(&dword_0, v22, v23, v24, buf, v25);
        goto LABEL_130;
      }

      if (v15 != 1)
      {
        sub_169D8();
        v76 = *(v8 + 52);
        if (!os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
        {
          goto LABEL_130;
        }

        *buf = 136315650;
        v103 = "USBMIDIDriverBase.cpp";
        v104 = 1024;
        v105 = 186;
        v106 = 1024;
        LODWORD(v107) = v15;
        v22 = v76;
        v23 = OS_LOG_TYPE_INFO;
        v24 = "%25s:%-5d      Skipping unrecognized CS interface subtype %d...";
        v25 = 24;
        goto LABEL_27;
      }

      sub_169D8();
      v42 = *(v8 + 52);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        v43 = &__p;
        if (v98 < 0)
        {
          v43 = __p;
        }

        *buf = 136315650;
        v103 = "USBMIDIDriverBase.cpp";
        v104 = 1024;
        v105 = 151;
        v106 = 2080;
        *&v107 = v43;
        _os_log_impl(&dword_0, v42, OS_LOG_TYPE_DEBUG, "%25s:%-5d      Found CS descriptor: %s", buf, 0x1Cu);
      }

      v44 = *(v6 + 3);
      sub_169D8();
      v45 = *(v8 + 52);
      v46 = os_log_type_enabled(v45, OS_LOG_TYPE_INFO);
      if (v44 != 512)
      {
        if (v46)
        {
          *buf = 136315394;
          v103 = "USBMIDIDriverBase.cpp";
          v104 = 1024;
          v105 = 163;
          v22 = v45;
          v23 = OS_LOG_TYPE_INFO;
          v24 = "%25s:%-5d      Skipping CS interface descriptor";
          goto LABEL_129;
        }

LABEL_130:
        LOBYTE(v18) = 0;
        goto LABEL_131;
      }

      if (v46)
      {
        *buf = 136315394;
        v103 = "USBMIDIDriverBase.cpp";
        v104 = 1024;
        v105 = 155;
        _os_log_impl(&dword_0, v45, OS_LOG_TYPE_INFO, "%25s:%-5d      Found a USB MIDI 2.0 alternate setting", buf, 0x12u);
      }

      v47 = (*(*v7 + 176))(v7, 1);
      sub_169D8();
      v48 = *(v8 + 52);
      if (!v47)
      {
        if (!os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          goto LABEL_130;
        }

        *buf = 136315394;
        v103 = "USBMIDIDriverBase.cpp";
        v104 = 1024;
        v105 = 160;
        v22 = v48;
        v23 = OS_LOG_TYPE_INFO;
        v24 = "%25s:%-5d      Alternate interface now set for MIDI 2.0";
LABEL_129:
        v25 = 18;
        goto LABEL_27;
      }

      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v103 = "USBMIDIDriverBase.cpp";
        v104 = 1024;
        v105 = 157;
        _os_log_impl(&dword_0, v48, OS_LOG_TYPE_ERROR, "%25s:%-5d      Unable to set MIDI 2.0 alt setting!", buf, 0x12u);
      }

      LOBYTE(v18) = 1;
    }

    else
    {
      if (v14 != 4)
      {
        if (v14 != 5)
        {
          goto LABEL_131;
        }

        v19 = v6[2];
        v91 = v19 >> 7;
        sub_169D8();
        v20 = *(v8 + 52);
        v92 = v19;
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          goto LABEL_130;
        }

        *buf = 136315906;
        v21 = "output";
        if ((v19 & 0x80u) != 0)
        {
          v21 = "input";
        }

        v103 = "USBMIDIDriverBase.cpp";
        v104 = 1024;
        v105 = 192;
        v106 = 1024;
        LODWORD(v107) = v19;
        WORD2(v107) = 2080;
        *(&v107 + 6) = v21;
        v22 = v20;
        v23 = OS_LOG_TYPE_INFO;
        v24 = "%25s:%-5d      Examining endpoint 0x%x (%s)";
        goto LABEL_26;
      }

      v39 = v6[3];
      sub_169D8();
      v40 = *(v8 + 52);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v103 = "USBMIDIDriverBase.cpp";
        v104 = 1024;
        v105 = 143;
        v106 = 1024;
        LODWORD(v107) = v39;
        _os_log_impl(&dword_0, v40, OS_LOG_TYPE_INFO, "%25s:%-5d      Examining alt setting %d...", buf, 0x18u);
      }

      if (v39 < 2)
      {
        goto LABEL_130;
      }

      sub_169D8();
      v41 = *(v8 + 52);
      LOBYTE(v18) = 1;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v103 = "USBMIDIDriverBase.cpp";
        v104 = 1024;
        v105 = 146;
        _os_log_impl(&dword_0, v41, OS_LOG_TYPE_INFO, "%25s:%-5d      Done examining descriptors; halting", buf, 0x12u);
      }
    }

LABEL_131:
    v77 = (*(*v7 + 448))(v7, v6, 0);
    if (!v77)
    {
      sub_169D8();
      v78 = *(v8 + 52);
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v103 = "USBMIDIDriverBase.cpp";
        v104 = 1024;
        v105 = 248;
        _os_log_impl(&dword_0, v78, OS_LOG_TYPE_DEBUG, "%25s:%-5d      FindNextAssociatedDescriptor() returned nullptr for kUSBAnyDesc", buf, 0x12u);
      }

      v77 = (*(*v7 + 448))(v7, v6, 4);
      if (!v77)
      {
        sub_169D8();
        v79 = *(v8 + 52);
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v103 = "USBMIDIDriverBase.cpp";
          v104 = 1024;
          v105 = 252;
          _os_log_impl(&dword_0, v79, OS_LOG_TYPE_DEBUG, "%25s:%-5d      FindNextAssociatedDescriptor() returned nullptr for kUSBInterfaceDesc; done", buf, 0x12u);
        }

        v77 = 0;
      }
    }

    if (v98 < 0)
    {
      operator delete(__p);
    }

    if (v77)
    {
      v80 = v18;
    }

    else
    {
      v80 = 1;
    }

    v6 = v77;
  }

  while ((v80 & 1) == 0);
  sub_169D8();
  v81 = *(v8 + 52);
  if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v103 = "USBMIDIDriverBase.cpp";
    v104 = 1024;
    v105 = 118;
    _os_log_impl(&dword_0, v81, OS_LOG_TYPE_DEBUG, "%25s:%-5d      Bailing out of loop...", buf, 0x12u);
  }

  LOBYTE(__p) = 0;
  LOBYTE(v95) = 0;
  v100 = 0;
  v99 = 0;
  (*(*v7 + 80))(v7, &__p);
  (*(*v7 + 88))(v7, &v95);
  (*(*v7 + 104))(v7, &v101 + 2);
  (*(*v7 + 112))(v7, &v101);
  (*(*v7 + 136))(v7, &v100 + 1);
  (*(*v7 + 144))(v7, &v100);
  (*(*v7 + 152))(v7, &v99);
  sub_169D8();
  v82 = qword_2C1A0;
  if (os_log_type_enabled(qword_2C1A0, OS_LOG_TYPE_INFO))
  {
    *buf = 136316418;
    v103 = "USBMIDIDriverBase.cpp";
    v104 = 1024;
    v105 = 127;
    v106 = 1024;
    LODWORD(v107) = __p;
    WORD2(v107) = 1024;
    *(&v107 + 6) = v95;
    WORD5(v107) = 1024;
    HIDWORD(v107) = HIWORD(v101);
    *v108 = 1024;
    *&v108[2] = v101;
    _os_log_impl(&dword_0, v82, OS_LOG_TYPE_INFO, "%25s:%-5d      Interface class %d, subclass %d, for device 0x%04x /0x%04x", buf, 0x2Au);
  }

  sub_169D8();
  v83 = qword_2C1A0;
  if (os_log_type_enabled(qword_2C1A0, OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    v103 = "USBMIDIDriverBase.cpp";
    v104 = 1024;
    v105 = 128;
    v106 = 1024;
    LODWORD(v107) = HIBYTE(v100);
    WORD2(v107) = 1024;
    *(&v107 + 6) = v100;
    WORD5(v107) = 1024;
    HIDWORD(v107) = v99;
    _os_log_impl(&dword_0, v83, OS_LOG_TYPE_INFO, "%25s:%-5d      Interface %d alternate setting %d : %d endpoints", buf, 0x24u);
  }

  sub_169D8();
  v84 = qword_2C1A0;
  if (os_log_type_enabled(qword_2C1A0, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v103 = "USBMIDIDriverBase.cpp";
    v104 = 1024;
    v105 = 255;
    _os_log_impl(&dword_0, v84, OS_LOG_TYPE_INFO, "%25s:%-5d [-] USBMIDIDriverBase::ParseDescriptors()", buf, 0x12u);
  }

  return result;
}

void sub_17CFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_17D38(uint64_t a1, int *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 1);
    v9 = v8 + 1;
    if (v8 + 1 > 0x2AAAAAAAAAAAAAAALL)
    {
      sub_CE0();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 1);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x1555555555555555)
    {
      v11 = 0x2AAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_1C328(a1, v11);
    }

    v12 = 6 * v8;
    v13 = *a2;
    *(v12 + 4) = *(a2 + 2);
    *v12 = v13;
    v7 = 6 * v8 + 6;
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
    *(v5 + 4) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 6;
  }

  *(a1 + 8) = v7;
}

void sub_17E40(uint64_t a1@<X0>, int a2@<W1>, unsigned __int8 **a3@<X2>, unint64_t *a4@<X8>)
{
  sub_169D8();
  v7 = qword_2C1A0;
  if (os_log_type_enabled(qword_2C1A0, OS_LOG_TYPE_INFO))
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 2);
    *buf = 136316162;
    *&buf[4] = "USBMIDIDriverBase.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 260;
    *&buf[18] = 2048;
    *&buf[20] = a1;
    *&buf[28] = 1024;
    *&buf[30] = a2;
    *&buf[34] = 2048;
    *&buf[36] = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "%25s:%-5d [+] USBMIDIDriverBase::CreatePortMapList(inUSBDevice:%p, interfaceNum:%d) - Constructing a USB MIDI 2.0 port map list for %lu group terminal block(s)", buf, 0x2Cu);
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v97 = 0u;
  memset(buf, 0, sizeof(buf));
  sub_169D8();
  v9 = qword_2C1A0;
  if (os_log_type_enabled(qword_2C1A0, OS_LOG_TYPE_INFO))
  {
    *v88 = 136315394;
    *&v88[4] = "USBMIDIDriverBase.cpp";
    *&v88[12] = 1024;
    *&v88[14] = 265;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%25s:%-5d      Issuing device request to load group terminal block descriptors...", v88, 0x12u);
  }

  v87 = 0;
  sub_572C(a1, a2, 1, buf, 5, &v87);
  if (v87 != 5)
  {
    sub_169D8();
    v11 = qword_2C1A0;
    if (os_log_type_enabled(qword_2C1A0, OS_LOG_TYPE_ERROR))
    {
      *v88 = 136316418;
      *&v88[4] = "USBMIDIDriverBase.cpp";
      *&v88[12] = 1024;
      *&v88[14] = 341;
      *&v88[18] = 1024;
      *&v88[20] = a2;
      *&v88[24] = 1024;
      *&v88[26] = 1;
      *&v88[30] = 1024;
      *&v88[32] = 5;
      *v89 = 1024;
      *&v89[2] = v87;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d [!]  FATAL: Could not retrieve Group Terminal Descriptors for USB MIDI interface %d alternate setting %d. Expected header length %u but got %u", v88, 0x2Au);
    }

    goto LABEL_103;
  }

  v10 = buf[0];
  if (buf[0])
  {
    if (buf[0] >= 8u)
    {
      operator new();
    }

    HIBYTE(v86) = 3 * buf[0];
    bzero(__p, 3 * buf[0]);
    *(__p + 3 * v10) = 0;
    if (v86 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    v13 = buf;
    do
    {
      v14 = *v13++;
      *v12 = a0123456789abcd_1[v14 >> 4];
      *(v12 + 1) = a0123456789abcd_1[v14 & 0xF];
      *(v12 + 2) = 32;
      v12 = (v12 + 3);
      --v10;
    }

    while (v10);
  }

  else
  {
    HIBYTE(v86) = 0;
    LOBYTE(__p[0]) = 0;
  }

  v15 = *&buf[3];
  v84 = 0;
  sub_169D8();
  v16 = qword_2C1A0;
  if (os_log_type_enabled(qword_2C1A0, OS_LOG_TYPE_INFO))
  {
    v17 = __p;
    if (v86 < 0)
    {
      v17 = __p[0];
    }

    *v88 = 136315906;
    *&v88[4] = "USBMIDIDriverBase.cpp";
    *&v88[12] = 1024;
    *&v88[14] = 276;
    *&v88[18] = 1024;
    *&v88[20] = v15;
    *&v88[24] = 2080;
    *&v88[26] = v17;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "%25s:%-5d      Got group terminal block descriptor header (totalLength = %d): %s", v88, 0x22u);
  }

  sub_572C(a1, a2, 1, buf, v15, &v84);
  v18 = v84;
  v82 = a3;
  if (-991146299 * (v84 - v87) >= 0x13B13B14)
  {
    sub_169D8();
    v19 = qword_2C1A0;
    v20 = os_log_type_enabled(qword_2C1A0, OS_LOG_TYPE_ERROR);
    v18 = v84;
    if (v20)
    {
      *v88 = 136315650;
      *&v88[4] = "USBMIDIDriverBase.cpp";
      *&v88[12] = 1024;
      *&v88[14] = 279;
      *&v88[18] = 1024;
      *&v88[20] = v84;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d      Unexpected group terminal descriptor length: %u", v88, 0x18u);
      v18 = v84;
    }
  }

  v21 = v18 - v87;
  v22 = (v18 - v87) / 0xD;
  if ((v18 - v87) % 0xD)
  {
    sub_169D8();
    v23 = qword_2C1A0;
    if (os_log_type_enabled(qword_2C1A0, OS_LOG_TYPE_ERROR))
    {
      *v88 = 136315650;
      *&v88[4] = "USBMIDIDriverBase.cpp";
      *&v88[12] = 1024;
      *&v88[14] = 283;
      *&v88[18] = 1024;
      *&v88[20] = v84;
      v24 = "%25s:%-5d      Unexpected total descriptor length: %u";
      v25 = v23;
      v26 = OS_LOG_TYPE_ERROR;
      v27 = 24;
LABEL_35:
      _os_log_impl(&dword_0, v25, v26, v24, v88, v27);
    }
  }

  else
  {
    v28 = 0xAAAAAAAAAAAAAAABLL * ((v82[1] - *v82) >> 2);
    sub_169D8();
    v29 = qword_2C1A0;
    if (v28 == v22)
    {
      if (os_log_type_enabled(qword_2C1A0, OS_LOG_TYPE_INFO))
      {
        *&v88[4] = "USBMIDIDriverBase.cpp";
        v30 = "s";
        *&v88[14] = 287;
        *v88 = 136316162;
        *&v88[12] = 1024;
        if (v21 - 13 < 0xD)
        {
          v30 = "";
        }

        *&v88[18] = 1024;
        *&v88[20] = v22;
        *&v88[24] = 2080;
        *&v88[26] = v30;
        *&v88[34] = 1024;
        *v89 = v84;
        v24 = "%25s:%-5d      Got %d group terminal block descriptor%s (receivedLength = %u). ";
        v25 = v29;
        v26 = OS_LOG_TYPE_INFO;
        v27 = 40;
        goto LABEL_35;
      }
    }

    else if (os_log_type_enabled(qword_2C1A0, OS_LOG_TYPE_ERROR))
    {
      v31 = -1431655765 * ((v82[1] - *v82) >> 2);
      *v88 = 136315906;
      *&v88[4] = "USBMIDIDriverBase.cpp";
      *&v88[12] = 1024;
      *&v88[14] = 285;
      *&v88[18] = 1024;
      *&v88[20] = v31;
      *&v88[24] = 1024;
      *&v88[26] = v22;
      v24 = "%25s:%-5d      Expected %d descriptors, not %d";
      v25 = v29;
      v26 = OS_LOG_TYPE_ERROR;
      v27 = 30;
      goto LABEL_35;
    }
  }

  v81 = v21 - 13;
  if (v21 >= 0xD)
  {
    v32 = 0;
    v33 = 0;
    do
    {
      v34 = &buf[13 * v32 + v87];
      v35 = *v34;
      if (*v34)
      {
        if (v35 >= 8)
        {
          operator new();
        }

        v88[23] = 3 * v35;
        bzero(v88, 3 * v35);
        v88[3 * v35] = 0;
        v36 = v88;
        if (v88[23] < 0)
        {
          v36 = *v88;
        }

        do
        {
          v37 = *v34++;
          *v36 = a0123456789abcd_1[v37 >> 4];
          v36[1] = a0123456789abcd_1[v37 & 0xF];
          v36[2] = 32;
          v36 += 3;
          --v35;
        }

        while (v35);
      }

      else
      {
        v88[23] = 0;
        v88[0] = 0;
      }

      if (SHIBYTE(v86) < 0)
      {
        operator delete(__p[0]);
      }

      *__p = *v88;
      v86 = *&v88[16];
      sub_169D8();
      v38 = qword_2C1A0;
      if (os_log_type_enabled(qword_2C1A0, OS_LOG_TYPE_INFO))
      {
        v39 = __p;
        if (v86 < 0)
        {
          v39 = __p[0];
        }

        *v88 = 136315906;
        *&v88[4] = "USBMIDIDriverBase.cpp";
        *&v88[12] = 1024;
        *&v88[14] = 294;
        *&v88[18] = 1024;
        *&v88[20] = v32;
        *&v88[24] = 2080;
        *&v88[26] = v39;
        _os_log_impl(&dword_0, v38, OS_LOG_TYPE_INFO, "%25s:%-5d      %00d: %s ", v88, 0x22u);
      }

      v32 = ++v33;
    }

    while (v22 > v33);
  }

  sub_169D8();
  v40 = qword_2C1A0;
  if (os_log_type_enabled(qword_2C1A0, OS_LOG_TYPE_INFO))
  {
    v42 = "s";
    *&v88[4] = "USBMIDIDriverBase.cpp";
    *v88 = 136315650;
    if (v81 < 0xD)
    {
      v42 = "";
    }

    *&v88[12] = 1024;
    *&v88[14] = 296;
    *&v88[18] = 2080;
    *&v88[20] = v42;
    _os_log_impl(&dword_0, v40, OS_LOG_TYPE_INFO, "%25s:%-5d      Parsing group terminal block descriptor%s ...", v88, 0x1Cu);
  }

  sub_18BC8(v82, &buf[5], v84, v41);
  v43 = v82[1];
  v44 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v43 - *v82) >> 2));
  if (v43 == *v82)
  {
    v45 = 0;
  }

  else
  {
    v45 = v44;
  }

  sub_1C3D4(*v82, v43, v45, 1);
  v47 = *v82;
  v46 = v82[1];
  if (*v82 != v46)
  {
    v48 = 0;
    v49 = 0;
    do
    {
      sub_169D8();
      v50 = qword_2C1A0;
      if (os_log_type_enabled(qword_2C1A0, OS_LOG_TYPE_INFO))
      {
        v51 = *v47;
        v52 = v47[1];
        v53 = v47[2];
        v54 = v47[3];
        v55 = v47[6];
        v56 = v47[7];
        v57 = v47[4];
        *v88 = 136317186;
        *&v88[4] = "USBMIDIDriverBase.cpp";
        *&v88[12] = 1024;
        *&v88[14] = 306;
        *&v88[18] = 1024;
        *&v88[20] = v51;
        *&v88[24] = 1024;
        *&v88[26] = v52;
        *&v88[30] = 1024;
        *&v88[32] = v53;
        *v89 = 1024;
        *&v89[2] = v54;
        v90 = 1024;
        v91 = v55;
        v92 = 1024;
        v93 = v56;
        v94 = 1024;
        v95 = v57;
        _os_log_impl(&dword_0, v50, OS_LOG_TYPE_INFO, "%25s:%-5d      blockID 0x%x blockType 0x%x first gt %u (%u total) inEP 0x%x outEP 0x%x gtb.midiProtocol 0x%x", v88, 0x3Cu);
      }

      if (!v47[4])
      {
        v60 = v47[6];
        v61 = v47[7];
        sub_169D8();
        v62 = qword_2C1A0;
        if (!v60 || !v61)
        {
          if (os_log_type_enabled(qword_2C1A0, OS_LOG_TYPE_ERROR))
          {
            v77 = *v47;
            *v88 = 136315650;
            *&v88[4] = "USBMIDIDriverBase.cpp";
            *&v88[12] = 1024;
            *&v88[14] = 319;
            *&v88[18] = 1024;
            *&v88[20] = v77;
            _os_log_impl(&dword_0, v62, OS_LOG_TYPE_ERROR, "%25s:%-5d      blockID 0x%x cannot use MIDI-CI without both a valid input and output endpoint. Skipping ...", v88, 0x18u);
          }

          goto LABEL_95;
        }

        if (os_log_type_enabled(qword_2C1A0, OS_LOG_TYPE_INFO))
        {
          *v88 = 136315394;
          *&v88[4] = "USBMIDIDriverBase.cpp";
          *&v88[12] = 1024;
          *&v88[14] = 315;
          _os_log_impl(&dword_0, v62, OS_LOG_TYPE_INFO, "%25s:%-5d           (MIDI-CI protocol negotiation will occur before going online)", v88, 0x12u);
        }
      }

      v58 = v47[1];
      if ((v58 | 2) == 2)
      {
        v59 = v47[6];
      }

      else
      {
        v59 = 0;
      }

      if (v58 >= 2)
      {
        v63 = 0;
      }

      else
      {
        v63 = v47[7];
      }

      if (v59 || v63)
      {
        v64 = *a4;
        v65 = v47[2];
        while (v64 < a4[1] && *(v64 + 5) <= v65)
        {
          v64 += 8;
        }

        if (v47[4] < 5u)
        {
          v66 = 1;
        }

        else
        {
          v66 = 2;
        }

        if (v47[4])
        {
          v67 = v66;
        }

        else
        {
          v67 = -1;
        }

        v68 = v47[3];
        v69 = *v47;
        v88[0] = v48;
        v88[1] = v49;
        v88[2] = v59;
        v88[3] = v63;
        v88[4] = v67;
        v88[5] = v65;
        v88[6] = v68;
        v88[7] = v69;
        sub_18C40(a4, v64, v88);
        sub_169D8();
        v70 = qword_2C1A0;
        if (os_log_type_enabled(qword_2C1A0, OS_LOG_TYPE_INFO))
        {
          v71 = *v47;
          v72 = v47[4];
          if (v72 < 5)
          {
            v73 = 1;
          }

          else
          {
            v73 = 2;
          }

          v74 = v72 == 0;
          v75 = v47[2];
          if (v74)
          {
            v73 = 255;
          }

          v76 = v47[3];
          *v88 = 136317186;
          *&v88[4] = "USBMIDIDriverBase.cpp";
          *&v88[12] = 1024;
          *&v88[14] = 332;
          *&v88[18] = 1024;
          *&v88[20] = v71;
          *&v88[24] = 1024;
          *&v88[26] = v49;
          *&v88[30] = 1024;
          *&v88[32] = v59;
          *v89 = 1024;
          *&v89[2] = v63;
          v90 = 1024;
          v91 = v73;
          v92 = 1024;
          v93 = v75;
          v94 = 1024;
          v95 = v76;
          _os_log_impl(&dword_0, v70, OS_LOG_TYPE_INFO, "%25s:%-5d      blockID 0x%x cable 0x%x, inEP 0x%x, outEP 0x%x, usbpipeprotocol 0x%00x, firstGroupTerminal %d, numGroups %d -> maplist", v88, 0x3Cu);
        }

        ++v48;
        v49 += v47[3];
      }

LABEL_95:
      v47 += 12;
    }

    while (v47 != v46);
  }

  sub_169D8();
  v78 = qword_2C1A0;
  if (os_log_type_enabled(qword_2C1A0, OS_LOG_TYPE_INFO))
  {
    v79 = (a4[1] - *a4) >> 3;
    *v88 = 136315650;
    *&v88[4] = "USBMIDIDriverBase.cpp";
    *&v88[12] = 1024;
    *&v88[14] = 337;
    *&v88[18] = 2048;
    *&v88[20] = v79;
    _os_log_impl(&dword_0, v78, OS_LOG_TYPE_INFO, "%25s:%-5d      Maplist constructed with %lu group terminal block(s).", v88, 0x1Cu);
  }

  if (SHIBYTE(v86) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_103:
  sub_169D8();
  v80 = qword_2C1A0;
  if (os_log_type_enabled(qword_2C1A0, OS_LOG_TYPE_INFO))
  {
    *v88 = 136315394;
    *&v88[4] = "USBMIDIDriverBase.cpp";
    *&v88[12] = 1024;
    *&v88[14] = 343;
    _os_log_impl(&dword_0, v80, OS_LOG_TYPE_INFO, "%25s:%-5d [-] USBMIDIDriverBase::CreatePortMapList()", v88, 0x12u);
  }
}

void sub_18B80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  v23 = *a15;
  if (*a15)
  {
    *(a15 + 8) = v23;
    operator delete(v23);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 **sub_18BC8(unsigned __int8 **result, unint64_t a2, unsigned int a3, uint8x8_t a4)
{
  if (a3)
  {
    v4 = a2 + a3;
    v5 = *result;
    v6 = result[1];
    do
    {
      if (v5 != v6)
      {
        v7 = v5;
        while (*v7 != *(a2 + 3))
        {
          v7 += 12;
          if (v7 == v6)
          {
            goto LABEL_9;
          }
        }

        v7[1] = *(a2 + 4);
        a4.i32[0] = *(a2 + 5);
        v8 = vmovl_u8(a4).u64[0];
        v9 = vrev32_s16(v8);
        v9.i32[0] = v8.i32[0];
        a4 = vuzp1_s8(v9, v8);
        *(v7 + 2) = a4.i32[0];
        *(v7 + 4) = *(a2 + 9);
        *(v7 + 5) = *(a2 + 11);
      }

LABEL_9:
      a2 += 13;
    }

    while (a2 < v4);
  }

  return result;
}

double *sub_18C40(void *a1, uint64_t a2, double *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v8 = *a1;
    v9 = ((v6 - *a1) >> 3) + 1;
    if (v9 >> 61)
    {
      sub_CE0();
    }

    v10 = a2 - v8;
    v11 = v7 - v8;
    v12 = v11 >> 2;
    if (v11 >> 2 <= v9)
    {
      v12 = ((v6 - *a1) >> 3) + 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v13 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    v14 = v10 >> 3;
    v20 = a1;
    if (v13)
    {
      sub_11FF8(a1, v13);
    }

    __p = 0;
    v17 = 8 * v14;
    v18 = 8 * v14;
    v19 = 0;
    sub_1DBA0(&__p, a3);
    v4 = sub_1DD04(a1, &__p, v4);
    if (v18 != v17)
    {
      v18 += (v17 - v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }

  else if (a2 == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 1;
  }

  else
  {
    sub_1DB54(a1, a2, v6, (a2 + 8));
    *v4 = *a3;
  }

  return v4;
}

void sub_18D74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_18DAC(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, double **a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  sub_169D8();
  v10 = qword_2C1A0;
  if (os_log_type_enabled(qword_2C1A0, OS_LOG_TYPE_INFO))
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 1);
    v12 = 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 1);
    *v43 = 136316418;
    *&v43[4] = "USBMIDIDriverBase.cpp";
    v44 = 1024;
    v45 = 349;
    v46 = 2048;
    v47 = a1;
    v48 = 1024;
    v49 = a2;
    v50 = 2048;
    v51 = v11;
    v52 = 2048;
    v53 = v12;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "%25s:%-5d [+] USBMIDIDriverBase::CreatePortMapList(inUSBDevice:%p, interfaceNum:%d) - Constructing a USB MIDI 1.0 port map list for %lu inputs and %lu outputs...", v43, 0x36u);
  }

  v14 = *a3;
  v13 = a3[1];
  if (v13 == *a3)
  {
    v22 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a3) >> 1);
  }

  else
  {
    v15 = 0;
    v16 = a5[1];
    do
    {
      v17 = *(v14 + 6 * v15 + 5);
      v18 = *a5;
      if (*a5 == v16)
      {
        v19 = 0;
      }

      else
      {
        v19 = 0;
        do
        {
          v20 = (v17 & 0x80) != 0 && *(v18 + 2) == v17 || (v17 & 0x80u) == 0 && v17 == *(v18 + 3);
          v19 += v20;
          ++v18;
        }

        while (v18 != v16);
      }

      v43[0] = v15;
      v43[1] = v19;
      v43[2] = v17;
      *&v43[3] = 0;
      v43[7] = 0;
      if (v16 >= a5[2])
      {
        v16 = sub_12958(a5, v43);
        v14 = *a3;
        v13 = a3[1];
      }

      else
      {
        *v16 = v15;
        *(v16 + 1) = v19;
        *(v16 + 2) = v17;
        *(v16 + 3) = 0;
        *(v16++ + 7) = 0;
      }

      a5[1] = v16;
      ++v15;
      v22 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v14) >> 1);
    }

    while (v22 > v15);
  }

  v24 = *a4;
  v23 = a4[1];
  v25 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a4) >> 1);
  if (v25 >= v22)
  {
    LODWORD(v26) = v22;
  }

  else
  {
    v26 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a4) >> 1);
  }

  if (v26 <= 0)
  {
    v28 = a5[1];
  }

  else
  {
    v27 = 0;
    v29 = *a5;
    v28 = a5[1];
    v30 = v26 & 0x7FFFFFFF;
    do
    {
      if (v27 == v25)
      {
        sub_12040();
      }

      if (v29 != v28)
      {
        v31 = *(v24 + 6 * v27 + 5);
        v32 = v29;
        while (1)
        {
          v33 = *(v32 + 3);
          if ((v31 & 0x80) != 0 && *(v32 + 2) == v31)
          {
            break;
          }

          if ((v31 & 0x80) == 0 && v33 == v31)
          {
            v33 = *(v32 + 2);
            break;
          }

          if (++v32 == v28)
          {
            goto LABEL_45;
          }
        }

        v34 = v29;
        if (!v33)
        {
LABEL_45:
          if (v29 != v28)
          {
            v35 = v29;
            while (*(v35 + 3))
            {
              if (++v35 == v28)
              {
                goto LABEL_52;
              }
            }

            *(v35 + 3) = v31;
          }

          goto LABEL_52;
        }

        while (*(v34 + 2) != v33 || *(v34 + 3))
        {
          if (++v34 == v28)
          {
            goto LABEL_52;
          }
        }

        *(v34 + 3) = v31;
      }

LABEL_52:
      ++v27;
    }

    while (v27 != v30);
  }

  v36 = v28 - *a5;
  if (v25 > v36 >> 3)
  {
    v37 = v36 >> 3;
    v38 = v36 >> 3;
    v39 = *(v24 + 6 * v37 + 5);
    do
    {
      v40 = v39;
      v39 = *(v24 + 6 * v37 + 5);
      if (v40 == v39)
      {
        v41 = v38;
      }

      else
      {
        v41 = 0;
      }

      v43[0] = v37;
      *&v43[1] = v41;
      v43[3] = v39;
      *&v43[4] = 1;
      if (v28 >= a5[2])
      {
        v28 = sub_12958(a5, v43);
        v24 = *a4;
        v23 = a4[1];
      }

      else
      {
        *v28 = v37;
        *(v28 + 1) = v41;
        *(v28 + 2) = 0;
        *(v28 + 3) = v39;
        *(v28++ + 1) = 1;
      }

      LODWORD(v38) = v41 + 1;
      a5[1] = v28;
      v37 = v28 - *a5;
    }

    while (v37 < 0xAAAAAAAAAAAAAAABLL * ((v23 - v24) >> 1));
  }

  sub_169D8();
  v42 = qword_2C1A0;
  if (os_log_type_enabled(qword_2C1A0, OS_LOG_TYPE_INFO))
  {
    *v43 = 136315394;
    *&v43[4] = "USBMIDIDriverBase.cpp";
    v44 = 1024;
    v45 = 398;
    _os_log_impl(&dword_0, v42, OS_LOG_TYPE_INFO, "%25s:%-5d [-] USBMIDIDriverBase::CreatePortMapList()", v43, 0x12u);
  }
}

void sub_191F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

CFStringRef sub_19214(uint64_t a1, int a2, const __CFString *a3)
{
  v4 = sub_56A0(a1, a2);
  if (!v4)
  {
    return v4;
  }

  Length = CFStringGetLength(a3);
  v6 = CFStringGetLength(v4);
  if (v6 < Length)
  {
    return v4;
  }

  v7 = Length;
  v11.location = 0;
  v11.length = Length;
  if (CFStringCompareWithOptions(v4, a3, v11, 1uLL))
  {
    return v4;
  }

  if (Length < v6)
  {
    while (1)
    {
      CharacterAtIndex = CFStringGetCharacterAtIndex(v4, v7);
      if (CharacterAtIndex != 95 && CharacterAtIndex != 32)
      {
        break;
      }

      if (v6 == ++v7)
      {
        Length = v6;
        goto LABEL_11;
      }
    }

    Length = v7;
  }

LABEL_11:
  v12.location = Length;
  v12.length = v6 - Length;
  v10 = CFStringCreateWithSubstring(0, v4, v12);
  CFRelease(v4);
  return v10;
}

BOOL sub_19300(uint64_t a1, MIDIDeviceRef a2, void *a3, void *a4, const __CFString *a5, const __CFString *a6, const __CFString *a7)
{
  v7 = a3[1] - *a3;
  newEntity = 0;
  sub_169D8();
  v8 = qword_2C1A0;
  if (os_log_type_enabled(qword_2C1A0, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *v87 = "USBMIDIDriverBase.cpp";
    *&v87[8] = 1024;
    *&v87[10] = 435;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%25s:%-5d [+] configureDeviceUsingPortMap(using groupTerminalBlocks)", buf, 0x12u);
  }

  sub_169D8();
  v9 = qword_2C1A0;
  if (os_log_type_enabled(qword_2C1A0, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *v87 = "USBMIDIDriverBase.cpp";
    *&v87[8] = 1024;
    *&v87[10] = 436;
    v88 = 1024;
    *v89 = v7 >> 3;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%25s:%-5d      Constructing %d + 1 (phantom) UMP entities...", buf, 0x18u);
  }

  if ((v7 >> 3) < 1)
  {
    v78 = 0;
    v82 = kMIDIProtocol_1_0;
    v11 = 1;
    v12 = a3;
LABEL_84:
    v56 = *v12;
    v55 = v12[1];
    if (*v12 == v55)
    {
      MIDIDeviceNewEntity(a2, a6, v82, 0, 0, 0, &newEntity);
    }

    else
    {
      v57 = v56 + 8;
      do
      {
        if (*(v57 - 2))
        {
          v58 = *(v57 - 6) == 0;
        }

        else
        {
          v58 = 1;
        }

        v59 = !v58;
        if (!v58)
        {
          break;
        }

        v58 = v57 == v55;
        v57 += 8;
      }

      while (!v58);
      v60 = v56 + 8;
      do
      {
        if (*(v60 - 2))
        {
          v61 = *(v60 - 5) == 0;
        }

        else
        {
          v61 = 1;
        }

        v62 = !v61;
        if (!v61)
        {
          break;
        }

        v58 = v60 == v55;
        v60 += 8;
      }

      while (!v58);
      MIDIDeviceNewEntity(a2, a6, v82, 0, v59, v62, &newEntity);
      if (v59)
      {
        Source = MIDIEntityGetSource(newEntity, 0);
        if (Source)
        {
          if (HIDWORD(v78))
          {
            v64 = HIDWORD(v78);
          }

          else
          {
            v64 = 3125;
          }

          MIDIObjectSetIntegerProperty(Source, kMIDIPropertyMaxSysExSpeed, v64);
          if ((v62 & 1) == 0)
          {
            goto LABEL_121;
          }

LABEL_115:
          Destination = MIDIEntityGetDestination(newEntity, 0);
          if (Destination)
          {
            if (v78)
            {
              v66 = v78;
            }

            else
            {
              v66 = 3125;
            }

            MIDIObjectSetIntegerProperty(Destination, kMIDIPropertyMaxSysExSpeed, v66);
          }

          goto LABEL_121;
        }
      }

      if (v62)
      {
        goto LABEL_115;
      }
    }

LABEL_121:
    MIDIObjectSetIntegerProperty(newEntity, kMIDIPropertyUMPActiveGroupBitmap, 15);
    MIDIObjectSetIntegerProperty(newEntity, kMIDIPropertyUMPCanTransmitGroupless, 1);
    v67 = sub_15B88(a2);
    if (v68)
    {
      v69 = v67;
      *buf = 0;
      if (!MIDIObjectGetIntegerProperty(v67, kMIDIPropertyUniqueID, buf))
      {
        MIDIObjectSetIntegerProperty(HIDWORD(v69), kMIDIPropertyAssociatedEndpoint, *buf);
      }

      *buf = 0;
      if (!MIDIObjectGetIntegerProperty(HIDWORD(v69), kMIDIPropertyUniqueID, buf))
      {
        MIDIObjectSetIntegerProperty(v69, kMIDIPropertyAssociatedEndpoint, *buf);
      }
    }

    sub_169D8();
    v70 = qword_2C1A0;
    if (os_log_type_enabled(qword_2C1A0, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *v87 = "USBMIDIDriverBase.cpp";
      *&v87[8] = 1024;
      *&v87[10] = 549;
      _os_log_impl(&dword_0, v70, OS_LOG_TYPE_INFO, "%25s:%-5d      setting UMP enabled on device", buf, 0x12u);
    }

    MIDIObjectSetIntegerProperty(a2, @"UMP Enabled", 1);
    sub_169D8();
    v71 = qword_2C1A0;
    if (os_log_type_enabled(qword_2C1A0, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *v87 = "USBMIDIDriverBase.cpp";
      *&v87[8] = 1024;
      *&v87[10] = 551;
      _os_log_impl(&dword_0, v71, OS_LOG_TYPE_INFO, "%25s:%-5d [-] configureDeviceUsingPortMap(using groupTerminalBlocks)", buf, 0x12u);
    }

    return v11;
  }

  v10 = 0;
  v11 = 0;
  v78 = 0;
  v75 = (v7 >> 3) & 0x7FFFFFFF;
  v82 = kMIDIProtocol_1_0;
  v12 = a3;
  while (1)
  {
    v13 = (*a4 + 12 * v10);
    v15 = *v12;
    v14 = v12[1];
    if (*v12 != v14)
    {
      while (v15[7] != *v13)
      {
        v15 += 8;
        if (v15 == v14)
        {
          return v11;
        }
      }
    }

    if (v14 == v15)
    {
      return v11;
    }

    v83 = &off_28F58;
    cf = 0;
    v16 = sub_19214(a1, v13[5], a7);
    v17 = cf;
    cf = v16;
    if (v17)
    {
      CFRelease(v17);
      v16 = cf;
    }

    v18 = v15[6];
    if (v15[2])
    {
      v19 = v15[6];
    }

    else
    {
      v19 = 0;
    }

    if (v15[3])
    {
      v20 = v15[6];
    }

    else
    {
      v20 = 0;
    }

    if (v16 && CFStringCompare(&stru_29418, v16, 0))
    {
      sub_169D8();
      v21 = qword_2C1A0;
      if (os_log_type_enabled(qword_2C1A0, OS_LOG_TYPE_DEBUG))
      {
        v22 = v13[5];
        *buf = 136315906;
        *v87 = "USBMIDIDriverBase.cpp";
        *&v87[8] = 1024;
        *&v87[10] = 454;
        v88 = 1024;
        *v89 = v22;
        *&v89[4] = 2112;
        *&v89[6] = cf;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d      Using GTB name string at string index %d: %@", buf, 0x22u);
      }
    }

    else
    {
      sub_1E39C(buf, a5, *v13);
      v23 = cf;
      cf = *&v87[4];
      *&v87[4] = v23;
      sub_1DDEC(buf);
    }

    sub_169D8();
    v24 = qword_2C1A0;
    if (os_log_type_enabled(qword_2C1A0, OS_LOG_TYPE_DEBUG))
    {
      v25 = v13[1];
      v26 = v15[5];
      v27 = v15[6];
      *buf = 136316674;
      *v87 = "USBMIDIDriverBase.cpp";
      *&v87[8] = 1024;
      *&v87[10] = 455;
      v88 = 2112;
      *v89 = cf;
      *&v89[8] = 1024;
      *&v89[10] = v10;
      v90 = 1024;
      v91 = v25;
      v92 = 1024;
      v93 = v26;
      v94 = 1024;
      LODWORD(v95) = v27;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d      Found port map for GTB %@ (index:%d blockType:%d): firstGroup %d numGroups %d", buf, 0x34u);
    }

    v28 = v13[4];
    if (v28)
    {
      v29 = "";
    }

    else
    {
      v29 = " (jitter reduction requested)";
    }

    v30 = v82;
    if ((v28 - 17) < 2)
    {
      v30 = kMIDIProtocol_2_0;
    }

    v82 = v30;
    MIDIDeviceNewEntity(a2, cf, v30, 0, v19, v20, &newEntity);
    sub_169D8();
    v31 = qword_2C1A0;
    if (os_log_type_enabled(qword_2C1A0, OS_LOG_TYPE_INFO))
    {
      v32 = v13[4];
      v33 = "MIDI 2.0";
      if (v82 == kMIDIProtocol_1_0)
      {
        v33 = "MIDI 1-UP";
      }

      *buf = 136316674;
      v34 = "";
      if (v28)
      {
        v34 = v29;
      }

      *v87 = "USBMIDIDriverBase.cpp";
      *&v87[8] = 1024;
      *&v87[10] = 461;
      v88 = 2080;
      *v89 = v33;
      *&v89[8] = 1024;
      *&v89[10] = v19;
      v90 = 1024;
      v91 = v20;
      v92 = 1024;
      v93 = v32;
      v94 = 2080;
      v95 = v34;
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_INFO, "%25s:%-5d      Created a %s entity with %d inputs and %d outputs, midiProtocol = %d%s", buf, 0x38u);
    }

    if (v13[3])
    {
      v35 = 0;
      v36 = 0;
      do
      {
        v37 = v13[2];
        v38 = v13[1];
        if ((v38 | 2) == 2)
        {
          v39 = MIDIEntityGetSource(newEntity, v35);
          v38 = v13[1];
        }

        else
        {
          v39 = 0;
        }

        if (v38 > 1)
        {
          v40 = 0;
        }

        else
        {
          v40 = MIDIEntityGetDestination(newEntity, v35);
        }

        v41 = 1 << (v37 + v35);
        if (v39)
        {
          MIDIObjectSetIntegerProperty(v39, kMIDIPropertyUMPActiveGroupBitmap, v41);
        }

        if (v40)
        {
          MIDIObjectSetIntegerProperty(v40, kMIDIPropertyUMPActiveGroupBitmap, v41);
        }

        v36 |= v41;
        ++v35;
      }

      while (v35 < v13[3]);
      v42 = v36;
    }

    else
    {
      v42 = 0;
    }

    MIDIObjectSetIntegerProperty(newEntity, kMIDIPropertyUMPActiveGroupBitmap, v42);
    v12 = a3;
    v43 = *(v13 + 5);
    if (v43 >= 2)
    {
      v44 = v43 << 12;
      sub_169D8();
      v45 = qword_2C1A0;
      if (os_log_type_enabled(qword_2C1A0, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        *v87 = "USBMIDIDriverBase.cpp";
        *&v87[8] = 1024;
        *&v87[10] = 480;
        v88 = 1024;
        *v89 = v44;
        _os_log_impl(&dword_0, v45, OS_LOG_TYPE_INFO, "%25s:%-5d      setting maxOutputBandwidth to %u", buf, 0x18u);
      }

      if (v19)
      {
        for (i = 0; i != v19; ++i)
        {
          v47 = MIDIEntityGetSource(newEntity, i);
          if (v47)
          {
            MIDIObjectSetIntegerProperty(v47, kMIDIPropertyMaxSysExSpeed, v44);
          }
        }
      }

      if (v44 >= SHIDWORD(v78))
      {
        v48 = HIDWORD(v78);
      }

      else
      {
        v48 = v44;
      }

      if (!HIDWORD(v78))
      {
        v48 = v44;
      }

      HIDWORD(v78) = v48;
    }

    v49 = *(v13 + 4);
    if (v49 >= 2)
    {
      v50 = v49 << 12;
      sub_169D8();
      v51 = qword_2C1A0;
      if (os_log_type_enabled(qword_2C1A0, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        *v87 = "USBMIDIDriverBase.cpp";
        *&v87[8] = 1024;
        *&v87[10] = 493;
        v88 = 1024;
        *v89 = v50;
        _os_log_impl(&dword_0, v51, OS_LOG_TYPE_INFO, "%25s:%-5d      setting maxInputBandwidth to %u", buf, 0x18u);
      }

      if (v20)
      {
        for (j = 0; j != v20; ++j)
        {
          v53 = MIDIEntityGetDestination(newEntity, j);
          if (v53)
          {
            MIDIObjectSetIntegerProperty(v53, kMIDIPropertyMaxSysExSpeed, v50);
          }
        }
      }

      if (v50 >= v78)
      {
        v54 = v78;
      }

      else
      {
        v54 = v50;
      }

      if (!v78)
      {
        v54 = v50;
      }

      LODWORD(v78) = v54;
    }

    MIDIObjectSetIntegerProperty(newEntity, @"In Endpoint", *(*a3 + 8 * v10 + 2));
    MIDIObjectSetIntegerProperty(newEntity, @"Out Endpoint", *(*a3 + 8 * v10 + 3));
    MIDIObjectSetIntegerProperty(newEntity, @"Cable", *(*a3 + 8 * v10 + 1));
    MIDIObjectSetIntegerProperty(newEntity, @"Default Protocol", *(*a3 + 8 * v10 + 4));
    MIDIObjectSetIntegerProperty(newEntity, @"Group Terminal Block ID", *(*a3 + 8 * v10 + 7));
    MIDIObjectSetIntegerProperty(newEntity, @"First Group", *(*a3 + 8 * v10 + 5));
    MIDIObjectSetIntegerProperty(newEntity, @"Number of Groups", *(*a3 + 8 * v10 + 6));
    sub_1DDEC(&v83);
    v11 = ++v10 >= v75;
    if (v10 == v75)
    {
      goto LABEL_84;
    }
  }
}

BOOL sub_19DF0(uint64_t a1, const __CFString *a2, MIDIDeviceRef a3, uint64_t *a4, uint64_t *a5, void *a6, void *a7, const __CFString *a8, char a9)
{
  newEntity = 0;
  v13 = a4[1];
  v49 = *a4;
  sub_169D8();
  v14 = qword_2C1A0;
  if (os_log_type_enabled(qword_2C1A0, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *v60 = "USBMIDIDriverBase.cpp";
    *&v60[8] = 1024;
    *&v60[10] = 559;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "%25s:%-5d [+] configureDeviceUsingPortMap(using JackLists)", buf, 0x12u);
  }

  sub_169D8();
  v15 = qword_2C1A0;
  if (os_log_type_enabled(qword_2C1A0, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *v60 = "USBMIDIDriverBase.cpp";
    *&v60[8] = 1024;
    *&v60[10] = 560;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "%25s:%-5d      Constructing USB MIDI 1.0 entities...", buf, 0x12u);
  }

  v48 = v13;
  if (v13 != v49)
  {
    v16 = 0;
    if (((v48 - v49) >> 3) <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = (v48 - v49) >> 3;
    }

    v51 = v17;
    v52 = a8;
    do
    {
      v56 = &off_28F58;
      cf = 0;
      if (v16 >= (a4[1] - *a4) >> 3)
      {
        sub_12040();
      }

      v18 = *a4 + 8 * v16;
      v19 = *(v18 + 2);
      v20 = *(v18 + 3);
      if (*(v18 + 2))
      {
        v21 = sub_19214(a1, *(*a6 + 6 * v16 + 4), a8);
        v22 = *a6 + 6 * v16;
        v23 = *a5;
        v24 = a5[1];
        if (*a5 != v24)
        {
          while (*(v23 + 2) != *(v22 + 3))
          {
            v23 += 6;
            if (v23 == v24)
            {
              goto LABEL_22;
            }
          }
        }

        if (v23 != v24)
        {
          if (v23)
          {
            v25 = *(v23 + 1);
            *(v22 + 1) = v25;
            if (v25 == 1)
            {
              sub_169D8();
              v26 = qword_2C1A0;
              if (os_log_type_enabled(qword_2C1A0, OS_LOG_TYPE_INFO))
              {
                v27 = *(*a6 + 6 * v16 + 2);
                *buf = 136315650;
                *v60 = "USBMIDIDriverBase.cpp";
                *&v60[8] = 1024;
                *&v60[10] = 576;
                v61 = 1024;
                LODWORD(v62) = v27;
                _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, "%25s:%-5d      Found an embedded input at jack ID %d.", buf, 0x18u);
              }
            }
          }
        }
      }

      else
      {
        v21 = 0;
      }

LABEL_22:
      if (v20)
      {
        v28 = sub_19214(a1, *(*a7 + 6 * v16 + 4), a8);
        v29 = *a7 + 6 * v16;
        v30 = *a5;
        v31 = a5[1];
        if (*a5 != v31)
        {
          while (*(v30 + 3) != *(v29 + 2))
          {
            v30 += 6;
            if (v30 == v31)
            {
              goto LABEL_32;
            }
          }
        }

        if (v30 != v31)
        {
          if (v30)
          {
            v32 = *(v30 + 1);
            *(v29 + 1) = v32;
            if (v32 == 1)
            {
              sub_169D8();
              v33 = qword_2C1A0;
              if (os_log_type_enabled(qword_2C1A0, OS_LOG_TYPE_INFO))
              {
                v34 = *(*a7 + 6 * v16 + 2);
                *buf = 136315650;
                *v60 = "USBMIDIDriverBase.cpp";
                *&v60[8] = 1024;
                *&v60[10] = 586;
                v61 = 1024;
                LODWORD(v62) = v34;
                _os_log_impl(&dword_0, v33, OS_LOG_TYPE_INFO, "%25s:%-5d      Found an embedded output at jack ID %d.", buf, 0x18u);
              }
            }
          }
        }

LABEL_32:
        if (v21 && v28 && CFEqual(v21, v28))
        {
          CFRetain(v21);
          v35 = cf;
          cf = v21;
          if (v35)
          {
            CFRelease(v35);
          }

          CFRelease(v21);
          CFRelease(v28);
          v28 = 0;
          v21 = 0;
          goto LABEL_41;
        }
      }

      else
      {
        v28 = 0;
      }

      if (((v48 - v49) >> 3) >= 2)
      {
        v36 = sub_1E400(buf, a2, (v16 + 1));
        v37 = cf;
        cf = *&v60[4];
        *&v60[4] = v37;
        sub_1DDEC(v36);
      }

LABEL_41:
      if (!cf)
      {
        if (a8)
        {
          CFRetain(a8);
          v41 = cf;
          cf = a8;
          if (v41)
          {
            CFRelease(v41);
          }
        }

        else
        {
          cf = 0;
        }
      }

      if (a9)
      {
        if (v19 && v20 && (v38 = *(*a6 + 6 * v16 + 1), v38 == *(*a7 + 6 * v16 + 1)))
        {
          if (v38 == 1)
          {
            sub_169D8();
            v39 = qword_2C1A0;
            v40 = 1;
            if (os_log_type_enabled(qword_2C1A0, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              *v60 = "USBMIDIDriverBase.cpp";
              *&v60[8] = 1024;
              *&v60[10] = 611;
              _os_log_impl(&dword_0, v39, OS_LOG_TYPE_INFO, "%25s:%-5d      Creating an embedded entity.", buf, 0x12u);
            }

            goto LABEL_57;
          }
        }

        else if ((v19 != 0) != (v20 != 0))
        {
          v42 = a7;
          if (v19)
          {
            v42 = a6;
          }

          v40 = *(*v42 + 6 * v16 + 1) == 1;
          goto LABEL_57;
        }
      }

      v40 = 0;
LABEL_57:
      MIDIDeviceAddEntity(a3, cf, v40, v19 != 0, v20 != 0, &newEntity);
      if (v21)
      {
        Source = MIDIEntityGetSource(newEntity, 0);
        MIDIObjectSetStringProperty(Source, kMIDIPropertyName, v21);
      }

      if (v28)
      {
        Destination = MIDIEntityGetDestination(newEntity, 0);
        MIDIObjectSetStringProperty(Destination, kMIDIPropertyName, v28);
      }

      if (v16 >= (a4[1] - *a4) >> 3 || (MIDIObjectSetIntegerProperty(newEntity, @"In Endpoint", *(*a4 + 8 * v16 + 2)), v16 >= (a4[1] - *a4) >> 3) || (MIDIObjectSetIntegerProperty(newEntity, @"Out Endpoint", *(*a4 + 8 * v16 + 3)), v16 >= (a4[1] - *a4) >> 3))
      {
        sub_12040();
      }

      MIDIObjectSetIntegerProperty(newEntity, @"Cable", *(*a4 + 8 * v16 + 1));
      if (v21)
      {
        CFRelease(v21);
      }

      if (v28)
      {
        CFRelease(v28);
      }

      MIDIObjectSetIntegerProperty(a3, @"UMP Enabled", 0);
      sub_1DDEC(&v56);
      ++v16;
      a8 = v52;
    }

    while (v16 != v51);
  }

  sub_169D8();
  v45 = qword_2C1A0;
  if (os_log_type_enabled(qword_2C1A0, OS_LOG_TYPE_INFO))
  {
    v46 = "false";
    *buf = 136315650;
    *v60 = "USBMIDIDriverBase.cpp";
    if (v48 != v49)
    {
      v46 = "true";
    }

    *&v60[8] = 1024;
    *&v60[10] = 637;
    v61 = 2080;
    v62 = v46;
    _os_log_impl(&dword_0, v45, OS_LOG_TYPE_INFO, "%25s:%-5d [+] configureDeviceUsingPortMap(using JackLists) = %s", buf, 0x1Cu);
  }

  return v48 != v49;
}

void sub_1A568(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a2)
  {
    sub_18A0(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A670(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_12DD0(va);
  sub_2E6C(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1A6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return 4294956462;
  }

  (*(*a3 + 88))(a3, a2, a4);
  return 0;
}

uint64_t sub_1A724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return 4294956462;
  }

  (*(*a3 + 96))(a3, a2, a4);
  return 0;
}

void sub_1A778(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 0;
  v6 = (a3 + 16);
  *(a3 + 24) = 0u;
  *(a3 + 72) = 0u;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  v7 = sub_4E88(a1);
  v8 = sub_5F80(a2);
  if (!v7)
  {
    return;
  }

  v9 = v8;
  if (!v8 || (sub_638C(a2) & 1) == 0)
  {
    return;
  }

  v10 = (*(*v9 + 136))(v9, a3 + 16);
  sub_169D8();
  v11 = qword_2C1A0;
  if (v10)
  {
    if (os_log_type_enabled(qword_2C1A0, OS_LOG_TYPE_ERROR))
    {
      *v16 = 136315650;
      *&v16[4] = "USBMIDIDriverBase.cpp";
      *&v16[12] = 1024;
      *&v16[14] = 714;
      v17 = 1024;
      v18 = v10;
      v12 = "%25s:%-5d [!] USBMIDIClassDriver::ProbeDevice() - GetInterfaceNumber() returned error 0x%x";
      v13 = v11;
      v14 = OS_LOG_TYPE_ERROR;
LABEL_9:
      _os_log_impl(&dword_0, v13, v14, v12, v16, 0x18u);
    }
  }

  else if (os_log_type_enabled(qword_2C1A0, OS_LOG_TYPE_INFO))
  {
    v15 = *v6;
    *v16 = 136315650;
    *&v16[4] = "USBMIDIDriverBase.cpp";
    *&v16[12] = 1024;
    *&v16[14] = 716;
    v17 = 1024;
    v18 = v15;
    v12 = "%25s:%-5d [*] USBMIDIClassDriver::ProbeDevice() - inUSBInterface has interface number %d";
    v13 = v11;
    v14 = OS_LOG_TYPE_INFO;
    goto LABEL_9;
  }

  sub_16A08(v9, v16);
  if (*v16)
  {
    sub_16BD4(v9, *v16, (a3 + 24), a3 + 48, a3 + 72, a3 + 96);
    *a3 = a1;
    *(a3 + 8) = a2;
  }

  if (v19 < 0)
  {
    operator delete(*&v16[8]);
  }
}

void sub_1A978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_120E8(v15);
  _Unwind_Resume(a1);
}

BOOL sub_1A9AC(uint64_t a1, uint64_t a2, const __CFString *a3, const __CFString *a4, const __CFString *a5, MIDIDeviceRef a6, uint64_t *a7, uint64_t *a8, void *a9, void *a10)
{
  sub_4E88(a1);
  v16 = sub_5F80(a2);
  v17 = sub_167EC(a1, a4);
  v19 = v18;
  v24 = 0;
  (*(*v16 + 104))(v16, &v24);
  v20 = sub_19DF0(a1, a3, a6, a7, a8, a9, a10, v19, v24 == 1452);
  if (a4 && v17 && CFStringCompare(v17, a4, 0))
  {
    CFRelease(v17);
  }

  if (a5 && v19 && CFStringCompare(v19, a5, 0))
  {
    CFRelease(v19);
  }

  return v20;
}

void sub_1AAD0(int a1@<W0>, uint64_t a2@<X1>, double **a3@<X8>)
{
  v5 = *a2;
  v6 = *(a2 + 16);
  if (a1)
  {
    sub_18DAC(v5, v6, (a2 + 48), (a2 + 72), a3);
  }

  else
  {
    sub_17E40(v5, v6, (a2 + 96), a3);
  }
}

void sub_1AAF8(uint64_t a1, MIDITimeStamp a2, const UInt32 *a3, int64_t a4, uint64_t a5, MIDIProtocolID a6)
{
  v7 = a3;
  if (a6)
  {
    if (*(a1 + 187) == 1)
    {

      sub_1B468(a1, a2, a3, a4, 0, a6);
    }

    else
    {
      sub_169D8();
      v63 = qword_2C1A0;
      if (os_log_type_enabled(qword_2C1A0, OS_LOG_TYPE_ERROR))
      {
        *evtlist = 136315394;
        *&evtlist[4] = "USBMIDIDriverBase.cpp";
        *&evtlist[12] = 1024;
        *&evtlist[14] = 766;
        _os_log_impl(&dword_0, v63, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] USBMIDIDriverBase::USBMIDIHandleInput() - protocols newer than USB MIDI 1.0 need USB MIDI 2.0 driver support, which is disabled", evtlist, 0x12u);
      }
    }

    return;
  }

  v98 = 0u;
  v99 = 0u;
  v10 = a3 + a4;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  memset(evtlist, 0, sizeof(evtlist));
  if (*(a1 + 187) != 1 || *(a1 + 490) != 1)
  {
    v64 = MIDIPacketListInit(evtlist);
    if (a4 < 1)
    {
      return;
    }

    v65 = v64;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    while (1)
    {
      v69 = *v7;
      v70 = v69 & 0xF;
      if (v70 >= 2)
      {
        break;
      }

LABEL_158:
      v74 = v66;
LABEL_159:
      ++v7;
      v66 = v74;
      if (v7 >= v10)
      {
        if (*evtlist && (v67 & 1) != 0)
        {
          MIDIReceived(*(*(a1 + 16) + 4 * v68), evtlist);
        }

        return;
      }
    }

    v71 = *(a1 + 12);
    if (v71 <= (v69 >> 4))
    {
      v72 = v71 - 1;
    }

    else
    {
      v72 = v69 >> 4;
    }

    if ((v67 & 1) != 0 && v72 != v68)
    {
      MIDIReceived(*(*(a1 + 16) + 4 * v68), evtlist);
      v65 = MIDIPacketListInit(evtlist);
      v66 = 0;
    }

    if ((v72 & 0x80000000) == 0 && (*(a1 + 24) - *(a1 + 16)) >> 2 > v72)
    {
      v68 = v72;
      v67 = 1;
    }

    if (v70 > 7)
    {
      v73 = 1;
      if (((1 << v70) & 0x4F00) != 0)
      {
LABEL_139:
        v73 = 3;
LABEL_156:
        v76 = MIDIPacketListAdd(evtlist, 0x200uLL, v65, a2, v73, v7 + 1);
        if (!v76)
        {
          do
          {
            if (v67)
            {
              MIDIReceived(*(*(a1 + 16) + 4 * v68), evtlist);
            }

            v77 = MIDIPacketListInit(evtlist);
            v78 = MIDIPacketListAdd(evtlist, 0x200uLL, v77, a2, v73, v7 + 1);
          }

          while (!v78);
          v65 = v78;
          v74 = 0;
          goto LABEL_159;
        }

        v65 = v76;
        goto LABEL_158;
      }

      if (((1 << v70) & 0x3000) == 0)
      {
        goto LABEL_156;
      }

LABEL_152:
      v73 = 2;
      goto LABEL_156;
    }

    v73 = v70 - 4;
    if (v70 > 4)
    {
      if ((v70 - 6) >= 2 && *(v7 + 1) != 247)
      {
        v73 = 1;
        goto LABEL_156;
      }

      v74 = 0;
      if ((v66 & 1) == 0)
      {
        v66 = 0;
        goto LABEL_156;
      }
    }

    else
    {
      if (v70 == 2)
      {
        goto LABEL_152;
      }

      if (v70 == 3)
      {
        goto LABEL_139;
      }

      v74 = 1;
      if ((v66 & 1) == 0)
      {
        v66 = 1;
        goto LABEL_139;
      }

      v73 = 3;
    }

    v75 = &v65->data[v65->length];
    if (&v75[v73] <= &v100)
    {
      memcpy(v75, v7 + 1, v73);
      v65->length += v73;
      goto LABEL_159;
    }

    if (v67)
    {
      MIDIReceived(*(*(a1 + 16) + 4 * v68), evtlist);
    }

    v65 = MIDIPacketListInit(evtlist);
    v66 = 0;
    goto LABEL_156;
  }

  if (a4 < 1)
  {
    MIDIEventListInit(evtlist, kMIDIProtocol_1_0);
    return;
  }

  v11 = a4 >> 2;
  v12 = a3;
  do
  {
    *v12 = bswap32(*v12);
    ++v12;
  }

  while (v12 < v10);
  MIDIEventListInit(evtlist, kMIDIProtocol_1_0);
  if (v11 && a4 >= 1)
  {
    v13 = 0;
    while (1)
    {
      if (!v7)
      {
        return;
      }

      v79 = v11;
      v14 = *(a1 + 40);
      v15 = MIDIEventListInit(evtlist, kMIDIProtocol_1_0);
      v16 = v7;
      if (v15)
      {
        break;
      }

LABEL_116:
      v61 = (v16 - v7) >> 2;
      if (v61)
      {
        LODWORD(v11) = v79 - v61;
        v62 = *(a1 + 12);
        v13 = (*v7 >> 28) >= v62 ? v62 - 1 : *v7 >> 28;
        MIDIReceivedEventList(*(*(a1 + 16) + 4 * v13), evtlist);
        if (v11)
        {
          v7 = (v7 + ((v16 - v7) & 0x3FFFFFFFCLL));
          if (v7 < v10)
          {
            continue;
          }
        }
      }

      return;
    }

    v17 = v15;
    v18 = (v14 + 6 * v13);
    v19 = *v7 >> 28;
    v80 = ((HIBYTE(*v7) >> 4) << 24) | 0x30000000;
    v16 = v7;
    while (1)
    {
      v20 = *v16;
      if (v19 != v20 >> 28 || &v99 + 4 - (v17 + 4 * v17->wordCount) < 5)
      {
        goto LABEL_116;
      }

      v22 = BYTE3(v20) & 0xF;
      if (v22 >= 2)
      {
        LOBYTE(v23) = BYTE2(*v16);
        if (v22 - 6 < 2)
        {
          v24 = qword_22F88[(v20 >> 24) & 0xF];
          if (BYTE2(v20) == 240)
          {
            v25 = v20 & 0x7F00;
            if (v24 == 2)
            {
              v25 = 0;
            }

            v26 = v25 & 0xFFFFFFFFFF00FFFFLL | ((v24 - 2) << 16) | v80;
            goto LABEL_75;
          }

LABEL_32:
          v27 = v24 - 1;
          v28 = *(v18 + 2);
          if (*(v18 + 2) && !*v18)
          {
            v84 = 0;
            v83 = 0;
            v29 = v27 + v28;
            if (v29)
            {
              v30 = 0;
              v31 = 0;
              v32 = v20 >> 8;
              do
              {
                if (v28 <= v31)
                {
                  if (v29 - v30 == 2)
                  {
                    v33 = v23;
                  }

                  else
                  {
                    v33 = v32;
                  }
                }

                else
                {
                  v33 = v18[v30];
                }

                *(&v83 + v30) = v33;
                v30 = ++v31;
              }

              while (v29 > v31);
              v34 = BYTE1(v83) & 0x7F;
              v35 = (v83 & 0x7F) << 8;
              v36 = (BYTE2(v83) & 0x7F) << 56;
              v37 = (HIBYTE(v83) & 0x7F) << 48;
              v38 = (v84 & 0x7F) << 40;
            }

            else
            {
              v35 = 0;
              v38 = 0;
              v37 = 0;
              v36 = 0;
              v34 = 0;
            }

            v51 = (v29 << 16) & 0xCF0000;
            if (v29 <= 1)
            {
              v34 = 0;
            }

            if (v29 <= 2)
            {
              v36 = 0;
            }

            if (v29 <= 3)
            {
              v37 = 0;
            }

            if (v29 <= 4)
            {
              v52 = 0;
            }

            else
            {
              v52 = v38;
            }

            v53 = v51 | (v19 << 24) | 0x30300000u | v35 | v52 | v37 | v36 | v34;
            goto LABEL_91;
          }

          if (v27)
          {
            if (v27 == 1)
            {
LABEL_77:
              v50 = 3145728;
            }

            else
            {
              v23 = WORD1(v20);
              v50 = (v20 >> 8) & 0x7F | 0x300000;
            }

            v53 = v50 | v80 | (v27 << 16) & 0xCF0000 | ((v23 & 0x7F) << 8);
LABEL_91:
            *words = v53;
            bzero(v18, 4uLL);
            *(v18 + 2) = 0;
            goto LABEL_92;
          }

          LOBYTE(v23) = 0;
          goto LABEL_77;
        }

        if (v22 == 5)
        {
          if (BYTE2(v20) == 240 || BYTE2(v20) == 247)
          {
            if (BYTE2(v20) == 247)
            {
              v24 = qword_22F88[(v20 >> 24) & 0xF];
              goto LABEL_32;
            }

LABEL_44:
            if (qword_22F88[(v20 >> 24) & 0xF] == 1)
            {
              LOBYTE(v39) = 0;
LABEL_72:
              v49 = 0x100000;
            }

            else
            {
              if (qword_22F88[(v20 >> 24) & 0xF] == 2)
              {
                v39 = v20 >> 8;
                goto LABEL_72;
              }

              v39 = v20 >> 8;
              v49 = v20 & 0x7F | 0x100000;
            }

            v26 = v49 | v80 | ((qword_22F88[(v20 >> 24) & 0xF] - 1) << 16) & 0xEF0000 | ((v39 & 0x7F) << 8);
LABEL_75:
            *words = v26;
LABEL_92:
            v54 = MIDIEventListAdd(evtlist, 0x200uLL, v17, a2, 2uLL, words);
            if (!v54)
            {
              goto LABEL_116;
            }

            v17 = v54;
            bzero(v18, 4uLL);
            *(v18 + 2) = 0;
            goto LABEL_94;
          }
        }

        else if (BYTE2(v20) == 240)
        {
          goto LABEL_44;
        }

        if ((~v20 & 0xF000000) != 0 || (~v20 & 0xF80000) == 0 && (v20 & 0xFB0000) != 0xF90000)
        {
          v40 = (BYTE2(v20) + 15) < 8u && ((0xA7u >> (BYTE2(v20) + 15)) & 1) != 0 || BYTE2(v20) > 0xF9u && BYTE2(v20) != 253;
          v42 = 0;
          v43 = 1 << v22;
          if ((v43 & 0x7F00) != 0 || (v43 & 0xC) != 0)
          {
LABEL_66:
            v42 = (*v16 & 0x7F) << 24;
          }

          else if ((v43 & 0x8020) != 0)
          {
            if (v40)
            {
              goto LABEL_66;
            }

            v42 = 0;
          }

          v44 = v42;
          goto LABEL_68;
        }

        v55 = *(v18 + 2);
        *(v18 + 2) = v55 + 1;
        v18[v55] = v23;
        if (sub_1DF28(v18))
        {
          v56 = sub_1DEB0(v18);
          if (v56)
          {
            if (v56 == 4)
            {
              *words = (*v16 >> 4) & 0xF000000 | ((*v18 & 0x7F) << 8) | v18[1] & 0x7F | 0x30220000;
              v46 = v17;
              v47 = a2;
              v45 = 2;
            }

            else
            {
              v57 = *v18;
              v58 = (v57 + 15) < 8u && ((0xA7u >> (v57 + 15)) & 1) != 0 || v57 > 0xF9 && v57 != 253;
              v44 = 0;
              v60 = 1 << (v56 & 0xF);
              if ((v60 & 0x7F00) != 0 || (v60 & 0xC) != 0)
              {
                goto LABEL_114;
              }

              if ((v60 & 0x8020) == 0)
              {
                goto LABEL_68;
              }

              if (v58)
              {
LABEL_114:
                v44 = (v18[2] & 0x7F) << 24;
              }

              else
              {
                v44 = 0;
              }

LABEL_68:
              *words = v44;
              v82 = 0;
              v45 = byte_23008[v44 >> 28];
              v46 = v17;
              v47 = a2;
            }

            v48 = MIDIEventListAdd(evtlist, 0x200uLL, v46, v47, v45, words);
            if (!v48)
            {
              goto LABEL_116;
            }

            v17 = v48;
          }
        }
      }

LABEL_94:
      v16 += 4;
      if (v16 >= v10)
      {
        goto LABEL_116;
      }
    }
  }
}

uint64_t sub_1B468(uint64_t result, MIDITimeStamp a2, const UInt32 *a3, unint64_t a4, int a5, MIDIProtocolID a6)
{
  if (a6 <= kMIDIProtocol_2_0)
  {
    v21[10] = v6;
    v21[11] = v7;
    v8 = a4 >> 2;
    memset(v20, 0, sizeof(v20));
    if ((a4 >> 2))
    {
      v10 = a3;
      v12 = result;
      v13 = (a3 + a4);
      while (1)
      {
        if (!v10)
        {
          return result;
        }

        if (v13 <= v10)
        {
          return result;
        }

        result = sub_1DFA4(a6, a2, v10, v13 - v10, v20, v21);
        if (!result)
        {
          return result;
        }

        v14 = result;
        v15 = *v10 >> 28;
        v16 = HIBYTE(*v10) & 0xF;
        if (v15 == 15)
        {
          v16 = 255;
        }

        v17 = v15 ? v16 : 255;
        v18 = *(v12 + 12) - *(v12 + 189);
        v19 = v18 <= v17 ? v18 - 1 : v17;
        if (v17 != 255 && v19 != 255)
        {
          break;
        }

        if (*(v12 + 189))
        {
          goto LABEL_20;
        }

LABEL_21:
        if (&v10[v14] <= v13)
        {
          v10 += v14;
        }

        else
        {
          v10 = v13;
        }

        LODWORD(v8) = v8 - v14;
        if (!v8)
        {
          return result;
        }
      }

      result = MIDIReceivedEventList(*(*(v12 + 16) + 4 * v19), v20);
      if ((*(v12 + 189) & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_20:
      result = MIDIReceivedEventList(*(*(v12 + 24) - 4), v20);
      goto LABEL_21;
    }
  }

  return result;
}

_BYTE *sub_1B5D8(uint64_t a1, unsigned __int8 *a2, _BYTE *a3, uint64_t a4)
{
  if (*(a2 + 2))
  {
    v6 = *(*(a2 + 1) + 120);
  }

  else
  {
    v6 = 0;
  }

  v7 = &a3[a4 - 4];
  v8 = a3;
  while (*(a2 + 2))
  {
    v9 = a2;
    do
    {
      v9 = *(v9 + 1);
      if (v9 == a2)
      {
        return (v8 - a3);
      }
    }

    while (v6 != v9[120]);
    if (*(v9 + 4))
    {
      v10 = *(v9 + 4);
    }

    else
    {
      v10 = v9 + 40;
    }

    v11 = *(v9 + 14);
    v12 = *(v9 + 6);
    v13 = v12 - v11;
    if (v12 - v11 >= 1 && v8 <= v7)
    {
      v15 = &v10[v12];
      v16 = 16 * v9[108];
      v17 = &v10[v11];
      v33 = &v10[v12 - 1];
      v18 = v17;
      while (1)
      {
        v20 = *v18++;
        v19 = v20;
        v21 = v20 >> 4;
        if (v20 >> 4 > 0xF)
        {
          break;
        }

        if (((1 << v21) & 0x4F00) != 0)
        {
          *v8 = v16 | (v19 >> 4);
          v8[1] = v19;
LABEL_27:
          v8[2] = v17[1];
          v18 = v17 + 3;
          v8[3] = v17[2];
          goto LABEL_42;
        }

        if (((1 << v21) & 0x3000) != 0)
        {
          v23 = v16 | (v19 >> 4);
          goto LABEL_30;
        }

        if (v21 != 15)
        {
          break;
        }

        if (v19 <= 242)
        {
          switch(v19)
          {
            case 240:
              goto LABEL_20;
            case 241:
LABEL_58:
              LOBYTE(v23) = v16 | 2;
LABEL_30:
              *v8 = v23;
              v8[1] = v19;
              v18 = v17 + 2;
              v8[2] = v17[1];
LABEL_31:
              v8[3] = 0;
              goto LABEL_42;
            case 242:
              *v8 = v16 | 3;
              v8[1] = -14;
              goto LABEL_27;
          }
        }

        else
        {
          v26 = v19 + 13;
          if ((v19 - 243) <= 0xC)
          {
            if (((1 << v26) & 0x1BA0) != 0)
            {
              goto LABEL_40;
            }

            if (((1 << v26) & 0x18) != 0)
            {
              v27 = v16 | 5;
              goto LABEL_41;
            }

            if (v19 == 243)
            {
              goto LABEL_58;
            }
          }
        }

        if (v18 < v15)
        {
          v31 = v33 - v17;
          while ((*v18 & 0x80000000) == 0)
          {
            ++v18;
            if (!--v31)
            {
              v18 = v15;
              break;
            }
          }
        }

LABEL_43:
        if (v18 >= v15)
        {
          v28 = *(v9 + 4);
          if (v28)
          {
            free(v28);
          }

          v30 = *v9;
          v29 = *(v9 + 1);
          *(v30 + 8) = v29;
          *v29 = v30;
          --*(a2 + 2);
          operator delete(v9);
          if (!*(a2 + 2))
          {
            goto LABEL_17;
          }
        }

        else
        {
          *(v9 + 14) = v18 - v10;
        }

        v13 = v15 - v18;
        if (v15 - v18 >= 1)
        {
          v17 = v18;
          if (v8 <= v7)
          {
            continue;
          }
        }

        goto LABEL_17;
      }

LABEL_20:
      if (v13 > 2 || v13 != 1 && *v18 == 247)
      {
        v8[1] = v19;
        v22 = v17[1];
        v8[2] = v22;
        if (v22 == 247)
        {
          v18 = v17 + 2;
          *v8 = v16 | 6;
          goto LABEL_31;
        }

        v18 = v17 + 3;
        v24 = v17[2];
        v8[3] = v24;
        if (v24 == 247)
        {
          v25 = v16 | 7;
        }

        else
        {
          v25 = v16 | 4;
        }

        *v8 = v25;
LABEL_42:
        v8 += 4;
        goto LABEL_43;
      }

LABEL_40:
      v27 = v16 | 0xF;
LABEL_41:
      *v8 = v27;
      v8[1] = v19;
      *(v8 + 1) = 0;
      goto LABEL_42;
    }

LABEL_17:
    if (v8 > v7)
    {
      return (v8 - a3);
    }
  }

  return (v8 - a3);
}

_BYTE *sub_1B8E8(uint64_t a1, uint64_t *a2, _BYTE *a3, uint64_t a4, int a5)
{
  v5 = a5;
  v6 = a3;
  v7 = a2;
  v8 = *a2;
  if (*a2 == a2[1])
  {
    v9 = 0;
  }

  else
  {
    v9 = *(v8 + 292);
  }

  v79 = v9;
  v87 = &a3[a4];
  do
  {
    while (1)
    {
      if (v8 == v7[1])
      {
        return (v6 - a3);
      }

      if (*(v8 + 292) != v9)
      {
        break;
      }

      v10 = sub_128AC(v8);
      v11 = *(v8 + 288);
      v12 = *(sub_128AC(v8) + 8);
      v13 = *(v8 + 288);
      v14 = v12 - v13;
      if (v12 == v13)
      {
        break;
      }

      v15 = 0;
      v16 = v10 + 4 * v11 + 12;
      v17 = 4 * (v12 - v13);
      v18 = v16 + 4 * v14;
      v19 = v87;
      v83 = v12 - v13;
      v84 = v8;
      v81 = v17;
      v82 = v16;
      v80 = v18;
      while (1)
      {
        v20 = 4 * v15;
        v21 = (v16 + v20);
        if (v5)
        {
          break;
        }

        v28 = v17 - v20;
        if (((v17 - v20) & 0x3FFFFFFFCLL) == 0)
        {
          LODWORD(v29) = 0;
          goto LABEL_140;
        }

        LODWORD(v29) = 0;
        if (v6 && v6 < v19)
        {
          LODWORD(v30) = 0;
          v31 = 0;
          v32 = &v21[v28 & 0x3FFFFFFFCLL];
          v85 = (v16 + 4 * v15);
          v86 = v32;
          while (1)
          {
            if (((v32 - v21) >> 2) < 1)
            {
LABEL_138:
              v66 = v21 - v85;
              v21 = v85;
              v29 = v66 >> 2;
              goto LABEL_139;
            }

            v33 = *v21;
            v34 = *v21 >> 28;
            switch(v34)
            {
              case 1u:
                if (BYTE2(v33) - 241 <= 0xE)
                {
                  if (((1 << (BYTE2(v33) + 15)) & 0x6EA0) != 0)
                  {
                    v38 = (v33 >> 20) & 0xF0;
                    v31 = v38 | 5;
                    *v6 = v38 | 5;
                    v6[1] = *(v21 + 1);
                    LODWORD(v30) = 1;
LABEL_50:
                    v6[2] = 0;
                    goto LABEL_122;
                  }

                  if (((1 << (BYTE2(v33) + 15)) & 5) != 0)
                  {
                    LODWORD(v30) = 2;
LABEL_119:
                    v31 = v30 | (v33 >> 20) & 0xF0;
                    *v6 = v30 | (v33 >> 20) & 0xF0;
                    v6[1] = *(v21 + 1);
                    goto LABEL_120;
                  }

                  if (BYTE2(v33) == 242)
                  {
                    LODWORD(v30) = 3;
                    goto LABEL_119;
                  }
                }

                break;
              case 2u:
                v37 = (v33 >> 20) & 0xF;
                v31 = (v33 >> 20);
                if (v37 != 15)
                {
                  if (((1 << v37) & 0x3000) != 0)
                  {
                    LODWORD(v30) = 2;
                  }

                  if (((1 << v37) & 0x4F00) != 0)
                  {
                    LODWORD(v30) = 3;
                  }
                }

                break;
              case 3u:
                v35 = (v33 >> 20) & 0xF;
                v88 = 0;
                LODWORD(v30) = HIWORD(v33) & 0xF;
                if (v35 >= 2)
                {
                  v30 = v30;
                }

                else
                {
                  v30 = (v30 + 1);
                }

                if (v35)
                {
                  v36 = v35 == 3;
                }

                else
                {
                  v36 = 1;
                }

                if (v36)
                {
                  ++v30;
                }

                if (v30 > 8)
                {
                  LODWORD(v30) = 0;
                  goto LABEL_72;
                }

                if (v35 == 3 || (v39 = v30, !v35))
                {
                  *(&v87 + v30 + 7) = -9;
                  v39 = v30 - 1;
                }

                if (v35 > 1)
                {
                  v40 = &v88;
                }

                else
                {
                  LOBYTE(v88) = -16;
                  --v39;
                  v40 = &v88 + 1;
                }

                if (v39 >= 1)
                {
                  v41 = 0;
                  for (i = 0; i != v39; ++i)
                  {
                    if (i <= 5)
                    {
                      if (i >= 2)
                      {
                        v44 = 40;
                      }

                      else
                      {
                        v44 = 8;
                      }

                      v43 = *&v21[4 * (i > 1)] >> (v44 + v41);
                    }

                    else
                    {
                      LOBYTE(v43) = 0;
                    }

                    v40[i] = v43;
                    v41 -= 8;
                  }
                }

                if (v30)
                {
                  if (*(&v87 + v30 + 7) == 247)
                  {
                    if (v30 >= 4)
                    {
                      v45 = v30 / 3;
                      if ((-1431655765 * v30) > 0x55555555)
                      {
                        ++v45;
                      }
                    }

                    else
                    {
                      v45 = 1;
                    }
                  }

                  else if (v30 >= 3)
                  {
                    v45 = v30 / 3 + v30 % 3;
                  }

                  else
                  {
                    v45 = v30;
                  }
                }

                else
                {
LABEL_72:
                  v45 = 0;
                }

                if (v45 <= (v87 - v6) >> 2)
                {
                  v46 = 0;
                  while (v30 != 1)
                  {
                    if (!v30)
                    {
                      v63 = byte_23008[*v21 >> 28];
                      v32 = v86;
                      goto LABEL_126;
                    }

                    v47 = v35 != 1;
                    v48 = v30 - 3;
                    if (v30 != 3)
                    {
                      v47 = 1;
                    }

                    if (v30 <= 3 && v47)
                    {
LABEL_95:
                      if (v35 && v35 != 3)
                      {
                        v53 = *v21;
                        v52 = v6;
                        v48 = v30;
                        goto LABEL_107;
                      }

                      v52 = v6;
                      v48 = v30;
LABEL_98:
                      v55 = *v21 >> 28;
                      if (v55)
                      {
                        v56 = v55 == 15;
                      }

                      else
                      {
                        v56 = 1;
                      }

                      v57 = (*v21 >> 20) & 0xF0;
                      if (v56)
                      {
                        v57 = 240;
                      }

                      v58 = v48 | v57;
                      v31 = v58 | 4;
                      *v52 = v58 | 4;
                      v59 = v48;
                      memcpy(v52 + 1, &v88 + v46, v48);
                      LODWORD(v30) = 0;
                      v6 = &v52[v48 + 1];
                      if (v48 != 3)
                      {
                        v60 = 2 - v48;
                        bzero(v6, v60 + 1);
                        LODWORD(v30) = 0;
                        v6 = &v52[v59 + 2 + v60];
                      }
                    }

                    else
                    {
                      v49 = *v21 >> 28;
                      if (v49)
                      {
                        v50 = v49 == 15;
                      }

                      else
                      {
                        v50 = 1;
                      }

                      if (v50)
                      {
                        v31 = 244;
                      }

                      else
                      {
                        v31 = (*v21 >> 20) & 0xF0 | 4;
                      }

                      *v6 = v31;
                      v51 = &v88 + v46;
                      v6[1] = *v51;
                      v6[2] = v51[1];
                      v46 += 3;
                      v52 = v6 + 4;
                      v6[3] = v51[2];
                      LODWORD(v51) = v30 - 4;
                      v6 += 4;
                      LODWORD(v30) = v30 - 3;
                      if (v51 <= 2)
                      {
                        v53 = *v21;
                        if (*v21 >> 28 == 3)
                        {
                          v54 = (*v21 >> 20) & 0xF;
                        }

                        else
                        {
                          v54 = -1;
                        }

                        if (!v54 || v54 == 3)
                        {
                          goto LABEL_98;
                        }

LABEL_107:
                        if (v53 >> 28)
                        {
                          v61 = v53 >> 28 == 15;
                        }

                        else
                        {
                          v61 = 1;
                        }

                        if (v61)
                        {
                          v31 = 255;
                        }

                        else
                        {
                          v31 = (v53 >> 20) & 0xF0 | 0xF;
                        }

                        *v52 = v31;
                        v62 = *(&v88 + v46++);
                        v52[1] = v62;
                        *(v52 + 1) = 0;
                        v6 = v52 + 4;
                        LODWORD(v30) = v48 - 1;
                      }
                    }
                  }

                  v53 = *v21;
                  if ((*v21 & 0xF0F00000) != 0x30300000)
                  {
                    v48 = 1;
                    v52 = v6;
                    goto LABEL_107;
                  }

                  goto LABEL_95;
                }

                v68 = v21 - v85;
                v21 = v85;
                v29 = v68 >> 2;
LABEL_139:
                v5 = a5;
                v9 = v79;
                v7 = a2;
                v14 = v83;
                v8 = v84;
                v19 = v87;
                v17 = v81;
                v16 = v82;
                v18 = v80;
                goto LABEL_140;
            }

            if (!v31)
            {
              goto LABEL_125;
            }

            *v6 = v31;
            v6[1] = *(v21 + 1);
            if (v30 <= 1)
            {
              goto LABEL_50;
            }

LABEL_120:
            v6[2] = BYTE1(*v21);
            if (v30 > 2)
            {
              v6[3] = *v21;
              goto LABEL_124;
            }

            LODWORD(v30) = 2;
LABEL_122:
            v6[3] = 0;
LABEL_124:
            v6 += 4;
LABEL_125:
            v63 = byte_23008[*v21 >> 28];
LABEL_126:
            v21 += 4 * v63;
            if (v6 >= v87)
            {
              goto LABEL_138;
            }
          }
        }

LABEL_140:
        v67 = &v21[4 * v29];
        if (v67 >= v18)
        {
          goto LABEL_145;
        }

        v15 += v29;
        if (v19 - v6 < 4 * byte_23008[*v67 >> 28])
        {
          goto LABEL_9;
        }

LABEL_142:
        if (v15 >= v14)
        {
          goto LABEL_9;
        }
      }

      if (v19 <= v6)
      {
        LODWORD(v64) = 0;
      }

      else
      {
        v22 = (v17 - v20) >> 2;
        v23 = (v16 + 4 * v15);
        v24 = v6;
        while (v22 >= 1)
        {
          v25 = byte_23008[*v23 >> 28];
          if (v25 > (v19 - v24) >> 2)
          {
            break;
          }

          if (byte_23008[*v23 >> 28])
          {
            v26 = &v23[v25];
            do
            {
              v27 = *v23++;
              *v24 = v27;
              v24 += 4;
            }

            while (v23 < v26);
          }

          v22 = (v18 - v23) >> 2;
        }

        v64 = (v24 - v6) >> 2;
      }

      v65 = &v21[4 * v64];
      v6 += 4 * v64;
      if (v65 < v18)
      {
        v15 += v64;
        if (byte_23008[*v65 >> 28] > ((v19 - v6) >> 2))
        {
          goto LABEL_9;
        }

        goto LABEL_142;
      }

LABEL_145:
      sub_1E164(&v88, v8 + 296, v7[1], v8);
      v70 = v69;
      for (j = v7[1]; j != v70; sub_11E24(j))
      {
        j -= 296;
      }

      v7[1] = v70;
    }

    v15 = 0;
LABEL_9:
    v8 += 296;
  }

  while (!v15);
  v72 = *v7;
  v73 = v7[1];
  v74 = *v7;
  if (*v7 != v73)
  {
    while (*(v74 + 292) != v9)
    {
      v74 += 296;
      if (v74 == v73)
      {
        return (v6 - a3);
      }
    }
  }

  if (v73 != v74)
  {
    *(v74 + 288) += v15;
  }

  return (v6 - a3);
}

uint64_t sub_1C0A4(int a1, MIDIObjectRef obj)
{
  v6 = 0;
  str = 0;
  v5 = 0;
  if (obj)
  {
    MIDIObjectGetStringProperty(obj, kMIDIPropertyName, &str);
    if (str)
    {
      v3 = CFEqual(str, @"USB MIDI Device") != 0;
    }

    else
    {
      v3 = 0;
    }

    MIDIObjectGetStringProperty(obj, kMIDIPropertyModel, &v6);
    if (v6)
    {
      v3 |= CFEqual(v6, @"USB MIDI Device") != 0;
    }

    MIDIObjectGetStringProperty(obj, kMIDIPropertyManufacturer, &v5);
    if (v5)
    {
      v3 |= CFEqual(v5, @"Generic") != 0;
    }

    if (str)
    {
      CFRelease(str);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

BOOL sub_1C1B4(int a1, MIDIDeviceRef device)
{
  str = 0;
  NumberOfEntities = MIDIDeviceGetNumberOfEntities(device);
  if (NumberOfEntities)
  {
    v4 = NumberOfEntities;
    v5 = 0;
    v6 = 1;
    do
    {
      Entity = MIDIDeviceGetEntity(device, v5);
      if (Entity)
      {
        MIDIObjectGetStringProperty(Entity, kMIDIPropertyName, &str);
        if (str)
        {
          v8 = CFEqual(str, @"USB MIDI Device");
          v9 = str;
          if (v8)
          {
            goto LABEL_10;
          }

          if (str)
          {
            CFRelease(str);
            str = 0;
          }
        }
      }

      v6 = ++v5 < v4;
    }

    while (v4 != v5);
    v6 = 0;
    v9 = str;
LABEL_10:
    if (v9)
    {
      CFRelease(v9);
    }
  }

  else
  {
    return 0;
  }

  return v6;
}

uint64_t sub_1C290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C0A4(a1, a2);
  if ((v8 & 1) != 0 || (result = sub_1C1B4(v8, a2), result))
  {
    v10 = *(*a1 + 200);

    return v10(a1, a3, a4, a2);
  }

  return result;
}

void sub_1C328(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_DD0();
}

void sub_1C37C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  sub_DD0();
}

uint64_t sub_1C3D4(uint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = (a2 - 12);
  v9 = (a2 - 24);
  v10 = (a2 - 36);
  v11 = v7;
  while (1)
  {
    v7 = v11;
    v12 = a2 - v11;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v11) >> 2);
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        if (*(a2 - 10) < *(v11 + 2))
        {
          v220 = *(v11 + 8);
          v190 = *v11;
          v89 = *(a2 - 12);
          *(v11 + 8) = *(a2 - 4);
          *v11 = v89;
          *(a2 - 4) = v220;
          *(a2 - 12) = v190;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v95 = *(v11 + 14);
      v96 = *(v11 + 26);
      if (v95 >= *(v11 + 2))
      {
        if (v96 < v95)
        {
          v150 = *(v11 + 20);
          v151 = *(v11 + 12);
          *(v11 + 12) = *(v11 + 24);
          *(v11 + 20) = *(v11 + 32);
          *(v11 + 24) = v151;
          *(v11 + 32) = v150;
          if (*(v11 + 14) < *(v11 + 2))
          {
            v226 = *(v11 + 8);
            v196 = *v11;
            *v11 = *(v11 + 12);
            *(v11 + 8) = *(v11 + 20);
            *(v11 + 12) = v196;
            *(v11 + 20) = v226;
          }
        }
      }

      else
      {
        if (v96 < v95)
        {
          v222 = *(v11 + 8);
          v192 = *v11;
          *v11 = *(v11 + 24);
          *(v11 + 8) = *(v11 + 32);
          *(v11 + 24) = v192;
          v97 = v222;
          goto LABEL_190;
        }

        v229 = *(v11 + 8);
        v199 = *v11;
        *v11 = *(v11 + 12);
        *(v11 + 8) = *(v11 + 20);
        *(v11 + 12) = v199;
        *(v11 + 20) = v229;
        if (v96 < *(v11 + 14))
        {
          v97 = *(v11 + 20);
          v159 = *(v11 + 12);
          *(v11 + 12) = *(v11 + 24);
          *(v11 + 20) = *(v11 + 32);
          *(v11 + 24) = v159;
LABEL_190:
          *(v11 + 32) = v97;
        }
      }

      if (*(a2 - 10) >= *(v11 + 26))
      {
        return result;
      }

      v160 = *(v11 + 24);
      v161 = *(v11 + 32);
      v162 = *(a2 - 4);
      *(v11 + 24) = *v8;
      *(v11 + 32) = v162;
      *(a2 - 4) = v161;
      *v8 = v160;
      if (*(v11 + 26) >= *(v11 + 14))
      {
        return result;
      }

      v163 = *(v11 + 20);
      v164 = *(v11 + 12);
      *(v11 + 12) = *(v11 + 24);
      *(v11 + 20) = *(v11 + 32);
      *(v11 + 24) = v164;
      *(v11 + 32) = v163;
LABEL_194:
      if (*(v11 + 14) < *(v11 + 2))
      {
        v230 = *(v11 + 8);
        v200 = *v11;
        *v11 = *(v11 + 12);
        *(v11 + 8) = *(v11 + 20);
        *(v11 + 12) = v200;
        *(v11 + 20) = v230;
      }

      return result;
    }

    if (v13 == 5)
    {

      return sub_1D460(v11, (v11 + 12), (v11 + 24), (v11 + 36), (a2 - 12));
    }

LABEL_10:
    if (v12 <= 287)
    {
      v98 = (v11 + 12);
      v100 = v11 == a2 || v98 == a2;
      if (a4)
      {
        if (!v100)
        {
          v101 = 0;
          v102 = v11;
          do
          {
            v103 = v98;
            v104 = *(v102 + 14);
            if (v104 < *(v102 + 2))
            {
              v105 = *v103;
              v193 = *(v102 + 15);
              v223 = *(v102 + 23);
              v106 = v101;
              while (1)
              {
                v107 = v11 + v106;
                *(v107 + 12) = *(v11 + v106);
                *(v107 + 20) = *(v11 + v106 + 8);
                if (!v106)
                {
                  break;
                }

                v106 -= 12;
                if (v104 >= *(v107 - 10))
                {
                  v108 = v11 + v106 + 12;
                  goto LABEL_130;
                }
              }

              v108 = v11;
LABEL_130:
              *v108 = v105;
              *(v108 + 2) = v104;
              *(v108 + 11) = v223;
              *(v108 + 3) = v193;
            }

            v98 = v103 + 6;
            v101 += 12;
            v102 = v103;
          }

          while (v103 + 6 != a2);
        }
      }

      else if (!v100)
      {
        do
        {
          v152 = v98;
          v153 = *(v7 + 14);
          if (v153 < *(v7 + 2))
          {
            v154 = *v98;
            v197 = *(v7 + 15);
            v227 = *(v7 + 23);
            v155 = v152;
            do
            {
              v156 = v155;
              v157 = *(v155 - 6);
              v155 -= 6;
              *v156 = v157;
              *(v156 + 2) = *(v156 - 1);
            }

            while (v153 < *(v156 - 22));
            *v155 = v154;
            *(v155 + 2) = v153;
            *(v155 + 11) = v227;
            *(v155 + 3) = v197;
          }

          v98 = v152 + 6;
          v7 = v152;
        }

        while (v152 + 6 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v11 != a2)
      {
        v109 = (v13 - 2) >> 1;
        v110 = v109;
        do
        {
          v111 = v110;
          if (v109 >= v110)
          {
            v112 = (2 * v110) | 1;
            v113 = v11 + 12 * v112;
            if (2 * v111 + 2 < v13)
            {
              v114 = *(v113 + 2);
              v115 = *(v113 + 14);
              v116 = v114 >= v115;
              v117 = v114 >= v115 ? 0 : 12;
              v113 += v117;
              if (!v116)
              {
                v112 = 2 * v111 + 2;
              }
            }

            v118 = v11 + 12 * v111;
            v119 = *(v118 + 2);
            if (*(v113 + 2) >= v119)
            {
              v120 = *v118;
              v224 = *(v118 + 11);
              v194 = *(v118 + 3);
              do
              {
                v121 = v118;
                v118 = v113;
                v122 = *v113;
                *(v121 + 8) = *(v118 + 8);
                *v121 = v122;
                if (v109 < v112)
                {
                  break;
                }

                v123 = (2 * v112) | 1;
                v113 = v11 + 12 * v123;
                v124 = 2 * v112 + 2;
                if (v124 < v13)
                {
                  v125 = *(v113 + 2);
                  v126 = *(v113 + 14);
                  v127 = v125 >= v126;
                  v128 = v125 >= v126 ? 0 : 12;
                  v113 += v128;
                  if (!v127)
                  {
                    v123 = v124;
                  }
                }

                v112 = v123;
              }

              while (*(v113 + 2) >= v119);
              *v118 = v120;
              *(v118 + 2) = v119;
              *(v118 + 11) = v224;
              *(v118 + 3) = v194;
            }
          }

          v110 = v111 - 1;
        }

        while (v111);
        v129 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 2);
        do
        {
          v130 = 0;
          v225 = *(v11 + 8);
          v195 = *v11;
          v131 = v11;
          do
          {
            v132 = v131 + 12 * v130;
            v133 = v132 + 12;
            result = 2 * v130;
            v134 = (2 * v130) | 1;
            v130 = 2 * v130 + 2;
            if (v130 >= v129)
            {
              v130 = v134;
            }

            else
            {
              result = *(v132 + 14);
              v135 = *(v132 + 26);
              v136 = v132 + 24;
              if (result >= v135)
              {
                v130 = v134;
              }

              else
              {
                v133 = v136;
              }
            }

            v137 = *v133;
            *(v131 + 8) = *(v133 + 8);
            *v131 = v137;
            v131 = v133;
          }

          while (v130 <= ((v129 - 2) >> 1));
          a2 -= 12;
          if (v133 == a2)
          {
            *(v133 + 8) = v225;
            *v133 = v195;
          }

          else
          {
            v138 = *a2;
            *(v133 + 8) = *(a2 + 8);
            *v133 = v138;
            *(a2 + 8) = v225;
            *a2 = v195;
            v139 = v133 - v11 + 12;
            if (v139 >= 13)
            {
              v140 = (-2 - 0x5555555555555555 * (v139 >> 2)) >> 1;
              v141 = v11 + 12 * v140;
              v142 = *(v133 + 2);
              if (*(v141 + 2) < v142)
              {
                v143 = *v133;
                v167 = *(v133 + 3);
                v170 = *(v133 + 11);
                do
                {
                  v144 = v133;
                  v133 = v141;
                  v145 = *v141;
                  result = *(v133 + 8);
                  *(v144 + 8) = result;
                  *v144 = v145;
                  if (!v140)
                  {
                    break;
                  }

                  v140 = (v140 - 1) >> 1;
                  v141 = v11 + 12 * v140;
                }

                while (*(v141 + 2) < v142);
                *v133 = v143;
                *(v133 + 2) = v142;
                *(v133 + 11) = v170;
                *(v133 + 3) = v167;
              }
            }
          }
        }

        while (v129-- > 2);
      }

      return result;
    }

    v14 = v13 >> 1;
    v15 = v11 + 12 * (v13 >> 1);
    v16 = *(a2 - 10);
    if (v12 >= 0x601)
    {
      v17 = *(v15 + 2);
      if (v17 >= *(v11 + 2))
      {
        if (v16 < v17)
        {
          v203 = *(v15 + 8);
          v173 = *v15;
          v21 = *v8;
          *(v15 + 8) = *(a2 - 4);
          *v15 = v21;
          *(a2 - 4) = v203;
          *v8 = v173;
          if (*(v15 + 2) < *(v11 + 2))
          {
            v204 = *(v11 + 8);
            v174 = *v11;
            v22 = *v15;
            *(v11 + 8) = *(v15 + 8);
            *v11 = v22;
            *(v15 + 8) = v204;
            *v15 = v174;
          }
        }
      }

      else
      {
        if (v16 < v17)
        {
          v201 = *(v11 + 8);
          v171 = *v11;
          v18 = *v8;
          *(v11 + 8) = *(a2 - 4);
          *v11 = v18;
          goto LABEL_27;
        }

        v207 = *(v11 + 8);
        v177 = *v11;
        v25 = *v15;
        *(v11 + 8) = *(v15 + 8);
        *v11 = v25;
        *(v15 + 8) = v207;
        *v15 = v177;
        if (*(a2 - 10) < *(v15 + 2))
        {
          v201 = *(v15 + 8);
          v171 = *v15;
          v26 = *v8;
          *(v15 + 8) = *(a2 - 4);
          *v15 = v26;
LABEL_27:
          *(a2 - 4) = v201;
          *v8 = v171;
        }
      }

      v27 = v11 + 12 * v14;
      v28 = v27 - 12;
      v29 = *(v27 - 10);
      v30 = *(a2 - 22);
      if (v29 >= *(v11 + 14))
      {
        if (v30 < v29)
        {
          v208 = *(v28 + 8);
          v178 = *v28;
          v34 = *v9;
          *(v28 + 8) = *(a2 - 16);
          *v28 = v34;
          *(a2 - 16) = v208;
          *v9 = v178;
          if (*(v28 + 2) < *(v11 + 14))
          {
            v35 = *(v11 + 12);
            v36 = *(v11 + 20);
            v37 = *(v28 + 8);
            *(v11 + 12) = *v28;
            *(v11 + 20) = v37;
            *(v28 + 8) = v36;
            *v28 = v35;
          }
        }
      }

      else
      {
        if (v30 < v29)
        {
          v31 = *(v11 + 12);
          v32 = *(v11 + 20);
          v33 = *(a2 - 16);
          *(v11 + 12) = *v9;
          *(v11 + 20) = v33;
          goto LABEL_39;
        }

        v40 = *(v11 + 12);
        v41 = *(v11 + 20);
        v42 = *(v28 + 8);
        *(v11 + 12) = *v28;
        *(v11 + 20) = v42;
        *(v28 + 8) = v41;
        *v28 = v40;
        if (*(a2 - 22) < *(v28 + 2))
        {
          v210 = *(v28 + 8);
          v180 = *v28;
          v43 = *v9;
          *(v28 + 8) = *(a2 - 16);
          *v28 = v43;
          v31 = v180;
          v32 = v210;
LABEL_39:
          *(a2 - 16) = v32;
          *v9 = v31;
        }
      }

      v44 = v11 + 12 * v14;
      v45 = *(v44 + 14);
      v46 = *(a2 - 34);
      if (v45 >= *(v11 + 26))
      {
        if (v46 < v45)
        {
          v211 = *(v44 + 20);
          v181 = *(v44 + 12);
          v50 = *v10;
          *(v44 + 20) = *(a2 - 28);
          *(v44 + 12) = v50;
          *(a2 - 28) = v211;
          *v10 = v181;
          if (*(v44 + 14) < *(v11 + 26))
          {
            v51 = *(v11 + 24);
            v52 = *(v11 + 32);
            v53 = *(v44 + 20);
            *(v11 + 24) = *(v44 + 12);
            *(v11 + 32) = v53;
            *(v44 + 20) = v52;
            *(v44 + 12) = v51;
          }
        }
      }

      else
      {
        if (v46 < v45)
        {
          v47 = *(v11 + 24);
          v48 = *(v11 + 32);
          v49 = *(a2 - 28);
          *(v11 + 24) = *v10;
          *(v11 + 32) = v49;
          goto LABEL_48;
        }

        v54 = *(v11 + 24);
        v55 = *(v11 + 32);
        v56 = *(v44 + 20);
        *(v11 + 24) = *(v44 + 12);
        *(v11 + 32) = v56;
        *(v44 + 20) = v55;
        *(v44 + 12) = v54;
        if (*(a2 - 34) < *(v44 + 14))
        {
          v212 = *(v44 + 20);
          v182 = *(v44 + 12);
          v57 = *v10;
          *(v44 + 20) = *(a2 - 28);
          *(v44 + 12) = v57;
          v47 = v182;
          v48 = v212;
LABEL_48:
          *(a2 - 28) = v48;
          *v10 = v47;
        }
      }

      v58 = *(v15 + 2);
      v59 = *(v44 + 14);
      if (v58 >= *(v28 + 2))
      {
        if (v59 < v58)
        {
          v214 = *(v15 + 8);
          v184 = *v15;
          *v15 = *(v44 + 12);
          *(v15 + 8) = *(v44 + 20);
          *(v44 + 20) = v214;
          *(v44 + 12) = v184;
          if (*(v15 + 2) < *(v28 + 2))
          {
            v215 = *(v28 + 8);
            v185 = *v28;
            *v28 = *v15;
            *(v28 + 8) = *(v15 + 8);
            *(v15 + 8) = v215;
            *v15 = v185;
          }
        }
      }

      else
      {
        if (v59 < v58)
        {
          v213 = *(v28 + 8);
          v183 = *v28;
          *v28 = *(v44 + 12);
          *(v28 + 8) = *(v44 + 20);
          goto LABEL_57;
        }

        v216 = *(v28 + 8);
        v186 = *v28;
        *v28 = *v15;
        *(v28 + 8) = *(v15 + 8);
        *(v15 + 8) = v216;
        *v15 = v186;
        if (*(v44 + 14) < *(v15 + 2))
        {
          v213 = *(v15 + 8);
          v183 = *v15;
          *v15 = *(v44 + 12);
          *(v15 + 8) = *(v44 + 20);
LABEL_57:
          *(v44 + 20) = v213;
          *(v44 + 12) = v183;
        }
      }

      v217 = *(v11 + 8);
      v187 = *v11;
      v60 = *v15;
      *(v11 + 8) = *(v15 + 8);
      *v11 = v60;
      *(v15 + 8) = v217;
      *v15 = v187;
      goto LABEL_59;
    }

    v19 = *(v11 + 2);
    if (v19 >= *(v15 + 2))
    {
      if (v16 < v19)
      {
        v205 = *(v11 + 8);
        v175 = *v11;
        v23 = *v8;
        *(v11 + 8) = *(a2 - 4);
        *v11 = v23;
        *(a2 - 4) = v205;
        *v8 = v175;
        if (*(v11 + 2) < *(v15 + 2))
        {
          v206 = *(v15 + 8);
          v176 = *v15;
          v24 = *v11;
          *(v15 + 8) = *(v11 + 8);
          *v15 = v24;
          *(v11 + 8) = v206;
          *v11 = v176;
        }
      }

      goto LABEL_59;
    }

    if (v16 < v19)
    {
      v202 = *(v15 + 8);
      v172 = *v15;
      v20 = *v8;
      *(v15 + 8) = *(a2 - 4);
      *v15 = v20;
LABEL_36:
      *(a2 - 4) = v202;
      *v8 = v172;
      goto LABEL_59;
    }

    v209 = *(v15 + 8);
    v179 = *v15;
    v38 = *v11;
    *(v15 + 8) = *(v11 + 8);
    *v15 = v38;
    *(v11 + 8) = v209;
    *v11 = v179;
    if (*(a2 - 10) < *(v11 + 2))
    {
      v202 = *(v11 + 8);
      v172 = *v11;
      v39 = *v8;
      *(v11 + 8) = *(a2 - 4);
      *v11 = v39;
      goto LABEL_36;
    }

LABEL_59:
    --a3;
    if (a4)
    {
      v61 = *(v11 + 2);
LABEL_62:
      v62 = 0;
      v63 = *v11;
      v165 = *(v11 + 3);
      v168 = *(v11 + 11);
      do
      {
        v64 = *(v11 + v62 + 14);
        v62 += 12;
      }

      while (v64 < v61);
      v65 = v11 + v62;
      v66 = a2;
      if (v62 == 12)
      {
        v69 = a2;
        while (v65 < v69)
        {
          v67 = v69 - 12;
          v70 = *(v69 - 10);
          v69 -= 12;
          if (v70 < v61)
          {
            goto LABEL_72;
          }
        }

        v67 = v69;
      }

      else
      {
        do
        {
          v67 = v66 - 12;
          v68 = *(v66 - 10);
          v66 -= 12;
        }

        while (v68 >= v61);
      }

LABEL_72:
      v11 = v65;
      if (v65 < v67)
      {
        v71 = v67;
        do
        {
          v218 = *(v11 + 8);
          v188 = *v11;
          v72 = *v71;
          *(v11 + 8) = *(v71 + 8);
          *v11 = v72;
          *(v71 + 8) = v218;
          *v71 = v188;
          do
          {
            v73 = *(v11 + 14);
            v11 += 12;
          }

          while (v73 < v61);
          do
          {
            v74 = *(v71 - 10);
            v71 -= 12;
          }

          while (v74 >= v61);
        }

        while (v11 < v71);
      }

      if (v11 - 12 != v7)
      {
        v75 = *(v11 - 12);
        *(v7 + 8) = *(v11 - 4);
        *v7 = v75;
      }

      *(v11 - 12) = v63;
      *(v11 - 10) = v61;
      *(v11 - 1) = v168;
      *(v11 - 9) = v165;
      if (v65 < v67)
      {
        goto LABEL_83;
      }

      v76 = sub_1D6A0(v7, v11 - 12);
      result = sub_1D6A0(v11, a2);
      if (result)
      {
        a2 = v11 - 12;
        if (!v76)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v76)
      {
LABEL_83:
        result = sub_1C3D4(v7, v11 - 12, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v61 = *(v11 + 2);
      if (*(v11 - 10) < v61)
      {
        goto LABEL_62;
      }

      v77 = *v11;
      v166 = *(v11 + 3);
      v169 = *(v11 + 11);
      if (v61 >= *(a2 - 10))
      {
        v80 = v11 + 12;
        do
        {
          v11 = v80;
          if (v80 >= a2)
          {
            break;
          }

          v81 = *(v80 + 2);
          v80 += 12;
        }

        while (v61 >= v81);
      }

      else
      {
        v78 = v11;
        do
        {
          v11 = v78 + 12;
          v79 = *(v78 + 14);
          v78 += 12;
        }

        while (v61 >= v79);
      }

      v82 = a2;
      if (v11 < a2)
      {
        v83 = a2;
        do
        {
          v82 = v83 - 12;
          v84 = *(v83 - 10);
          v83 -= 12;
        }

        while (v61 < v84);
      }

      while (v11 < v82)
      {
        v219 = *(v11 + 8);
        v189 = *v11;
        v85 = *v82;
        *(v11 + 8) = *(v82 + 8);
        *v11 = v85;
        *(v82 + 8) = v219;
        *v82 = v189;
        do
        {
          v86 = *(v11 + 14);
          v11 += 12;
        }

        while (v61 >= v86);
        do
        {
          v87 = *(v82 - 10);
          v82 -= 12;
        }

        while (v61 < v87);
      }

      if (v11 - 12 != v7)
      {
        v88 = *(v11 - 12);
        *(v7 + 8) = *(v11 - 4);
        *v7 = v88;
      }

      a4 = 0;
      *(v11 - 12) = v77;
      *(v11 - 10) = v61;
      *(v11 - 1) = v169;
      *(v11 - 9) = v166;
    }
  }

  v90 = *(v11 + 14);
  v91 = *(a2 - 10);
  if (v90 >= *(v11 + 2))
  {
    if (v91 >= v90)
    {
      return result;
    }

    v147 = *(v11 + 12);
    v148 = *(v11 + 20);
    v149 = *(a2 - 4);
    *(v11 + 12) = *v8;
    *(v11 + 20) = v149;
    *(a2 - 4) = v148;
    *v8 = v147;
    goto LABEL_194;
  }

  if (v91 >= v90)
  {
    v228 = *(v11 + 8);
    v198 = *v11;
    *v11 = *(v11 + 12);
    *(v11 + 8) = *(v11 + 20);
    *(v11 + 12) = v198;
    *(v11 + 20) = v228;
    if (*(a2 - 10) >= *(v11 + 14))
    {
      return result;
    }

    v93 = *(v11 + 12);
    v94 = *(v11 + 20);
    v158 = *(a2 - 4);
    *(v11 + 12) = *v8;
    *(v11 + 20) = v158;
  }

  else
  {
    v221 = *(v11 + 8);
    v191 = *v11;
    v92 = *v8;
    *(v11 + 8) = *(a2 - 4);
    *v11 = v92;
    v93 = v191;
    v94 = v221;
  }

  *(a2 - 4) = v94;
  *v8 = v93;
  return result;
}

uint64_t *sub_1D460(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a2 + 2);
  v6 = *(a3 + 2);
  if (v5 >= *(result + 2))
  {
    if (v6 < v5)
    {
      v10 = *(a2 + 2);
      v11 = *a2;
      v12 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v12;
      *a3 = v11;
      *(a3 + 2) = v10;
      if (*(a2 + 2) < *(result + 2))
      {
        v13 = *(result + 2);
        v14 = *result;
        v15 = *(a2 + 2);
        *result = *a2;
        *(result + 2) = v15;
        *a2 = v14;
        *(a2 + 2) = v13;
      }
    }
  }

  else
  {
    if (v6 < v5)
    {
      v7 = *(result + 2);
      v8 = *result;
      v9 = *(a3 + 2);
      *result = *a3;
      *(result + 2) = v9;
LABEL_9:
      *a3 = v8;
      *(a3 + 2) = v7;
      goto LABEL_10;
    }

    v16 = *(result + 2);
    v17 = *result;
    v18 = *(a2 + 2);
    *result = *a2;
    *(result + 2) = v18;
    *a2 = v17;
    *(a2 + 2) = v16;
    if (*(a3 + 2) < BYTE2(v17))
    {
      v7 = *(a2 + 2);
      v8 = *a2;
      v19 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v19;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*(a4 + 2) < *(a3 + 2))
  {
    v20 = *(a3 + 2);
    v21 = *a3;
    v22 = *(a4 + 2);
    *a3 = *a4;
    *(a3 + 2) = v22;
    *a4 = v21;
    *(a4 + 2) = v20;
    if (*(a3 + 2) < *(a2 + 2))
    {
      v23 = *(a2 + 2);
      v24 = *a2;
      v25 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v25;
      *a3 = v24;
      *(a3 + 2) = v23;
      if (*(a2 + 2) < *(result + 2))
      {
        v26 = *(result + 2);
        v27 = *result;
        v28 = *(a2 + 2);
        *result = *a2;
        *(result + 2) = v28;
        *a2 = v27;
        *(a2 + 2) = v26;
      }
    }
  }

  if (*(a5 + 2) < *(a4 + 2))
  {
    v29 = *(a4 + 2);
    v30 = *a4;
    v31 = *(a5 + 2);
    *a4 = *a5;
    *(a4 + 2) = v31;
    *a5 = v30;
    *(a5 + 2) = v29;
    if (*(a4 + 2) < *(a3 + 2))
    {
      v32 = *(a3 + 2);
      v33 = *a3;
      v34 = *(a4 + 2);
      *a3 = *a4;
      *(a3 + 2) = v34;
      *a4 = v33;
      *(a4 + 2) = v32;
      if (*(a3 + 2) < *(a2 + 2))
      {
        v35 = *(a2 + 2);
        v36 = *a2;
        v37 = *(a3 + 2);
        *a2 = *a3;
        *(a2 + 2) = v37;
        *a3 = v36;
        *(a3 + 2) = v35;
        if (*(a2 + 2) < *(result + 2))
        {
          v38 = *(result + 2);
          v39 = *result;
          v40 = *(a2 + 2);
          *result = *a2;
          *(result + 2) = v40;
          *a2 = v39;
          *(a2 + 2) = v38;
        }
      }
    }
  }

  return result;
}

BOOL sub_1D6A0(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 2);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = (a2 - 12);
      v7 = *(a1 + 14);
      v8 = *(a2 - 10);
      if (v7 < *(a1 + 2))
      {
        if (v8 >= v7)
        {
          v34 = *(a1 + 8);
          v35 = *a1;
          *a1 = *(a1 + 12);
          *(a1 + 8) = *(a1 + 20);
          *(a1 + 12) = v35;
          *(a1 + 20) = v34;
          if (*(a2 - 10) >= *(a1 + 14))
          {
            return 1;
          }

          v9 = *(a1 + 20);
          v10 = *(a1 + 12);
          v36 = *(a2 - 4);
          *(a1 + 12) = *v6;
          *(a1 + 20) = v36;
        }

        else
        {
          v9 = *(a1 + 8);
          v10 = *a1;
          v11 = *(a2 - 4);
          *a1 = *v6;
          *(a1 + 8) = v11;
        }

        *v6 = v10;
        *(a2 - 4) = v9;
        return 1;
      }

      if (v8 >= v7)
      {
        return 1;
      }

      v23 = *(a1 + 20);
      v24 = *(a1 + 12);
      v25 = *(a2 - 4);
      *(a1 + 12) = *v6;
      *(a1 + 20) = v25;
      *v6 = v24;
      *(a2 - 4) = v23;
LABEL_50:
      if (*(a1 + 14) < *(a1 + 2))
      {
        v55 = *(a1 + 8);
        v56 = *a1;
        *a1 = *(a1 + 12);
        *(a1 + 8) = *(a1 + 20);
        *(a1 + 12) = v56;
        *(a1 + 20) = v55;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      sub_1D460(a1, (a1 + 12), (a1 + 24), (a1 + 36), (a2 - 12));
      return 1;
    }

    v18 = *(a1 + 14);
    v19 = *(a1 + 2);
    v20 = *(a1 + 26);
    if (v18 >= v19)
    {
      if (v20 < v18)
      {
        v30 = *(a1 + 20);
        v31 = *(a1 + 12);
        *(a1 + 12) = *(a1 + 24);
        *(a1 + 20) = *(a1 + 32);
        *(a1 + 24) = v31;
        *(a1 + 32) = v30;
        if (*(a1 + 14) < v19)
        {
          v32 = *(a1 + 8);
          v33 = *a1;
          *a1 = *(a1 + 12);
          *(a1 + 8) = *(a1 + 20);
          *(a1 + 12) = v33;
          *(a1 + 20) = v32;
        }
      }

      goto LABEL_47;
    }

    if (v20 >= v18)
    {
      v47 = *(a1 + 8);
      v48 = *a1;
      *a1 = *(a1 + 12);
      *(a1 + 8) = *(a1 + 20);
      *(a1 + 12) = v48;
      *(a1 + 20) = v47;
      if (v20 >= *(a1 + 14))
      {
        goto LABEL_47;
      }

      v21 = *(a1 + 20);
      v22 = *(a1 + 12);
      *(a1 + 12) = *(a1 + 24);
      *(a1 + 20) = *(a1 + 32);
    }

    else
    {
      v21 = *(a1 + 8);
      v22 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 8) = *(a1 + 32);
    }

    *(a1 + 24) = v22;
    *(a1 + 32) = v21;
LABEL_47:
    if (*(a2 - 10) >= *(a1 + 26))
    {
      return 1;
    }

    v49 = a2 - 12;
    v50 = *(a1 + 32);
    v51 = *(a1 + 24);
    v52 = *(a2 - 4);
    *(a1 + 24) = *(a2 - 12);
    *(a1 + 32) = v52;
    *v49 = v51;
    *(v49 + 8) = v50;
    if (*(a1 + 26) >= *(a1 + 14))
    {
      return 1;
    }

    v53 = *(a1 + 20);
    v54 = *(a1 + 12);
    *(a1 + 12) = *(a1 + 24);
    *(a1 + 20) = *(a1 + 32);
    *(a1 + 24) = v54;
    *(a1 + 32) = v53;
    goto LABEL_50;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (*(a2 - 10) < *(a1 + 2))
    {
      v3 = *(a1 + 8);
      v4 = *a1;
      v5 = *(a2 - 4);
      *a1 = *(a2 - 12);
      *(a1 + 8) = v5;
      *(a2 - 12) = v4;
      *(a2 - 4) = v3;
    }

    return 1;
  }

LABEL_13:
  v12 = a1 + 24;
  v13 = *(a1 + 14);
  v14 = *(a1 + 2);
  v15 = *(a1 + 26);
  if (v13 >= v14)
  {
    if (v15 < v13)
    {
      v26 = *(a1 + 20);
      v27 = *(a1 + 12);
      *(a1 + 12) = *v12;
      *(a1 + 20) = *(a1 + 32);
      *v12 = v27;
      *(a1 + 32) = v26;
      if (*(a1 + 14) < v14)
      {
        v28 = *(a1 + 8);
        v29 = *a1;
        *a1 = *(a1 + 12);
        *(a1 + 8) = *(a1 + 20);
        *(a1 + 12) = v29;
        *(a1 + 20) = v28;
      }
    }
  }

  else
  {
    if (v15 >= v13)
    {
      v37 = *(a1 + 8);
      v38 = *a1;
      *a1 = *(a1 + 12);
      *(a1 + 8) = *(a1 + 20);
      *(a1 + 12) = v38;
      *(a1 + 20) = v37;
      if (v15 >= *(a1 + 14))
      {
        goto LABEL_33;
      }

      v16 = *(a1 + 20);
      v17 = *(a1 + 12);
      *(a1 + 12) = *v12;
      *(a1 + 20) = *(a1 + 32);
    }

    else
    {
      v16 = *(a1 + 8);
      v17 = *a1;
      *a1 = *v12;
      *(a1 + 8) = *(a1 + 32);
    }

    *v12 = v17;
    *(a1 + 32) = v16;
  }

LABEL_33:
  v39 = a1 + 36;
  if (a1 + 36 == a2)
  {
    return 1;
  }

  v40 = 0;
  v41 = 0;
  while (1)
  {
    v42 = *(v39 + 2);
    if (v42 < *(v12 + 2))
    {
      v43 = *v39;
      v58 = *(v39 + 3);
      v59 = *(v39 + 11);
      v44 = v40;
      while (1)
      {
        v45 = a1 + v44;
        *(v45 + 36) = *(a1 + v44 + 24);
        *(v45 + 44) = *(a1 + v44 + 32);
        if (v44 == -24)
        {
          break;
        }

        v44 -= 12;
        if (v42 >= *(v45 + 14))
        {
          v46 = a1 + v44 + 36;
          goto LABEL_41;
        }
      }

      v46 = a1;
LABEL_41:
      *v46 = v43;
      *(v46 + 2) = v42;
      *(v46 + 3) = v58;
      *(v46 + 11) = v59;
      if (++v41 == 8)
      {
        return v39 + 12 == a2;
      }
    }

    v12 = v39;
    v40 += 12;
    v39 += 12;
    if (v39 == a2)
    {
      return 1;
    }
  }
}