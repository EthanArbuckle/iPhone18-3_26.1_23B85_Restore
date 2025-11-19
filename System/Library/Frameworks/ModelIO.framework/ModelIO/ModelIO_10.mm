uint64_t sub_239F32808(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    sub_239EB5CFC();
  }

  return *a1;
}

void sub_239F32888(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(a1 + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_239F75050();
    }
  }
}

uint64_t sub_239F3292C(uint64_t result)
{
  if (result)
  {
    sub_239E56C80(result);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

void sub_239F32988(unint64_t *a1, unint64_t a2, uint64_t **a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = a1[4];
            if (*(v9 - 8) < a2)
            {
              v10 = sub_239F32B50(a1, a2);
              v7 = v10;
              if (v3)
              {
                for (i = 0; i != v3; ++i)
                {
                  v10[i] = *(v9 + i * 8);
                }
              }
            }

            v12 = *a3;
            v13 = v3;
            do
            {
              v7[v13++] = *v12;
            }

            while (a2 != v13);
          }

          v14 = v7;
          goto LABEL_31;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v19 = a2;
      }

      else
      {
        v19 = *a1;
      }

      v20 = sub_239F32B50(a1, a2);
      v14 = v20;
      if (v3)
      {
        v21 = 8 * v19;
        v22 = v20;
        do
        {
          v23 = *v7++;
          *v22++ = v23;
          v21 -= 8;
        }

        while (v21);
      }

      if (v3 < a2)
      {
        v24 = *a3;
        v25 = v3;
        do
        {
          v20[v25++] = *v24;
        }

        while (a2 != v25);
      }

      goto LABEL_31;
    }

    v15 = 8 * a2;
    if (8 * a2 / a2 == 8)
    {
      v16 = sub_239F32B50(a1, a2);
      v14 = v16;
      v17 = 0;
      v18 = *a3;
      do
      {
        v16[v17 / 8] = *v18;
        v17 += 8;
      }

      while (v15 != v17);
LABEL_31:
      if (v14 != a1[4])
      {
        sub_239E56C80(a1);
        a1[4] = v14;
      }

      *a1 = a2;
      return;
    }
  }

  sub_239E5B364(a1);
}

void *sub_239F32B50(uint64_t a1, unint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_239E56D84(v6);
  if (a2 > 0xFFFFFFFFFFFFFFDLL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 8 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6[0])
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

uint64_t *sub_239F32BE8(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_239F32C08(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_239F32DF0(result);
}

unint64_t sub_239F32C20(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = **a1;
    do
    {
      --v3;
      v4 = v2 + 4;
      v8 = v2[3];
      v9[0] = 0;
      v9[1] = 0;
      sub_239F32E68(v9, &v8, v2);
      v5 = bswap64(0x9E3779B97F4A7C55 * v9[0]);
      v1 = v5 + ((v5 + v1 + (v5 + v1) * (v5 + v1)) >> 1);
      v2 = v4;
    }

    while (v3);
    v6 = 0x9E3779B97F4A7C55 * v1;
  }

  else
  {
    v6 = 0;
  }

  return bswap64(v6);
}

uint64_t sub_239F32CE4(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void sub_239F32DD8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_284D15EB0;
  sub_239EB5D90();
}

uint64_t *sub_239F32DF0(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    sub_239E56C80(v1);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

uint64_t sub_239F32E68(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v4 = *a2;
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  v7[0] = 0;
  v7[1] = 0;
  result = sub_239F31FF4(v7, a3, a3 + 1, a3 + 2);
  v6 = bswap64(0x9E3779B97F4A7C55 * v7[0]);
  if (*(a1 + 8))
  {
    v6 += (*a1 + v6 + (*a1 + v6) * (*a1 + v6)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v6;
  return result;
}

BOOL sub_239F32F1C(uint64_t *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && sub_239EB5C18(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_239EB5C18(a1, a2);
  if (!result)
  {
    return result;
  }

  v5 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v6 = a1[4];
  v7 = *(a2 + 32);
  v8 = 8 * v5;
  v9 = MEMORY[0x277D86658];
  while (*(v9 + 4 * v6[3]) == *(v9 + 4 * v7[3]))
  {
    result = sub_239F32120(v6, v7);
    if (!result)
    {
      return result;
    }

    v6 += 4;
    v7 += 4;
    v8 -= 8;
    if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_239F32FE8(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    sub_239EB5CFC();
  }

  return *a1;
}

void sub_239F33068(unint64_t *a1, unint64_t a2, _OWORD **a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = a1[4];
            if (*(v9 - 8) < a2)
            {
              v10 = sub_239F33230(a1, a2);
              v7 = v10;
              if (v3)
              {
                v11 = 0;
                do
                {
                  *&v10[v11] = *(v9 + v11 * 8);
                  v11 += 2;
                }

                while (2 * v3 != v11);
              }
            }

            v12 = *a3;
            v13 = 2 * v3;
            do
            {
              *&v7[v13] = *v12;
              v13 += 2;
            }

            while (2 * a2 != v13);
          }

          v14 = v7;
          goto LABEL_31;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v19 = a2;
      }

      else
      {
        v19 = *a1;
      }

      v20 = sub_239F33230(a1, a2);
      v14 = v20;
      if (v3)
      {
        v21 = 16 * v19;
        v22 = v20;
        do
        {
          v23 = *v7;
          v7 += 2;
          *v22 = v23;
          v22 += 2;
          v21 -= 16;
        }

        while (v21);
      }

      if (v3 < a2)
      {
        v24 = *a3;
        v25 = 2 * v3;
        do
        {
          *&v20[v25] = *v24;
          v25 += 2;
        }

        while (2 * a2 != v25);
      }

      goto LABEL_31;
    }

    v15 = 16 * a2;
    if (16 * a2 / a2 == 16)
    {
      v16 = sub_239F33230(a1, a2);
      v14 = v16;
      v17 = 0;
      v18 = *a3;
      do
      {
        *&v16[v17 / 8] = *v18;
        v17 += 16;
      }

      while (v15 != v17);
LABEL_31:
      if (v14 != a1[4])
      {
        sub_239E56C80(a1);
        a1[4] = v14;
      }

      *a1 = a2;
      return;
    }
  }

  sub_239E5B364(a1);
}

void *sub_239F33230(uint64_t a1, unint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_239E56D84(v6);
  if (a2 > 0x7FFFFFFFFFFFFFELL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 16 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6[0])
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

uint64_t *sub_239F332C4(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_239F332E4(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_239F334CC(result);
}

unint64_t sub_239F332FC(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = **a1;
    do
    {
      --v3;
      v4 = v2 + 4;
      v8 = v2[3];
      v9[0] = 0;
      v9[1] = 0;
      sub_239F33544(v9, &v8, v2);
      v5 = bswap64(0x9E3779B97F4A7C55 * v9[0]);
      v1 = v5 + ((v5 + v1 + (v5 + v1) * (v5 + v1)) >> 1);
      v2 = v4;
    }

    while (v3);
    v6 = 0x9E3779B97F4A7C55 * v1;
  }

  else
  {
    v6 = 0;
  }

  return bswap64(v6);
}

uint64_t sub_239F333C0(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void sub_239F334B4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_284D15F68;
  sub_239EB5D90();
}

uint64_t *sub_239F334CC(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    sub_239E56C80(v1);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

uint64_t sub_239F33544(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v4 = *a2;
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  v7[0] = 0;
  v7[1] = 0;
  result = sub_239EB5AD8(v7, a3, a3 + 1, a3 + 2);
  v6 = bswap64(0x9E3779B97F4A7C55 * v7[0]);
  if (*(a1 + 8))
  {
    v6 += (*a1 + v6 + (*a1 + v6) * (*a1 + v6)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v6;
  return result;
}

BOOL sub_239F335F8(void *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && sub_239EB5C18(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_239EB5C18(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = (a1[4] + 8);
  v6 = 16 * *a1;
  for (i = (*(a2 + 32) + 8); v5[1] == i[1] && *(v5 - 2) == *(i - 2) && *(v5 - 1) == *(i - 1) && *v5 == *i; i += 4)
  {
    v5 += 4;
    v6 -= 16;
    if (!v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_239F336D4(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    sub_239EB5CFC();
  }

  return *a1;
}

void sub_239F33754(unint64_t *a1, unint64_t a2, _OWORD **a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = a1[4];
            if (*(v9 - 8) < a2)
            {
              v10 = sub_239F33930(a1, a2);
              v7 = v10;
              if (v3)
              {
                v11 = 0;
                do
                {
                  v12 = &v10[v11];
                  v13 = *(v9 + v11 * 8 + 16);
                  *v12 = *(v9 + v11 * 8);
                  *(v12 + 1) = v13;
                  v11 += 4;
                }

                while (4 * v3 != v11);
              }
            }

            v14 = *a3;
            v15 = 4 * v3;
            do
            {
              v16 = &v7[v15];
              v17 = v14[1];
              *v16 = *v14;
              *(v16 + 1) = v17;
              v15 += 4;
            }

            while (4 * a2 != v15);
          }

          v18 = v7;
          goto LABEL_31;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v25 = a2;
      }

      else
      {
        v25 = *a1;
      }

      v26 = sub_239F33930(a1, a2);
      v18 = v26;
      if (v3)
      {
        v27 = 32 * v25;
        v28 = v26;
        do
        {
          v29 = *v7;
          v30 = *(v7 + 1);
          v7 += 4;
          *v28 = v29;
          *(v28 + 1) = v30;
          v28 += 4;
          v27 -= 32;
        }

        while (v27);
      }

      if (v3 < a2)
      {
        v31 = *a3;
        v32 = 4 * v3;
        do
        {
          v33 = &v26[v32];
          v34 = v31[1];
          *v33 = *v31;
          *(v33 + 1) = v34;
          v32 += 4;
        }

        while (4 * a2 != v32);
      }

      goto LABEL_31;
    }

    v19 = 32 * a2;
    if (32 * a2 / a2 == 32)
    {
      v20 = sub_239F33930(a1, a2);
      v18 = v20;
      v21 = 0;
      v22 = *a3;
      do
      {
        v23 = &v20[v21 / 8];
        v24 = v22[1];
        *v23 = *v22;
        *(v23 + 1) = v24;
        v21 += 32;
      }

      while (v19 != v21);
LABEL_31:
      if (v18 != a1[4])
      {
        sub_239E56C80(a1);
        a1[4] = v18;
      }

      *a1 = a2;
      return;
    }
  }

  sub_239E5B364(a1);
}

void *sub_239F33930(uint64_t a1, unint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_239E56D84(v6);
  if (a2 >> 58)
  {
    v3 = -1;
  }

  else
  {
    v3 = (32 * a2) | 0x10;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6[0])
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

uint64_t *sub_239F339C4(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_239F339E4(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_239F33BCC(result);
}

unint64_t sub_239F339FC(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = **a1;
    do
    {
      --v3;
      v4 = v2 + 4;
      v8 = v2[3];
      v9[0] = 0;
      v9[1] = 0;
      sub_239F33C44(v9, &v8, v2);
      v5 = bswap64(0x9E3779B97F4A7C55 * v9[0]);
      v1 = v5 + ((v5 + v1 + (v5 + v1) * (v5 + v1)) >> 1);
      v2 = v4;
    }

    while (v3);
    v6 = 0x9E3779B97F4A7C55 * v1;
  }

  else
  {
    v6 = 0;
  }

  return bswap64(v6);
}

uint64_t sub_239F33AC0(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void sub_239F33BB4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_284D16020;
  sub_239EB5D90();
}

uint64_t *sub_239F33BCC(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    sub_239E56C80(v1);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

uint64_t sub_239F33C44(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  v7[0] = 0;
  v7[1] = 0;
  result = sub_239F226E0(v7, a3, a3 + 1, a3 + 2);
  v6 = bswap64(0x9E3779B97F4A7C55 * v7[0]);
  if (*(a1 + 8))
  {
    v6 += (*a1 + v6 + (*a1 + v6) * (*a1 + v6)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v6;
  return result;
}

BOOL sub_239F33CF8(void *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && sub_239EB5C18(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = sub_239EB5C18(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = (a1[4] + 16);
  v6 = 32 * *a1;
  for (i = (*(a2 + 32) + 16); v5[1] == i[1] && *(v5 - 2) == *(i - 2) && *(v5 - 1) == *(i - 1) && *v5 == *i; i += 4)
  {
    v5 += 4;
    v6 -= 32;
    if (!v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_239F33DD4(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    sub_239EB5CFC();
  }

  return *a1;
}

void sub_239F33E54(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(a1 + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_239F750D0();
    }
  }
}

void sub_239F33E98(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(a1 + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_239F75140();
    }
  }
}

uint64_t sub_239F33F3C(uint64_t result)
{
  if (result)
  {
    sub_239E56C80(result);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

uint64_t sub_239F33FF8(uint64_t result)
{
  if (result)
  {
    sub_239E56C80(result);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

_WORD *sub_239F34198@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &off_284D15610 + 3;
  *a2 = *result;
  return result;
}

float sub_239F341B4(float *a1, _DWORD *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

float sub_239F341C4(float *a1, _DWORD *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

float sub_239F342D0@<S0>(float *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &unk_284D15333;
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_239F342EC(double *a1, void *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_239F342FC(double *a1, void *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_239F34408@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  a2[1] = &unk_284D153EB;
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_239F3447C(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x23EE802C0);
  }

  return result;
}

_DWORD *sub_239F34634@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &off_284D16750 + 3;
  *a2 = *result;
  return result;
}

void *sub_239F34790@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = *result;
  a2[1] = &off_284D16808 + 3;
  return result;
}

uint64_t *sub_239F347A8(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_239F347C4(uint64_t *a1)
{
  result = *a1;
  if (result && atomic_fetch_add_explicit((result + 16), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    JUMPOUT(0x23EE802C0);
  }

  return result;
}

void *sub_239F347FC(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

void sub_239F3494C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_284D168C0 + 2;
  operator new();
}

uint64_t sub_239F349B4(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 16));
  v2 = *a1;
  if (v1 != 1)
  {
    operator new();
  }

  return *a1;
}

int *sub_239F34A64(int *result, uint64_t a2)
{
  v2 = *result;
  *(a2 + 4) = *(result + 2);
  *a2 = v2;
  return result;
}

int *sub_239F34A7C(int *result, uint64_t a2)
{
  v2 = *result;
  *(a2 + 4) = *(result + 2);
  *a2 = v2;
  return result;
}

unint64_t sub_239F34A98(unsigned __int16 *a1)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_239F31FF4(v2, a1, a1 + 1, a1 + 2);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v2[0]));
}

uint64_t sub_239F34BB0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &off_284D16528 + 3;
  *a2 = *result;
  *(a2 + 4) = *(result + 4);
  return result;
}

uint64_t *sub_239F34BD4(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 12), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_239F34BF0(uint64_t *a1)
{
  result = *a1;
  if (result && atomic_fetch_add_explicit((result + 12), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    JUMPOUT(0x23EE802C0);
  }

  return result;
}

void *sub_239F34C28(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t sub_239F34C40(unsigned int **a1)
{
  v1 = *a1;
  v3[0] = 0;
  v3[1] = 0;
  sub_239EB5AD8(v3, v1, v1 + 1, v1 + 2);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3[0]));
}

BOOL sub_239F34C98(float **a1, float **a2)
{
  v2 = *a1;
  v3 = *a2;
  return **a1 == **a2 && v2[1] == v3[1] && v2[2] == v3[2];
}

void sub_239F34DD8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_284D165E0 + 2;
  operator new();
}

uint64_t sub_239F34E48(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 12));
  v2 = *a1;
  if (v1 != 1)
  {
    operator new();
  }

  return *a1;
}

uint64_t *sub_239F34F00(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 24), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_239F34F1C(uint64_t *a1)
{
  result = *a1;
  if (result && atomic_fetch_add_explicit((result + 24), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    JUMPOUT(0x23EE802C0);
  }

  return result;
}

void *sub_239F34F54(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t sub_239F34F6C(uint64_t **a1)
{
  v1 = *a1;
  v3[0] = 0;
  v3[1] = 0;
  sub_239F226E0(v3, v1, v1 + 1, v1 + 2);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3[0]));
}

BOOL sub_239F34FC4(double **a1, double **a2)
{
  v2 = *a1;
  v3 = *a2;
  return **a1 == **a2 && v2[1] == v3[1] && v2[2] == v3[2];
}

void sub_239F35104(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_284D16698 + 2;
  operator new();
}

uint64_t sub_239F35174(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 24));
  v2 = *a1;
  if (v1 != 1)
  {
    operator new();
  }

  return *a1;
}

unint64_t sub_239F35250(unsigned __int16 *a1)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_239F35384(v2, a1, a1 + 1, a1 + 2, a1 + 3);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v2[0]));
}

void *sub_239F3536C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = *result;
  a2[1] = &off_284D16300 + 3;
  return result;
}

uint64_t sub_239F35384(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned __int16 *a5)
{
  v5 = *a2;
  if (*(a1 + 8))
  {
    v5 += (*a1 + v5 + (*a1 + v5) * (*a1 + v5)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v5;
  return sub_239F31FF4(a1, a3, a4, a5);
}

uint64_t *sub_239F35434(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_239F35450(uint64_t *a1)
{
  result = *a1;
  if (result && atomic_fetch_add_explicit((result + 16), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    JUMPOUT(0x23EE802C0);
  }

  return result;
}

void *sub_239F35488(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t sub_239F354A0(unsigned int **a1)
{
  v1 = *a1;
  v3[0] = 0;
  v3[1] = 0;
  sub_239EB619C(v3, v1, v1 + 1, v1 + 2, v1 + 3);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3[0]));
}

BOOL sub_239F354FC(float **a1, float **a2)
{
  v2 = *a1;
  v3 = *a2;
  return **a1 == **a2 && v2[1] == v3[1] && v2[2] == v3[2] && v2[3] == v3[3];
}

void sub_239F3565C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_284D163B8 + 2;
  operator new();
}

uint64_t sub_239F356C4(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 16));
  v2 = *a1;
  if (v1 != 1)
  {
    operator new();
  }

  return *a1;
}

uint64_t *sub_239F35774(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 32), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_239F35790(uint64_t *a1)
{
  result = *a1;
  if (result && atomic_fetch_add_explicit((result + 32), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    JUMPOUT(0x23EE802C0);
  }

  return result;
}

void *sub_239F357C8(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t sub_239F357E0(uint64_t **a1)
{
  v1 = *a1;
  v3[0] = 0;
  v3[1] = 0;
  sub_239F226A4(v3, v1, v1 + 1, v1 + 2, v1 + 3);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3[0]));
}

BOOL sub_239F3583C(double **a1, double **a2)
{
  v2 = *a1;
  v3 = *a2;
  return **a1 == **a2 && v2[1] == v3[1] && v2[2] == v3[2] && v2[3] == v3[3];
}

void sub_239F3599C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_284D16470 + 2;
  operator new();
}

uint64_t sub_239F35A04(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 32));
  v2 = *a1;
  if (v1 != 1)
  {
    operator new();
  }

  return *a1;
}

unint64_t sub_239F35AD8(unsigned __int16 *a1)
{
  v2 = a1[3];
  v3[0] = 0;
  v3[1] = 0;
  sub_239F32E68(v3, &v2, a1);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3[0]));
}

void *sub_239F35C44@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = *result;
  a2[1] = &off_284D16978 + 1;
  return result;
}

uint64_t *sub_239F35C5C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_239F35C78(uint64_t *a1)
{
  result = *a1;
  if (result && atomic_fetch_add_explicit((result + 16), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    JUMPOUT(0x23EE802C0);
  }

  return result;
}

void *sub_239F35CB0(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t sub_239F35CC8(unsigned int **a1)
{
  v1 = *a1;
  v3 = (*a1)[3];
  v4[0] = 0;
  v4[1] = 0;
  sub_239F33544(v4, &v3, v1);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v4[0]));
}

BOOL sub_239F35D24(float **a1, float **a2)
{
  v2 = *a1;
  v3 = *a2;
  return (*a1)[3] == (*a2)[3] && *v2 == *v3 && v2[1] == v3[1] && v2[2] == v3[2];
}

void sub_239F35E84(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_284D16A30;
  operator new();
}

uint64_t *sub_239F35EE8(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 32), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_239F35F04(uint64_t *a1)
{
  result = *a1;
  if (result && atomic_fetch_add_explicit((result + 32), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    JUMPOUT(0x23EE802C0);
  }

  return result;
}

void *sub_239F35F3C(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t sub_239F35F54(uint64_t **a1)
{
  v1 = *a1;
  v3 = (*a1)[3];
  v4[0] = 0;
  v4[1] = 0;
  sub_239F33C44(v4, &v3, v1);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v4[0]));
}

BOOL sub_239F35FB0(double **a1, double **a2)
{
  v2 = *a1;
  v3 = *a2;
  return (*a1)[3] == (*a2)[3] && *v2 == *v3 && v2[1] == v3[1] && v2[2] == v3[2];
}

void sub_239F36110(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_284D16AE8;
  operator new();
}

uint64_t *sub_239F36174(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 64), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_239F36190(uint64_t *a1)
{
  result = *a1;
  if (result && atomic_fetch_add_explicit((result + 64), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    JUMPOUT(0x23EE802C0);
  }

  return result;
}

void *sub_239F361C8(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t sub_239F361E0(unsigned int **a1)
{
  v1 = *a1;
  v2 = *a1 + 7;
  v3 = *a1 + 8;
  v4 = *a1 + 9;
  v5 = *a1 + 10;
  v6 = *a1 + 11;
  v7 = *a1 + 12;
  v8 = *a1 + 13;
  v9 = *a1 + 14;
  v10 = *a1 + 15;
  v12[0] = 0;
  v12[1] = 0;
  sub_239F21768(v12, v1, v1 + 1, v1 + 2, v1 + 3, v1 + 4, v1 + 5, v1 + 6, v2, v3, v4, v5, v6, v7, v8, v9, v10);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v12[0]));
}

uint64_t sub_239F36280(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return pxrInternal__aapl__pxrReserved__::GfMatrix4f::operator==();
}

void sub_239F36350(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_284D16C58 + 2;
  operator new();
}

uint64_t sub_239F363C0(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 64));
  v2 = *a1;
  if (v1 != 1)
  {
    operator new();
  }

  return *a1;
}

uint64_t *sub_239F36478(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 128), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_239F36494(uint64_t *a1)
{
  result = *a1;
  if (result && atomic_fetch_add_explicit((result + 128), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    JUMPOUT(0x23EE802C0);
  }

  return result;
}

void *sub_239F364CC(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t sub_239F364E4(uint64_t **a1)
{
  v1 = *a1;
  v2 = *a1 + 7;
  v3 = *a1 + 8;
  v4 = *a1 + 9;
  v5 = *a1 + 10;
  v6 = *a1 + 11;
  v7 = *a1 + 12;
  v8 = *a1 + 13;
  v9 = *a1 + 14;
  v10 = *a1 + 15;
  v12[0] = 0;
  v12[1] = 0;
  sub_239F22278(v12, v1, v1 + 1, v1 + 2, v1 + 3, v1 + 4, v1 + 5, v1 + 6, v2, v3, v4, v5, v6, v7, v8, v9, v10);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v12[0]));
}

uint64_t sub_239F36584(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator==();
}

void sub_239F36654(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_284D16D10 + 2;
  operator new();
}

uint64_t sub_239F366D4(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 128));
  v2 = *a1;
  if (v1 != 1)
  {
    operator new();
  }

  return *a1;
}

uint64_t sub_239F3679C(uint64_t a1, unint64_t a2, void *a3)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 56) = 1065353216;
  *(a1 + 64) = 0;
  *(a1 + 80) = 0u;
  sub_239F368E4(a1, a2, a3, 0);
  for (i = 0; i != 3; ++i)
  {
    v6 = *a1;
    v7 = *(a1 + 8);
    if (*a1 == v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = 0;
      v9 = 0.0;
      do
      {
        v10 = *v6;
        v11 = vmulq_f32(*(a1 + 80), sub_239EC3D28(*v6));
        if ((vaddv_f32(*v11.f32) + v11.f32[2]) > v9)
        {
          v12 = vmulq_f32(sub_239EC3D28(v10), *(a1 + 80));
          v9 = vaddv_f32(*v12.f32) + v12.f32[2];
          v8 = v10;
        }

        ++v6;
      }

      while (v6 != v7);
      v6 = *a1;
    }

    *(a1 + 8) = v6;
    sub_239F368E4(a1, v8, a3, 0);
  }

  v13 = *a1;
  v14 = *(a1 + 8);
  while (v13 != v14)
  {
    v15 = *v13++;
    *(v15 + 256) = a1;
  }

  return a1;
}

void sub_239F368C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239F368E4(uint64_t a1, unint64_t a2, void *a3, char a4)
{
  v98 = *MEMORY[0x277D85DE8];
  v91 = 0u;
  memset(v90, 0, sizeof(v90));
  v92.n128_u64[0] = a2;
  v92.n128_u64[1] = a2;
  sub_239F381B4(v90, &v92);
  v78 = *(a2 + 80);
  v75 = *(a2 + 64);
  v80 = sub_239EC3D28(a2);
  v77 = sub_239EC3D28(a2);
  v8 = *(&v91 + 1);
  if (*(&v91 + 1))
  {
    v9 = vsubq_f32(v78, v75);
    v10 = vmulq_f32(v9, v9);
    *&v11 = vaddv_f32(*v10.f32) + v10.f32[2];
    v12 = vrsqrte_f32(v11);
    v13 = vmul_f32(vrsqrts_f32(v11, vmul_f32(v12, v12)), v12);
    v76 = vmulq_n_f32(v9, vmul_f32(v13, vrsqrts_f32(v11, vmul_f32(v13, v13))).f32[0]);
    v14 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v76, v76), v76, 0xCuLL), v80)), vextq_s8(vuzp1q_s32(v80, v80), v80, 0xCuLL), v76);
    v15 = vmulq_f32(v14, v14);
    v10.f32[0] = (v15.f32[2] + v15.f32[0]) + v15.f32[1];
    v16 = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL);
    *v14.i8 = vrsqrte_f32(v10.u32[0]);
    *v14.i8 = vmul_f32(vrsqrts_f32(v10.u32[0], vmul_f32(*v14.i8, *v14.i8)), *v14.i8);
    v74 = vmulq_n_f32(v16, vmul_f32(*v14.i8, vrsqrts_f32(v10.u32[0], vmul_f32(*v14.i8, *v14.i8))).f32[0]);
    v17 = vdup_n_s32(0x3EAAAAABu);
    do
    {
      v18 = (*(*(&v90[0] + 1) + ((v91 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v91);
      v19 = *v18;
      v20 = v18[1];
      *&v91 = v91 + 1;
      *(&v91 + 1) = v8 - 1;
      if (v91 >= 0x200)
      {
        operator delete(**(&v90[0] + 1));
        *(&v90[0] + 1) += 8;
        *&v91 = v91 - 256;
      }

      v21 = *a1;
      v22 = *(a1 + 8);
      if (*a1 != v22)
      {
        while (*v21 != v19)
        {
          if (++v21 == v22)
          {
            goto LABEL_10;
          }
        }
      }

      if (v21 == v22)
      {
LABEL_10:
        v81 = sub_239EC3D28(v19);
        v79 = sub_239EC3D28(v20);
        v23 = sub_239EC3D28(v19);
        if (*a1 == *(a1 + 8) || (v24 = vmulq_f32(v79, v81), v25 = vmulq_f32(*(a1 + 80), v23), v26 = vextq_s8(vzip1q_s32(v25, v25), vuzp1q_s32(v25, v24), 0xCuLL), ((*&v24.i32[1] + *&v24.i32[2]) + vaddv_f32(*&vpaddq_f32(v26, v26))) > 1.8))
        {
          v27 = *(a2 + 64);
          v28 = *(v19 + 64);
          v29 = *(v19 + 80);
          v30 = vmulq_f32(vsubq_f32(v28, v27), v77);
          v31 = vsubq_f32(v28, vmlaq_n_f32(v27, v77, vaddv_f32(*v30.f32) + v30.f32[2]));
          v32 = vmulq_f32(v31, v76);
          v33 = vmulq_f32(v31, v74);
          *(v19 + 16) = vmul_f32(vadd_f32(vadd_f32(vzip1_s32(*v32.i8, *v33.i8), vzip2_s32(*v32.i8, *v33.i8)), vzip1_s32(*&vextq_s8(v32, v32, 8uLL), *&vextq_s8(v33, v33, 8uLL))), v17);
          v34 = *(a2 + 64);
          v35 = vmulq_f32(vsubq_f32(v29, v34), v77);
          v36 = vsubq_f32(v29, vmlaq_n_f32(v34, v77, vaddv_f32(*v35.f32) + v35.f32[2]));
          v37 = vmulq_f32(v36, v76);
          v38 = vmulq_f32(v36, v74);
          *(v19 + 24) = vmul_f32(vadd_f32(vadd_f32(vzip1_s32(*v37.i8, *v38.i8), vzip2_s32(*v37.i8, *v38.i8)), vzip1_s32(*&vextq_s8(v37, v37, 8uLL), *&vextq_s8(v38, v38, 8uLL))), v17);
          v39 = *(v19 + 96);
          v40 = *(a2 + 64);
          v41 = vmulq_f32(vsubq_f32(v39, v40), v77);
          v42 = vsubq_f32(v39, vmlaq_n_f32(v40, v77, vaddv_f32(*v41.f32) + v41.f32[2]));
          v43 = vmulq_f32(v42, v76);
          v44 = vmulq_f32(v42, v74);
          *(v19 + 32) = vmul_f32(vadd_f32(vadd_f32(vzip1_s32(*v43.i8, *v44.i8), vzip2_s32(*v43.i8, *v44.i8)), vzip1_s32(*&vextq_s8(v43, v43, 8uLL), *&vextq_s8(v44, v44, 8uLL))), v17);
          v45 = *a1;
          v46 = *(a1 + 8);
          if (*a1 == v46)
          {
            goto LABEL_23;
          }

          v47 = 0;
          do
          {
            v48 = *v45;
            sub_239EC3880(*v45, &v92, *(v19 + 16));
            if (v93 && !sub_239EC3D30(v48, *(v19 + 64)) || (sub_239EC3880(v48, &v88, *(v19 + 24)), v89) && !sub_239EC3D30(v48, *(v19 + 80)) || (sub_239EC3880(v48, &v86, *(v19 + 32)), v87) && !sub_239EC3D30(v48, *(v19 + 96)))
            {
              v47 = 1;
            }

            ++v45;
          }

          while (v45 != v46);
          if ((v47 & 1) == 0)
          {
LABEL_23:
            v50 = *(a1 + 8);
            v49 = *(a1 + 16);
            if (v50 >= v49)
            {
              v52 = (v50 - *a1) >> 3;
              if ((v52 + 1) >> 61)
              {
                sub_239E797B4();
              }

              v53 = v49 - *a1;
              v54 = v53 >> 2;
              if (v53 >> 2 <= (v52 + 1))
              {
                v54 = v52 + 1;
              }

              if (v53 >= 0x7FFFFFFFFFFFFFF8)
              {
                v55 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v55 = v54;
              }

              if (v55)
              {
                sub_239E7C684(a1, v55);
              }

              *(8 * v52) = v19;
              v51 = 8 * v52 + 8;
              v56 = *(a1 + 8) - *a1;
              v57 = (8 * v52 - v56);
              memcpy(v57, *a1, v56);
              v58 = *a1;
              *a1 = v57;
              *(a1 + 8) = v51;
              *(a1 + 16) = 0;
              if (v58)
              {
                operator delete(v58);
              }
            }

            else
            {
              *v50 = v19;
              v51 = (v50 + 1);
            }

            *(a1 + 8) = v51;
            v59 = *a1;
            v82 = *(a1 + 80);
            v60 = sub_239EC3D28(v19);
            v61 = (v51 - v59) >> 3;
            *v62.i32 = v61;
            v63 = v61 + -1.0;
            v64 = vmlaq_n_f32(v60, v82, v63);
            __asm { FMOV            V1.4S, #1.0 }

            *(a1 + 80) = vmulq_f32(v64, vdivq_f32(_Q1, vdupq_lane_s32(v62, 0)));
            v88 = 0u;
            v89 = 0u;
            sub_239EC3480(&v88, *(v19 + 64), *(v19 + 80));
            v86 = 0u;
            v87 = 0u;
            sub_239EC3480(&v86, *(v19 + 80), *(v19 + 96));
            v84 = 0u;
            v85 = 0u;
            sub_239EC3480(&v84, *(v19 + 96), *(v19 + 64));
            v70 = 0;
            v92 = v88;
            v93 = v89;
            v94 = v86;
            v95 = v87;
            v96 = v84;
            v97 = v85;
            do
            {
              v71 = sub_239EC3C28(v19, a3, *(&v92 + v70), *(&v92 + v70 + 16));
              if (v71 && ((a4 & 1) != 0 || !*(v71 + 256)))
              {
                v83.n128_u64[0] = v71;
                v83.n128_u64[1] = v19;
                sub_239F381B4(v90, &v83);
              }

              v70 += 32;
            }

            while (v70 != 96);
          }
        }
      }

      v8 = *(&v91 + 1);
    }

    while (*(&v91 + 1));
  }

  result = sub_239F38108(v90);
  v73 = *MEMORY[0x277D85DE8];
  return result;
}

float sub_239F36EE8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*&v1 <= *(&v1 + 1))
  {
    LODWORD(v1) = HIDWORD(*(a1 + 32));
  }

  return *&v1;
}

void sub_239F36EFC(uint64_t a1)
{
  v19[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 64);
  __asm { FMOV            V9.2S, #1.0 }

  v8 = vdiv_f32(_D9, v2);
  *(a1 + 64) = vmul_f32(v8, v2);
  v9 = vmul_f32(v8, *(a1 + 32));
  *(a1 + 32) = v9;
  v10 = *a1;
  v11 = *(a1 + 8);
  if (*a1 != v11)
  {
    do
    {
      v12 = *v10++;
      sub_239EC3564(v12, v8);
    }

    while (v10 != v11);
    v9 = *(a1 + 32);
  }

  *(a1 + 64) = _D9;
  if (vcgt_f32(vdup_lane_s32(v9, 1), v9).u8[0])
  {
    *(a1 + 32) = vrev64_s32(v9);
    v13 = *a1;
    v14 = *(a1 + 8);
    if (*a1 != v14)
    {
      do
      {
        v15 = 0;
        v16 = *v13;
        v17 = &(*v13)[3];
        v19[0] = *v13 + 2;
        v19[1] = v17;
        v19[2] = v16 + 4;
        do
        {
          *v19[v15] = vrev64_s32(*v19[v15]);
          ++v15;
        }

        while (v15 != 3);
        ++v13;
      }

      while (v13 != v14);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_239F37014(uint64_t a1, float32x2_t a2)
{
  *(a1 + 64) = vmul_f32(*(a1 + 64), a2);
  *(a1 + 32) = vmul_f32(*(a1 + 32), a2);
  v3 = *a1;
  v4 = *(a1 + 8);
  while (v3 != v4)
  {
    v5 = *v3++;
    sub_239EC3564(v5, a2);
  }
}

void sub_239F37070(uint64_t **a1)
{
  sub_239F37200(a1);
  *&v2 = vmul_lane_f32(*&v2, *&v2, 1);
  v3 = *a1;
  v4 = a1[1];
  while (v3 != v4)
  {
    v5 = *v3++;
    *(v5 + 40) = *(v5 + 16);
    *(v5 + 56) = *(v5 + 32);
  }

  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  do
  {
    v26 = v2;
    v9 = __sincosf_stret(v8);
    v10 = *a1;
    v11 = a1[1];
    if (*a1 != v11)
    {
      v12.f32[0] = -v9.__sinval;
      v12.i32[1] = LODWORD(v9.__cosval);
      do
      {
        v13 = *v10++;
        v14 = vmla_lane_f32(vmul_n_f32(__PAIR64__(LODWORD(v9.__sinval), LODWORD(v9.__cosval)), COERCE_FLOAT(*&v13[3])), v12, v13[3], 1);
        v13[2] = vmla_lane_f32(vmul_n_f32(__PAIR64__(LODWORD(v9.__sinval), LODWORD(v9.__cosval)), COERCE_FLOAT(*&v13[2])), v12, v13[2], 1);
        v13[3] = v14;
        v13[4] = vmla_lane_f32(vmul_n_f32(__PAIR64__(LODWORD(v9.__sinval), LODWORD(v9.__cosval)), COERCE_FLOAT(*&v13[4])), v12, v13[4], 1);
      }

      while (v10 != v11);
    }

    sub_239F37200(a1);
    v16 = vmul_lane_f32(v15, v15, 1).f32[0];
    v2 = v26;
    if (v16 < *&v26)
    {
      v6 = v8;
      *&v2 = v16;
    }

    v17 = *a1;
    v18 = a1[1];
    while (v17 != v18)
    {
      v19 = *v17++;
      *(v19 + 16) = *(v19 + 40);
      *(v19 + 32) = *(v19 + 56);
    }

    v8 = v7 + 0.0436332313;
    v7 = v8;
  }

  while (v8 < 3.14159265);
  v20 = __sincosf_stret(v6);
  v21 = *a1;
  v22 = a1[1];
  if (*a1 != v22)
  {
    v23.f32[0] = -v20.__sinval;
    v23.i32[1] = LODWORD(v20.__cosval);
    do
    {
      v24 = *v21++;
      v25 = vmla_lane_f32(vmul_n_f32(__PAIR64__(LODWORD(v20.__sinval), LODWORD(v20.__cosval)), COERCE_FLOAT(*&v24[3])), v23, v24[3], 1);
      v24[2] = vmla_lane_f32(vmul_n_f32(__PAIR64__(LODWORD(v20.__sinval), LODWORD(v20.__cosval)), COERCE_FLOAT(*&v24[2])), v23, v24[2], 1);
      v24[3] = v25;
      v24[4] = vmla_lane_f32(vmul_n_f32(__PAIR64__(LODWORD(v20.__sinval), LODWORD(v20.__cosval)), COERCE_FLOAT(*&v24[4])), v23, v24[4], 1);
    }

    while (v21 != v22);
  }
}

double sub_239F37200(uint64_t **a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = a1[1];
  v3.i64[0] = *(**a1 + 16);
  v3.i64[1] = v3.i64[0];
  if (*a1 != v2)
  {
    do
    {
      v4 = 0;
      v5 = *v1;
      v12 = *(*v1 + 16);
      v13 = *(v5 + 32);
      do
      {
        v6.i64[0] = *(&v12 + v4);
        v7.i64[0] = v6.i64[0];
        v7.i64[1] = v6.i64[0];
        v8 = vcgtq_f32(v7, v3);
        v9 = vextq_s8(v3, v3, 8uLL).u64[0];
        v3.i64[1] = v6.i64[0];
        v6.i64[1] = v9;
        v3 = vbslq_s8(v8, v6, v3);
        v4 += 8;
      }

      while (v4 != 24);
      ++v1;
    }

    while (v1 != v2);
  }

  v10 = *MEMORY[0x277D85DE8];
  *&result = vextq_s8(v3, v3, 8uLL).u64[0];
  return result;
}

uint64_t sub_239F372BC(float32x4_t ***a1, __n128 a2)
{
  v3 = 0uLL;
  v40 = 0u;
  v41 = 0u;
  v42 = 1065353216;
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    do
    {
      v6 = *v4;
      v43 = *v4 + 4;
      sub_239E9D254(&v40, v43)[2].i64[0] = 0;
      v43 = v6 + 5;
      sub_239E9D254(&v40, v6 + 5)[2].i64[0] = 0;
      v43 = v6 + 6;
      sub_239E9D254(&v40, v6 + 6)[2].i64[0] = 0;
      ++v4;
    }

    while (v4 != v5);
    v4 = *a1;
    v5 = a1[1];
    v3 = 0uLL;
  }

  if (v4 != v5)
  {
    do
    {
      v38 = v3;
      a2 = sub_239EC3D28(*v4);
      v3 = vaddq_f32(a2, v38);
      ++v4;
    }

    while (v4 != v5);
    v4 = *a1;
    v5 = a1[1];
  }

  v7 = *v4;
  if (v5 != v4)
  {
    a2.n128_f32[0] = (v5 - v4);
    __asm { FMOV            V1.4S, #1.0 }

    v39 = vmulq_f32(v3, vdivq_f32(_Q1, vdupq_lane_s32(a2.n128_u64[0], 0)));
    v13 = 0.0;
    do
    {
      v14 = *v4;
      v15 = vmulq_f32(sub_239EC3D28(*v4), v39);
      if ((vaddv_f32(*v15.f32) + v15.f32[2]) > v13)
      {
        v16 = vmulq_f32(sub_239EC3D28(v14), v39);
        v13 = vaddv_f32(*v16.f32) + v16.f32[2];
        v7 = v14;
      }

      ++v4;
    }

    while (v4 != v5);
  }

  v17 = sub_239EC3D28(v7);
  v18 = v41;
  if (v41)
  {
    v19 = vsubq_f32(v7[5], v7[4]);
    v20 = vmulq_f32(v19, v19);
    v21 = vaddv_f32(*v20.f32);
    *v20.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v21 + v20.f32[2]));
    *v20.f32 = vmul_f32(vrsqrts_f32(COERCE_UNSIGNED_INT(v21 + v20.f32[2]), vmul_f32(*v20.f32, *v20.f32)), *v20.f32);
    v22 = vmulq_n_f32(v19, vmul_f32(*v20.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v21 + v20.f32[2]), vmul_f32(*v20.f32, *v20.f32))).f32[0]);
    v23 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL), v17)), vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL), v22);
    v24 = vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL);
    v25 = vmulq_f32(v23, v23);
    *&v26 = (v25.f32[2] + v25.f32[0]) + v25.f32[1];
    *v25.f32 = vrsqrte_f32(v26);
    *v25.f32 = vmul_f32(vrsqrts_f32(v26, vmul_f32(*v25.f32, *v25.f32)), *v25.f32);
    v27 = vmulq_n_f32(v24, vmul_f32(*v25.f32, vrsqrts_f32(v26, vmul_f32(*v25.f32, *v25.f32))).f32[0]);
    do
    {
      v28 = v18[1];
      v29 = v7[4];
      v30 = vmulq_f32(vsubq_f32(v28, v29), v17);
      v31 = vsubq_f32(v28, vmlaq_n_f32(v29, v17, vaddv_f32(*v30.f32) + v30.f32[2]));
      v32 = vmulq_f32(v31, v22);
      v32.f32[0] = (vaddv_f32(*v32.f32) + v32.f32[2]) * 0.33333;
      v33 = vmulq_f32(v27, v31);
      v32.f32[1] = (vaddv_f32(*v33.f32) + v33.f32[2]) * 0.33333;
      v18[2].i64[0] = v32.i64[0];
      v18 = v18->i64[0];
    }

    while (v18);
  }

  v34 = *a1;
  v35 = a1[1];
  if (*a1 != v35)
  {
    do
    {
      v36 = *v34;
      v43 = *v34 + 4;
      v36[1].i64[0] = sub_239E9D254(&v40, v43)[2].i64[0];
      v43 = v36 + 5;
      v36[1].i64[1] = sub_239E9D254(&v40, v36 + 5)[2].i64[0];
      v43 = v36 + 6;
      v36[2].i64[0] = sub_239E9D254(&v40, v36 + 6)[2].i64[0];
      ++v34;
    }

    while (v34 != v35);
  }

  sub_239E7B644(&v40);
  return 1;
}

void sub_239F375F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_239E7B644(va);
  _Unwind_Resume(a1);
}

uint64_t sub_239F3761C(uint64_t a1, float32x2_t a2)
{
  v30[7] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if ((vmvn_s8(vcge_f32(a2, v2)).u8[0] & 1) != 0 || (v4 = vcgt_f32(vadd_f32(*(a1 + 48), v2), a2), (v4.i8[0] & 1) == 0))
  {
LABEL_19:
    result = 0;
    goto LABEL_20;
  }

  result = 0;
  if (a2.f32[1] >= v2.f32[1] && (v4.i8[4] & 1) != 0)
  {
    v6 = &dword_27DF912D0;
    v7 = vld1_dup_f32(v6);
    v8 = vadd_f32(v7, a2);
    v29 = a2;
    v30[0] = __PAIR64__(v8.u32[1], a2.u32[0]);
    v30[1] = __PAIR64__(v8.u32[1], a2.u32[0]);
    v30[2] = v8;
    v23 = v8;
    v24 = a2;
    v30[3] = v8;
    v30[4] = __PAIR64__(a2.u32[1], v8.u32[0]);
    v30[5] = __PAIR64__(a2.u32[1], v8.u32[0]);
    v30[6] = a2;
    v9 = *a1;
    v10 = *(a1 + 8);
    if (*a1 != v10)
    {
      while (1)
      {
        sub_239EC3880(*v9, &v25, *&a2);
        if (v26)
        {
          goto LABEL_21;
        }

        ++v9;
        a2 = v24;
        if (v9 == v10)
        {
          v9 = *a1;
          v10 = *(a1 + 8);
          break;
        }
      }
    }

    if (v9 != v10)
    {
      while (1)
      {
        v11 = *v9;
        v12 = sub_239EC3CE0(*v9);
        v13.i64[0] = v24;
        *&v13.i64[1] = v12;
        v14.i64[1] = v23;
        if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vcgeq_f32(v14, v13)))) & 1) == 0)
        {
          break;
        }

LABEL_11:
        if (++v9 == v10)
        {
          goto LABEL_19;
        }
      }

      v15 = 0;
      v16 = *v11[3].f32;
      v17 = v11[4];
      v25 = *v11[2].f32;
      v26 = v16;
      v27 = v17;
      v28 = v25;
LABEL_14:
      v18 = *(&v25 + v15);
      v19 = *(&v25 + v15 + 8);
      v20 = v30;
      v21 = 64;
      while (!sub_239EC2D34(v18, v19, v20[-1], *v20))
      {
        v20 += 2;
        v21 -= 16;
        if (!v21)
        {
          v15 += 16;
          if (v15 != 48)
          {
            goto LABEL_14;
          }

          goto LABEL_11;
        }
      }

LABEL_21:
      result = 1;
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_20:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_239F37800(float32x2_t ***a1@<X0>, void *a2@<X8>, float32x2_t a3@<D0>)
{
  v40[7] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = a1[1];
  if (*a1 == v5)
  {
LABEL_5:
    v8 = &dword_27DF912D0;
    v9 = vld1_dup_f32(v8);
    v10 = vadd_f32(v9, a3);
    v39 = a3;
    v40[0] = __PAIR64__(v10.u32[1], a3.u32[0]);
    v40[1] = __PAIR64__(a3.u32[1], v10.u32[0]);
    v40[2] = a3;
    v40[3] = __PAIR64__(v10.u32[1], a3.u32[0]);
    v40[4] = v10;
    v34 = v10;
    v40[5] = v10;
    for (v40[6] = __PAIR64__(a3.u32[1], v10.u32[0]); v4 != v5; ++v4)
    {
      v11 = *v4;
      v12 = sub_239EC3CE0(*v4);
      *v13.f32 = a3;
      *&v13.i64[1] = v12;
      v14.i64[1] = v34;
      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vcgeq_f32(v14, v13)))) & 1) == 0)
      {
        v15 = 0;
        v16 = *v11[3].f32;
        v17 = v11[4];
        v36[0] = *v11[2].f32;
        v36[1] = v16;
        v37 = v17;
        v38 = *&v36[0];
        while (2)
        {
          v18 = *&v36[v15];
          v19 = *(&v36[v15] + 8);
          v20 = v40;
          v21 = 64;
          do
          {
            v22 = v20[-1];
            v23 = *v20;
            if (sub_239EC2D34(v18, v19, v22, *v20))
            {
              v24 = sub_239EC2D98(v18, v19, v22, v23);
              v25 = vsub_f32(sub_239EC3DB0(v11), *&v24);
              v26 = vmul_f32(v25, v25);
              v26.i32[0] = vadd_f32(v26, vdup_lane_s32(v26, 1)).u32[0];
              v27 = vrsqrte_f32(v26.u32[0]);
              v28 = vmul_f32(vrsqrts_f32(v26.u32[0], vmul_f32(v27, v27)), v27);
              v29 = vrsqrts_f32(v26.u32[0], vmul_f32(v28, v28));
              v30 = *&dword_27DF912D0 * 0.1;
              v31 = vsub_f32(*&v24, sub_239EC3DB0(v11));
              v32 = vmul_f32(v31, v31);
              v32.f32[0] = sqrtf(vaddv_f32(v32));
              if (v30 < v32.f32[0])
              {
                v32.f32[0] = v30;
              }

              a2[1] = 0;
              a2[2] = 0;
              *a2 = 0;
              sub_239EC3880(v11, a2, COERCE_DOUBLE(vmla_n_f32(*&v24, v25, vmul_f32(vmul_f32(v28, v32), v29).f32[0])));
              if (!a2[2])
              {
                a2[2] = v11;
                *a2 = vdup_n_s32(0x3EA8F5C3u);
                *(a2 + 2) = 1051595899;
              }

              goto LABEL_20;
            }

            v20 += 2;
            v21 -= 16;
          }

          while (v21);
          if (++v15 != 3)
          {
            continue;
          }

          break;
        }
      }
    }

    *a2 = 0;
    a2[1] = 0;
    *a2 = -1082130432;
    a2[2] = 0;
  }

  else
  {
    while (1)
    {
      v7 = *v4;
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      sub_239EC3880(v7, a2, *&a3);
      if (a2[2])
      {
        break;
      }

      if (++v4 == v5)
      {
        v4 = *a1;
        v5 = a1[1];
        goto LABEL_5;
      }
    }
  }

LABEL_20:
  v33 = *MEMORY[0x277D85DE8];
}

void sub_239F37AAC(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  v7 = *(a1 + 24);
  v6 = *(a1 + 32);
  LODWORD(a6) = dword_27DF912D0;
  v8 = vmul_n_f32(vrndm_f32(vmul_n_f32(v7, dword_27DF912CC)), *&dword_27DF912D0);
  v9 = vrndm_f32(vmul_n_f32(vadd_f32(v6, v7), dword_27DF912CC));
  v10 = vmla_n_f32(vneg_f32(v8), v9, *&dword_27DF912D0);
  *(a1 + 24) = v8;
  *(a1 + 32) = v10;
  v9.f32[0] = *&a6 + *&a6;
  v11 = vsub_f32(v10, vdup_lane_s32(v9, 0));
  *(a1 + 40) = vadd_f32(v8, vdup_lane_s32(*&a6, 0));
  *(a1 + 48) = v11;
  *(a1 + 56) = LODWORD(a6);
  v12 = *a1;
  v13 = *(a1 + 8);
  if (*a1 != v13)
  {
    v15 = vdiv_f32(v11, v6);
    do
    {
      v16 = *v12++;
      sub_239EC3564(v16, v15);
      sub_239EC3584(v16, *(a1 + 40));
    }

    while (v12 != v13);
  }
}

float sub_239F37B70(float32x4_t ***a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = 0.0;
  while (v1 != v2)
  {
    v4 = *v1++;
    v3 = sub_239EC361C(v4) + v3;
  }

  return v3;
}

float sub_239F37BB8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = 0.0;
  while (v1 != v2)
  {
    v4 = *v1++;
    v3 = sub_239EC35A4(v4) + v3;
  }

  return v3;
}

void sub_239F37C10(uint64_t a1)
{
  v2 = sub_239F37200(a1);
  v4 = v3;
  v5 = *a1;
  v6 = *(a1 + 8);
  if (*a1 != v6)
  {
    v7 = vneg_f32(*&v2);
    do
    {
      v8 = *v5++;
      sub_239EC3584(v8, v7);
    }

    while (v5 != v6);
  }

  *(a1 + 32) = v4;
}

float32x2_t sub_239F37C70(float32x2_t *a1, __n128 a2)
{
  if (*a1)
  {
    sub_239F37C70(a2);
  }

  if (a1[1])
  {
    sub_239F37C70(a2);
  }

  v3 = a1[2];
  if (v3)
  {
    *(*&v3 + 64) = vmul_n_f32(*(*&v3 + 64), a2.n128_f32[0]);
    *(*&v3 + 32) = vmul_n_f32(*(*&v3 + 32), a2.n128_f32[0]);
    v4 = **&v3;
    v5 = *(*&v3 + 8);
    if (**&v3 != v5)
    {
      v6 = vdup_lane_s32(a2.n128_u64[0], 0);
      do
      {
        v7 = *v4++;
        sub_239EC3564(v7, v6);
      }

      while (v4 != v5);
    }
  }

  result = vmul_n_f32(a1[3], a2.n128_f32[0]);
  v9 = vmul_n_f32(a1[4], a2.n128_f32[0]);
  a1[3] = result;
  a1[4] = v9;
  return result;
}

uint64_t sub_239F37D2C(uint64_t *a1, uint64_t a2)
{
  v3 = a1;
  v15[3] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  if (!v4)
  {
LABEL_4:
    v5 = v3[4];
    v6 = *(a2 + 32);
    if ((vcgt_f32(v6, v5).u32[0] & 1) != 0 || v5.f32[1] < v6.f32[1])
    {
      if (v5.f32[0] < v6.f32[1] || v5.f32[1] < v6.f32[0])
      {
        result = 0;
        goto LABEL_18;
      }

      *(a2 + 32) = vrev64_s32(v6);
      v9 = *a2;
      v10 = *(a2 + 8);
      if (*a2 != v10)
      {
        do
        {
          v11 = 0;
          v12 = *v9;
          v13 = *v9 + 24;
          v15[0] = *v9 + 16;
          v15[1] = v13;
          v15[2] = v12 + 32;
          do
          {
            *v15[v11] = vrev64_s32(*v15[v11]);
            ++v11;
          }

          while (v11 != 3);
          ++v9;
        }

        while (v9 != v10);
      }
    }

    operator new();
  }

  while ((sub_239F37D2C(v4, a2) & 1) == 0)
  {
    v3 = v3[1];
    v4 = *v3;
    if (!*v3)
    {
      goto LABEL_4;
    }
  }

  result = 1;
LABEL_18:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_239F37ED4(float32x2_t *a1, double a2, double a3, double a4, double a5, double a6)
{
  v7 = a1[3];
  v8 = vadd_f32(a1[4], v7);
  LODWORD(a5) = dword_27DF912D0;
  v9 = vmul_n_f32(vrndm_f32(vmul_n_f32(v7, dword_27DF912CC)), *&dword_27DF912D0);
  v10 = vrndm_f32(vmul_n_f32(v8, dword_27DF912CC));
  v11 = COERCE_DOUBLE(vmla_n_f32(vneg_f32(v9), v10, *&dword_27DF912D0));
  a1[3] = v9;
  *&a1[4] = v11;
  if (*a1)
  {
    sub_239F37ED4();
  }

  if (a1[1])
  {
    sub_239F37ED4();
  }

  v12 = a1[2];
  if (v12)
  {

    sub_239F37AAC(v12, *&v9, *&v10, v11, a5, a6);
  }
}

uint64_t sub_239F37F74(uint64_t result, double a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a2;
  return result;
}

uint64_t sub_239F37F84(void *a1)
{
  if (*a1)
  {
    sub_239F37F84();
    if (*a1)
    {
      MEMORY[0x23EE802C0](*a1, 0x1020C4084B17629);
    }
  }

  result = a1[1];
  if (result)
  {
    sub_239F37F84();
    result = a1[1];
    if (result)
    {
      result = MEMORY[0x23EE802C0](result, 0x1020C4084B17629);
    }
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return result;
}

float32x2_t sub_239F37FFC(float32x2_t *a1)
{
  if (*a1)
  {
    sub_239F37FFC();
  }

  if (a1[1])
  {
    sub_239F37FFC();
  }

  v3 = a1[2];
  if (v3)
  {
    result = vadd_f32(v3[3], a1[3]);
    v3[3] = result;
  }

  return result;
}

float32x2_t sub_239F3804C(float32x2_t *a1, __n128 a2)
{
  a2.n128_u64[0] = a1[4];
  a2.n128_f32[0] = 1.0 / a2.n128_f32[0];
  return sub_239F37C70(a1, a2);
}

float32x2_t *sub_239F3805C(void *a1, double a2)
{
  for (i = a1[3]; (vmvn_s8(vcge_f32(*&a2, i)).u8[0] & 1) == 0; i = a1[3])
  {
    v5 = a1[4];
    if (*&a2 >= (v5.f32[0] + i.f32[0]))
    {
      break;
    }

    v3 = 0;
    if (*(&a2 + 1) < i.f32[1])
    {
      return v3;
    }

    if ((vcgt_f32(vadd_f32(v5, i), *&a2).i32[1] & 1) == 0)
    {
      return v3;
    }

    v3 = a1[2];
    if (!v3)
    {
      return v3;
    }

    if (!*a1)
    {
      return 0;
    }

    v6 = a1[1];
    if (!v6)
    {
      return 0;
    }

    v7 = v3[4];
    a1 = *a1;
    if (*&a2 < (v7.f32[0] + i.f32[0]))
    {
      a1 = v6;
      if (vcgt_f32(vadd_f32(v7, i), *&a2).i32[1])
      {
        return v3;
      }
    }
  }

  return 0;
}

uint64_t sub_239F38108(void *a1)
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
    v5 = 128;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 256;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_239EFAD30(a1);
}

__n128 sub_239F381B4(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 32 * (v5 - v6) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    sub_239F38240(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  result = *a2;
  *(*(v6 + ((v8 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v8) = *a2;
  ++*(a1 + 40);
  return result;
}

void *sub_239F38240(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
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
    sub_239E7C684(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_239F38414(a1, &v10);
}

void sub_239F383C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_239F38414(void *result, void *a2)
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

      sub_239E7C684(result, v11);
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

const void **sub_239F3851C(const void **result, void *a2)
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

      sub_239E7C684(result, v9);
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

void *sub_239F38628(void *result, void *a2)
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

      sub_239E7C684(result[4], v11);
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

const void **sub_239F38730(const void **result, void *a2)
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

      sub_239E7C684(result[4], v9);
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

float sub_239F3883C(float a1, double a2)
{
  v2 = (*&a2 + a1) * 0.366025403;
  *&v2 = v2;
  *(&a2 + 1) = a1;
  v3 = vadd_f32(vdup_lane_s32(*&v2, 0), *&a2);
  v10 = vadd_s32(vmvn_s8(vcgtz_f32(v3)), vcvt_s32_f32(v3));
  v4 = v10.i8[0];
  v5 = (v10.i32[1] + v10.i32[0]) * 0.211324865;
  *&v5 = v5;
  _D4 = vadd_f32(vsub_f32(vdup_lane_s32(*&v5, 0), vcvt_f32_s32(v10)), *&a2);
  _S5 = _D4.i32[1];
  v8 = _D4.f32[1] <= _D4.f32[0];
  v9 = _D4.f32[1] > _D4.f32[0];
  v10.i32[0] = 0;
  v11 = 1.0;
  if (_D4.f32[1] <= _D4.f32[0])
  {
    v12 = 0.0;
  }

  else
  {
    v12 = 1.0;
  }

  v13 = (_D4.f32[1] - v12) + 0.211324865;
  if (_D4.f32[1] > _D4.f32[0])
  {
    v11 = 0.0;
  }

  v14 = (_D4.f32[0] - v11) + 0.211324865;
  __asm { FMOV            V1.2S, #-1.0 }

  v20 = vaddq_f64(vcvtq_f64_f32(vadd_f32(_D4, _D1)), vdupq_n_s64(0x3FDB0CB17400D8C3uLL));
  __asm { FMLA            S1, S5, V4.S[1] }

  v21 = 0.5 - _D1.f32[0];
  _NF = (0.5 - _D1.f32[0]) < 0.0;
  v22 = 0.0;
  if (!_NF)
  {
    v23 = (v21 * v21) * (v21 * v21);
    if ((byte_239F9E548[byte_239F9E548[v4] + v10.u8[4]] & 4) != 0)
    {
      v24 = _D4.f32[0];
    }

    else
    {
      v24 = _D4.f32[1];
    }

    if ((byte_239F9E548[byte_239F9E548[v4] + v10.u8[4]] & 4) != 0)
    {
      _D4.f32[0] = _D4.f32[1];
    }

    v25 = -v24;
    if ((byte_239F9E548[byte_239F9E548[v4] + v10.u8[4]] & 1) == 0)
    {
      v25 = v24;
    }

    v26 = -2.0;
    if ((byte_239F9E548[byte_239F9E548[v4] + v10.u8[4]] & 2) == 0)
    {
      v26 = 2.0;
    }

    v22 = v23 * (v25 + (_D4.f32[0] * v26));
  }

  v27 = vcvt_f32_f64(v20);
  v28 = 0.5 - ((v13 * v13) + (v14 * v14));
  if (v28 >= 0.0)
  {
    *v10.i32 = (v28 * v28) * (v28 * v28);
    v29 = byte_239F9E548[v10.u8[4] + v9 + byte_239F9E548[v4 + v8]];
    if ((v29 & 4) != 0)
    {
      v30 = v14;
    }

    else
    {
      v30 = v13;
    }

    if ((v29 & 4) == 0)
    {
      v13 = v14;
    }

    v31 = -v30;
    if ((v29 & 1) == 0)
    {
      v31 = v30;
    }

    v32 = -2.0;
    if ((v29 & 2) == 0)
    {
      v32 = 2.0;
    }

    *v10.i32 = *v10.i32 * (v31 + (v13 * v32));
  }

  v33 = 0.5 - vaddv_f32(vmul_f32(v27, v27));
  v34 = 0.0;
  if (v33 >= 0.0)
  {
    v35 = (v33 * v33) * (v33 * v33);
    v36 = v27.f32[1];
    if ((byte_239F9E548[v10.u8[4] + 1 + byte_239F9E548[v4 + 1]] & 4) != 0)
    {
      v37 = v27.f32[0];
    }

    else
    {
      v37 = v27.f32[1];
    }

    if ((byte_239F9E548[v10.u8[4] + 1 + byte_239F9E548[v4 + 1]] & 4) == 0)
    {
      v36 = v27.f32[0];
    }

    v38 = -v37;
    if ((byte_239F9E548[v10.u8[4] + 1 + byte_239F9E548[v4 + 1]] & 1) == 0)
    {
      v38 = v37;
    }

    v39 = -2.0;
    if ((byte_239F9E548[v10.u8[4] + 1 + byte_239F9E548[v4 + 1]] & 2) == 0)
    {
      v39 = 2.0;
    }

    v34 = v35 * (v38 + (v36 * v39));
  }

  return ((*v10.i32 + v22) + v34) * 40.0;
}

void sub_239F3C30C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  _Block_object_dispose(&a23, 8);

  if (__p)
  {
    a28 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_239F3D66C(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, double a9, double a10, double a11, float32x4_t a12, float32x4_t a13, float32x4_t a14, float32x4_t a15, uint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, uint64_t a22, uint64_t a23, unint64_t a24, uint64_t a25, const char *a26)
{
  if (a2)
  {
    v29 = result;
    v30 = 0;
    result = a23;
    v37 = "ed";
    v38 = xmmword_239F9C090;
    v39 = xmmword_239F9C090;
    v40 = xmmword_239F9AD10;
    do
    {
      v41 = *(v29 + v30);
      v42 = *(v29 + v30 + 1);
      v43 = *(v29 + v30 + 2);
      if (v41 * a4 + 12 <= a5 && v42 * a4 + 12 <= a5 && v43 * a4 + 12 <= a5)
      {
        v46 = v41 * a17 + 8 > a18 || v42 * a17 + 8 > a18;
        if (!v46 && v43 * a17 + 8 <= a18)
        {
          v48 = *(a16 + v41 * a17);
          v49 = vsub_f32(*(a16 + v42 * a17), v48);
          v50 = vsub_f32(*(a16 + v43 * a17), v48);
          v51 = vmul_f32(vrev64_s32(v50), v49);
          v52 = vsub_f32(v51, vdup_lane_s32(v51, 1)).f32[0];
          if (v52 == 0.0)
          {
            a13 = 0uLL;
            a12 = 0uLL;
          }

          else
          {
            v53 = a3 + v41 * a4;
            a12.i64[0] = *v53;
            a12.i32[2] = *(v53 + 8);
            v54 = a3 + v42 * a4;
            a13.i64[0] = *v54;
            a13.i32[2] = *(v54 + 8);
            v55 = a3 + v43 * a4;
            a14.i64[0] = *v55;
            a14.i32[2] = *(v55 + 8);
            v56 = vsubq_f32(a14, a12);
            v57 = vsubq_f32(a13, a12);
            v58 = 1.0 / v52;
            a12 = vmulq_n_f32(vmlaq_lane_f32(vnegq_f32(vmulq_lane_f32(v56, v49, 1)), v57, v50, 1), v58);
            a13 = vmulq_n_f32(vmlaq_n_f32(vnegq_f32(vmulq_n_f32(v57, v50.f32[0])), v56, v49.f32[0]), v58);
            a12.i32[3] = 0;
          }

          v59 = vmulq_f32(a12, a12);
          v60 = vaddv_f32(*v59.f32) + v59.f32[2];
          if (v60 <= COERCE_FLOAT(512))
          {
            v64 = v40;
            v65 = v40;
            v66 = v40;
          }

          else
          {
            v61 = v60;
            v62 = vrsqrte_f32(LODWORD(v60));
            v63 = vmul_f32(vrsqrts_f32(LODWORD(v61), vmul_f32(v62, v62)), v62);
            v64 = vmulq_n_f32(a12, vmul_f32(v63, vrsqrts_f32(LODWORD(v61), vmul_f32(v63, v63))).f32[0]);
            v65 = v64;
            v66 = v64;
          }

          v67 = vmulq_f32(a13, a13);
          v68 = vaddv_f32(*v67.f32) + v67.f32[2];
          a14 = v39;
          v69 = v38;
          if (v68 > COERCE_FLOAT(512))
          {
            v70 = v68;
            v71 = vrsqrte_f32(LODWORD(v68));
            v72 = vmul_f32(vrsqrts_f32(LODWORD(v68), vmul_f32(v71, v71)), v71);
            *a15.f32 = vmul_f32(v72, v72);
            a14 = vmulq_n_f32(a13, vmul_f32(v72, vrsqrts_f32(LODWORD(v70), *a15.f32)).f32[0]);
            v69 = a14;
          }

          v64.i32[3] = a12.i32[3];
          v73 = v66;
          v73.i32[3] = a12.i32[3];
          if (a22)
          {
            if (v41 * result + 12 <= a24)
            {
              v74 = v42 * result;
              if (v42 * result + 12 <= a24)
              {
                v75 = v43 * result;
                if (v43 * result + 12 <= a24)
                {
                  v76 = a22 + v41 * result;
                  *(v76 + 8) = a14.i32[2];
                  *v76 = a14.i64[0];
                  *(a22 + v74) = a14.i64[0];
                  *(a22 + v74 + 8) = a14.i32[2];
                  *(a22 + v75) = v69.i64[0];
                  *(a22 + v75 + 8) = v69.i32[2];
                  v77 = v64;
LABEL_54:
                  if (v41 * a20 + 12 <= a21)
                  {
                    v109 = v42 * a20;
                    if (v42 * a20 + 12 <= a21)
                    {
                      v110 = v43 * a20;
                      if (v43 * a20 + 12 <= a21)
                      {
                        v111 = a19 + v41 * a20;
                        *v111 = v64.i64[0];
                        *(v111 + 8) = v64.i32[2];
                        if (a25 == 786436)
                        {
                          *(v111 + 12) = v64.i32[3];
                          *(a19 + v109) = v77;
                          *(a19 + v110) = v73.i64[0];
                          v112 = (a19 + v110 + 12);
                          *(a19 + v110 + 8) = v73.i32[2];
                          v113 = 3;
                        }

                        else
                        {
                          v114 = a19 + v109;
                          *v114 = v77.i64[0];
                          *(v114 + 8) = v77.i32[2];
                          *(a19 + v110) = v73.i64[0];
                          v112 = (a19 + v110 + 8);
                          v113 = 2;
                        }

                        v132 = v73;
                        *v112 = *(&v132 | (4 * v113));
                      }
                    }
                  }
                }
              }
            }
          }

          else
          {
            if (!a6)
            {
              v115 = v73;
              v116 = v64;
              v117 = v40;
              v118 = v39;
              v119 = v38;
              v120 = a20;
              v121 = a21;
              v122 = result;
              v123 = a24;
              v124 = a25;
              v125 = a3;
              v126 = a7;
              v127 = a8;
              v129 = MEMORY[0x277CBEAD8];
              v130 = a26;
              v107 = objc_opt_class();
              v131 = NSStringFromClass(v107);
              v128 = NSStringFromSelector(v130);
              objc_msgSend_raise_format_(v129, v108, @"ModelIOException", @"[%@ %@]: Must provide either a valid normal pointer or bitangent pointer.", v131, v128);

              v64 = v116;
              v40 = v117;
              v77 = v116;
              a7 = v126;
              a8 = v127;
              a3 = v125;
              a6 = 0;
              a26 = v130;
              a24 = v123;
              a25 = v124;
              a22 = 0;
              result = v122;
              a20 = v120;
              a21 = v121;
              v37 = "[%@ %@]: Tangent data not supplied or could not be created" + 56;
              v39 = v118;
              v38 = v119;
              v73 = v115;
              goto LABEL_54;
            }

            if (v41 * a7 + 12 <= a8 && v42 * a7 + 12 <= a8 && v43 * a7 + 12 <= a8)
            {
              v78 = a6 + v41 * a7;
              a12.i64[0] = *v78;
              v79 = a12;
              v79.i32[2] = *(v78 + 8);
              a12.i32[2] = v79.i32[2];
              v80 = vmulq_f32(a12, v65);
              a15.f32[0] = vaddv_f32(*v80.f32) + v80.f32[2];
              v81 = vmlsq_lane_f32(v66, v79, *a15.f32, 0);
              v82 = vmulq_f32(v81, v81);
              v83 = vaddv_f32(*v82.f32) + v82.f32[2];
              v73 = *(v37 + 209);
              v64 = v73;
              if (v83 > COERCE_FLOAT(512))
              {
                v84 = v83;
                v85 = vrsqrte_f32(LODWORD(v83));
                v86 = vmul_f32(vrsqrts_f32(LODWORD(v84), vmul_f32(v85, v85)), v85);
                v64 = vmulq_n_f32(v81, vmul_f32(v86, vrsqrts_f32(LODWORD(v84), vmul_f32(v86, v86))).f32[0]);
              }

              v87 = a6 + v42 * a7;
              v81.i64[0] = *v87;
              v81.i32[2] = *(v87 + 8);
              v88 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v64, v64), v64, 0xCuLL), a12)), vextq_s8(vuzp1q_s32(a12, a12), a12, 0xCuLL), v64);
              v89 = vmulq_f32(vextq_s8(vuzp1q_s32(v88, v88), v88, 0xCuLL), v69);
              if ((vaddv_f32(*v89.f32) + v89.f32[2]) >= 0.0)
              {
                v90 = 1.0;
              }

              else
              {
                v90 = -1.0;
              }

              v91 = vmulq_f32(v81, v65);
              v91.f32[0] = vaddv_f32(*v91.f32) + v91.f32[2];
              a14 = vmlsq_lane_f32(v66, v81, *v91.f32, 0);
              v92 = vmulq_f32(a14, a14);
              v93 = vaddv_f32(*v92.f32) + v92.f32[2];
              v77 = *(v37 + 209);
              if (v93 > COERCE_FLOAT(512))
              {
                v94 = v93;
                v95 = vrsqrte_f32(LODWORD(v93));
                v96 = vmul_f32(vrsqrts_f32(LODWORD(v94), vmul_f32(v95, v95)), v95);
                v77 = vmulq_n_f32(a14, vmul_f32(v96, vrsqrts_f32(LODWORD(v94), vmul_f32(v96, v96))).f32[0]);
              }

              v97 = a6 + v43 * a7;
              a14.i64[0] = *v97;
              a14.i32[2] = *(v97 + 8);
              v98 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v77, v77), v77, 0xCuLL), v81)), vextq_s8(vuzp1q_s32(v81, v81), v81, 0xCuLL), v77);
              a13 = vmulq_f32(vextq_s8(vuzp1q_s32(v98, v98), v98, 0xCuLL), v69);
              if ((vaddv_f32(*a13.f32) + a13.f32[2]) >= 0.0)
              {
                v99 = 1.0;
              }

              else
              {
                v99 = -1.0;
              }

              v100 = vmulq_f32(a14, v66);
              v100.f32[0] = vaddv_f32(*v100.f32) + v100.f32[2];
              v101 = vmlsq_lane_f32(v66, a14, *v100.f32, 0);
              a15 = vmulq_f32(v101, v101);
              a15.f32[0] = vaddv_f32(*a15.f32) + a15.f32[2];
              if (a15.f32[0] > COERCE_FLOAT(512))
              {
                v102 = a15.i32[0];
                v103 = vrsqrte_f32(a15.u32[0]);
                v104 = vmul_f32(vrsqrts_f32(v102, vmul_f32(v103, v103)), v103);
                *a15.f32 = vmul_f32(v104, vrsqrts_f32(v102, vmul_f32(v104, v104)));
                v73 = vmulq_n_f32(v101, a15.f32[0]);
              }

              *&v64.i32[3] = v90;
              *&v77.i32[3] = v99;
              a12 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v73, v73), v73, 0xCuLL), a14)), vextq_s8(vuzp1q_s32(a14, a14), a14, 0xCuLL), v73);
              v105 = vmulq_f32(vextq_s8(vuzp1q_s32(a12, a12), a12, 0xCuLL), v69);
              if ((vaddv_f32(*v105.f32) + v105.f32[2]) >= 0.0)
              {
                v106 = 1.0;
              }

              else
              {
                v106 = -1.0;
              }

              *&v73.i32[3] = v106;
              goto LABEL_54;
            }
          }
        }
      }

      v30 += 3;
    }

    while (v30 < a2);
  }

  return result;
}

void sub_239F3DCF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31)
{
  v32 = *(v31 - 152);

  _Unwind_Resume(a1);
}

char *sub_239F3DD18(char *result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, double a9, double a10, double a11, float32x4_t a12, float32x4_t a13, float32x4_t a14, float32x4_t a15, uint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, uint64_t a22, uint64_t a23, unint64_t a24, uint64_t a25, const char *a26)
{
  if (a2)
  {
    v35 = (result + 4);
    v36 = 1;
    result = "ed";
    v37 = xmmword_239F9C090;
    v38 = xmmword_239F9C090;
    v39 = xmmword_239F9AD10;
    do
    {
      v40 = *(v35 - 2);
      v41 = *(v35 - 1);
      v42 = *v35;
      if (v40 * a4 + 12 <= a5 && v41 * a4 + 12 <= a5 && v42 * a4 + 12 <= a5)
      {
        v46 = v40 * a17 + 8 > a18 || v41 * a17 + 8 > a18;
        if (!v46 && v42 * a17 + 8 <= a18)
        {
          v48 = *(a16 + v40 * a17);
          v49 = vsub_f32(*(a16 + v41 * a17), v48);
          v50 = vsub_f32(*(a16 + v42 * a17), v48);
          v51 = vmul_f32(vrev64_s32(v50), v49);
          v52 = vsub_f32(v51, vdup_lane_s32(v51, 1)).f32[0];
          if (v52 == 0.0)
          {
            a13 = 0uLL;
            a12 = 0uLL;
          }

          else
          {
            v53 = a3 + v40 * a4;
            a12.i64[0] = *v53;
            a12.i32[2] = *(v53 + 8);
            v54 = a3 + v41 * a4;
            a13.i64[0] = *v54;
            a13.i32[2] = *(v54 + 8);
            v55 = a3 + v42 * a4;
            a14.i64[0] = *v55;
            a14.i32[2] = *(v55 + 8);
            v56 = vsubq_f32(a14, a12);
            v57 = vsubq_f32(a13, a12);
            v58 = 1.0 / v52;
            a12 = vmulq_n_f32(vmlaq_lane_f32(vnegq_f32(vmulq_lane_f32(v56, v49, 1)), v57, v50, 1), v58);
            a13 = vmulq_n_f32(vmlaq_n_f32(vnegq_f32(vmulq_n_f32(v57, v50.f32[0])), v56, v49.f32[0]), v58);
            a12.i32[3] = 0;
          }

          v59 = vmulq_f32(a12, a12);
          v60 = vaddv_f32(*v59.f32) + v59.f32[2];
          if (v60 <= COERCE_FLOAT(512))
          {
            v64 = v39;
            v65 = v39;
            v66 = v39;
          }

          else
          {
            v61 = v60;
            v62 = vrsqrte_f32(LODWORD(v60));
            v63 = vmul_f32(vrsqrts_f32(LODWORD(v61), vmul_f32(v62, v62)), v62);
            v64 = vmulq_n_f32(a12, vmul_f32(v63, vrsqrts_f32(LODWORD(v61), vmul_f32(v63, v63))).f32[0]);
            v65 = v64;
            v66 = v64;
          }

          v67 = vmulq_f32(a13, a13);
          v68 = vaddv_f32(*v67.f32) + v67.f32[2];
          a14 = v38;
          v69 = v37;
          if (v68 > COERCE_FLOAT(512))
          {
            v70 = v68;
            v71 = vrsqrte_f32(LODWORD(v68));
            v72 = vmul_f32(vrsqrts_f32(LODWORD(v68), vmul_f32(v71, v71)), v71);
            *a15.f32 = vmul_f32(v72, v72);
            a14 = vmulq_n_f32(a13, vmul_f32(v72, vrsqrts_f32(LODWORD(v70), *a15.f32)).f32[0]);
            v69 = a14;
          }

          v64.i32[3] = a12.i32[3];
          v73 = v66;
          v73.i32[3] = a12.i32[3];
          if (a22)
          {
            if (v40 * a23 + 12 <= a24)
            {
              v74 = v41 * a23;
              if (v41 * a23 + 12 <= a24)
              {
                v75 = v42 * a23;
                if (v42 * a23 + 12 <= a24)
                {
                  v76 = a22 + v40 * a23;
                  *(v76 + 8) = a14.i32[2];
                  *v76 = a14.i64[0];
                  *(a22 + v74) = a14.i64[0];
                  *(a22 + v74 + 8) = a14.i32[2];
                  *(a22 + v75) = v69.i64[0];
                  *(a22 + v75 + 8) = v69.i32[2];
                  v77 = v64;
LABEL_54:
                  if (v40 * a20 + 12 <= a21)
                  {
                    v109 = v41 * a20;
                    if (v41 * a20 + 12 <= a21)
                    {
                      v110 = v42 * a20;
                      if (v42 * a20 + 12 <= a21)
                      {
                        v111 = a19 + v40 * a20;
                        *v111 = v64.i64[0];
                        *(v111 + 8) = v64.i32[2];
                        if (a25 == 786436)
                        {
                          *(v111 + 12) = v64.i32[3];
                          *(a19 + v109) = v77;
                          *(a19 + v110) = v73.i64[0];
                          v112 = (a19 + v110 + 12);
                          *(a19 + v110 + 8) = v73.i32[2];
                          v113 = 3;
                        }

                        else
                        {
                          v114 = a19 + v109;
                          *v114 = v77.i64[0];
                          *(v114 + 8) = v77.i32[2];
                          *(a19 + v110) = v73.i64[0];
                          v112 = (a19 + v110 + 8);
                          v113 = 2;
                        }

                        v131 = v73;
                        *v112 = *(&v131 | (4 * v113));
                      }
                    }
                  }
                }
              }
            }
          }

          else
          {
            if (!a6)
            {
              v115 = v73;
              v116 = v64;
              v117 = v39;
              v118 = v38;
              v119 = v37;
              v120 = a21;
              v121 = a23;
              v122 = a24;
              v123 = a25;
              v124 = a3;
              v125 = a7;
              v126 = a8;
              v128 = MEMORY[0x277CBEAD8];
              v129 = a26;
              v107 = objc_opt_class();
              v130 = NSStringFromClass(v107);
              v127 = NSStringFromSelector(v129);
              objc_msgSend_raise_format_(v128, v108, @"ModelIOException", @"[%@ %@]: Must provide either a valid normal pointer or bitangent pointer.", v130, v127);

              v64 = v116;
              v39 = v117;
              v77 = v116;
              a7 = v125;
              a8 = v126;
              a3 = v124;
              a6 = 0;
              a26 = v129;
              a24 = v122;
              a25 = v123;
              a22 = 0;
              a23 = v121;
              a21 = v120;
              result = "[%@ %@]: Tangent data not supplied or could not be created" + 56;
              v38 = v118;
              v37 = v119;
              v73 = v115;
              goto LABEL_54;
            }

            if (v40 * a7 + 12 <= a8 && v41 * a7 + 12 <= a8 && v42 * a7 + 12 <= a8)
            {
              v78 = a6 + v40 * a7;
              a12.i64[0] = *v78;
              v79 = a12;
              v79.i32[2] = *(v78 + 8);
              a12.i32[2] = v79.i32[2];
              v80 = vmulq_f32(a12, v65);
              a15.f32[0] = vaddv_f32(*v80.f32) + v80.f32[2];
              v81 = vmlsq_lane_f32(v66, v79, *a15.f32, 0);
              v82 = vmulq_f32(v81, v81);
              v83 = vaddv_f32(*v82.f32) + v82.f32[2];
              v73 = *(result + 209);
              v64 = v73;
              if (v83 > COERCE_FLOAT(512))
              {
                v84 = v83;
                v85 = vrsqrte_f32(LODWORD(v83));
                v86 = vmul_f32(vrsqrts_f32(LODWORD(v84), vmul_f32(v85, v85)), v85);
                v64 = vmulq_n_f32(v81, vmul_f32(v86, vrsqrts_f32(LODWORD(v84), vmul_f32(v86, v86))).f32[0]);
              }

              v87 = a6 + v41 * a7;
              v81.i64[0] = *v87;
              v81.i32[2] = *(v87 + 8);
              v88 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v64, v64), v64, 0xCuLL), a12)), vextq_s8(vuzp1q_s32(a12, a12), a12, 0xCuLL), v64);
              v89 = vmulq_f32(vextq_s8(vuzp1q_s32(v88, v88), v88, 0xCuLL), v69);
              if ((vaddv_f32(*v89.f32) + v89.f32[2]) >= 0.0)
              {
                v90 = 1.0;
              }

              else
              {
                v90 = -1.0;
              }

              v91 = vmulq_f32(v81, v65);
              v91.f32[0] = vaddv_f32(*v91.f32) + v91.f32[2];
              a14 = vmlsq_lane_f32(v66, v81, *v91.f32, 0);
              v92 = vmulq_f32(a14, a14);
              v93 = vaddv_f32(*v92.f32) + v92.f32[2];
              v77 = *(result + 209);
              if (v93 > COERCE_FLOAT(512))
              {
                v94 = v93;
                v95 = vrsqrte_f32(LODWORD(v93));
                v96 = vmul_f32(vrsqrts_f32(LODWORD(v94), vmul_f32(v95, v95)), v95);
                v77 = vmulq_n_f32(a14, vmul_f32(v96, vrsqrts_f32(LODWORD(v94), vmul_f32(v96, v96))).f32[0]);
              }

              v97 = a6 + v42 * a7;
              a14.i64[0] = *v97;
              a14.i32[2] = *(v97 + 8);
              v98 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v77, v77), v77, 0xCuLL), v81)), vextq_s8(vuzp1q_s32(v81, v81), v81, 0xCuLL), v77);
              a13 = vmulq_f32(vextq_s8(vuzp1q_s32(v98, v98), v98, 0xCuLL), v69);
              if ((vaddv_f32(*a13.f32) + a13.f32[2]) >= 0.0)
              {
                v99 = 1.0;
              }

              else
              {
                v99 = -1.0;
              }

              v100 = vmulq_f32(a14, v66);
              v100.f32[0] = vaddv_f32(*v100.f32) + v100.f32[2];
              v101 = vmlsq_lane_f32(v66, a14, *v100.f32, 0);
              a15 = vmulq_f32(v101, v101);
              a15.f32[0] = vaddv_f32(*a15.f32) + a15.f32[2];
              if (a15.f32[0] > COERCE_FLOAT(512))
              {
                v102 = a15.i32[0];
                v103 = vrsqrte_f32(a15.u32[0]);
                v104 = vmul_f32(vrsqrts_f32(v102, vmul_f32(v103, v103)), v103);
                *a15.f32 = vmul_f32(v104, vrsqrts_f32(v102, vmul_f32(v104, v104)));
                v73 = vmulq_n_f32(v101, a15.f32[0]);
              }

              *&v64.i32[3] = v90;
              *&v77.i32[3] = v99;
              a12 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v73, v73), v73, 0xCuLL), a14)), vextq_s8(vuzp1q_s32(a14, a14), a14, 0xCuLL), v73);
              v105 = vmulq_f32(vextq_s8(vuzp1q_s32(a12, a12), a12, 0xCuLL), v69);
              if ((vaddv_f32(*v105.f32) + v105.f32[2]) >= 0.0)
              {
                v106 = 1.0;
              }

              else
              {
                v106 = -1.0;
              }

              *&v73.i32[3] = v106;
              goto LABEL_54;
            }
          }
        }
      }

      v35 += 3;
      v45 = v36 + 2;
      v36 += 3;
    }

    while (v45 < a2);
  }

  return result;
}

void sub_239F3E3A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31)
{
  v32 = *(v31 - 152);

  _Unwind_Resume(a1);
}

char *sub_239F3E3C8(char *result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, double a9, double a10, double a11, float32x4_t a12, float32x4_t a13, float32x4_t a14, float32x4_t a15, uint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, uint64_t a22, uint64_t a23, unint64_t a24, uint64_t a25, const char *a26)
{
  if (a2)
  {
    v35 = (result + 8);
    v36 = 1;
    result = "ed";
    v37 = xmmword_239F9C090;
    v38 = xmmword_239F9C090;
    v39 = xmmword_239F9AD10;
    do
    {
      v40 = *(v35 - 2);
      v41 = *(v35 - 1);
      v42 = *v35;
      if (v40 * a4 + 12 <= a5 && v41 * a4 + 12 <= a5 && v42 * a4 + 12 <= a5)
      {
        v46 = v40 * a17 + 8 > a18 || v41 * a17 + 8 > a18;
        if (!v46 && v42 * a17 + 8 <= a18)
        {
          v48 = *(a16 + v40 * a17);
          v49 = vsub_f32(*(a16 + v41 * a17), v48);
          v50 = vsub_f32(*(a16 + v42 * a17), v48);
          v51 = vmul_f32(vrev64_s32(v50), v49);
          v52 = vsub_f32(v51, vdup_lane_s32(v51, 1)).f32[0];
          if (v52 == 0.0)
          {
            a13 = 0uLL;
            a12 = 0uLL;
          }

          else
          {
            v53 = a3 + v40 * a4;
            a12.i64[0] = *v53;
            a12.i32[2] = *(v53 + 8);
            v54 = a3 + v41 * a4;
            a13.i64[0] = *v54;
            a13.i32[2] = *(v54 + 8);
            v55 = a3 + v42 * a4;
            a14.i64[0] = *v55;
            a14.i32[2] = *(v55 + 8);
            v56 = vsubq_f32(a14, a12);
            v57 = vsubq_f32(a13, a12);
            v58 = 1.0 / v52;
            a12 = vmulq_n_f32(vmlaq_lane_f32(vnegq_f32(vmulq_lane_f32(v56, v49, 1)), v57, v50, 1), v58);
            a13 = vmulq_n_f32(vmlaq_n_f32(vnegq_f32(vmulq_n_f32(v57, v50.f32[0])), v56, v49.f32[0]), v58);
            a12.i32[3] = 0;
          }

          v59 = vmulq_f32(a12, a12);
          v60 = vaddv_f32(*v59.f32) + v59.f32[2];
          if (v60 <= COERCE_FLOAT(512))
          {
            v64 = v39;
            v65 = v39;
            v66 = v39;
          }

          else
          {
            v61 = v60;
            v62 = vrsqrte_f32(LODWORD(v60));
            v63 = vmul_f32(vrsqrts_f32(LODWORD(v61), vmul_f32(v62, v62)), v62);
            v64 = vmulq_n_f32(a12, vmul_f32(v63, vrsqrts_f32(LODWORD(v61), vmul_f32(v63, v63))).f32[0]);
            v65 = v64;
            v66 = v64;
          }

          v67 = vmulq_f32(a13, a13);
          v68 = vaddv_f32(*v67.f32) + v67.f32[2];
          a14 = v38;
          v69 = v37;
          if (v68 > COERCE_FLOAT(512))
          {
            v70 = v68;
            v71 = vrsqrte_f32(LODWORD(v68));
            v72 = vmul_f32(vrsqrts_f32(LODWORD(v68), vmul_f32(v71, v71)), v71);
            *a15.f32 = vmul_f32(v72, v72);
            a14 = vmulq_n_f32(a13, vmul_f32(v72, vrsqrts_f32(LODWORD(v70), *a15.f32)).f32[0]);
            v69 = a14;
          }

          v64.i32[3] = a12.i32[3];
          v73 = v66;
          v73.i32[3] = a12.i32[3];
          if (a22)
          {
            if (v40 * a23 + 12 <= a24)
            {
              v74 = v41 * a23;
              if (v41 * a23 + 12 <= a24)
              {
                v75 = v42 * a23;
                if (v42 * a23 + 12 <= a24)
                {
                  v76 = a22 + v40 * a23;
                  *(v76 + 8) = a14.i32[2];
                  *v76 = a14.i64[0];
                  *(a22 + v74) = a14.i64[0];
                  *(a22 + v74 + 8) = a14.i32[2];
                  *(a22 + v75) = v69.i64[0];
                  *(a22 + v75 + 8) = v69.i32[2];
                  v77 = v64;
LABEL_54:
                  if (v40 * a20 + 12 <= a21)
                  {
                    v109 = v41 * a20;
                    if (v41 * a20 + 12 <= a21)
                    {
                      v110 = v42 * a20;
                      if (v42 * a20 + 12 <= a21)
                      {
                        v111 = a19 + v40 * a20;
                        *v111 = v64.i64[0];
                        *(v111 + 8) = v64.i32[2];
                        if (a25 == 786436)
                        {
                          *(v111 + 12) = v64.i32[3];
                          *(a19 + v109) = v77;
                          *(a19 + v110) = v73.i64[0];
                          v112 = (a19 + v110 + 12);
                          *(a19 + v110 + 8) = v73.i32[2];
                          v113 = 3;
                        }

                        else
                        {
                          v114 = a19 + v109;
                          *v114 = v77.i64[0];
                          *(v114 + 8) = v77.i32[2];
                          *(a19 + v110) = v73.i64[0];
                          v112 = (a19 + v110 + 8);
                          v113 = 2;
                        }

                        v131 = v73;
                        *v112 = *(&v131 | (4 * v113));
                      }
                    }
                  }
                }
              }
            }
          }

          else
          {
            if (!a6)
            {
              v115 = v73;
              v116 = v64;
              v117 = v39;
              v118 = v38;
              v119 = v37;
              v120 = a21;
              v121 = a23;
              v122 = a24;
              v123 = a25;
              v124 = a3;
              v125 = a7;
              v126 = a8;
              v128 = MEMORY[0x277CBEAD8];
              v129 = a26;
              v107 = objc_opt_class();
              v130 = NSStringFromClass(v107);
              v127 = NSStringFromSelector(v129);
              objc_msgSend_raise_format_(v128, v108, @"ModelIOException", @"[%@ %@]: Must provide either a valid normal pointer or bitangent pointer.", v130, v127);

              v64 = v116;
              v39 = v117;
              v77 = v116;
              a7 = v125;
              a8 = v126;
              a3 = v124;
              a6 = 0;
              a26 = v129;
              a24 = v122;
              a25 = v123;
              a22 = 0;
              a23 = v121;
              a21 = v120;
              result = "[%@ %@]: Tangent data not supplied or could not be created" + 56;
              v38 = v118;
              v37 = v119;
              v73 = v115;
              goto LABEL_54;
            }

            if (v40 * a7 + 12 <= a8 && v41 * a7 + 12 <= a8 && v42 * a7 + 12 <= a8)
            {
              v78 = a6 + v40 * a7;
              a12.i64[0] = *v78;
              v79 = a12;
              v79.i32[2] = *(v78 + 8);
              a12.i32[2] = v79.i32[2];
              v80 = vmulq_f32(a12, v65);
              a15.f32[0] = vaddv_f32(*v80.f32) + v80.f32[2];
              v81 = vmlsq_lane_f32(v66, v79, *a15.f32, 0);
              v82 = vmulq_f32(v81, v81);
              v83 = vaddv_f32(*v82.f32) + v82.f32[2];
              v73 = *(result + 209);
              v64 = v73;
              if (v83 > COERCE_FLOAT(512))
              {
                v84 = v83;
                v85 = vrsqrte_f32(LODWORD(v83));
                v86 = vmul_f32(vrsqrts_f32(LODWORD(v84), vmul_f32(v85, v85)), v85);
                v64 = vmulq_n_f32(v81, vmul_f32(v86, vrsqrts_f32(LODWORD(v84), vmul_f32(v86, v86))).f32[0]);
              }

              v87 = a6 + v41 * a7;
              v81.i64[0] = *v87;
              v81.i32[2] = *(v87 + 8);
              v88 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v64, v64), v64, 0xCuLL), a12)), vextq_s8(vuzp1q_s32(a12, a12), a12, 0xCuLL), v64);
              v89 = vmulq_f32(vextq_s8(vuzp1q_s32(v88, v88), v88, 0xCuLL), v69);
              if ((vaddv_f32(*v89.f32) + v89.f32[2]) >= 0.0)
              {
                v90 = 1.0;
              }

              else
              {
                v90 = -1.0;
              }

              v91 = vmulq_f32(v81, v65);
              v91.f32[0] = vaddv_f32(*v91.f32) + v91.f32[2];
              a14 = vmlsq_lane_f32(v66, v81, *v91.f32, 0);
              v92 = vmulq_f32(a14, a14);
              v93 = vaddv_f32(*v92.f32) + v92.f32[2];
              v77 = *(result + 209);
              if (v93 > COERCE_FLOAT(512))
              {
                v94 = v93;
                v95 = vrsqrte_f32(LODWORD(v93));
                v96 = vmul_f32(vrsqrts_f32(LODWORD(v94), vmul_f32(v95, v95)), v95);
                v77 = vmulq_n_f32(a14, vmul_f32(v96, vrsqrts_f32(LODWORD(v94), vmul_f32(v96, v96))).f32[0]);
              }

              v97 = a6 + v42 * a7;
              a14.i64[0] = *v97;
              a14.i32[2] = *(v97 + 8);
              v98 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v77, v77), v77, 0xCuLL), v81)), vextq_s8(vuzp1q_s32(v81, v81), v81, 0xCuLL), v77);
              a13 = vmulq_f32(vextq_s8(vuzp1q_s32(v98, v98), v98, 0xCuLL), v69);
              if ((vaddv_f32(*a13.f32) + a13.f32[2]) >= 0.0)
              {
                v99 = 1.0;
              }

              else
              {
                v99 = -1.0;
              }

              v100 = vmulq_f32(a14, v66);
              v100.f32[0] = vaddv_f32(*v100.f32) + v100.f32[2];
              v101 = vmlsq_lane_f32(v66, a14, *v100.f32, 0);
              a15 = vmulq_f32(v101, v101);
              a15.f32[0] = vaddv_f32(*a15.f32) + a15.f32[2];
              if (a15.f32[0] > COERCE_FLOAT(512))
              {
                v102 = a15.i32[0];
                v103 = vrsqrte_f32(a15.u32[0]);
                v104 = vmul_f32(vrsqrts_f32(v102, vmul_f32(v103, v103)), v103);
                *a15.f32 = vmul_f32(v104, vrsqrts_f32(v102, vmul_f32(v104, v104)));
                v73 = vmulq_n_f32(v101, a15.f32[0]);
              }

              *&v64.i32[3] = v90;
              *&v77.i32[3] = v99;
              a12 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v73, v73), v73, 0xCuLL), a14)), vextq_s8(vuzp1q_s32(a14, a14), a14, 0xCuLL), v73);
              v105 = vmulq_f32(vextq_s8(vuzp1q_s32(a12, a12), a12, 0xCuLL), v69);
              if ((vaddv_f32(*v105.f32) + v105.f32[2]) >= 0.0)
              {
                v106 = 1.0;
              }

              else
              {
                v106 = -1.0;
              }

              *&v73.i32[3] = v106;
              goto LABEL_54;
            }
          }
        }
      }

      v35 += 3;
      v45 = v36 + 2;
      v36 += 3;
    }

    while (v45 < a2);
  }

  return result;
}

void sub_239F3EA4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31)
{
  v32 = *(v31 - 152);

  _Unwind_Resume(a1);
}

uint64_t sub_239F3F98C(float32x4_t ***a1)
{
  v52 = 1065353216;
  v50 = 0u;
  v51 = 0u;
  v1 = *a1;
  v2 = a1[1];
  if (*a1 != v2)
  {
    do
    {
      v47 = *v1;
      v3 = sub_239E9D534(&v50, v47 + 4);
      sub_239E9BFD8(&v3[2], &v47);
      v4 = sub_239E9D534(&v50, v47 + 5);
      sub_239E9BFD8(&v4[2], &v47);
      *&v38 = v47 + 6;
      v5 = sub_239E9D534(&v50, v47 + 6);
      sub_239E9BFD8(&v5[2], &v47);
      ++v1;
    }

    while (v1 != v2);
    v6 = v51;
    if (v51)
    {
      __asm { FMOV            V0.4S, #1.0 }

      do
      {
        v13 = v6[2].i64[0];
        v12 = v6[2].i64[1];
        v14 = (v12 - v13) >> 3;
        if (v14 >= 0x40)
        {
          v14 = 64;
        }

        v15 = v6[1];
        v47 = 0;
        v48 = 0;
        v49 = 0;
        if (v12 == v13)
        {
          v44 = &v44;
          v45 = &v44;
          v46 = 0;
          v41 = 0;
          v42 = 0;
          v43 = 0;
        }

        else
        {
          v31 = v15;
          v16 = 0;
          v30 = v14;
          if (v14 <= 1)
          {
            v17 = 1;
          }

          else
          {
            v17 = v14;
          }

          do
          {
            v18 = sub_239EC3D28(*(v6[2].i64[0] + v16));
            v19 = vmulq_f32(v18, v18);
            if ((vaddv_f32(*v19.f32) + v19.f32[2]) >= 1.0e-12)
            {
              LODWORD(v38) = 0;
            }

            else
            {
              LODWORD(v38) = -1;
            }

            sub_239E73254(&v47, &v38);
            v16 += 8;
          }

          while (8 * v17 != v16);
          for (i = 0; i != v17; ++i)
          {
            if (!v47->i32[i])
            {
              *&v38 = &v38;
              *(&v38 + 1) = &v38;
              *&v39 = 0;
              sub_239EC3D28(*(v6[2].i64[0] + 8 * i));
              v21 = v6[2].i64[0];
              operator new();
            }
          }

          v22 = 0;
          v44 = &v44;
          v45 = &v44;
          v46 = 0;
          v41 = 0;
          v42 = 0;
          v43 = 0;
          do
          {
            if (v47->i32[v22] == -1)
            {
              v23 = v6[2].i64[0];
              operator new();
            }

            LOBYTE(v38) = 0;
            sub_239EA84D8(&v41, &v38);
            ++v22;
          }

          while (v17 != v22);
          if (v46 != v30)
          {
            v24 = 0;
            v38 = 0u;
            v39 = 0u;
            v40 = 1065353216;
            do
            {
              v35 = 0;
              v36 = 0;
              v37 = 0;
              sub_239E8E4FC(&v35, (*(v6[2].i64[0] + 8 * v24) + 64));
              sub_239E8E4FC(&v35, (*(v6[2].i64[0] + 8 * v24) + 80));
              sub_239E8E4FC(&v35, (*(v6[2].i64[0] + 8 * v24) + 96));
              for (j = 0; j != 48; j += 16)
              {
                if (sub_239E99C68(&v38, (v35 + j)))
                {
                  __p = v35 + j;
                  v26 = sub_239E9D534(&v38, (v35 + j));
                  sub_239E9BFD8(&v26[2], (v6[2].i64[0] + 8 * v24));
                }

                else
                {
                  __p = 0;
                  v33 = 0;
                  v34 = 0;
                  sub_239E9BFD8(&__p, (v6[2].i64[0] + 8 * v24));
                  v53 = v35 + j;
                  v27 = sub_239E9D534(&v38, (v35 + j)) + 2;
                  if (v27 != &__p)
                  {
                    sub_239F44724(v27, __p, v33, (v33 - __p) >> 3);
                  }

                  if (__p)
                  {
                    v33 = __p;
                    operator delete(__p);
                  }
                }
              }

              if (v35)
              {
                v36 = v35;
                operator delete(v35);
              }

              ++v24;
            }

            while (v24 != v17);
            while (v46)
            {
              v28 = v45[2];
              v35 = 0;
              v36 = 0;
              v37 = 0;
              sub_239F40070(v28, &v44, &v38, &v35, v30, v31);
              if (v35)
              {
                v36 = v35;
                operator delete(v35);
              }
            }

            v48 = v47;
            sub_239E9D4AC(&v38);
            goto LABEL_43;
          }
        }

        v48 = v47;
LABEL_43:
        if (v41)
        {
          operator delete(v41);
        }

        sub_239E9876C(&v44);
        if (v47)
        {
          v48 = v47;
          operator delete(v47);
        }

        v6 = v6->i64[0];
      }

      while (v6);
    }
  }

  return sub_239E9D4AC(&v50);
}

void sub_239F3FFC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_239E9D4AC(&a25);
  if (a30)
  {
    operator delete(a30);
  }

  sub_239E9876C(&a33);
  v35 = *(v33 - 200);
  if (v35)
  {
    *(v33 - 192) = v35;
    operator delete(v35);
  }

  sub_239E9D4AC(v33 - 176);
  _Unwind_Resume(a1);
}

void sub_239F40070(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, float32x4_t a6)
{
  v74 = a1;
  v10 = *(a1 + 64);
  v11 = vsubq_f32(v10, a6);
  v12 = vmulq_f32(v11, v11);
  v13 = sqrtf(vaddv_f32(*v12.f32) + v12.f32[2]);
  if (v13 >= 0.000001)
  {
    v14 = *(a1 + 80);
    v20 = vsubq_f32(v14, a6);
    v21 = vmulq_f32(v20, v20);
    v22 = sqrtf(vaddv_f32(*v21.f32) + v21.f32[2]);
    v23 = v22 < 0.000001;
    if (v22 < 0.000001)
    {
      v15 = *(a1 + 96);
      v25 = 128;
    }

    else
    {
      v25 = 144;
      v15 = *(a1 + 80);
    }

    v26 = *(a1 + v25);
    v72 = *(a1 + 64);
    v73 = v15;
    v17 = a4 + 1;
    v16 = a4[1];
    v18 = (v16 - *a4) >> 3;
    if (v18 == a5)
    {
      v19 = 144;
      if (v22 < 0.000001)
      {
        v19 = 128;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v14 = *(a1 + 80);
    v15 = *(a1 + 96);
    v72 = v14;
    v73 = v15;
    v17 = a4 + 1;
    v16 = a4[1];
    v18 = (v16 - *a4) >> 3;
    if (v18 == a5)
    {
      v19 = 112;
LABEL_11:
      *(a1 + v19) = xmmword_239F9C090;
      sub_239EF4794(a2, &v74);
      return;
    }

    v23 = 0;
    v24 = *(a1 + 112);
  }

  v27 = vmulq_f32(*(a1 + 192), *(a1 + 192));
  if ((vaddv_f32(*v27.f32) + v27.f32[2]) <= 1.0e-12)
  {
    if (v18)
    {
      v28 = *(v16 - 8);
      __p = 0;
      v70 = 0;
      v71 = 0;
      v29 = vsubq_f32(v28[4], v15);
      v30 = vmulq_f32(v29, v29);
      if (sqrtf(vaddv_f32(*v30.f32) + v30.f32[2]) >= 0.000001 && (v31 = vsubq_f32(v28[5], v15), v32 = vmulq_f32(v31, v31), sqrtf(vaddv_f32(*v32.f32) + v32.f32[2]) >= 0.000001) && (v33 = vsubq_f32(v28[6], v15), v34 = vmulq_f32(v33, v33), sqrtf(vaddv_f32(*v34.f32) + v34.f32[2]) >= 0.000001))
      {
        v75 = &v73;
        v35 = sub_239E9D534(a3, &v73);
      }

      else
      {
        v75 = &v72;
        v35 = sub_239E9D534(a3, &v72);
      }

      if (&__p != &v35[2])
      {
        sub_239F44724(&__p, v35[2].i64[0], v35[2].i64[1], (v35[2].i64[1] - v35[2].i64[0]) >> 3);
      }

      v36 = __p;
      v37 = v70 - __p;
      if (v70 == __p)
      {
        if (!__p)
        {
          return;
        }

LABEL_64:
        v70 = v36;
        operator delete(v36);
        return;
      }

      v38 = 0;
      v39 = v37 >> 3;
      if ((v37 >> 3) <= 1)
      {
        v39 = 1;
      }

      while (*(__p + v38) == v74)
      {
        if (v39 == ++v38)
        {
          goto LABEL_63;
        }
      }

      sub_239E9BFD8(a4, &v74);
      *v44.i64 = sub_239F40070(*(__p + v38), a2, a3, a4, a5, a6);
      v45 = v44;
      *v17 -= 8;
      v46 = vmulq_f32(v44, v44);
      if ((vaddv_f32(*v46.f32) + v46.f32[2]) != 0.0)
      {
        v47 = 144;
        if (v23)
        {
          v47 = 128;
        }

        if (v13 < 0.000001)
        {
          v47 = 112;
        }

        *(v74 + v47) = v45;
        sub_239EF4794(a2, &v74);
      }

LABEL_63:
      v36 = __p;
      if (!__p)
      {
        return;
      }

      goto LABEL_64;
    }

    if (v13 >= 0.000001)
    {
      if (v23)
      {
        v48 = vsubq_f32(v14, v10);
        v49 = vmulq_f32(v48, v48);
        v50 = vsubq_f32(v14, *(a1 + 96));
        v51 = vmulq_f32(v50, v50);
        *v51.i8 = vsqrt_f32(vadd_f32(vadd_f32(vzip1_s32(*v49.i8, *v51.i8), vzip2_s32(*v49.i8, *v51.i8)), vzip1_s32(*&vextq_s8(v49, v49, 8uLL), *&vextq_s8(v51, v51, 8uLL))));
        if (vcgt_f32(*v51.i8, vdup_lane_s32(*v51.i8, 1)).u8[0])
        {
          v72 = *(a1 + 96);
          v73 = v10;
        }
      }

      else
      {
        v52 = *(a1 + 96);
        v53 = vsubq_f32(v52, v10);
        v54 = vmulq_f32(v53, v53);
        v55 = vsubq_f32(v52, v14);
        v56 = vmulq_f32(v55, v55);
        *v56.i8 = vsqrt_f32(vadd_f32(vadd_f32(vzip1_s32(*v54.i8, *v56.i8), vzip2_s32(*v54.i8, *v56.i8)), vzip1_s32(*&vextq_s8(v54, v54, 8uLL), *&vextq_s8(v56, v56, 8uLL))));
        if (vcgt_f32(*v56.i8, vdup_lane_s32(*v56.i8, 1)).u8[0])
        {
          v72 = v14;
          v73 = v10;
        }
      }
    }

    else
    {
      v40 = vsubq_f32(v10, v14);
      v41 = vmulq_f32(v40, v40);
      v42 = vsubq_f32(v10, *(a1 + 96));
      v43 = vmulq_f32(v42, v42);
      *v43.i8 = vsqrt_f32(vadd_f32(vadd_f32(vzip1_s32(*v41.i8, *v43.i8), vzip2_s32(*v41.i8, *v43.i8)), vzip1_s32(*&vextq_s8(v41, v41, 8uLL), *&vextq_s8(v43, v43, 8uLL))));
      if (vcgt_f32(*v43.i8, vdup_lane_s32(*v43.i8, 1)).u8[0])
      {
        v72 = *(a1 + 96);
        v73 = v14;
      }
    }

    v75 = &v73;
    v57 = sub_239E9D534(a3, &v73);
    v70 = 0;
    v71 = 0;
    __p = 0;
    sub_239EC4064(&__p, v57[2].i64[0], v57[2].i64[1], (v57[2].i64[1] - v57[2].i64[0]) >> 3);
    if (v70 == __p)
    {
      goto LABEL_49;
    }

    v58 = 0;
    v59 = (v70 - __p) >> 3;
    if (v59 <= 1)
    {
      v59 = 1;
    }

    while (*(__p + v58) == v74)
    {
      if (v59 == ++v58)
      {
        goto LABEL_49;
      }
    }

    sub_239E9BFD8(a4, &v74);
    *v60.i64 = sub_239F40070(*(__p + v58), a2, a3, a4, a5, a6);
    *v17 -= 8;
    v61 = vmulq_f32(v60, v60);
    if ((vaddv_f32(*v61.f32) + v61.f32[2]) == 0.0)
    {
LABEL_49:
      v75 = &v72;
      v62 = sub_239E9D534(a3, &v72);
      if (&__p != &v62[2])
      {
        sub_239F44724(&__p, v62[2].i64[0], v62[2].i64[1], (v62[2].i64[1] - v62[2].i64[0]) >> 3);
      }

      if (v70 == __p)
      {
        goto LABEL_58;
      }

      v63 = 0;
      v64 = (v70 - __p) >> 3;
      if (v64 <= 1)
      {
        v64 = 1;
      }

      while (*(__p + v63) == v74)
      {
        if (v64 == ++v63)
        {
          goto LABEL_58;
        }
      }

      sub_239E9BFD8(a4, &v74);
      *v60.i64 = sub_239F40070(*(__p + v63), a2, a3, a4, a5, a6);
      *v17 -= 8;
      v65 = vmulq_f32(v60, v60);
      if ((vaddv_f32(*v65.f32) + v65.f32[2]) == 0.0)
      {
LABEL_58:
        v66 = 144;
        if (v23)
        {
          v66 = 128;
        }

        if (v13 < 0.000001)
        {
          v66 = 112;
        }

        *(v74 + v66) = xmmword_239F9C090;
        sub_239EF4794(a2, &v74);
        goto LABEL_63;
      }

      v67 = 144;
      if (v23)
      {
        v67 = 128;
      }

      if (v13 < 0.000001)
      {
        v67 = 112;
      }
    }

    else
    {
      v67 = 144;
      if (v23)
      {
        v67 = 128;
      }

      if (v13 < 0.000001)
      {
        v67 = 112;
      }
    }

    *(v74 + v67) = v60;
    sub_239EF4794(a2, &v74);
    goto LABEL_63;
  }
}

void sub_239F40714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_239F40980(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = 0;
  v25 = 0;
  v26 = 0;
  if (a2)
  {
    v8 = (a3 + *a1 * a4);
    v9 = *v8;
    v10 = *(v8 + 2);
    v11 = (a3 + a1[1] * a4);
    v12 = *v11;
    v13 = *(v11 + 2);
    v14 = (a3 + a1[2] * a4);
    v15 = *v14;
    v16 = *(v14 + 2);
    operator new();
  }

  sub_239F3F98C(&v24);
  v17 = v24;
  v18 = v25;
  if (v24 != v25)
  {
    do
    {
      v19 = *v17++;
      v20 = v19[1];
      v21 = (a5 + *v19 * a6);
      *v21 = v19[28];
      v21[1] = v19[29];
      v21[2] = v19[30];
      v22 = (a5 + v20 * a6);
      *v22 = v19[32];
      v22[1] = v19[33];
      v23 = (a5 + v19[2] * a6);
      v22[2] = v19[34];
      *v23 = v19[36];
      v23[1] = v19[37];
      v23[2] = v19[38];
      MEMORY[0x23EE802C0]();
    }

    while (v17 != v18);
    v17 = v24;
  }

  if (v17)
  {
    v25 = v17;
    operator delete(v17);
  }
}

void sub_239F40C54(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 128);
  if (v3)
  {
    *(v1 - 120) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_239F40C94(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = 0;
  v25 = 0;
  v26 = 0;
  if (a2)
  {
    v8 = (a3 + *a1 * a4);
    v9 = *v8;
    v10 = *(v8 + 2);
    v11 = (a3 + a1[1] * a4);
    v12 = *v11;
    v13 = *(v11 + 2);
    v14 = (a3 + a1[2] * a4);
    v15 = *v14;
    v16 = *(v14 + 2);
    operator new();
  }

  sub_239F3F98C(&v24);
  v17 = v24;
  v18 = v25;
  if (v24 != v25)
  {
    do
    {
      v19 = *v17++;
      v20 = v19[1];
      v21 = (a5 + *v19 * a6);
      *v21 = v19[28];
      v21[1] = v19[29];
      v21[2] = v19[30];
      v22 = (a5 + v20 * a6);
      *v22 = v19[32];
      v22[1] = v19[33];
      v23 = (a5 + v19[2] * a6);
      v22[2] = v19[34];
      *v23 = v19[36];
      v23[1] = v19[37];
      v23[2] = v19[38];
      MEMORY[0x23EE802C0]();
    }

    while (v17 != v18);
    v17 = v24;
  }

  if (v17)
  {
    v25 = v17;
    operator delete(v17);
  }
}

void sub_239F40F6C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 128);
  if (v3)
  {
    *(v1 - 120) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_239F40FAC(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = 0;
  v25 = 0;
  v26 = 0;
  if (a2)
  {
    v8 = (a3 + *a1 * a4);
    v9 = *v8;
    v10 = *(v8 + 2);
    v11 = (a3 + a1[1] * a4);
    v12 = *v11;
    v13 = *(v11 + 2);
    v14 = (a3 + a1[2] * a4);
    v15 = *v14;
    v16 = *(v14 + 2);
    operator new();
  }

  sub_239F3F98C(&v24);
  v17 = v24;
  v18 = v25;
  if (v24 != v25)
  {
    do
    {
      v19 = *v17++;
      v20 = v19[1];
      v21 = (a5 + *v19 * a6);
      *v21 = v19[28];
      v21[1] = v19[29];
      v21[2] = v19[30];
      v22 = (a5 + v20 * a6);
      *v22 = v19[32];
      v22[1] = v19[33];
      v23 = (a5 + v19[2] * a6);
      v22[2] = v19[34];
      *v23 = v19[36];
      v23[1] = v19[37];
      v23[2] = v19[38];
      MEMORY[0x23EE802C0]();
    }

    while (v17 != v18);
    v17 = v24;
  }

  if (v17)
  {
    v25 = v17;
    operator delete(v17);
  }
}

void sub_239F41280(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 128);
  if (v3)
  {
    *(v1 - 120) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_239F41ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

void sub_239F42F84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, uint64_t a53, char a54, void *a55)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_239E79AAC(&a54, a55);
  _Unwind_Resume(a1);
}

uint64_t sub_239F43188(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v8 = 0;
    v9 = (a1 + 8);
    do
    {
      v10 = *(a3 + v8);
      v11 = *v9;
      if (!*v9)
      {
        goto LABEL_11;
      }

      v12 = v9;
      do
      {
        v13 = *(v11 + 28);
        v14 = v13 >= v10;
        v15 = v13 < v10;
        if (v14)
        {
          v12 = v11;
        }

        v11 = *(v11 + 8 * v15);
      }

      while (v11);
      if (v12 == v9 || *(v12 + 7) > v10)
      {
LABEL_11:
        v17 = *(a1 + 16);
        v18 = &v17;
        *(sub_239F44654(a1, &v17) + 8) = v10;
        v10 = *(a3 + v8);
      }

      LODWORD(v18) = v10;
      sub_239E73254(a2, &v18);
      ++v8;
    }

    while (v8 != a4);
  }

  return 1;
}

uint64_t sub_239F43280(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v8 = 0;
    v9 = (a1 + 8);
    do
    {
      v10 = *(a3 + 2 * v8);
      v11 = *v9;
      if (!*v9)
      {
        goto LABEL_11;
      }

      v12 = v9;
      do
      {
        v13 = *(v11 + 28);
        v14 = v13 >= v10;
        v15 = v13 < v10;
        if (v14)
        {
          v12 = v11;
        }

        v11 = *(v11 + 8 * v15);
      }

      while (v11);
      if (v12 == v9 || *(v12 + 7) > v10)
      {
LABEL_11:
        v17 = *(a1 + 16);
        v18 = &v17;
        *(sub_239F44654(a1, &v17) + 8) = v10;
        v10 = *(a3 + 2 * v8);
      }

      LODWORD(v18) = v10;
      sub_239E73254(a2, &v18);
      ++v8;
    }

    while (v8 != a4);
  }

  return 1;
}

uint64_t sub_239F43378(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v8 = 0;
    v9 = (a1 + 8);
    do
    {
      v10 = *v9;
      v11 = *(a3 + 4 * v8);
      if (!*v9)
      {
        goto LABEL_11;
      }

      v12 = v9;
      do
      {
        v13 = *(v10 + 28);
        v14 = v13 >= v11;
        v15 = v13 < v11;
        if (v14)
        {
          v12 = v10;
        }

        v10 = *(v10 + 8 * v15);
      }

      while (v10);
      if (v12 == v9 || v11 < *(v12 + 7))
      {
LABEL_11:
        v27 = *(a1 + 16);
        v28 = &v27;
        *(sub_239F44654(a1, &v27) + 8) = v11;
      }

      v17 = a2[1];
      v16 = a2[2];
      if (v17 >= v16)
      {
        v19 = *a2;
        v20 = v17 - *a2;
        v21 = v20 >> 2;
        v22 = (v20 >> 2) + 1;
        if (v22 >> 62)
        {
          sub_239E797B4();
        }

        v23 = v16 - v19;
        if (v23 >> 1 > v22)
        {
          v22 = v23 >> 1;
        }

        v14 = v23 >= 0x7FFFFFFFFFFFFFFCLL;
        v24 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v14)
        {
          v24 = v22;
        }

        if (v24)
        {
          sub_239E79984(a2, v24);
        }

        *(4 * v21) = *(a3 + 4 * v8);
        v18 = 4 * v21 + 4;
        memcpy(0, v19, v20);
        v25 = *a2;
        *a2 = 0;
        a2[1] = v18;
        a2[2] = 0;
        if (v25)
        {
          operator delete(v25);
        }
      }

      else
      {
        *v17 = *(a3 + 4 * v8);
        v18 = (v17 + 4);
      }

      a2[1] = v18;
      ++v8;
    }

    while (v8 != a4);
  }

  return 1;
}

void sub_239F43788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_239F44540(va);
  _Unwind_Resume(a1);
}

void sub_239F4386C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_239F44540(va);
  _Unwind_Resume(a1);
}

void sub_239F4399C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_239F44540(va);

  _Unwind_Resume(a1);
}

void sub_239F43ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_239F44540(va);

  _Unwind_Resume(a1);
}

uint64_t sub_239F44540(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (v2)
  {
    *(a1 + 168) = v2;
    operator delete(v2);
  }

  sub_239F445CC(a1 + 120);
  v3 = *(a1 + 96);
  if (v3)
  {
    *(a1 + 104) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    *(a1 + 56) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    *(a1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v7;
    operator delete(v7);
  }

  return a1;
}

uint64_t sub_239F445CC(uint64_t a1)
{
  sub_239F44608(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_239F44608(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[6];
      if (v4)
      {
        v2[7] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t *sub_239F44654(uint64_t a1, unsigned int *a2)
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
      v5 = *(v2 + 28);
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

void *sub_239F44724(void *result, char *__src, char *a3, unint64_t a4)
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

      sub_239E7C648(v6, v10);
    }

    sub_239E797B4();
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

uint64_t sub_239F44850(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  *a1 = &unk_284D17088;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = xmmword_239F9E7D0;
  *(a1 + 104) = xmmword_239F9E7E0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 144) = _Q0;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v11[0] = xmmword_239F9E810;
  v11[1] = unk_239F9E820;
  v8 = CGColorCreate(DeviceRGB, v11);
  sub_239F44948(a1, v8);
  CGColorRelease(v8);
  CGColorSpaceRelease(DeviceRGB);
  v9 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_239F44948(uint64_t a1, CGColor *a2)
{
  v3 = *(a1 + 16);
  if (v3 != a2)
  {
    CGColorRelease(v3);
    *(a1 + 16) = CGColorRetain(a2);
    __asm { FMOV            V0.4S, #1.0 }

    v15 = _Q0;
    if (a2)
    {
      Components = CGColorGetComponents(a2);
      _Q0 = *Components;
      *&_Q0.f64[0] = vcvt_f32_f64(*Components);
      v11 = Components[1].f64[0];
      *&_Q0.f64[1] = v11;
    }

    *(a1 + 64) = _Q0;
    *v12.i32 = sub_239E848C4(a2);
    *(a1 + 48) = v12.i32[0];
    v13 = v15;
    if (*v12.i32 > 0.0)
    {
      __asm { FMOV            V2.4S, #1.0 }

      v13 = vmulq_f32(*(a1 + 64), vdivq_f32(_Q2, vdupq_lane_s32(v12, 0)));
    }

    *(a1 + 32) = v13;
  }
}

uint64_t sub_239F449EC(uint64_t a1)
{
  *a1 = &unk_284D17088;
  CGColorRelease(*(a1 + 16));
  CGColorRelease(*(a1 + 80));
  return a1;
}

CGColor *sub_239F44A48(uint64_t a1, CGColor *a2)
{
  result = *(a1 + 80);
  if (result != a2)
  {
    CGColorRelease(result);
    result = CGColorRetain(a2);
    *(a1 + 80) = result;
  }

  return result;
}

void sub_239F44A88(uint64_t a1, float32x4_t *a2, int32x2_t *a3, int32x2_t *a4, uint64_t a5)
{
  v7 = vaddq_f32(a2[2], a2[3]);
  v8 = vmulq_f32(v7, v7);
  *&v9 = vaddv_f32(*v8.f32) + v8.f32[2];
  *v8.f32 = vrsqrte_f32(v9);
  *v8.f32 = vmul_f32(vrsqrts_f32(v9, vmul_f32(*v8.f32, *v8.f32)), *v8.f32);
  v10 = vmulq_n_f32(v7, vmul_f32(*v8.f32, vrsqrts_f32(v9, vmul_f32(*v8.f32, *v8.f32))).f32[0]);
  *a5 = v10;
  v12 = a2[1];
  v11 = a2[2];
  v13 = vmulq_f32(v12, vnegq_f32(v11));
  v14 = vaddv_f32(*v13.f32);
  v15 = vnegq_f32(vmlaq_n_f32(v11, v12, (v14 + v13.f32[2]) + (v14 + v13.f32[2])));
  *(a5 + 16) = v15;
  v16 = vmulq_f32(a2[3], a2[1]);
  v16.f32[0] = vaddv_f32(*v16.f32) + v16.f32[2];
  if (v16.f32[0] < 0.001)
  {
    v16.f32[0] = 0.001;
  }

  *(a5 + 32) = v16.i32[0];
  v17 = vmulq_f32(a2[2], a2[1]);
  v18 = vaddv_f32(*v17.f32) + v17.f32[2];
  if (v18 < 0.001)
  {
    v18 = 0.001;
  }

  *(a5 + 36) = v18;
  v19 = vmulq_f32(v10, a2[1]);
  v20 = vaddv_f32(*v19.f32) + v19.f32[2];
  if (v20 < 0.001)
  {
    v20 = 0.001;
  }

  *(a5 + 40) = v20;
  v21 = vmulq_f32(a2[3], v10);
  v22 = vaddv_f32(*v21.f32) + v21.f32[2];
  if (v22 < 0.001)
  {
    v22 = 0.001;
  }

  *(a5 + 44) = v22;
  v16.f32[1] = v18;
  __asm { FMOV            V3.2S, #1.0 }

  v28 = vsub_f32(_D3, *v16.f32);
  *v16.f32 = vbic_s8(vbsl_s8(vcgt_f32(v28, _D3), _D3, v28), vcltz_f32(v28));
  v29 = vmul_f32(*v16.f32, *v16.f32);
  *(a5 + 48) = vmul_f32(*v16.f32, vmul_f32(v29, v29));
  v16.i32[0] = 1.0;
  v30 = 1.0 - v22;
  if (v30 <= 1.0)
  {
    v16.f32[0] = v30;
  }

  if (v30 < 0.0)
  {
    v16.f32[0] = 0.0;
  }

  v31 = *(a1 + 116);
  *(a5 + 56) = v16.f32[0] * ((v16.f32[0] * v16.f32[0]) * (v16.f32[0] * v16.f32[0]));
  *(a5 + 60) = v31;
  *&v32 = sub_239F6EED8(a4, v15, v31 * 0.0);
  v44 = v32;
  v33.f32[0] = powf(*&v32, 0.45455);
  v42 = v33;
  v40 = powf(*(&v44 + 1), 0.45455);
  v34 = powf(*(&v44 + 2), 0.45455);
  v35 = v42;
  v35.f32[1] = v40;
  v35.f32[2] = v34;
  *(a5 + 80) = vmulq_n_f32(v35, (*(a5 + 60) * -0.33) + 0.99);
  *&v36 = sub_239F6EA14(a3, *(a5 + 16));
  v45 = v36;
  *&v37 = powf(*&v36, 0.45455);
  v43 = v37;
  v41 = powf(*(&v45 + 1), 0.45455);
  v38 = powf(*(&v45 + 2), 0.45455);
  v39 = v43;
  *(&v39 + 1) = v41;
  *(&v39 + 2) = v38;
  *(a5 + 64) = v39;
}

double sub_239F44CD8(float32x4_t *a1, uint64_t a2, float *a3)
{
  v3 = a3[12];
  v4 = a3[15] * (a3[11] * a3[11]);
  v5 = a3[13];
  v6 = ((v5 + v3) * ((v4 * 2.0) + -0.5)) + 2.0;
  v7 = ((((v4 + -1.0) * v3) + 1.0) * (((v4 + -1.0) * v5) + 1.0)) * 1.25 * (1.0 / (a3[9] + a3[8]) + -0.5) + 0.625;
  v8 = (v6 + ((v7 - v6) * 0.1)) * 0.318309877;
  *&result = vmulq_n_f32(a1[3], (1.0 - a1[5].f32[2]) * v8).u64[0];
  return result;
}

double sub_239F44D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a1 + 116) * -0.599) + 0.6;
  if (v5 >= 1.0)
  {
    v9 = 0.31831;
  }

  else
  {
    v6 = v5 * v5;
    v7 = v6 + -1.0;
    v8 = *(a3 + 40) * *(a3 + 40) * v7 + 1.0;
    v9 = v7 / ((logf(v6) * 3.1416) * v8);
  }

  __asm { FMOV            V4.2S, #0.9375 }

  v15 = vadd_f32(vsqrt_f32(vmla_f32(vdup_n_s32(0x3D800000u), _D4, vmul_f32(*(a3 + 32), *(a3 + 32)))), *(a3 + 32));
  _D4.f32[0] = fminf(*(a3 + 48), 1.0);
  *&result = vmulq_n_f32(vaddq_f32(vdupq_lane_s32(_D4, 0), *(a3 + 64)), (((*(a3 + 56) * 0.3) + 0.1) * (v9 * *(a1 + 112))) / vmul_lane_f32(v15, v15, 1).f32[0]).u64[0];
  return result;
}

double sub_239F44E98(uint64_t a1, uint64_t a2, float32x4_t *a3)
{
  v5 = *(a1 + 100);
  v6 = *(a1 + 80);
  if (v6 >= 1.0)
  {
    v10 = 0.31831;
  }

  else
  {
    v7 = (v6 * v6) + -1.0;
    v8 = a3[2].f32[2] * a3[2].f32[2] * v7 + 1.0;
    v25 = *(a1 + 80);
    v9 = logf(v6 * v6);
    v6 = v25;
    v10 = v7 / ((v9 * 3.1416) * v8);
  }

  v11 = v5 * 0.5 + 0.5;
  *&v11 = v11;
  __asm { FMOV            V4.4S, #-1.0 }

  v17 = vaddq_f32(*(a1 + 16), _Q4);
  __asm { FMOV            V4.4S, #1.0 }

  v19 = vmulq_n_f32(vmlaq_n_f32(_Q4, v17, COERCE_FLOAT(*(a1 + 84))), v6);
  *&v11 = (*&v11 * *&v11) * (*&v11 * *&v11);
  v20 = *a3[2].f32;
  v21 = vmul_f32(v20, v20);
  v22 = vadd_f32(vsqrt_f32(vmls_lane_f32(vadd_f32(v21, vdup_lane_s32(*&v11, 0)), v21, *&v11, 0)), v20);
  v23 = vmulq_n_f32(*(a1 + 48), COERCE_FLOAT(*(a1 + 88)));
  *&result = vmulq_f32(vmlaq_n_f32(v23, vmulq_f32(vmlaq_n_f32(v19, vsubq_f32(_Q4, v19), COERCE_FLOAT(a3[3].i64[1])), vaddq_f32(v23, _Q4)), v10 / vmul_lane_f32(v22, v22, 1).f32[0]), a3[5]).u64[0];
  return result;
}

void *sub_239F44FD0(uint64_t a1)
{
  result = sub_239F44850(a1);
  *result = &unk_284D17170;
  return result;
}

double sub_239F45004(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  LODWORD(a4) = *(a3 + 32);
  v21 = vdupq_lane_s32(*&a4, 0);
  v22 = *(a3 + 80);
  v20 = vmulq_n_f32(v22, 1.0 - *&a4);
  v23 = *(a1 + 144);
  v26 = vmulq_f32(vmlaq_f32(v21, v23, v20), vdupq_n_s32(0x3FF1463Au));
  *v6.i64 = sub_239F44CD8((a1 + 16), a2, a3);
  v7 = vmulq_f32(v26, v6);
  v6.i64[0] = 0x3F0000003F000000;
  v6.i64[1] = 0x3F0000003F000000;
  v24 = vmlaq_f32(v6, v6, v23);
  v25 = v7;
  v18 = *(a1 + 64);
  *v9.i64 = sub_239F44D88(a1 + 16, v8, a3);
  v19 = v9;
  *v11.i64 = sub_239F44E98(a1 + 16, v10, a3);
  v12 = vaddq_f32(v20, v21);
  v13 = *(a1 + 112);
  v14 = vsubq_f32(v18, v12);
  v15 = vmlaq_n_f32(v12, v14, v13.f32[0]);
  v13.i64[0] = *(a3 + 52);
  v14.i64[0] = *(a1 + 108);
  v16 = vmulq_f32(v14, v13);
  v14.f32[0] = 1.0 - *(a1 + 104);
  *&result = vmlaq_f32(v25, v24, vmlaq_n_f32(vmlaq_f32(vaddq_f32(v11, v19), vdupq_n_s32(0x3DCCCCCDu), vmulq_f32(v18, v22)), vmulq_f32(v15, v26), vmulq_f32(v16, v14).f32[0])).u64[0];
  return result;
}

void *sub_239F4515C(uint64_t a1)
{
  result = sub_239F44850(a1);
  *result = &unk_284D170D8;
  return result;
}

double sub_239F45194(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  LODWORD(a4) = *(a3 + 32);
  v21 = vdupq_lane_s32(*&a4, 0);
  v22 = *(a3 + 80);
  v20 = vmulq_n_f32(v22, 1.0 - *&a4);
  v23 = *(a1 + 144);
  v26 = vmulq_f32(vmlaq_f32(v21, v23, v20), vdupq_n_s32(0x3FF1463Au));
  *v6.i64 = sub_239F44CD8((a1 + 16), a2, a3);
  v7 = vmulq_f32(v26, v6);
  v6.i64[0] = 0x3F0000003F000000;
  v6.i64[1] = 0x3F0000003F000000;
  v24 = vmlaq_f32(v6, v6, v23);
  v25 = v7;
  v18 = *(a1 + 64);
  *v9.i64 = sub_239F44D88(a1 + 16, v8, a3);
  v19 = v9;
  *v11.i64 = sub_239F44E98(a1 + 16, v10, a3);
  v12 = vaddq_f32(v20, v21);
  v13 = *(a1 + 112);
  v14 = vsubq_f32(v18, v12);
  v15 = vmlaq_n_f32(v12, v14, v13.f32[0]);
  v13.i64[0] = *(a3 + 52);
  v14.i64[0] = *(a1 + 108);
  v16 = vmulq_f32(v14, v13);
  v14.f32[0] = 1.0 - *(a1 + 104);
  *&result = vmlaq_f32(v25, v24, vmlaq_n_f32(vmlaq_f32(vaddq_f32(v11, v19), vdupq_n_s32(0x3DCCCCCDu), vmulq_f32(v18, v22)), vmulq_f32(v15, v26), vmulq_f32(v16, v14).f32[0])).u64[0];
  return result;
}

double sub_239F452DC(uint64_t a1, double a2, double a3, float32x4_t a4, float32x4_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(a2) = *(a7 + 32);
  v7 = vmlaq_n_f32(vdupq_lane_s32(*&a2, 0), *(a7 + 80), 1.0 - *&a2);
  v8 = vsubq_f32(*(a1 + 64), v7);
  v9 = vmlaq_n_f32(v7, v8, COERCE_FLOAT(*(a1 + 112)));
  v8.i64[0] = *(a7 + 52);
  a5.i64[0] = *(a1 + 108);
  a4.f32[0] = 1.0 - *(a1 + 104);
  *&result = vmulq_n_f32(v9, vmulq_f32(vmulq_f32(a5, v8), a4).f32[0]).u64[0];
  return result;
}

void sub_239F45338(uint64_t a1)
{
  sub_239F449EC(a1);

  JUMPOUT(0x23EE802C0);
}

void sub_239F45378(uint64_t a1)
{
  sub_239F449EC(a1);

  JUMPOUT(0x23EE802C0);
}

void sub_239F453B0(void *a1)
{
  v1 = a1;
  v5 = sub_239E55AE8(v1, v2, v3);
  v6 = v1;
  v4 = v5;
  AnalyticsSendEventLazy();
}

id sub_239F454A0(uint64_t a1, const char *a2)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"bundleIdentifier";
  v6[1] = @"fileExtension";
  v2 = *(a1 + 40);
  v7[0] = *(a1 + 32);
  v7[1] = v2;
  v3 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v7, v6, 2);
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

void sub_239F45530(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = sub_239E55AE8(a1, a2, a3);
  v5 = @"ModelIO";
  if (v3)
  {
    v5 = @"Custom";
  }

  v8 = v5;
  v9 = v4;
  v6 = v4;
  v7 = v8;
  AnalyticsSendEventLazy();
}

id sub_239F45630(uint64_t a1, const char *a2)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"allocatorType";
  v6[1] = @"bundleIdentifier";
  v2 = *(a1 + 40);
  v7[0] = *(a1 + 32);
  v7[1] = v2;
  v3 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v7, v6, 2);
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

void sub_239F46B68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41)
{
  if (__p)
  {
    operator delete(__p);
  }

  v44 = *(v42 - 240);
  if (v44)
  {
    *(v42 - 232) = v44;
    operator delete(v44);
  }

  v45 = *(v42 - 216);
  if (v45)
  {
    *(v42 - 208) = v45;
    operator delete(v45);
  }

  v46 = *(v42 - 192);
  if (v46)
  {
    *(v42 - 184) = v46;
    operator delete(v46);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_239F46E54(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  sub_239E87900(a1);
  *a1 = &unk_284D171C0;
  *(a1 + 24) = a3;
  v6 = v5;
  *(a1 + 32) = v6;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v9 = objc_msgSend_transform(v6, v7, v8);

  if (v9)
  {
    v12 = objc_msgSend_transform(v6, v10, v11);
    v13 = *(a1 + 8);
    *(a1 + 8) = v12;
  }

  (*(*a1 + 32))(v20, a1);
  v15 = v20[0];
  v14 = v20[1];
  *(a1 + 48) = v20[0];
  *(a1 + 64) = v14;
  v16 = vsubq_f32(v15, v14);
  v15.i64[0] = 0x3F0000003F000000;
  v15.i64[1] = 0x3F0000003F000000;
  v17 = vmulq_f32(v16, v15);
  v18 = v17.f32[1];
  if (v17.f32[1] < v17.f32[2])
  {
    v18 = v17.f32[2];
  }

  if (v17.f32[0] < v18)
  {
    v17.f32[0] = v18;
  }

  *(a1 + 16) = v17.i32[0];
  *(a1 + 20) = v17.f32[0] * v17.f32[0];

  return a1;
}

void sub_239F46F60(_Unwind_Exception *a1)
{
  sub_239E87998(v1);

  _Unwind_Resume(a1);
}

uint64_t sub_239F46F90(uint64_t a1)
{

  return sub_239E87998(a1);
}

void sub_239F46FCC(uint64_t a1)
{
  sub_239E87998(a1);

  JUMPOUT(0x23EE802C0);
}

uint64_t sub_239F4701C(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 88);
  if (!v1)
  {
    if (!atomic_fetch_add((a1 + 80), 1u))
    {
      operator new();
    }

    v1 = 0;
  }

  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_239F4717C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  sub_239E7B424(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_239F471B8@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  result = *(a1 + 32);
  if (result)
  {
    result = objc_msgSend_boundingBoxAtTime_(result, a2, a3, 0.0);
    *a4 = v6;
    a4[1] = v7;
  }

  return result;
}

BOOL sub_239F471F0(uint64_t a1, float32x4_t *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v14 = 0;
  v4 = MDLAABB::intersect((a1 + 48), a2, &v15 + 1, &v15, &v14);
  v10 = *&v15 >= 0.0 && v4;
  result = 0;
  if (v10)
  {
    memset(v16, 0, sizeof(v16));
    LODWORD(v16[0]) = 2139095039;
    v11 = *(a1 + 88);
    if (v11)
    {
      if (sub_239E71C08(v11, a2, v16, 0.0, v5, v6, v7, v8, v9))
      {
        result = 1;
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_239F472C4(uint64_t a1, float32x4_t *a2, uint64_t a3)
{
  result = sub_239F4701C(a1);
  if (result)
  {
    v7 = result;
    v15 = 0;
    v14 = 0;
    result = MDLAABB::intersect((a1 + 48), a2, &v15 + 1, &v15, &v14);
    if (result)
    {
      LODWORD(v8) = v15;
      if (*&v15 >= 0.0)
      {
        result = sub_239E71C08(v7, a2, a3, v8, v9, v10, v11, v12, v13);
        if (result)
        {
          *(a3 + 64) = a1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_239F4740C(uint64_t a1, uint64_t a2)
{
  if (sub_239E7B3D0(a2, &unk_284D17588))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_239F4766C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_239F479A4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_239F47D90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, objc_super a11)
{
  a11.super_class = MDLMemoryMappedData;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

uint64_t *sub_239F47E18@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v5 = result + 63;
  v4 = *(result + 63);
  v6 = result + 5;
  if ((v4 & 0x8000000000000000) == 0)
  {
    if (*(result + 63))
    {
      goto LABEL_3;
    }

LABEL_6:
    if (*(result + 39) >= 0)
    {
      v7 = *(result + 39);
    }

    else
    {
      v7 = result[3];
    }

    v13 = 0;
    v12 = 0uLL;
    v8 = &v12;
    sub_239E959D0(&v12, v7 + 5);
    if (v13 < 0)
    {
      v8 = v12;
    }

    if (v7)
    {
      if (*(v2 + 39) >= 0)
      {
        v9 = v2 + 2;
      }

      else
      {
        v9 = v2[2];
      }

      memmove(v8, v9, v7);
    }

    strcpy(v8 + v7, "/Geom");
    if (*v5 < 0)
    {
      operator delete(*v6);
    }

    *v6 = v12;
    v6[2] = v13;
    sub_239E56DF8(&v12, v2 + 14);
    MEMORY[0x23EE7ED00](&v10, v6);
    pxrInternal__aapl__pxrReserved__::UsdGeomScope::Define();
    MEMORY[0x23EE7E610](v11);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    result = sub_239F751B0(&v10);
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_4;
    }

    return sub_239E5BAE0(a2, v2[5], v2[6]);
  }

  if (!result[6])
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 0x80) == 0)
  {
LABEL_4:
    *a2 = *v6;
    *(a2 + 16) = v6[2];
    return result;
  }

  return sub_239E5BAE0(a2, v2[5], v2[6]);
}

void sub_239F47F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_239EBE368(&a9);
  v15 = a14;
  if (a14)
  {
    if (atomic_fetch_add_explicit((a14 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v15 + 8))(v15);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_239F47FF0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v5 = result + 87;
  v4 = *(result + 87);
  v6 = result + 8;
  if ((v4 & 0x8000000000000000) == 0)
  {
    if (*(result + 87))
    {
      goto LABEL_3;
    }

LABEL_6:
    if (*(result + 39) >= 0)
    {
      v7 = *(result + 39);
    }

    else
    {
      v7 = result[3];
    }

    v13 = 0;
    v12 = 0uLL;
    v8 = &v12;
    sub_239E959D0(&v12, v7 + 10);
    if (v13 < 0)
    {
      v8 = v12;
    }

    if (v7)
    {
      if (*(v2 + 39) >= 0)
      {
        v9 = v2 + 2;
      }

      else
      {
        v9 = v2[2];
      }

      memmove(v8, v9, v7);
    }

    strcpy(v8 + v7, "/Materials");
    if (*v5 < 0)
    {
      operator delete(*v6);
    }

    *v6 = v12;
    v6[2] = v13;
    sub_239E56DF8(&v12, v2 + 14);
    MEMORY[0x23EE7ED00](&v10, v6);
    pxrInternal__aapl__pxrReserved__::UsdGeomScope::Define();
    MEMORY[0x23EE7E610](v11);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    result = sub_239F751B0(&v10);
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_4;
    }

    return sub_239E5BAE0(a2, v2[8], v2[9]);
  }

  if (!result[9])
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 0x80) == 0)
  {
LABEL_4:
    *a2 = *v6;
    *(a2 + 16) = v6[2];
    return result;
  }

  return sub_239E5BAE0(a2, v2[8], v2[9]);
}

void sub_239F48174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_239EBE368(&a9);
  v15 = a14;
  if (a14)
  {
    if (atomic_fetch_add_explicit((a14 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v15 + 8))(v15);
    }
  }

  _Unwind_Resume(a1);
}

void sub_239F481D0(uint64_t a1@<X0>, pxrInternal__aapl__pxrReserved__::UsdShadeNodeGraph *a2@<X1>, pxrInternal__aapl__pxrReserved__::UsdShadeShader *a3@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  __p[0] = 0;
  __p[1] = 0;
  v28 = 0;
  sub_239EEE934(a2, &v29);
  String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(&v29);
  if (*(String + 23) < 0)
  {
    sub_239E5BAE0(__p, *String, *(String + 8));
  }

  else
  {
    v7 = *String;
    v28 = *(String + 16);
    *__p = v7;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  v8 = sub_239E5B574(&v29);
  *a3 = 0;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  sub_239E56DF8(v8, (a1 + 112));
  if (v28 >= 0)
  {
    v9 = HIBYTE(v28);
  }

  else
  {
    v9 = __p[1];
  }

  v24[1] = 0;
  v25 = 0;
  v24[0] = 0;
  sub_239E959D0(v24, v9 + 14);
  if (v25 >= 0)
  {
    v10 = v24;
  }

  else
  {
    v10 = v24[0];
  }

  if (v9)
  {
    if (v28 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    memmove(v10, v11, v9);
  }

  strcpy(v10 + v9, "/surfaceShader");
  MEMORY[0x23EE7ED00](v26, v24);
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::Define();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239F75210(v26);
  MEMORY[0x23EE7ED20](&v17, "UsdPreviewSurface");
  sub_239F75278(&v29, &v17);
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::CreateIdAttr(a3, &v29);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&v22);
  if (v21)
  {
    sub_239E5E560(v21);
  }

  sub_239E5B240(&v29);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v29 = 0u;
  v30 = 0u;
  MEMORY[0x23EE7ED20](&v17, "surface");
  v12 = MEMORY[0x277D86578];
  if (!atomic_load(MEMORY[0x277D86578]))
  {
    sub_239EB5678(MEMORY[0x277D86578]);
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeShader::CreateOutput();
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x23EE7ED20](&v16, "surface");
  v14 = atomic_load(v12);
  if (!v14)
  {
    v14 = sub_239EB5678(MEMORY[0x277D86578]);
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeNodeGraph::CreateOutput(&v17, a2, &v16, (v14 + 88));
  MEMORY[0x23EE7F750](&v17, &v29);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&v19);
  if (v18)
  {
    sub_239E5E560(v18);
  }

  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((BYTE8(v30) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v30 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&v30);
  if (*(&v29 + 1))
  {
    sub_239E5E560(*(&v29 + 1));
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p[0]);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_239F48538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a2)
  {
    sub_239E797CC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_239F48680(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  __p[0] = 0;
  __p[1] = 0;
  v12 = 0;
  sub_239EEE934(a3, &v10);
  String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(&v10);
  if (*(String + 23) < 0)
  {
    sub_239E5BAE0(__p, *String, *(String + 8));
  }

  else
  {
    v9 = *String;
    v12 = *(String + 16);
    *__p = v9;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&v10);
  v10 = 19;
  sub_239F48878(a1, 0, &v10, v7, a4, __p);
  v10 = 0;
  sub_239F48878(a1, 1, &v10, v7, a4, __p);
  v10 = 15;
  sub_239F48878(a1, 2, &v10, v7, a4, __p);
  v10 = 13;
  sub_239F48878(a1, 3, &v10, v7, a4, __p);
  v10 = 2;
  sub_239F48878(a1, 4, &v10, v7, a4, __p);
  v10 = 6;
  sub_239F48878(a1, 5, &v10, v7, a4, __p);
  v10 = 11;
  sub_239F48878(a1, 7, &v10, v7, a4, __p);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_239F48824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_239F48878(uint64_t a1, int a2, uint64_t *a3, void *a4, uint64_t a5, const void **a6)
{
  v137 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v12 = objc_msgSend_propertyWithSemantic_(v10, v11, *a3);
  if (objc_msgSend_type(v12, v13, v14) != 2 || (objc_msgSend_URLValue(v12, v15, v16), v17 = objc_claimAutoreleasedReturnValue(), v17, !v17))
  {
    if (objc_msgSend_type(v12, v15, v16) == 1)
    {
      v20 = objc_msgSend_stringValue(v12, v18, v19);

      if (v20)
      {
        v21 = objc_msgSend_URLValue(v12, v18, v19);

        if (v21)
        {
          v24 = objc_msgSend_URLValue(v12, v22, v23);
          v27 = objc_msgSend_path(v24, v25, v26);
        }

        else
        {
          v27 = objc_msgSend_stringValue(v12, v22, v23);
        }

        memset(&__str, 0, sizeof(__str));
        v40 = v27;
        v43 = objc_msgSend_UTF8String(v40, v41, v42);
        sub_239E552A0(&__str, v43);
        v46 = *(a1 + 8);
        if (!v46)
        {
          goto LABEL_53;
        }

        v133 = 0uLL;
        *&v134 = 0;
        v47 = objc_msgSend_URLByDeletingLastPathComponent(v46, v44, v45);
        v50 = objc_msgSend_path(v47, v48, v49);
        v51 = v50;
        v54 = objc_msgSend_UTF8String(v50, v52, v53);
        sub_239E552A0(&v133, v54);

        std::string::append(&v133, "/");
        size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __str.__r_.__value_.__l.__size_;
        }

        v56 = SBYTE7(v134);
        if ((SBYTE7(v134) & 0x8000000000000000) != 0)
        {
          v56 = *(&v133 + 1);
          if (size <= *(&v133 + 1))
          {
            goto LABEL_52;
          }
        }

        else if (size <= SBYTE7(v134))
        {
          goto LABEL_53;
        }

        std::string::basic_string(&v135, &__str, 0, v56, &v119);
        v62 = SBYTE7(v136);
        if ((SBYTE7(v136) & 0x80u) == 0)
        {
          v45 = BYTE7(v136);
        }

        else
        {
          v45 = *(&v135 + 1);
        }

        v63 = BYTE7(v134);
        v64 = BYTE7(v134);
        if (SBYTE7(v134) < 0)
        {
          v63 = *(&v133 + 1);
        }

        if (v45 == v63)
        {
          if ((SBYTE7(v136) & 0x80u) == 0)
          {
            v65 = &v135;
          }

          else
          {
            v65 = v135;
          }

          if ((SBYTE7(v134) & 0x80u) == 0)
          {
            v66 = &v133;
          }

          else
          {
            v66 = v133;
          }

          v67 = memcmp(v65, v66, v45) == 0;
          if ((v62 & 0x80000000) == 0)
          {
LABEL_43:
            if (v67)
            {
              if ((v64 & 0x80u) == 0)
              {
                v68 = v64;
              }

              else
              {
                v68 = *(&v133 + 1);
              }

              std::string::basic_string(&v135, &__str, v68, 0xFFFFFFFFFFFFFFFFLL, &v119);
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__str.__r_.__value_.__l.__data_);
              }

              *&__str.__r_.__value_.__l.__data_ = v135;
              __str.__r_.__value_.__r.__words[2] = v136;
              if (SBYTE7(v134) < 0)
              {
                operator delete(v133);
              }

LABEL_54:
              v108 = 0;
              v109 = 0;
              v110 = 0;
              v12;
              v130 = 0;
              v131 = 0;
              v132 = 0;
              sub_239E552A0(&v130, off_278B41148[a2]);
              memset(v129, 0, sizeof(v129));
              sub_239E552A0(v129, off_278B41190[a2]);
              v127 = 0uLL;
              v128 = 0;
              if (*(a6 + 23) >= 0)
              {
                v74 = *(a6 + 23);
              }

              else
              {
                v74 = a6[1];
              }

              *&v134 = 0;
              v133 = 0uLL;
              v75 = &v133;
              sub_239E959D0(&v133, v74 + 10);
              if (SBYTE7(v134) < 0)
              {
                v75 = v133;
              }

              if (v74)
              {
                if (*(a6 + 23) >= 0)
                {
                  v76 = a6;
                }

                else
                {
                  v76 = *a6;
                }

                memmove(v75, v76, v74);
              }

              strcpy(v75 + v74, "/uvReader_");
              sub_239E552A0(&v135, "st");
              if ((SBYTE7(v136) & 0x80u) == 0)
              {
                v77 = &v135;
              }

              else
              {
                v77 = v135;
              }

              if ((SBYTE7(v136) & 0x80u) == 0)
              {
                v78 = BYTE7(v136);
              }

              else
              {
                v78 = *(&v135 + 1);
              }

              v79 = std::string::append(&v133, v77, v78);
              v80 = *&v79->__r_.__value_.__l.__data_;
              v128 = v79->__r_.__value_.__r.__words[2];
              v127 = v80;
              v79->__r_.__value_.__l.__size_ = 0;
              v79->__r_.__value_.__r.__words[2] = 0;
              v79->__r_.__value_.__r.__words[0] = 0;
              if (SBYTE7(v136) < 0)
              {
                operator delete(v135);
              }

              if (SBYTE7(v134) < 0)
              {
                operator delete(v133);
              }

              v135 = 0u;
              v136 = 0u;
              v81 = sub_239E57038((a1 + 112));
              MEMORY[0x23EE7ED00](&v133, &v127);
              pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v135, v81, &v133);
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              sub_239E5B574(&v133);
              v124 = 0;
              v125 = 0;
              v126 = 0;
              LODWORD(v133) = 1;
              *(&v133 + 1) = 0;
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
              *(&v134 + 1) = 0;
              pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
              v124 = MEMORY[0x277D86708] + 16;
              if ((BYTE8(v134) & 7) != 0)
              {
                atomic_fetch_add_explicit((*(&v134 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              sub_239E5B574(&v134);
              if (*(&v133 + 1))
              {
                sub_239E5E560(*(&v133 + 1));
              }

              if (v125 && (*(v125 + 57) & 8) == 0 && (*(v124 + 32))(&v124))
              {
                pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
                *&v133 = MEMORY[0x277D86708] + 16;
                v82 = *(&v133 + 1);
                if (*(&v133 + 1))
                {
                  atomic_fetch_add_explicit((*(&v133 + 1) + 48), 1uLL, memory_order_relaxed);
                }

                if (v125)
                {
                  sub_239E5E560(v125);
                }

                v125 = v82;
                sub_239E57F68(&v126, &v134);
                sub_239E5B450(&v126 + 4, &v134 + 1);
                MEMORY[0x23EE7E820](&v133);
                v108 = 0;
                v109 = 0;
                v110 = 0;
                sub_239E56DF8(&v112, (a1 + 112));
                if (*(a6 + 23) >= 0)
                {
                  v85 = *(a6 + 23);
                }

                else
                {
                  v85 = a6[1];
                }

                memset(&v114, 0, sizeof(v114));
                v86 = &v114;
                sub_239E959D0(&v114, v85 + 1);
                if ((v114.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v86 = v114.__r_.__value_.__r.__words[0];
                }

                if (v85)
                {
                  if (*(a6 + 23) >= 0)
                  {
                    v87 = a6;
                  }

                  else
                  {
                    v87 = *a6;
                  }

                  memmove(v86, v87, v85);
                }

                *(&v86->__r_.__value_.__l.__data_ + v85) = 47;
                if (v132 >= 0)
                {
                  v88 = &v130;
                }

                else
                {
                  v88 = v130;
                }

                if (v132 >= 0)
                {
                  v89 = HIBYTE(v132);
                }

                else
                {
                  v89 = v131;
                }

                v90 = std::string::append(&v114, v88, v89);
                v91 = *&v90->__r_.__value_.__l.__data_;
                v115.__r_.__value_.__r.__words[2] = v90->__r_.__value_.__r.__words[2];
                *&v115.__r_.__value_.__l.__data_ = v91;
                v90->__r_.__value_.__l.__size_ = 0;
                v90->__r_.__value_.__r.__words[2] = 0;
                v90->__r_.__value_.__r.__words[0] = 0;
                v92 = std::string::append(&v115, "_texture");
                v93 = *&v92->__r_.__value_.__l.__data_;
                *&v134 = *(&v92->__r_.__value_.__l + 2);
                v133 = v93;
                v92->__r_.__value_.__l.__size_ = 0;
                v92->__r_.__value_.__r.__words[2] = 0;
                v92->__r_.__value_.__r.__words[0] = 0;
                MEMORY[0x23EE7ED00](&v117, &v133);
                pxrInternal__aapl__pxrReserved__::UsdShadeShader::Define();
                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                sub_239E5B574(&v117);
                if (SBYTE7(v134) < 0)
                {
                  operator delete(v133);
                }

                if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v115.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v114.__r_.__value_.__l.__data_);
                }

                v94 = v113;
                if (v113 && atomic_fetch_add_explicit((v113 + 8), 0xFFFFFFFF, memory_order_release) == 1)
                {
                  (*(*v94 + 8))(v94);
                }

                MEMORY[0x23EE7ED20](&v114, "UsdUVTexture");
                sub_239F75278(&v133, &v114);
                pxrInternal__aapl__pxrReserved__::UsdShadeShader::CreateIdAttr(&v108, &v133);
                if ((v116 & 7) != 0)
                {
                  atomic_fetch_add_explicit((v116 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                sub_239E5B574(&v115.__r_.__value_.__r.__words[2]);
                if (v115.__r_.__value_.__l.__size_)
                {
                  sub_239E5E560(v115.__r_.__value_.__l.__size_);
                }

                sub_239E5B240(&v133);
                if ((v114.__r_.__value_.__s.__data_[0] & 7) != 0)
                {
                  atomic_fetch_add_explicit((v114.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                MEMORY[0x23EE7ED20](&v112, "file");
                if (!atomic_load(MEMORY[0x277D86578]))
                {
                  sub_239EB5678(MEMORY[0x277D86578]);
                }

                pxrInternal__aapl__pxrReserved__::UsdShadeShader::CreateInput();
                MEMORY[0x23EE7E5B0](&v133, &__str);
                pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::SdfAssetPath>();
              }

              sub_239E56DF8(&v119, (a1 + 112));
              MEMORY[0x23EE7ED00](v123, &v127);
              pxrInternal__aapl__pxrReserved__::UsdShadeShader::Define();
              v83 = *(&v133 + 1);
              if (*(&v133 + 1))
              {
                atomic_fetch_add_explicit((*(&v133 + 1) + 48), 1uLL, memory_order_relaxed);
              }

              if (v125)
              {
                sub_239E5E560(v125);
              }

              v125 = v83;
              sub_239E57F68(&v126, &v134);
              sub_239E5B450(&v126 + 4, &v134 + 1);
              MEMORY[0x23EE7E820](&v133);
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              sub_239F752B8(v123, &v119);
              MEMORY[0x23EE7ED20](&__p, "UsdPrimvarReader_float2");
              sub_239F75278(&v133, &__p);
              pxrInternal__aapl__pxrReserved__::UsdShadeShader::CreateIdAttr(&v124, &v133);
              if ((v122 & 7) != 0)
              {
                atomic_fetch_add_explicit((v122 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              sub_239E5B574(&v121);
              if (v120)
              {
                sub_239E5E560(v120);
              }

              sub_239E5B240(&v133);
              if ((__p & 7) != 0)
              {
                atomic_fetch_add_explicit((__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              v133 = 0u;
              v134 = 0u;
              MEMORY[0x23EE7ED20](&__p, "varname");
              if (!atomic_load(MEMORY[0x277D86578]))
              {
                sub_239EB5678(MEMORY[0x277D86578]);
              }

              pxrInternal__aapl__pxrReserved__::UsdShadeShader::CreateInput();
              if ((__p & 7) != 0)
              {
                atomic_fetch_add_explicit((__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              sub_239E552A0(&__p, "st");
              MEMORY[0x23EE7ED30](&v115, &__p);
              pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::TfToken>();
            }

            if ((v64 & 0x80) == 0)
            {
LABEL_53:
              v69 = objc_msgSend_lastPathComponent(v27, v44, v45);
              v70 = v69;
              v73 = objc_msgSend_UTF8String(v69, v71, v72);
              MEMORY[0x23EE7FFA0](&__str, v73);

              goto LABEL_54;
            }

LABEL_52:
            operator delete(v133);
            goto LABEL_53;
          }
        }

        else
        {
          v67 = 0;
          if ((SBYTE7(v136) & 0x80000000) == 0)
          {
            goto LABEL_43;
          }
        }

        operator delete(v135);
        v64 = BYTE7(v134);
        goto LABEL_43;
      }
    }

    if (objc_msgSend_type(v12, v18, v19) == 3)
    {
      v32 = objc_msgSend_textureSamplerValue(v12, v28, v29);
      if (v32)
      {
        v33 = objc_msgSend_textureSamplerValue(v12, v30, v31);
        objc_msgSend_texture(v33, v34, v35);
      }
    }

    else
    {
      if (objc_msgSend_type(v12, v28, v29) == 8)
      {
        objc_msgSend_float4Value(v12, v36, v37);
        *&v135 = 0;
        *(&v135 + 1) = &off_284D165E0 + 2;
        operator new();
      }

      if (objc_msgSend_type(v12, v36, v37) == 7)
      {
        objc_msgSend_float3Value(v12, v38, v39);
        *&v135 = 0;
        *(&v135 + 1) = &off_284D165E0 + 2;
        operator new();
      }

      if (objc_msgSend_type(v12, v38, v39) == 5)
      {
        objc_msgSend_floatValue(v12, v57, v58);
        v60 = v59;
        MEMORY[0x23EE7ED20](&v119, off_278B41148[a2]);
        if (!atomic_load(MEMORY[0x277D86578]))
        {
          sub_239EB5678(MEMORY[0x277D86578]);
        }

        pxrInternal__aapl__pxrReserved__::UsdShadeShader::CreateInput();
        *(&v135 + 1) = &unk_284D15333;
        LODWORD(v135) = v60;
        pxrInternal__aapl__pxrReserved__::UsdAttribute::Set();
        sub_239E5B240(&v135);
        sub_239EF06E8(&v133);
        if ((v119 & 7) != 0)
        {
          atomic_fetch_add_explicit((v119 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else if (objc_msgSend_type(v12, v57, v58) == 4)
      {
        v99 = objc_msgSend_color(v12, v97, v98);
        Components = CGColorGetComponents(v99);
        ColorSpace = CGColorGetColorSpace(v99);
        Model = CGColorSpaceGetModel(ColorSpace);
        if (Model)
        {
          if (Model == kCGColorSpaceModelRGB)
          {
            v107 = *Components;
            v103 = *(Components + 2);
            if (CGColorGetNumberOfComponents(v99) == 4)
            {
              v104 = *(Components + 3);
            }
          }
        }

        else
        {
          v105 = *Components;
        }

        MEMORY[0x23EE7ED20](&v119, off_278B41148[a2]);
        if (!atomic_load(MEMORY[0x277D86578]))
        {
          sub_239EB5678(MEMORY[0x277D86578]);
        }

        pxrInternal__aapl__pxrReserved__::UsdShadeShader::CreateInput();
        *(&v135 + 1) = &off_284D163B8 + 2;
        operator new();
      }
    }
  }

  v96 = *MEMORY[0x277D85DE8];
}

void sub_239F49DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, __int16 a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  MEMORY[0x23EE7E820](&a14);
  MEMORY[0x23EE7E820](&a47);
  sub_239ED1984(v64 - 176);
  if (a55 < 0)
  {
    operator delete(__p);
  }

  if (a62 < 0)
  {
    operator delete(a57);
  }

  if (*(v64 - 225) < 0)
  {
    operator delete(*(v64 - 248));
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

void sub_239F4A3A0(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a2;
  v8 = v7;
  v9 = a1[26];
  if (!v9)
  {
    goto LABEL_9;
  }

  v3 = a1 + 26;
  do
  {
    v10 = v9[4];
    v11 = v10 >= v7;
    v12 = v10 < v7;
    if (v11)
    {
      v3 = v9;
    }

    v9 = v9[v12];
  }

  while (v9);
  if (v3 != a1 + 26 && v3[4] <= v7)
  {

    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    *a3 = MEMORY[0x277D86758] + 16;
  }

  else
  {
LABEL_9:

    v38 = 0uLL;
    v39 = 0;
    if (v8)
    {
      v3 = objc_msgSend_name(v8, v13, v14);
      v4 = sub_239F4A888(v3);
      v15 = v4;
      v18 = objc_msgSend_UTF8String(v15, v16, v17);
    }

    else
    {
      v18 = "Default";
    }

    sub_239E552A0(&v38, v18);
    if (v8)
    {
    }

    v19 = HIBYTE(v39);
    if (v39 < 0)
    {
      v19 = *(&v38 + 1);
    }

    if (v19)
    {
      sub_239F4A9EC(&v38, a1 + 20, __p);
      if (SHIBYTE(v39) < 0)
      {
        operator delete(v38);
      }

      v38 = *__p;
      v39 = v36;
      __p[0] = 0;
      __p[1] = 0;
      v36 = 0;
      sub_239F47FF0(a1, &v33);
      v20 = std::string::append(&v33, "/");
      v21 = *&v20->__r_.__value_.__l.__data_;
      v34.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
      *&v34.__r_.__value_.__l.__data_ = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      if (v39 >= 0)
      {
        v22 = &v38;
      }

      else
      {
        v22 = v38;
      }

      if (v39 >= 0)
      {
        v23 = HIBYTE(v39);
      }

      else
      {
        v23 = *(&v38 + 1);
      }

      v24 = std::string::append(&v34, v22, v23);
      v25 = *&v24->__r_.__value_.__l.__data_;
      v36 = v24->__r_.__value_.__r.__words[2];
      *__p = v25;
      v24->__r_.__value_.__l.__size_ = 0;
      v24->__r_.__value_.__r.__words[2] = 0;
      v24->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }

      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      sub_239E56DF8(&v34, a1 + 14);
      MEMORY[0x23EE7ED00](v32, __p);
      pxrInternal__aapl__pxrReserved__::UsdShadeMaterial::Define();
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_239F752B8(v32, &v34);
      memset(&v34, 0, sizeof(v34));
      sub_239F481D0(a1, a3, &v34);
      if (v8)
      {
        sub_239F48680(a1, v8, a3, &v34);
      }

      v31 = v8;
      v33.__r_.__value_.__r.__words[0] = &v31;
      v26 = sub_239F51908((a1 + 25), &v31);
      v27 = v26;
      v28 = *(a3 + 8);
      if (v28)
      {
        atomic_fetch_add_explicit((v28 + 48), 1uLL, memory_order_relaxed);
      }

      v29 = v26[6];
      if (v29)
      {
        sub_239E5E560(v29);
      }

      v27[6] = v28;
      sub_239E57F68((v27 + 7), (a3 + 16));
      sub_239E5B450(v27 + 60, (a3 + 20));
      v30 = v31;
      v31 = 0;

      MEMORY[0x23EE7E820](&v34);
      if (SHIBYTE(v36) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      LODWORD(__p[0]) = 1;
      __p[1] = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
      v37 = 0;
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
      *a3 = MEMORY[0x277D86758] + 16;
      if ((v37 & 7) != 0)
      {
        atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_239E5B574(&v36);
      if (__p[1])
      {
        sub_239E5E560(__p[1]);
      }
    }

    if (SHIBYTE(v39) < 0)
    {
      operator delete(v38);
    }
  }
}

void sub_239F4A744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  MEMORY[0x23EE7E820](&a18);
  MEMORY[0x23EE7E910](v31);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (*(v32 - 57) < 0)
  {
    operator delete(*(v32 - 80));
  }

  _Unwind_Resume(a1);
}

__CFString *sub_239F4A888(void *a1)
{
  v1 = a1;
  if (objc_msgSend_length(v1, v2, v3))
  {
    v21 = 0;
    v5 = objc_msgSend_regularExpressionWithPattern_options_error_(MEMORY[0x277CCAC68], v4, @"[^A-Za-z0-9]", 1, &v21);
    v6 = v21;
    v9 = objc_msgSend_length(v1, v7, v8);
    v11 = objc_msgSend_stringByReplacingMatchesInString_options_range_withTemplate_(v5, v10, v1, 0, 0, v9, @"_");
    v14 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x277CCA900], v12, v13);
    v16 = objc_msgSend_characterAtIndex_(v11, v15, 0);
    if (objc_msgSend_characterIsMember_(v14, v17, v16))
    {
      v19 = objc_msgSend_stringByAppendingString_(@"_", v18, v11);

      v11 = v19;
    }
  }

  else
  {
    v11 = &stru_284D18478;
  }

  return v11;
}

double sub_239F4A9EC@<D0>(__int128 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a3;
  __dst = 0uLL;
  v32 = 0;
  LODWORD(a3) = *(a1 + 23);
  if ((a3 & 0x80000000) != 0)
  {
    sub_239E5BAE0(&__dst, *a1, *(a1 + 1));
    LOBYTE(a3) = *(a1 + 23);
  }

  else
  {
    __dst = *a1;
    v32 = *(a1 + 2);
  }

  a3 = a3;
  if ((a3 & 0x80u) != 0)
  {
    a3 = *(a1 + 1);
  }

  if (a3)
  {
    v5 = 0;
    v6 = 1;
    v7 = MEMORY[0x277D85DE0];
    do
    {
      if (v32 >= 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst;
      }

      v9 = *(p_dst + v5);
      if ((v9 & 0x80000000) != 0)
      {
        v10 = __maskrune(*(p_dst + v5), 0x100uLL);
      }

      else
      {
        v10 = *(v7 + 4 * v9 + 60) & 0x100;
      }

      if (!v10 && (v6 == 1 || (v9 & 0x80000000) != 0 || (*(v7 + 4 * v9 + 60) & 0x400) == 0) && v9 != 47 && v9 != 95)
      {
        if (v32 >= 0)
        {
          v13 = &__dst;
        }

        else
        {
          v13 = __dst;
        }

        *(v13 + v5) = 95;
      }

      v5 = v6;
      v11 = *(a1 + 23);
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(a1 + 1);
      }
    }

    while (v11 > v6++);
  }

  if (sub_239F50B3C(a2, &__dst))
  {
    v14 = 0;
    v15 = *MEMORY[0x277D82818];
    v17 = *(MEMORY[0x277D82818] + 64);
    v16 = *(MEMORY[0x277D82818] + 72);
    while (1)
    {
      v30 = 0;
      v28 = 0u;
      memset(v29, 0, sizeof(v29));
      *__p = 0u;
      v27 = 0u;
      v24 = 0u;
      memset(v25, 0, sizeof(v25));
      v23 = 0u;
      sub_239EE76F8(&v23);
      v18 = v32 >= 0 ? &__dst : __dst;
      v19 = v32 >= 0 ? HIBYTE(v32) : *(&__dst + 1);
      v20 = sub_239E98B94(&v24, v18, v19);
      MEMORY[0x23EE80140](v20, v14);
      *v4 = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      std::stringbuf::str();
      if (!sub_239F50B3C(a2, v4))
      {
        break;
      }

      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      *&v23 = v15;
      *(&v23 + *(v15 - 24)) = v17;
      *&v24 = v16;
      *(&v24 + 1) = MEMORY[0x277D82878] + 16;
      if (SHIBYTE(v27) < 0)
      {
        operator delete(__p[1]);
      }

      *(&v24 + 1) = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v25);
      std::iostream::~basic_iostream();
      MEMORY[0x23EE80250](v29);
      v14 = (v14 + 1);
    }

    sub_239E6883C(a2, v4);
    *&v23 = v15;
    *(&v23 + *(v15 - 24)) = v17;
    *&v24 = v16;
    *(&v24 + 1) = MEMORY[0x277D82878] + 16;
    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p[1]);
    }

    *(&v24 + 1) = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v25);
    std::iostream::~basic_iostream();
    MEMORY[0x23EE80250](v29);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(__dst);
    }
  }

  else
  {
    sub_239E6883C(a2, &__dst);
    result = *&__dst;
    *v4 = __dst;
    *(v4 + 16) = v32;
  }

  return result;
}

void sub_239F4AE98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (*(v11 - 89) < 0)
  {
    operator delete(*(v11 - 112));
  }

  _Unwind_Resume(exception_object);
}

void sub_239F4AEFC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v118 = *MEMORY[0x277D85DE8];
  v93 = a2;
  v108 = 0;
  v109 = 0;
  LODWORD(__str) = 1;
  *(&__str + 1) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  *(&v115 + 1) = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v107 = MEMORY[0x277D866A8] + 16;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&v115);
  v8 = objc_msgSend_submeshes(v93, v6, v7);
  v88 = objc_msgSend_count(v8, v9, v10);

  if (v88 <= 1)
  {
    sub_239E56DF8(&v110, (a1 + 112));
    pxrInternal__aapl__pxrReserved__::UsdGeomMesh::Define();
    v13 = *(&__str + 1);
    if (*(&__str + 1))
    {
      atomic_fetch_add_explicit((*(&__str + 1) + 48), 1uLL, memory_order_relaxed);
    }

    v108 = v13;
    sub_239E57F68(&v109, &v115);
    sub_239E5B450(&v109 + 4, &v115 + 1);
    MEMORY[0x23EE7E550](&__str);
    v14 = *(&v110 + 1);
    if (*(&v110 + 1) && atomic_fetch_add_explicit((*(&v110 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v14 + 8))(v14);
    }

    sub_239E5815C(&__str, &v108, &v109);
    *a3 = __str;
    v15 = *(a3 + 8);
    if (v15)
    {
      sub_239E5E560(v15);
    }

    *(a3 + 8) = *(&__str + 1);
    *(&__str + 1) = 0;
    sub_239E650AC(a3 + 16, &v115);
    sub_239E65104(a3 + 20, &v115 + 1);
    if (&__str == a3)
    {
      if ((BYTE8(v115) & 7) != 0)
      {
        atomic_fetch_add_explicit((*(&v115 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      v16 = *(a3 + 24);
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *(a3 + 24) = *(&v115 + 1);
      *(&v115 + 1) = 0;
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_239E5B574(&v115);
    if (*(&__str + 1))
    {
      sub_239E5E560(*(&__str + 1));
    }
  }

  else
  {
    sub_239E56DF8(&__dst, (a1 + 112));
    pxrInternal__aapl__pxrReserved__::UsdGeomXform::Define();
    sub_239E5815C(&__str, &v110 + 1, &v111);
    *a3 = __str;
    v11 = *(a3 + 8);
    if (v11)
    {
      sub_239E5E560(v11);
    }

    *(a3 + 8) = *(&__str + 1);
    *(&__str + 1) = 0;
    sub_239E650AC(a3 + 16, &v115);
    sub_239E65104(a3 + 20, &v115 + 1);
    if (&__str == a3)
    {
      if ((BYTE8(v115) & 7) != 0)
      {
        atomic_fetch_add_explicit((*(&v115 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      v12 = *(a3 + 24);
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *(a3 + 24) = *(&v115 + 1);
      *(&v115 + 1) = 0;
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_239E5B574(&v115);
    if (*(&__str + 1))
    {
      sub_239E5E560(*(&__str + 1));
    }

    MEMORY[0x23EE7E640](&v110);
    v19 = *(&__dst + 1);
    if (*(&__dst + 1) && atomic_fetch_add_explicit((*(&__dst + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v19 + 8))(v19);
    }
  }

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  obj = objc_msgSend_submeshes(v93, v17, v18);
  v89 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v103, v117, 16);
  if (v89)
  {
    v87 = *v104;
    do
    {
      for (i = 0; i != v89; ++i)
      {
        if (*v104 != v87)
        {
          objc_enumerationMutation(obj);
        }

        v92 = *(*(&v103 + 1) + 8 * i);
        if (v88 >= 2)
        {
          v110 = 0uLL;
          *&v111 = 0;
          sub_239E552A0(&v110, "");
          v24 = objc_msgSend_name(v92, v22, v23);
          v25 = v24 == 0;

          if (!v25)
          {
            v28 = objc_msgSend_name(v92, v26, v27);
            v29 = v28;
            v31 = objc_msgSend_cStringUsingEncoding_(v28, v30, 4);
            MEMORY[0x23EE7FFA0](&v110, v31);
          }

          v32 = BYTE7(v111);
          if (SBYTE7(v111) < 0)
          {
            v32 = *(&v110 + 1);
          }

          if (!v32)
          {
            MEMORY[0x23EE7FFA0](&v110, "_");
          }

          __dst = 0uLL;
          *&__dst_16 = 0;
          if (*(a5 + 23) < 0)
          {
            sub_239E5BAE0(&__dst, *a5, *(a5 + 1));
          }

          else
          {
            __dst = *a5;
            *&__dst_16 = *(a5 + 2);
          }

          v33 = objc_msgSend_submeshes(v93, v26, v27);
          v36 = objc_msgSend_count(v33, v34, v35) > 0x10;

          if (v36)
          {
            __str = 0u;
            v115 = 0u;
            snprintf(&__str, 0x20uLL, "/_%d", 0);
            std::string::append(&__dst, &__str);
          }

          __str = 0uLL;
          *&v115 = 0;
          if ((SBYTE7(__dst_16) & 0x80u) == 0)
          {
            v37 = BYTE7(__dst_16);
          }

          else
          {
            v37 = *(&__dst + 1);
          }

          memset(&v113, 0, sizeof(v113));
          sub_239E959D0(&v113, v37 + 1);
          if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v38 = &v113;
          }

          else
          {
            v38 = v113.__r_.__value_.__r.__words[0];
          }

          if (v37)
          {
            if ((SBYTE7(__dst_16) & 0x80u) == 0)
            {
              p_dst = &__dst;
            }

            else
            {
              p_dst = __dst;
            }

            memmove(v38, p_dst, v37);
          }

          *(&v38->__r_.__value_.__l.__data_ + v37) = 47;
          if ((SBYTE7(v111) & 0x80u) == 0)
          {
            v40 = &v110;
          }

          else
          {
            v40 = v110;
          }

          if ((SBYTE7(v111) & 0x80u) == 0)
          {
            v41 = BYTE7(v111);
          }

          else
          {
            v41 = *(&v110 + 1);
          }

          v42 = std::string::append(&v113, v40, v41);
          __p = *&v42->__r_.__value_.__l.__data_;
          *&v95 = *(&v42->__r_.__value_.__l + 2);
          v42->__r_.__value_.__l.__size_ = 0;
          v42->__r_.__value_.__r.__words[2] = 0;
          v42->__r_.__value_.__r.__words[0] = 0;
          sub_239F4A9EC(&__p, (a1 + 120), &__str);
          if (SBYTE7(v95) < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v113.__r_.__value_.__l.__data_);
          }

          sub_239E56DF8(&v113, (a1 + 112));
          MEMORY[0x23EE7ED00](&v112, &__str);
          pxrInternal__aapl__pxrReserved__::UsdGeomMesh::Define();
          v43 = *(&__p + 1);
          if (*(&__p + 1))
          {
            atomic_fetch_add_explicit((*(&__p + 1) + 48), 1uLL, memory_order_relaxed);
          }

          if (v108)
          {
            sub_239E5E560(v108);
          }

          v108 = v43;
          sub_239E57F68(&v109, &v95);
          sub_239E5B450(&v109 + 4, &v95 + 1);
          MEMORY[0x23EE7E550](&__p);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          sub_239E5B574(&v112);
          size = v113.__r_.__value_.__l.__size_;
          if (v113.__r_.__value_.__l.__size_ && atomic_fetch_add_explicit((v113.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFF, memory_order_release) == 1)
          {
            (*(*size + 8))(size);
          }

          if (SBYTE7(v115) < 0)
          {
            operator delete(__str);
          }

          if (SBYTE7(__dst_16) < 0)
          {
            operator delete(__dst);
          }

          if (SBYTE7(v111) < 0)
          {
            operator delete(v110);
          }
        }

        if (v108 && (*(v108 + 57) & 8) == 0 && (*(v107 + 32))(&v107))
        {
          MEMORY[0x23EE7ED20](&v110, "none");
          *(&__str + 1) = &off_284D16248 + 1;
          *&__str = v110;
          if ((v110 & 7) != 0 && (atomic_fetch_add_explicit((v110 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *&__str = __str & 0xFFFFFFFFFFFFFFF8;
          }

          pxrInternal__aapl__pxrReserved__::UsdGeomMesh::CreateSubdivisionSchemeAttr(&v107, &__str);
          if ((v102 & 7) != 0)
          {
            atomic_fetch_add_explicit((v102 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          sub_239E5B574(&v101);
          if (v100)
          {
            sub_239E5E560(v100);
          }

          sub_239E5B240(&__str);
          if ((v110 & 7) != 0)
          {
            atomic_fetch_add_explicit((v110 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          __dst = 0u;
          __dst_16 = 0u;
          v99 = 1065353216;
          __p = 0u;
          v95 = 0u;
          v96 = 1065353216;
          v47 = objc_msgSend_indexBuffer(v92, v45, v46);
          v86 = objc_msgSend_map(v47, v48, v49);

          v52 = objc_msgSend_bytes(v86, v50, v51);
          v55 = objc_msgSend_indexType(v92, v53, v54);
          switch(v55)
          {
            case 8:
              for (j = objc_msgSend_indexCount(v92, v56, v57); j; --j)
              {
                v63 = *v52;
                v52 = (v52 + 1);
                *&__str = v63;
                sub_239F51BD4(&__p, &__str);
              }

              break;
            case 16:
              for (k = objc_msgSend_indexCount(v92, v56, v57); k; --k)
              {
                v61 = *v52++;
                *&__str = v61;
                sub_239F51BD4(&__p, &__str);
              }

              break;
            case 32:
              for (m = objc_msgSend_indexCount(v92, v56, v57); m; --m)
              {
                v59 = *v52;
                v52 += 2;
                *&__str = v59;
                sub_239F51BD4(&__p, &__str);
              }

              break;
          }

          v66 = objc_msgSend_topology(v92, v56, v57);
          if (v66)
          {
            v67 = objc_msgSend_topology(v92, v64, v65);
            v72 = objc_msgSend_faceTopology(v67, v68, v69);
            if (v72)
            {
              v73 = objc_msgSend_topology(v92, v70, v71);
              v76 = objc_msgSend_faceCount(v73, v74, v75) != 0;

              v77 = v95;
              if (v95)
              {
                v78 = v76;
              }

              else
              {
                v78 = 1;
              }

              if (v78)
              {
                goto LABEL_116;
              }

              goto LABEL_113;
            }
          }

          v77 = v95;
          if (!v95)
          {
            goto LABEL_116;
          }

          do
          {
LABEL_113:
            *&v110 = v77[2];
            if (!sub_239E7C134(&__dst, &v110))
            {
              v79 = *(&__dst_16 + 1);
              *&__str = &v110;
              sub_239F51E04(&__dst, &v110)[3] = v79;
            }

            v77 = *v77;
          }

          while (v77);
LABEL_116:
          v80 = objc_msgSend_vertexDescriptor(v93, v64, v65);
          v82 = objc_msgSend_attributeNamed_(v80, v81, @"position");

          v116 = 0;
          __str = 0u;
          v115 = 0u;
          sub_239F4E0A4(v93, v82, &__str, &__dst);
          v110 = 0u;
          v111 = 0u;
          v113.__r_.__value_.__l.__size_ = &off_284D15C88;
          sub_239EB5D90();
        }
      }

      v89 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v103, v117, 16);
    }

    while (v89);
  }

  MEMORY[0x23EE7E550](&v107);
  v83 = *MEMORY[0x277D85DE8];
}

void sub_239F4D5D4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_239E797CC(a1);
  }

  _Unwind_Resume(a1);
}

void sub_239F4E0A4(void *a1, void *a2, unint64_t *a3, uint64_t a4)
{
  v7 = a1;
  v88 = a2;
  v90 = v7;
  v92 = objc_msgSend_bufferIndex(v88, v8, v9);
  v12 = objc_msgSend_vertexBuffers(v7, v10, v11);
  v14 = objc_msgSend_objectAtIndexedSubscript_(v12, v13, v92);
  v17 = objc_msgSend_map(v14, v15, v16);

  v91 = v17;
  v20 = objc_msgSend_bytes(v17, v18, v19);
  v23 = objc_msgSend_offset(v88, v21, v22);
  v26 = objc_msgSend_vertexDescriptor(v7, v24, v25);
  v29 = objc_msgSend_layouts(v26, v27, v28);
  v31 = objc_msgSend_objectAtIndexedSubscript_(v29, v30, v92);
  v34 = objc_msgSend_stride(v31, v32, v33);

  if (v34 <= 2)
  {
    v37 = objc_msgSend_name(v88, v35, v36);
    NSLog(&cfstr_AttributeStrid.isa, v37);

    if (*a3)
    {
      sub_239E5B364(a3);
    }

    goto LABEL_36;
  }

  v38 = *(a4 + 24);
  if (!v38)
  {
    v39 = objc_msgSend_vertexBuffers(v7, v35, v36);
    v41 = objc_msgSend_objectAtIndexedSubscript_(v39, v40, v92);
    v38 = objc_msgSend_length(v41, v42, v43) / v34;
  }

  v94 = 0;
  v93 = 0;
  v95 = &v93;
  sub_239E6D160(a3, v38, &v95);
  v89 = objc_msgSend_format(v88, v44, v45);
  v48 = (v20 + v23);
  v87 = objc_msgSend_format(v88, v46, v47);
  if (!*(a4 + 24))
  {
    if (!v38)
    {
      goto LABEL_36;
    }

    v73 = 0;
    while (v89 & 0x10000 | v87 & 0x20000)
    {
      if ((v89 & 0x10000) != 0)
      {
        v81 = *v48;
        v82 = *(v48 + 1);
        v83 = *(v48 + 2);
        sub_239E56B84(a3);
        v74 = v81 * 0.00392156863;
        v75 = v82 * 0.00392156863;
        v80 = v83 * 0.00392156863;
LABEL_28:
        v76 = v80;
        v17 = v91;
LABEL_29:
        v84 = (a3[4] + v73);
        *v84 = v74;
        v84[1] = v75;
        v84[2] = v76;
        goto LABEL_30;
      }

      if ((v87 & 0x20000) != 0)
      {
        v77 = *v48;
        v78 = *(v48 + 1);
        v79 = *(v48 + 2);
        sub_239E56B84(a3);
        v74 = v77 * 0.00787401575;
        v75 = v78 * 0.00787401575;
        v80 = v79 * 0.00787401575;
        goto LABEL_28;
      }

LABEL_30:
      v73 += 12;
      v48 = (v48 + v34);
      if (!--v38)
      {
        goto LABEL_36;
      }
    }

    v74 = *v48;
    v75 = v48[1];
    v76 = v48[2];
    sub_239E56B84(a3);
    goto LABEL_29;
  }

  v51 = *(a4 + 16);
  if (!v51)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v52 = v51[3];
    if (v52 >= *a3)
    {
      v85 = objc_msgSend_name(v88, v49, v50);
      NSLog(&cfstr_CorruptAttribu.isa, v85);

      if (!*a3)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    v53 = v51[2];
    v54 = objc_msgSend_vertexBuffers(v90, v49, v50);
    v56 = objc_msgSend_objectAtIndexedSubscript_(v54, v55, v92);
    v59 = objc_msgSend_length(v56, v57, v58);
    v60 = v53 * v34;

    if (v60 >= v59)
    {
      break;
    }

    v61 = (v48 + v60);
    if (!(v89 & 0x10000 | v87 & 0x20000))
    {
      v62 = *v61;
      v63 = v61[1];
      v64 = v61[2];
      v17 = v91;
      sub_239E56B84(a3);
      goto LABEL_17;
    }

    if ((v89 & 0x10000) != 0)
    {
      v69 = *v61;
      v70 = *(v61 + 1);
      v71 = *(v61 + 2);
      sub_239E56B84(a3);
      v62 = v69 * 0.00392156863;
      v63 = v70 * 0.00392156863;
      v68 = v71 * 0.00392156863;
LABEL_16:
      v64 = v68;
      v17 = v91;
LABEL_17:
      v72 = (a3[4] + 12 * v52);
      *v72 = v62;
      v72[1] = v63;
      v72[2] = v64;
      goto LABEL_18;
    }

    v17 = v91;
    if ((v87 & 0x20000) != 0)
    {
      v65 = *v61;
      v66 = *(v61 + 1);
      v67 = *(v61 + 2);
      sub_239E56B84(a3);
      v62 = v65 * 0.00787401575;
      v63 = v66 * 0.00787401575;
      v68 = v67 * 0.00787401575;
      goto LABEL_16;
    }

LABEL_18:
    v51 = *v51;
    if (!v51)
    {
      goto LABEL_36;
    }
  }

  v17 = v91;
  v86 = objc_msgSend_name(v88, v49, v50);
  NSLog(&cfstr_CorruptAttribu.isa, v86);

  if (!*a3)
  {
    goto LABEL_36;
  }

LABEL_35:
  sub_239E5B364(a3);
LABEL_36:
}

void sub_239F4E5EC(void *a1, void *a2, unint64_t *a3, uint64_t a4)
{
  v7 = a1;
  v65 = a2;
  v66 = v7;
  v10 = objc_msgSend_bufferIndex(v65, v8, v9);
  v13 = objc_msgSend_vertexBuffers(v7, v11, v12);
  v15 = objc_msgSend_objectAtIndexedSubscript_(v13, v14, v10);
  v18 = objc_msgSend_map(v15, v16, v17);

  v64 = v18;
  v21 = objc_msgSend_bytes(v18, v19, v20);
  v24 = objc_msgSend_offset(v65, v22, v23);
  v27 = objc_msgSend_vertexDescriptor(v7, v25, v26);
  v30 = objc_msgSend_layouts(v27, v28, v29);
  v32 = objc_msgSend_objectAtIndexedSubscript_(v30, v31, v10);
  v35 = objc_msgSend_stride(v32, v33, v34);

  v38 = *(a4 + 24);
  if (!v38)
  {
    v39 = objc_msgSend_vertexBuffers(v7, v36, v37);
    v41 = objc_msgSend_objectAtIndexedSubscript_(v39, v40, v10);
    v38 = objc_msgSend_length(v41, v42, v43) / v35;
  }

  v67 = 0;
  v68 = &v67;
  sub_239E6D4E8(a3, v38, &v68);
  v46 = (v21 + v24);
  if (*(a4 + 24))
  {
    v47 = *(a4 + 16);
    if (v47)
    {
      while (1)
      {
        v48 = v47[3];
        if (v48 >= *a3)
        {
          v62 = objc_msgSend_name(v65, v44, v45);
          NSLog(&cfstr_CorruptAttribu.isa, v62);

          if (!*a3)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }

        v49 = v47[2];
        v50 = objc_msgSend_vertexBuffers(v66, v44, v45);
        v52 = objc_msgSend_objectAtIndexedSubscript_(v50, v51, v10);
        v55 = objc_msgSend_length(v52, v53, v54);
        v56 = v49 * v35;

        if (v56 >= v55)
        {
          break;
        }

        v59 = *(v46 + v56);
        sub_239E6DBE4(a3);
        *(a3[4] + 8 * v48) = v59;
        v47 = *v47;
        if (!v47)
        {
          goto LABEL_17;
        }
      }

      v63 = objc_msgSend_name(v65, v57, v58);
      NSLog(&cfstr_CorruptAttribu.isa, v63);

      if (!*a3)
      {
        goto LABEL_17;
      }

LABEL_16:
      sub_239E5B364(a3);
    }
  }

  else if (v38)
  {
    for (i = 0; i != v38; ++i)
    {
      v61 = *v46;
      sub_239E6DBE4(a3);
      *(a3[4] + 8 * i) = v61;
      v46 = (v46 + v35);
    }
  }

LABEL_17:
}

void sub_239F4E92C(uint64_t a1, void *a2, int a3)
{
  v163 = *MEMORY[0x277D85DE8];
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  v159 = 0u;
  obj = a2;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v156, v162, 16);
  if (v5)
  {
    v105 = *v157;
    do
    {
      v8 = 0;
      v107 = v5;
      do
      {
        if (*v157 != v105)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v156 + 1) + 8 * v8);
        v154 = 0;
        v153 = 0;
        v155 = 0;
        v10 = objc_msgSend_path(v9, v6, v7);
        v11 = v10;
        v13 = objc_msgSend_cStringUsingEncoding_(v10, v12, 4);
        sub_239E552A0(&v153, v13);

        sub_239F47E18(a1, &v136);
        if (v155 >= 0)
        {
          v14 = &v153;
        }

        else
        {
          v14 = v153;
        }

        if (v155 >= 0)
        {
          v15 = HIBYTE(v155);
        }

        else
        {
          v15 = v154;
        }

        v16 = std::string::append(&v136, v14, v15);
        v152 = *v16;
        v16->__r_.__value_.__l.__size_ = 0;
        v16->__r_.__value_.__r.__words[2] = 0;
        v16->__r_.__value_.__r.__words[0] = 0;
        if (SBYTE7(v137[0]) < 0)
        {
          operator delete(v136);
        }

        v150 = 0u;
        v151 = 0u;
        LODWORD(v150) = 1;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
        *(&v151 + 1) = 0;
        memset(&__str, 0, sizeof(__str));
        v17 = sub_239F4A9EC(&v152, (a1 + 120), &__str);
        v148 = 0;
        MEMORY[0x23EE7ED00](&v148, &__str, v17);
        v20 = objc_msgSend_instance(v9, v18, v19);
        v21 = v20 == 0;

        if (v21)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            sub_239F4AEFC(a1, v9, &v150, &v148, &v152);
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v36 = sub_239E57038((a1 + 112));
              MEMORY[0x23EE7ED20](__p, "Camera");
              pxrInternal__aapl__pxrReserved__::UsdStage::DefinePrim(&v136, v36, &v148, __p);
              LODWORD(v150) = v136;
              if (*(&v150 + 1))
              {
                sub_239E5E560(*(&v150 + 1));
              }

              *(&v150 + 1) = *(&v136 + 1);
              *(&v136 + 1) = 0;
              sub_239E650AC(&v151, v137);
              sub_239E65104(&v151 + 4, v137 + 1);
              if ((BYTE8(v151) & 7) != 0)
              {
                atomic_fetch_add_explicit((*(&v151 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              *(&v151 + 1) = *(&v137[0] + 1);
              *(&v137[0] + 1) = 0;
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              sub_239E5B574(v137);
              if (*(&v136 + 1))
              {
                sub_239E5E560(*(&v136 + 1));
              }

              if ((__p[0] & 7) != 0)
              {
                atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              v143 = v150;
              v144 = *(&v150 + 1);
              if (*(&v150 + 1))
              {
                atomic_fetch_add_explicit((*(&v150 + 1) + 48), 1uLL, memory_order_relaxed);
              }

              sub_239E57FC0(&v145, &v151);
              sub_239E5B49C(&v146, &v151 + 1);
              v147 = *(&v151 + 1);
              if ((BYTE8(v151) & 7) != 0 && (atomic_fetch_add_explicit((*(&v151 + 1) & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
              {
                v147 &= 0xFFFFFFFFFFFFFFF8;
              }

              sub_239F7321C(v9, &v143);
              if ((v147 & 7) != 0)
              {
                atomic_fetch_add_explicit((v147 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              sub_239E5B574(&v145);
              if (v144)
              {
                sub_239E5E560(v144);
              }
            }

            else
            {
              v37 = objc_msgSend_transform(v9, v34, v35);
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if ((isKindOfClass & 1) == 0)
              {
                sub_239E56DF8(&v140, (a1 + 112));
                pxrInternal__aapl__pxrReserved__::UsdGeomScope::Define();
                sub_239F7530C(v142, &v141);
                v32 = 0;
                goto LABEL_58;
              }

              sub_239E56DF8(&v112, (a1 + 112));
              pxrInternal__aapl__pxrReserved__::UsdGeomXform::Define();
              sub_239E5815C(&v136, &__p[1], &v129);
              LODWORD(v150) = v136;
              if (*(&v150 + 1))
              {
                sub_239E5E560(*(&v150 + 1));
              }

              *(&v150 + 1) = *(&v136 + 1);
              *(&v136 + 1) = 0;
              sub_239E650AC(&v151, v137);
              sub_239E65104(&v151 + 4, v137 + 1);
              if ((BYTE8(v151) & 7) != 0)
              {
                atomic_fetch_add_explicit((*(&v151 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              *(&v151 + 1) = *(&v137[0] + 1);
              *(&v137[0] + 1) = 0;
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              sub_239E5B574(v137);
              if (*(&v136 + 1))
              {
                sub_239E5E560(*(&v136 + 1));
              }

              MEMORY[0x23EE7E640](__p);
              v39 = *(&v112 + 1);
              if (*(&v112 + 1) && atomic_fetch_add_explicit((*(&v112 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
              {
                (*(*v39 + 8))(v39);
              }
            }
          }

          v32 = 1;
        }

        else
        {
          __p[0] = 0;
          __p[1] = 0;
          v129.f64[0] = 0.0;
          v24 = objc_msgSend_instance(v9, v22, v23);
          v27 = objc_msgSend_path(v24, v25, v26);
          v28 = v27;
          v30 = objc_msgSend_cStringUsingEncoding_(v27, v29, 4);
          sub_239E552A0(__p, v30);

          v31 = sub_239F50B3C((a1 + 224), __p);
          v32 = v31 != 0;
          if (v31)
          {
            v33 = sub_239E57038((a1 + 112));
            *&v112 = 0;
            pxrInternal__aapl__pxrReserved__::UsdStage::DefinePrim(&v136, v33, &v148, &v112);
            LODWORD(v150) = v136;
            if (*(&v150 + 1))
            {
              sub_239E5E560(*(&v150 + 1));
            }

            *(&v150 + 1) = *(&v136 + 1);
            *(&v136 + 1) = 0;
            sub_239E650AC(&v151, v137);
            sub_239E65104(&v151 + 4, v137 + 1);
            if ((BYTE8(v151) & 7) != 0)
            {
              atomic_fetch_add_explicit((*(&v151 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            *(&v151 + 1) = *(&v137[0] + 1);
            *(&v137[0] + 1) = 0;
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            sub_239E5B574(v137);
            if (*(&v136 + 1))
            {
              sub_239E5E560(*(&v136 + 1));
            }

            if ((v112 & 7) != 0)
            {
              atomic_fetch_add_explicit((v112 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            sub_239F4F868(&v150);
          }

          if (SHIBYTE(v129.f64[0]) < 0)
          {
            operator delete(__p[0]);
          }
        }

LABEL_58:
        if (sub_239E5E5B4(&v150))
        {
          v42 = objc_msgSend_transform(v9, v40, v41);
          v43 = v42 && v32;

          if (v43)
          {
            memset(v139, 0, sizeof(v139));
            pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
            v139[0] = MEMORY[0x277D866D0] + 16;
            v138 = 0;
            v136 = 0u;
            memset(v137, 0, sizeof(v137));
            __p[0] = 0;
            pxrInternal__aapl__pxrReserved__::UsdGeomXformable::AddTransformOp();
            if ((__p[0] & 7) != 0)
            {
              atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v104 = objc_msgSend_transform(v9, v44, v45);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v48 = objc_msgSend_keyTimes(v104, v46, v47);
              v49 = v48;
              if (v104 && v48)
              {
                v126 = 0u;
                v127 = 0u;
                v124 = 0u;
                v125 = 0u;
                v50 = v48;
                v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v51, &v124, v161, 16);
                if (v54)
                {
                  v55 = *v125;
                  do
                  {
                    for (i = 0; i != v54; ++i)
                    {
                      if (*v125 != v55)
                      {
                        objc_enumerationMutation(v50);
                      }

                      objc_msgSend_doubleValue(*(*(&v124 + 1) + 8 * i), v52, v53);
                      v58 = v57;
                      v61 = objc_msgSend_transform(v9, v59, v60);
                      objc_msgSend_localTransformAtTime_(v61, v62, v63, v58);
                      v108 = v64;
                      v109 = v65;
                      v110 = v66;
                      v111 = v67;

                      v70 = objc_msgSend_count(v50, v68, v69);
                      *__p = vcvtq_f64_f32(*v108.f32);
                      v129 = vcvt_hight_f64_f32(v108);
                      v130 = vcvtq_f64_f32(*v109.f32);
                      v131 = vcvt_hight_f64_f32(v109);
                      v132 = vcvtq_f64_f32(*v110.f32);
                      v133 = vcvt_hight_f64_f32(v110);
                      v134 = vcvtq_f64_f32(*v111.f32);
                      v135 = vcvt_hight_f64_f32(v111);
                      if (v70 >= 2)
                      {
                        objc_msgSend__timeCodesPerSecond(*a1, v71, v72);
                      }

                      sub_239F4F900(&v136);
                    }

                    v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v52, &v124, v161, 16);
                  }

                  while (v54);
                }

                v49 = v50;
              }

              else
              {
                v93 = *(MEMORY[0x277D860B8] + 16);
                v94 = vcvt_hight_f64_f32(*MEMORY[0x277D860B8]);
                *__p = vcvtq_f64_f32(*MEMORY[0x277D860B8]);
                v129 = v94;
                v130 = vcvtq_f64_f32(*v93.f32);
                v131 = vcvt_hight_f64_f32(v93);
                v95 = *(MEMORY[0x277D860B8] + 32);
                v96 = *(MEMORY[0x277D860B8] + 48);
                v132 = vcvtq_f64_f32(*v95.f32);
                v133 = vcvt_hight_f64_f32(v95);
                v134 = vcvtq_f64_f32(*v96.f32);
                v135 = vcvt_hight_f64_f32(v96);
                sub_239F4F900(&v136);
              }

              goto LABEL_98;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v49 = objc_msgSend_transform(v9, v73, v74);
              v77 = objc_msgSend_keyTimes(v49, v75, v76);
              v80 = v77;
              if (v77 && objc_msgSend_count(v77, v78, v79))
              {
                v122 = 0u;
                v123 = 0u;
                v120 = 0u;
                v121 = 0u;
                v81 = v80;
                v85 = objc_msgSend_countByEnumeratingWithState_objects_count_(v81, v82, &v120, v160, 16);
                if (v85)
                {
                  v86 = *v121;
                  do
                  {
                    for (j = 0; j != v85; ++j)
                    {
                      if (*v121 != v86)
                      {
                        objc_enumerationMutation(v81);
                      }

                      objc_msgSend_doubleValue(*(*(&v120 + 1) + 8 * j), v83, v84);
                      v134 = 0u;
                      v135 = 0u;
                      v132 = 0u;
                      v133 = 0u;
                      v130 = 0u;
                      v131 = 0u;
                      *__p = 0u;
                      v129 = 0u;
                      if (v49)
                      {
                        objc_msgSend_double4x4AtTime_(v49, v88, v89, v90);
                      }

                      if (objc_msgSend_count(v81, v88, v89) < 2)
                      {
                        v112 = *__p;
                        v113 = v129;
                        v114 = v130;
                        v115 = v131;
                        v116 = v132;
                        v117 = v133;
                        v118 = v134;
                        v119 = v135;
                      }

                      else
                      {
                        v112 = *__p;
                        v113 = v129;
                        v114 = v130;
                        v115 = v131;
                        v116 = v132;
                        v117 = v133;
                        v118 = v134;
                        v119 = v135;
                        objc_msgSend__timeCodesPerSecond(*a1, v91, v92);
                      }

                      sub_239F4F900(&v136);
                    }

                    v85 = objc_msgSend_countByEnumeratingWithState_objects_count_(v81, v83, &v120, v160, 16);
                  }

                  while (v85);
                }
              }

              else
              {
                v97 = *(MEMORY[0x277D860B8] + 16);
                v98 = vcvt_hight_f64_f32(*MEMORY[0x277D860B8]);
                *__p = vcvtq_f64_f32(*MEMORY[0x277D860B8]);
                v129 = v98;
                v130 = vcvtq_f64_f32(*v97.f32);
                v131 = vcvt_hight_f64_f32(v97);
                v99 = *(MEMORY[0x277D860B8] + 32);
                v100 = *(MEMORY[0x277D860B8] + 48);
                v132 = vcvtq_f64_f32(*v99.f32);
                v133 = vcvt_hight_f64_f32(v99);
                v134 = vcvtq_f64_f32(*v100.f32);
                v135 = vcvt_hight_f64_f32(v100);
                sub_239F4F900(&v136);
              }

LABEL_98:
            }

            sub_239ED16C4(&v136);
            MEMORY[0x23EE7E640](v139);
          }
        }

        if (a3)
        {
          *&v136 = &v153;
          v101 = sub_239F520EC((a1 + 224), &v153);
          std::string::operator=((v101 + 5), &__str);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        sub_239E5B574(&v148);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if ((BYTE8(v151) & 7) != 0)
        {
          atomic_fetch_add_explicit((*(&v151 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        sub_239E5B574(&v151);
        if (*(&v150 + 1))
        {
          sub_239E5E560(*(&v150 + 1));
        }

        if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v152.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v155) < 0)
        {
          operator delete(v153);
        }

        ++v8;
      }

      while (v8 != v107);
      v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v156, v162, 16);
    }

    while (v5);
  }

  v102 = *MEMORY[0x277D85DE8];
}

void sub_239F4F868(uint64_t a1)
{
  v2 = atomic_load(MEMORY[0x277D86540]);
  if (v2)
  {
    sub_239F50C38(a1, (v2 + 200));
  }

  sub_239F51470();
}

uint64_t sub_239F4F900(pxrInternal__aapl__pxrReserved__::UsdGeomXformOp *a1)
{
  if (*(a1 + 132) != 1)
  {
    sub_239ED0DC4(a1);

    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::GfMatrix4d>();
  }

  v4[1] = "usdGeom/xformOp.h";
  v4[2] = "Set";
  v4[3] = 406;
  v4[4] = "BOOL pxrInternal__aapl__pxrReserved__::UsdGeomXformOp::Set(const T &, UsdTimeCode) const [T = pxrInternal__aapl__pxrReserved__::GfMatrix4d]";
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::UsdGeomXformOp::GetOpName(v4, a1);
  v1 = v4[0] & 0xFFFFFFFFFFFFFFF8;
  if ((v4[0] & 0xFFFFFFFFFFFFFFF8) != 0 && *(v1 + 39) < 0)
  {
    v2 = *(v1 + 16);
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper();
  if ((v4[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v4[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return 0;
}

void sub_239F4FA18(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v16 = 0;
  sub_239E552A0(v19, ".usda");
  *&v18.__r_.__value_.__r.__words[1] = 0uLL;
  v18.__r_.__value_.__r.__words[0] = &v18.__r_.__value_.__l.__size_;
  pxrInternal__aapl__pxrReserved__::SdfLayer::CreateAnonymous();
  sub_239E91CE0(&v18, v18.__r_.__value_.__l.__size_);
  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  sub_239F5249C(v14, &v16);
  pxrInternal__aapl__pxrReserved__::UsdStage::Open();
  v4 = *(a1 + 112);
  *(a1 + 112) = v15;
  v15 = 0;
  sub_239F74D14(a1 + 112, v4);
  if (!sub_239F75360(&v15, v14, (a1 + 112)))
  {
    v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"Model IO export preview %.02f", 0x3FF19999A0000000);
    sub_239E57038((a1 + 112));
    MEMORY[0x23EE7ED20](&v18, "customLayerData");
    MEMORY[0x23EE7ED20](__p, "creator");
    v6 = v11;
    v17 = objc_msgSend_UTF8String(v11, v7, v8);
    v19[1] = 0;
    sub_239F52514(v19, &v17);
  }

  *a3 = 0;
  sub_239E57694(a3);
  sub_239F5246C(&v16);

  v9 = *MEMORY[0x277D85DE8];
}

void sub_239F502E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, char a42, int a43, __int16 a44, char a45, char a46, uint64_t a47)
{
  if (a2)
  {
    sub_239E797CC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_239F50658(uint64_t a1)
{
  v2 = atomic_load(MEMORY[0x277D86540]);
  if (v2)
  {
    sub_239F5152C(a1, (v2 + 464));
  }

  sub_239F51470();
}

void sub_239F506FC(uint64_t a1)
{
  v2 = atomic_load(MEMORY[0x277D86540]);
  if (v2)
  {
    sub_239F50F68(a1, (v2 + 320));
  }

  sub_239F51470();
}

void sub_239F50794(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  sub_239E566C0();
  *&v28[8] = 0u;
  *&v24[8] = 0u;
  v22 = 1065353216;
  v10 = v7;
  v11 = v9;
  v12[0] = v10;
  v12[1] = v11;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0;
  v23 = 0u;
  *v24 = 0u;
  *&v24[16] = 1065353216;
  v26[0] = 0;
  v26[1] = 0;
  v25 = v26;
  *v28 = 0u;
  v27 = 0u;
  *&v28[16] = 1065353216;
  *a4 = 0;
  sub_239F4FA18(v12, v8, a4);
  sub_239F512E0(v12);
}

void sub_239F508AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_239F512E0(va);

  _Unwind_Resume(a1);
}

void sub_239F508D4(void *a1@<X1>, void *a2@<X2>, _BYTE *a3@<X8>)
{
  v5 = a1;
  v8 = a2;
  if (v8)
  {
    v9 = objc_msgSend_URLByDeletingPathExtension(v5, v6, v7);
    v12 = objc_msgSend_lastPathComponent(v9, v10, v11);

    v21 = 0;
    sub_239F50794(v8, v12, v5, &v21);
    if (v21)
    {
      memset(v20, 0, sizeof(v20));
      sub_239E5663C(v5, v13, v14, v20);
      v15 = sub_239E57038(&v21);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(v19, v15);
      sub_239F50AEC(v19);
      memset(v18, 0, sizeof(v18));
      v17[0] = 0;
      v17[1] = 0;
      v16 = v17;
      pxrInternal__aapl__pxrReserved__::SdfLayer::Export();
      sub_239F753C4(v17, &v16, v18, v19);
      sub_239E552A0(a3, "");
      sub_239F75438(v20);
    }

    else
    {
      sub_239E552A0(a3, "Cannot create USD data for export");
    }

    sub_239F178C8(&v21);
  }

  else
  {
    sub_239E552A0(a3, "Cannot export nil asset");
  }
}

uint64_t sub_239F50AEC(uint64_t *a1)
{
  v3 = a1[1];
  v2 = a1 + 1;
  if (!v3)
  {
    return sub_239F75464(v7);
  }

  v4 = *(sub_239EF2C90(v2) + 14);
  result = *a1;
  if (v4 != 1 || result == 0)
  {
    return sub_239F75464(v7);
  }

  return result;
}

const void **sub_239F50B3C(void *a1, const void **a2)
{
  v4 = sub_239E68B60(a1, a2);
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

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (sub_239EF2FF8(a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

void sub_239F50C38(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  v3 = *v2;
  pxrInternal__aapl__pxrReserved__::UsdStage::_SetMetadataImpl<pxrInternal__aapl__pxrReserved__::SdfAbstractDataConstValue>();
}

uint64_t sub_239F50CD8(uint64_t a1, uint64_t a2)
{
  v3 = **(a1 + 8);
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = (*(a2 + 8) & 3) == 3;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 32))(a2);
  }

  *(a2 + 8) = &unk_284D154A3;
  *a2 = v3;
  return 1;
}

uint64_t sub_239F50D3C(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  v2 = *(this + 1);
  if (!v2)
  {
    return 0;
  }

  v3 = this;
  if (!*((v2 & 0xFFFFFFFFFFFFFFF8) + 16))
  {
    goto LABEL_8;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }

  result = pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(this, MEMORY[0x277D82798]);
  if (result)
  {
    v2 = *(v3 + 1);
LABEL_8:
    if ((v2 & 4) != 0)
    {
      v3 = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(v3);
    }

    return *v3 == **(a1 + 8);
  }

  return result;
}

_BYTE *sub_239F50EF0@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &unk_284D154A3;
  *a2 = *result;
  return result;
}

uint64_t sub_239F50F0C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_239E5E560(v3);
  }

  return a1;
}

void sub_239F50F68(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  v3 = *v2;
  pxrInternal__aapl__pxrReserved__::UsdStage::_SetMetadataImpl<pxrInternal__aapl__pxrReserved__::SdfAbstractDataConstValue>();
}

uint64_t sub_239F51008(uint64_t a1, uint64_t a2)
{
  v3 = **(a1 + 8);
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = (*(a2 + 8) & 3) == 3;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 32))(a2);
  }

  *(a2 + 8) = &off_284D16BA0 + 3;
  *a2 = v3;
  return 1;
}

uint64_t sub_239F5106C(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v2 = *(a2 + 1);
  if (!v2)
  {
    return 0;
  }

  v3 = a2;
  if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__12SdfSpecifierE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    goto LABEL_7;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }

  result = pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(v3, &stru_284D17D38);
  if (result)
  {
    v2 = *(v3 + 1);
LABEL_7:
    if ((v2 & 4) != 0)
    {
      v3 = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(v3);
    }

    return *v3 == **(a1 + 8);
  }

  return result;
}

_DWORD *sub_239F51230@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &off_284D16BA0 + 3;
  *a2 = *result;
  return result;
}

void *sub_239F5124C(unsigned int *a1, void *a2)
{
  v3 = *a1;
  pxrInternal__aapl__pxrReserved__::TfEnum::GetName();
  if ((v9 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v5 = v9;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = sub_239E98B94(a2, v4, v5);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

void sub_239F512C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239F512E0(uint64_t a1)
{
  sub_239F51380(a1 + 224);
  sub_239F51400(a1 + 200, *(a1 + 208));
  sub_239F178F8(a1 + 160);
  sub_239F178F8(a1 + 120);
  sub_239F178C8((a1 + 112));
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_239F51380(uint64_t a1)
{
  sub_239F513BC(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_239F513BC(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_239E91D3C((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_239F51400(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_239F51400(a1, *a2);
    sub_239F51400(a1, *(a2 + 1));
    MEMORY[0x23EE7E910](a2 + 40);
    v4 = *(a2 + 4);
    *(a2 + 4) = 0;

    operator delete(a2);
  }
}

void sub_239F5152C(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  v2 = *(a1 + 8);
  if (!v2 || (*(v2 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  v3 = *v2;
  pxrInternal__aapl__pxrReserved__::UsdStage::_SetMetadataImpl<pxrInternal__aapl__pxrReserved__::SdfAbstractDataConstValue>();
}

uint64_t sub_239F515F4(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  v2 = *(this + 1);
  if (!v2)
  {
    return 0;
  }

  v3 = this;
  if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) == 13)
  {
    if ((v2 & 4) == 0)
    {
      return (**(a1 + 8) ^ *v3) < 8uLL;
    }

LABEL_10:
    v3 = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(v3);
    return (**(a1 + 8) ^ *v3) < 8uLL;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }

  result = pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(this, &stru_284D17C00);
  if (result)
  {
    v2 = *(v3 + 1);
    if ((v2 & 4) == 0)
    {
      return (**(a1 + 8) ^ *v3) < 8uLL;
    }

    goto LABEL_10;
  }

  return result;
}

uint64_t *sub_239F5169C(uint64_t *a1, uint64_t *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v8 = 0;
  sub_239E5B3EC(&v7, a1);
  a1[1] = &off_284D16248 + 1;
  v4 = *a2;
  *a1 = *a2;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  if (v8)
  {
    (*(v8 + 32))(&v7);
  }

  v5 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_239F51758(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_239E797CC(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_239F51764(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a2 &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

void *sub_239F51794(void *result)
{
  if ((*result & 7) != 0)
  {
    atomic_fetch_add_explicit((*result & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void *sub_239F517B0(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

atomic_uint **sub_239F518D4@<X0>(atomic_uint **result@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *result;
  *a2 = *result;
  a2[1] = (&off_284D16248 + 1);
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v3;
    }
  }

  return result;
}

void *sub_239F51908(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    sub_239F519CC();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
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

void sub_239F51A58(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_239F51B64(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_239F51A74(void *a1, id **a2)
{
  *a1 = **a2;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  a1[1] = MEMORY[0x277D86758] + 16;
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&v4);
  return a1;
}

void sub_239F51B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_239ED1984(&a9);
  sub_239F172DC(v9);
  _Unwind_Resume(a1);
}

void sub_239F51B64(uint64_t a1, id *a2)
{
  if (*(a1 + 8) == 1)
  {
    MEMORY[0x23EE7E910](a2 + 5);
    v3 = a2[4];
    a2[4] = 0;
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void *sub_239F51BD4(void *a1, unint64_t *a2)
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