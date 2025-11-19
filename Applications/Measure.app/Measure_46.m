unint64_t sub_100302920(uint64_t *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *a1;
  v8 = a1;
  v9 = *(a1 + 8);
  v10 = v9 < v7;
  if (v9 != v7)
  {
    goto LABEL_4;
  }

LABEL_2:
  v11 = v8[5];
  v10 = v11 < v4;
  if (v11 == v4)
  {
    v10 = a1[v2 + 6] < v5;
  }

LABEL_4:
  while (v10)
  {
    v2 += 4;
    v8 = &a1[v2];
    v12 = a1[v2 + 4];
    v10 = v12 < v7;
    if (v12 == v7)
    {
      goto LABEL_2;
    }
  }

  v13 = &a1[v2 + 4];
  if (v2 * 8)
  {
    do
    {
      while (1)
      {
        while (1)
        {
          v14 = *(a2 - 32);
          a2 -= 32;
          v15 = v14 < v7;
          if (v14 == v7)
          {
            break;
          }

          if (v15)
          {
            goto LABEL_17;
          }
        }

        v16 = *(a2 + 8);
        if (v16 != v4)
        {
          break;
        }

        if (*(a2 + 16) < v5)
        {
          goto LABEL_17;
        }
      }
    }

    while (v16 >= v4);
  }

  else if (v13 < a2)
  {
    do
    {
      v27 = *(a2 - 32);
      a2 -= 32;
      v28 = v27 < v7;
      if (v27 == v7)
      {
        v29 = *(a2 + 8);
        v28 = v29 < v4;
        if (v29 == v4)
        {
          v28 = *(a2 + 16) < v5;
        }
      }
    }

    while (!v28 && v13 < a2);
  }

LABEL_17:
  v17 = v13;
  if (v13 < a2)
  {
    v18 = a2;
    do
    {
      v32 = *v17;
      v33 = *(v17 + 16);
      v19 = *(v18 + 16);
      *v17 = *v18;
      *(v17 + 16) = v19;
      *v18 = v32;
      *(v18 + 16) = v33;
      do
      {
        while (1)
        {
          while (1)
          {
            v20 = *(v17 + 32);
            v17 += 32;
            v21 = v20 < v7;
            if (v20 == v7)
            {
              break;
            }

            if (!v21)
            {
              goto LABEL_30;
            }
          }

          v22 = *(v17 + 8);
          if (v22 != v4)
          {
            break;
          }

          if (*(v17 + 16) >= v5)
          {
            goto LABEL_30;
          }
        }
      }

      while (v22 < v4);
      do
      {
        while (1)
        {
LABEL_30:
          while (1)
          {
            v23 = *(v18 - 32);
            v18 -= 32;
            v24 = v23 < v7;
            if (v23 == v7)
            {
              break;
            }

            if (v24)
            {
              goto LABEL_19;
            }
          }

          v25 = *(v18 + 8);
          if (v25 != v4)
          {
            break;
          }

          if (*(v18 + 16) < v5)
          {
            goto LABEL_19;
          }
        }
      }

      while (v25 >= v4);
LABEL_19:
      ;
    }

    while (v17 < v18);
  }

  if ((v17 - 32) != a1)
  {
    v30 = *(v17 - 16);
    *a1 = *(v17 - 32);
    *(a1 + 1) = v30;
  }

  *(v17 - 32) = v3;
  *(v17 - 24) = v4;
  *(v17 - 16) = v5;
  *(v17 - 8) = v6;
  return v17 - 32;
}

BOOL sub_100302AC4(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - a1) >> 5;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        sub_1003023C0(a1, (a1 + 32), (a2 - 32));
        return 1;
      case 4:
        sub_1003023C0(a1, (a1 + 32), (a1 + 64));
        v28 = (a2 - 32);
        v29 = *(a2 - 32);
        v30 = *(a1 + 64);
        v31 = v29 < v30;
        if (v29 == v30 && (v32 = *(a2 - 24), v33 = *(a1 + 72), v31 = v32 < v33, v32 == v33))
        {
          if (*(a2 - 16) >= *(a1 + 80))
          {
            return 1;
          }
        }

        else if (!v31)
        {
          return 1;
        }

        v38 = *(a1 + 64);
        v37 = *(a1 + 80);
        v39 = *(a2 - 16);
        *(a1 + 64) = *v28;
        *(a1 + 80) = v39;
        *v28 = v38;
        *(a2 - 16) = v37;
        v40 = *(a1 + 64);
        v41 = *(a1 + 32);
        v42 = v40 < v41;
        if (v40 == v41)
        {
          v43 = *(a1 + 72);
          v44 = *(a1 + 40);
          v42 = v43 < v44;
          if (v43 == v44)
          {
            v42 = *(a1 + 80) < *(a1 + 48);
          }
        }

        if (v42)
        {
          v46 = *(a1 + 32);
          v45 = *(a1 + 48);
          v47 = *(a1 + 80);
          *(a1 + 32) = *(a1 + 64);
          *(a1 + 48) = v47;
          *(a1 + 64) = v46;
          *(a1 + 80) = v45;
          v48 = *(a1 + 32);
          v49 = v48 < *a1;
          if (v48 == *a1)
          {
            v50 = *(a1 + 40);
            v51 = *(a1 + 8);
            v49 = v50 < v51;
            if (v50 == v51)
            {
              v49 = *(a1 + 48) < *(a1 + 16);
            }
          }

          if (v49)
          {
            v53 = *a1;
            v52 = *(a1 + 16);
            v54 = *(a1 + 48);
            *a1 = *(a1 + 32);
            *(a1 + 16) = v54;
            *(a1 + 32) = v53;
            *(a1 + 48) = v52;
            return 1;
          }
        }

        return 1;
      case 5:
        sub_100302550(a1, (a1 + 32), (a1 + 64), (a1 + 96), (a2 - 32));
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v4 = (a2 - 32);
      v5 = *(a2 - 32);
      v6 = v5 < *a1;
      if (v5 == *a1 && (v7 = *(a2 - 24), v8 = *(a1 + 8), v6 = v7 < v8, v7 == v8))
      {
        if (*(a2 - 16) >= *(a1 + 16))
        {
          return 1;
        }
      }

      else if (!v6)
      {
        return 1;
      }

      v35 = *a1;
      v34 = *(a1 + 16);
      v36 = *(a2 - 16);
      *a1 = *v4;
      *(a1 + 16) = v36;
      *v4 = v35;
      *(a2 - 16) = v34;
      return 1;
    }
  }

  v9 = a1 + 64;
  sub_1003023C0(a1, (a1 + 32), (a1 + 64));
  v12 = a1 + 96;
  if (a1 + 96 == a2)
  {
    return 1;
  }

  v13 = 0;
  v14 = 0;
  while (2)
  {
    v15 = *v12;
    if (*v12 == *v9)
    {
      v16 = *(v12 + 8);
      v17 = *(v9 + 8);
      if (v16 == v17)
      {
        if (*(v12 + 16) >= *(v9 + 16))
        {
          goto LABEL_18;
        }
      }

      else if (v16 >= v17)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v15 >= *v9)
      {
        goto LABEL_18;
      }

      v16 = *(v12 + 8);
    }

    v18 = *(v12 + 4);
    v20 = *(v12 + 16);
    v19 = *(v12 + 24);
    v21 = *(v9 + 16);
    *v12 = *v9;
    *(v12 + 16) = v21;
    v22 = v13;
    while (1)
    {
      v24 = *(a1 + v22 + 32);
      if (v15 != v24)
      {
        if (v15 >= v24)
        {
          goto LABEL_17;
        }

        goto LABEL_28;
      }

      v25 = *(a1 + v22 + 40);
      if (v16 == v25)
      {
        if (v20 >= *(a1 + v22 + 48))
        {
          goto LABEL_17;
        }

        goto LABEL_28;
      }

      if (v16 >= v25)
      {
        break;
      }

LABEL_28:
      v9 -= 32;
      v23 = *(a1 + v22 + 48);
      *(a1 + v22 + 64) = *(a1 + v22 + 32);
      *(a1 + v22 + 80) = v23;
      v22 -= 32;
      if (v22 == -64)
      {
        v9 = a1;
        goto LABEL_17;
      }
    }

    v9 = a1 + v22 + 64;
LABEL_17:
    *v9 = v15;
    *(v9 + 4) = v18;
    *(v9 + 8) = v16;
    *(v9 + 16) = v20;
    ++v14;
    *(v9 + 24) = v19;
    if (v14 != 8)
    {
LABEL_18:
      v9 = v12;
      v13 += 32;
      v12 += 32;
      if (v12 == a2)
      {
        return 1;
      }

      continue;
    }

    return v12 + 32 == a2;
  }
}

uint64_t sub_100302E2C(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 5)
    {
      v6 = v4 >> 4;
      v7 = (v4 >> 4) + 1;
      v8 = result + 32 * v7;
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = *(v8 + 32);
        v11 = *v8 < v10;
        if (*v8 == v10)
        {
          v12 = *(v8 + 8);
          v13 = *(v8 + 40);
          v11 = v12 < v13;
          if (v12 == v13)
          {
            v11 = *(v8 + 16) < *(v8 + 48);
          }
        }

        if (v11)
        {
          v8 += 32;
          v7 = v9;
        }
      }

      v14 = *a4;
      if (*v8 == *a4)
      {
        v15 = *(v8 + 8);
        v16 = *(a4 + 1);
        if (v15 == v16)
        {
          v16 = *(v8 + 8);
          if (*(v8 + 16) < *(a4 + 2))
          {
            return result;
          }
        }

        else if (v15 < v16)
        {
          return result;
        }
      }

      else
      {
        if (*v8 < v14)
        {
          return result;
        }

        v16 = *(a4 + 1);
      }

      v17 = a4[1];
      v18 = *(a4 + 2);
      v19 = *(a4 + 3);
      v20 = *(v8 + 16);
      *a4 = *v8;
      *(a4 + 1) = v20;
      if (v5 < v7)
      {
LABEL_31:
        *v8 = v14;
        *(v8 + 4) = v17;
        *(v8 + 8) = v16;
        *(v8 + 16) = v18;
        *(v8 + 24) = v19;
      }

      else
      {
        while (1)
        {
          v21 = v8;
          v22 = 2 * v7;
          v7 = (2 * v7) | 1;
          v8 = result + 32 * v7;
          v23 = v22 + 2;
          if (v23 < a3)
          {
            v24 = *(v8 + 32);
            v25 = *v8 < v24;
            if (*v8 == v24)
            {
              v26 = *(v8 + 8);
              v27 = *(v8 + 40);
              v25 = v26 < v27;
              if (v26 == v27)
              {
                v25 = *(v8 + 16) < *(v8 + 48);
              }
            }

            if (v25)
            {
              v8 += 32;
              v7 = v23;
            }
          }

          v28 = *v8 < v14;
          if (*v8 == v14)
          {
            v29 = *(v8 + 8);
            v28 = v29 < v16;
            if (v29 == v16)
            {
              v28 = *(v8 + 16) < v18;
            }
          }

          if (v28)
          {
            break;
          }

          v30 = *(v8 + 16);
          *v21 = *v8;
          *(v21 + 16) = v30;
          if (v5 < v7)
          {
            goto LABEL_31;
          }
        }

        *v21 = v14;
        *(v21 + 4) = v17;
        *(v21 + 8) = v16;
        *(v21 + 16) = v18;
        *(v21 + 24) = v19;
      }
    }
  }

  return result;
}

_OWORD *sub_100302FB0(_OWORD *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = 0;
    v34 = *result;
    v35 = result[1];
    v5 = result;
    do
    {
      v7 = v5;
      v8 = &v5[2 * v4];
      v5 = v8 + 2;
      v9 = 2 * v4;
      v4 = (2 * v4) | 1;
      v10 = v9 + 2;
      if (v10 < a4)
      {
        v11 = *(v8 + 16);
        v12 = *(v8 + 8);
        v13 = v12 < v11;
        if (v12 == v11)
        {
          v14 = *(v8 + 5);
          v15 = *(v8 + 9);
          v13 = v14 < v15;
          if (v14 == v15)
          {
            v13 = *(v8 + 6) < *(v8 + 10);
          }
        }

        if (v13)
        {
          v5 = v8 + 4;
          v4 = v10;
        }
      }

      v6 = v5[1];
      *v7 = *v5;
      v7[1] = v6;
    }

    while (v4 <= ((a4 - 2) >> 1));
    v16 = (a2 - 32);
    if (v5 == (a2 - 32))
    {
      *v5 = v34;
      v5[1] = v35;
      return result;
    }

    v17 = *(a2 - 16);
    *v5 = *v16;
    v5[1] = v17;
    *v16 = v34;
    *(a2 - 16) = v35;
    v18 = (v5 - result + 32) >> 5;
    v19 = v18 - 2;
    if (v18 < 2)
    {
      return result;
    }

    v20 = v19 >> 1;
    v21 = &result[2 * (v19 >> 1)];
    v22 = *v5;
    if (*v21 == *v5)
    {
      v23 = *(v21 + 1);
      v24 = *(v5 + 1);
      if (v23 == v24)
      {
        v24 = *(v21 + 1);
        if (*(v21 + 2) >= *(v5 + 2))
        {
          return result;
        }
      }

      else if (v23 >= v24)
      {
        return result;
      }
    }

    else
    {
      if (*v21 >= v22)
      {
        return result;
      }

      v24 = *(v5 + 1);
    }

    v25 = *(v5 + 1);
    v26 = *(v5 + 2);
    v27 = *(v5 + 3);
    v28 = v21[1];
    *v5 = *v21;
    v5[1] = v28;
    if (v19 >= 2)
    {
      while (1)
      {
        v29 = v21;
        v30 = v20 - 1;
        v20 = (v20 - 1) >> 1;
        v21 = &result[2 * v20];
        v31 = *v21 < v22;
        if (*v21 == v22)
        {
          v32 = *(v21 + 1);
          v31 = v32 < v24;
          if (v32 == v24)
          {
            v31 = *(v21 + 2) < v26;
          }
        }

        if (!v31)
        {
          break;
        }

        v33 = v21[1];
        *v29 = *v21;
        v29[1] = v33;
        if (v30 <= 1)
        {
          goto LABEL_28;
        }
      }

      v21 = v29;
    }

LABEL_28:
    *v21 = v22;
    *(v21 + 1) = v25;
    *(v21 + 1) = v24;
    *(v21 + 2) = v26;
    *(v21 + 3) = v27;
  }

  return result;
}

double sub_10030314C(void *a1)
{
  *a1 = off_100478AF0;
  result = NAN;
  a1[1] = -1;
  return result;
}

double sub_10030317C(void *a1)
{
  *a1 = off_100478B18;
  result = NAN;
  a1[1] = -1;
  return result;
}

uint64_t sub_1003031B0(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_100303220(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_100303290(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, unsigned int a5, __int16 a6, __int16 a7, int a8, int a9, unint64_t a10)
{
  *(a1 + 8) = -1;
  *(a1 + 40) = -1;
  *a1 = off_100478B48;
  *(a1 + 16) = -1;
  *(a1 + 28) = 0;
  *(a1 + 20) = 0;
  *(a1 + 36) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0x100000001;
  *(a1 + 80) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  sub_100303414(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  return a1;
}

void sub_100303360(_Unwind_Exception *a1)
{
  sub_1003039A0((v1 + 36));
  sub_1003031B0((v1 + 34));
  sub_100303220((v1 + 32));
  v5 = v1[29];
  if (v5)
  {
    v1[30] = v5;
    operator delete(v5);
    v6 = v1[23];
    if (!v6)
    {
LABEL_3:
      v7 = v1[20];
      if (!v7)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v6 = v1[23];
    if (!v6)
    {
      goto LABEL_3;
    }
  }

  v1[24] = v6;
  operator delete(v6);
  v7 = v1[20];
  if (!v7)
  {
LABEL_4:
    v8 = v1[17];
    if (!v8)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v1[21] = v7;
  operator delete(v7);
  v8 = v1[17];
  if (!v8)
  {
LABEL_5:
    v9 = *v3;
    if (!*v3)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  v1[18] = v8;
  operator delete(v8);
  v9 = *v3;
  if (!*v3)
  {
LABEL_6:
    v10 = *v2;
    if (!*v2)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  v1[15] = v9;
  operator delete(v9);
  v10 = *v2;
  if (!*v2)
  {
LABEL_7:
    _Unwind_Resume(a1);
  }

LABEL_13:
  v1[11] = v10;
  operator delete(v10);
  _Unwind_Resume(a1);
}

double sub_100303414(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, unsigned int a5, __int16 a6, __int16 a7, int a8, int a9, unint64_t a10)
{
  *(a1 + 8) = a5 & 0xFFF;
  *(a1 + 12) = a6 & 0xFFF;
  *(a1 + 16) = a7 & 0xFFF;
  v14 = *a2;
  if (*a2)
  {
    atomic_fetch_add((*a2 + 8), 1u);
  }

  v15 = *(a1 + 256);
  *(a1 + 256) = v14;
  if (v15 && atomic_fetch_add(v15 + 2, 0xFFFFFFFF) == 1)
  {
    v16 = a3;
    (*(*v15 + 16))(v15);
    a3 = v16;
  }

  v17 = *a3;
  if (*a3)
  {
    atomic_fetch_add((*a3 + 8), 1u);
  }

  v18 = *(a1 + 272);
  *(a1 + 272) = v17;
  if (v18 && atomic_fetch_add(v18 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v18 + 16))(v18);
  }

  v19 = *a4;
  if (*a4)
  {
    atomic_fetch_add((*a4 + 8), 1u);
  }

  v20 = *(a1 + 288);
  *(a1 + 288) = v19;
  if (v20 && atomic_fetch_add(v20 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v20 + 16))(v20);
  }

  v21 = a9;
  if (a9 < 0)
  {
    v21 = a8;
  }

  *(a1 + 72) = a8;
  *(a1 + 76) = v21;
  if (v21 == 3)
  {
    v45 = 0;
    v46 = 0;
    qmemcpy(sub_1002A80E0(&v45, 31), "columnBorderType != BORDER_WRAP", 31);
    sub_1002A8980(-215, &v45, "init", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 127);
  }

  v22 = *(a1 + 264);
  if (v22)
  {
    if (*(a1 + 16) != *(a1 + 8))
    {
      v45 = 0;
      v46 = 0;
      v23 = sub_1002A80E0(&v45, 18);
      *(v23 + 16) = 25968;
      *v23 = *"bufType == srcType";
      sub_1002A8980(-215, &v45, "init", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 137);
    }

    v24 = v22[2];
    *(a1 + 20) = v24;
    v25 = v22[3];
    *(a1 + 24) = v25;
    v26 = v22[4];
    *(a1 + 28) = v26;
    v27 = v22[5];
    *(a1 + 32) = v27;
    if (v26 < 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v28 = *(a1 + 280);
    if (!v28 || (v29 = *(a1 + 296)) == 0)
    {
      v45 = 0;
      v46 = 0;
      qmemcpy(sub_1002A80E0(&v45, 25), "rowFilter && columnFilter", 25);
      sub_1002A8980(-215, &v45, "init", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 131);
    }

    v24 = *(v28 + 8);
    v25 = *(v29 + 8);
    *(a1 + 20) = v24;
    *(a1 + 24) = v25;
    v26 = *(v28 + 12);
    v27 = *(v29 + 12);
    *(a1 + 28) = v26;
    *(a1 + 32) = v27;
    if (v26 < 0)
    {
LABEL_32:
      v45 = 0;
      v46 = 0;
      qmemcpy(sub_1002A80E0(&v45, 83), "0 <= anchor.x && anchor.x < ksize.width && 0 <= anchor.y && anchor.y < ksize.height", 83);
      sub_1002A8980(-215, &v45, "init", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 143);
    }
  }

  if (v26 >= v24 || v27 < 0 || v27 >= v25)
  {
    goto LABEL_32;
  }

  v30 = (((a5 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (a5 & 7))) & 3);
  v31 = *(a1 + 80);
  v32 = v30 >> ((*(a1 + 8) >> 1) & 2);
  *(a1 + 104) = v32;
  if (v24 <= 2)
  {
    v24 = 2;
  }

  v33 = v24 - 1;
  v34 = (v24 - 1) * v32;
  v35 = (*(a1 + 88) - v31) >> 2;
  if (v34 <= v35)
  {
    if (v34 < v35)
    {
      *(a1 + 88) = v31 + 4 * v34;
    }
  }

  else
  {
    sub_1002374D8(a1 + 80, v34 - v35);
  }

  *(a1 + 208) = 0;
  *(a1 + 36) = 0;
  *(a1 + 192) = *(a1 + 184);
  if (!*(a1 + 72) || !*(a1 + 76))
  {
    v36 = v33 * v30;
    v38 = *(a1 + 160);
    v37 = *(a1 + 168);
    if (v36 <= &v37[-v38])
    {
      if (v36 < &v37[-v38])
      {
        *(a1 + 168) = v38 + v36;
      }
    }

    else
    {
      v39 = *(a1 + 176);
      if (v39 - v37 < v36 - &v37[-v38])
      {
        operator new();
      }

      v40 = (v36 + v38);
      bzero(v37, v36 - &v37[-v38]);
      *(a1 + 168) = v40;
    }

    v41 = *(a1 + 8);
    v42 = (v41 >> 3) & 0x1FF;
    if (((v41 >> 3) & 0x1FC) != 0)
    {
      v43 = 24;
    }

    else
    {
      v43 = 8 * v42;
    }

    sub_10026F720(a10, *(a1 + 160), v43 & 0xFFFFFFF8 | *(a1 + 8) & 7, v33 + v33 * v42);
  }

  result = NAN;
  *(a1 + 40) = -1;
  return result;
}

uint64_t sub_1003039A0(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

void *sub_100303A24(void *a1)
{
  *a1 = off_100478B48;
  v2 = a1[36];
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 16))(v2);
  }

  a1[36] = 0;
  a1[37] = 0;
  v3 = a1[34];
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 16))(v3);
  }

  a1[34] = 0;
  a1[35] = 0;
  v4 = a1[32];
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 16))(v4);
  }

  a1[32] = 0;
  a1[33] = 0;
  v5 = a1[29];
  if (v5)
  {
    a1[30] = v5;
    operator delete(v5);
  }

  v6 = a1[23];
  if (v6)
  {
    a1[24] = v6;
    operator delete(v6);
  }

  v7 = a1[20];
  if (v7)
  {
    a1[21] = v7;
    operator delete(v7);
  }

  v8 = a1[17];
  if (v8)
  {
    a1[18] = v8;
    operator delete(v8);
  }

  v9 = a1[14];
  if (v9)
  {
    a1[15] = v9;
    operator delete(v9);
  }

  v10 = a1[10];
  if (v10)
  {
    a1[11] = v10;
    operator delete(v10);
  }

  return a1;
}

void sub_100303BA0(void *a1)
{
  sub_100303A24(a1);

  operator delete();
}

uint64_t sub_100303BD8(uint64_t a1, uint64_t *a2, int *a3, uint64_t *a4)
{
  v5 = *a2;
  v6 = *a4;
  *&v7 = *a2;
  *(&v7 + 1) = v6;
  *(a1 + 40) = v7;
  v8 = *a3;
  v9 = a3[1];
  *(a1 + 56) = *a3;
  *(a1 + 60) = v9;
  if ((v6 & 0x80000000) != 0 || v6 < 0 || v8 < 0 || v9 < 0 || ((v10 = v9 + HIDWORD(v6), v8 + v6 <= v5) ? (v11 = v10 <= SHIDWORD(v5)) : (v11 = 0), !v11))
  {
    v109 = 0;
    v110 = 0;
    qmemcpy(sub_1002A80E0(&v109, 143), "roi.x >= 0 && roi.y >= 0 && roi.width >= 0 && roi.height >= 0 && roi.x + roi.width <= wholeSize.width && roi.y + roi.height <= wholeSize.height", 143);
    sub_1002A8980(-215, &v109, "start", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 173);
  }

  v12 = (((*(a1 + 8) >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (*(a1 + 8) & 7))) & 3);
  v13 = (((*(a1 + 16) >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (*(a1 + 16) & 7))) & 3);
  if (*(a1 + 160) == *(a1 + 168))
  {
    v14 = 0;
  }

  else
  {
    v14 = *(a1 + 160);
  }

  v15 = *(a1 + 24);
  v17 = *(a1 + 32);
  v16 = *(a1 + 36);
  v18 = v15 + ~v17;
  v19 = v15 + 3;
  if (v17 <= v18)
  {
    v17 = v18;
  }

  v20 = (2 * v17) | 1;
  v21 = 2 * v17;
  if (v19 <= v20)
  {
    v22 = v21 + 1;
  }

  else
  {
    v22 = v19;
  }

  if (v16 >= v8)
  {
    v23 = *(a1 + 232);
    v24 = *(a1 + 240) - v23;
    if (v22 == (v24 >> 3))
    {
      goto LABEL_81;
    }
  }

  else
  {
    v23 = *(a1 + 232);
    v24 = *(a1 + 240) - v23;
  }

  v25 = v24 >> 3;
  if (v22 <= v25)
  {
    if (v22 < v25)
    {
      *(a1 + 240) = v23 + 8 * v22;
    }
  }

  else
  {
    sub_10030AB00(a1 + 232, v22 - v25);
    v16 = *(a1 + 36);
    v8 = *(a1 + 56);
  }

  if (v16 > v8)
  {
    v8 = v16;
  }

  *(a1 + 36) = v8;
  v26 = v12 * (v8 + *(a1 + 20) - 1);
  v28 = *(a1 + 136);
  v27 = *(a1 + 144);
  if (v26 <= &v27[-v28])
  {
    if (v26 < &v27[-v28])
    {
      *(a1 + 144) = v28 + v26;
    }

    if (!*(a1 + 76))
    {
LABEL_36:
      if (!v14)
      {
        v109 = 0;
        v110 = 0;
        v31 = sub_1002A80E0(&v109, 18);
        *(v31 + 16) = 27756;
        *v31 = *"constVal != __null";
        sub_1002A8980(-215, &v109, "start", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 191);
      }

      v32 = ((((*(a1 + 16) >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (*(a1 + 16) & 7))) & 3)) * (*(a1 + 36) + *(a1 + 20) + 63);
      v34 = *(a1 + 184);
      v33 = *(a1 + 192);
      if (v32 <= &v33[-v34])
      {
        if (v32 < &v33[-v34])
        {
          *(a1 + 192) = v34 + v32;
        }
      }

      else
      {
        v35 = *(a1 + 200);
        if (v35 - v33 < v32 - &v33[-v34])
        {
          if ((v32 & 0x8000000000000000) == 0)
          {
            operator new();
          }

          goto LABEL_131;
        }

        v36 = v32 + v34;
        bzero(v33, v32 - &v33[-v34]);
        *(a1 + 192) = v36;
      }

      v37 = (*(a1 + 36) + *(a1 + 20) - 1) * v12;
      v38 = *(a1 + 264);
      v39 = (*(a1 + 184) + 63) & 0xFFFFFFFFFFFFFFC0;
      if (!v38)
      {
        v39 = *(a1 + 136);
      }

      if (v37 >= 1)
      {
        v40 = 0;
        LODWORD(v41) = *(a1 + 168) - *(a1 + 160);
        while (1)
        {
          if (v37 - v40 >= v41)
          {
            v41 = v41;
          }

          else
          {
            v41 = (v37 - v40);
          }

          if (v41 < 1)
          {
            goto LABEL_49;
          }

          v42 = 0;
          if (v41 >= 8 && v39 - v14 + v40 >= 0x20)
          {
            if (v41 < 0x20)
            {
              v42 = 0;
LABEL_62:
              v47 = v42;
              v42 = v41 & 0x7FFFFFF8;
              v48 = (v14 + v47);
              v49 = (v39 + v47 + v40);
              v50 = v47 - v42;
              do
              {
                v51 = *v48++;
                *v49++ = v51;
                v50 += 8;
              }

              while (v50);
              if (v42 == v41)
              {
                goto LABEL_49;
              }

              goto LABEL_65;
            }

            v42 = v41 & 0x7FFFFFE0;
            v43 = (v39 + 16 + v40);
            v44 = v42;
            v45 = v14 + 1;
            do
            {
              v46 = *v45;
              *(v43 - 1) = *(v45 - 1);
              *v43 = v46;
              v45 += 2;
              v43 += 2;
              v44 -= 32;
            }

            while (v44);
            if (v42 == v41)
            {
              goto LABEL_49;
            }

            if ((v41 & 0x18) != 0)
            {
              goto LABEL_62;
            }
          }

LABEL_65:
          v52 = (v39 + v42 + v40);
          v53 = v14 + v42;
          v54 = v42 - v41;
          do
          {
            v55 = *v53++;
            *v52++ = v55;
          }

          while (!__CFADD__(v54++, 1));
LABEL_49:
          v40 += v41;
          if (v40 >= v37)
          {
            v38 = *(a1 + 264);
            break;
          }
        }
      }

      if (!v38)
      {
        (*(**(a1 + 280) + 16))(*(a1 + 280), *(a1 + 136));
      }
    }
  }

  else
  {
    v29 = *(a1 + 152);
    if (v29 - v27 < v26 - &v27[-v28])
    {
      if ((v26 & 0x80000000) == 0)
      {
        operator new();
      }

      goto LABEL_131;
    }

    v30 = v26 + v28;
    bzero(v27, v26 - &v27[-v28]);
    *(a1 + 144) = v30;
    if (!*(a1 + 76))
    {
      goto LABEL_36;
    }
  }

  v57 = *(a1 + 264);
  if (v57)
  {
    LODWORD(v57) = *(a1 + 20) - 1;
  }

  v58 = (v13 * ((*(a1 + 36) + v57 + 63) & 0xFFFFFFC0)) * ((*(a1 + 240) - *(a1 + 232)) >> 3) + 64;
  v60 = *(a1 + 112);
  v59 = *(a1 + 120);
  if (v58 <= &v59[-v60])
  {
    if (v58 < &v59[-v60])
    {
      *(a1 + 120) = v60 + v58;
    }
  }

  else
  {
    v61 = *(a1 + 128);
    if (v61 - v59 < v58 - &v59[-v60])
    {
      if ((v58 & 0x8000000000000000) == 0)
      {
        operator new();
      }

LABEL_131:
      sub_10000918C();
    }

    v62 = v58 + v60;
    bzero(v59, v58 - &v59[-v60]);
    *(a1 + 120) = v62;
  }

LABEL_81:
  v63 = *(a1 + 56);
  v64 = *(a1 + 264);
  v65 = *(a1 + 20);
  v66 = v65 - 1;
  if (!v64)
  {
    v66 = 0;
  }

  *(a1 + 208) = ((v63 + v66 + 15) & 0xFFFFFFF0) * v13;
  v67 = *(a1 + 28);
  v68 = *(a1 + 48);
  v69 = v67 - v68;
  LODWORD(v70) = v69 & ~(v69 >> 31);
  v71 = *(a1 + 40);
  v72 = v63 + v68 + ~v67 + v65 - v71;
  *(a1 + 64) = v70;
  *(a1 + 68) = v72 & ~(v72 >> 31);
  if (v67 <= v68 && v72 < 1)
  {
    goto LABEL_85;
  }

  if (*(a1 + 72))
  {
    if (v67 >= v68)
    {
      v80 = v68;
    }

    else
    {
      v80 = v67;
    }

    v81 = v80 - v68;
    v82 = *(a1 + 104);
    v83 = *(a1 + 80);
    if (v69 >= 1)
    {
      if (v82 > 0)
      {
        v84 = 0;
        v85 = v83 + 1;
        v86 = 4 * *(a1 + 104);
        v87 = *(a1 + 80);
        while (1)
        {
          v88 = (sub_10022F95C((v84 - v70), v71, *(a1 + 72)) + v81) * v82;
          if (v82 >= 8)
          {
            v90 = vdupq_n_s32(v88);
            v91 = v82 & 0x7FFFFFF8;
            v92 = v85;
            v93 = xmmword_1003E3950;
            v94.i64[0] = 0x400000004;
            v94.i64[1] = 0x400000004;
            v95.i64[0] = 0x800000008;
            v95.i64[1] = 0x800000008;
            do
            {
              v96 = vaddq_s32(v90, v93);
              v92[-1] = v96;
              *v92 = vaddq_s32(v96, v94);
              v93 = vaddq_s32(v93, v95);
              v92 += 2;
              v91 -= 8;
            }

            while (v91);
            v89 = v82 & 0x7FFFFFF8;
            if (v89 == v82)
            {
              goto LABEL_99;
            }
          }

          else
          {
            v89 = 0;
          }

          v97 = (v87 + 4 * v89);
          v98 = v88 + v89;
          v99 = v82 - v89;
          do
          {
            *v97++ = v98++;
            --v99;
          }

          while (v99);
LABEL_99:
          ++v84;
          v70 = *(a1 + 64);
          v85 = (v85 + v86);
          v87 += v86;
          if (v84 >= v70)
          {
            goto LABEL_114;
          }
        }
      }

      v101 = 0;
      do
      {
        sub_10022F95C((v101 - v70), v71, *(a1 + 72));
        ++v101;
        LODWORD(v70) = *(a1 + 64);
      }

      while (v101 < v70);
    }

LABEL_114:
    if (*(a1 + 68) >= 1)
    {
      if (v82 <= 0)
      {
        v105 = 0;
        do
        {
          sub_10022F95C((v71 + v105++), v71, *(a1 + 72));
        }

        while (v105 < *(a1 + 68));
      }

      else
      {
        v102 = 0;
        do
        {
          v103 = sub_10022F95C((v102 + v71), v71, *(a1 + 72));
          v104 = 0;
          do
          {
            v83->i32[v104 + v82 * (v102 + *(a1 + 64))] = (v103 + v81) * v82 + v104;
            ++v104;
          }

          while (v82 != v104);
          ++v102;
        }

        while (v102 < *(a1 + 68));
      }
    }

    goto LABEL_85;
  }

  if (!v14)
  {
    v109 = 0;
    v110 = 0;
    v106 = sub_1002A80E0(&v109, 18);
    *(v106 + 16) = 27756;
    *v106 = *"constVal != __null";
    sub_1002A8980(-215, &v109, "start", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 225);
  }

  if (v64)
  {
    v100 = (*(a1 + 240) - *(a1 + 232)) >> 3;
    if (v100 < 1)
    {
      goto LABEL_85;
    }
  }

  else
  {
    LODWORD(v100) = 1;
  }

  v107 = 0;
  do
  {
    if (*(a1 + 264))
    {
      v108 = (((*(a1 + 112) + 63) & 0xFFFFFFFFFFFFFFC0) + *(a1 + 208) * v107);
    }

    else
    {
      v108 = *(a1 + 136);
    }

    memcpy(v108, v14, *(a1 + 64) * v12);
    memcpy(&v108[v12 * (*(a1 + 20) + *(a1 + 56) + ~*(a1 + 68))], v14, *(a1 + 68) * v12);
    ++v107;
  }

  while (v100 != v107);
LABEL_85:
  *(a1 + 224) = 0;
  v73 = *(a1 + 52);
  v74 = *(a1 + 32);
  v75 = (v73 - v74) & ~((v73 - v74) >> 31);
  *(a1 + 212) = v75;
  *(a1 + 216) = v75;
  v76 = v73 + *(a1 + 60) + ~v74 + *(a1 + 24);
  if (*(a1 + 44) < v76)
  {
    v76 = *(a1 + 44);
  }

  *(a1 + 220) = v76;
  v77 = *(a1 + 296);
  if (v77)
  {
    (*(*v77 + 24))(v77);
  }

  v78 = *(a1 + 264);
  if (v78)
  {
    (*(*v78 + 24))(v78);
  }

  return *(a1 + 212);
}

void sub_10030464C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100304694(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = vrev64_s32(**(a2 + 64));
  (*(*a1 + 16))(a1, a3, &v7);
  return (a1[53] - *(a4 + 4));
}

uint64_t sub_10030470C(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, unsigned int a6)
{
  if (*(a1 + 40) < 1 || *(a1 + 44) <= 0)
  {
    v88 = 0;
    v89 = 0;
    qmemcpy(sub_1002A80E0(&v88, 43), "wholeSize.width > 0 && wholeSize.height > 0", 43);
    sub_1002A8980(-215, &v88, "proceed", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 288);
  }

  v7 = *(a1 + 64);
  v8 = *(a1 + 68);
  v9 = *(a1 + 28);
  if (v9 >= *(a1 + 48))
  {
    v9 = *(a1 + 48);
  }

  v87 = (v7 > 0 || v8 >= 1) && *(a1 + 72) != 0;
  v85 = *(a1 + 232);
  v84 = *(a1 + 80);
  v79 = *(a1 + 56);
  v10 = *(a1 + 104);
  v66 = *(a1 + 24);
  v67 = *(a1 + 32);
  v11 = *(a1 + 264);
  if (*(a1 + 220) - (*(a1 + 212) + *(a1 + 224)) >= a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = *(a1 + 220) - (*(a1 + 212) + *(a1 + 224));
  }

  if (!a2 || !a5 || v12 <= 0)
  {
    v88 = 0;
    v89 = 0;
    qmemcpy(sub_1002A80E0(&v88, 23), "src && dst && count > 0", 23);
    sub_1002A8980(-215, &v88, "proceed", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 307);
  }

  v13 = 0;
  v14 = (((*(a1 + 8) >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (*(a1 + 8) & 7))) & 3);
  v15 = (*(a1 + 240) - v85) >> 3;
  v65 = ((*(a1 + 16) >> 3) & 0x1FF) + 1;
  v16 = (a2 - v9 * v14);
  v17 = (v7 * v14);
  v86 = v17;
  v18 = *(a1 + 20) + v79 + ~v8;
  v19 = (v18 - v7) * v14;
  v82 = 4 * v10;
  v83 = v14;
  v81 = (v8 * v14);
  v20 = v18 * v14;
  v21 = (v7 * v10);
  v80 = (v8 * v10);
  v22 = a3;
  v70 = v66 - 1;
  v75 = v20;
  v77 = v21;
  v78 = v17;
  v73 = &v84[v21];
  v74 = &v84[v17];
  v72 = v18 * v10;
  v23 = a6;
  v24 = a5;
  v25 = v12;
  while (1)
  {
    v76 = v13;
    v71 = v24;
    v26 = *(a1 + 52);
    v27 = v15 - (v67 + *(a1 + 212) + *(a1 + 224));
    v28 = __OFADD__(v27, v26);
    v29 = v27 + v26;
    if ((v29 < 0) ^ v28 | (v29 == 0))
    {
      v29 = v15 - v66 + 1;
    }

    if (v25 >= v29)
    {
      v30 = v29;
    }

    else
    {
      v30 = v25;
    }

    v68 = v30;
    v69 = v25;
    if (v30 >= 1)
    {
      while (1)
      {
        v36 = *(a1 + 212);
        v37 = *(a1 + 224);
        v38 = ((*(a1 + 112) + 63) & 0xFFFFFFFFFFFFFFC0) + *(a1 + 208) * ((v36 - *(a1 + 216) + v37) % v15);
        v39 = v38;
        if (!v11)
        {
          break;
        }

        *(a1 + 224) = v37 + 1;
        if (v37 >= v15)
        {
          goto LABEL_36;
        }

LABEL_37:
        memcpy(v39 + v86, v16, v19);
        if (v87)
        {
          if (v82 == v83)
          {
            v40 = v77;
            v41 = v84;
            v42 = v39;
            if (v77 >= 1)
            {
              do
              {
                v43 = *v41++;
                *v42++ = *&v16[4 * v43];
                --v40;
              }

              while (v40);
            }

            if (v80 >= 1)
            {
              v44 = v73;
              v45 = &v39[v72];
              v46 = v80;
              do
              {
                v47 = *v44++;
                *v45++ = *&v16[4 * v47];
                --v46;
              }

              while (v46);
            }
          }

          else
          {
            v48 = v78;
            v49 = v84;
            v50 = v39;
            if (v78 >= 1)
            {
              do
              {
                v51 = *v49++;
                *v50++ = v16[v51];
                --v48;
              }

              while (v48);
            }

            if (v81 >= 1)
            {
              v52 = v74;
              v53 = v39 + v75;
              v54 = v81;
              do
              {
                v55 = *v52++;
                *v53++ = v16[v55];
                --v54;
              }

              while (v54);
            }
          }
        }

        if (v11)
        {
          v16 += v22;
          v35 = v30-- <= 1;
          if (v35)
          {
            goto LABEL_27;
          }
        }

        else
        {
          (*(**(a1 + 280) + 16))(*(a1 + 280), v39, v38, v79, ((*(a1 + 8) >> 3) & 0x1FFu) + 1);
          v16 += v22;
          v35 = v30-- <= 1;
          if (v35)
          {
            goto LABEL_27;
          }
        }
      }

      v39 = *(a1 + 136);
      *(a1 + 224) = v37 + 1;
      if (v37 < v15)
      {
        goto LABEL_37;
      }

LABEL_36:
      *(a1 + 224) = v37;
      *(a1 + 212) = v36 + 1;
      goto LABEL_37;
    }

LABEL_27:
    v31 = v76;
    v32 = v70 + *(a1 + 60) - (v76 + *(a1 + 228));
    v33 = v32 >= v15 ? v15 : v32;
    if (v33 >= 1)
    {
      break;
    }

    LODWORD(v33) = 0;
    v58 = v69;
    if (v66 > 0)
    {
      goto LABEL_69;
    }

LABEL_67:
    v59 = (v33 - v70);
    v60 = *(a1 + 264);
    if (v60)
    {
      (*(*v60 + 16))(v60, v85, v71, v23, v59, *(a1 + 56), v65);
    }

    else
    {
      (*(**(a1 + 296) + 16))(*(a1 + 296), v85, v71, v23, v59, *(a1 + 56) * v65);
    }

    v25 = v58 - v68;
    v24 = v71 + v59 * v23;
    v13 = v59 + v76;
  }

  v34 = 0;
  while (1)
  {
    while (1)
    {
      v56 = sub_10022F95C(v76 - v67 + v34 + *(a1 + 228) + *(a1 + 52), *(a1 + 44), *(a1 + 76));
      if ((v56 & 0x80000000) == 0)
      {
        break;
      }

      *(v85 + 8 * v34++) = (*(a1 + 184) + 63) & 0xFFFFFFFFFFFFFFC0;
      if (v33 == v34)
      {
        goto LABEL_66;
      }
    }

    v57 = *(a1 + 212);
    if (v56 < v57)
    {
      v88 = 0;
      v89 = 0;
      qmemcpy(sub_1002A80E0(&v88, 14), "srcY >= startY", 14);
      sub_1002A8980(-215, &v88, "proceed", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 363);
    }

    if (v56 >= *(a1 + 224) + v57)
    {
      break;
    }

    *(v85 + 8 * v34++) = ((*(a1 + 112) + 63) & 0xFFFFFFFFFFFFFFC0) + *(a1 + 208) * ((v56 - *(a1 + 216)) % v15);
    if (v33 == v34)
    {
      goto LABEL_66;
    }
  }

  LODWORD(v33) = v34;
LABEL_66:
  v23 = a6;
  v31 = v76;
  v58 = v69;
  if (v33 >= v66)
  {
    goto LABEL_67;
  }

LABEL_69:
  v61 = *(a1 + 228) + v31;
  *(a1 + 228) = v61;
  if (v61 > *(a1 + 60))
  {
    v88 = 0;
    v89 = 0;
    v62 = sub_1002A80E0(&v88, 18);
    *(v62 + 16) = 29800;
    *v62 = *"dstY <= roi.height";
    sub_1002A8980(-215, &v88, "proceed", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 380);
  }

  return v31;
}

void sub_100304EA8(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1002ACE7C(v12, &off_100478B78);
  if ((*a2 & 0xFFF) != a1[2] || (*a3 & 0xFFF) != a1[3])
  {
    v11[0] = 0;
    v11[1] = 0;
    qmemcpy(sub_1002A80E0(v11, 46), "src.type() == srcType && dst.type() == dstType", 46);
    sub_1002A8980(-215, v11, "apply", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 388);
  }

  v10 = (*(*a1 + 24))(a1, a2, a4, a5);
  (*(*a1 + 32))(a1, *(a2 + 16) + *(a2 + 80) * v10, *(a2 + 80), (a1[55] - a1[53]), *(a3 + 16), *(a3 + 80));
  if (v13)
  {
    sub_1002ACC1C(v12);
  }
}

void sub_100305010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_1002A8124(&a9);
  sub_1001D8BF4(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_10030503C(uint64_t a1, _DWORD *a2)
{
  if (sub_100271148(a1) != 0x10000)
  {
    sub_1002703C0(a1, -1, &v36);
    if ((v36 & 0xFF8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v4 = *(a1 + 8);
  v5 = *v4;
  v6 = *(v4 + 16);
  v36 = *v4;
  v7 = *(v4 + 32);
  v37 = v6;
  v38 = v7;
  v8 = *(v4 + 56);
  v39 = *(v4 + 48);
  v40 = v8;
  v41 = &v36 + 8;
  v42 = v43;
  v43[0] = 0;
  v43[1] = 0;
  if (v8)
  {
    atomic_fetch_add((v8 + 20), 1u);
    if (*(v4 + 4) <= 2)
    {
      goto LABEL_4;
    }
  }

  else if (SDWORD1(v5) <= 2)
  {
LABEL_4:
    v9 = *(v4 + 72);
    v10 = v42;
    *v42 = *v9;
    v10[1] = v9[1];
    if ((v36 & 0xFF8) == 0)
    {
      goto LABEL_11;
    }

LABEL_10:
    *v32 = 0uLL;
    qmemcpy(sub_1002A80E0(v32, 23), "_kernel.channels() == 1", 23);
    sub_1002A8980(-215, v32, "getKernelType", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 407);
  }

  DWORD1(v36) = 0;
  sub_100269B58(&v36, v4);
  if ((v36 & 0xFF8) != 0)
  {
    goto LABEL_10;
  }

LABEL_11:
  v11 = DWORD2(v36);
  v12 = HIDWORD(v36);
  *v32 = 1124007936;
  memset(&v32[4], 0, 60);
  v33 = &v32[8];
  v34 = v35;
  v35[0] = 0;
  v35[1] = 0;
  v29 = 33619968;
  v30 = v32;
  v31 = 0;
  sub_10020EF14(&v36, &v29, 6, 1.0, 0.0);
  v13 = v12 * v11;
  if (DWORD2(v36) == 1 || HIDWORD(v36) == 1)
  {
    v14 = 12;
    if (((2 * *a2) | 1) == HIDWORD(v36))
    {
      if (((2 * a2[1]) | 1) == DWORD2(v36))
      {
        v14 = 15;
      }

      else
      {
        v14 = 12;
      }
    }
  }

  else
  {
    v14 = 12;
  }

  if (v13 < 1)
  {
    v17 = 0.0;
    v23 = *&v32[56];
    if (!*&v32[56])
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  v15 = *&v32[16];
  v16 = 8 * v13;
  v17 = 0.0;
  do
  {
    v18 = *v15++;
    v19 = v18;
    v20 = *(*&v32[16] - 8 + v16);
    v21 = v14 & 0xFFFFFFFE;
    if (v18 == v20)
    {
      v21 = v14;
    }

    if (v19 != -v20)
    {
      v21 &= ~2u;
    }

    v22 = rint(v19);
    if (v19 < 0.0)
    {
      v21 &= ~4u;
    }

    if (v19 == v22)
    {
      v14 = v21;
    }

    else
    {
      v14 = v21 & 0xFFFFFFF7;
    }

    v17 = v17 + v19;
    v16 -= 8;
  }

  while (v16);
  v23 = *&v32[56];
  if (*&v32[56])
  {
LABEL_33:
    if (atomic_fetch_add((v23 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(v32);
    }
  }

LABEL_35:
  *&v32[56] = 0;
  memset(&v32[16], 0, 32);
  if (*&v32[4] >= 1)
  {
    v24 = 0;
    v25 = v33;
    do
    {
      *&v25[4 * v24++] = 0;
    }

    while (v24 < *&v32[4]);
  }

  if (v34 != v35)
  {
    j__free(v34);
  }

  if (v40 && atomic_fetch_add((v40 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v36);
  }

  v40 = 0;
  v37 = 0u;
  v38 = 0u;
  if (SDWORD1(v36) >= 1)
  {
    v26 = 0;
    v27 = v41;
    do
    {
      *&v27[4 * v26++] = 0;
    }

    while (v26 < SDWORD1(v36));
  }

  if (v42 != v43)
  {
    j__free(v42);
  }

  if (fabs(v17 + -1.0) <= (fabs(v17) + 1.0) * 0.00000011920929)
  {
    return v14;
  }

  else
  {
    return v14 & 0xFFFFFFFB;
  }
}

void sub_1003053C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  sub_1002A8124(va);
  sub_100006D14(va1);
  _Unwind_Resume(a1);
}

void sub_100305414(uint64_t a1, unsigned __int16 a2, uint64_t a3, int a4, int a5)
{
  v26 = a4;
  if (sub_100271148(a3) == 0x10000)
  {
    v9 = *(a3 + 8);
    v10 = *v9;
    v11 = *(v9 + 16);
    v20[0] = *v9;
    v12 = *(v9 + 32);
    v20[1] = v11;
    v20[2] = v12;
    v13 = *(v9 + 56);
    v21 = *(v9 + 48);
    v22 = v13;
    v23 = v20 + 8;
    v24 = v25;
    v25[0] = 0;
    v25[1] = 0;
    if (v13)
    {
      atomic_fetch_add((v13 + 20), 1u);
      if (*(v9 + 4) <= 2)
      {
LABEL_4:
        v14 = *(v9 + 72);
        v15 = v24;
        *v24 = *v14;
        v15[1] = v14[1];
        goto LABEL_8;
      }
    }

    else if (SDWORD1(v10) <= 2)
    {
      goto LABEL_4;
    }

    DWORD1(v20[0]) = 0;
    sub_100269B58(v20, v9);
  }

  else
  {
    sub_1002703C0(a3, -1, v20);
  }

LABEL_8:
  v16 = a1 & 7;
  v17 = a2 & 7;
  if (v16 <= 4)
  {
    v18 = 4;
  }

  else
  {
    v18 = a1 & 7;
  }

  if (v17 < v18 || ((a2 ^ a1) & 0xFF8) != 0 || (v20[0] & 0xFFF) != v17)
  {
    v19 = 0uLL;
    qmemcpy(sub_1002A80E0(&v19, 109), "cn == ((((bufType) & ((512 - 1) << 3)) >> 3) + 1) && ddepth >= std::max(sdepth, 4) && kernel.type() == ddepth", 109);
    sub_1002A8980(-215, &v19, "getLinearRowFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3605);
  }

  if ((a5 & 3) != 0 && HIDWORD(v20[0]) + DWORD2(v20[0]) <= 6)
  {
    if ((a1 & 7) == 0 && v17 == 4)
    {
      sub_10030A330(&v19, v20, a5);
      operator new();
    }

    if (v16 == 5 && v17 == 5)
    {
      sub_10030A4FC(&v19, v20, a5);
      operator new();
    }
  }

  if ((a1 & 7) == 0 && v17 == 4)
  {
    operator new();
  }

  if ((a1 & 7) == 0 && v17 == 5)
  {
    operator new();
  }

  if ((a1 & 7) == 0 && v17 == 6)
  {
    operator new();
  }

  if (v16 == 2 && v17 == 5)
  {
    operator new();
  }

  if (v16 == 2 && v17 == 6)
  {
    sub_100306010();
  }

  if (v16 == 3 && v17 == 5)
  {
    sub_10030614C();
  }

  if (v16 == 3 && v17 == 6)
  {
    sub_100306284();
  }

  if (v16 == 5 && v17 == 5)
  {
    sub_1003063C0();
  }

  if (v16 == 5 && v17 == 6)
  {
    sub_1003064F8();
  }

  if (v16 == 6 && v17 == 6)
  {
    sub_100306634();
  }

  sub_1002A8688(&v19, "Unsupported combination of source format (=%d), and buffer format (=%d)", a1, HIDWORD(a1));
  sub_1002A8980(-213, &v19, "getLinearRowFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3644);
}

void sub_100305DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  sub_1002A8124(&a13);
  sub_100006D14(&a27);
  _Unwind_Resume(a1);
}

uint64_t sub_100305EE8(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1);
  }

  *(a1 + 56) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  if (*(a1 + 4) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 64);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 4));
  }

  v5 = *(a1 + 72);
  if (v5 != (a1 + 80))
  {
    j__free(v5);
  }

  return a1;
}

uint64_t sub_100305F7C(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1);
  }

  *(a1 + 56) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  if (*(a1 + 4) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 64);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 4));
  }

  v5 = *(a1 + 72);
  if (v5 != (a1 + 80))
  {
    j__free(v5);
  }

  return a1;
}

uint64_t sub_1003060DC(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_100306214(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_100306350(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_100306488(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_1003065C4(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_100306700(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

void sub_100306770(uint64_t a1, unsigned __int16 a2, uint64_t a3, int a4, int a5, unsigned int a6, double a7)
{
  v33 = a5;
  v34 = a4;
  v32 = a7;
  if (sub_100271148(a3) == 0x10000)
  {
    v11 = *(a3 + 8);
    v12 = *v11;
    v13 = *(v11 + 16);
    v26[0] = *v11;
    v26[1] = v13;
    v26[2] = *(v11 + 32);
    v14 = *(v11 + 56);
    v27 = *(v11 + 48);
    v28 = v14;
    v29 = v26 + 8;
    v30 = v31;
    v31[0] = 0;
    v31[1] = 0;
    if (v14)
    {
      atomic_fetch_add((v14 + 20), 1u);
      if (*(v11 + 4) <= 2)
      {
LABEL_4:
        v15 = *(v11 + 72);
        v16 = v30;
        *v30 = *v15;
        v16[1] = v15[1];
        goto LABEL_8;
      }
    }

    else if (SDWORD1(v12) <= 2)
    {
      goto LABEL_4;
    }

    DWORD1(v26[0]) = 0;
    sub_100269B58(v26, v11);
  }

  else
  {
    sub_1002703C0(a3, -1, v26);
  }

LABEL_8:
  v17 = a1 & 7;
  v18 = a2 & 7;
  if (v18 <= 4)
  {
    v19 = 4;
  }

  else
  {
    v19 = a2 & 7;
  }

  if (((a2 ^ a1) & 0xFF8) != 0 || v17 < v19 || (v26[0] & 0xFFF) != v17)
  {
    *v23 = 0uLL;
    qmemcpy(sub_1002A80E0(v23, 109), "cn == ((((bufType) & ((512 - 1) << 3)) >> 3) + 1) && sdepth >= std::max(ddepth, 4) && kernel.type() == sdepth", 109);
    sub_1002A8980(-215, v23, "getLinearColumnFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3660);
  }

  if ((v33 & 3) != 0)
  {
    if (HIDWORD(v26[0]) + DWORD2(v26[0]) == 4)
    {
      if (v17 == 4 && (a2 & 7) == 0)
      {
        v20 = 1 << (a6 - 1);
        if (!a6)
        {
          v20 = 0;
        }

        v24 = a6;
        v25 = v20;
        sub_10030A66C(v23, v26, v33, a6, v32);
        operator new();
      }

      if (v17 == 4 && v18 == 3 && !a6)
      {
        sub_10030A7AC(v23, v26, v33, 0, v32);
        operator new();
      }

      if (v17 == 5 && v18 == 5)
      {
        operator new();
      }
    }

    if (v17 == 4 && (a2 & 7) == 0)
    {
      v22 = 1 << (a6 - 1);
      if (!a6)
      {
        v22 = 0;
      }

      v24 = a6;
      v25 = v22;
      sub_10030A66C(v23, v26, v33, a6, v32);
      operator new();
    }

    if (v17 == 5 && (a2 & 7) == 0)
    {
      operator new();
    }

    if (v17 == 6 && (a2 & 7) == 0)
    {
      operator new();
    }

    if (v17 == 5 && v18 == 2)
    {
      operator new();
    }

    if (v17 == 6 && v18 == 2)
    {
      sub_100308174();
    }

    if (v17 == 4 && v18 == 3)
    {
      sub_1003082CC();
    }

    if (v17 == 5 && v18 == 3)
    {
      sub_10030A8EC(v23, v26, v33, v32);
      sub_100308424();
    }

    if (v17 == 6 && v18 == 3)
    {
      sub_10030861C();
    }

    if (v17 == 5 && v18 == 5)
    {
      sub_100308774();
    }

    if (v17 == 6 && v18 == 6)
    {
      sub_1003088D4();
    }
  }

  else
  {
    if (v17 == 4 && (a2 & 7) == 0)
    {
      v21 = 1 << (a6 - 1);
      if (!a6)
      {
        v21 = 0;
      }

      v23[0] = __PAIR64__(v21, a6);
      operator new();
    }

    if (v17 == 5 && (a2 & 7) == 0)
    {
      operator new();
    }

    if (v17 == 6 && (a2 & 7) == 0)
    {
      operator new();
    }

    if (v17 == 5 && v18 == 2)
    {
      operator new();
    }

    if (v17 == 6 && v18 == 2)
    {
      sub_1003079DC();
    }

    if (v17 == 5 && v18 == 3)
    {
      sub_100307B24();
    }

    if (v17 == 6 && v18 == 3)
    {
      sub_100307C6C();
    }

    if (v17 == 5 && v18 == 5)
    {
      sub_100307DB4();
    }

    if (v17 == 6 && v18 == 6)
    {
      sub_100307EFC();
    }
  }

  sub_1002A8688(v23, "Unsupported combination of buffer format (=%d), and destination format (=%d)", a1, HIDWORD(a1));
  sub_1002A8980(-213, v23, "getLinearColumnFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3741);
}

uint64_t sub_100307AB4(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_100307BFC(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_100307D44(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_100307E8C(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_100307FD4(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_100308044(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 8);
  }

  *(a1 + 64) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (*(a1 + 12) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 72);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 12));
  }

  v5 = *(a1 + 80);
  if (v5 != (a1 + 88))
  {
    j__free(v5);
  }

  return a1;
}

uint64_t sub_1003080DC(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 8);
  }

  *(a1 + 64) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (*(a1 + 12) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 72);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 12));
  }

  v5 = *(a1 + 80);
  if (v5 != (a1 + 88))
  {
    j__free(v5);
  }

  return a1;
}

uint64_t sub_10030825C(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_1003083B4(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_100308514(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_100308584(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 8);
  }

  *(a1 + 64) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (*(a1 + 12) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 72);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 12));
  }

  v5 = *(a1 + 80);
  if (v5 != (a1 + 88))
  {
    j__free(v5);
  }

  return a1;
}

uint64_t sub_100308704(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_100308864(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_1003089BC(uint64_t result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  *result = 0;
  *(result + 8) = 0;
  return result;
}

void sub_100308A2C(unsigned int a1, unsigned int a2, uint64_t a3, uint64_t a4, int *a5)
{
  if (sub_100271148(a3) == 0x10000)
  {
    v10 = *(a3 + 8);
    v11 = *v10;
    v12 = *(v10 + 16);
    v61 = *v10;
    v62 = v12;
    v63 = *(v10 + 32);
    v13 = *(v10 + 56);
    v64 = *(v10 + 48);
    v65 = v13;
    v66 = &v61 + 8;
    v67 = v68;
    v68[0] = 0;
    v68[1] = 0;
    if (v13)
    {
      atomic_fetch_add((v13 + 20), 1u);
      if (*(v10 + 4) <= 2)
      {
LABEL_4:
        v14 = *(v10 + 72);
        v15 = v67;
        *v67 = *v14;
        v15[1] = v14[1];
        goto LABEL_8;
      }
    }

    else if (SDWORD1(v11) <= 2)
    {
      goto LABEL_4;
    }

    DWORD1(v61) = 0;
    sub_100269B58(&v61, v10);
  }

  else
  {
    sub_1002703C0(a3, -1, &v61);
  }

LABEL_8:
  if (sub_100271148(a4) == 0x10000)
  {
    v16 = *(a4 + 8);
    v17 = *v16;
    v18 = *(v16 + 16);
    v54 = *v16;
    v55 = v18;
    v56 = *(v16 + 32);
    v19 = *(v16 + 56);
    *&v57 = *(v16 + 48);
    *(&v57 + 1) = v19;
    v58 = &v54 + 8;
    v59 = v60;
    v60[0] = 0;
    v60[1] = 0;
    if (v19)
    {
      atomic_fetch_add((v19 + 20), 1u);
      if (*(v16 + 4) <= 2)
      {
LABEL_11:
        v20 = *(v16 + 72);
        v21 = v59;
        *v59 = *v20;
        v21[1] = v20[1];
        goto LABEL_15;
      }
    }

    else if (SDWORD1(v17) <= 2)
    {
      goto LABEL_11;
    }

    DWORD1(v54) = 0;
    sub_100269B58(&v54, v16);
  }

  else
  {
    sub_1002703C0(a4, -1, &v54);
  }

LABEL_15:
  v22 = (a1 >> 3) & 0x1FF;
  if (v22 != ((a2 >> 3) & 0x1FF))
  {
    *v50 = 0;
    *&v50[8] = 0;
    qmemcpy(sub_1002A80E0(v50, 50), "cn == ((((_dstType) & ((512 - 1) << 3)) >> 3) + 1)", 50);
    sub_1002A8980(-215, v50, "createSeparableLinearFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3759);
  }

  v23 = *a5;
  if (*a5 < 0)
  {
    v23 = (DWORD2(v61) + HIDWORD(v61) - 1) / 2;
    *a5 = v23;
    if ((a5[1] & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  else if ((a5[1] & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

  a5[1] = (DWORD2(v54) + HIDWORD(v54) - 1) / 2;
LABEL_19:
  *v50 = 16842752;
  *&v50[8] = &v61;
  *&v50[16] = 0;
  if (DWORD2(v61) == 1)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (DWORD2(v61) == 1)
  {
    v23 = 0;
  }

  *v46 = __PAIR64__(v23, v24);
  v25 = sub_10030503C(v50, v46);
  *v50 = 16842752;
  *&v50[8] = &v54;
  *&v50[16] = 0;
  v26 = a5[1];
  if (DWORD2(v54) == 1)
  {
    v27 = a5[1];
  }

  else
  {
    v27 = 0;
  }

  if (DWORD2(v54) == 1)
  {
    v26 = 0;
  }

  *v46 = __PAIR64__(v26, v27);
  v28 = sub_10030503C(v50, v46);
  *v50 = 1124007936;
  v29 = a2 & 7;
  memset(&v50[4], 0, 60);
  v51 = &v50[8];
  v52 = v53;
  v53[0] = 0;
  v53[1] = 0;
  *v46 = 1124007936;
  memset(&v46[4], 0, 60);
  v47 = &v46[8];
  v48 = v49;
  v49[0] = 0;
  v49[1] = 0;
  if ((a1 & 7) <= v29)
  {
    v30 = a2 & 7;
  }

  else
  {
    v30 = a1 & 7;
  }

  if (v30 <= 5)
  {
    v31 = 5;
  }

  else
  {
    v31 = v30;
  }

  if ((a1 & 7) == 0 && ((a2 & 7) == 0 && v25 == 5 && v28 == 5 || (v25 & 3) != 0 && (v28 & 3) != 0 && v29 == 3 && (v25 & v28 & 8) != 0))
  {
    LODWORD(v43) = 33619968;
    v44 = v50;
    v45 = 0;
    v42 = (1 << (8 * (v29 == 0)));
    sub_10020EF14(&v61, &v43, 4, v42, 0.0);
    LODWORD(v43) = 33619968;
    v44 = v46;
    v45 = 0;
    sub_10020EF14(&v54, &v43, 4, v42, 0.0);
    LOWORD(v31) = 4;
    goto LABEL_77;
  }

  if ((v61 & 0xFFF) != v31)
  {
    LODWORD(v43) = 33619968;
    v44 = v50;
    v45 = 0;
    sub_10020EF14(&v61, &v43, v31, 1.0, 0.0);
    if ((v54 & 0xFFF) != v31)
    {
LABEL_73:
      LODWORD(v43) = 33619968;
      v44 = v46;
      v45 = 0;
      sub_10020EF14(&v54, &v43, v31, 1.0, 0.0);
      goto LABEL_77;
    }

LABEL_48:
    if (*(&v57 + 1))
    {
      atomic_fetch_add((*(&v57 + 1) + 20), 1u);
    }

    if (*&v46[56] && atomic_fetch_add((*&v46[56] + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(v46);
    }

    *&v46[56] = 0;
    memset(&v46[16], 0, 32);
    if (*v46 <= 0)
    {
      *v46 = v54;
      v39 = DWORD1(v54);
      if (SDWORD1(v54) <= 2)
      {
LABEL_58:
        *&v46[4] = v39;
        *&v46[8] = *(&v54 + 1);
        v40 = v59;
        v41 = v48;
        *v48 = *v59;
        v41[1] = v40[1];
LABEL_76:
        *&v46[16] = v55;
        *&v46[32] = v56;
        *&v46[48] = v57;
LABEL_77:
        LODWORD(v43) = 16842752;
        v44 = v50;
        v45 = 0;
        sub_100305414(a1 & 0xFFF, v31 | (8 * v22), &v43, *a5, v25);
      }
    }

    else
    {
      v37 = 0;
      v38 = v47;
      do
      {
        *&v38[4 * v37++] = 0;
      }

      while (v37 < *&v46[4]);
      *v46 = v54;
      if (*&v46[4] <= 2)
      {
        v39 = DWORD1(v54);
        if (SDWORD1(v54) <= 2)
        {
          goto LABEL_58;
        }
      }
    }

    sub_100269B58(v46, &v54);
    goto LABEL_76;
  }

  if (v65)
  {
    atomic_fetch_add((v65 + 20), 1u);
    if (*&v50[56])
    {
      if (atomic_fetch_add((*&v50[56] + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(v50);
      }
    }
  }

  *&v50[56] = 0;
  memset(&v50[16], 0, 32);
  if (*&v50[4] <= 0)
  {
    v34 = DWORD1(v61);
    *v50 = v61;
    if (SDWORD1(v61) <= 2)
    {
LABEL_46:
      *&v50[4] = v34;
      *&v50[8] = *(&v61 + 1);
      v35 = v67;
      v36 = v52;
      *v52 = *v67;
      v36[1] = v35[1];
      goto LABEL_72;
    }
  }

  else
  {
    v32 = 0;
    v33 = v51;
    do
    {
      *&v33[4 * v32++] = 0;
    }

    while (v32 < *&v50[4]);
    *v50 = v61;
    if (*&v50[4] <= 2)
    {
      v34 = DWORD1(v61);
      if (SDWORD1(v61) <= 2)
      {
        goto LABEL_46;
      }
    }
  }

  sub_100269B58(v50, &v61);
LABEL_72:
  *&v50[16] = v62;
  *&v50[32] = v63;
  *&v50[48] = v64;
  *&v50[56] = v65;
  if ((v54 & 0xFFF) != v31)
  {
    goto LABEL_73;
  }

  goto LABEL_48;
}

void sub_100309404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_100006D14(&a23);
  sub_100006D14(&a35);
  sub_100006D14(&a47);
  sub_100006D14(v47 - 208);
  _Unwind_Resume(a1);
}

void sub_1003094D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  sub_100006D14(&a47);
  sub_100006D14(v47 - 208);
  _Unwind_Resume(a1);
}

void sub_100309508(unsigned int a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, unsigned int a15, int a16, int a17)
{
  v28[0] = a13;
  v28[1] = 1;
  sub_10024255C(v29, v28, a3, a12, 0);
  *&v23[0] = a15 | 0x100000000;
  sub_10024255C(v28, v23, a3, a14, 0);
  *&v22 = 0;
  v20 = 16842752;
  v21 = v29;
  v27 = 0;
  v24[1] = a17;
  v25 = 16842752;
  v26 = v28;
  v24[0] = a16;
  memset(v23, 0, sizeof(v23));
  sub_100308A2C(a1, a2, &v20, &v25, v24);
}

void sub_100309920(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int *a6, char a7)
{
  sub_1002ACE7C(v85, &off_100478B98);
  if (sub_100271148(a1) == 0x10000)
  {
    v14 = *(a1 + 8);
    v15 = *v14;
    v16 = *(v14 + 16);
    v77 = *v14;
    v78 = v16;
    v79 = *(v14 + 32);
    v17 = *(v14 + 56);
    v80 = *(v14 + 48);
    v81 = v17;
    v82 = &v77 + 1;
    v83 = v84;
    v84[0] = 0;
    v84[1] = 0;
    if (v17)
    {
      atomic_fetch_add((v17 + 20), 1u);
      if (*(v14 + 4) <= 2)
      {
LABEL_4:
        v18 = *(v14 + 72);
        v19 = v83;
        *v83 = *v18;
        v19[1] = v18[1];
        goto LABEL_8;
      }
    }

    else if (SDWORD1(v15) <= 2)
    {
      goto LABEL_4;
    }

    DWORD1(v77) = 0;
    sub_100269B58(&v77, v14);
  }

  else
  {
    sub_1002703C0(a1, -1, &v77);
  }

LABEL_8:
  if (sub_100271148(a4) == 0x10000)
  {
    v20 = *(a4 + 8);
    v21 = *v20;
    v22 = *(v20 + 16);
    v70 = *v20;
    v71 = v22;
    v72 = *(v20 + 32);
    v23 = *(v20 + 56);
    *&v73 = *(v20 + 48);
    *(&v73 + 1) = v23;
    v74 = &v70 + 8;
    v75 = v76;
    v76[1] = 0;
    v76[0] = 0;
    if (v23)
    {
      atomic_fetch_add((v23 + 20), 1u);
      if (*(v20 + 4) <= 2)
      {
LABEL_11:
        v24 = *(v20 + 72);
        v25 = v75;
        *v75 = *v24;
        v25[1] = v24[1];
        goto LABEL_15;
      }
    }

    else if (SDWORD1(v21) <= 2)
    {
      goto LABEL_11;
    }

    DWORD1(v70) = 0;
    sub_100269B58(&v70, v20);
  }

  else
  {
    sub_1002703C0(a4, -1, &v70);
  }

LABEL_15:
  if (sub_100271148(a5) == 0x10000)
  {
    v26 = *(a5 + 8);
    v27 = *v26;
    v28 = *(v26 + 16);
    v63 = *v26;
    v64 = v28;
    v65 = *(v26 + 32);
    v29 = *(v26 + 56);
    *&v66 = *(v26 + 48);
    *(&v66 + 1) = v29;
    v67 = &v63 + 8;
    v68 = v69;
    v69[0] = 0;
    v69[1] = 0;
    if (v29)
    {
      atomic_fetch_add((v29 + 20), 1u);
      if (*(v26 + 4) <= 2)
      {
LABEL_18:
        v30 = *(v26 + 72);
        v31 = v68;
        *v68 = *v30;
        v31[1] = v30[1];
        goto LABEL_22;
      }
    }

    else if (SDWORD1(v27) <= 2)
    {
      goto LABEL_18;
    }

    DWORD1(v63) = 0;
    sub_100269B58(&v63, v26);
  }

  else
  {
    sub_1002703C0(a5, -1, &v63);
  }

LABEL_22:
  if (a3 >= 0)
  {
    v32 = a3;
  }

  else
  {
    v32 = v77;
  }

  *&v55 = vrev64_s32(*v82);
  sub_100275370(a2, &v55, v77 & 0xFF8 | v32 & 7, -1, 0, 0);
  if (sub_100271148(a2) == 0x10000)
  {
    v33 = *(a2 + 8);
    v34 = *v33;
    v35 = *(v33 + 16);
    v55 = *v33;
    v56 = v35;
    v57 = *(v33 + 32);
    v36 = *(v33 + 56);
    v58 = *(v33 + 48);
    v59 = v36;
    v60 = &v55 + 8;
    v61 = v62;
    v62[0] = 0;
    v62[1] = 0;
    if (v36)
    {
      atomic_fetch_add((v36 + 20), 1u);
      if (*(v33 + 4) <= 2)
      {
LABEL_28:
        v37 = *(v33 + 72);
        v38 = v61;
        *v61 = *v37;
        v38[1] = v37[1];
        goto LABEL_32;
      }
    }

    else if (SDWORD1(v34) <= 2)
    {
      goto LABEL_28;
    }

    DWORD1(v55) = 0;
    sub_100269B58(&v55, v33);
  }

  else
  {
    sub_1002703C0(a2, -1, &v55);
  }

LABEL_32:
  v54 = vrev64_s32(*(&v77 + 8));
  if ((a7 & 0x10) == 0)
  {
    sub_10026BBAC(&v77, &v54, &v54 + 2);
  }

  if (((v63 ^ v70) & 0xFFF) != 0 || HIDWORD(v70) != 1 && DWORD2(v70) != 1 || HIDWORD(v63) != 1 && DWORD2(v63) != 1)
  {
    *v49 = 0uLL;
    qmemcpy(sub_1002A80E0(v49, 120), "kernelX.type() == kernelY.type() && (kernelX.cols == 1 || kernelX.rows == 1) && (kernelY.cols == 1 || kernelY.rows == 1)", 120);
    sub_1002A8980(-215, v49, "sepFilter2D", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 4948);
  }

  if ((v70 & 0x4000) == 0)
  {
    *v49 = 1124007936;
    memset(&v49[4], 0, 60);
    v50 = &v49[8];
    v51 = &v52;
    v52 = 0;
    v53 = 0;
    *v44 = 33619968;
    *&v44[8] = v49;
    sub_10022B754(&v70, v44);
    goto LABEL_47;
  }

  *v49 = v70;
  *&v49[16] = v71;
  *&v49[32] = v72;
  *&v49[48] = v73;
  v50 = &v49[8];
  v51 = &v52;
  v52 = 0;
  v53 = 0;
  if (*(&v73 + 1))
  {
    atomic_fetch_add((*(&v73 + 1) + 20), 1u);
    if (SDWORD1(v70) <= 2)
    {
LABEL_44:
      v39 = v75;
      v40 = v51;
      *v51 = *v75;
      v40[1] = v39[1];
      goto LABEL_47;
    }
  }

  else if (SDWORD1(v70) <= 2)
  {
    goto LABEL_44;
  }

  *&v49[4] = 0;
  sub_100269B58(v49, &v70);
LABEL_47:
  if ((v63 & 0x4000) == 0)
  {
    *v44 = 1124007936;
    memset(&v44[4], 0, 60);
    v45 = &v44[8];
    v46 = &v47;
    v47 = 0;
    v48 = 0;
    v86 = 33619968;
    v87 = v44;
    v88 = 0;
    sub_10022B754(&v63, &v86);
    goto LABEL_54;
  }

  *v44 = v63;
  *&v44[16] = v64;
  *&v44[32] = v65;
  *&v44[48] = v66;
  v45 = &v44[8];
  v46 = &v47;
  v47 = 0;
  v48 = 0;
  if (*(&v66 + 1))
  {
    atomic_fetch_add((*(&v66 + 1) + 20), 1u);
    if (SDWORD1(v63) <= 2)
    {
LABEL_51:
      v41 = v68;
      v42 = v46;
      *v46 = *v68;
      v42[1] = v41[1];
      goto LABEL_54;
    }
  }

  else if (SDWORD1(v63) <= 2)
  {
    goto LABEL_51;
  }

  *&v44[4] = 0;
  sub_100269B58(v44, &v63);
LABEL_54:
  LODWORD(v43) = HIDWORD(v54);
  sub_100309508(v77 & 0xFFF, v55 & 0xFFF, v70 & 0xFFF, v78, v84[0], v56, v62[0], HIDWORD(v55), __SPAIR64__(v54, DWORD2(v55)), *(&v54 + 4), v43, *&v49[16], HIDWORD(v70) + DWORD2(v70) - 1, *&v44[16], HIDWORD(v63) + DWORD2(v63) - 1, *a6, a6[1]);
}

void sub_10030A248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_100006D14(&a29);
  sub_100006D14(&a43);
  sub_100006D14(&a55);
  sub_100006D14(&a67);
  sub_100006D14(v67 - 224);
  sub_1001D8BF4(v67 - 120);
  _Unwind_Resume(a1);
}

void sub_10030A300(_Unwind_Exception *a1)
{
  sub_100006D14(v1 - 224);
  sub_1001D8BF4(v1 - 120);
  _Unwind_Resume(a1);
}

uint64_t sub_10030A330(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 4) = 0u;
  v5 = (a1 + 4);
  *a1 = 1124007936;
  *(a1 + 20) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 64) = a1 + 8;
  *(a1 + 72) = a1 + 80;
  *(a1 + 88) = 0;
  if (a1 == a2)
  {
    *(a1 + 96) = a3;
    *(a1 + 100) = 1;
    return a1;
  }

  v7 = *(a2 + 56);
  if (v7)
  {
    atomic_fetch_add((v7 + 20), 1u);
    v8 = *(a1 + 56);
    if (v8)
    {
      if (atomic_fetch_add((v8 + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(a1);
      }
    }
  }

  *(a1 + 56) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  if (*(a1 + 4) <= 0)
  {
    *a1 = *a2;
    v12 = *(a2 + 4);
    if (v12 <= 2)
    {
LABEL_11:
      v13 = *(a2 + 8);
      v14 = *(a2 + 12);
      *(a1 + 4) = v12;
      *(a1 + 8) = v13;
      *(a1 + 12) = v14;
      v15 = *(a2 + 72);
      v16 = *(a1 + 72);
      *v16 = *v15;
      v16[1] = v15[1];
      goto LABEL_16;
    }
  }

  else
  {
    v9 = 0;
    v10 = *(a1 + 64);
    do
    {
      *(v10 + 4 * v9++) = 0;
      v11 = *v5;
    }

    while (v9 < v11);
    *a1 = *a2;
    if (v11 <= 2)
    {
      v12 = *(a2 + 4);
      if (v12 <= 2)
      {
        goto LABEL_11;
      }
    }
  }

  sub_100269B58(a1, a2);
  v13 = *(a1 + 8);
  v14 = *(a1 + 12);
LABEL_16:
  v18 = *(a2 + 16);
  *(a1 + 16) = v18;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  v19 = (v13 + v14 - 1);
  *(a1 + 96) = a3;
  *(a1 + 100) = 1;
  if (v19 < 1)
  {
    return a1;
  }

  v20 = v18;
  while (1)
  {
    v21 = *v20++;
    if (v21 != v21)
    {
      break;
    }

    if (!--v19)
    {
      return a1;
    }
  }

  *(a1 + 100) = 0;
  return a1;
}

uint64_t sub_10030A4FC(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 4) = 0u;
  v5 = (a1 + 4);
  *a1 = 1124007936;
  *(a1 + 20) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 64) = a1 + 8;
  *(a1 + 72) = a1 + 80;
  *(a1 + 88) = 0;
  if (a1 != a2)
  {
    v7 = *(a2 + 56);
    if (v7)
    {
      atomic_fetch_add((v7 + 20), 1u);
      v8 = *(a1 + 56);
      if (v8)
      {
        if (atomic_fetch_add((v8 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(a1);
        }
      }
    }

    *(a1 + 56) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    if (*(a1 + 4) <= 0)
    {
      *a1 = *a2;
      v12 = *(a2 + 4);
      if (v12 <= 2)
      {
LABEL_11:
        *(a1 + 4) = v12;
        *(a1 + 8) = *(a2 + 8);
        v13 = *(a2 + 72);
        v14 = *(a1 + 72);
        *v14 = *v13;
        v14[1] = v13[1];
LABEL_14:
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 48) = *(a2 + 48);
        goto LABEL_15;
      }
    }

    else
    {
      v9 = 0;
      v10 = *(a1 + 64);
      do
      {
        *(v10 + 4 * v9++) = 0;
        v11 = *v5;
      }

      while (v9 < v11);
      *a1 = *a2;
      if (v11 <= 2)
      {
        v12 = *(a2 + 4);
        if (v12 <= 2)
        {
          goto LABEL_11;
        }
      }
    }

    sub_100269B58(a1, a2);
    goto LABEL_14;
  }

LABEL_15:
  *(a1 + 96) = a3;
  return a1;
}

uint64_t sub_10030A66C(uint64_t a1, unsigned int *a2, int a3, char a4, double a5)
{
  *(a1 + 8) = 1124007936;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 72) = a1 + 16;
  *(a1 + 80) = a1 + 88;
  *(a1 + 96) = 0;
  *a1 = a3;
  LODWORD(v10) = 33619968;
  v11 = a1 + 8;
  v12 = 0;
  v7 = (1 << a4);
  sub_10020EF14(a2, &v10, 5, 1.0 / v7, 0.0);
  v8 = a5 / v7;
  *(a1 + 4) = v8;
  if ((*a1 & 3) == 0)
  {
    v10 = 0;
    v11 = 0;
    qmemcpy(sub_1002A80E0(&v10, 64), "(symmetryType & (KERNEL_SYMMETRICAL | KERNEL_ASYMMETRICAL)) != 0", 64);
    sub_1002A8980(-215, &v10, "SymmColumnVec_32s8u", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 2429);
  }

  return a1;
}

void sub_10030A780(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1002A8124(va);
  sub_100006D14(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_10030A7AC(uint64_t a1, unsigned int *a2, int a3, char a4, double a5)
{
  *(a1 + 8) = 1124007936;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 72) = a1 + 16;
  *(a1 + 80) = a1 + 88;
  *(a1 + 96) = 0;
  *a1 = a3;
  LODWORD(v10) = 33619968;
  v11 = a1 + 8;
  v12 = 0;
  v7 = (1 << a4);
  sub_10020EF14(a2, &v10, 5, 1.0 / v7, 0.0);
  v8 = a5 / v7;
  *(a1 + 4) = v8;
  if ((*a1 & 3) == 0)
  {
    v10 = 0;
    v11 = 0;
    qmemcpy(sub_1002A80E0(&v10, 64), "(symmetryType & (KERNEL_SYMMETRICAL | KERNEL_ASYMMETRICAL)) != 0", 64);
    sub_1002A8980(-215, &v10, "SymmColumnSmallVec_32s16s", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 2581);
  }

  return a1;
}

void sub_10030A8C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1002A8124(va);
  sub_100006D14(v2);
  _Unwind_Resume(a1);
}

int *sub_10030A8EC(int *a1, uint64_t a2, int a3, double a4)
{
  a1[2] = 1124007936;
  v6 = a1 + 2;
  *(a1 + 3) = 0u;
  v7 = a1 + 3;
  *(a1 + 7) = 0u;
  *(a1 + 11) = 0u;
  *(a1 + 14) = 0u;
  *(a1 + 11) = 0;
  *(a1 + 9) = a1 + 4;
  *(a1 + 10) = a1 + 22;
  *(a1 + 12) = 0;
  *a1 = a3;
  if (a1 + 2 != a2)
  {
    v9 = *(a2 + 56);
    if (v9)
    {
      atomic_fetch_add((v9 + 20), 1u);
      v10 = *(a1 + 8);
      if (v10)
      {
        if (atomic_fetch_add((v10 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8((a1 + 2));
        }
      }
    }

    *(a1 + 8) = 0;
    *(a1 + 6) = 0u;
    *(a1 + 10) = 0u;
    if (a1[3] <= 0)
    {
      *v6 = *a2;
      v14 = *(a2 + 4);
      if (v14 <= 2)
      {
LABEL_11:
        a1[3] = v14;
        *(a1 + 2) = *(a2 + 8);
        v15 = *(a2 + 72);
        v16 = *(a1 + 10);
        *v16 = *v15;
        v16[1] = v15[1];
LABEL_14:
        *(a1 + 6) = *(a2 + 16);
        *(a1 + 10) = *(a2 + 32);
        *(a1 + 14) = *(a2 + 48);
        a3 = *a1;
        goto LABEL_15;
      }
    }

    else
    {
      v11 = 0;
      v12 = *(a1 + 9);
      do
      {
        *(v12 + 4 * v11++) = 0;
        v13 = *v7;
      }

      while (v11 < v13);
      *v6 = *a2;
      if (v13 <= 2)
      {
        v14 = *(a2 + 4);
        if (v14 <= 2)
        {
          goto LABEL_11;
        }
      }
    }

    sub_100269B58(v6, a2);
    goto LABEL_14;
  }

LABEL_15:
  v17 = a4;
  *(a1 + 1) = v17;
  if ((a3 & 3) == 0)
  {
    v19[0] = 0;
    v19[1] = 0;
    qmemcpy(sub_1002A80E0(v19, 64), "(symmetryType & (KERNEL_SYMMETRICAL | KERNEL_ASYMMETRICAL)) != 0", 64);
    sub_1002A8980(-215, v19, "SymmColumnVec_32f16s", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 2760);
  }

  *(a1 + 104) = sub_1002A8904(100);
  return a1;
}

void sub_10030AAD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  sub_100006D14(v9);
  _Unwind_Resume(a1);
}

void sub_10030AB00(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v10 = 8 * a2;
      bzero(*(a1 + 8), 8 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 3) + a2;
    if (v7 >> 61)
    {
      sub_10000918C();
    }

    v8 = v3 - v5;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_10000927C();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 8 * a2;
    bzero(v11, 8 * a2);
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

uint64_t sub_10030AC54(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v7 = sub_10030AD50(a1, a2, a3, a5);
  *v7 = off_100478BF8;
  *(v7 + 216) = a4;
  if ((a4 & 3) == 0 || *(a1 + 8) >= 6)
  {
    v9[0] = 0;
    v9[1] = 0;
    qmemcpy(sub_1002A80E0(v9, 84), "(symmetryType & (KERNEL_SYMMETRICAL | KERNEL_ASYMMETRICAL)) != 0 && this->ksize <= 5", 84);
    sub_1002A8980(-215, v9, "SymmRowSmallFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3112);
  }

  return a1;
}

void sub_10030AD28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  sub_10030B108(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_10030AD50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *(a1 + 8) = -1;
  *a1 = off_100478C50;
  *(a1 + 16) = 1124007936;
  v8 = (a1 + 16);
  *(a1 + 20) = 0u;
  v9 = (a1 + 20);
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  *(a1 + 112) = 1124007936;
  v10 = (a1 + 112);
  *(a1 + 116) = 0u;
  v11 = (a1 + 116);
  *(a1 + 132) = 0u;
  *(a1 + 148) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = a1 + 120;
  *(a1 + 184) = a1 + 192;
  *(a1 + 200) = 0;
  *(a1 + 212) = 0;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v8 == a2)
    {
      goto LABEL_17;
    }

    v12 = *(a2 + 56);
    if (v12)
    {
      atomic_fetch_add((v12 + 20), 1u);
      v13 = *(a1 + 72);
      if (v13)
      {
        if (atomic_fetch_add((v13 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(a1 + 16);
        }
      }
    }

    *(a1 + 72) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    if (*(a1 + 20) <= 0)
    {
      *v8 = *a2;
      v17 = *(a2 + 4);
      if (v17 <= 2)
      {
LABEL_13:
        *(a1 + 20) = v17;
        *(a1 + 24) = *(a2 + 8);
        v18 = *(a2 + 72);
        v19 = *(a1 + 88);
        *v19 = *v18;
        v19[1] = v18[1];
LABEL_16:
        *(a1 + 32) = *(a2 + 16);
        *(a1 + 48) = *(a2 + 32);
        *(a1 + 64) = *(a2 + 48);
        goto LABEL_17;
      }
    }

    else
    {
      v14 = 0;
      v15 = *(a1 + 80);
      do
      {
        *(v15 + 4 * v14++) = 0;
        v16 = *v9;
      }

      while (v14 < v16);
      *v8 = *a2;
      if (v16 <= 2)
      {
        v17 = *(a2 + 4);
        if (v17 <= 2)
        {
          goto LABEL_13;
        }
      }
    }

    sub_100269B58(v8, a2);
    goto LABEL_16;
  }

  LODWORD(v32) = 33619968;
  v33 = a1 + 16;
  v34 = 0;
  sub_10022B754(a2, &v32);
LABEL_17:
  v21 = *(a1 + 24);
  v20 = *(a1 + 28);
  *(a1 + 8) = v21 + v20 - 1;
  *(a1 + 12) = a3;
  if ((*(a1 + 16) & 0xFFF) != 4 || v21 != 1 && v20 != 1)
  {
    v32 = 0;
    v33 = 0;
    qmemcpy(sub_1002A80E0(&v32, 77), "kernel.type() == DataType<DT>::type && (kernel.rows == 1 || kernel.cols == 1)", 77);
    sub_1002A8980(-215, &v32, "RowFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3053);
  }

  if (v10 != a4)
  {
    v22 = *(a4 + 56);
    if (v22)
    {
      atomic_fetch_add((v22 + 20), 1u);
    }

    v23 = *(a1 + 168);
    if (v23 && atomic_fetch_add((v23 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(v10);
    }

    *(a1 + 168) = 0;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    if (*(a1 + 116) <= 0)
    {
      *v10 = *a4;
      v27 = *(a4 + 4);
      if (v27 <= 2)
      {
LABEL_32:
        *(a1 + 116) = v27;
        *(a1 + 120) = *(a4 + 8);
        v28 = *(a4 + 72);
        v29 = *(a1 + 184);
        *v29 = *v28;
        v29[1] = v28[1];
LABEL_35:
        *(a1 + 128) = *(a4 + 16);
        *(a1 + 144) = *(a4 + 32);
        *(a1 + 160) = *(a4 + 48);
        goto LABEL_36;
      }
    }

    else
    {
      v24 = 0;
      v25 = *(a1 + 176);
      do
      {
        *(v25 + 4 * v24++) = 0;
        v26 = *v11;
      }

      while (v24 < v26);
      *v10 = *a4;
      if (v26 <= 2)
      {
        v27 = *(a4 + 4);
        if (v27 <= 2)
        {
          goto LABEL_32;
        }
      }
    }

    sub_100269B58(v10, a4);
    goto LABEL_35;
  }

LABEL_36:
  v30 = *(a4 + 96);
  *(a1 + 212) = *(a4 + 100);
  *(a1 + 208) = v30;
  return a1;
}

void sub_10030B0CC(_Unwind_Exception *a1)
{
  sub_100305EE8(v2);
  sub_100006D14(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10030B108(uint64_t a1)
{
  *a1 = off_100478C50;
  v2 = *(a1 + 168);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 112);
  }

  *(a1 + 168) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  if (*(a1 + 116) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 176);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 116));
  }

  v5 = *(a1 + 184);
  if (v5 != (a1 + 192))
  {
    j__free(v5);
  }

  v6 = *(a1 + 72);
  if (v6 && atomic_fetch_add((v6 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v7 = 0;
    v8 = *(a1 + 80);
    do
    {
      *(v8 + 4 * v7++) = 0;
    }

    while (v7 < *(a1 + 20));
  }

  v9 = *(a1 + 88);
  if (v9 != (a1 + 96))
  {
    j__free(v9);
  }

  return a1;
}

void sub_10030B22C(uint64_t a1)
{
  sub_10030B108(a1);

  operator delete();
}

int64_t sub_10030B264(uint64_t a1, uint64_t a2, __int16 *a3, int a4, int a5)
{
  v10 = *(a1 + 8);
  v11 = v10 / 2 * a5;
  v12 = *(a1 + 32);
  v614 = (v10 + (v10 >> 31)) >> 1;
  v13 = v12 + 4 * (v10 / 2);
  v14 = *(a1 + 216);
  result = sub_10030D484(a1 + 112, a2, a3, a4, a5);
  v20 = result;
  v21 = result;
  v22 = a2 + result;
  v23 = v11;
  v24 = (v22 + v11);
  v25 = a5 * a4;
  v26 = *(a1 + 8);
  if (v14)
  {
    if (v26 == 5)
    {
      v214 = *v13;
      v215 = *(v13 + 4);
      v216 = *(v13 + 8);
      v217 = v25 - 2;
      if (*v13 != -2 || v215 != 0 || v216 != 1)
      {
        if (result <= v217)
        {
          v220 = -a5;
          v221 = -2 * a5;
          v222 = 2 * a5;
          v223 = 1 - a5;
          v224 = v217 - v20;
          v225 = a5 + 1;
          v226 = 1 - 2 * a5;
          if (v224 > 0x3F)
          {
            v227 = &a3[2 * v20];
            v607 = v224 >> 1;
            v228 = v227 + 8 * (v224 >> 1) + 8;
            v229 = v224 & 0xFFFFFFFFFFFFFFFELL;
            v230 = v20 + v11 + a2 + v229;
            v613 = v230 + v222 + 2;
            v610 = v20 + v23 - v222 + a2 + 1;
            v231 = v20 + v23 + v229 + 2;
            v232 = a2 + v231 - v222;
            v608 = a2 + v20 + v23 - a5;
            v233 = a2 + v231 - a5;
            v234 = a2 + v231;
            v235 = v22 + a5 + v23;
            v236 = v230 + a5 + 1;
            v238 = v227 < v232 && v610 < v228;
            v611 = v238;
            v240 = v227 < v230 + v225 + 1 && v24->u64 + v225 < v228;
            v242 = v227 < v233 && v608 < v228;
            v244 = v227 < v234 && v24 < v228;
            v246 = v227 < v230 + v221 + 1 && v24->u64 + v221 < v228;
            v248 = v227 < v236 && v235 < v228;
            v249 = v24->u64 + v222 >= v228 || v227 >= v613;
            if (!v249 || v611 || v240 || v242 || v244 || v246 || v248)
            {
              v223 = 1 - a5;
            }

            else
            {
              v250 = (v607 + 1) & 0xF;
              if (!v250)
              {
                v250 = 16;
              }

              v251 = 2 * (v607 + 1 - v250);
              v21 = v251 + v20;
              v252 = vdupq_n_s32(LODWORD(v214));
              v16 = vdupq_n_s32(v215);
              v253 = vdupq_n_s32(v216);
              v254 = &v24->u8[v251];
              v255 = ~v607 + v250;
              v18.i32[1] = -255;
              v19.i32[1] = -251;
              v256 = v24;
              v223 = 1 - a5;
              do
              {
                v639 = vld2q_s8(v256);
                v256 += 32;
                v257 = &v24->i8[v220];
                v648 = vld2q_s8(v257);
                v258 = &v24->i8[a5];
                v259 = vld2q_s8(v258);
                v260 = vaddl_u8(*&v259, *v648.val[0].i8);
                v261 = vaddl_high_u8(v259, v648.val[0]);
                v262 = vmlaq_s32(vmulq_s32(v252, vqtbl1q_s8(v639.val[0], xmmword_1003E3720)), vmovl_u16(*v260.i8), v16);
                v263 = vmlaq_s32(vmulq_s32(v252, vqtbl1q_s8(v639.val[0], xmmword_1003E3730)), vmovl_high_u16(v260), v16);
                v264 = vmlaq_s32(vmulq_s32(v252, vqtbl1q_s8(v639.val[0], xmmword_1003E3700)), vmovl_u16(*v261.i8), v16);
                v265 = vmlaq_s32(vmulq_s32(v252, vqtbl1q_s8(v639.val[0], xmmword_1003E3710)), vmovl_high_u16(v261), v16);
                v266 = &v24->i8[v221];
                v267 = vld2q_s8(v266);
                v268 = &v24->i8[v222];
                v652 = vld2q_s8(v268);
                v269 = vaddl_high_u8(v652.val[0], v267);
                v270 = vaddl_u8(*v652.val[0].i8, *&v267);
                v626.val[0] = vmlaq_s32(v265, vmovl_high_u16(v269), v253);
                v271 = &v24->i8[v225];
                v272 = vld2q_s8(v271);
                v273 = vaddl_high_u8(v272, v648.val[1]);
                v274 = &v24->i8[v226];
                v275 = vld2q_s8(v274);
                v276 = vaddl_high_u8(v652.val[1], v275);
                v634.val[0] = vmlaq_s32(v264, vmovl_u16(*v269.i8), v253);
                v643.val[0] = vmlaq_s32(v263, vmovl_high_u16(v270), v253);
                v648.val[0] = vaddl_u8(*&v272, *v648.val[1].i8);
                v648.val[1] = vaddl_u8(*v652.val[1].i8, *&v275);
                v645.val[0] = vmlaq_s32(v262, vmovl_u16(*v270.i8), v253);
                v645.val[1] = vmlaq_s32(vmlaq_s32(vmulq_s32(v252, vqtbl1q_s8(v639.val[1], xmmword_1003E3720)), vmovl_u16(*v648.val[0].i8), v16), vmovl_u16(*v648.val[1].i8), v253);
                v277 = v227;
                vst2q_f32(v277, v645);
                v277 += 8;
                v643.val[1] = vmlaq_s32(vmlaq_s32(vmulq_s32(v252, vqtbl1q_s8(v639.val[1], xmmword_1003E3730)), vmovl_high_u16(v648.val[0]), v16), vmovl_high_u16(v648.val[1]), v253);
                vst2q_f32(v277, v643);
                v634.val[1] = vmlaq_s32(vmlaq_s32(vmulq_s32(v252, vqtbl1q_s8(v639.val[1], xmmword_1003E3700)), vmovl_u16(*v273.i8), v16), vmovl_u16(*v276.i8), v253);
                v278 = (v227 + 64);
                vst2q_f32(v278, v634);
                v626.val[1] = vmlaq_s32(vmlaq_s32(vmulq_s32(v252, vqtbl1q_s8(v639.val[1], xmmword_1003E3710)), vmovl_high_u16(v273), v16), vmovl_high_u16(v276), v253);
                v279 = (v227 + 96);
                vst2q_f32(v279, v626);
                v227 += 128;
                v24 = v256;
                v255 += 16;
              }

              while (v255);
              v24 = v254;
            }
          }

          v600 = 0;
          v601 = &a3[2 * v21 + 2];
          v602 = &v24->u8[v225];
          v603 = &v24->u8[v226];
          do
          {
            v604 = LODWORD(v214) * v24->u8[v600 + 1] + (v602[v600] + v24->u8[v223 + v600]) * v215 + (v24->u8[v222 + 1 + v600] + v603[v600]) * v216;
            *(v601 - 1) = LODWORD(v214) * v24->u8[v600] + (v24->u8[a5 + v600] + v24->u8[v220 + v600]) * v215 + (v24->u8[v222 + v600] + v24->u8[v221 + v600]) * v216;
            *v601 = v604;
            v600 += 2;
            v601 += 2;
          }

          while (v21 + v600 <= v217);
          result = (v21 + v600);
          v24 = (v24 + v600);
          if (result >= v25)
          {
            return result;
          }

          goto LABEL_390;
        }

        goto LABEL_389;
      }

      if (result > v217)
      {
LABEL_389:
        if (result >= v25)
        {
          return result;
        }

LABEL_390:
        if (v10 < 2)
        {
          v519 = v25 - result;
          if (v519 < 4 || ((v566 = &a3[2 * result], v567 = &a3[2 * v25], v566 < v24->u64 + v519) ? (v568 = v24 >= v567) : (v568 = 1), v568 ? (v569 = 0) : (v569 = 1), v13 < v567 ? (v570 = v566 >= v12 + 4 * v614 + 4) : (v570 = 1), !v570 || (v569 & 1) != 0))
          {
            v520 = result;
            v521 = v24;
            goto LABEL_393;
          }

          if (v519 >= 0x20)
          {
            v586 = vld1q_dup_f32(v13);
            v571 = v519 & 0xFFFFFFFFFFFFFFE0;
            v587 = (v566 + 64);
            v588 = v24 + 1;
            v16.i32[1] = -247;
            v589 = v519 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v590 = v588[-1];
              v591 = vqtbl1q_s8(*v588, xmmword_1003E3700);
              v592 = vmulq_s32(v586, vqtbl1q_s8(*v588, xmmword_1003E3710));
              v593 = vmulq_s32(v586, vqtbl1q_s8(*v588, xmmword_1003E3720));
              v594 = vmulq_s32(v586, vqtbl1q_s8(*v588, xmmword_1003E3730));
              v587[-4] = vmulq_s32(v586, vqtbl1q_s8(v590, xmmword_1003E3720));
              v587[-3] = vmulq_s32(v586, vqtbl1q_s8(v590, xmmword_1003E3730));
              v587[-2] = vmulq_s32(v586, vqtbl1q_s8(v590, xmmword_1003E3700));
              v587[-1] = vmulq_s32(v586, vqtbl1q_s8(v590, xmmword_1003E3710));
              *v587 = v593;
              v587[1] = v594;
              v587[2] = vmulq_s32(v586, v591);
              v587[3] = v592;
              v587 += 8;
              v588 += 2;
              v589 -= 32;
            }

            while (v589);
            if (v519 == v571)
            {
              return result;
            }

            if ((v519 & 0x1C) == 0)
            {
              v521 = &v24->u8[v571];
              v520 = v571 + result;
              goto LABEL_393;
            }
          }

          else
          {
            v571 = 0;
          }

          v520 = (v519 & 0xFFFFFFFFFFFFFFFCLL) + result;
          v595 = vld1q_dup_f32(v13);
          v521 = &v24->u8[v519 & 0xFFFFFFFFFFFFFFFCLL];
          v596 = &a3[2 * v571 + 2 * result];
          v597 = &v24->u8[v571];
          v598 = v571 - (v519 & 0xFFFFFFFFFFFFFFFCLL);
          do
          {
            v599 = *v597;
            v597 += 4;
            v16.i32[0] = v599;
            v16 = vmulq_s32(v595, vmovl_u16(*&vmovl_u8(*v16.i8)));
            *v596++ = v16;
            v598 += 4;
          }

          while (v598);
          if (v519 == (v519 & 0xFFFFFFFFFFFFFFFCLL))
          {
            return result;
          }

LABEL_393:
          v522 = &a3[2 * v520];
          v523 = v25 - v520;
          do
          {
            v524 = *v521++;
            *v522 = *v13 * v524;
            v522 += 2;
            --v523;
          }

          while (v523);
          return result;
        }

        v525 = a5;
        v526 = result;
        v527 = ((v10 / 2) & 0x3FFFFFF0 | 1u) * a5;
        result = (v10 / 2) & 0x3FFFFFFC;
        v528 = ((v10 / 2) & 0x3FFFFFFC | 1u) * a5;
        v530 = (v10 / 2) < 4 || a5 != 1;
        v531 = &v24[-1];
        v532 = &v24->u8[1];
        v533 = v12 + 4 * v614;
        v534.i64[0] = 0xFF000000FFLL;
        v534.i64[1] = 0xFF000000FFLL;
        for (i = &v24[-1].u8[12]; ; ++i)
        {
          v536 = *v13 * v24->u8[0];
          if (v530)
          {
            v537 = 1;
            v538 = v525;
          }

          else
          {
            if (v614 < 0x10)
            {
              v539 = 0;
LABEL_412:
              v557 = v536;
              v558 = &i[-v539];
              v559 = (v533 + 4 + 4 * v539);
              do
              {
                v560 = *v559++;
                v561 = v560;
                v18.i32[0] = *&v532[v539];
                v560.i32[0] = *v558--;
                v19.i32[0] = v560.i32[0];
                v19 = vandq_s8(vmovl_u16(vrev64_s16(*&vmovl_u8(*v19.i8))), v534);
                v18 = vaddw_u16(v19, *&vmovl_u8(*v18.i8));
                v557 = vmlaq_s32(v557, v18, v561);
                v539 += 4;
              }

              while (result != v539);
              v536 = vaddvq_s32(v557);
              v537 = v614 & 0x3FFFFFFC | 1;
              v538 = v528;
              if (result == v614)
              {
                goto LABEL_403;
              }

              goto LABEL_415;
            }

            v540 = 0uLL;
            v541 = (*v13 * v24->u8[0]);
            v542 = v614 & 0x3FFFFFF0;
            v543 = (v533 + 4);
            v544 = v532;
            v545 = v531;
            v18 = 0uLL;
            v19 = 0uLL;
            do
            {
              v547 = v543[2];
              v546 = v543[3];
              v549 = *v543;
              v548 = v543[1];
              v543 += 4;
              v550 = *v544++;
              v551 = v550;
              v552 = *v545--;
              v553 = vrev64q_s8(v552);
              v554 = vextq_s8(v553, v553, 8uLL);
              v555 = vaddl_high_u8(v554, v551);
              v556 = vaddl_u8(*v554.i8, *v551.i8);
              v19 = vmlaq_s32(v19, vmovl_high_u16(v555), v546);
              v18 = vmlaq_s32(v18, vmovl_u16(*v555.i8), v547);
              v540 = vmlaq_s32(v540, vmovl_high_u16(v556), v548);
              v541 = vmlaq_s32(v541, vmovl_u16(*v556.i8), v549);
              v542 -= 16;
            }

            while (v542);
            v536 = vaddvq_s32(vaddq_s32(vaddq_s32(v541, v18), vaddq_s32(v540, v19)));
            if ((v614 & 0x3FFFFFF0) == v614)
            {
              goto LABEL_403;
            }

            v539 = v614 & 0x3FFFFFF0;
            v537 = v539 | 1;
            v538 = v527;
            if ((v614 & 0xC) != 0)
            {
              goto LABEL_412;
            }
          }

LABEL_415:
          v562 = (v533 + 4 * v537);
          v563 = (v614 + 1) - v537;
          v564 = -v538;
          do
          {
            v565 = *v562++;
            v536 += (v24->u8[v564] + v24->u8[v538]) * v565;
            v538 += v525;
            v564 -= v525;
            --v563;
          }

          while (v563);
LABEL_403:
          *&a3[2 * v526++] = v536;
          v24 = (v24 + 1);
          ++v531;
          ++v532;
          if (v526 == v25)
          {
            return result;
          }
        }
      }

      v362 = -2 * a5;
      v363 = 2 * a5;
      v364 = 1 - 2 * a5;
      v365 = v217;
      v366 = v217 - result;
      if (v366 >= 0x40)
      {
        v367 = v366 >> 1;
        v368 = &a3[2 * v20];
        v369 = &v368[2 * (v366 >> 1) + 2];
        v370 = v366 & 0xFFFFFFFFFFFFFFFELL;
        v371 = v20 + v11;
        v372 = v371 + a2 + v370;
        v373 = v372 + v363 + 2;
        v374 = v371 - v363 + a2 + 1;
        v375 = v371 + v370 + 2;
        v376 = a2 + v375;
        v377 = v372 + v362 + 1;
        v378 = v368 >= a2 + v375 - v363 || v374 >= v369;
        v379 = !v378;
        v380 = v368 >= v376 || v24 >= v369;
        v381 = !v380;
        v382 = v368 >= v377 || v24->u64 + v362 >= v369;
        v383 = !v382;
        v384 = v24->u64 + v363 >= v369 || v368 >= v373;
        if (v384 && !v379 && !v381 && !v383)
        {
          v385 = (v367 + 1) & 0xF;
          if (!v385)
          {
            v385 = 16;
          }

          v386 = 2 * (v367 + 1 - v385);
          v21 = v386 + v20;
          v387 = &v24->u8[v386];
          v388 = ~v367 + v385;
          v16.i32[1] = -251;
          v18.i32[1] = -243;
          v389 = v24;
          do
          {
            v622 = vld2q_s8(v389);
            v389 += 32;
            v390 = vqtbl1q_s8(v622.val[0], xmmword_1003E3720);
            v391 = vqtbl1q_s8(v622.val[0], xmmword_1003E3730);
            v392 = vqtbl1q_s8(v622.val[0], xmmword_1003E3700);
            v393 = vqtbl1q_s8(v622.val[0], xmmword_1003E3710);
            v394 = &v24->i8[v362];
            v395 = vld2q_s8(v394);
            v396 = vqtbl1q_s8(v395, xmmword_1003E3710);
            v397 = vqtbl1q_s8(v395, xmmword_1003E3700);
            v398 = vqtbl1q_s8(v395, xmmword_1003E3730);
            v399 = vsubq_s32(vqtbl1q_s8(v395, xmmword_1003E3720), vaddq_s32(v390, v390));
            v400 = vsubq_s32(v398, vaddq_s32(v391, v391));
            v401 = vsubq_s32(v397, vaddq_s32(v392, v392));
            v402 = vsubq_s32(v396, vaddq_s32(v393, v393));
            v403 = &v24->i8[v363];
            v640 = vld2q_s8(v403);
            v404 = vmovl_u8(*v640.val[0].i8);
            v405 = vmovl_high_u8(v640.val[0]);
            v19 = vaddw_high_u16(v402, v405);
            v406 = &v24->i8[v364];
            v407 = vld2q_s8(v406);
            v408 = vqtbl1q_s8(v622.val[1], xmmword_1003E3710);
            v409 = vqtbl1q_s8(v622.val[1], xmmword_1003E3700);
            v410 = vmovl_high_u8(v640.val[1]);
            v650.val[0] = vaddw_u16(v401, *v405.i8);
            v411 = vmovl_u8(*v640.val[1].i8);
            v640.val[0] = vqtbl1q_s8(v622.val[1], xmmword_1003E3730);
            v622.val[0] = vqtbl1q_s8(v622.val[1], xmmword_1003E3720);
            v640.val[1] = vaddw_high_u16(v400, v404);
            v631.val[0] = vaddw_u16(v399, *v404.i8);
            v631.val[1] = vaddw_u16(vsubq_s32(vqtbl1q_s8(v407, xmmword_1003E3720), vaddq_s32(v622.val[0], v622.val[0])), *v411.i8);
            v412 = v368;
            vst2q_f32(v412, v631);
            v412 += 8;
            v413 = vaddw_high_u16(vsubq_s32(vqtbl1q_s8(v407, xmmword_1003E3730), vaddq_s32(v640.val[0], v640.val[0])), v411);
            vst2q_f32(v412, *(&v640 + 16));
            v650.val[1] = vaddw_u16(vsubq_s32(vqtbl1q_s8(v407, xmmword_1003E3700), vaddq_s32(v409, v409)), *v410.i8);
            v414 = v368 + 16;
            vst2q_f32(v414, v650);
            v415 = v368 + 24;
            v368 += 32;
            v24 = v389;
            v416 = vaddw_high_u16(vsubq_s32(vqtbl1q_s8(v407, xmmword_1003E3710), vaddq_s32(v408, v408)), v410);
            vst2q_f32(v415, *v19.i8);
            v388 += 16;
          }

          while (v388);
          v24 = v387;
        }
      }

      v417 = &a3[2 * v21 + 2];
      do
      {
        v418 = v24->u8[v363 + 1] - 2 * v24->u8[1] + v24->u8[v364];
        *(v417 - 1) = v24->u8[v363] - 2 * v24->u8[0] + v24->u8[v362];
        *v417 = v418;
        v21 += 2;
        v24 = (v24 + 2);
        v417 += 2;
      }

      while (v21 <= v365);
    }

    else
    {
      if (v26 != 3)
      {
        if (v26 == 1 && *v13 == 1)
        {
          v67 = v25 - 2;
          if (result <= v25 - 2)
          {
            v68 = v67 - result;
            if (v68 < 0x1E)
            {
              goto LABEL_50;
            }

            v69 = &a3[2 * result];
            v70 = a2 + 2 * result + v11;
            if (v69 < v70 + (v68 & 0xFFFFFFFFFFFFFFFELL) + 2 && v70 < v69 + 8 * (v68 >> 1) + 8)
            {
              goto LABEL_50;
            }

            v72 = (v68 >> 1) + 1;
            v21 = v20 + 2 * (v72 & 0xFFFFFFFFFFFFFFF0);
            v73 = (a2 + v11 + 2 * v20);
            v16.i32[1] = -251;
            v18.i32[1] = -243;
            v74 = v72 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v76 = *v73;
              v75 = v73[1];
              v73 += 2;
              *(v69 + 96) = vqtbl1q_s8(v75, xmmword_1003E3700);
              *(v69 + 112) = vqtbl1q_s8(v75, xmmword_1003E3710);
              v77 = vqtbl1q_s8(v75, xmmword_1003E3720);
              v19 = vqtbl1q_s8(v75, xmmword_1003E3730);
              *(v69 + 64) = v77;
              *(v69 + 80) = v19;
              *(v69 + 32) = vqtbl1q_s8(v76, xmmword_1003E3700);
              *(v69 + 48) = vqtbl1q_s8(v76, xmmword_1003E3710);
              *v69 = vqtbl1q_s8(v76, xmmword_1003E3720);
              *(v69 + 16) = vqtbl1q_s8(v76, xmmword_1003E3730);
              v69 += 128;
              v74 -= 16;
            }

            while (v74);
            if (v72 != (v72 & 0xFFFFFFFFFFFFFFF0))
            {
LABEL_50:
              v78 = v21 + 1;
              v79 = &a3[2 * v21 + 2];
              v80 = (v21 + v20 + v11 + a2 + 1);
              do
              {
                v81 = *(v80 - 1);
                v82 = *v80;
                v80 += 2;
                v83 = v78 + 2;
                v84 = v78 + 1;
                *(v79 - 1) = v81;
                *v79 = v82;
                v79 += 4;
                v78 += 2;
              }

              while (v84 <= v67);
              v21 = v83 - 1;
            }

            result = v21;
            v21 = v21;
          }

          v24 = (v24 + v21);
          if (result >= v25)
          {
            return result;
          }

          goto LABEL_390;
        }

        goto LABEL_389;
      }

      v161 = *v13;
      v162 = *(v13 + 4);
      if (*v13 == -2)
      {
        if (v162 == 1)
        {
          v425 = v25 - 2;
          if (result <= v25 - 2)
          {
            v426 = 1 - a5;
            v427 = a5 + 1;
            v428 = v425 - result;
            if (v428 >= 0x40)
            {
              v429 = v428 >> 1;
              v430 = &a3[2 * result];
              v431 = v430 + 8 * (v428 >> 1) + 8;
              v432 = (v428 & 0xFFFFFFFFFFFFFFFELL) + v20;
              v433 = a2 + v432 + v11;
              v434 = v432 + v11 - a5 + a2 + 2;
              v435 = v22 + a5 + v11;
              v436 = v432 + a2 + a5 + v11 + 1;
              v437 = v430 >= v433 + 2 || v24 >= v431;
              v438 = !v437;
              v439 = v430 >= v434 || a2 + v20 + v11 - a5 >= v431;
              v440 = !v439;
              v441 = v430 >= v436 || v435 >= v431;
              v442 = !v441;
              v443 = v24->u64 + v427 >= v431 || v430 >= v433 + v427 + 1;
              if (v443 && !v438 && !v440 && !v442)
              {
                v444 = (v429 + 1) & 0xF;
                if (!v444)
                {
                  v444 = 16;
                }

                v445 = 2 * (v429 + 1 - v444);
                v21 = v445 + v20;
                v446 = &v24->u8[v445];
                v447 = ~v429 + v444;
                v16.i32[1] = -247;
                v18.i32[1] = -255;
                v448 = v24;
                do
                {
                  v449 = &v24->i8[-a5];
                  v628 = vld2q_s8(v449);
                  v619 = vld2q_s8(v448);
                  v448 += 32;
                  v450 = vqtbl1q_s8(v619.val[0], xmmword_1003E3720);
                  v451 = vqtbl1q_s8(v619.val[0], xmmword_1003E3730);
                  v452 = vqtbl1q_s8(v619.val[0], xmmword_1003E3700);
                  v453 = vqtbl1q_s8(v619.val[0], xmmword_1003E3710);
                  v454 = vsubq_s32(vqtbl1q_s8(v628.val[0], xmmword_1003E3720), vaddq_s32(v450, v450));
                  v455 = vsubq_s32(vqtbl1q_s8(v628.val[0], xmmword_1003E3730), vaddq_s32(v451, v451));
                  v456 = vsubq_s32(vqtbl1q_s8(v628.val[0], xmmword_1003E3700), vaddq_s32(v452, v452));
                  v457 = vsubq_s32(vqtbl1q_s8(v628.val[0], xmmword_1003E3710), vaddq_s32(v453, v453));
                  v458 = &v24->i8[a5];
                  v459 = vld2q_s8(v458);
                  v460 = vmovl_u8(*&v459);
                  v461 = vmovl_high_u8(v459);
                  v623.val[0] = vaddw_high_u16(v457, v461);
                  v462 = &v24->i8[v427];
                  v463 = vld2q_s8(v462);
                  v464 = vqtbl1q_s8(v628.val[1], xmmword_1003E3710);
                  v465 = vqtbl1q_s8(v619.val[1], xmmword_1003E3700);
                  v466 = vsubq_s32(vqtbl1q_s8(v628.val[1], xmmword_1003E3700), vaddq_s32(v465, v465));
                  v467 = vmovl_high_u8(v463);
                  v641.val[0] = vaddw_u16(v456, *v461.i8);
                  v468 = vmovl_u8(*&v463);
                  v469 = vqtbl1q_s8(v628.val[1], xmmword_1003E3730);
                  v628.val[0] = vqtbl1q_s8(v628.val[1], xmmword_1003E3720);
                  v628.val[1] = vqtbl1q_s8(v619.val[1], xmmword_1003E3720);
                  v628.val[0] = vsubq_s32(v628.val[0], vaddq_s32(v628.val[1], v628.val[1]));
                  v628.val[1] = vaddw_high_u16(v455, v460);
                  v651.val[0] = vaddw_u16(v454, *v460.i8);
                  v651.val[1] = vaddw_u16(v628.val[0], *v468.i8);
                  v628.val[0] = vqtbl1q_s8(v619.val[1], xmmword_1003E3730);
                  v470 = v430;
                  vst2q_f32(v470, v651);
                  v470 += 8;
                  v471 = vaddw_high_u16(vsubq_s32(v469, vaddq_s32(v628.val[0], v628.val[0])), v468);
                  vst2q_f32(v470, *(&v628 + 16));
                  v641.val[1] = vaddw_u16(v466, *v467.i8);
                  v472 = (v430 + 64);
                  vst2q_f32(v472, v641);
                  v619.val[0] = vqtbl1q_s8(v619.val[1], xmmword_1003E3710);
                  v473 = (v430 + 96);
                  v430 += 128;
                  v24 = v448;
                  v19 = vsubq_s32(v464, vaddq_s32(v619.val[0], v619.val[0]));
                  v623.val[1] = vaddw_high_u16(v19, v467);
                  vst2q_f32(v473, v623);
                  v447 += 16;
                }

                while (v447);
                v24 = v446;
              }
            }

            v474 = &a3[2 * v21 + 2];
            do
            {
              v475 = v24->u8[v427] - 2 * v24->u8[1] + v24->u8[v426];
              v21 += 2;
              *(v474 - 1) = v24->u8[a5] - 2 * v24->u8[0] + v24->u8[v426 - 1];
              *v474 = v475;
              v24 = (v24 + 2);
              v474 += 2;
              result = v21;
            }

            while (v21 <= v425);
          }

          goto LABEL_389;
        }
      }

      else if (LODWORD(v161) == 2 && v162 == 1)
      {
        v164 = v25 - 2;
        if (result <= v25 - 2)
        {
          v165 = 1 - a5;
          v166 = a5 + 1;
          v167 = v164 - result;
          if (v167 >= 0x40)
          {
            v168 = v167 >> 1;
            v169 = &a3[2 * result];
            v170 = v169 + 8 * (v167 >> 1) + 8;
            v171 = (v167 & 0xFFFFFFFFFFFFFFFELL) + v20;
            v172 = a2 + v171 + v11;
            v173 = v171 + v11 - a5 + a2 + 2;
            v174 = v22 + a5 + v11;
            v175 = v171 + a2 + a5 + v11 + 1;
            v176 = v169 >= v172 + 2 || v24 >= v170;
            v177 = !v176;
            v178 = v169 >= v173 || a2 + v20 + v11 - a5 >= v170;
            v179 = !v178;
            v180 = v169 >= v175 || v174 >= v170;
            v181 = !v180;
            v182 = v24->u64 + v166 >= v170 || v169 >= v172 + v166 + 1;
            if (v182 && !v177 && !v179 && !v181)
            {
              v183 = (v168 + 1) & 0xF;
              if (!v183)
              {
                v183 = 16;
              }

              v184 = 2 * (v168 + 1 - v183);
              v21 = v184 + v20;
              v185 = &v24->u8[v184];
              v186 = ~v168 + v183;
              v16.i32[1] = -251;
              v18.i32[1] = -243;
              v187 = v24;
              do
              {
                v188 = &v24->i8[-a5];
                v621 = vld2q_s8(v188);
                v189 = vmovl_high_u8(v621.val[0]);
                v618 = vld2q_s8(v187);
                v187 += 32;
                v190 = vmovl_u8(*v621.val[0].i8);
                v191 = vqtbl1q_s8(v618.val[0], xmmword_1003E3720);
                v192 = vqtbl1q_s8(v618.val[0], xmmword_1003E3730);
                v193 = vqtbl1q_s8(v618.val[0], xmmword_1003E3700);
                v194 = vqtbl1q_s8(v618.val[0], xmmword_1003E3710);
                v195 = vaddw_u16(vaddq_s32(v191, v191), *v190.i8);
                v196 = vaddw_high_u16(vaddq_s32(v192, v192), v190);
                v197 = vaddw_u16(vaddq_s32(v193, v193), *v189.i8);
                v198 = &v24->i8[a5];
                v199 = vld2q_s8(v198);
                v200 = vmovl_u8(*&v199);
                v201 = &v24->i8[v166];
                v202 = vld2q_s8(v201);
                v203 = vmovl_high_u8(v199);
                v647.val[0] = vaddw_high_u16(vaddw_high_u16(vaddq_s32(v194, v194), v189), v203);
                v204 = vmovl_high_u8(v621.val[1]);
                v205 = vmovl_high_u8(v202);
                v636.val[0] = vaddw_u16(v197, *v203.i8);
                v206 = vqtbl1q_s8(v618.val[1], xmmword_1003E3700);
                v621.val[0] = vmovl_u8(*v621.val[1].i8);
                v649.val[0] = vaddw_high_u16(v196, v200);
                v621.val[1] = vmovl_u8(*&v202);
                v630.val[0] = vaddw_u16(v195, *v200.i8);
                v207 = vqtbl1q_s8(v618.val[1], xmmword_1003E3720);
                v630.val[1] = vaddw_u16(vaddw_u16(vaddq_s32(v207, v207), *v621.val[0].i8), *v621.val[1].i8);
                v208 = vqtbl1q_s8(v618.val[1], xmmword_1003E3730);
                v209 = v169;
                vst2q_f32(v209, v630);
                v209 += 8;
                v649.val[1] = vaddw_high_u16(vaddw_high_u16(vaddq_s32(v208, v208), v621.val[0]), v621.val[1]);
                vst2q_f32(v209, v649);
                v636.val[1] = vaddw_u16(vaddw_u16(vaddq_s32(v206, v206), *v204.i8), *v205.i8);
                v210 = (v169 + 64);
                vst2q_f32(v210, v636);
                v618.val[0] = vqtbl1q_s8(v618.val[1], xmmword_1003E3710);
                v211 = (v169 + 96);
                v169 += 128;
                v24 = v187;
                v19 = vaddw_high_u16(vaddq_s32(v618.val[0], v618.val[0]), v204);
                v647.val[1] = vaddw_high_u16(v19, v205);
                vst2q_f32(v211, v647);
                v186 += 16;
              }

              while (v186);
              v24 = v185;
            }
          }

          v212 = &a3[2 * v21 + 2];
          result = v21;
          do
          {
            v213 = v24->u8[v165] + 2 * v24->u8[1] + v24->u8[v166];
            *(v212 - 1) = v24->u8[v165 - 1] + 2 * v24->u8[0] + v24->u8[a5];
            *v212 = v213;
            result += 2;
            v24 = (v24 + 2);
            v212 += 2;
          }

          while (result <= v164);
        }

        goto LABEL_389;
      }

      v476 = v25 - 2;
      if (result > v25 - 2)
      {
        goto LABEL_389;
      }

      v477 = a5 + 1;
      v478 = v476;
      v479 = v476 - v20;
      if (v479 >= 0x20)
      {
        v480 = v479 >> 1;
        v481 = &a3[2 * v20];
        v482 = &v481[2 * (v479 >> 1) + 2];
        v483 = v479 & 0xFFFFFFFFFFFFFFFELL;
        v484 = v20 + v11 + a2 + v483;
        v485 = v484 + v477 + 1;
        v486 = a2 + v20 + v11 - a5;
        v487 = v20 + v11 + v483 + 2;
        v488 = a2 + v487 - a5;
        v489 = a2 + v487;
        v490 = v22 + a5 + v11;
        v491 = v484 + a5 + 1;
        v492 = v481 >= v488 || v486 >= v482;
        v493 = !v492;
        v494 = v481 >= v489 || v24 >= v482;
        v495 = !v494;
        v496 = v481 >= v491 || v490 >= v482;
        v497 = !v496;
        v498 = v24->u64 + v477 >= v482 || v481 >= v485;
        if (v498 && !v493 && !v495 && !v497)
        {
          v499 = (v480 + 1) & 0xF;
          if (!v499)
          {
            v499 = 16;
          }

          v500 = 2 * (v480 + 1 - v499);
          v21 = v500 + v20;
          v501 = vdupq_n_s32(LODWORD(v161));
          v16 = vdupq_n_s32(v162);
          v502 = &v24->u8[v500];
          v503 = ~v480 + v499;
          v18.i32[1] = -247;
          v19.i32[1] = -251;
          v504 = v24;
          do
          {
            v642 = vld2q_s8(v504);
            v504 += 32;
            v505 = &v24->i8[-a5];
            v646 = vld2q_s8(v505);
            v506 = &v24->i8[a5];
            v507 = vld2q_s8(v506);
            v508 = vaddl_high_u8(v507, v646.val[0]);
            v509 = vaddl_u8(*&v507, *v646.val[0].i8);
            v510 = &v24->i8[v477];
            v511 = vld2q_s8(v510);
            v644.val[0] = vmlaq_s32(vmulq_s32(v501, vqtbl1q_s8(v642.val[0], xmmword_1003E3710)), vmovl_high_u16(v508), v16);
            v512 = vaddl_high_u8(v511, v646.val[1]);
            v629.val[0] = vmlaq_s32(vmulq_s32(v501, vqtbl1q_s8(v642.val[0], xmmword_1003E3700)), vmovl_u16(*v508.i8), v16);
            v624.val[0] = vmlaq_s32(vmulq_s32(v501, vqtbl1q_s8(v642.val[0], xmmword_1003E3730)), vmovl_high_u16(v509), v16);
            v646.val[0] = vaddl_u8(*&v511, *v646.val[1].i8);
            v635.val[0] = vmlaq_s32(vmulq_s32(v501, vqtbl1q_s8(v642.val[0], xmmword_1003E3720)), vmovl_u16(*v509.i8), v16);
            v635.val[1] = vmlaq_s32(vmulq_s32(v501, vqtbl1q_s8(v642.val[1], xmmword_1003E3720)), vmovl_u16(*v646.val[0].i8), v16);
            v513 = v481;
            vst2q_f32(v513, v635);
            v513 += 8;
            v624.val[1] = vmlaq_s32(vmulq_s32(v501, vqtbl1q_s8(v642.val[1], xmmword_1003E3730)), vmovl_high_u16(v646.val[0]), v16);
            vst2q_f32(v513, v624);
            v629.val[1] = vmlaq_s32(vmulq_s32(v501, vqtbl1q_s8(v642.val[1], xmmword_1003E3700)), vmovl_u16(*v512.i8), v16);
            v514 = v481 + 16;
            vst2q_f32(v514, v629);
            v644.val[1] = vmlaq_s32(vmulq_s32(v501, vqtbl1q_s8(v642.val[1], xmmword_1003E3710)), vmovl_high_u16(v512), v16);
            v515 = v481 + 24;
            vst2q_f32(v515, v644);
            v481 += 32;
            v24 = v504;
            v503 += 16;
          }

          while (v503);
          v24 = v502;
        }
      }

      v516 = 1 - a5;
      v517 = &a3[2 * v21 + 2];
      do
      {
        v518 = (v24->u8[v477] + v24->u8[v516]) * v162 + LODWORD(v161) * v24->u8[1];
        *(v517 - 1) = (v24->u8[a5] + v24->u8[v516 - 1]) * v162 + LODWORD(v161) * v24->u8[0];
        *v517 = v518;
        v21 += 2;
        v24 = (v24 + 2);
        v517 += 2;
      }

      while (v21 <= v478);
    }

    result = v21;
    goto LABEL_389;
  }

  if (v26 == 5)
  {
    v85 = v25 - 2;
    if (result <= v25 - 2)
    {
      v86 = a5;
      v87 = -a5;
      v88 = 2 * a5;
      v89 = *(v13 + 4);
      v90 = *(v13 + 8);
      v91 = -2 * a5;
      v92 = a5 + 1;
      v93 = v85 - result;
      v94 = 1 - a5;
      v95 = 1 - 2 * a5;
      if (v93 >= 0x40)
      {
        v609 = a5 * a4;
        v612 = v10;
        v96 = &a3[2 * result];
        v605 = v93 >> 1;
        v97 = &v96[2 * (v93 >> 1) + 2];
        v606 = result + v11 - v88 + a2 + 1;
        v98 = v93 & 0xFFFFFFFFFFFFFFFELL;
        v99 = result + v11 + v98 + 2;
        v100 = a2 + v99 - v88;
        v101 = &v24->u8[v88];
        v102 = result + v23 + a2 + v98;
        v103 = v102 + v88 + 2;
        v104 = a2 + result + v23 - a5;
        v105 = a2 + v99 - a5;
        v106 = -2 * a5;
        v107 = &v24->u8[v92];
        v108 = v102 + v92 + 1;
        v109 = &v24->u8[v106];
        v110 = v102 + v106 + 1;
        v111 = v22 + a5 + v23;
        v112 = v102 + a5 + 1;
        v114 = v96 < v103 && v101 < v97;
        v116 = v96 < v105 && v104 < v97;
        v118 = v96 < v108 && v107 < v97;
        v120 = v96 < v110 && v109 < v97;
        v122 = v96 < v112 && v111 < v97;
        if (v606 >= v97 || v96 >= v100)
        {
          v10 = v612;
          v88 = 2 * a5;
          v86 = a5;
          v87 = -a5;
          v91 = -2 * a5;
          v92 = a5 + 1;
          v95 = 1 - 2 * a5;
          if (v114)
          {
            v94 = 1 - a5;
            v25 = v609;
          }

          else
          {
            v94 = 1 - a5;
            v25 = v609;
            if (!v116 && !v118 && !v120 && !v122)
            {
              v124 = 16;
              if (((v605 + 1) & 0xF) != 0)
              {
                v124 = (v605 + 1) & 0xF;
              }

              v125 = 2 * (v605 + 1 - v124);
              v21 = v125 + v20;
              v126 = vdupq_n_s32(v89);
              v24 = (v24 + v125);
              v16 = vdupq_n_s32(v90);
              v127 = v20 - v88 + a2 + 1;
              v128 = a2 + v20 + v92;
              v129 = a2 + v20 + v91;
              v130 = a2 + v20 + v88;
              v131 = a2 + v20 + -a5;
              v132 = a2 + v20 + a5;
              v133 = ~v605 + v124;
              do
              {
                v134 = (v132 + v23);
                v135 = vld2q_s8(v134);
                v136 = (v131 + v23);
                v633 = vld2q_s8(v136);
                v137 = vsubl_high_u8(v135, v633.val[0]);
                v138 = vsubl_u8(*&v135, *v633.val[0].i8);
                v139 = vmulq_s32(vmovl_s16(*v138.i8), v126);
                v140 = vmulq_s32(vmovl_high_s16(v138), v126);
                v141 = (v130 + v23);
                v638 = vld2q_s8(v141);
                v142 = (v129 + v23);
                v143 = vld2q_s8(v142);
                v144 = vsubl_high_u8(v638.val[0], v143);
                v145 = vsubl_u8(*v638.val[0].i8, *&v143);
                v17 = vmlaq_s32(vmulq_s32(vmovl_high_s16(v137), v126), vmovl_high_s16(v144), v16);
                v146 = (v128 + v23);
                v147 = vld2q_s8(v146);
                v148 = vsubl_high_u8(v147, v633.val[1]);
                v149 = (v127 + v23);
                v150 = vld2q_s8(v149);
                v151 = vsubl_high_u8(v638.val[1], v150);
                v18 = vmlaq_s32(vmulq_s32(vmovl_high_s16(v148), v126), vmovl_high_s16(v151), v16);
                v617.val[0] = vmlaq_s32(vmulq_s32(vmovl_s16(*v137.i8), v126), vmovl_s16(*v144.i8), v16);
                v617.val[1] = vmlaq_s32(vmulq_s32(vmovl_s16(*v148.i8), v126), vmovl_s16(*v151.i8), v16);
                v620.val[0] = vmlaq_s32(v140, vmovl_high_s16(v145), v16);
                v633.val[0] = vsubl_u8(*&v147, *v633.val[1].i8);
                v633.val[1] = vsubl_u8(*v638.val[1].i8, *&v150);
                v625.val[0] = vmlaq_s32(v139, vmovl_s16(*v145.i8), v16);
                v625.val[1] = vmlaq_s32(vmulq_s32(vmovl_s16(*v633.val[0].i8), v126), vmovl_s16(*v633.val[1].i8), v16);
                v152 = v96;
                vst2q_f32(v152, v625);
                v152 += 8;
                v620.val[1] = vmlaq_s32(vmulq_s32(vmovl_high_s16(v633.val[0]), v126), vmovl_high_s16(v633.val[1]), v16);
                vst2q_f32(v152, v620);
                v153 = v96 + 16;
                vst2q_f32(v153, v617);
                v154 = v96 + 24;
                vst2q_f32(v154, *v17.i8);
                v96 += 32;
                v127 += 32;
                v128 += 32;
                v129 += 32;
                v130 += 32;
                v131 += 32;
                v132 += 32;
                v133 += 16;
              }

              while (v133);
              v86 = a5;
            }
          }
        }

        else
        {
          v10 = v612;
          v86 = a5;
          v88 = 2 * a5;
          v91 = -2 * a5;
          v25 = v609;
          v87 = -a5;
          v92 = a5 + 1;
          v95 = 1 - 2 * a5;
          v94 = 1 - a5;
        }
      }

      v155 = 0;
      v156 = &a3[2 * v21 + 2];
      v157 = &v24->u8[v91];
      v158 = &v24->u8[v92];
      v159 = &v24->u8[v94];
      do
      {
        v160 = (v158[v155] - v159[v155]) * v89 + (v24->u8[v88 + 1 + v155] - v24->u8[v95 + v155]) * v90;
        *(v156 - 1) = (v24->u8[v86 + v155] - v24->u8[v87 + v155]) * v89 + (v24->u8[v88 + v155] - v157[v155]) * v90;
        *v156 = v160;
        v155 += 2;
        v156 += 2;
      }

      while (v21 + v155 <= v85);
      result = (v21 + v155);
      v24 = (v24 + v155);
    }
  }

  else
  {
    if (v26 != 3)
    {
      goto LABEL_237;
    }

    v27 = *(v13 + 4);
    v28 = v25 - 2;
    if (*v13)
    {
      v29 = 0;
    }

    else
    {
      v29 = v27 == 1;
    }

    if (v29)
    {
      if (result > v28)
      {
        goto LABEL_237;
      }

      v280 = a5 + 1;
      v281 = v28;
      v282 = v28 - result;
      if (v282 >= 0x40)
      {
        v283 = v282 >> 1;
        v284 = &a3[2 * result];
        v285 = v284 + 8 * (v282 >> 1) + 8;
        v286 = v282 & 0xFFFFFFFFFFFFFFFELL;
        v287 = v20 + v11 + v286 - a5 + a2 + 2;
        v288 = v20 + v11 + a2 + v286;
        v289 = v22 + a5 + v11;
        v290 = v288 + a5 + 1;
        v291 = v284 >= v288 + v280 + 1 || v24->u64 + v280 >= v285;
        v292 = !v291;
        v293 = v284 >= v290 || v289 >= v285;
        v294 = !v293;
        v295 = a2 + v20 + v11 - a5 >= v285 || v284 >= v287;
        if (v295 && !v292 && !v294)
        {
          v296 = 16;
          if (((v283 + 1) & 0xF) != 0)
          {
            v296 = (v283 + 1) & 0xF;
          }

          v297 = 2 * (v283 + 1 - v296);
          v21 = v297 + v20;
          v24 = (v24 + v297);
          v298 = v20 + v11;
          v299 = (a2 + v280 + v298);
          v300 = (a2 + v298 - a5);
          v301 = (a2 + a5 + v298);
          v302 = ~v283 + v296;
          do
          {
            v303 = vld2q_s8(v301);
            v301 += 32;
            v615 = vld2q_s8(v300);
            v300 += 32;
            v304 = vsubl_high_u8(v303, v615.val[0]);
            v305 = vld2q_s8(v299);
            v299 += 32;
            v306 = vsubl_high_u8(v305, v615.val[1]);
            v627.val[0] = vmovl_s16(*v304.i8);
            v307 = vsubl_u8(*&v303, *v615.val[0].f32);
            v308 = vsubl_u8(*&v305, *v615.val[1].f32);
            v615.val[0] = vmovl_s16(*v307.i8);
            v615.val[1] = vmovl_s16(*v308.i8);
            v309 = v284;
            vst2q_f32(v309, v615);
            v309 += 8;
            v17 = vmovl_high_s16(v307);
            v18 = vmovl_high_s16(v308);
            vst2q_f32(v309, *v17.i8);
            v627.val[1] = vmovl_s16(*v306.i8);
            v310 = (v284 + 64);
            vst2q_f32(v310, v627);
            v311 = (v284 + 96);
            v284 += 128;
            v312 = vmovl_high_s16(v304);
            v16 = vmovl_high_s16(v306);
            vst2q_f32(v311, *(&v16 - 1));
            v302 += 16;
          }

          while (v302);
        }
      }

      v313 = 1 - a5;
      v314 = &a3[2 * v21 + 2];
      do
      {
        v315 = v24->u8[v280] - v24->u8[v313];
        *(v314 - 1) = v24->u8[a5] - v24->u8[v313 - 1];
        *v314 = v315;
        v21 += 2;
        v24 = (v24 + 2);
        v314 += 2;
      }

      while (v21 <= v281);
    }

    else
    {
      if (result > v28)
      {
        goto LABEL_237;
      }

      v30 = a5 + 1;
      v31 = v28;
      v32 = v28 - result;
      if (v32 >= 0x40)
      {
        v33 = v32 >> 1;
        v34 = &a3[2 * result];
        v35 = v34 + 8 * (v32 >> 1) + 8;
        v36 = v32 & 0xFFFFFFFFFFFFFFFELL;
        v37 = result + v11 + v36 - a5 + a2 + 2;
        v38 = result + v11 + a2 + v36;
        v39 = v22 + a5 + v11;
        v40 = v38 + a5 + 1;
        v41 = v34 >= v38 + v30 + 1 || v24->u64 + v30 >= v35;
        v42 = !v41;
        v43 = v34 >= v40 || v39 >= v35;
        v44 = !v43;
        v45 = a2 + result + v11 - a5 >= v35 || v34 >= v37;
        if (v45 && !v42 && !v44)
        {
          v46 = 16;
          if (((v33 + 1) & 0xF) != 0)
          {
            v46 = (v33 + 1) & 0xF;
          }

          v47 = 2 * (v33 + 1 - v46);
          v21 = v47 + result;
          v24 = (v24 + v47);
          v48 = vdupq_n_s32(v27);
          v49 = result + v11;
          v50 = (a2 + v30 + v49);
          v51 = (a2 + v49 - a5);
          v52 = (a2 + a5 + v49);
          v53 = ~v33 + v46;
          do
          {
            v54 = vld2q_s8(v52);
            v52 += 32;
            v616 = vld2q_s8(v51);
            v51 += 32;
            v55 = vsubl_u8(*&v54, *v616.val[0].i8);
            v56 = vsubl_high_u8(v54, v616.val[0]);
            v57 = vmovl_s16(*v56.i8);
            v58 = vld2q_s8(v50);
            v50 += 32;
            v632.val[0] = vmulq_s32(vmovl_high_s16(v56), v48);
            v59 = vsubl_high_u8(v58, v616.val[1]);
            v632.val[1] = vmulq_s32(vmovl_high_s16(v59), v48);
            v637.val[0] = vmulq_s32(v57, v48);
            v637.val[1] = vmulq_s32(vmovl_s16(*v59.i8), v48);
            v16 = vmulq_s32(vmovl_high_s16(v55), v48);
            v616.val[0] = vsubl_u8(*&v58, *v616.val[1].i8);
            v616.val[1] = vmulq_s32(vmovl_s16(*v55.i8), v48);
            v60 = vmulq_s32(vmovl_s16(*v616.val[0].i8), v48);
            v61 = v34;
            vst2q_f32(v61, *(&v616 + 16));
            v61 += 8;
            v18 = vmovl_high_s16(v616.val[0]);
            v17 = vmulq_s32(v18, v48);
            vst2q_f32(v61, *v16.i8);
            v62 = (v34 + 64);
            vst2q_f32(v62, v637);
            v63 = (v34 + 96);
            v34 += 128;
            vst2q_f32(v63, v632);
            v53 += 16;
          }

          while (v53);
        }
      }

      v64 = 1 - a5;
      v65 = &a3[2 * v21 + 2];
      do
      {
        v66 = (v24->u8[v30] - v24->u8[v64]) * v27;
        *(v65 - 1) = (v24->u8[a5] - v24->u8[v64 - 1]) * v27;
        *v65 = v66;
        v21 += 2;
        v24 = (v24 + 2);
        v65 += 2;
      }

      while (v21 <= v31);
    }

    result = v21;
  }

LABEL_237:
  if (result >= v25)
  {
    return result;
  }

  if (v10 >= 2)
  {
    v322 = a5;
    v323 = result;
    v324 = (v614 & 0x3FFFFFF0 | 1) * a5;
    result = v614 & 0x3FFFFFFC;
    v325 = (v614 & 0x3FFFFFFC | 1) * a5;
    v327 = v614 < 4 || a5 != 1;
    v328 = &v24[-1];
    v329 = &v24->u8[1];
    v330 = v12 + 4 * v614;
    for (j = &v24[-1].u8[12]; ; ++j)
    {
      v332 = *v13 * v24->u8[0];
      if (v327)
      {
        v333 = 1;
        v334 = v322;
      }

      else
      {
        if (v614 < 0x10)
        {
          v335 = 0;
LABEL_260:
          v353 = v332;
          v354 = &j[-v335];
          v355 = (v330 + 4 + 4 * v335);
          do
          {
            v356 = *v355++;
            v357 = v356;
            v17.i32[0] = *&v329[v335];
            v356.i32[0] = *v354--;
            v18.i32[0] = v356.i32[0];
            *v18.i8 = vrev64_s16(*&vmovl_u8(*v18.i8));
            v17 = vsubl_u16(*&vmovl_u8(*v17.i8), *v18.i8);
            v353 = vmlaq_s32(v353, v17, v357);
            v335 += 4;
          }

          while (result != v335);
          v332 = vaddvq_s32(v353);
          v333 = v614 & 0x3FFFFFFC | 1;
          v334 = v325;
          if (result == v614)
          {
            goto LABEL_251;
          }

          goto LABEL_263;
        }

        v336 = 0uLL;
        v337 = (*v13 * v24->u8[0]);
        v338 = v614 & 0x3FFFFFF0;
        v339 = (v330 + 4);
        v340 = v329;
        v341 = v328;
        v17 = 0uLL;
        v18 = 0uLL;
        do
        {
          v343 = v339[2];
          v342 = v339[3];
          v345 = *v339;
          v344 = v339[1];
          v339 += 4;
          v346 = *v340++;
          v347 = v346;
          v348 = *v341--;
          v349 = vrev64q_s8(v348);
          v350 = vextq_s8(v349, v349, 8uLL);
          v351 = vsubl_high_u8(v347, v350);
          v352 = vsubl_u8(*v347.i8, *v350.i8);
          v18 = vmlaq_s32(v18, vmovl_high_s16(v351), v342);
          v17 = vmlaq_s32(v17, vmovl_s16(*v351.i8), v343);
          v336 = vmlaq_s32(v336, vmovl_high_s16(v352), v344);
          v337 = vmlaq_s32(v337, vmovl_s16(*v352.i8), v345);
          v338 -= 16;
        }

        while (v338);
        v332 = vaddvq_s32(vaddq_s32(vaddq_s32(v337, v17), vaddq_s32(v336, v18)));
        if ((v614 & 0x3FFFFFF0) == v614)
        {
          goto LABEL_251;
        }

        v335 = v614 & 0x3FFFFFF0;
        v333 = v335 | 1;
        v334 = v324;
        if ((v614 & 0xC) != 0)
        {
          goto LABEL_260;
        }
      }

LABEL_263:
      v358 = (v330 + 4 * v333);
      v359 = (v614 + 1) - v333;
      v360 = -v334;
      do
      {
        v361 = *v358++;
        v332 += (v24->u8[v334] - v24->u8[v360]) * v361;
        v334 += v322;
        v360 -= v322;
        --v359;
      }

      while (v359);
LABEL_251:
      *&a3[2 * v323++] = v332;
      v24 = (v24 + 1);
      ++v328;
      ++v329;
      if (v323 == v25)
      {
        return result;
      }
    }
  }

  v316 = v25 - result;
  if (v316 < 4 || ((v419 = &a3[2 * result], v420 = &a3[2 * v25], v419 < v24->u64 + v316) ? (v421 = v24 >= v420) : (v421 = 1), v421 ? (v422 = 0) : (v422 = 1), v13 < v420 ? (v423 = v419 >= v12 + 4 * v614 + 4) : (v423 = 1), !v423 || (v422 & 1) != 0))
  {
    v317 = result;
    v318 = v24;
    goto LABEL_241;
  }

  if (v316 < 0x20)
  {
    v424 = 0;
    goto LABEL_436;
  }

  v572 = vld1q_dup_f32(v13);
  v424 = v316 & 0xFFFFFFFFFFFFFFE0;
  v573 = (v419 + 64);
  v574 = v24 + 1;
  v16.i32[1] = -247;
  v575 = v316 & 0xFFFFFFFFFFFFFFE0;
  do
  {
    v576 = v574[-1];
    v577 = vqtbl1q_s8(*v574, xmmword_1003E3700);
    v578 = vmulq_s32(v572, vqtbl1q_s8(*v574, xmmword_1003E3710));
    v579 = vmulq_s32(v572, vqtbl1q_s8(*v574, xmmword_1003E3720));
    v580 = vmulq_s32(v572, vqtbl1q_s8(*v574, xmmword_1003E3730));
    v573[-4] = vmulq_s32(v572, vqtbl1q_s8(v576, xmmword_1003E3720));
    v573[-3] = vmulq_s32(v572, vqtbl1q_s8(v576, xmmword_1003E3730));
    v573[-2] = vmulq_s32(v572, vqtbl1q_s8(v576, xmmword_1003E3700));
    v573[-1] = vmulq_s32(v572, vqtbl1q_s8(v576, xmmword_1003E3710));
    *v573 = v579;
    v573[1] = v580;
    v573[2] = vmulq_s32(v572, v577);
    v573[3] = v578;
    v573 += 8;
    v574 += 2;
    v575 -= 32;
  }

  while (v575);
  if (v316 != v424)
  {
    if ((v316 & 0x1C) == 0)
    {
      v318 = &v24->u8[v424];
      v317 = v424 + result;
      goto LABEL_241;
    }

LABEL_436:
    v317 = (v316 & 0xFFFFFFFFFFFFFFFCLL) + result;
    v581 = vld1q_dup_f32(v13);
    v318 = &v24->u8[v316 & 0xFFFFFFFFFFFFFFFCLL];
    v582 = &a3[2 * v424 + 2 * result];
    v583 = &v24->u8[v424];
    v584 = v424 - (v316 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v585 = *v583;
      v583 += 4;
      v16.i32[0] = v585;
      v16 = vmulq_s32(v581, vmovl_u16(*&vmovl_u8(*v16.i8)));
      *v582++ = v16;
      v584 += 4;
    }

    while (v584);
    if (v316 == (v316 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return result;
    }

LABEL_241:
    v319 = &a3[2 * v317];
    v320 = v25 - v317;
    do
    {
      v321 = *v318++;
      *v319 = *v13 * v321;
      v319 += 2;
      --v320;
    }

    while (v320);
  }

  return result;
}

void sub_10030D030(uint64_t a1)
{
  sub_10030B108(a1);

  operator delete();
}

unint64_t sub_10030D068(uint64_t a1, uint64_t a2, __int16 *a3, int a4, int a5)
{
  v9 = *(a1 + 8);
  v10 = *(a1 + 32);
  result = sub_10030D484(a1 + 112, a2, a3, a4, a5);
  v14 = a5 * a4;
  v15 = v14 - 4;
  LODWORD(v16) = result;
  if (result <= v14 - 4)
  {
    v17 = result;
    if (v9 <= 1)
    {
      v22 = v15 - result;
      if (v22 <= 0x3B)
      {
        goto LABEL_8;
      }

      v16 = v22 >> 2;
      v35 = &a3[2 * result];
      v36 = &v35[(v22 >> 2) + 1];
      v37 = v35 >= a2 + result + (v22 & 0xFFFFFFFFFFFFFFFCLL) + 4 || a2 + result >= v36;
      v38 = !v37;
      if (v10 < v36 && v35 < (v10 + 1))
      {
        goto LABEL_8;
      }

      if (v38)
      {
        goto LABEL_8;
      }

      v40 = v16 + 1;
      v41 = (v16 + 1) & 0x7FFFFFFFFFFFFFF0;
      LODWORD(v16) = result + 4 * v41;
      v42 = (a2 + result);
      v12.i32[1] = -247;
      v13.i32[1] = -243;
      v43 = v41;
      do
      {
        v44 = vld1q_dup_f32(v10);
        v45 = v42[2];
        v46 = v42[3];
        v47 = *v42;
        v48 = v42[1];
        v42 += 4;
        v35[14] = vmulq_s32(v44, vqtbl1q_s8(v46, xmmword_1003E3700));
        v35[15] = vmulq_s32(v44, vqtbl1q_s8(v46, xmmword_1003E3710));
        v35[12] = vmulq_s32(v44, vqtbl1q_s8(v46, xmmword_1003E3720));
        v35[13] = vmulq_s32(v44, vqtbl1q_s8(v46, xmmword_1003E3730));
        v35[10] = vmulq_s32(v44, vqtbl1q_s8(v45, xmmword_1003E3700));
        v35[11] = vmulq_s32(v44, vqtbl1q_s8(v45, xmmword_1003E3710));
        v35[8] = vmulq_s32(v44, vqtbl1q_s8(v45, xmmword_1003E3720));
        v35[9] = vmulq_s32(v44, vqtbl1q_s8(v45, xmmword_1003E3730));
        v35[6] = vmulq_s32(v44, vqtbl1q_s8(v48, xmmword_1003E3700));
        v35[7] = vmulq_s32(v44, vqtbl1q_s8(v48, xmmword_1003E3710));
        v35[4] = vmulq_s32(v44, vqtbl1q_s8(v48, xmmword_1003E3720));
        v35[5] = vmulq_s32(v44, vqtbl1q_s8(v48, xmmword_1003E3730));
        v35[2] = vmulq_s32(v44, vqtbl1q_s8(v47, xmmword_1003E3700));
        v35[3] = vmulq_s32(v44, vqtbl1q_s8(v47, xmmword_1003E3710));
        *v35 = vmulq_s32(v44, vqtbl1q_s8(v47, xmmword_1003E3720));
        v35[1] = vmulq_s32(v44, vqtbl1q_s8(v47, xmmword_1003E3730));
        v35 += 16;
        v43 -= 16;
      }

      while (v43);
      v17 = result + 4 * v41;
      if (v40 != v41)
      {
LABEL_8:
        v23 = &a3[2 * v17];
        v16 = v17;
        do
        {
          v12.i32[0] = *(a2 + v16);
          v13 = vld1q_dup_f32(v10);
          v12 = vmulq_s32(v13, vmovl_u16(*&vmovl_u8(*v12.i8)));
          *v23++ = v12;
          v16 += 4;
        }

        while (v16 <= v15);
      }
    }

    else
    {
      do
      {
        v12.i32[0] = *(a2 + v17);
        v13 = vld1q_dup_f32(v10);
        v12 = vmulq_s32(v13, vmovl_u16(*&vmovl_u8(*v12.i8)));
        v18 = a2 + a5;
        v19 = v9 - 1;
        v20 = v10 + 1;
        do
        {
          v13.i32[0] = *(v18 + v17);
          v13 = vmovl_u16(*&vmovl_u8(*v13.i8));
          v21 = vld1q_dup_f32(v20++);
          v12 = vmlaq_s32(v12, v21, v13);
          v18 += a5;
          --v19;
        }

        while (v19);
        *&a3[2 * v17] = v12;
        v17 += 4;
      }

      while (v17 <= v15);
      LODWORD(v16) = v17;
    }
  }

  if (v16 < v14)
  {
    v24 = v16;
    if (v9 > 1)
    {
      do
      {
        v25 = *v10 * *(a2 + v24);
        v26 = a2 + a5;
        v27 = v9 - 1;
        v28 = (v10 + 1);
        do
        {
          v29 = *v28++;
          result = v29;
          v25 += v29 * *(v26 + v24);
          v26 += a5;
          --v27;
        }

        while (v27);
        *&a3[2 * v24++] = v25;
      }

      while (v24 != v14);
      return result;
    }

    v30 = v14 - v16;
    if (v30 >= 4)
    {
      v49 = &a3[2 * v16];
      v50 = &a3[2 * v14];
      v51 = a2 + v16;
      v52 = v49 >= a2 + v14 || v51 >= v50;
      v53 = !v52;
      v54 = v10 >= v50 || v49 >= (v10 + 1);
      if (v54 && !v53)
      {
        if (v30 >= 0x20)
        {
          v55 = v30 & 0xFFFFFFFFFFFFFFE0;
          v56 = vld1q_dup_f32(v10);
          v57 = (v24 + a2 + 16);
          v58 = (v49 + 64);
          v13.i32[1] = -247;
          v59 = v30 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v60 = v57[-1];
            v61 = vqtbl1q_s8(*v57, xmmword_1003E3700);
            v62 = vmulq_s32(v56, vqtbl1q_s8(*v57, xmmword_1003E3710));
            v63 = vmulq_s32(v56, vqtbl1q_s8(*v57, xmmword_1003E3720));
            v64 = vmulq_s32(v56, vqtbl1q_s8(*v57, xmmword_1003E3730));
            v58[-4] = vmulq_s32(v56, vqtbl1q_s8(v60, xmmword_1003E3720));
            v58[-3] = vmulq_s32(v56, vqtbl1q_s8(v60, xmmword_1003E3730));
            v58[-2] = vmulq_s32(v56, vqtbl1q_s8(v60, xmmword_1003E3700));
            v58[-1] = vmulq_s32(v56, vqtbl1q_s8(v60, xmmword_1003E3710));
            *v58 = v63;
            v58[1] = v64;
            v58[2] = vmulq_s32(v56, v61);
            v58[3] = v62;
            v57 += 2;
            v58 += 8;
            v59 -= 32;
          }

          while (v59);
          if (v30 == v55)
          {
            return result;
          }

          if ((v30 & 0x1C) == 0)
          {
            v24 += v55;
            goto LABEL_17;
          }
        }

        else
        {
          v55 = 0;
        }

        v65 = (v30 & 0xFFFFFFFFFFFFFFFCLL) + v24;
        v66 = vld1q_dup_f32(v10);
        v67 = v55 - (v30 & 0xFFFFFFFFFFFFFFFCLL);
        v68 = v55 + v24;
        v69 = (a2 + v68);
        v70 = &a3[2 * v68];
        do
        {
          v71 = *v69++;
          v13.i32[0] = v71;
          v13 = vmulq_s32(v66, vmovl_u16(*&vmovl_u8(*v13.i8)));
          *v70++ = v13;
          v67 += 4;
        }

        while (v67);
        v24 = v65;
        if (v30 == (v30 & 0xFFFFFFFFFFFFFFFCLL))
        {
          return result;
        }
      }
    }

LABEL_17:
    v31 = (a2 + v24);
    v32 = &a3[2 * v24];
    v33 = v14 - v24;
    do
    {
      v34 = *v31++;
      *v32 = *v10 * v34;
      v32 += 2;
      --v33;
    }

    while (v33);
  }

  return result;
}

unint64_t sub_10030D484(uint64_t a1, uint64_t a2, __int16 *a3, int a4, int a5)
{
  result = sub_1002A8904(100);
  if (!result)
  {
    return result;
  }

  if (*(a1 + 100) != 1)
  {
    return 0;
  }

  v11 = *(a1 + 12) + *(a1 + 8);
  v12 = (v11 - 1) / 2;
  v13 = (*(a1 + 16) + 4 * v12);
  v14 = v12 * a5;
  v15 = a5 * a4;
  if (*(a1 + 96))
  {
    v21 = (a2 + v14);
    if (v11 == 6)
    {
      if (*v13 == -2 && !v13[1])
      {
        if (v13[2] == 1 || v15 < 8)
        {
          return 0;
        }
      }

      else if (v15 < 8)
      {
        return 0;
      }

      result = 0;
      v36.i64[0] = *v13;
      v36.i64[1] = v13[2];
      v37 = vqmovn_s32(v36);
      do
      {
        v38 = vmovl_u8(*v21);
        v39 = vaddl_u8(*(v21 + a5), *(v21 - a5));
        v40 = vmlal_lane_s16(vmull_lane_s16(*v39.i8, v37, 1), *v38.i8, v37, 0);
        v41 = vmlal_high_lane_s16(vmull_high_lane_s16(v39, v37, 1), v38, v37, 0);
        v42 = vaddl_u8(*(v21 + 2 * a5), *(v21 - 2 * a5));
        v43 = &a3[2 * result];
        *v43 = vmlal_lane_s16(v40, *v42.i8, v37, 2);
        v43[1] = vmlal_high_lane_s16(v41, v42, v37, 2);
        result += 8;
        ++v21;
      }

      while (result <= (v15 - 8));
      return result;
    }

    if (v11 != 4)
    {
      return 0;
    }

    if (*v13 == -2)
    {
      if (v13[1] == 1 || v15 < 8)
      {
        return 0;
      }
    }

    else
    {
      if (*v13 == 2 && v13[1] == 1)
      {
        if (v15 < 8)
        {
          return 0;
        }

        result = 0;
        v22 = a2 + v14 - a5;
        v23 = 0uLL;
        do
        {
          v24 = vaddq_s16(vaddl_u8(*(v21 + a5 + result), *(v22 + result)), vshll_n_u8(*(v21 + result), 1uLL));
          vst2q_s16(a3, *(&v23 - 1));
          a3 += 16;
          result += 8;
        }

        while (result <= (v15 - 8));
        return result;
      }

      if (v15 < 8)
      {
        return 0;
      }
    }

    result = 0;
    v53 = (v15 - 8);
    v54.i32[3] = 0;
    v54.i32[0] = *v13;
    *(v54.i64 + 4) = v13[1];
    v55 = vqmovn_s32(v54);
    v56 = (a3 + 8);
    v57 = a2 + v14 - a5;
    do
    {
      v58 = vmovl_u8(*(v21 + result));
      v59 = vaddl_u8(*(v21 + a5 + result), *(v57 + result));
      v56[-1] = vmlal_lane_s16(vmull_lane_s16(*v59.i8, v55, 1), *v58.i8, v55, 0);
      *v56 = vmlal_high_lane_s16(vmull_high_lane_s16(v59, v55, 1), v58, v55, 0);
      result += 8;
      v56 += 2;
    }

    while (result <= v53);
    return result;
  }

  if (v11 == 6)
  {
    v25 = (v15 - 8);
    if (v15 < 8)
    {
      return 0;
    }

    result = 0;
    v26.i32[0] = 0;
    v26.i32[1] = v13[1];
    v26.i64[1] = v13[2];
    v27 = 2 * a5;
    v28 = a2 + v27 + v14;
    v29 = v14 - a5;
    v30 = a2 + a5 + v14;
    v31 = v14 - v27;
    v32 = vqmovn_s32(v26);
    v33 = (a3 + 8);
    do
    {
      v34 = vsubl_u8(*(v30 + result), *(a2 + v29 + result));
      v35 = vsubl_u8(*(v28 + result), *(a2 + v31 + result));
      v33[-1] = vmlal_lane_s16(vmull_lane_s16(*v35.i8, v32, 2), *v34.i8, v32, 1);
      *v33 = vmlal_high_lane_s16(vmull_high_lane_s16(v35, v32, 2), v34, v32, 1);
      result += 8;
      v33 += 2;
    }

    while (result <= v25);
  }

  else
  {
    if (v11 != 4)
    {
      return 0;
    }

    if (!*v13 && v13[1] == 1)
    {
      v16 = (v15 - 8);
      if (v15 >= 8)
      {
        result = 0;
        v17 = (a3 + 8);
        v18 = a2 + v14 - a5;
        v19 = a2 + a5 + v14;
        do
        {
          v20 = vsubl_u8(*(v19 + result), *(v18 + result));
          v17[-1] = vmovl_s16(*v20.i8);
          *v17 = vmovl_high_s16(v20);
          result += 8;
          v17 += 2;
        }

        while (result <= v16);
        return result;
      }

      return 0;
    }

    v44 = (v15 - 8);
    if (v15 < 8)
    {
      return 0;
    }

    result = 0;
    v45 = (v13 + 1);
    v46 = vld1q_dup_f32(v45);
    v47 = vqmovn_s32(v46);
    v48 = (a3 + 8);
    v49 = a2 + v14 - a5;
    v50 = a2 + a5 + v14;
    do
    {
      v51 = vsubl_u8(*(v50 + result), *(v49 + result));
      v48[-1] = vmull_lane_s16(*v51.i8, v47, 1);
      *v48 = vmull_high_lane_s16(v51, v47, 1);
      result += 8;
      v48 += 2;
    }

    while (result <= v44);
  }

  return result;
}

uint64_t sub_10030D870(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_10030D8F4(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v7 = sub_10030D9F0(a1, a2, a3, a5);
  *v7 = off_100478CB8;
  *(v7 + 216) = a4;
  if ((a4 & 3) == 0 || *(a1 + 8) >= 6)
  {
    v9[0] = 0;
    v9[1] = 0;
    qmemcpy(sub_1002A80E0(v9, 84), "(symmetryType & (KERNEL_SYMMETRICAL | KERNEL_ASYMMETRICAL)) != 0 && this->ksize <= 5", 84);
    sub_1002A8980(-215, v9, "SymmRowSmallFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3112);
  }

  return a1;
}

void sub_10030D9C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  sub_10030DD9C(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_10030D9F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *(a1 + 8) = -1;
  *a1 = off_100478D10;
  *(a1 + 16) = 1124007936;
  v8 = (a1 + 16);
  *(a1 + 20) = 0u;
  v9 = (a1 + 20);
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 112) = 1124007936;
  v10 = (a1 + 112);
  *(a1 + 116) = 0u;
  v11 = (a1 + 116);
  *(a1 + 104) = 0;
  *(a1 + 132) = 0u;
  *(a1 + 148) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 176) = a1 + 120;
  *(a1 + 184) = a1 + 192;
  *(a1 + 200) = 0;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v8 == a2)
    {
      goto LABEL_17;
    }

    v12 = *(a2 + 56);
    if (v12)
    {
      atomic_fetch_add((v12 + 20), 1u);
      v13 = *(a1 + 72);
      if (v13)
      {
        if (atomic_fetch_add((v13 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(a1 + 16);
        }
      }
    }

    *(a1 + 72) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    if (*(a1 + 20) <= 0)
    {
      *v8 = *a2;
      v17 = *(a2 + 4);
      if (v17 <= 2)
      {
LABEL_13:
        *(a1 + 20) = v17;
        *(a1 + 24) = *(a2 + 8);
        v18 = *(a2 + 72);
        v19 = *(a1 + 88);
        *v19 = *v18;
        v19[1] = v18[1];
LABEL_16:
        *(a1 + 32) = *(a2 + 16);
        *(a1 + 48) = *(a2 + 32);
        *(a1 + 64) = *(a2 + 48);
        goto LABEL_17;
      }
    }

    else
    {
      v14 = 0;
      v15 = *(a1 + 80);
      do
      {
        *(v15 + 4 * v14++) = 0;
        v16 = *v9;
      }

      while (v14 < v16);
      *v8 = *a2;
      if (v16 <= 2)
      {
        v17 = *(a2 + 4);
        if (v17 <= 2)
        {
          goto LABEL_13;
        }
      }
    }

    sub_100269B58(v8, a2);
    goto LABEL_16;
  }

  LODWORD(v31) = 33619968;
  v32 = a1 + 16;
  v33 = 0;
  sub_10022B754(a2, &v31);
LABEL_17:
  v21 = *(a1 + 24);
  v20 = *(a1 + 28);
  *(a1 + 8) = v21 + v20 - 1;
  *(a1 + 12) = a3;
  if ((*(a1 + 16) & 0xFFF) != 5 || v21 != 1 && v20 != 1)
  {
    v31 = 0;
    v32 = 0;
    qmemcpy(sub_1002A80E0(&v31, 77), "kernel.type() == DataType<DT>::type && (kernel.rows == 1 || kernel.cols == 1)", 77);
    sub_1002A8980(-215, &v31, "RowFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3053);
  }

  if (v10 != a4)
  {
    v22 = *(a4 + 56);
    if (v22)
    {
      atomic_fetch_add((v22 + 20), 1u);
    }

    v23 = *(a1 + 168);
    if (v23 && atomic_fetch_add((v23 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(v10);
    }

    *(a1 + 168) = 0;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    if (*(a1 + 116) <= 0)
    {
      *v10 = *a4;
      v27 = *(a4 + 4);
      if (v27 <= 2)
      {
LABEL_32:
        *(a1 + 116) = v27;
        *(a1 + 120) = *(a4 + 8);
        v28 = *(a4 + 72);
        v29 = *(a1 + 184);
        *v29 = *v28;
        v29[1] = v28[1];
LABEL_35:
        *(a1 + 128) = *(a4 + 16);
        *(a1 + 144) = *(a4 + 32);
        *(a1 + 160) = *(a4 + 48);
        goto LABEL_36;
      }
    }

    else
    {
      v24 = 0;
      v25 = *(a1 + 176);
      do
      {
        *(v25 + 4 * v24++) = 0;
        v26 = *v11;
      }

      while (v24 < v26);
      *v10 = *a4;
      if (v26 <= 2)
      {
        v27 = *(a4 + 4);
        if (v27 <= 2)
        {
          goto LABEL_32;
        }
      }
    }

    sub_100269B58(v10, a4);
    goto LABEL_35;
  }

LABEL_36:
  *(a1 + 208) = *(a4 + 96);
  return a1;
}

void sub_10030DD60(_Unwind_Exception *a1)
{
  sub_100305F7C(v2);
  sub_100006D14(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10030DD9C(uint64_t a1)
{
  *a1 = off_100478D10;
  v2 = *(a1 + 168);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 112);
  }

  *(a1 + 168) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  if (*(a1 + 116) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 176);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 116));
  }

  v5 = *(a1 + 184);
  if (v5 != (a1 + 192))
  {
    j__free(v5);
  }

  v6 = *(a1 + 72);
  if (v6 && atomic_fetch_add((v6 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v7 = 0;
    v8 = *(a1 + 80);
    do
    {
      *(v8 + 4 * v7++) = 0;
    }

    while (v7 < *(a1 + 20));
  }

  v9 = *(a1 + 88);
  if (v9 != (a1 + 96))
  {
    j__free(v9);
  }

  return a1;
}

void sub_10030DEC0(uint64_t a1)
{
  sub_10030DD9C(a1);

  operator delete();
}

unint64_t sub_10030DEF8(uint64_t a1, uint64_t a2, float32x4_t *a3, int a4, int a5)
{
  v10 = *(a1 + 8);
  v11 = v10 / 2 * a5;
  v12 = *(a1 + 32);
  v499 = (v10 + (v10 >> 31)) >> 1;
  v13 = v12 + 4 * (v10 / 2);
  v14 = *(a1 + 216);
  result = sub_1002A8904(100);
  if ((result & 1) == 0)
  {
    LODWORD(v23) = 0;
    v22 = a5 * a4;
    goto LABEL_22;
  }

  v19 = *(a1 + 120) + *(a1 + 124) - 1;
  v20 = v19 / 2 * a5;
  v21 = (*(a1 + 128) + 4 * (v19 / 2));
  v22 = a5 * a4;
  if (*(a1 + 208))
  {
    if (*(a1 + 120) + *(a1 + 124) == 6)
    {
      v41 = *v21;
      if (*v21 == -2.0 && (v17.i32[0] = v21[1], v17.f32[0] == 0.0))
      {
        v18.i32[0] = v21[2];
        if (v18.f32[0] != 1.0 && v22 >= 4)
        {
          goto LABEL_20;
        }
      }

      else if (v22 >= 4)
      {
        v17.i32[0] = v21[1];
        v18.i32[0] = v21[2];
LABEL_20:
        v43 = 0;
        v23 = 0;
        v17 = vdupq_lane_s32(*v17.f32, 0);
        v44 = 4 * v20;
        v45 = 8 * a5;
        v46 = a2 + v45 + v44;
        v47 = v44 - v45;
        v48 = 4 * a5;
        v49 = a2 + v48 + v44;
        v18 = vdupq_lane_s32(*v18.f32, 0);
        v50 = a2 + v47;
        v51 = a2 + v44 - v48;
        do
        {
          a3[v43 / 0x10] = vmlaq_f32(vmlaq_f32(vmulq_n_f32(*(a2 + v44 + v43), v41), v17, vaddq_f32(*(v51 + v43), *(v49 + v43))), v18, vaddq_f32(*(v50 + v43), *(v46 + v43)));
          v23 += 4;
          v43 += 16;
        }

        while (v23 <= (v22 - 4));
        goto LABEL_22;
      }
    }

    LODWORD(v23) = 0;
    goto LABEL_22;
  }

  LODWORD(v23) = 0;
  if (*(a1 + 120) + *(a1 + 124) == 6 && v22 >= 4)
  {
    v23 = 0;
    v24 = (v21 + 2);
    v25 = (v21 + 1);
    v16 = vld1q_dup_f32(v25);
    v17 = vld1q_dup_f32(v24);
    v26 = 4 * v20;
    v27 = 8 * a5;
    v28 = (a2 + v27 + v26);
    v29 = (a2 + v26 - v27);
    v30 = 4 * a5;
    v31 = (a2 + v30 + v26);
    v32 = (a2 + v26 - v30);
    v33 = a3;
    do
    {
      v34 = *v32++;
      v35 = v34;
      v36 = *v31++;
      v37 = v36;
      v38 = *v29++;
      v39 = v38;
      v40 = *v28++;
      v18 = vmlaq_f32(vmulq_f32(v16, vsubq_f32(v37, v35)), v17, vsubq_f32(v40, v39));
      *v33++ = v18;
      v23 += 4;
    }

    while (v23 <= (v22 - 4));
  }

LABEL_22:
  v52 = v23;
  v53 = v11;
  v54 = (a2 + 4 * v23 + 4 * v11);
  v55 = *(a1 + 8);
  if (v14)
  {
    if (v55 == 5)
    {
      v16.i32[0] = *v13;
      v192 = *(v13 + 4);
      v18.i32[0] = *(v13 + 8);
      v193 = v22 - 2;
      if (*v13 == -2.0 && (v192 == 0.0 ? (v194 = v18.f32[0] == 1.0) : (v194 = 0), v194))
      {
        if (v23 <= v193)
        {
          v195 = -2 * a5;
          v196 = v193;
          v197 = v193 - v52;
          v198 = 8 * a5;
          if (v197 >= 0x28)
          {
            v199 = 4 * v52;
            v200 = a3->u64 + 4 * v52;
            v201 = (4 * v197) & 0xFFFFFFFFFFFFFFF8;
            v202 = v200 + v201 + 8;
            v203 = 4 * v52 + 4 * v11;
            v204 = v203 + a2 + v198;
            v205 = v203 + a2 + v201;
            v206 = v205 + v198 + 8;
            v207 = v203 + v201 + 8;
            v208 = a2 + v207;
            v209 = v205 + 4 * v195 + 4;
            v210 = v200 >= a2 + v207 - v198 || v203 - v198 + a2 + 4 >= v202;
            v211 = !v210;
            v212 = v200 >= v208 || v54 >= v202;
            v213 = !v212;
            v214 = v200 >= v209 || v203 + a2 + 4 * v195 >= v202;
            result = !v214;
            v215 = v204 >= v202 || v200 >= v206;
            if (v215 && !v211 && !v213 && (result & 1) == 0)
            {
              v216 = (v197 >> 1) + 1;
              v217 = v216 & 3;
              if ((v216 & 3) == 0)
              {
                v217 = 4;
              }

              v218 = v216 - v217;
              v52 += 2 * v218;
              v54 += v218;
              v219 = 4 * v11;
              v220 = a2 + v219;
              v221 = v219 - v198 + a2 + 4;
              result = a2 + v219 + v198;
              v222 = a2 + v219 + 4 * v195;
              v223.i64[0] = 0xC0000000C0000000;
              v223.i64[1] = 0xC0000000C0000000;
              v224 = a3;
              do
              {
                v225 = (v220 + v199);
                v503 = vld2q_f32(v225);
                v226 = (v222 + v199);
                v227 = vld2q_f32(v226);
                v228 = (result + v199);
                v513 = vld2q_f32(v228);
                v508.val[0] = vaddq_f32(vmlaq_f32(v227, v223, v503.val[0]), v513.val[0]);
                v229 = (v221 + v199);
                v230 = vld2q_f32(v229);
                v508.val[1] = vaddq_f32(vmlaq_f32(v230, v223, v503.val[1]), v513.val[1]);
                v231 = &v224->f32[v199 / 4];
                vst2q_f32(v231, v508);
                v224 += 2;
                v220 += 32;
                v221 += 32;
                result += 32;
                v222 += 32;
                v218 -= 4;
              }

              while (v218);
            }
          }

          v232 = &a3->f32[v52];
          do
          {
            v233.i32[0] = v54[v195 / 2].i32[0];
            v233.i32[1] = *(v54->i32 + 4 - v198);
            *v232++ = vadd_f32(vmla_f32(v233, 0xC0000000C0000000, *v54), v54[a5]);
            v52 += 2;
            ++v54;
          }

          while (v52 <= v196);
          goto LABEL_378;
        }
      }

      else if (v23 <= v193)
      {
        v329 = -a5;
        v330 = -1 * a5;
        v331 = a5 + 1;
        v332 = v193;
        v333 = v193 - v52;
        v334 = 4 * a5;
        v335 = 8 * a5;
        if (v333 > 0x27)
        {
          v498 = v22;
          v336 = 4 * v52;
          v337 = &a3->i8[4 * v52];
          v338 = (4 * v333) & 0xFFFFFFFFFFFFFFF8;
          v339 = &v337[v338 + 8];
          v340 = 4 * v52 + 4 * v53;
          v492 = v340 + a2 + v335;
          v341 = a2 + v338;
          v342 = v340 + a2 + v338;
          v490 = a2 + v340 + 4 - v335;
          v491 = v342 + v335 + 8;
          v343 = v340 + v338 + 8;
          v494 = -2 * a5;
          v496 = 8 * a5;
          v344 = a2 + v343 - v335;
          v345 = v340 + a2 + 4 * v331;
          v346 = v342 + 4 * v331 + 4;
          v347 = a2 + v340 - v334;
          v348 = a2 + v343 - v334;
          v349 = a2 + v343;
          v350 = v340 + a2 + 4 * v494;
          v351 = v342 + 4 * v494 + 4;
          v352 = v340 + a2 + v334;
          v353 = v340 + 4 + v341 + v334;
          v355 = v337 < v344 && v490 < v339;
          v357 = v337 < v346 && v345 < v339;
          v359 = v337 < v348 && v347 < v339;
          v361 = v337 < v349 && v54 < v339;
          v363 = v337 < v351 && v350 < v339;
          v365 = v337 < v353 && v352 < v339;
          v366 = v492 >= v339 || v337 >= v491;
          if (!v366 || v355)
          {
            v334 = 4 * a5;
            v22 = v498;
            v330 = -1 * a5;
            v335 = 8 * a5;
            v329 = -a5;
            v331 = a5 + 1;
          }

          else
          {
            v334 = 4 * a5;
            v22 = v498;
            v335 = 8 * a5;
            v329 = -a5;
            if (v357 || v359 || v361 || v363)
            {
              v330 = -1 * a5;
              v331 = a5 + 1;
            }

            else
            {
              v330 = -1 * a5;
              v331 = a5 + 1;
              if (!v365)
              {
                v367 = (v333 >> 1) + 1;
                v368 = v367 & 3;
                if ((v367 & 3) == 0)
                {
                  v368 = 4;
                }

                v369 = v367 - v368;
                v370 = vdupq_lane_s32(*v16.f32, 0);
                v371 = 4 * v53;
                v372 = 4 * v53 + 4 * (a5 + 1);
                v373 = vdupq_lane_s32(*v18.f32, 0);
                v374 = a2 + 4 * v53;
                v375 = v371 - v496 + a2 + 4;
                v376 = a2 + v372;
                v377 = v374 + v496;
                v378 = a2 + v371 + 4 * v494;
                v379 = a2 + v371 + 4 * a5;
                v380 = a2 + v371 + 4 * -a5;
                v381 = a3;
                v52 += 2 * v369;
                v54 += v369;
                do
                {
                  v382 = (v374 + v336);
                  v515 = vld2q_f32(v382);
                  v383 = (v380 + v336);
                  v519 = vld2q_f32(v383);
                  v384 = (v379 + v336);
                  v385 = vld2q_f32(v384);
                  v386 = (v378 + v336);
                  v387 = vld2q_f32(v386);
                  v388 = (v377 + v336);
                  v522 = vld2q_f32(v388);
                  v521.val[0] = vmlaq_f32(vmlaq_f32(vmulq_n_f32(vaddq_f32(v519.val[0], v385), v192), v370, v515.val[0]), v373, vaddq_f32(v387, v522.val[0]));
                  v389 = (v376 + v336);
                  v390 = vld2q_f32(v389);
                  v391 = (v375 + v336);
                  v519.val[0] = vld2q_f32(v391);
                  v521.val[1] = vmlaq_f32(vmlaq_f32(vmulq_n_f32(vaddq_f32(v519.val[1], v390), v192), v370, v515.val[1]), v373, vaddq_f32(v519.val[0], v522.val[1]));
                  v392 = &v381->f32[v336 / 4];
                  v381 += 2;
                  vst2q_f32(v392, v521);
                  v374 += 32;
                  v375 += 32;
                  v376 += 32;
                  v377 += 32;
                  v378 += 32;
                  v379 += 32;
                  v380 += 32;
                  v369 -= 4;
                }

                while (v369);
                v334 = 4 * a5;
              }
            }
          }
        }

        v445 = 0;
        result = a3->u64 + 4 * v52;
        v446 = v54 + v334;
        v447 = v54 - v334 + 4;
        do
        {
          v448 = ((v192 * (*(v447 + v445) + v54->f32[v331 + v445 / 4])) + (v54[v445 / 8].f32[1] * v16.f32[0])) + ((v54[v335 / 0xFFFFFFFFFFFFFFF8 + v445 / 8].f32[1] + v54[v335 / 8 + v445 / 8].f32[1]) * v18.f32[0]);
          v449 = (result + v445);
          *v449 = ((v192 * (v54->f32[v329 + v445 / 4] + *&v446[v445])) + (v54[v445 / 8].f32[0] * v16.f32[0])) + ((v54[v330 + v445 / 8].f32[0] + v54[v335 / 8 + v445 / 8].f32[0]) * v18.f32[0]);
          v449[1] = v448;
          v52 += 2;
          v445 += 8;
        }

        while (v52 <= v332);
        v54 = (v54 + v445);
        goto LABEL_378;
      }
    }

    else
    {
      if (v55 != 3)
      {
        if (v55 != 1 || *v13 != 1.0)
        {
          goto LABEL_379;
        }

        v83 = v22 - 2;
        if (v23 > v22 - 2)
        {
          goto LABEL_373;
        }

        v84 = v83;
        v85 = v83 - v52;
        if (v85 >= 0x1E)
        {
          v431 = a3->u64 + 4 * v52;
          v432 = (4 * v85) & 0xFFFFFFFFFFFFFFF8;
          v433 = a2 + 8 * v52 + 4 * v11;
          if (v431 >= v433 + v432 + 8 || (v434 = v431 + v432 + 8, v86 = v52, v433 >= v434))
          {
            v435 = (v85 >> 1) + 1;
            v86 = v52 + 2 * (v435 & 0xFFFFFFFFFFFFFFF8);
            v436 = (v431 + 32);
            v437 = (8 * v52 + 4 * v11 + a2 + 32);
            result = v435 & 0xFFFFFFFFFFFFFFF8;
            do
            {
              v439 = *(v437 - 2);
              v438 = *(v437 - 1);
              v441 = *v437;
              v440 = v437[1];
              v437 += 4;
              *(v436 - 2) = v439;
              *(v436 - 1) = v438;
              *v436 = v441;
              v436[1] = v440;
              v436 += 4;
              result -= 8;
            }

            while (result);
            if (v435 == (v435 & 0xFFFFFFFFFFFFFFF8))
            {
              goto LABEL_372;
            }
          }
        }

        else
        {
          v86 = v52;
        }

        v442 = (a2 + 4 * v86 + 4 * v52 + 4 * v11);
        v443 = (a3->i64 + 4 * v86);
        do
        {
          v444 = *v442++;
          *v443++ = v444;
          v86 += 2;
        }

        while (v86 <= v84);
LABEL_372:
        v52 = v86;
        LODWORD(v23) = v86;
LABEL_373:
        v54 = (v54 + 4 * v52);
        goto LABEL_379;
      }

      v17.i32[0] = *v13;
      if (*v13 == 2.0 && *(v13 + 4) == 1.0)
      {
        v153 = v22 - 2;
        if (v23 <= v22 - 2)
        {
          v154 = a5 + 1;
          v155 = v153 - v23;
          if (v155 >= 0x28)
          {
            v156 = 4 * v23;
            v157 = a3 + v156;
            v158 = (4 * v155) & 0xFFFFFFFFFFFFFFF8;
            v159 = &a3->u64[1] + v156 + v158;
            v160 = v156 + 4 * v11;
            v161 = v160 + a2 + 4 * v154;
            v162 = a2 + v160 + v158;
            v163 = v162 + 4 * v154 + 4;
            v164 = v162 + 8;
            v165 = 4 * a5;
            v166 = v160 + v158 - v165 + a2 + 8;
            v167 = v160 + a2 + v165;
            v168 = v160 + a2 + v165 + v158 + 4;
            v169 = a3 + v156 >= v164 || v54 >= v159;
            v170 = !v169;
            v171 = v157 >= v166 || a2 + v160 - 4 * a5 >= v159;
            v172 = !v171;
            v173 = v157 >= v168 || v167 >= v159;
            result = !v173;
            v174 = v161 >= v159 || v157 >= v163;
            if (v174 && !v170 && !v172 && (result & 1) == 0)
            {
              v175 = (v155 >> 1) + 1;
              v176 = v175 & 3;
              if ((v175 & 3) == 0)
              {
                v176 = 4;
              }

              v177 = v175 - v176;
              v52 = v23 + 2 * v177;
              v54 += v177;
              v178 = 4 * v11;
              v179 = a2 + v178;
              v180 = a2 + v178 + 4 * v154;
              result = a2 + v165 + v178;
              v181 = a2 + v178 - v165;
              v182.i64[0] = 0x4000000040000000;
              v182.i64[1] = 0x4000000040000000;
              v183 = a3;
              do
              {
                v184 = (v181 + v156);
                v502 = vld2q_f32(v184);
                v185 = (v179 + v156);
                v507 = vld2q_f32(v185);
                v186 = (result + v156);
                v187 = vld2q_f32(v186);
                v512.val[0] = vaddq_f32(vmlaq_f32(v502.val[0], v182, v507.val[0]), v187);
                v188 = (v180 + v156);
                v507.val[0] = vld2q_f32(v188);
                v512.val[1] = vaddq_f32(vmlaq_f32(v502.val[1], v182, v507.val[1]), v507.val[0]);
                v189 = &v183->f32[v156 / 4];
                vst2q_f32(v189, v512);
                v183 += 2;
                v179 += 32;
                v180 += 32;
                result += 32;
                v181 += 32;
                v177 -= 4;
              }

              while (v177);
            }
          }

          v190 = &a3->f32[v52];
          do
          {
            v191.i32[0] = v54->i32[a5];
            v191.i32[1] = v54->i32[v154];
            *v190++ = vadd_f32(vmla_f32(*(v54 - 4 * a5), 0x4000000040000000, *v54), v191);
            v52 += 2;
            ++v54;
          }

          while (v52 <= v153);
LABEL_378:
          LODWORD(v23) = v52;
        }
      }

      else
      {
        v286 = *(v13 + 4);
        v287 = v22 - 2;
        if (v17.f32[0] == -2.0 && v286 == 1.0)
        {
          if (v23 <= v287)
          {
            v393 = a5 + 1;
            v394 = v287 - v23;
            if (v394 >= 0x28)
            {
              v395 = 4 * v23;
              v396 = a3 + v395;
              v397 = (4 * v394) & 0xFFFFFFFFFFFFFFF8;
              v398 = &a3->u64[1] + v395 + v397;
              v399 = v395 + 4 * v11;
              v400 = v399 + a2 + 4 * v393;
              v401 = a2 + v399 + v397;
              v402 = v401 + 4 * v393 + 4;
              v403 = v401 + 8;
              v404 = 4 * a5;
              v405 = v399 + v397 - v404 + a2 + 8;
              v406 = v399 + a2 + v404;
              v407 = v399 + a2 + v404 + v397 + 4;
              v408 = a3 + v395 >= v403 || v54 >= v398;
              v409 = !v408;
              v410 = v396 >= v405 || a2 + v399 - 4 * a5 >= v398;
              v411 = !v410;
              v412 = v396 >= v407 || v406 >= v398;
              result = !v412;
              v413 = v400 >= v398 || v396 >= v402;
              if (v413 && !v409 && !v411 && (result & 1) == 0)
              {
                v414 = (v394 >> 1) + 1;
                v415 = v414 & 3;
                if ((v414 & 3) == 0)
                {
                  v415 = 4;
                }

                v416 = v414 - v415;
                v52 = v23 + 2 * v416;
                v54 += v416;
                v417 = 4 * v11;
                v418 = a2 + v417;
                v419 = a2 + v417 + 4 * v393;
                result = a2 + v404 + v417;
                v420 = a2 + v417 - v404;
                v421.i64[0] = 0x4000000040000000;
                v421.i64[1] = 0x4000000040000000;
                v422 = a3;
                do
                {
                  v423 = (v420 + v395);
                  v504 = vld2q_f32(v423);
                  v424 = (v418 + v395);
                  v510 = vld2q_f32(v424);
                  v425 = (result + v395);
                  v426 = vld2q_f32(v425);
                  v516.val[0] = vaddq_f32(vmlsq_f32(v504.val[0], v421, v510.val[0]), v426);
                  v427 = (v419 + v395);
                  v510.val[0] = vld2q_f32(v427);
                  v516.val[1] = vaddq_f32(vmlsq_f32(v504.val[1], v421, v510.val[1]), v510.val[0]);
                  v428 = &v422->f32[v395 / 4];
                  vst2q_f32(v428, v516);
                  v422 += 2;
                  v418 += 32;
                  v419 += 32;
                  result += 32;
                  v420 += 32;
                  v416 -= 4;
                }

                while (v416);
              }
            }

            v429 = &a3->f32[v52];
            do
            {
              v430.i32[0] = v54->i32[a5];
              v430.i32[1] = v54->i32[v393];
              *v429++ = vadd_f32(vmla_f32(*(v54 - 4 * a5), 0xC0000000C0000000, *v54), v430);
              v52 += 2;
              ++v54;
            }

            while (v52 <= v287);
            goto LABEL_378;
          }
        }

        else if (v23 <= v287)
        {
          v289 = a5 + 1;
          v290 = v287 - v23;
          if (v290 >= 0x28)
          {
            v291 = 4 * v23;
            v292 = a3 + v291;
            v293 = (4 * v290) & 0xFFFFFFFFFFFFFFF8;
            v294 = &a3->u64[1] + v291 + v293;
            v295 = v291 + 4 * v11;
            v296 = v295 + a2 + 4 * v289;
            v297 = a2 + v293;
            v298 = v295 + 4 * v289 + a2 + v293 + 4;
            v299 = 4 * a5;
            v300 = v295 + v293 + 8;
            v301 = a2 + v300;
            v302 = v295 + a2 + v299;
            v303 = v295 + v299 + v297 + 4;
            v304 = a3 + v291 >= a2 + v300 - v299 || a2 + v295 - 4 * a5 >= v294;
            v305 = !v304;
            v306 = v292 >= v301 || v54 >= v294;
            v307 = !v306;
            v308 = v292 >= v303 || v302 >= v294;
            result = !v308;
            v309 = v296 >= v294 || v292 >= v298;
            if (v309 && !v305 && !v307 && (result & 1) == 0)
            {
              v310 = (v290 >> 1) + 1;
              v311 = v310 & 3;
              if ((v310 & 3) == 0)
              {
                v311 = 4;
              }

              v312 = v310 - v311;
              v52 = v23 + 2 * v312;
              v54 += v312;
              v313 = vdupq_lane_s32(*v17.f32, 0);
              v314 = 4 * v11;
              v315 = a2 + v314;
              v316 = a2 + v314 + 4 * v289;
              result = a2 + v299 + v314;
              v317 = a2 + v314 - v299;
              v318 = a3;
              do
              {
                v319 = (v315 + v291);
                v509 = vld2q_f32(v319);
                v320 = (v317 + v291);
                v514 = vld2q_f32(v320);
                v321 = (result + v291);
                v322 = vld2q_f32(v321);
                v518.val[0] = vmlaq_f32(vmulq_n_f32(vaddq_f32(v514.val[0], v322), v286), v313, v509.val[0]);
                v323 = (v316 + v291);
                v324 = vld2q_f32(v323);
                v518.val[1] = vmlaq_f32(vmulq_n_f32(vaddq_f32(v514.val[1], v324), v286), v313, v509.val[1]);
                v325 = &v318->f32[v291 / 4];
                vst2q_f32(v325, v518);
                v318 += 2;
                v315 += 32;
                v316 += 32;
                result += 32;
                v317 += 32;
                v312 -= 4;
              }

              while (v312);
            }
          }

          v326 = vdup_lane_s32(*v17.f32, 0);
          v327 = &a3->f32[v52];
          do
          {
            v328.i32[0] = v54->i32[a5];
            v328.i32[1] = v54->i32[v289];
            *v327++ = vmla_f32(vmul_n_f32(vadd_f32(*(v54 - 4 * a5), v328), v286), v326, *v54);
            v52 += 2;
            ++v54;
          }

          while (v52 <= v287);
          goto LABEL_378;
        }
      }
    }

LABEL_379:
    if (v23 >= v22)
    {
      return result;
    }

    if (v10 < 2)
    {
      v450 = v23;
      v451 = v22 - v23;
      if (v451 < 0xC || ((v480 = a3->u64 + 4 * v23, v481 = a3->u64 + 4 * v22, v480 < v54 + 4 * v22 - 4 * v450) ? (v482 = v54 >= v481) : (v482 = 1), v482 ? (v483 = 0) : (v483 = 1), v13 < v481 ? (v484 = v480 >= v12 + 4 * v499 + 4) : (v484 = 1), !v484 || (v483 & 1) != 0))
      {
        v452 = v450;
        v453 = v54;
      }

      else
      {
        v452 = (v451 & 0xFFFFFFFFFFFFFFF8) + v450;
        v453 = v54 + (v451 & 0xFFFFFFFFFFFFFFF8);
        v485 = vld1q_dup_f32(v13);
        v486 = (a3 + 4 * v450 + 16);
        v487 = &v54[2];
        v488 = v451 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v489 = vmulq_f32(v485, *v487);
          v486[-1] = vmulq_f32(v485, v487[-1]);
          *v486 = v489;
          v486 += 2;
          v487 += 2;
          v488 -= 8;
        }

        while (v488);
        if (v451 == (v451 & 0xFFFFFFFFFFFFFFF8))
        {
          return result;
        }
      }

      v454 = &a3->f32[v452];
      v455 = v22 - v452;
      do
      {
        v456 = *v453++;
        *v454++ = *v13 * v456;
        --v455;
      }

      while (v455);
      return result;
    }

    v457 = a5;
    v23 = v23;
    v458 = ((v10 / 2) & 0x3FFFFFF8 | 1u) * a5;
    v460 = (v10 / 2) < 8 || a5 != 1;
    result = &v54[-2];
    v461 = (&v54[2] + 4);
    v462 = v12 + 4 * v499;
    v463 = 4 * a5;
    while (1)
    {
      v464 = *v13 * v54->f32[0];
      if (v460)
      {
        v465 = 1;
        v466 = v457;
      }

      else
      {
        v467 = (v462 + 20);
        v468 = v461;
        v469 = result;
        v470 = (v10 / 2) & 0x3FFFFFF8;
        do
        {
          v471 = vrev64q_s32(*v469);
          v472 = vrev64q_s32(v469[-1]);
          v473 = vmulq_f32(v467[-1], vaddq_f32(v468[-1], vextq_s8(v471, v471, 8uLL)));
          v474 = vmulq_f32(*v467, vaddq_f32(*v468, vextq_s8(v472, v472, 8uLL)));
          v464 = (((((((v464 + v473.f32[0]) + v473.f32[1]) + v473.f32[2]) + v473.f32[3]) + v474.f32[0]) + v474.f32[1]) + v474.f32[2]) + v474.f32[3];
          v469 -= 2;
          v468 += 2;
          v467 += 2;
          v470 -= 8;
        }

        while (v470);
        v465 = (v10 / 2) & 0x3FFFFFF8 | 1;
        v466 = v458;
        if ((((v10 + (v10 >> 31)) >> 1) & 0x3FFFFFF8) == v10 / 2)
        {
          goto LABEL_393;
        }
      }

      v475 = (v462 + 4 * v465);
      v476 = (v10 / 2 + 1) - v465;
      v477 = 4 * v466;
      v478 = -v477;
      do
      {
        v479 = *v475++;
        v464 = v464 + (v479 * (*(v54->f32 + v477) + *(v54->f32 + v478)));
        v477 += v463;
        v478 -= v463;
        --v476;
      }

      while (v476);
LABEL_393:
      a3->f32[v23++] = v464;
      v54 = (v54 + 4);
      result += 4;
      v461 = (v461 + 4);
      if (v23 == v22)
      {
        return result;
      }
    }
  }

  if (v55 == 5)
  {
    v87 = v22 - 2;
    if (v23 > v22 - 2)
    {
      goto LABEL_219;
    }

    v88 = -a5;
    v16.i32[0] = *(v13 + 4);
    v89 = *(v13 + 8);
    v90 = -2 * a5;
    v91 = a5 + 1;
    v92 = v87;
    v93 = v87 - v52;
    v94 = 4 * a5;
    v95 = 8 * a5;
    if (v93 >= 0x30)
    {
      v497 = v12;
      v96 = 4 * v52;
      v97 = a3->u64 + 4 * v52;
      v98 = (4 * v93) & 0xFFFFFFFFFFFFFFF8;
      v99 = v97 + v98 + 8;
      v100 = 4 * v52 + 4 * v53;
      v495 = a2 + v100 + 4 - v95;
      v101 = v100 + v98 + 8;
      v493 = a2 + v101 - v95;
      v102 = a2 + v98;
      v103 = a2 + v101 - v94;
      v104 = v100 + a2 + 4 * v91;
      v105 = v100 + v102 + 4 * v91 + 4;
      v106 = -2 * a5;
      v107 = v100 + a2 + 4 * v106;
      v108 = v100 + v102 + 4 * v106 + 4;
      v109 = v100 + a2 + v94;
      v110 = v100 + 4 + v102 + v94;
      v112 = v97 < v100 + v102 + v95 + 8 && v100 + a2 + v95 < v99;
      v114 = v97 < v103 && a2 + v100 - v94 < v99;
      v116 = v97 < v105 && v104 < v99;
      v118 = v97 < v108 && v107 < v99;
      v120 = v97 < v110 && v109 < v99;
      if (v495 >= v99 || v97 >= v493)
      {
        v12 = v497;
        v90 = -2 * a5;
        v88 = -a5;
        if (v112)
        {
          v91 = a5 + 1;
        }

        else
        {
          v91 = a5 + 1;
          if (!v114 && !v116 && !v118 && !v120)
          {
            v122 = (v93 >> 1) + 1;
            v123 = v122 & 3;
            if ((v122 & 3) == 0)
            {
              v123 = 4;
            }

            v124 = v122 - v123;
            v125 = 4 * v53;
            v126 = 4 * v53 + 4 * (a5 + 1);
            v127 = vdupq_lane_s32(*v16.f32, 0);
            v128 = 4 * v53 + 4 * v90;
            v129 = 4 * v53 - v95 + a2 + 4;
            v130 = a2 + v126;
            v131 = a2 + v128;
            v132 = a2 + v125 + v95;
            v133 = a2 + v125 + 4 * -a5;
            v134 = a2 + v125 + 4 * a5;
            v135 = a3;
            v52 += 2 * v124;
            v54 += v124;
            do
            {
              v136 = (v134 + v96);
              v137 = vld2q_f32(v136);
              v138 = (v133 + v96);
              v511 = vld2q_f32(v138);
              v139 = (v132 + v96);
              v517 = vld2q_f32(v139);
              v140 = vsubq_f32(v137, v511.val[0]);
              v141 = (v131 + v96);
              v142 = vld2q_f32(v141);
              v143 = vsubq_f32(v517.val[0], v142);
              v144 = (v130 + v96);
              v145 = vld2q_f32(v144);
              v511.val[0] = vsubq_f32(v145, v511.val[1]);
              v146 = (v129 + v96);
              v511.val[1] = vld2q_f32(v146);
              v520.val[0] = vmlaq_f32(vmulq_n_f32(v143, v89), v127, v140);
              v520.val[1] = vmlaq_f32(vmulq_n_f32(vsubq_f32(v517.val[1], v511.val[1]), v89), v127, v511.val[0]);
              v147 = &v135->f32[v96 / 4];
              vst2q_f32(v147, v520);
              v135 += 2;
              v129 += 32;
              v130 += 32;
              v131 += 32;
              v132 += 32;
              v133 += 32;
              v134 += 32;
              v124 -= 4;
            }

            while (v124);
          }
        }
      }

      else
      {
        v12 = v497;
        v90 = -2 * a5;
        v88 = -a5;
        v91 = a5 + 1;
      }
    }

    v148 = 0;
    result = a3->u64 + 4 * v52;
    v149 = &v54[v95 / 0xFFFFFFFFFFFFFFF8] + 4;
    v150 = &v54[v95 / 8] + 4;
    do
    {
      v151 = (v89 * (*(v150 + v148) - *(v149 + v148))) + ((v54->f32[v91 + v148 / 4] - v54->f32[v94 / 0xFFFFFFFFFFFFFFFCLL + 1 + v148 / 4]) * v16.f32[0]);
      v152 = (result + v148);
      *v152 = (v89 * (*(v150 + v148 - 4) - v54[v90 / 2 + v148 / 8].f32[0])) + ((v54->f32[v94 / 4 + v148 / 4] - v54->f32[v88 + v148 / 4]) * v16.f32[0]);
      v152[1] = v151;
      v52 += 2;
      v148 += 8;
    }

    while (v52 <= v92);
    v54 = (v54 + v148);
  }

  else
  {
    if (v55 != 3)
    {
      goto LABEL_219;
    }

    v56 = *(v13 + 4);
    v57 = v22 - 2;
    if (*v13 == 0.0 && v56 == 1.0)
    {
      if (v23 > v57)
      {
        goto LABEL_219;
      }

      v234 = a5 + 1;
      v235 = v57;
      v236 = v57 - v52;
      v237 = 4 * a5;
      if (v236 >= 0x30)
      {
        v238 = v52;
        v239 = &a3->i8[4 * v52];
        v240 = (4 * v236) & 0xFFFFFFFFFFFFFFF8;
        v241 = &v239[v240 + 8];
        v242 = 4 * v52 + 4 * v11;
        v243 = v242 + v240 - v237 + a2 + 8;
        v244 = a2 + v240;
        v245 = v242 + 4 * v234 + v244 + 4;
        v246 = v242 + v237 + v244 + 4;
        v247 = v239 >= v245 || v242 + a2 + 4 * v234 >= v241;
        v248 = !v247;
        v249 = v239 >= v246 || v242 + a2 + v237 >= v241;
        result = !v249;
        v250 = a2 + v242 - v237 >= v241 || v239 >= v243;
        if (v250 && !v248 && (result & 1) == 0)
        {
          v251 = (v236 >> 1) + 1;
          v252 = v251 & 3;
          if ((v251 & 3) == 0)
          {
            v252 = 4;
          }

          v253 = v251 - v252;
          v52 += 2 * v253;
          v54 += v253;
          v254 = &a3->f32[v238];
          result = a2 + v242 + 4 * v234;
          v255 = (a2 + v242 - v237);
          v256 = (a2 + v237 + v242);
          do
          {
            v257 = vld2q_f32(v256);
            v256 += 8;
            v505 = vld2q_f32(v255);
            v255 += 8;
            v500.val[0] = vsubq_f32(v257, v505.val[0]);
            v258 = vld2q_f32(result);
            result += 32;
            v500.val[1] = vsubq_f32(v258, v505.val[1]);
            vst2q_f32(v254, v500);
            v254 += 8;
            v253 -= 4;
          }

          while (v253);
        }
      }

      v259 = &a3->f32[v52 + 1];
      do
      {
        v260 = v54->f32[v234] - *(v54->f32 + 4 - v237);
        *(v259 - 1) = v54->f32[a5] - v54->f32[-a5];
        *v259 = v260;
        v52 += 2;
        ++v54;
        v259 += 2;
      }

      while (v52 <= v235);
    }

    else
    {
      if (v23 > v57)
      {
        goto LABEL_219;
      }

      v59 = a5 + 1;
      v60 = v57 - v23;
      if (v60 >= 0x28)
      {
        v61 = a3->u64 + 4 * v23;
        v62 = (4 * v60) & 0xFFFFFFFFFFFFFFF8;
        v63 = v61 + v62 + 8;
        v64 = 4 * v23 + 4 * v11;
        result = v64 - 4 * a5;
        v65 = v64 + v62 - 4 * a5 + a2 + 8;
        v66 = a2 + v62;
        v67 = v64 + 4 * a5 + v66 + 4;
        v68 = v61 >= v64 + 4 * v59 + v66 + 4 || v64 + a2 + 4 * v59 >= v63;
        v69 = !v68;
        v70 = v61 >= v67 || v64 + a2 + 4 * a5 >= v63;
        v71 = !v70;
        v72 = a2 + result >= v63 || v61 >= v65;
        if (v72 && !v69 && !v71)
        {
          v73 = (v60 >> 1) + 1;
          v74 = v73 & 3;
          if ((v73 & 3) == 0)
          {
            v74 = 4;
          }

          v75 = v73 - v74;
          v52 = v23 + 2 * v75;
          v54 += v75;
          v76 = &a3->f32[v23];
          v77 = (a2 + v64 + 4 * v59);
          result += a2;
          v78 = (a2 + 4 * a5 + v64);
          do
          {
            v79 = vld2q_f32(v78);
            v78 += 8;
            v506 = vld2q_f32(result);
            result += 32;
            v80 = vld2q_f32(v77);
            v77 += 8;
            v501.val[0] = vmulq_n_f32(vsubq_f32(v79, v506.val[0]), v56);
            v501.val[1] = vmulq_n_f32(vsubq_f32(v80, v506.val[1]), v56);
            vst2q_f32(v76, v501);
            v76 += 8;
            v75 -= 4;
          }

          while (v75);
        }
      }

      v81 = &a3->f32[v52];
      do
      {
        v82.i32[0] = v54->i32[a5];
        v82.i32[1] = v54->i32[v59];
        *v81++ = vmul_n_f32(vsub_f32(v82, *(v54 - 4 * a5)), v56);
        v52 += 2;
        ++v54;
      }

      while (v52 <= v57);
    }
  }

  LODWORD(v23) = v52;
LABEL_219:
  if (v23 < v22)
  {
    v261 = a5;
    v262 = (v10 / 2 + 1);
    v23 = v23;
    v263 = (v262 - 1) & 0xFFFFFFFFFFFFFFF8;
    v264 = (v263 | 1) * a5;
    v266 = v262 < 9 || a5 != 1;
    result = &v54[-2];
    v267 = (&v54[2] + 4);
    v268 = v12 + 4 * v499;
    v269 = 4 * a5;
    do
    {
      v270 = *v13 * v54->f32[0];
      if (v10 >= 2)
      {
        if (v266)
        {
          v271 = 1;
          v272 = v261;
        }

        else
        {
          v273 = (v268 + 20);
          v274 = v267;
          v275 = result;
          v276 = (v262 - 1) & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v277 = vrev64q_s32(*v275);
            v278 = vrev64q_s32(v275[-1]);
            v279 = vmulq_f32(v273[-1], vsubq_f32(v274[-1], vextq_s8(v277, v277, 8uLL)));
            v280 = vmulq_f32(*v273, vsubq_f32(*v274, vextq_s8(v278, v278, 8uLL)));
            v270 = (((((((v270 + v279.f32[0]) + v279.f32[1]) + v279.f32[2]) + v279.f32[3]) + v280.f32[0]) + v280.f32[1]) + v280.f32[2]) + v280.f32[3];
            v275 -= 2;
            v274 += 2;
            v273 += 2;
            v276 -= 8;
          }

          while (v276);
          v271 = v263 | 1;
          v272 = v264;
          if (v262 - 1 == v263)
          {
            goto LABEL_227;
          }
        }

        v281 = (v268 + 4 * v271);
        v282 = v262 - v271;
        v283 = 4 * v272;
        v284 = -v283;
        do
        {
          v285 = *v281++;
          v270 = v270 + (v285 * (*(v54->f32 + v283) - *(v54->f32 + v284)));
          v283 += v269;
          v284 -= v269;
          --v282;
        }

        while (v282);
      }

LABEL_227:
      a3->f32[v23++] = v270;
      v54 = (v54 + 4);
      result += 4;
      v267 = (v267 + 4);
    }

    while (v23 != v22);
  }

  return result;
}

void sub_10030F5CC(uint64_t a1)
{
  sub_10030DD9C(a1);

  operator delete();
}

uint64_t sub_10030F604(uint64_t a1, uint64_t a2, float32x4_t *a3, int a4, int a5)
{
  v10 = *(a1 + 8);
  v11 = *(a1 + 32);
  result = sub_1002A8904(100);
  if (result)
  {
    v15 = *(a1 + 120) + *(a1 + 124) - 1;
    v16 = v15 / 2 * a5;
    v17 = v16;
    v18 = (*(a1 + 128) + 4 * (v15 / 2));
    v19 = a5 * a4;
    if ((*(a1 + 208) & 1) == 0)
    {
      if (*(a1 + 120) + *(a1 + 124) == 6 && v19 >= 4)
      {
        v21 = 0;
        v22 = (v18 + 2);
        v23 = (v18 + 1);
        v24 = vld1q_dup_f32(v23);
        v25 = vld1q_dup_f32(v22);
        v26 = 4 * v17;
        v27 = 8 * a5;
        v28 = (a2 + v27 + 4 * v17);
        v29 = (a2 + v26 - v27);
        v30 = 4 * a5;
        v31 = (a2 + v30 + v26);
        v32 = (a2 + v26 - v30);
        v33 = a3;
        do
        {
          v34 = *v32++;
          v35 = v34;
          v36 = *v31++;
          v37 = v36;
          v38 = *v29++;
          v39 = v38;
          v40 = *v28++;
          *v33++ = vmlaq_f32(vmulq_f32(v24, vsubq_f32(v37, v35)), v25, vsubq_f32(v40, v39));
          v21 += 4;
        }

        while (v21 <= (v19 - 4));
        v41 = v19 - 4;
        if (v21 > v19 - 4)
        {
          goto LABEL_32;
        }

        goto LABEL_23;
      }

      goto LABEL_22;
    }

    if (*(a1 + 120) + *(a1 + 124) == 6)
    {
      v42 = *v18;
      if (*v18 == -2.0 && (v13.i32[0] = v18[1], *v13.i32 == 0.0))
      {
        v14.i32[0] = v18[2];
        if (*v14.i32 != 1.0 && v19 >= 4)
        {
LABEL_76:
          v95 = 0;
          v96 = 0;
          v97 = vdupq_lane_s32(v13, 0);
          v98 = 4 * v16;
          v99 = 8 * a5;
          v100 = a2 + v99 + v98;
          v101 = v98 - v99;
          v102 = 4 * a5;
          v103 = a2 + v102 + v98;
          v104 = vdupq_lane_s32(v14, 0);
          v105 = a2 + v101;
          v106 = a2 + v98 - v102;
          do
          {
            a3[v95 / 0x10] = vmlaq_f32(vmlaq_f32(vmulq_n_f32(*(a2 + v98 + v95), v42), v97, vaddq_f32(*(v106 + v95), *(v103 + v95))), v104, vaddq_f32(*(v105 + v95), *(v100 + v95)));
            v96 += 4;
            v95 += 16;
          }

          while (v96 <= (v19 - 4));
          LODWORD(v21) = v96;
          v41 = v19 - 4;
          if (v21 > v19 - 4)
          {
            goto LABEL_32;
          }

          goto LABEL_23;
        }
      }

      else if (v19 >= 4)
      {
        v13.i32[0] = v18[1];
        v14.i32[0] = v18[2];
        goto LABEL_76;
      }
    }

LABEL_22:
    LODWORD(v21) = 0;
    v41 = v19 - 4;
    if (v19 - 4 < 0)
    {
      goto LABEL_32;
    }

    goto LABEL_23;
  }

  LODWORD(v21) = 0;
  v19 = a5 * a4;
  v41 = a5 * a4 - 4;
  if (v41 < 0)
  {
    goto LABEL_32;
  }

LABEL_23:
  v21 = v21;
  if (v10 <= 1)
  {
    v50 = v19 - v21;
    v51 = v50 - 4;
    if ((v50 - 4) <= 0x1B)
    {
      goto LABEL_30;
    }

    v67 = 4 * v21;
    v68 = ((4 * v50 - 16) & 0xFFFFFFFFFFFFFFF0) + v67 + 16;
    v69 = a3 + v68;
    v70 = a3 + v67 >= a2 + v68 || a2 + 4 * v21 >= v69;
    v71 = !v70;
    if (v11 < v69 && a3 + v67 < (v11 + 1))
    {
      goto LABEL_30;
    }

    if (v71)
    {
      goto LABEL_30;
    }

    v73 = (v51 >> 2) + 1;
    v21 = v21 + 4 * (v73 & 0x7FFFFFFFFFFFFFFCLL);
    v74 = (a2 + v67);
    v75 = (a3 + v67);
    v76 = v73 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v77 = v74[2];
      v78 = v74[3];
      v79 = *v74;
      v80 = v74[1];
      v74 += 4;
      v81 = vmulq_n_f32(v80, *v11);
      v82 = vmulq_n_f32(v79, *v11);
      v83 = vmulq_n_f32(v78, *v11);
      v75[2] = vmulq_n_f32(v77, *v11);
      v75[3] = v83;
      *v75 = v82;
      v75[1] = v81;
      v75 += 4;
      v76 -= 4;
    }

    while (v76);
    if (v73 != (v73 & 0x7FFFFFFFFFFFFFFCLL))
    {
LABEL_30:
      v52 = (a2 + 4 * v21);
      v53 = (a3 + 4 * v21);
      do
      {
        v54 = *v52++;
        *v53++ = vmulq_n_f32(v54, *v11);
        v21 += 4;
      }

      while (v21 <= v41);
    }
  }

  else
  {
    v44 = 4 * a5;
    v45 = (a2 + v44 + 4 * v21);
    do
    {
      v46 = vmulq_n_f32(*(a2 + 4 * v21), *v11);
      v47 = v45;
      v48 = v10 - 1;
      result = (v11 + 1);
      do
      {
        v49 = *result;
        result += 4;
        v46 = vmlaq_n_f32(v46, *v47, v49);
        v47 = (v47 + v44);
        --v48;
      }

      while (v48);
      *(a3 + 4 * v21) = v46;
      v21 += 4;
      ++v45;
    }

    while (v21 <= v41);
  }

LABEL_32:
  if (v21 < v19)
  {
    v21 = v21;
    if (v10 <= 1)
    {
      v62 = v19 - v21;
      if (v62 <= 0xB)
      {
        goto LABEL_40;
      }

      v84 = 4 * v21;
      v85 = a3->u64 + 4 * v19;
      v86 = a3 + v84 >= a2 + 4 * v19 || a2 + 4 * v21 >= v85;
      v87 = !v86;
      if (v11 < v85 && a3 + v84 < (v11 + 1))
      {
        goto LABEL_40;
      }

      if (v87)
      {
        goto LABEL_40;
      }

      v21 = (v62 & 0xFFFFFFFFFFFFFFF8) + v21;
      v89 = vld1q_dup_f32(v11);
      v90 = v84 + 16;
      v91 = (a2 + v84 + 16);
      v92 = (a3 + v90);
      v93 = v62 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v94 = vmulq_f32(v89, *v91);
        v92[-1] = vmulq_f32(v89, v91[-1]);
        *v92 = v94;
        v91 += 2;
        v92 += 2;
        v93 -= 8;
      }

      while (v93);
      if (v62 != (v62 & 0xFFFFFFFFFFFFFFF8))
      {
LABEL_40:
        v63 = (a2 + 4 * v21);
        v64 = &a3->f32[v21];
        v65 = v19 - v21;
        do
        {
          v66 = *v63++;
          *v64++ = *v11 * v66;
          --v65;
        }

        while (v65);
      }
    }

    else
    {
      v55 = 4 * a5;
      v56 = (a2 + v55 + 4 * v21);
      do
      {
        v57 = *v11 * *(a2 + 4 * v21);
        v58 = v56;
        v59 = v10 - 1;
        v60 = v11 + 1;
        do
        {
          v61 = *v60++;
          v57 = v57 + (v61 * *v58);
          v58 = (v58 + v55);
          --v59;
        }

        while (v59);
        a3->f32[v21++] = v57;
        ++v56;
      }

      while (v21 != v19);
    }
  }

  return result;
}

uint64_t sub_10030FAC0(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_10030FB44(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = 1124007936;
  v6 = (a1 + 16);
  *(a1 + 20) = 0u;
  v7 = (a1 + 20);
  *a1 = off_100478D78;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v6 == a2)
    {
      goto LABEL_17;
    }

    v8 = *(a2 + 56);
    if (v8)
    {
      atomic_fetch_add((v8 + 20), 1u);
      v9 = *(a1 + 72);
      if (v9)
      {
        if (atomic_fetch_add((v9 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(a1 + 16);
        }
      }
    }

    *(a1 + 72) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    if (*(a1 + 20) <= 0)
    {
      *v6 = *a2;
      v13 = *(a2 + 4);
      if (v13 <= 2)
      {
LABEL_13:
        *(a1 + 20) = v13;
        *(a1 + 24) = *(a2 + 8);
        v14 = *(a2 + 72);
        v15 = *(a1 + 88);
        *v15 = *v14;
        v15[1] = v14[1];
LABEL_16:
        *(a1 + 32) = *(a2 + 16);
        *(a1 + 48) = *(a2 + 32);
        *(a1 + 64) = *(a2 + 48);
        goto LABEL_17;
      }
    }

    else
    {
      v10 = 0;
      v11 = *(a1 + 80);
      do
      {
        *(v11 + 4 * v10++) = 0;
        v12 = *v7;
      }

      while (v10 < v12);
      *v6 = *a2;
      if (v12 <= 2)
      {
        v13 = *(a2 + 4);
        if (v13 <= 2)
        {
          goto LABEL_13;
        }
      }
    }

    sub_100269B58(v6, a2);
    goto LABEL_16;
  }

  LODWORD(v19) = 33619968;
  v20 = a1 + 16;
  v21 = 0;
  sub_10022B754(a2, &v19);
LABEL_17:
  v17 = *(a1 + 24);
  v16 = *(a1 + 28);
  *(a1 + 8) = v17 + v16 - 1;
  *(a1 + 12) = a3;
  if ((*(a1 + 16) & 0xFFF) != 4 || v17 != 1 && v16 != 1)
  {
    v19 = 0;
    v20 = 0;
    qmemcpy(sub_1002A80E0(&v19, 77), "kernel.type() == DataType<DT>::type && (kernel.rows == 1 || kernel.cols == 1)", 77);
    sub_1002A8980(-215, &v19, "RowFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3053);
  }

  return a1;
}

uint64_t sub_10030FDB4(uint64_t a1)
{
  *a1 = off_100478D78;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

void sub_10030FE64(uint64_t a1)
{
  *a1 = off_100478D78;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  operator delete();
}

const float *sub_10030FF34(const float *result, int8x16_t *a2, unint64_t a3, int a4, int a5, int32x4_t a6, int32x4_t a7)
{
  v7 = *(result + 2);
  v8 = *(result + 4);
  v9 = (a5 * a4);
  v10 = (v9 - 4);
  if (v9 < 4)
  {
    LODWORD(v11) = 0;
    goto LABEL_13;
  }

  if (v7 > 1)
  {
    v11 = 0;
    v12 = (a2->u32 + a5);
    do
    {
      a6.i32[0] = a2->i32[v11 / 4];
      a7 = vld1q_dup_f32(v8);
      a6 = vmulq_s32(a7, vmovl_u16(*&vmovl_u8(*a6.i8)));
      v13 = v12;
      result = (v7 - 1);
      v14 = v8 + 1;
      do
      {
        a7.i32[0] = *v13;
        a7 = vmovl_u16(*&vmovl_u8(*a7.i8));
        v15 = vld1q_dup_f32(v14++);
        a6 = vmlaq_s32(a6, v15, a7);
        v13 = (v13 + a5);
        result = (result - 1);
      }

      while (result);
      *(a3 + 4 * v11) = a6;
      v11 += 4;
      ++v12;
    }

    while (v11 <= v10);
    goto LABEL_13;
  }

  if (v10 <= 0x3B)
  {
    v11 = 0;
LABEL_11:
    v16 = (a3 + 4 * v11);
    do
    {
      a6.i32[0] = a2->i32[v11 / 4];
      a7 = vld1q_dup_f32(v8);
      a6 = vmulq_s32(a7, vmovl_u16(*&vmovl_u8(*a6.i8)));
      *v16++ = a6;
      v11 += 4;
    }

    while (v11 <= v10);
    goto LABEL_13;
  }

  v11 = 0;
  v29 = a3 + ((4 * v10) & 0x1FFFFFFF0) + 16;
  v31 = a2->u64 + (v10 & 0x7FFFFFFC) + 4 > a3 && v29 > a2;
  if (v8 < v29 && (v8 + 1) > a3)
  {
    goto LABEL_11;
  }

  if (v31)
  {
    goto LABEL_11;
  }

  v33 = (v10 >> 2) + 1;
  v11 = 4 * (v33 & 0x3FFFFFF0);
  a6.i32[1] = -247;
  a7.i32[1] = -243;
  v34 = v33 & 0x3FFFFFF0;
  v35 = a3;
  v36 = a2;
  do
  {
    v37 = vld1q_dup_f32(v8);
    v38 = v36[2];
    v39 = v36[3];
    v40 = *v36;
    v41 = v36[1];
    v36 += 4;
    v35[14] = vmulq_s32(v37, vqtbl1q_s8(v39, xmmword_1003E3700));
    v35[15] = vmulq_s32(v37, vqtbl1q_s8(v39, xmmword_1003E3710));
    v35[12] = vmulq_s32(v37, vqtbl1q_s8(v39, xmmword_1003E3720));
    v35[13] = vmulq_s32(v37, vqtbl1q_s8(v39, xmmword_1003E3730));
    v35[10] = vmulq_s32(v37, vqtbl1q_s8(v38, xmmword_1003E3700));
    v35[11] = vmulq_s32(v37, vqtbl1q_s8(v38, xmmword_1003E3710));
    v35[8] = vmulq_s32(v37, vqtbl1q_s8(v38, xmmword_1003E3720));
    v35[9] = vmulq_s32(v37, vqtbl1q_s8(v38, xmmword_1003E3730));
    v35[6] = vmulq_s32(v37, vqtbl1q_s8(v41, xmmword_1003E3700));
    v35[7] = vmulq_s32(v37, vqtbl1q_s8(v41, xmmword_1003E3710));
    v35[4] = vmulq_s32(v37, vqtbl1q_s8(v41, xmmword_1003E3720));
    v35[5] = vmulq_s32(v37, vqtbl1q_s8(v41, xmmword_1003E3730));
    v35[2] = vmulq_s32(v37, vqtbl1q_s8(v40, xmmword_1003E3700));
    v35[3] = vmulq_s32(v37, vqtbl1q_s8(v40, xmmword_1003E3710));
    *v35 = vmulq_s32(v37, vqtbl1q_s8(v40, xmmword_1003E3720));
    v35[1] = vmulq_s32(v37, vqtbl1q_s8(v40, xmmword_1003E3730));
    v35 += 16;
    v34 -= 16;
  }

  while (v34);
  if (v33 != (v33 & 0x3FFFFFF0))
  {
    goto LABEL_11;
  }

LABEL_13:
  if (v11 >= v9)
  {
    return result;
  }

  v17 = v11;
  if (v7 <= 1)
  {
    v23 = v9 - v11;
    if (v23 < 4 || ((v42 = a3 + 4 * v11, v43 = a3 + 4 * v9, v44 = &a2->i8[v11], v42 < a2->u64 + v9) ? (v45 = v44 >= v43) : (v45 = 1), v45 ? (v46 = 0) : (v46 = 1), v8 < v43 ? (v47 = v42 >= (v8 + 1)) : (v47 = 1), !v47 || (v46 & 1) != 0))
    {
      v24 = v17;
      goto LABEL_22;
    }

    if (v23 >= 0x20)
    {
      v48 = v23 & 0xFFFFFFFFFFFFFFE0;
      v49 = vld1q_dup_f32(v8);
      v50 = (a2 + v17 + 16);
      v51 = (v42 + 64);
      a7.i32[1] = -247;
      v52 = v23 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v53 = v50[-1];
        v54 = vqtbl1q_s8(*v50, xmmword_1003E3700);
        v55 = vmulq_s32(v49, vqtbl1q_s8(*v50, xmmword_1003E3710));
        v56 = vmulq_s32(v49, vqtbl1q_s8(*v50, xmmword_1003E3720));
        v57 = vmulq_s32(v49, vqtbl1q_s8(*v50, xmmword_1003E3730));
        v51[-4] = vmulq_s32(v49, vqtbl1q_s8(v53, xmmword_1003E3720));
        v51[-3] = vmulq_s32(v49, vqtbl1q_s8(v53, xmmword_1003E3730));
        v51[-2] = vmulq_s32(v49, vqtbl1q_s8(v53, xmmword_1003E3700));
        v51[-1] = vmulq_s32(v49, vqtbl1q_s8(v53, xmmword_1003E3710));
        *v51 = v56;
        v51[1] = v57;
        v51[2] = vmulq_s32(v49, v54);
        v51[3] = v55;
        v50 += 2;
        v51 += 8;
        v52 -= 32;
      }

      while (v52);
      if (v23 == v48)
      {
        return result;
      }

      if ((v23 & 0x1C) == 0)
      {
        v24 = v48 + v17;
        goto LABEL_22;
      }
    }

    else
    {
      v48 = 0;
    }

    v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL) + v17;
    v58 = vld1q_dup_f32(v8);
    v59 = v48 - (v23 & 0xFFFFFFFFFFFFFFFCLL);
    v60 = v48 + v17;
    v61 = (a2->u32 + v60);
    v62 = (a3 + 4 * v60);
    do
    {
      v63 = *v61++;
      a7.i32[0] = v63;
      a7 = vmulq_s32(v58, vmovl_u16(*&vmovl_u8(*a7.i8)));
      *v62++ = a7;
      v59 += 4;
    }

    while (v59);
    if (v23 == (v23 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return result;
    }

LABEL_22:
    v25 = (a3 + 4 * v24);
    v26 = &a2->u8[v24];
    v27 = v9 - v24;
    do
    {
      v28 = *v26++;
      *v25++ = *v8 * v28;
      --v27;
    }

    while (v27);
    return result;
  }

  v18 = v7 - 1;
  do
  {
    v19 = *v8 * a2->u8[v17];
    v20 = &a2->i8[a5];
    v21 = v18;
    result = v8 + 1;
    do
    {
      v22 = *result++;
      v19 += v22 * v20[v17];
      v20 += a5;
      --v21;
    }

    while (v21);
    *(a3 + 4 * v17++) = v19;
  }

  while (v17 != v9);
  return result;
}

uint64_t sub_100310328(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_1003103AC(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = 1124007936;
  v6 = (a1 + 16);
  *(a1 + 20) = 0u;
  v7 = (a1 + 20);
  *a1 = off_100478DF8;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v6 == a2)
    {
      goto LABEL_17;
    }

    v8 = *(a2 + 56);
    if (v8)
    {
      atomic_fetch_add((v8 + 20), 1u);
      v9 = *(a1 + 72);
      if (v9)
      {
        if (atomic_fetch_add((v9 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(a1 + 16);
        }
      }
    }

    *(a1 + 72) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    if (*(a1 + 20) <= 0)
    {
      *v6 = *a2;
      v13 = *(a2 + 4);
      if (v13 <= 2)
      {
LABEL_13:
        *(a1 + 20) = v13;
        *(a1 + 24) = *(a2 + 8);
        v14 = *(a2 + 72);
        v15 = *(a1 + 88);
        *v15 = *v14;
        v15[1] = v14[1];
LABEL_16:
        *(a1 + 32) = *(a2 + 16);
        *(a1 + 48) = *(a2 + 32);
        *(a1 + 64) = *(a2 + 48);
        goto LABEL_17;
      }
    }

    else
    {
      v10 = 0;
      v11 = *(a1 + 80);
      do
      {
        *(v11 + 4 * v10++) = 0;
        v12 = *v7;
      }

      while (v10 < v12);
      *v6 = *a2;
      if (v12 <= 2)
      {
        v13 = *(a2 + 4);
        if (v13 <= 2)
        {
          goto LABEL_13;
        }
      }
    }

    sub_100269B58(v6, a2);
    goto LABEL_16;
  }

  LODWORD(v19) = 33619968;
  v20 = a1 + 16;
  v21 = 0;
  sub_10022B754(a2, &v19);
LABEL_17:
  v17 = *(a1 + 24);
  v16 = *(a1 + 28);
  *(a1 + 8) = v17 + v16 - 1;
  *(a1 + 12) = a3;
  if ((*(a1 + 16) & 0xFFF) != 5 || v17 != 1 && v16 != 1)
  {
    v19 = 0;
    v20 = 0;
    qmemcpy(sub_1002A80E0(&v19, 77), "kernel.type() == DataType<DT>::type && (kernel.rows == 1 || kernel.cols == 1)", 77);
    sub_1002A8980(-215, &v19, "RowFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3053);
  }

  return a1;
}

uint64_t sub_10031061C(uint64_t a1)
{
  *a1 = off_100478DF8;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

void sub_1003106CC(uint64_t a1)
{
  *a1 = off_100478DF8;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  operator delete();
}

float *sub_10031079C(float *result, const char *a2, unint64_t a3, int a4, int a5, float32x4_t a6, float32x4_t a7, float32x4_t a8)
{
  v8 = *(result + 2);
  v9 = *(result + 4);
  v10 = (a5 * a4);
  v11 = (v10 - 4);
  if (v10 < 4)
  {
    LODWORD(v12) = 0;
    goto LABEL_13;
  }

  if (v8 > 1)
  {
    v12 = 0;
    v13 = &a2[a5];
    do
    {
      a7.i32[0] = *&a2[v12];
      a7 = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*a7.f32)));
      a6 = vmulq_n_f32(a7, *v9);
      v14 = v13;
      result = (v8 - 1);
      v15 = v9 + 1;
      do
      {
        v16 = *v15++;
        a8.i32[0] = *v14;
        a8 = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*a8.f32)));
        a6 = vmlaq_n_f32(a6, a8, v16);
        v14 = (v14 + a5);
        result = (result - 1);
      }

      while (result);
      *(a3 + 4 * v12) = a6;
      v12 += 4;
      ++v13;
    }

    while (v12 <= v11);
    goto LABEL_13;
  }

  if (v11 <= 0x3B)
  {
    v12 = 0;
LABEL_11:
    v17 = (a3 + 4 * v12);
    do
    {
      a7.i32[0] = *&a2[v12];
      a7 = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*a7.f32)));
      a6 = vmulq_n_f32(a7, *v9);
      *v17++ = a6;
      v12 += 4;
    }

    while (v12 <= v11);
    goto LABEL_13;
  }

  v12 = 0;
  v30 = a3 + ((4 * v11) & 0x1FFFFFFF0) + 16;
  v32 = &a2[(v11 & 0x7FFFFFFC) + 4] > a3 && v30 > a2;
  if (v9 < v30 && (v9 + 1) > a3)
  {
    goto LABEL_11;
  }

  if (v32)
  {
    goto LABEL_11;
  }

  v34 = (v11 >> 2) + 1;
  v12 = 4 * (v34 & 0x3FFFFFF0);
  a6.i32[0] = -244;
  a7.i32[1] = -247;
  a8.i32[0] = -252;
  v35 = v34 & 0x3FFFFFF0;
  v36 = a3;
  v37 = a2;
  do
  {
    v38 = *v9;
    v64 = vld4q_s8(v37);
    v37 += 64;
    v39 = vcvtq_f32_u32(vqtbl1q_s8(v64.val[0], xmmword_1003E3710));
    v40 = vcvtq_f32_u32(vqtbl1q_s8(v64.val[1], xmmword_1003E3710));
    v41 = vcvtq_f32_u32(vqtbl1q_s8(v64.val[2], xmmword_1003E3710));
    v42 = vqtbl1q_s8(v64.val[3], xmmword_1003E3710);
    v62.val[1] = vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v64.val[1], xmmword_1003E3730)), *v9);
    v62.val[0] = vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v64.val[0], xmmword_1003E3730)), *v9);
    v62.val[3] = vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v64.val[3], xmmword_1003E3730)), *v9);
    v62.val[2] = vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v64.val[2], xmmword_1003E3730)), *v9);
    v63.val[1] = vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v64.val[1], xmmword_1003E3720)), *v9);
    v63.val[0] = vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v64.val[0], xmmword_1003E3720)), *v9);
    v63.val[3] = vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v64.val[3], xmmword_1003E3720)), *v9);
    v63.val[2] = vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v64.val[2], xmmword_1003E3720)), *v9);
    v43 = v36;
    vst4q_f32(v43, v63);
    v43 += 16;
    vst4q_f32(v43, v62);
    v64.val[1] = vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v64.val[1], xmmword_1003E3700)), v38);
    v64.val[0] = vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v64.val[0], xmmword_1003E3700)), v38);
    v64.val[3] = vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v64.val[3], xmmword_1003E3700)), v38);
    v64.val[2] = vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v64.val[2], xmmword_1003E3700)), v38);
    v44 = v36 + 32;
    vst4q_f32(v44, v64);
    v64.val[1] = vmulq_n_f32(v40, v38);
    v64.val[0] = vmulq_n_f32(v39, v38);
    v64.val[3] = vmulq_n_f32(vcvtq_f32_u32(v42), v38);
    v64.val[2] = vmulq_n_f32(v41, v38);
    result = v36 + 48;
    vst4q_f32(result, v64);
    v36 += 64;
    v35 -= 16;
  }

  while (v35);
  if (v34 != (v34 & 0x3FFFFFF0))
  {
    goto LABEL_11;
  }

LABEL_13:
  if (v12 >= v10)
  {
    return result;
  }

  v18 = v12;
  if (v8 <= 1)
  {
    v24 = v10 - v12;
    if (v24 < 4 || ((v45 = (a3 + 4 * v12), v46 = a3 + 4 * v10, v47 = &a2[v12], v45 < &a2[v10]) ? (v48 = v47 >= v46) : (v48 = 1), v48 ? (v49 = 0) : (v49 = 1), v9 < v46 ? (v50 = v45 >= (v9 + 1)) : (v50 = 1), !v50 || (v49 & 1) != 0))
    {
      v25 = v18;
      goto LABEL_22;
    }

    if (v24 >= 0x10)
    {
      v51 = v24 & 0xFFFFFFFFFFFFFFF0;
      v52 = vld1q_dup_f32(v9);
      v53 = &a2[v18];
      a7.i32[1] = -255;
      v54 = v24 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v55 = *v53++;
        v45[2] = vmulq_f32(v52, vcvtq_f32_u32(vqtbl1q_s8(v55, xmmword_1003E3700)));
        v45[3] = vmulq_f32(v52, vcvtq_f32_u32(vqtbl1q_s8(v55, xmmword_1003E3710)));
        *v45 = vmulq_f32(v52, vcvtq_f32_u32(vqtbl1q_s8(v55, xmmword_1003E3720)));
        v45[1] = vmulq_f32(v52, vcvtq_f32_u32(vqtbl1q_s8(v55, xmmword_1003E3730)));
        v45 += 4;
        v54 -= 16;
      }

      while (v54);
      if (v24 == v51)
      {
        return result;
      }

      if ((v24 & 0xC) == 0)
      {
        v25 = v51 + v18;
        goto LABEL_22;
      }
    }

    else
    {
      v51 = 0;
    }

    v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL) + v18;
    v56 = vld1q_dup_f32(v9);
    v57 = v51 - (v24 & 0xFFFFFFFFFFFFFFFCLL);
    v58 = v51 + v18;
    v59 = &a2[v58];
    v60 = (a3 + 4 * v58);
    do
    {
      v61 = *v59++;
      a7.i32[0] = v61;
      a7 = vmulq_f32(v56, vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*a7.f32))));
      *v60++ = a7;
      v57 += 4;
    }

    while (v57);
    if (v24 == (v24 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return result;
    }

LABEL_22:
    v26 = (a3 + 4 * v25);
    v27 = &a2[v25];
    v28 = v10 - v25;
    do
    {
      v29 = *v27++;
      *v26++ = *v9 * v29;
      --v28;
    }

    while (v28);
    return result;
  }

  v19 = v8 - 1;
  do
  {
    a6.i8[0] = a2[v18];
    a6.f32[0] = *v9 * a6.u32[0];
    v20 = &a2[a5];
    v21 = v19;
    v22 = v9 + 1;
    do
    {
      v23 = *v22++;
      a8.i8[0] = v20[v18];
      a8.f32[0] = a8.u32[0];
      a6.f32[0] = a6.f32[0] + (v23 * a8.f32[0]);
      v20 += a5;
      --v21;
    }

    while (v21);
    *(a3 + 4 * v18++) = a6.i32[0];
  }

  while (v18 != v10);
  return result;
}

uint64_t sub_100310BE0(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_100310C64(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = 1124007936;
  v6 = (a1 + 16);
  *(a1 + 20) = 0u;
  v7 = (a1 + 20);
  *a1 = off_100478E78;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v6 == a2)
    {
      goto LABEL_17;
    }

    v8 = *(a2 + 56);
    if (v8)
    {
      atomic_fetch_add((v8 + 20), 1u);
      v9 = *(a1 + 72);
      if (v9)
      {
        if (atomic_fetch_add((v9 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(a1 + 16);
        }
      }
    }

    *(a1 + 72) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    if (*(a1 + 20) <= 0)
    {
      *v6 = *a2;
      v13 = *(a2 + 4);
      if (v13 <= 2)
      {
LABEL_13:
        *(a1 + 20) = v13;
        *(a1 + 24) = *(a2 + 8);
        v14 = *(a2 + 72);
        v15 = *(a1 + 88);
        *v15 = *v14;
        v15[1] = v14[1];
LABEL_16:
        *(a1 + 32) = *(a2 + 16);
        *(a1 + 48) = *(a2 + 32);
        *(a1 + 64) = *(a2 + 48);
        goto LABEL_17;
      }
    }

    else
    {
      v10 = 0;
      v11 = *(a1 + 80);
      do
      {
        *(v11 + 4 * v10++) = 0;
        v12 = *v7;
      }

      while (v10 < v12);
      *v6 = *a2;
      if (v12 <= 2)
      {
        v13 = *(a2 + 4);
        if (v13 <= 2)
        {
          goto LABEL_13;
        }
      }
    }

    sub_100269B58(v6, a2);
    goto LABEL_16;
  }

  LODWORD(v19) = 33619968;
  v20 = a1 + 16;
  v21 = 0;
  sub_10022B754(a2, &v19);
LABEL_17:
  v17 = *(a1 + 24);
  v16 = *(a1 + 28);
  *(a1 + 8) = v17 + v16 - 1;
  *(a1 + 12) = a3;
  if ((*(a1 + 16) & 0xFFF) != 6 || v17 != 1 && v16 != 1)
  {
    v19 = 0;
    v20 = 0;
    qmemcpy(sub_1002A80E0(&v19, 77), "kernel.type() == DataType<DT>::type && (kernel.rows == 1 || kernel.cols == 1)", 77);
    sub_1002A8980(-215, &v19, "RowFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3053);
  }

  return a1;
}

uint64_t sub_100310ED4(uint64_t a1)
{
  *a1 = off_100478E78;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

void sub_100310F84(uint64_t a1)
{
  *a1 = off_100478E78;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  operator delete();
}

double *sub_100311054(double *result, const char *a2, unint64_t a3, int a4, int a5, double a6, double a7, float64x2_t a8, double a9, float64x2_t a10, double a11)
{
  v11 = *(result + 2);
  v12 = *(result + 4);
  v13 = (a5 * a4);
  v14 = (v13 - 4);
  if (v13 < 4)
  {
    LODWORD(v15) = 0;
    goto LABEL_14;
  }

  if (v11 > 1)
  {
    v15 = 0;
    v16 = &a2[a5 + 1];
    do
    {
      LOBYTE(a6) = a2[v15];
      a6 = *v12 * *&a6;
      LOBYTE(a7) = a2[v15 + 1];
      a7 = *v12 * *&a7;
      LOBYTE(a8.f64[0]) = a2[v15 + 2];
      a8.f64[0] = *v12 * *&a8.f64[0];
      LOBYTE(a10.f64[0]) = a2[v15 + 3];
      v17 = *v12 * *&a10.f64[0];
      v18 = v16;
      result = (v11 - 1);
      v19 = v12 + 1;
      do
      {
        v20 = *v19++;
        a10.f64[0] = v20;
        LOBYTE(a11) = *(v18 - 1);
        *&v21 = *&a11;
        a6 = a6 + v20 * *&v21;
        LOBYTE(v21) = *v18;
        *&v22 = v21;
        a7 = a7 + v20 * *&v22;
        LOBYTE(v22) = v18[1];
        *&v23 = v22;
        a8.f64[0] = a8.f64[0] + v20 * *&v23;
        LOBYTE(v23) = v18[2];
        a11 = v23;
        v17 = v17 + v20 * a11;
        v18 += a5;
        result = (result - 1);
      }

      while (result);
      v24 = (a3 + 8 * v15);
      *v24 = a6;
      v24[1] = a7;
      v24[2] = a8.f64[0];
      v24[3] = v17;
      v15 += 4;
      v16 += 4;
    }

    while (v15 <= v14);
    goto LABEL_14;
  }

  if (v14 <= 0x3B)
  {
    v15 = 0;
LABEL_11:
    v25 = v15 + 3;
    v26 = &a2[v15 + 3];
    v27 = (a3 + 8 * v15 + 16);
    do
    {
      LOBYTE(a7) = *(v26 - 3);
      a7 = *v12 * *&a7;
      LOBYTE(a8.f64[0]) = *(v26 - 2);
      a8.f64[0] = *v12 * *&a8.f64[0];
      LOBYTE(a9) = *(v26 - 1);
      a9 = *v12 * *&a9;
      LOBYTE(a10.f64[0]) = *v26;
      a10.f64[0] = *&a10.f64[0];
      a6 = *v12 * a10.f64[0];
      *(v27 - 2) = a7;
      *(v27 - 1) = a8.f64[0];
      v28 = v25 + 4;
      v29 = v25 + 1;
      *v27 = a9;
      v27[1] = a6;
      v27 += 4;
      v26 += 4;
      v25 += 4;
    }

    while (v29 <= v14);
    LODWORD(v15) = v28 - 3;
    goto LABEL_14;
  }

  v15 = 0;
  v42 = a3 + ((8 * v14) & 0x3FFFFFFE0) + 32;
  v44 = &a2[(v14 & 0x7FFFFFFC) + 4] > a3 && v42 > a2;
  if (v12 < v42 && (v12 + 1) > a3)
  {
    goto LABEL_11;
  }

  if (v44)
  {
    goto LABEL_11;
  }

  v46 = (v14 >> 2) + 1;
  v15 = 4 * (v46 & 0x3FFFFFF0);
  *&a6 = 0xFF000000FFLL;
  v47 = v46 & 0x3FFFFFF0;
  v48 = a3;
  v49 = a2;
  do
  {
    a7 = *v12;
    v118 = vld4q_s8(v49);
    v49 += 64;
    v50 = vextq_s8(v118.val[0], v118.val[0], 8uLL).u64[0];
    v51.i32[0] = v118.val[0].u8[0];
    v51.i32[1] = v118.val[0].u8[1];
    v52 = vand_s8(v51, 0xFF000000FFLL);
    v53.i64[0] = v52.u32[0];
    v53.i64[1] = v52.u32[1];
    v54.i32[0] = v118.val[0].u8[2];
    v54.i32[1] = v118.val[0].u8[3];
    v55 = vcvtq_f64_u64(v53);
    v56 = vand_s8(v54, 0xFF000000FFLL);
    v53.i64[0] = v56.u32[0];
    v53.i64[1] = v56.u32[1];
    v57 = v53;
    v58.i32[0] = v118.val[1].u8[0];
    v58.i32[1] = v118.val[1].u8[1];
    v59 = vand_s8(v58, 0xFF000000FFLL);
    v53.i64[0] = v59.u32[0];
    v53.i64[1] = v59.u32[1];
    v119.val[1] = vmulq_n_f64(vcvtq_f64_u64(v53), *v12);
    v119.val[0] = vmulq_n_f64(v55, *v12);
    LODWORD(v55.f64[0]) = v118.val[3].u8[0];
    HIDWORD(v55.f64[0]) = v118.val[3].u8[1];
    *&v55.f64[0] = vand_s8(*&v55.f64[0], 0xFF000000FFLL);
    v53.i64[0] = LODWORD(v55.f64[0]);
    v53.i64[1] = HIDWORD(v55.f64[0]);
    v119.val[3] = vmulq_n_f64(vcvtq_f64_u64(v53), *v12);
    LODWORD(v55.f64[0]) = v118.val[2].u8[0];
    HIDWORD(v55.f64[0]) = v118.val[2].u8[1];
    *&v55.f64[0] = vand_s8(*&v55.f64[0], 0xFF000000FFLL);
    v53.i64[0] = LODWORD(v55.f64[0]);
    v53.i64[1] = HIDWORD(v55.f64[0]);
    v119.val[2] = vmulq_n_f64(vcvtq_f64_u64(v53), *v12);
    LODWORD(v55.f64[0]) = v118.val[1].u8[2];
    HIDWORD(v55.f64[0]) = v118.val[1].u8[3];
    *&v55.f64[0] = vand_s8(*&v55.f64[0], 0xFF000000FFLL);
    v53.i64[0] = LODWORD(v55.f64[0]);
    v53.i64[1] = HIDWORD(v55.f64[0]);
    v60 = v48;
    vst4q_f64(v60, v119);
    v60 += 8;
    LODWORD(v119.val[0].f64[0]) = v118.val[3].u8[2];
    HIDWORD(v119.val[0].f64[0]) = v118.val[3].u8[3];
    v119.val[2] = vmulq_n_f64(vcvtq_f64_u64(v53), a7);
    v119.val[1] = vmulq_n_f64(vcvtq_f64_u64(v57), a7);
    *&v55.f64[0] = vand_s8(*&v119.val[0].f64[0], 0xFF000000FFLL);
    v53.i64[0] = LODWORD(v55.f64[0]);
    v53.i64[1] = HIDWORD(v55.f64[0]);
    v61 = vmulq_n_f64(vcvtq_f64_u64(v53), a7);
    LODWORD(v55.f64[0]) = v118.val[2].u8[2];
    HIDWORD(v55.f64[0]) = v118.val[2].u8[3];
    *&v55.f64[0] = vand_s8(*&v55.f64[0], 0xFF000000FFLL);
    v53.i64[0] = LODWORD(v55.f64[0]);
    v53.i64[1] = HIDWORD(v55.f64[0]);
    v119.val[3] = vmulq_n_f64(vcvtq_f64_u64(v53), a7);
    LODWORD(v55.f64[0]) = v118.val[0].u8[4];
    HIDWORD(v55.f64[0]) = v118.val[0].u8[5];
    *&v55.f64[0] = vand_s8(*&v55.f64[0], 0xFF000000FFLL);
    v53.i64[0] = LODWORD(v55.f64[0]);
    v53.i64[1] = HIDWORD(v55.f64[0]);
    v62 = vcvtq_f64_u64(v53);
    vst4q_f64(v60, *(&v119 + 16));
    v57.i32[0] = v118.val[1].u8[4];
    v57.i32[1] = v118.val[1].u8[5];
    *v57.i8 = vand_s8(*v57.i8, 0xFF000000FFLL);
    v53.i64[0] = v57.u32[0];
    v53.i64[1] = v57.u32[1];
    v119.val[0] = vmulq_n_f64(vcvtq_f64_u64(v53), a7);
    v63 = vmulq_n_f64(v62, a7);
    LODWORD(v62.f64[0]) = v118.val[3].u8[4];
    HIDWORD(v62.f64[0]) = v118.val[3].u8[5];
    *&v62.f64[0] = vand_s8(*&v62.f64[0], 0xFF000000FFLL);
    v53.i64[0] = LODWORD(v62.f64[0]);
    v53.i64[1] = HIDWORD(v62.f64[0]);
    v119.val[2] = vmulq_n_f64(vcvtq_f64_u64(v53), a7);
    LODWORD(v62.f64[0]) = v118.val[2].u8[4];
    HIDWORD(v62.f64[0]) = v118.val[2].u8[5];
    *&v62.f64[0] = vand_s8(*&v62.f64[0], 0xFF000000FFLL);
    v53.i64[0] = LODWORD(v62.f64[0]);
    v53.i64[1] = HIDWORD(v62.f64[0]);
    v119.val[1] = vmulq_n_f64(vcvtq_f64_u64(v53), a7);
    LODWORD(v62.f64[0]) = v118.val[0].u8[6];
    HIDWORD(v62.f64[0]) = v118.val[0].u8[7];
    v64 = v48 + 16;
    vst4q_f64(v64, v119);
    *&v62.f64[0] = vand_s8(*&v62.f64[0], 0xFF000000FFLL);
    v53.i64[0] = LODWORD(v62.f64[0]);
    v53.i64[1] = HIDWORD(v62.f64[0]);
    v65 = vcvtq_f64_u64(v53);
    LODWORD(v63.f64[0]) = v118.val[1].u8[6];
    HIDWORD(v63.f64[0]) = v118.val[1].u8[7];
    *&v63.f64[0] = vand_s8(*&v63.f64[0], 0xFF000000FFLL);
    v53.i64[0] = LODWORD(v63.f64[0]);
    v53.i64[1] = HIDWORD(v63.f64[0]);
    v119.val[0] = vmulq_n_f64(vcvtq_f64_u64(v53), a7);
    v66 = vmulq_n_f64(v65, a7);
    LODWORD(v65.f64[0]) = v118.val[3].u8[6];
    HIDWORD(v65.f64[0]) = v118.val[3].u8[7];
    *&v65.f64[0] = vand_s8(*&v65.f64[0], 0xFF000000FFLL);
    v53.i64[0] = LODWORD(v65.f64[0]);
    v53.i64[1] = HIDWORD(v65.f64[0]);
    v119.val[2] = vmulq_n_f64(vcvtq_f64_u64(v53), a7);
    LODWORD(v65.f64[0]) = v118.val[2].u8[6];
    HIDWORD(v65.f64[0]) = v118.val[2].u8[7];
    *&v65.f64[0] = vand_s8(*&v65.f64[0], 0xFF000000FFLL);
    v53.i64[0] = LODWORD(v65.f64[0]);
    v53.i64[1] = HIDWORD(v65.f64[0]);
    v119.val[1] = vmulq_n_f64(vcvtq_f64_u64(v53), a7);
    LODWORD(v65.f64[0]) = v50;
    HIDWORD(v65.f64[0]) = BYTE1(v50);
    *&v65.f64[0] = vand_s8(*&v65.f64[0], 0xFF000000FFLL);
    v53.i64[0] = LODWORD(v65.f64[0]);
    v53.i64[1] = HIDWORD(v65.f64[0]);
    v119.val[3] = vcvtq_f64_u64(v53);
    v67 = v48 + 24;
    vst4q_f64(v67, v119);
    LODWORD(v65.f64[0]) = BYTE2(v50);
    HIDWORD(v65.f64[0]) = BYTE3(v50);
    *&v119.val[0].f64[0] = vand_s8(*&v65.f64[0], 0xFF000000FFLL);
    *&v65.f64[0] = vextq_s8(v118.val[1], v118.val[1], 8uLL).u64[0];
    LODWORD(v66.f64[0]) = LOBYTE(v65.f64[0]);
    HIDWORD(v66.f64[0]) = BYTE1(v65.f64[0]);
    *&v66.f64[0] = vand_s8(*&v66.f64[0], 0xFF000000FFLL);
    v53.i64[0] = LODWORD(v66.f64[0]);
    v53.i64[1] = HIDWORD(v66.f64[0]);
    *&v66.f64[0] = vextq_s8(v118.val[2], v118.val[2], 8uLL).u64[0];
    *&a9 = vextq_s8(v118.val[3], v118.val[3], 8uLL).u64[0];
    v120.val[1] = vmulq_n_f64(vcvtq_f64_u64(v53), a7);
    v120.val[0] = vmulq_n_f64(v119.val[3], a7);
    v118.val[1].i32[0] = LOBYTE(a9);
    v118.val[1].i32[1] = BYTE1(a9);
    v53.i64[0] = LODWORD(v119.val[0].f64[0]);
    v53.i64[1] = HIDWORD(v119.val[0].f64[0]);
    v118.val[2] = v53;
    *v118.val[1].i8 = vand_s8(*v118.val[1].i8, 0xFF000000FFLL);
    v53.i64[0] = v118.val[1].u32[0];
    v53.i64[1] = v118.val[1].u32[1];
    v120.val[3] = vmulq_n_f64(vcvtq_f64_u64(v53), a7);
    v118.val[1].i32[0] = LOBYTE(v66.f64[0]);
    v118.val[1].i32[1] = BYTE1(v66.f64[0]);
    *v118.val[1].i8 = vand_s8(*v118.val[1].i8, 0xFF000000FFLL);
    v53.i64[0] = v118.val[1].u32[0];
    v53.i64[1] = v118.val[1].u32[1];
    v120.val[2] = vmulq_n_f64(vcvtq_f64_u64(v53), a7);
    v118.val[1].i32[0] = BYTE4(v50);
    v118.val[1].i32[1] = BYTE5(v50);
    v68 = v48 + 32;
    vst4q_f64(v68, v120);
    v118.val[3].i32[0] = BYTE2(v65.f64[0]);
    v118.val[3].i32[1] = BYTE3(v65.f64[0]);
    *v118.val[3].i8 = vand_s8(*v118.val[3].i8, 0xFF000000FFLL);
    v53.i64[0] = v118.val[3].u32[0];
    v53.i64[1] = v118.val[3].u32[1];
    v119.val[1] = vmulq_n_f64(vcvtq_f64_u64(v53), a7);
    v119.val[0] = vmulq_n_f64(vcvtq_f64_u64(v118.val[2]), a7);
    v118.val[2].i32[0] = BYTE2(a9);
    *v118.val[1].i8 = vand_s8(*v118.val[1].i8, 0xFF000000FFLL);
    v118.val[2].i32[1] = BYTE3(a9);
    *v118.val[2].i8 = vand_s8(*v118.val[2].i8, 0xFF000000FFLL);
    v53.i64[0] = v118.val[2].u32[0];
    v53.i64[1] = v118.val[2].u32[1];
    v119.val[3] = vmulq_n_f64(vcvtq_f64_u64(v53), a7);
    v118.val[2].i32[0] = BYTE2(v66.f64[0]);
    v53.i64[0] = v118.val[1].u32[0];
    v53.i64[1] = v118.val[1].u32[1];
    v118.val[1] = v53;
    v118.val[2].i32[1] = BYTE3(v66.f64[0]);
    *v118.val[2].i8 = vand_s8(*v118.val[2].i8, 0xFF000000FFLL);
    v53.i64[0] = v118.val[2].u32[0];
    v53.i64[1] = v118.val[2].u32[1];
    v119.val[2] = vmulq_n_f64(vcvtq_f64_u64(v53), a7);
    v118.val[2].i32[0] = BYTE4(v65.f64[0]);
    v118.val[2].i32[1] = BYTE5(v65.f64[0]);
    *v118.val[2].i8 = vand_s8(*v118.val[2].i8, 0xFF000000FFLL);
    v53.i64[0] = v118.val[2].u32[0];
    v53.i64[1] = v118.val[2].u32[1];
    v69 = v48 + 40;
    vst4q_f64(v69, v119);
    v118.val[3].i32[0] = BYTE4(v66.f64[0]);
    v118.val[3].i32[1] = BYTE5(v66.f64[0]);
    v119.val[1] = vmulq_n_f64(vcvtq_f64_u64(v53), a7);
    v119.val[0] = vmulq_n_f64(vcvtq_f64_u64(v118.val[1]), a7);
    v118.val[1].i32[0] = BYTE4(a9);
    v118.val[1].i32[1] = BYTE5(a9);
    *v118.val[1].i8 = vand_s8(*v118.val[1].i8, 0xFF000000FFLL);
    v53.i64[0] = v118.val[1].u32[0];
    v53.i64[1] = v118.val[1].u32[1];
    v119.val[3] = vmulq_n_f64(vcvtq_f64_u64(v53), a7);
    *v118.val[1].i8 = vand_s8(*v118.val[3].i8, 0xFF000000FFLL);
    v53.i64[0] = v118.val[1].u32[0];
    v53.i64[1] = v118.val[1].u32[1];
    v119.val[2] = vmulq_n_f64(vcvtq_f64_u64(v53), a7);
    v70 = v48 + 48;
    vst4q_f64(v70, v119);
    v118.val[1].i32[0] = BYTE6(v50);
    v118.val[1].i32[1] = HIBYTE(v50);
    v71 = vand_s8(*v118.val[1].i8, 0xFF000000FFLL);
    v53.i64[0] = v71.u32[0];
    v53.i64[1] = v71.u32[1];
    v72 = vcvtq_f64_u64(v53);
    v118.val[1].i32[0] = BYTE6(v65.f64[0]);
    v118.val[1].i32[1] = HIBYTE(v65.f64[0]);
    *v118.val[1].i8 = vand_s8(*v118.val[1].i8, 0xFF000000FFLL);
    v53.i64[0] = v118.val[1].u32[0];
    v53.i64[1] = v118.val[1].u32[1];
    a10 = vcvtq_f64_u64(v53);
    v118.val[2].i32[0] = BYTE6(v66.f64[0]);
    v118.val[2].i32[1] = HIBYTE(v66.f64[0]);
    v119.val[0] = vmulq_n_f64(a10, a7);
    v73 = vmulq_n_f64(v72, a7);
    LODWORD(v72.f64[0]) = BYTE6(a9);
    HIDWORD(v72.f64[0]) = HIBYTE(a9);
    *&v72.f64[0] = vand_s8(*&v72.f64[0], 0xFF000000FFLL);
    v53.i64[0] = LODWORD(v72.f64[0]);
    v53.i64[1] = HIDWORD(v72.f64[0]);
    v119.val[2] = vmulq_n_f64(vcvtq_f64_u64(v53), a7);
    *&v72.f64[0] = vand_s8(*v118.val[2].i8, 0xFF000000FFLL);
    v53.i64[0] = LODWORD(v72.f64[0]);
    v53.i64[1] = HIDWORD(v72.f64[0]);
    a8 = vcvtq_f64_u64(v53);
    v119.val[1] = vmulq_n_f64(a8, a7);
    result = v48 + 56;
    vst4q_f64(result, v119);
    v48 += 64;
    v47 -= 16;
  }

  while (v47);
  if (v46 != (v46 & 0x3FFFFFF0))
  {
    goto LABEL_11;
  }

LABEL_14:
  if (v15 >= v13)
  {
    return result;
  }

  v30 = v15;
  if (v11 <= 1)
  {
    v36 = v13 - v15;
    if (v36 < 4 || ((v74 = a3 + 8 * v15, v75 = a3 + 8 * v13, v76 = &a2[v15], v74 < &a2[v13]) ? (v77 = v76 >= v75) : (v77 = 1), v77 ? (v78 = 0) : (v78 = 1), v12 < v75 ? (v79 = v74 >= (v12 + 1)) : (v79 = 1), !v79 || (v78 & 1) != 0))
    {
      v37 = v30;
      goto LABEL_23;
    }

    if (v36 >= 0x10)
    {
      v80 = v36 & 0xFFFFFFFFFFFFFFF0;
      v81 = vld1q_dup_f64(v12);
      v82 = &a2[v30];
      v83 = v36 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v84 = *v82++;
        v85 = vextq_s8(v84, v84, 8uLL).u64[0];
        v86.i32[0] = BYTE6(v85);
        v86.i32[1] = HIBYTE(v85);
        v87 = vand_s8(v86, 0xFF000000FFLL);
        v88.i64[0] = v87.u32[0];
        v88.i64[1] = v87.u32[1];
        v89.i32[0] = BYTE4(v85);
        v90 = vcvtq_f64_u64(v88);
        v89.i32[1] = BYTE5(v85);
        v91 = vand_s8(v89, 0xFF000000FFLL);
        v88.i64[0] = v91.u32[0];
        v88.i64[1] = v91.u32[1];
        v92.i32[0] = BYTE2(v85);
        v92.i32[1] = BYTE3(v85);
        v93 = vcvtq_f64_u64(v88);
        v94 = vand_s8(v92, 0xFF000000FFLL);
        v88.i64[0] = v94.u32[0];
        v88.i64[1] = v94.u32[1];
        v95 = vcvtq_f64_u64(v88);
        v92.i32[0] = v85;
        v92.i32[1] = BYTE1(v85);
        v96 = vand_s8(v92, 0xFF000000FFLL);
        v88.i64[0] = v96.u32[0];
        v88.i64[1] = v96.u32[1];
        v92.i32[0] = v84.u8[6];
        v97 = vcvtq_f64_u64(v88);
        v92.i32[1] = v84.u8[7];
        v98 = vand_s8(v92, 0xFF000000FFLL);
        v88.i64[0] = v98.u32[0];
        v88.i64[1] = v98.u32[1];
        v99.i32[0] = v84.u8[4];
        v99.i32[1] = v84.u8[5];
        v100 = vcvtq_f64_u64(v88);
        v101 = vand_s8(v99, 0xFF000000FFLL);
        v88.i64[0] = v101.u32[0];
        v88.i64[1] = v101.u32[1];
        v102 = vcvtq_f64_u64(v88);
        v103.i32[0] = v84.u8[2];
        v103.i32[1] = v84.u8[3];
        v104 = vand_s8(v103, 0xFF000000FFLL);
        v88.i64[0] = v104.u32[0];
        v88.i64[1] = v104.u32[1];
        v105.i32[0] = v84.u8[0];
        v106 = vcvtq_f64_u64(v88);
        v105.i32[1] = v84.u8[1];
        v107 = vand_s8(v105, 0xFF000000FFLL);
        v88.i64[0] = v107.u32[0];
        v88.i64[1] = v107.u32[1];
        *(v74 + 32) = vmulq_f64(v81, v102);
        *(v74 + 48) = vmulq_f64(v81, v100);
        *v74 = vmulq_f64(v81, vcvtq_f64_u64(v88));
        *(v74 + 16) = vmulq_f64(v81, v106);
        *(v74 + 96) = vmulq_f64(v81, v93);
        *(v74 + 112) = vmulq_f64(v81, v90);
        a8 = vmulq_f64(v81, v95);
        *(v74 + 64) = vmulq_f64(v81, v97);
        *(v74 + 80) = a8;
        v74 += 128;
        v83 -= 16;
      }

      while (v83);
      if (v36 == v80)
      {
        return result;
      }

      if ((v36 & 0xC) == 0)
      {
        v37 = v80 + v30;
        goto LABEL_23;
      }
    }

    else
    {
      v80 = 0;
    }

    v108 = vld1q_dup_f64(v12);
    v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL) + v30;
    v109 = v80 - (v36 & 0xFFFFFFFFFFFFFFFCLL);
    v110 = v80 + v30;
    v111 = &a2[v110];
    v112 = (a3 + 8 * v110);
    do
    {
      v113 = *v111++;
      LODWORD(a8.f64[0]) = v113;
      v114 = vmovl_u16(*&vmovl_u8(*&a8.f64[0]));
      v115 = vand_s8(*v114.i8, 0xFF000000FFLL);
      v116.i64[0] = v115.u32[0];
      v116.i64[1] = v115.u32[1];
      v117 = vcvtq_f64_u64(v116);
      *v114.i8 = vand_s8(*&vextq_s8(v114, v114, 8uLL), 0xFF000000FFLL);
      v116.i64[0] = v114.u32[0];
      v116.i64[1] = v114.u32[1];
      a8 = vmulq_f64(v108, vcvtq_f64_u64(v116));
      *v112 = vmulq_f64(v108, v117);
      v112[1] = a8;
      v112 += 2;
      v109 += 4;
    }

    while (v109);
    if (v36 == (v36 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return result;
    }

LABEL_23:
    v38 = (a3 + 8 * v37);
    v39 = &a2[v37];
    v40 = v13 - v37;
    do
    {
      v41 = *v39++;
      *v38++ = *v12 * v41;
      --v40;
    }

    while (v40);
    return result;
  }

  v31 = v11 - 1;
  do
  {
    LOBYTE(a6) = a2[v30];
    a6 = *v12 * *&a6;
    v32 = &a2[a5];
    v33 = v31;
    v34 = v12 + 1;
    do
    {
      v35 = *v34++;
      LOBYTE(a8.f64[0]) = v32[v30];
      a8.f64[0] = *&a8.f64[0];
      a6 = a6 + v35 * a8.f64[0];
      v32 += a5;
      --v33;
    }

    while (v33);
    *(a3 + 8 * v30++) = a6;
  }

  while (v30 != v13);
  return result;
}