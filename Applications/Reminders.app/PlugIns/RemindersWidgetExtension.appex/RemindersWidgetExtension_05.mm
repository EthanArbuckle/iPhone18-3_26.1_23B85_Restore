uint64_t sub_100080D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = sub_1000C0E58();
  v10 = *(v9 - 8);
  v11 = v10 + 32;
  v12 = *(v10 + 80);
  v13 = (v7 + v12 + 8) & ~v12;
  v14 = (v8 + v12 + 8) & ~v12;
  (*(v10 + 32))(v13, v14, v9);
  v15 = *(v11 + 32) + 7;
  v16 = ((v15 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + v14) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v18 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  *((v18 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_100080E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = sub_1000C0E58();
  v10 = *(v9 - 8);
  v11 = v10 + 40;
  v12 = *(v10 + 80);
  v13 = (v7 + v12 + 8) & ~v12;
  v14 = (v8 + v12 + 8) & ~v12;
  (*(v10 + 40))(v13, v14, v9);
  v15 = *(v11 + 24) + 7;
  v16 = ((v15 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + v14) & 0xFFFFFFFFFFFFFFF8);
  v18 = *v16;
  *v16 = *v17;

  v19 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  v21 = *v19;
  *v19 = *v20;
  v19 += 15;

  v22 = *(v19 & 0xFFFFFFFFFFFFFFF8);
  *(v19 & 0xFFFFFFFFFFFFFFF8) = *((v20 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_100080F9C(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_1000C0E58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v10 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = *(v9 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(*(v8 - 8) + 64) + 7;
  if (v13 >= a2)
  {
    goto LABEL_29;
  }

  v15 = ((((((v14 + ((v12 + ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v13 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v13 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v7 == v13)
  {
    v24 = *(v6 + 48);

    return v24(a1, v7, v5);
  }

  else
  {
    v25 = (((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12;
    if (v10 == v13)
    {
      v26 = *(v9 + 48);

      return v26(v25);
    }

    else
    {
      v27 = *((v14 + v25) & 0xFFFFFFFFFFFFFFF8);
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      return (v27 + 1);
    }
  }
}

void sub_100081220(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v27 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_1000C0E58() - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  v15 = *(v10 + 64) + 7;
  v16 = ((((((v15 + ((v13 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v14 >= a3)
  {
    v19 = 0;
    v20 = a2 - v14;
    if (a2 <= v14)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((((((v15 + ((v13 + ((v12 + 7) & 0xFFFFFFF8) + 8) & ~v13)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v17 = a3 - v14 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = a2 - v14;
    if (a2 <= v14)
    {
LABEL_19:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *(a1 + v16) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v16) = 0;
      }

      else if (v19)
      {
        *(a1 + v16) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      if (v9 == v14)
      {
        v23 = *(v27 + 56);

        v23(a1, a2, v9, v7);
      }

      else
      {
        v24 = (((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + v13 + 8) & ~v13;
        if (v11 == v14)
        {
          v25 = *(v10 + 56);

          v25(v24, a2);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v26 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v26 = (a2 - 1);
          }

          *((v15 + v24) & 0xFFFFFFFFFFFFFFF8) = v26;
        }
      }

      return;
    }
  }

  if (((((((v15 + ((v13 + ((v12 + 7) & 0xFFFFFFF8) + 8) & ~v13)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v21 = v20;
  }

  else
  {
    v21 = 1;
  }

  if (((((((v15 + ((v13 + ((v12 + 7) & 0xFFFFFFF8) + 8) & ~v13)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v22 = ~v14 + a2;
    bzero(a1, v16);
    *a1 = v22;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      *(a1 + v16) = v21;
    }

    else
    {
      *(a1 + v16) = v21;
    }
  }

  else if (v19)
  {
    *(a1 + v16) = v21;
  }
}

uint64_t sub_100081508(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = sub_1000C0E58();
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *sub_1000815F0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = sub_1000C0E58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 64);
  v12 = ((((v11 + ((((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v13 = v10 | *(v6 + 80) & 0xF8;
  if (v13 > 7 || ((*(v6 + 80) | *(v9 + 80)) & 0x100000) != 0 || v12 > 0x18)
  {
    v16 = *a2;
    *a1 = *a2;
    a1 = (v16 + (((v13 | 7) + 16) & ~(v13 | 7)));
  }

  else
  {
    v17 = v8;
    (*(v6 + 16))(a1, a2, v5);
    v18 = ((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    v19 = ((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v19 = *v18;
    (*(v9 + 16))(v19 + 1, v18 + 1, v17);
    v20 = ((((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + v11 + 15) & 0xFFFFFFFFFFFFFFF8);
    v21 = ((v18 + v11 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v20 = *v21;
    *((v20 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  return a1;
}

uint64_t sub_1000817D4(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_1000C0E58();
  v6 = *(v5 - 8);
  v7 = v6 + 8;
  v8 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  (*(v6 + 8))(v8, v5);
  v9 = *(v7 + 56) + v8 + 7;
  v11 = (v9 & 0xFFFFFFFFFFFFFFF8) + 15;
  v10 = *(v9 & 0xFFFFFFFFFFFFFFF8);

  v12 = *(v11 & 0xFFFFFFFFFFFFFFF8);
}

uint64_t sub_1000818A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = sub_1000C0E58();
  v10 = *(v9 - 8);
  v11 = v10 + 16;
  v12 = *(v10 + 80);
  v13 = (v7 + v12 + 8) & ~v12;
  v14 = (v8 + v12 + 8) & ~v12;
  (*(v10 + 16))(v13, v14, v9);
  v15 = *(v11 + 48) + 7;
  v16 = ((v15 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + v14) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  *((v16 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v17 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_1000819BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = sub_1000C0E58();
  v10 = *(v9 - 8);
  v11 = v10 + 24;
  v12 = *(v10 + 80);
  v13 = (v7 + v12 + 8) & ~v12;
  v14 = (v8 + v12 + 8) & ~v12;
  (*(v10 + 24))(v13, v14, v9);
  v15 = *(v11 + 40) + 7;
  v16 = (v15 + v13) & 0xFFFFFFFFFFFFFFF8;
  v17 = v15 + v14;
  v18 = (v17 & 0xFFFFFFFFFFFFFFF8) + 15;
  v19 = *v16;
  *v16 = *(v17 & 0xFFFFFFFFFFFFFFF8);
  v16 += 15;

  v20 = *(v16 & 0xFFFFFFFFFFFFFFF8);
  *(v16 & 0xFFFFFFFFFFFFFFF8) = *(v18 & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_100081AE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = sub_1000C0E58();
  v10 = *(v9 - 8);
  v11 = v10 + 32;
  v12 = *(v10 + 80);
  v13 = (v7 + v12 + 8) & ~v12;
  v14 = (v8 + v12 + 8) & ~v12;
  (*(v10 + 32))(v13, v14, v9);
  v15 = *(v11 + 32) + 7;
  v16 = ((v15 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + v14) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  *((v16 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_100081BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = sub_1000C0E58();
  v10 = *(v9 - 8);
  v11 = v10 + 40;
  v12 = *(v10 + 80);
  v13 = (v7 + v12 + 8) & ~v12;
  v14 = (v8 + v12 + 8) & ~v12;
  (*(v10 + 40))(v13, v14, v9);
  v15 = *(v11 + 24) + 7;
  v16 = (v15 + v13) & 0xFFFFFFFFFFFFFFF8;
  v17 = ((v15 + v14) & 0xFFFFFFFFFFFFFFF8);
  v18 = *v16;
  *v16 = *v17;
  v16 += 15;

  v19 = *(v16 & 0xFFFFFFFFFFFFFFF8);
  *(v16 & 0xFFFFFFFFFFFFFFF8) = *((v17 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_100081D04(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_1000C0E58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v10 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = *(v9 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(*(v8 - 8) + 64) + 7;
  if (v13 >= a2)
  {
    goto LABEL_29;
  }

  v15 = ((((v14 + ((v12 + ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v13 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v13 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v7 == v13)
  {
    v24 = *(v6 + 48);

    return v24(a1, v7, v5);
  }

  else
  {
    v25 = (((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12;
    if (v10 == v13)
    {
      v26 = *(v9 + 48);

      return v26(v25);
    }

    else
    {
      v27 = *((v14 + v25) & 0xFFFFFFFFFFFFFFF8);
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      return (v27 + 1);
    }
  }
}

void sub_100081F80(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v27 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_1000C0E58() - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  v15 = *(v10 + 64) + 7;
  v16 = ((((v15 + ((v13 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v14 >= a3)
  {
    v19 = 0;
    v20 = a2 - v14;
    if (a2 <= v14)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((((v15 + ((v13 + ((v12 + 7) & 0xFFFFFFF8) + 8) & ~v13)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v17 = a3 - v14 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = a2 - v14;
    if (a2 <= v14)
    {
LABEL_19:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *(a1 + v16) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v16) = 0;
      }

      else if (v19)
      {
        *(a1 + v16) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      if (v9 == v14)
      {
        v23 = *(v27 + 56);

        v23(a1, a2, v9, v7);
      }

      else
      {
        v24 = (((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + v13 + 8) & ~v13;
        if (v11 == v14)
        {
          v25 = *(v10 + 56);

          v25(v24, a2);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v26 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v26 = (a2 - 1);
          }

          *((v15 + v24) & 0xFFFFFFFFFFFFFFF8) = v26;
        }
      }

      return;
    }
  }

  if (((((v15 + ((v13 + ((v12 + 7) & 0xFFFFFFF8) + 8) & ~v13)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v21 = v20;
  }

  else
  {
    v21 = 1;
  }

  if (((((v15 + ((v13 + ((v12 + 7) & 0xFFFFFFF8) + 8) & ~v13)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v22 = ~v14 + a2;
    bzero(a1, v16);
    *a1 = v22;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      *(a1 + v16) = v21;
    }

    else
    {
      *(a1 + v16) = v21;
    }
  }

  else if (v19)
  {
    *(a1 + v16) = v21;
  }
}

char *sub_100082260(char *a1, char *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v5 = a3[5];
    v6 = &a1[v5];
    v7 = &a2[v5];
    v10 = sub_1000C0AF8();
    v11 = *(*(v10 - 8) + 16);
    v11(v6, v7, v10);
    v12 = sub_100004D04(&qword_1000EE310, &qword_1000C6380);
    v11(&v6[*(v12 + 36)], &v7[*(v12 + 36)], v10);
    v13 = a3[6];
    v14 = sub_1000C1388();
    (*(*(v14 - 8) + 16))(&v3[v13], &a2[v13], v14);
    v11(&v3[a3[7]], &a2[a3[7]], v10);
  }

  return v3;
}

uint64_t sub_1000823D0(uint64_t a1, int *a2)
{
  v4 = a1 + a2[5];
  v5 = sub_1000C0AF8();
  v11 = *(*(v5 - 8) + 8);
  (v11)((v5 - 8), v4, v5);
  v6 = sub_100004D04(&qword_1000EE310, &qword_1000C6380);
  v11(v4 + *(v6 + 36), v5);
  v7 = a2[6];
  v8 = sub_1000C1388();
  (*(*(v8 - 8) + 8))(a1 + v7, v8);
  v9 = a1 + a2[7];

  return (v11)(v9, v5);
}

char *sub_1000824E4(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = &a1[v6];
  v8 = &a2[v6];
  v9 = sub_1000C0AF8();
  v10 = *(*(v9 - 8) + 16);
  v10(v7, v8, v9);
  v11 = sub_100004D04(&qword_1000EE310, &qword_1000C6380);
  v10(&v7[*(v11 + 36)], &v8[*(v11 + 36)], v9);
  v12 = a3[6];
  v13 = sub_1000C1388();
  (*(*(v13 - 8) + 16))(&a1[v12], &a2[v12], v13);
  v10(&a1[a3[7]], &a2[a3[7]], v9);
  return a1;
}

char *sub_100082608(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = &a1[v6];
  v8 = &a2[v6];
  v9 = sub_1000C0AF8();
  v10 = *(*(v9 - 8) + 24);
  v10(v7, v8, v9);
  v11 = sub_100004D04(&qword_1000EE310, &qword_1000C6380);
  v10(&v7[*(v11 + 36)], &v8[*(v11 + 36)], v9);
  v12 = a3[6];
  v13 = sub_1000C1388();
  (*(*(v13 - 8) + 24))(&a1[v12], &a2[v12], v13);
  v10(&a1[a3[7]], &a2[a3[7]], v9);
  return a1;
}

char *sub_10008272C(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = &a1[v6];
  v8 = &a2[v6];
  v9 = sub_1000C0AF8();
  v10 = *(*(v9 - 8) + 32);
  v10(v7, v8, v9);
  v11 = sub_100004D04(&qword_1000EE310, &qword_1000C6380);
  v10(&v7[*(v11 + 36)], &v8[*(v11 + 36)], v9);
  v12 = a3[6];
  v13 = sub_1000C1388();
  (*(*(v13 - 8) + 32))(&a1[v12], &a2[v12], v13);
  v10(&a1[a3[7]], &a2[a3[7]], v9);
  return a1;
}

char *sub_100082850(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = &a1[v6];
  v8 = &a2[v6];
  v9 = sub_1000C0AF8();
  v10 = *(*(v9 - 8) + 40);
  v10(v7, v8, v9);
  v11 = sub_100004D04(&qword_1000EE310, &qword_1000C6380);
  v10(&v7[*(v11 + 36)], &v8[*(v11 + 36)], v9);
  v12 = a3[6];
  v13 = sub_1000C1388();
  (*(*(v13 - 8) + 40))(&a1[v12], &a2[v12], v13);
  v10(&a1[a3[7]], &a2[a3[7]], v9);
  return a1;
}

uint64_t sub_100082988(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100004D04(&qword_1000EE310, &qword_1000C6380);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_1000C1388();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = sub_1000C0AF8();
  v14 = *(*(v13 - 8) + 48);
  v15 = a1 + a3[7];

  return v14(v15, a2, v13);
}

uint64_t sub_100082AE4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100004D04(&qword_1000EE310, &qword_1000C6380);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  v12 = sub_1000C1388();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_5;
  }

  v15 = sub_1000C0AF8();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

void sub_100082C38()
{
  sub_100082D4C();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = sub_1000C1388();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_1000C0AF8();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_initStructMetadata();
      }
    }
  }
}

void sub_100082D4C()
{
  if (!qword_1000EFDE0)
  {
    sub_1000C0AF8();
    sub_10007CDD4(&qword_1000EE318, &type metadata accessor for Date);
    v0 = sub_1000C25F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1000EFDE0);
    }
  }
}

char *sub_100082DE0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *v4 = *a2;
    v4 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = *(a2 + 3);
    *(a1 + 24) = v7;
    (**(v7 - 8))(a1, a2);
    *(v4 + 5) = a2[5];
    v8 = *(a3 + 24);
    v9 = sub_1000C0AF8();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(a2 + v8, 1, v9))
    {
      v11 = sub_100004D04(&qword_1000EE300, &unk_1000C6370);
      memcpy(&v4[v8], a2 + v8, *(*(v11 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(&v4[v8], a2 + v8, v9);
      (*(v10 + 56))(&v4[v8], 0, 1, v9);
    }
  }

  return v4;
}

uint64_t sub_100082F80(uint64_t *a1, uint64_t a2)
{
  sub_10002285C(a1);
  v4 = *(a2 + 24);
  v5 = sub_1000C0AF8();
  v8 = *(v5 - 8);
  result = (*(v8 + 48))(a1 + v4, 1, v5);
  if (!result)
  {
    v7 = *(v8 + 8);

    return v7(a1 + v4, v5);
  }

  return result;
}

uint64_t sub_100083050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 24);
  *(a1 + 24) = v6;
  (**(v6 - 8))();
  *(a1 + 40) = *(a2 + 40);
  v7 = *(a3 + 24);
  v8 = sub_1000C0AF8();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(a2 + v7, 1, v8))
  {
    v10 = sub_100004D04(&qword_1000EE300, &unk_1000C6370);
    memcpy((a1 + v7), (a2 + v7), *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a1 + v7, a2 + v7, v8);
    (*(v9 + 56))(a1 + v7, 0, 1, v8);
  }

  return a1;
}

uint64_t *sub_10008319C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  sub_10008331C(a1, a2);
  a1[5] = a2[5];
  v6 = *(a3 + 24);
  v7 = sub_1000C0AF8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(a1 + v6, 1, v7);
  v11 = v9(a2 + v6, 1, v7);
  if (!v10)
  {
    if (!v11)
    {
      (*(v8 + 24))(a1 + v6, a2 + v6, v7);
      return a1;
    }

    (*(v8 + 8))(a1 + v6, v7);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    v12 = sub_100004D04(&qword_1000EE300, &unk_1000C6370);
    memcpy(a1 + v6, a2 + v6, *(*(v12 - 8) + 64));
    return a1;
  }

  (*(v8 + 16))(a1 + v6, a2 + v6, v7);
  (*(v8 + 56))(a1 + v6, 0, 1, v7);
  return a1;
}

uint64_t *sub_10008331C(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;
        v16 = result;

        *v16 = v15;
      }

      else
      {
        v11 = *(v10 + 24);
        v12 = result[3];

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v17);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v17, v2);
      }
    }
  }

  return result;
}

uint64_t sub_100083538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;
  v7 = *(a3 + 24);
  v8 = sub_1000C0AF8();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(a2 + v7, 1, v8))
  {
    v10 = sub_100004D04(&qword_1000EE300, &unk_1000C6370);
    memcpy((a1 + v7), (a2 + v7), *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))(a1 + v7, a2 + v7, v8);
    (*(v9 + 56))(a1 + v7, 0, 1, v8);
  }

  return a1;
}

uint64_t sub_100083654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10002285C(a1);
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  v7 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v7;
  v8 = *(a3 + 24);
  v9 = sub_1000C0AF8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v11(a1 + v8, 1, v9);
  v13 = v11(a2 + v8, 1, v9);
  if (!v12)
  {
    if (!v13)
    {
      (*(v10 + 40))(a1 + v8, a2 + v8, v9);
      return a1;
    }

    (*(v10 + 8))(a1 + v8, v9);
    goto LABEL_6;
  }

  if (v13)
  {
LABEL_6:
    v14 = sub_100004D04(&qword_1000EE300, &unk_1000C6370);
    memcpy((a1 + v8), (a2 + v8), *(*(v14 - 8) + 64));
    return a1;
  }

  (*(v10 + 32))(a1 + v8, a2 + v8, v9);
  (*(v10 + 56))(a1 + v8, 0, 1, v9);
  return a1;
}

uint64_t sub_1000837F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100004D04(&qword_1000EE300, &unk_1000C6370);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000838C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100004D04(&qword_1000EE300, &unk_1000C6370);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100083970()
{
  sub_100083A30(319, &unk_1000EFE80, &type metadata accessor for Date);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initStructMetadata();
  }
}

void sub_100083A30(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000C2A58();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100083BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_100083C8C@<X0>(void *a1@<X8>)
{
  sub_10003C298();
  result = sub_1000C1948();
  *a1 = v3;
  return result;
}

uint64_t sub_100083CDC(uint64_t *a1)
{
  v2 = *a1;
  sub_10003C298();

  return sub_1000C1958();
}

uint64_t sub_100083D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v81 = sub_100004D04(&qword_1000EFF30, &qword_1000C7FE8);
  v3 = *(*(v81 - 8) + 64);
  __chkstk_darwin(v81);
  v83 = &v63 - v4;
  v82 = type metadata accessor for TTRAnyListWidget.UrgentAlarmSnoozeReminderView(0);
  v5 = *(*(v82 - 8) + 64);
  __chkstk_darwin(v82);
  v68 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1000C0AF8();
  v67 = *(v80 - 8);
  v7 = *(v67 + 64);
  __chkstk_darwin(v80);
  v66 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1000C0EF8();
  v65 = *(v79 - 8);
  v9 = *(v65 + 64);
  __chkstk_darwin(v79);
  v64 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v78 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000C22C8();
  v72 = *(v14 - 8);
  v73 = v14;
  v15 = v72[8];
  __chkstk_darwin(v14);
  v71 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1000C22E8();
  v69 = *(v70 - 8);
  v17 = *(v69 + 64);
  __chkstk_darwin(v70);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000C22B8();
  v76 = *(v20 - 8);
  v77 = v20;
  v21 = *(v76 + 64);
  __chkstk_darwin(v20);
  v75 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100004D04(&qword_1000EFF38, &qword_1000C7FF0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v63 - v25;
  v27 = sub_100004D04(&qword_1000EFEB8, &qword_1000C7F98);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v63 - v30;
  v32 = sub_1000C1148();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v36 = &v63 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004D04(&qword_1000EFF40, &qword_1000C7FF8);
  v74 = a1;
  sub_1000C23C8();
  sub_1000C2298();
  v37 = v31;
  v38 = v32;
  v39 = v33;
  (*(v28 + 8))(v37, v27);
  if ((*(v33 + 48))(v26, 1, v38) == 1)
  {
    sub_1000084C0(v26, &qword_1000EFF38, &qword_1000C7FF0);
  }

  else
  {
    (*(v33 + 32))(v36, v26, v38);
    v40 = [objc_allocWithZone(REMStore) init];
    v41 = sub_1000C1138();
    v85[0] = 0;
    v42 = [v40 fetchReminderWithObjectID:v41 error:v85];

    v43 = v36;
    if (v42)
    {
      v44 = v85[0];
      sub_1000C23D8();
      v45 = v71;
      sub_1000C22D8();
      (*(v69 + 8))(v19, v70);
      v47 = v72;
      v46 = v73;
      if ((v72[11])(v45, v73) == enum case for AlarmPresentationState.Mode.countdown(_:))
      {
        (v47[12])(v45, v46);
        (*(v76 + 32))();
        v48 = v78;
        sub_10008479C(v42, v78);
        v49 = [v42 list];
        v85[3] = sub_10007E3A8(0, &qword_1000EFF48, REMList_ptr);
        v85[4] = &protocol witness table for REMList;
        v85[0] = v49;
        v50 = v64;
        sub_1000C0ED8();
        v51 = v66;
        sub_1000C22A8();
        v73 = v43;
        v74 = v38;
        v52 = v68;
        sub_100085DC8(v48, v68, type metadata accessor for TTRNewWidgetViewModel.Reminder);
        v53 = v82;
        v54 = v65;
        (*(v65 + 16))(v52 + *(v82 + 20), v50, v79);
        v55 = v53[6];
        v72 = v42;
        v56 = v67;
        (*(v67 + 16))(v52 + v55, v51, v80);
        v57 = v53[7];
        *(v52 + v57) = swift_getKeyPath();
        sub_100004D04(&qword_1000EDDB8, &qword_1000C8030);
        swift_storeEnumTagMultiPayload();
        v58 = v53[8];
        *(v52 + v58) = swift_getKeyPath();
        sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
        swift_storeEnumTagMultiPayload();
        v59 = v52 + v53[9];
        *v59 = swift_getKeyPath();
        *(v59 + 8) = 0;
        v60 = v53[10];
        *(v52 + v60) = swift_getKeyPath();
        swift_storeEnumTagMultiPayload();
        sub_100085DC8(v52, v83, type metadata accessor for TTRAnyListWidget.UrgentAlarmSnoozeReminderView);
        swift_storeEnumTagMultiPayload();
        sub_1000856AC();
        sub_1000C1AE8();

        sub_100085E94(v52, type metadata accessor for TTRAnyListWidget.UrgentAlarmSnoozeReminderView);
        (*(v56 + 8))(v51, v80);
        (*(v54 + 8))(v50, v79);
        sub_100085E94(v78, type metadata accessor for TTRNewWidgetViewModel.Reminder);
        (*(v76 + 8))(v75, v77);
        return (*(v39 + 8))(v73, v74);
      }

      (*(v39 + 8))(v36, v38);

      (v47[1])(v45, v46);
    }

    else
    {
      v62 = v85[0];
      sub_1000C0868();

      swift_willThrow();

      (*(v33 + 8))(v36, v38);
    }
  }

  swift_storeEnumTagMultiPayload();
  sub_1000856AC();
  return sub_1000C1AE8();
}

uint64_t sub_10008479C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = sub_1000C1118();
  v62 = *(v3 - 8);
  v63 = v3;
  v4 = *(v62 + 64);
  __chkstk_darwin(v3);
  v59 = (&v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v58 = &v58 - v7;
  v67 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v8 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67);
  v10 = (&v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1000C0B68();
  v65 = *(v11 - 8);
  v66 = v11;
  v12 = *(v65 + 64);
  __chkstk_darwin(v11);
  v64 = (&v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_100004D04(&qword_1000EFF50, &qword_1000C8D10);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v61 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = (&v58 - v18);
  v20 = sub_100004D04(&qword_1000EE300, &unk_1000C6370);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v58 - v22;
  v24 = sub_1000C0AF8();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v58 - v30;
  v32 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
  v33 = v32 - 8;
  v34 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v36 = &v58 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v36 + 3) = sub_10007E3A8(0, &qword_1000EFB90, REMReminder_ptr);
  *(v36 + 4) = &protocol witness table for REMReminder;
  *v36 = a1;
  v37 = *(v33 + 32);
  (*(v25 + 56))(&v36[v37], 1, 1, v24);
  *(v36 + 5) = 0;
  sub_1000239F4(v36, v69);
  v38 = a1;
  sub_1000C0AE8();
  sub_1000082B4(&v36[v37], v23, &qword_1000EE300, &unk_1000C6370);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_1000084C0(v23, &qword_1000EE300, &unk_1000C6370);
    v39 = v38;
    v40 = *(v36 + 4);
    sub_100026D74(v36, *(v36 + 3));
    v38 = v39;
    v60 = sub_1000C0DA8();
    (*(v25 + 8))(v31, v24);
  }

  else
  {
    (*(v25 + 32))(v28, v23, v24);
    v60 = sub_1000C0A98();
    v41 = *(v25 + 8);
    v41(v28, v24);
    v41(v31, v24);
  }

  v42 = *(sub_100004D04(&qword_1000EDA50, &unk_1000C8CD0) + 48);
  *v19 = [v38 objectID];
  sub_1000C10E8();
  v44 = v62;
  v43 = v63;
  (*(v62 + 104))(v19, enum case for REMNavigationSpecifier.reminder(_:), v63);
  (*(v44 + 56))(v19, 0, 1, v43);
  v45 = v64;
  sub_1000C0B58();
  sub_100026D74(v69, v70);
  v46 = sub_1000C0DC8();
  v47 = v67;
  if (!v46)
  {
    v46 = [objc_allocWithZone(NSAttributedString) init];
  }

  *v10 = v46;
  sub_100026D74(v69, v70);
  v10[1] = sub_1000C0D98();
  sub_100024434(v69, 1, v45, v10 + v47[6]);
  v48 = v61;
  sub_1000082B4(v19, v61, &qword_1000EFF50, &qword_1000C8D10);
  if ((*(v44 + 48))(v48, 1, v43) == 1)
  {
    sub_1000084C0(v48, &qword_1000EFF50, &qword_1000C8D10);
    sub_100026D74(v69, v70);
    v49 = sub_1000C0DD8();
    v50 = [v49 urlRepresentation];

    v51 = v10 + v47[7];
    sub_1000C0908();
  }

  else
  {
    v52 = v58;
    (*(v44 + 32))(v58, v48, v43);
    v53 = v59;
    sub_100026384(v69, v59);
    v54 = v10 + v47[7];
    sub_1000C1108();
    v55 = *(v44 + 8);
    v55(v53, v43);
    v55(v52, v43);
  }

  sub_100026D74(v69, v70);
  *(v10 + v47[8]) = sub_1000C0DD8();
  *(v10 + v47[10]) = v60 & 1;
  *(v10 + v47[9]) = 0;
  sub_100026D74(v69, v70);
  v56 = sub_1000C0DF8();
  (*(v65 + 8))(v45, v66);
  sub_1000084C0(v19, &qword_1000EFF50, &qword_1000C8D10);
  *(v10 + v47[11]) = v56 & 1;
  sub_100085E30(v10, v68);
  sub_10002285C(v69);
  return sub_100085E94(v36, type metadata accessor for TTRNewWidgetInteractorReminderWrapper);
}

uint64_t sub_100084F70()
{
  sub_100004D04(&qword_1000EFEE0, &qword_1000C7FA8);
  sub_100008478(&qword_1000EFEE8, &qword_1000EFEE0, &qword_1000C7FA8);
  return sub_1000C23A8();
}

uint64_t sub_100085070@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v28 = sub_100004D04(&qword_1000EFEF0, &qword_1000C7FB0);
  v26 = *(v28 - 8);
  v1 = *(v26 + 64);
  __chkstk_darwin(v28);
  v3 = &v23 - v2;
  v4 = sub_100004D04(&qword_1000EFEF8, &qword_1000C7FB8);
  v24 = *(v4 - 8);
  v25 = v4;
  v5 = *(v24 + 64);
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = sub_1000C2548();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_100004D04(&qword_1000EFF00, &qword_1000C7FC0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v23 - v16;
  __chkstk_darwin(v18);
  v20 = &v23 - v19;
  sub_1000C2528();
  sub_1000C24E8();
  sub_1000C2538();
  sub_1000C24E8();
  sub_1000C2518();
  sub_1000C24E8();
  v33 = v20;
  sub_100004D04(&qword_1000EFF08, &qword_1000C7FC8);
  v34 = &type metadata for EmptyView;
  v35 = &protocol witness table for EmptyView;
  swift_getOpaqueTypeConformance2();
  v23 = v7;
  sub_1000C24F8();
  v31 = v7;
  v32 = v17;
  sub_100004D04(&qword_1000EFF10, &qword_1000C7FD0);
  sub_100008478(&qword_1000EFF18, &qword_1000EFF10, &qword_1000C7FD0);
  sub_1000C24F8();
  v29 = v3;
  v30 = v14;
  sub_100004D04(&qword_1000EFEE0, &qword_1000C7FA8);
  sub_100008478(&qword_1000EFEE8, &qword_1000EFEE0, &qword_1000C7FA8);
  sub_1000C24F8();
  (*(v26 + 8))(v3, v28);
  (*(v24 + 8))(v23, v25);
  v21 = *(v11 + 8);
  v21(v14, v10);
  v21(v17, v10);
  return (v21)(v20, v10);
}

uint64_t sub_100085530()
{
  sub_100004D04(&qword_1000EFEB8, &qword_1000C7F98);
  sub_100004D04(&qword_1000EFEC0, &qword_1000C7FA0);
  sub_100008478(&qword_1000EFEC8, &qword_1000EFEB8, &qword_1000C7F98);
  sub_100085620();
  return sub_1000C2428();
}

unint64_t sub_100085620()
{
  result = qword_1000EFED0;
  if (!qword_1000EFED0)
  {
    sub_100005334(&qword_1000EFEC0, &qword_1000C7FA0);
    sub_1000856AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFED0);
  }

  return result;
}

unint64_t sub_1000856AC()
{
  result = qword_1000EFED8;
  if (!qword_1000EFED8)
  {
    type metadata accessor for TTRAnyListWidget.UrgentAlarmSnoozeReminderView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFED8);
  }

  return result;
}

uint64_t sub_100085704()
{
  v1 = *(v0 + 16);
  sub_100004D04(&qword_1000EFF00, &qword_1000C7FC0);
  return sub_1000C24D8();
}

uint64_t sub_100085744@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100004D04(&qword_1000EFF08, &qword_1000C7FC8);
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  v10 = sub_100004D04(&qword_1000EFF10, &qword_1000C7FD0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v21 - v15;
  sub_100004D04(&qword_1000EFEF0, &qword_1000C7FB0);
  sub_1000C2508();
  sub_100004D04(&qword_1000EFF00, &qword_1000C7FC0);
  sub_1000C24D8();
  sub_100085BD4(v16, v13);
  v17 = v3[2];
  v17(v6, v9, v2);
  sub_100085BD4(v13, a1);
  v18 = sub_100004D04(&qword_1000EFF20, &qword_1000C7FD8);
  v17((a1 + *(v18 + 48)), v6, v2);
  v19 = v3[1];
  v19(v9, v2);
  sub_100085C44(v16);
  v19(v6, v2);
  return sub_100085C44(v13);
}

uint64_t sub_100085984@<X0>(char *a1@<X8>)
{
  v2 = sub_100004D04(&qword_1000EFF08, &qword_1000C7FC8);
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  __chkstk_darwin(v13);
  v15 = &v20 - v14;
  sub_100004D04(&qword_1000EFEF8, &qword_1000C7FB8);
  sub_1000C2508();
  sub_100004D04(&qword_1000EFF00, &qword_1000C7FC0);
  sub_1000C24D8();
  v16 = v3[2];
  v16(v9, v15, v2);
  v16(v6, v12, v2);
  v16(a1, v9, v2);
  v17 = sub_100004D04(&qword_1000EFF28, &qword_1000C7FE0);
  v16(&a1[*(v17 + 48)], v6, v2);
  v18 = v3[1];
  v18(v12, v2);
  v18(v15, v2);
  v18(v6, v2);
  return (v18)(v9, v2);
}

uint64_t sub_100085BC4@<X0>(char *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_100085984(a1);
}

uint64_t sub_100085BCC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_100085744(a1);
}

uint64_t sub_100085BD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004D04(&qword_1000EFF10, &qword_1000C7FD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100085C44(uint64_t a1)
{
  v2 = sub_100004D04(&qword_1000EFF10, &qword_1000C7FD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100085D74@<X0>(void *a1@<X8>)
{
  sub_10003C298();
  result = sub_1000C1948();
  *a1 = v3;
  return result;
}

uint64_t sub_100085DC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100085E30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100085E94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *_s24RemindersWidgetExtension20TTRNewWidgetProviderVwCP_0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t *assignWithCopy for TTRNewWidgetProvider(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

uint64_t *assignWithTake for TTRNewWidgetProvider(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

unint64_t sub_10008600C()
{
  result = qword_1000EFF80;
  if (!qword_1000EFF80)
  {
    type metadata accessor for TTRNewWidgetTimelineEntry(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFF80);
  }

  return result;
}

uint64_t sub_100086064()
{
  v0 = sub_1000C1568();
  sub_10000D9B0(v0, qword_1000EFF68);
  v1 = sub_10000D978(v0, qword_1000EFF68);
  if (qword_1000EC8E8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D978(v0, qword_1000FAAE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10008612C(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRNewWidgetTimelineEntry(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v30 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v29 - v8;
  v10 = sub_1000C2488();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C24A8();
  swift_getKeyPath();
  sub_1000C2498();

  (*(v11 + 8))(v14, v10);
  sub_10008FEEC(a1, (a2 + *(v4 + 20)));

  sub_1000C0AE8();
  v15 = *(v4 + 24);
  v16 = sub_1000C2478();
  (*(*(v16 - 8) + 56))(a2 + v15, 1, 1, v16);
  if (qword_1000EC970 != -1)
  {
    swift_once();
  }

  v17 = sub_1000C1568();
  sub_10000D978(v17, qword_1000EFF68);
  sub_100087F80(a2, v9);
  v18 = sub_1000C1558();
  v19 = sub_1000C2968();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 136446467;
    v31 = &type metadata for TTRNewWidgetProvider;
    v32 = v21;
    sub_100004D04(&qword_1000EFF88, &qword_1000C8170);
    v22 = sub_1000C26A8();
    v24 = sub_1000B7B58(v22, v23, &v32);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2081;
    sub_100087F80(v9, v30);
    v25 = sub_1000C26A8();
    v27 = v26;
    sub_100087FE4(v9);
    v28 = sub_1000B7B58(v25, v27, &v32);

    *(v20 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s: Created placeholder {entry: %{private}s}", v20, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100087FE4(v9);
  }
}

uint64_t sub_1000864D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v71 = a6;
  v72 = a5;
  v68 = a3;
  v69 = a4;
  v8 = sub_1000C0AF8();
  v73 = *(v8 - 8);
  v74 = v8;
  v9 = *(v73 + 64);
  __chkstk_darwin(v8);
  v70 = &v61[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1000C24B8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v64 = &v61[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v75 = &v61[-v16];
  v17 = sub_1000C2488();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  *&v20 = __chkstk_darwin(v17).n128_u64[0];
  v22 = &v61[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = [a1 list];
  if (v23)
  {
    v24 = v11;
    v25 = v23;
    v26 = [v23 identifier];

    if (v26)
    {
      v66 = sub_1000C2678();
      v67 = v27;
    }

    else
    {
      v66 = 0;
      v67 = 0xE000000000000000;
    }

    v11 = v24;
  }

  else
  {
    v66 = 0;
    v67 = 0xE000000000000000;
  }

  sub_1000C24A8();
  swift_getKeyPath();
  v65 = sub_1000C2498();

  (*(v18 + 8))(v22, v17);
  if (qword_1000EC970 != -1)
  {
    swift_once();
  }

  v28 = sub_1000C1568();
  sub_10000D978(v28, qword_1000EFF68);
  v29 = *(v12 + 16);
  v30 = v75;
  v29(v75, a2, v11);
  v31 = a1;
  v32 = sub_1000C1558();
  v33 = sub_1000C2968();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v63 = v35;
    *v34 = 136446723;
    v76 = &type metadata for TTRNewWidgetProvider;
    v77 = v35;
    sub_100004D04(&qword_1000EFF88, &qword_1000C8170);
    v36 = sub_1000C26A8();
    v38 = sub_1000B7B58(v36, v37, &v77);
    v62 = v33;
    v39 = v12;
    v40 = v11;
    v41 = v38;

    *(v34 + 4) = v41;
    *(v34 + 12) = 2081;
    v42 = v31;
    v43 = [v42 description];
    v44 = sub_1000C2678();
    v46 = v45;

    v47 = sub_1000B7B58(v44, v46, &v77);

    *(v34 + 14) = v47;
    *(v34 + 22) = 2082;
    v48 = v75;
    v29(v64, v75, v40);
    v49 = sub_1000C26A8();
    v51 = v50;
    (*(v39 + 8))(v48, v40);
    v52 = sub_1000B7B58(v49, v51, &v77);

    *(v34 + 24) = v52;
    _os_log_impl(&_mh_execute_header, v32, v62, "%{public}s: Requesting snapshot {configuration: %{private}s context: %{public}s", v34, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v12 + 8))(v30, v11);
  }

  if (v65)
  {
    v53 = v65;
  }

  else
  {
    v53 = &off_1000E7A08;
  }

  v54 = swift_allocObject();
  v56 = v66;
  v55 = v67;
  v54[2] = v66;
  v54[3] = v55;
  v57 = v69;
  v54[4] = v68;
  v54[5] = v57;
  v58 = v71;
  v54[6] = v72;
  v54[7] = v58;
  v54[8] = v53;

  v59 = v70;
  sub_1000C0AE8();
  sub_10008F54C(v56, v55, v58, v53, v59, sub_100088090, v54);

  return (*(v73 + 8))(v59, v74);
}

uint64_t sub_100086AB4(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void), uint64_t a5, void (*a6)(void), uint64_t a7)
{
  v53 = a6;
  v54 = a5;
  v12 = type metadata accessor for TTRNewWidgetTimelineEntry(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v49 - v17;
  __chkstk_darwin(v19);
  v22 = &v49 - v21;
  if (*(a1 + 16))
  {
    sub_100087F80(a1 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), &v49 - v21);
    if (qword_1000EC970 != -1)
    {
      swift_once();
    }

    v23 = sub_1000C1568();
    sub_10000D978(v23, qword_1000EFF68);
    sub_100087F80(v22, v18);
    v24 = sub_1000C1558();
    v25 = sub_1000C2968();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v52 = v27;
      v53 = a4;
      *v26 = 136446467;
      v55 = &type metadata for TTRNewWidgetProvider;
      v56 = v27;
      sub_100004D04(&qword_1000EFF88, &qword_1000C8170);
      v28 = sub_1000C26A8();
      v30 = sub_1000B7B58(v28, v29, &v56);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2085;
      sub_100087F80(v18, v15);
      v31 = sub_1000C26A8();
      v33 = v32;
      sub_100087FE4(v18);
      v34 = sub_1000B7B58(v31, v33, &v56);

      *(v26 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v24, v25, "%{public}s: Completed snapshot {entry: %{sensitive}s}", v26, 0x16u);
      swift_arrayDestroy();
      a4 = v53;
    }

    else
    {

      sub_100087FE4(v18);
    }

    v15 = v22;
  }

  else
  {
    v50 = a2;
    v51 = a7;
    if (qword_1000EC970 != -1)
    {
      swift_once();
    }

    v35 = sub_1000C1568();
    sub_10000D978(v35, qword_1000EFF68);

    v36 = sub_1000C1558();
    v37 = sub_1000C2968();

    v52 = v36;
    if (os_log_type_enabled(v36, v37))
    {
      v38 = v37;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v49 = v40;
      *v39 = 136446467;
      v55 = &type metadata for TTRNewWidgetProvider;
      v56 = v40;
      sub_100004D04(&qword_1000EFF88, &qword_1000C8170);
      v41 = sub_1000C26A8();
      v43 = sub_1000B7B58(v41, v42, &v56);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2081;
      *(v39 + 14) = sub_1000B7B58(v50, a3, &v56);
      v44 = v38;
      v45 = v52;
      _os_log_impl(&_mh_execute_header, v52, v44, "%{public}s: No timeline entries created placeholder snapshot {url: %{private}s}", v39, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_10008FEEC(v51, &v15[*(v12 + 20)]);
    sub_1000C0AE8();
    v46 = *(v12 + 24);
    v47 = sub_1000C2478();
    (*(*(v47 - 8) + 56))(&v15[v46], 1, 1, v47);
  }

  a4(v15);
  return sub_100087FE4(v15);
}

uint64_t sub_100086FBC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v72 = a6;
  v73 = a5;
  v69 = a3;
  v70 = a4;
  v8 = sub_1000C0AF8();
  v74 = *(v8 - 8);
  v75 = v8;
  v9 = *(v74 + 64);
  __chkstk_darwin(v8);
  v71 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000C24B8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v64 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v66 = &v60 - v16;
  v17 = sub_1000C2488();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  *&v20 = __chkstk_darwin(v17).n128_u64[0];
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [a1 list];
  if (v23)
  {
    v24 = v11;
    v25 = v23;
    v26 = [v23 identifier];

    if (v26)
    {
      v67 = sub_1000C2678();
      v68 = v27;
    }

    else
    {
      v67 = 0;
      v68 = 0xE000000000000000;
    }

    v11 = v24;
  }

  else
  {
    v67 = 0;
    v68 = 0xE000000000000000;
  }

  sub_1000C24A8();
  swift_getKeyPath();
  v65 = sub_1000C2498();

  (*(v18 + 8))(v22, v17);
  if (qword_1000EC970 != -1)
  {
    swift_once();
  }

  v28 = sub_1000C1568();
  sub_10000D978(v28, qword_1000EFF68);
  v29 = *(v12 + 16);
  v30 = v66;
  v29(v66, a2, v11);
  v31 = a1;
  v32 = sub_1000C1558();
  v33 = sub_1000C2968();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v63 = v35;
    *v34 = 136446723;
    v76 = &type metadata for TTRNewWidgetProvider;
    v77 = v35;
    sub_100004D04(&qword_1000EFF88, &qword_1000C8170);
    v36 = sub_1000C26A8();
    v38 = sub_1000B7B58(v36, v37, &v77);
    v61 = v29;
    v39 = v30;
    v40 = v38;

    *(v34 + 4) = v40;
    *(v34 + 12) = 2081;
    v41 = v31;
    v42 = [v41 description];
    v43 = sub_1000C2678();
    v62 = v33;
    v44 = v12;
    v45 = v11;
    v47 = v46;

    v48 = sub_1000B7B58(v43, v47, &v77);

    *(v34 + 14) = v48;
    *(v34 + 22) = 2082;
    v61(v64, v39, v45);
    v49 = sub_1000C26A8();
    v51 = v50;
    (*(v44 + 8))(v39, v45);
    v52 = sub_1000B7B58(v49, v51, &v77);

    *(v34 + 24) = v52;
    _os_log_impl(&_mh_execute_header, v32, v62, "%{public}s: Requesting timeline {configuration: %{private}s context: %{public}s", v34, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v12 + 8))(v30, v11);
  }

  if (v65)
  {
    v53 = v65;
  }

  else
  {
    v53 = &off_1000E7A30;
  }

  v54 = swift_allocObject();
  v55 = v72;
  v54[2] = v73;
  v54[3] = v55;
  v56 = v69;
  v57 = v70;
  v54[4] = v53;
  v54[5] = v56;
  v54[6] = v57;

  v58 = v71;
  sub_1000C0AE8();
  sub_10008F54C(v67, v68, v55, v53, v58, sub_100087F70, v54);

  return (*(v74 + 8))(v58, v75);
}

uint64_t sub_100087594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v74 = a6;
  v75 = a5;
  v69 = a2;
  v70 = a4;
  v68 = a3;
  v7 = type metadata accessor for TTRNewWidgetTimelineEntry(0);
  v71 = *(v7 - 8);
  v8 = *(v71 + 64);
  __chkstk_darwin(v7);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000C0AF8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000C2418();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v76 = sub_100004D04(&qword_1000EFF90, &qword_1000C8178);
  v18 = *(v76 - 8);
  v19 = v18[8];
  __chkstk_darwin(v76);
  __chkstk_darwin(v20);
  v72 = &v67 - v21;
  __chkstk_darwin(v22);
  v24 = &v67 - v23;
  __chkstk_darwin(v25);
  v28 = &v67 - v27;
  v29 = *(a1 + 16);
  v73 = &v67 - v27;
  if (v29)
  {

    sub_1000C0A28();
    sub_1000C2408();
    (*(v12 + 8))(v15, v11);
    sub_10008600C();
    sub_1000C2558();
    if (qword_1000EC970 != -1)
    {
      swift_once();
    }

    v30 = sub_1000C1568();
    sub_10000D978(v30, qword_1000EFF68);
    v31 = v18[2];
    v32 = v76;
    v31(v24, v28, v76);
    v33 = sub_1000C1558();
    v34 = sub_1000C2968();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 136446467;
      v77 = &type metadata for TTRNewWidgetProvider;
      v78 = v36;
      sub_100004D04(&qword_1000EFF88, &qword_1000C8170);
      v37 = sub_1000C26A8();
      v39 = sub_1000B7B58(v37, v38, &v78);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2085;
      v31(v72, v24, v76);
      v40 = sub_1000C26A8();
      v42 = v41;
      v43 = v18[1];
      v43(v24, v76);
      v44 = sub_1000B7B58(v40, v42, &v78);

      *(v35 + 14) = v44;
      v32 = v76;
      _os_log_impl(&_mh_execute_header, v33, v34, "%{public}s: Completed timeline {timeline: %{sensitive}s}", v35, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v43 = v18[1];
      v43(v24, v32);
    }
  }

  else
  {
    v67 = v26;
    sub_10008FEEC(v68, &v10[*(v7 + 20)]);
    sub_1000C0AE8();
    v45 = *(v7 + 24);
    v46 = sub_1000C2478();
    (*(*(v46 - 8) + 56))(&v10[v45], 1, 1, v46);
    sub_100004D04(&qword_1000EFF98, &unk_1000C8180);
    v47 = *(v71 + 72);
    v48 = v10;
    v49 = (*(v71 + 80) + 32) & ~*(v71 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1000C3590;
    v71 = v48;
    sub_100087F80(v48, v50 + v49);
    sub_1000C0A28();
    sub_1000C2408();
    (*(v12 + 8))(v15, v11);
    sub_10008600C();
    sub_1000C2558();
    if (qword_1000EC970 != -1)
    {
      swift_once();
    }

    v51 = sub_1000C1568();
    sub_10000D978(v51, qword_1000EFF68);
    v52 = v18[2];
    v53 = v67;
    v32 = v76;
    v52(v67, v28, v76);
    v54 = sub_1000C1558();
    v55 = sub_1000C2968();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v56 = 136446467;
      v77 = &type metadata for TTRNewWidgetProvider;
      v78 = v57;
      sub_100004D04(&qword_1000EFF88, &qword_1000C8170);
      v58 = sub_1000C26A8();
      v60 = sub_1000B7B58(v58, v59, &v78);

      *(v56 + 4) = v60;
      *(v56 + 12) = 2081;
      v52(v72, v53, v76);
      v61 = sub_1000C26A8();
      v63 = v62;
      v43 = v18[1];
      v43(v53, v76);
      v64 = sub_1000B7B58(v61, v63, &v78);

      *(v56 + 14) = v64;
      v32 = v76;
      _os_log_impl(&_mh_execute_header, v54, v55, "%{public}s: No timeline entries created placeholder {timeline %{private}s}", v56, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v43 = v18[1];
      v43(v53, v32);
    }

    sub_100087FE4(v71);
  }

  v65 = v73;
  v75(v73);
  return (v43)(v65, v32);
}

uint64_t sub_100087DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to IntentTimelineProvider.relevances()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000B028;

  return IntentTimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_100087E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to IntentTimelineProvider.relevance()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000DC8C;

  return IntentTimelineProvider.relevance()(a1, a2, a3);
}

uint64_t sub_100087F28()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100087F80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRNewWidgetTimelineEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100087FE4(uint64_t a1)
{
  v2 = type metadata accessor for TTRNewWidgetTimelineEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100088040()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000880D0(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = sub_1000C1F68();
  *a3 = result;
  return result;
}

unint64_t sub_10008811C()
{
  result = qword_1000EFFC0;
  if (!qword_1000EFFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFFC0);
  }

  return result;
}

uint64_t sub_1000881B4()
{
  v0 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_1000C0888();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C0B68();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_1000C2628();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_1000C0898();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_1000C0728();
  sub_10000D9B0(v15, qword_1000FAB10);
  sub_10000D978(v15, qword_1000FAB10);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  sub_1000C08A8();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_1000C0718();
}

uint64_t sub_100088490@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_100004D04(&qword_1000ED0F0, &qword_1000C43C8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v38 = &v32 - v3;
  v4 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v37 = &v32 - v6;
  v7 = sub_1000C0888();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000C0B68();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = sub_1000C2628();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = sub_1000C0898();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v35 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v34 = &v32 - v21;
  sub_1000C2618();
  sub_1000C0B58();
  v22 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v23 = *(v8 + 104);
  v33 = v7;
  v23(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v7);
  sub_1000C08A8();
  sub_1000C2618();
  sub_1000C0B58();
  v23(v11, v22, v7);
  v24 = v37;
  sub_1000C08A8();
  v25 = *(v17 + 56);
  v17 += 56;
  v25(v24, 0, 1, v16);
  v26 = v38;
  sub_1000C05F8();
  v27 = sub_1000C0608();
  (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
  sub_100004D04(&qword_1000ED0F8, &qword_1000C43D0);
  v28 = *(v17 + 16);
  v29 = (*(v17 + 24) + 32) & ~*(v17 + 24);
  *(swift_allocObject() + 16) = xmmword_1000C44F0;
  sub_1000C2618();
  sub_1000C0B58();
  v30 = v33;
  v23(v11, v22, v33);
  sub_1000C08A8();
  sub_1000C2618();
  sub_1000C0B58();
  v23(v11, v22, v30);
  sub_1000C08A8();
  sub_1000C2618();
  sub_1000C0B58();
  v23(v11, v22, v30);
  sub_1000C08A8();
  return sub_1000C0618();
}

uint64_t sub_100088A44()
{
  v0 = sub_1000C0898();
  sub_10000D9B0(v0, qword_1000FAB28);
  sub_10000D978(v0, qword_1000FAB28);
  return sub_1000C0878();
}

uint64_t sub_100088AA8()
{
  v0 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v19 - v2;
  v19[0] = sub_1000C0888();
  v4 = *(v19[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v19[0]);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C0B68();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_1000C2628();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_1000C0898();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_100004D04(&qword_1000ED140, &unk_1000C8AB0);
  sub_10000D9B0(v15, qword_1000FAB40);
  v16 = sub_10000D978(v15, qword_1000FAB40);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v19[0]);
  sub_1000C08A8();
  (*(v13 + 56))(v3, 1, 1, v12);
  sub_1000C0588();
  v17 = sub_1000C0578();
  return (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
}

uint64_t sub_100088DD8()
{
  result = swift_getKeyPath();
  qword_1000FAB58 = result;
  return result;
}

uint64_t sub_100088E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = *(*(sub_100004D04(&qword_1000ED110, &unk_1000C8A60) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = *(*(sub_100004D04(&qword_1000ED118, &qword_1000C4400) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v6 = *(*(sub_100004D04(&qword_1000F0100, &qword_1000C8A70) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = sub_1000C0318();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = sub_100004D04(&qword_1000F0108, &qword_1000C8A78);
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_100088FE0, 0, 0);
}

uint64_t sub_100088FE0()
{
  v1 = v0[8];
  sub_1000C0368();
  v2 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v3 = swift_task_alloc();
  v0[20] = v3;
  v4 = sub_10008A680();
  *v3 = v0;
  v3[1] = sub_1000890B0;
  v5 = v0[19];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 2, sub_10008CE2C, 0, &type metadata for TodayNotificationEntity, v4);
}

uint64_t sub_1000890B0()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return _swift_task_switch(sub_1000891AC, 0, 0);
}

uint64_t sub_1000891AC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_1000C0368();
  v3 = *(v0 + 24);
  *(v0 + 32) = v3;
  *(v0 + 168) = v3;
  sub_1000C0368();
  *(v0 + 201) = *(v0 + 200);
  if (qword_1000EC9A0 != -1)
  {
    swift_once();
  }

  v4 = qword_1000FAB58;
  *(v0 + 176) = qword_1000FAB58;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  v7 = sub_100008478(&qword_1000F00E8, &qword_1000F00F0, &qword_1000C8A48);
  *v6 = v0;
  v6[1] = sub_10008930C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 201, v4, &type metadata for Bool, v7);
}

uint64_t sub_10008930C()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v5 = sub_100009CB4;
  }

  else
  {
    v5 = sub_100089460;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100089460()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v12 = v0[18];
  v13 = v0[15];
  v4 = v0[12];
  v15 = v0[14];
  v16 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[8];
  v14 = v0[7];
  sub_1000C0368();
  v0[6] = v0[5];
  v8 = sub_1000C06F8();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_1000C0738();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_10008811C();
  sub_10008A894();
  sub_1000C02E8();
  (*(v2 + 16))(v12, v1, v3);
  sub_1000C0308();
  sub_1000C0328();
  (*(v15 + 8))(v13, v16);

  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000896CC()
{
  v0 = sub_100004D04(&qword_1000F0110, &qword_1000C8A80);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_1000EC9A0 != -1)
  {
    swift_once();
  }

  sub_1000C05D8();

  sub_10008A894();
  sub_100008478(&qword_1000F0118, &qword_1000F0110, &qword_1000C8A80);
  sub_1000C05C8();
  return (*(v1 + 8))(v4, v0);
}

uint64_t (*sub_100089840(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_1000C0358();
  return sub_100009FE8;
}

uint64_t (*sub_1000898B4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_1000C0358();
  return sub_10000DCA8;
}

uint64_t sub_100089928()
{
  if (qword_1000EC9A0 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100089988()
{
  result = qword_1000EFFD8;
  if (!qword_1000EFFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFFD8);
  }

  return result;
}

unint64_t sub_1000899E0()
{
  result = qword_1000EFFE0;
  if (!qword_1000EFFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFFE0);
  }

  return result;
}

uint64_t sub_100089AB8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000EC998 != -1)
  {
    swift_once();
  }

  v2 = sub_100004D04(&qword_1000ED140, &unk_1000C8AB0);
  v3 = sub_10000D978(v2, qword_1000FAB40);
  return sub_1000082B4(v3, a1, &qword_1000ED140, &unk_1000C8AB0);
}

uint64_t sub_100089B48(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000DC8C;

  return sub_100088E00(a1, v5, v4);
}

uint64_t sub_100089BF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10008C360();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100089C3C()
{
  result = qword_1000EFFE8;
  if (!qword_1000EFFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFFE8);
  }

  return result;
}

unint64_t sub_100089C94()
{
  result = qword_1000EFFF0;
  if (!qword_1000EFFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFFF0);
  }

  return result;
}

uint64_t sub_100089CE8(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(sub_100004D04(&qword_1000F00F8, &qword_1000C8A50) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_100089D90, 0, 0);
}

uint64_t sub_100089D90()
{
  v1 = [objc_opt_self() daemonUserDefaults];
  v2 = [v1 todayNotificationFireTime];

  if (v2)
  {
    v3 = v0[3];
    sub_1000C0798();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];
  v8 = sub_1000C07A8();
  v9 = *(v8 - 8);
  (*(v9 + 56))(v6, v4, 1, v8);
  sub_10008CD84(v6, v5);
  v10 = (*(v9 + 48))(v5, 1, v8) != 1;
  sub_10008CD1C(v5);
  *v7 = v10;

  v11 = v0[1];

  return v11();
}

uint64_t sub_100089F08(uint64_t a1, _BYTE *a2)
{
  v4 = sub_1000C07A8();
  *(v2 + 16) = v4;
  v5 = *(v4 - 8);
  *(v2 + 24) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 32) = swift_task_alloc();
  v7 = *(*(sub_100004D04(&qword_1000F00F8, &qword_1000C8A50) - 8) + 64) + 15;
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = swift_task_alloc();
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = *a2;

  return _swift_task_switch(sub_10008A02C, 0, 0);
}

uint64_t sub_10008A02C()
{
  v1 = objc_opt_self();
  v2 = [v1 daemonUserDefaults];
  v3 = [v2 todayNotificationFireTime];

  v4 = *(v0 + 72);
  v5 = *(v0 + 64);
  if (v3)
  {
    v7 = *(v0 + 24);
    v6 = *(v0 + 32);
    v8 = *(v0 + 16);
    sub_1000C0798();

    (*(v7 + 32))(v5, v6, v8);
    v9 = *(v7 + 56);
    v9(v5, 0, 1, v8);
    sub_10008CD1C(v5);
    if (v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v9 = *(*(v0 + 24) + 56);
    v9(*(v0 + 64), 1, 1, *(v0 + 16));
    sub_10008CD1C(v5);
    if ((v4 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if (*(v0 + 72) == 1)
  {
    v10 = [objc_opt_self() todayNotificationFireTimeFromStorageNumber:0];
    if (v10)
    {
      v11 = *(v0 + 48);
      v12 = v10;
      sub_1000C0798();

      v13 = 0;
    }

    else
    {
      v13 = 1;
    }

    v16 = *(v0 + 48);
    v15 = *(v0 + 56);
    v17 = *(v0 + 24) + 56;
    v9(v16, v13, 1, *(v0 + 16));
    sub_10008CD84(v16, v15);
  }

  else
  {
    v14 = *(v0 + 24) + 56;
    v9(*(v0 + 56), 1, 1, *(v0 + 16));
  }

  v18 = *(v0 + 56);
  v19 = *(v0 + 40);
  v20 = *(v0 + 16);
  v21 = *(v0 + 24);
  v22 = [v1 daemonUserDefaults];
  sub_1000082B4(v18, v19, &qword_1000F00F8, &qword_1000C8A50);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    isa = 0;
  }

  else
  {
    v24 = *(v0 + 40);
    v25 = *(v0 + 16);
    v26 = *(v0 + 24);
    isa = sub_1000C0788().super.isa;
    (*(v26 + 8))(v24, v25);
  }

  v27 = *(v0 + 56);
  [v22 setTodayNotificationFireTime:isa];

  sub_10008CD1C(v27);
LABEL_15:
  v29 = *(v0 + 56);
  v28 = *(v0 + 64);
  v31 = *(v0 + 40);
  v30 = *(v0 + 48);
  v32 = *(v0 + 32);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_10008A314(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1000C0898() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10008A3A4, 0, 0);
}

uint64_t sub_10008A3A4()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_100004D04(&qword_1000EFFD0, qword_1000C8190);
  sub_1000C0878();
  sub_100008478(&qword_1000F00E8, &qword_1000F00F0, &qword_1000C8A48);
  *v2 = sub_1000C0768();

  v3 = v0[1];

  return v3();
}

unint64_t sub_10008A4C8()
{
  result = qword_1000EFFF8;
  if (!qword_1000EFFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFFF8);
  }

  return result;
}

uint64_t sub_10008A51C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10008AA28();
  *v5 = v2;
  v5[1] = sub_10000A8F8;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

unint64_t sub_10008A5D0()
{
  result = qword_1000F0000;
  if (!qword_1000F0000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0000);
  }

  return result;
}

unint64_t sub_10008A628()
{
  result = qword_1000F0008;
  if (!qword_1000F0008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0008);
  }

  return result;
}

unint64_t sub_10008A680()
{
  result = qword_1000F0010;
  if (!qword_1000F0010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0010);
  }

  return result;
}

uint64_t sub_10008A6D4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10008AA28();
  *v6 = v2;
  v6[1] = sub_10000DCD8;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10008A788(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10008AA28();
  *v5 = v2;
  v5[1] = sub_10000DCA4;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

unint64_t sub_10008A83C()
{
  result = qword_1000F0018;
  if (!qword_1000F0018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0018);
  }

  return result;
}

unint64_t sub_10008A894()
{
  result = qword_1000F0020;
  if (!qword_1000F0020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0020);
  }

  return result;
}

unint64_t sub_10008A8EC()
{
  result = qword_1000F0028;
  if (!qword_1000F0028)
  {
    sub_100005334(&qword_1000F0030, qword_1000C8430);
    sub_10008A894();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0028);
  }

  return result;
}

uint64_t sub_10008A970(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10008A4C8();
  *v6 = v2;
  v6[1] = sub_10000B028;

  return EntityQuery.results()(a1, a2, v7);
}

unint64_t sub_10008AA28()
{
  result = qword_1000F0038;
  if (!qword_1000F0038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0038);
  }

  return result;
}

uint64_t sub_10008AA7C()
{
  v0 = qword_1000EFFA0;

  return v0;
}

unint64_t sub_10008AAB8()
{
  result = qword_1000F0040;
  if (!qword_1000F0040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0040);
  }

  return result;
}

unint64_t sub_10008AB10()
{
  result = qword_1000F0048;
  if (!qword_1000F0048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0048);
  }

  return result;
}

unint64_t sub_10008AB68()
{
  result = qword_1000F0050;
  if (!qword_1000F0050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0050);
  }

  return result;
}

unint64_t sub_10008ABC0()
{
  result = qword_1000F0058;
  if (!qword_1000F0058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0058);
  }

  return result;
}

unint64_t sub_10008AC18()
{
  result = qword_1000F0060;
  if (!qword_1000F0060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0060);
  }

  return result;
}

unint64_t sub_10008AC70()
{
  result = qword_1000F0068;
  if (!qword_1000F0068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0068);
  }

  return result;
}

uint64_t sub_10008ACC4@<X0>(uint64_t *a1@<X8>)
{
  sub_100089C94();
  result = sub_1000C0348();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10008AD80(uint64_t a1)
{
  v2 = sub_10008A680();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10008ADD0()
{
  result = qword_1000F0080;
  if (!qword_1000F0080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0080);
  }

  return result;
}

uint64_t sub_10008AE28(uint64_t a1)
{
  v2 = sub_10008AC70();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10008AE78()
{
  result = qword_1000F0088;
  if (!qword_1000F0088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0088);
  }

  return result;
}

uint64_t sub_10008AECC(uint64_t a1)
{
  if (qword_1000EC8C0 != -1)
  {
    swift_once();
  }

  sub_1000C26D8(xmmword_1000FAA98);
  v2 = sub_10008A680();

  return _EntityURLRepresentation.init(_:)(0xD000000000000041, 0x80000001000CBC20, a1, v2);
}

uint64_t sub_10008AF8C()
{
  sub_10008CCC8();
  v1 = sub_1000C0668();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_10008AFFC()
{
  result = qword_1000F0090;
  if (!qword_1000F0090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0090);
  }

  return result;
}

uint64_t sub_10008B050()
{
  v0 = sub_1000C0898();
  sub_10000D9B0(v0, qword_1000FAB60);
  sub_10000D978(v0, qword_1000FAB60);
  return sub_1000C0878();
}

uint64_t sub_10008B0B4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v20[-v4];
  v6 = sub_1000C0888();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1000C0B68();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_1000C2628();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_1000C0898();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v7 + 104))(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v6);
  sub_1000C08A8();
  (*(v16 + 56))(v5, 1, 1, v15);
  sub_1000C0588();
  v18 = sub_1000C0578();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t (*sub_10008B3E4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_1000C0358();
  return sub_10000DCA8;
}

unint64_t sub_10008B458()
{
  result = qword_1000F0098;
  if (!qword_1000F0098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0098);
  }

  return result;
}

uint64_t sub_10008B4AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10008CC20();
  v5 = sub_10008CCC8();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_10008B518()
{
  v0 = qword_1000EFFB0;

  return v0;
}

unint64_t sub_10008B554()
{
  result = qword_1000F00A0;
  if (!qword_1000F00A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F00A0);
  }

  return result;
}

unint64_t sub_10008B5AC()
{
  result = qword_1000F00A8;
  if (!qword_1000F00A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F00A8);
  }

  return result;
}

uint64_t sub_10008B6A8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _URLRepresentableIntent<>.perform()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10008CC20();
  v8 = sub_10008CC74();
  v9 = sub_10008CCC8();
  *v6 = v2;
  v6[1] = sub_10000C134;

  return _URLRepresentableIntent<>.perform()(a1, a2, v7, v8, v9);
}

uint64_t sub_10008B77C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10008C7C4();
  *a1 = result;
  return result;
}

uint64_t sub_10008B7A4(uint64_t a1)
{
  v2 = sub_10008B458();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10008B8A8@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_100004D04(&qword_1000ED148, &qword_1000C44B0);
  v29 = *(v1 - 8);
  v2 = *(v29 + 64);
  __chkstk_darwin(v1);
  v4 = &v27 - v3;
  v5 = sub_100004D04(&qword_1000ED150, &qword_1000C44B8);
  v6 = *(v5 - 8);
  v30 = v5;
  v31 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = sub_100004D04(&qword_1000ED158, &qword_1000C44C0);
  v11 = *(v10 - 8);
  v32 = v10;
  v33 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v27 = &v27 - v13;
  v14 = sub_100004D04(&qword_1000ED160, &qword_1000C44C8);
  v15 = *(v14 - 8);
  v34 = v14;
  v35 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v28 = &v27 - v17;
  swift_getKeyPath();
  sub_100004D04(&qword_1000ED168, &qword_1000C44D0);
  sub_100004D04(&qword_1000ED170, qword_1000C44D8);
  sub_100089C94();
  sub_100008478(&qword_1000ED178, &qword_1000ED168, &qword_1000C44D0);
  sub_10000DABC();
  sub_1000C2398();
  sub_1000C19E8();
  v18 = sub_100008478(&qword_1000ED188, &qword_1000ED148, &qword_1000C44B0);
  sub_1000C1AB8();

  (*(v29 + 8))(v4, v1);
  sub_1000C19E8();
  v37 = v1;
  v38 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = v27;
  v21 = v30;
  sub_1000C1A78();

  (*(v31 + 8))(v9, v21);
  v37 = v21;
  v38 = OpaqueTypeConformance2;
  v22 = swift_getOpaqueTypeConformance2();
  v23 = v28;
  v24 = v32;
  sub_1000C1AD8();
  (*(v33 + 8))(v20, v24);
  v37 = v24;
  v38 = v22;
  swift_getOpaqueTypeConformance2();
  v25 = v34;
  sub_1000C1A98();
  return (*(v35 + 8))(v23, v25);
}

uint64_t sub_10008BE0C()
{
  v0 = sub_1000C19E8();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_10008BE7C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000C0888();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000C0B68();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_1000C2628();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_1000C0898();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_1000C08A8();
  result = sub_1000C1DD8();
  *a1 = result;
  *(a1 + 8) = v14;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v16;
  return result;
}

double sub_10008C090@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1000C0888();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000C0B68();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_1000C2628();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_1000C0898();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v5 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v4);
  sub_1000C08A8();
  v21[1] = sub_1000C1DD8();
  v21[2] = v15;
  v21[3] = v16 & 1;
  v21[4] = v17;
  v22 = (a1 & 1) == 0;
  sub_1000C1AE8();
  result = *&v23;
  v19 = v24;
  v20 = v25;
  *a2 = v23;
  *(a2 + 16) = v19;
  *(a2 + 32) = v20;
  return result;
}

uint64_t sub_10008C360()
{
  v0 = sub_100004D04(&qword_1000ED0C8, &unk_1000CAFB0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v35 = &v27 - v2;
  v36 = sub_1000C0658();
  v3 = *(v36 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v36);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004D04(&qword_1000ED0B0, &unk_1000C43A0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  v14 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v27 - v16;
  v18 = sub_1000C0898();
  v34 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v28 = sub_100004D04(&qword_1000F00C8, &qword_1000C8A30);
  sub_1000C0878();
  v21 = *(v19 + 56);
  v32 = v19 + 56;
  v33 = v21;
  v21(v17, 1, 1, v18);
  v38 = 0;
  v22 = sub_1000C0318();
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v10, 1, 1, v22);
  v31 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v29 = v3 + 104;
  v30 = v24;
  v24(v6);
  sub_10008A680();
  v28 = sub_1000C0388();
  sub_100004D04(&qword_1000ED0D0, &qword_1000C43C0);
  sub_1000C0878();
  v33(v17, 1, 1, v34);
  v37 = 2;
  v25 = sub_1000C2808();
  (*(*(v25 - 8) + 56))(v35, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v30(v6, v31, v36);
  sub_1000C0398();
  return v28;
}

uint64_t sub_10008C7C4()
{
  v0 = sub_1000C0658();
  v31 = *(v0 - 8);
  v32 = v0;
  v1 = *(v31 + 64);
  __chkstk_darwin(v0);
  v30 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100004D04(&qword_1000ED0B0, &unk_1000C43A0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v29 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v28 - v7;
  v9 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v28 - v11;
  v13 = sub_1000C0888();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000C0B68();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v20 = sub_1000C2628();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v22 = sub_1000C0898();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v28[1] = sub_100004D04(&qword_1000F00C8, &qword_1000C8A30);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v14 + 104))(v17, enum case for LocalizedStringResource.BundleDescription.main(_:), v13);
  sub_1000C08A8();
  (*(v23 + 56))(v12, 1, 1, v22);
  v33 = 0;
  v25 = sub_1000C0318();
  v26 = *(*(v25 - 8) + 56);
  v26(v8, 1, 1, v25);
  v26(v29, 1, 1, v25);
  (*(v31 + 104))(v30, enum case for InputConnectionBehavior.default(_:), v32);
  sub_10008A680();
  return sub_1000C0388();
}

unint64_t sub_10008CC20()
{
  result = qword_1000F00D0;
  if (!qword_1000F00D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F00D0);
  }

  return result;
}

unint64_t sub_10008CC74()
{
  result = qword_1000F00D8;
  if (!qword_1000F00D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F00D8);
  }

  return result;
}

unint64_t sub_10008CCC8()
{
  result = qword_1000F00E0;
  if (!qword_1000F00E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F00E0);
  }

  return result;
}

uint64_t sub_10008CD1C(uint64_t a1)
{
  v2 = sub_100004D04(&qword_1000F00F8, &qword_1000C8A50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008CD84(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004D04(&qword_1000F00F8, &qword_1000C8A50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008CE4C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v25 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = &_swiftEmptyArrayStorage;
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      sub_10009DA8C(a3 + v16 + v17 * v14, v13, type metadata accessor for TTRNewWidgetViewModel.Reminder);
      v18 = a1(v13);
      if (v3)
      {
        sub_100099C44(v13, type metadata accessor for TTRNewWidgetViewModel.Reminder);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_10009DB2C(v13, v25, type metadata accessor for TTRNewWidgetViewModel.Reminder);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000BA468(0, v15[2] + 1, 1);
          v15 = v27;
        }

        v21 = v15[2];
        v20 = v15[3];
        if (v21 >= v20 >> 1)
        {
          sub_1000BA468(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        v15[2] = v21 + 1;
        result = sub_10009DB2C(v25, v15 + v16 + v21 * v17, type metadata accessor for TTRNewWidgetViewModel.Reminder);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        result = sub_100099C44(v13, type metadata accessor for TTRNewWidgetViewModel.Reminder);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = &_swiftEmptyArrayStorage;
LABEL_15:

    return v15;
  }

  return result;
}

uint64_t sub_10008D0D8(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (!v11)
  {
    return v12;
  }

  v22 = _swiftEmptyArrayStorage;
  sub_1000BA468(0, v11, 0);
  v12 = v22;
  v13 = (a3 + 32);
  while (1)
  {
    v14 = *v13++;
    v21 = v14;
    v19(&v21);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v12;
    v16 = v12[2];
    v15 = v12[3];
    if (v16 >= v15 >> 1)
    {
      sub_1000BA468(v15 > 1, v16 + 1, 1);
      v12 = v22;
    }

    v12[2] = v16 + 1;
    sub_10009DB2C(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, type metadata accessor for TTRNewWidgetViewModel.Reminder);
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10008D27C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v27 = a7;
  v28 = a1;
  v10 = v7;
  v29 = a2;
  v12 = a4(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v16 = &v24 - v15;
  v17 = *(a3 + 16);
  v18 = &_swiftEmptyArrayStorage;
  if (!v17)
  {
    return v18;
  }

  v30 = &_swiftEmptyArrayStorage;
  v25 = a5;
  a5(0, v17, 0);
  v18 = v30;
  v19 = *(a6(0) - 8);
  v20 = a3 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v26 = *(v19 + 72);
  while (1)
  {
    v28(v20);
    if (v10)
    {
      break;
    }

    v10 = 0;
    v30 = v18;
    v22 = v18[2];
    v21 = v18[3];
    if (v22 >= v21 >> 1)
    {
      v25(v21 > 1, v22 + 1, 1);
      v18 = v30;
    }

    v18[2] = v22 + 1;
    sub_10009DB2C(v16, v18 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v22, v27);
    v20 += v26;
    if (!--v17)
    {
      return v18;
    }
  }

  __break(1u);
  return result;
}

void sub_10008D488(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v214 = a5;
  v215 = a6;
  v211 = a4;
  v216 = a3;
  v218 = a2;
  v210 = sub_1000C0C18();
  v8 = *(v210 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v210);
  v209 = &v200 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v200 - v11;
  v13 = sub_1000C0AF8();
  v14 = *(v13 - 8);
  v212 = v13;
  v213 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v217 = &v200 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  Configuration = type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0);
  v17 = *(*(Configuration - 1) + 64);
  __chkstk_darwin(Configuration);
  v19 = &v200 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000C1118();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = (&v200 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = a1;
  v26 = v25;
  (*(v25 + 16))(v23, v24, v20);
  v27 = (*(v26 + 88))(v23, v20);
  if (v27 == enum case for REMNavigationSpecifier.account(_:))
  {
    (*(v26 + 96))(v23, v20);

    if (qword_1000EC9B0 != -1)
    {
      swift_once();
    }

    v28 = sub_1000C1568();
    sub_10000D978(v28, qword_1000F0120);
    v29 = sub_1000C1558();
    v30 = sub_1000C2948();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Widget presenter: unable to display accounts", v31, 2u);
    }

    v32 = *(sub_100004D04(&qword_1000EDA60, &qword_1000C5848) + 48);
    v33 = sub_1000C1098();
    goto LABEL_7;
  }

  if (v27 == enum case for REMNavigationSpecifier.list(_:))
  {
    (*(v26 + 96))(v23, v20);
    v34 = *v23;
    v35 = *(sub_100004D04(&qword_1000EDA48, &unk_1000C5830) + 48);
    v209 = *(v6 + 16);
    v210 = v35;
    v36 = &v19[Configuration[5]];
    v207 = v15;
    v37 = v211;
    sub_100090C24(v36);
    v38 = OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_fetchSubtasks;
    v208 = v23;
    v39 = Configuration[6];
    v40 = sub_1000C1388();
    (*(*(v40 - 8) + 16))(&v19[v39], v6 + v38, v40);
    v41 = v212;
    v42 = v213;
    v43 = *(v213 + 16);
    v43(&v19[Configuration[7]], v37, v212);
    *v19 = v218;
    v44 = swift_allocObject();
    swift_weakInit();
    v45 = v217;
    v43(v217, v37, v41);
    v46 = (*(v42 + 80) + 64) & ~*(v42 + 80);
    v47 = swift_allocObject();
    v48 = v214;
    v49 = v215;
    *(v47 + 2) = v44;
    *(v47 + 3) = v48;
    *(v47 + 4) = v49;
    *(v47 + 5) = v34;
    v50 = v216;
    *(v47 + 6) = v218;
    *(v47 + 7) = v50;
    (*(v42 + 32))(&v47[v46], v45, v41);

    v51 = v34;

    sub_10006A1B0(v51, v19, sub_10009A0AC, v47);
LABEL_12:

    sub_100099C44(v19, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);

    v68 = sub_1000C10C8();
    (*(*(v68 - 8) + 8))(v208 + v210, v68);
    return;
  }

  if (v27 == enum case for REMNavigationSpecifier.customSmartList(_:))
  {
    (*(v26 + 96))(v23, v20);
    v206 = *v23;
    v52 = *(sub_100004D04(&qword_1000EDA48, &unk_1000C5830) + 48);
    v209 = *(v6 + 16);
    v210 = v52;
    v53 = v211;
    sub_100090C24(&v19[Configuration[5]]);
    v208 = v23;
    v54 = OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_fetchSubtasks;
    v55 = Configuration[6];
    v56 = sub_1000C1388();
    (*(*(v56 - 8) + 16))(&v19[v55], v6 + v54, v56);
    v57 = v212;
    v58 = v213;
    v59 = *(v213 + 16);
    v59(&v19[Configuration[7]], v53, v212);
    *v19 = v218;
    v60 = swift_allocObject();
    swift_weakInit();
    v61 = v217;
    v59(v217, v53, v57);
    v62 = (*(v58 + 80) + 64) & ~*(v58 + 80);
    v63 = swift_allocObject();
    v64 = v214;
    v65 = v215;
    *(v63 + 2) = v60;
    *(v63 + 3) = v64;
    v66 = v206;
    *(v63 + 4) = v65;
    *(v63 + 5) = v66;
    v67 = v216;
    *(v63 + 6) = v218;
    *(v63 + 7) = v67;
    (*(v58 + 32))(&v63[v62], v61, v57);

    v51 = v66;
    sub_10006BCBC(v51, v19, sub_100099FB8, v63);
    goto LABEL_12;
  }

  if (v27 == enum case for REMNavigationSpecifier.newList(_:))
  {
    if (qword_1000EC9B0 != -1)
    {
      swift_once();
    }

    v69 = sub_1000C1568();
    sub_10000D978(v69, qword_1000F0120);
    v70 = sub_1000C1558();
    v71 = sub_1000C2948();
    if (!os_log_type_enabled(v70, v71))
    {
      goto LABEL_19;
    }

    v72 = swift_slowAlloc();
    *v72 = 0;
    v73 = "Widget presenter: unable to display newList";
LABEL_18:
    _os_log_impl(&_mh_execute_header, v70, v71, v73, v72, 2u);

LABEL_19:

    (*(v26 + 8))(v23, v20);
    return;
  }

  if (v27 == enum case for REMNavigationSpecifier.reminder(_:))
  {
    (*(v26 + 96))(v23, v20);

    if (qword_1000EC9B0 != -1)
    {
      swift_once();
    }

    v74 = sub_1000C1568();
    sub_10000D978(v74, qword_1000F0120);
    v75 = sub_1000C1558();
    v76 = sub_1000C2948();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&_mh_execute_header, v75, v76, "Widget presenter: unable to display individual reminders", v77, 2u);
    }

    v32 = *(sub_100004D04(&qword_1000EDA50, &unk_1000C8CD0) + 48);
    v33 = sub_1000C10F8();
    goto LABEL_7;
  }

  if (v27 == enum case for REMNavigationSpecifier.section(_:))
  {
    (*(v26 + 96))(v23, v20);

    if (qword_1000EC9B0 != -1)
    {
      swift_once();
    }

    v78 = sub_1000C1568();
    sub_10000D978(v78, qword_1000F0120);
    v79 = sub_1000C1558();
    v80 = sub_1000C2948();
    if (!os_log_type_enabled(v79, v80))
    {
      goto LABEL_37;
    }

    v81 = swift_slowAlloc();
    *v81 = 0;
    v82 = "Widget presenter: unable to display individual sections";
LABEL_36:
    _os_log_impl(&_mh_execute_header, v79, v80, v82, v81, 2u);

LABEL_37:

    v32 = *(sub_100004D04(&qword_1000EDA58, &qword_1000C5840) + 48);
    v33 = sub_1000C10A8();
LABEL_7:
    (*(*(v33 - 8) + 8))(v23 + v32, v33);
    return;
  }

  if (v27 == enum case for REMNavigationSpecifier.smartListSection(_:))
  {
    (*(v26 + 96))(v23, v20);

    if (qword_1000EC9B0 != -1)
    {
      swift_once();
    }

    v83 = sub_1000C1568();
    sub_10000D978(v83, qword_1000F0120);
    v79 = sub_1000C1558();
    v80 = sub_1000C2948();
    if (!os_log_type_enabled(v79, v80))
    {
      goto LABEL_37;
    }

    v81 = swift_slowAlloc();
    *v81 = 0;
    v82 = "Widget presenter: unable to display individual smart list sections";
    goto LABEL_36;
  }

  if (v27 == enum case for REMNavigationSpecifier.root(_:))
  {
    if (qword_1000EC9B0 != -1)
    {
      swift_once();
    }

    v84 = sub_1000C1568();
    sub_10000D978(v84, qword_1000F0120);
    v70 = sub_1000C1558();
    v71 = sub_1000C2948();
    if (!os_log_type_enabled(v70, v71))
    {
      goto LABEL_19;
    }

    v72 = swift_slowAlloc();
    *v72 = 0;
    v73 = "Widget presenter: unable to display root";
    goto LABEL_18;
  }

  v207 = v15;
  v208 = v23;
  v204 = v26;
  v205 = v20;
  v206 = v12;
  v202 = v6;
  v203 = v19;
  v201 = v8;
  if (v27 == enum case for REMNavigationSpecifier.today(_:))
  {
    (*(v8 + 104))(v12, enum case for TTRListType.PredefinedSmartListType.today(_:), v210);
    v200 = *(v6 + 16);
    v85 = v211;
    sub_100090C24(&v19[Configuration[5]]);
    v86 = OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_fetchSubtasks;
    v87 = Configuration[6];
    v88 = sub_1000C1388();
    (*(*(v88 - 8) + 16))(&v19[v87], v6 + v86, v88);
    v89 = v212;
    v90 = v213;
    v91 = *(v213 + 16);
    v91(&v19[Configuration[7]], v85, v212);
    *v19 = v218;
    v92 = v201;
    v93 = v210;
    (*(v201 + 16))(v209, v206, v210);
    v91(v217, v85, v89);
    v94 = (*(v92 + 80) + 16) & ~*(v92 + 80);
    v211 = (v9 + v94 + 7) & 0xFFFFFFFFFFFFFFF8;
    v95 = (v211 + 15) & 0xFFFFFFFFFFFFFFF8;
    v96 = (v95 + 15) & 0xFFFFFFFFFFFFFFF8;
    v97 = (*(v90 + 80) + v96 + 8) & ~*(v90 + 80);
    v98 = (v207 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
    v99 = swift_allocObject();
    (*(v92 + 32))(v99 + v94, v209, v93);
    *(v99 + v211) = v202;
    v100 = v217;
    *(v99 + v95) = v218;
    *(v99 + v96) = v216;
    (*(v90 + 32))(v99 + v97, v100, v89);
    v101 = (v99 + v98);
    v102 = v215;
    *v101 = v214;
    v101[1] = v102;

LABEL_49:
    v135 = v206;
    v136 = v203;
    sub_10006D34C(v206, v203, sub_1000A087C, v99);

    sub_100099C44(v136, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
    (*(v92 + 8))(v135, v210);
LABEL_50:
    (*(v204 + 8))(v208, v205);
    return;
  }

  if (v27 == enum case for REMNavigationSpecifier.scheduled(_:))
  {
    (*(v8 + 104))(v12, enum case for TTRListType.PredefinedSmartListType.scheduled(_:), v210);
    v200 = *(v6 + 16);
    v103 = v211;
    sub_100090C24(&v19[Configuration[5]]);
    v104 = OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_fetchSubtasks;
    v105 = Configuration[6];
    v106 = sub_1000C1388();
    (*(*(v106 - 8) + 16))(&v19[v105], v6 + v104, v106);
    v107 = v212;
    v108 = v213;
    v109 = *(v213 + 16);
    v109(&v19[Configuration[7]], v103, v212);
    *v19 = v218;
    v92 = v201;
    v110 = v210;
    (*(v201 + 16))(v209, v206, v210);
    v109(v217, v103, v107);
    v111 = (*(v92 + 80) + 16) & ~*(v92 + 80);
    v211 = (v9 + v111 + 7) & 0xFFFFFFFFFFFFFFF8;
    v112 = (v211 + 15) & 0xFFFFFFFFFFFFFFF8;
    v113 = (v112 + 15) & 0xFFFFFFFFFFFFFFF8;
    v114 = (*(v108 + 80) + v113 + 8) & ~*(v108 + 80);
    v115 = (v207 + v114 + 7) & 0xFFFFFFFFFFFFFFF8;
    v99 = swift_allocObject();
    (*(v92 + 32))(v99 + v111, v209, v110);
    *(v99 + v211) = v202;
    v116 = v217;
    *(v99 + v112) = v218;
    *(v99 + v113) = v216;
    (*(v108 + 32))(v99 + v114, v116, v107);
    v117 = (v99 + v115);
    v118 = v215;
    *v117 = v214;
    v117[1] = v118;

    goto LABEL_49;
  }

  if (v27 == enum case for REMNavigationSpecifier.allReminders(_:))
  {
    (*(v8 + 104))(v12, enum case for TTRListType.PredefinedSmartListType.all(_:), v210);
    v200 = *(v6 + 16);
    v119 = v211;
    sub_100090C24(&v19[Configuration[5]]);
    v120 = OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_fetchSubtasks;
    v121 = Configuration[6];
    v122 = sub_1000C1388();
    (*(*(v122 - 8) + 16))(&v19[v121], v6 + v120, v122);
    v123 = v212;
    v124 = v213;
    v125 = *(v213 + 16);
    v125(&v19[Configuration[7]], v119, v212);
    *v19 = v218;
    v92 = v201;
    v126 = v210;
    (*(v201 + 16))(v209, v206, v210);
    v125(v217, v119, v123);
    v127 = (*(v92 + 80) + 16) & ~*(v92 + 80);
    v211 = (v9 + v127 + 7) & 0xFFFFFFFFFFFFFFF8;
    v128 = (v211 + 15) & 0xFFFFFFFFFFFFFFF8;
    v129 = (v128 + 15) & 0xFFFFFFFFFFFFFFF8;
    v130 = (*(v124 + 80) + v129 + 8) & ~*(v124 + 80);
    v131 = (v207 + v130 + 7) & 0xFFFFFFFFFFFFFFF8;
    v99 = swift_allocObject();
    (*(v92 + 32))(v99 + v127, v209, v126);
    *(v99 + v211) = v202;
    v132 = v217;
    *(v99 + v128) = v218;
    *(v99 + v129) = v216;
    (*(v124 + 32))(v99 + v130, v132, v123);
    v133 = (v99 + v131);
    v134 = v215;
    *v133 = v214;
    v133[1] = v134;

    goto LABEL_49;
  }

  if (v27 == enum case for REMNavigationSpecifier.flagged(_:))
  {
    v137 = v8;
    (*(v8 + 104))(v12, enum case for TTRListType.PredefinedSmartListType.flagged(_:), v210);
    v200 = *(v6 + 16);
    v138 = v211;
    sub_100090C24(&v19[Configuration[5]]);
    v139 = OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_fetchSubtasks;
    v140 = Configuration[6];
    v141 = sub_1000C1388();
    (*(*(v141 - 8) + 16))(&v19[v140], v6 + v139, v141);
    v142 = v212;
    v143 = v213;
    v144 = *(v213 + 16);
    v144(&v19[Configuration[7]], v138, v212);
    *v19 = v218;
    v145 = v137;
    v146 = v210;
    (*(v137 + 16))(v209, v206, v210);
    v144(v217, v138, v142);
    v147 = (*(v137 + 80) + 16) & ~*(v137 + 80);
    v211 = (v9 + v147 + 7) & 0xFFFFFFFFFFFFFFF8;
    v148 = (v211 + 15) & 0xFFFFFFFFFFFFFFF8;
    v149 = (v148 + 15) & 0xFFFFFFFFFFFFFFF8;
    v150 = (*(v143 + 80) + v149 + 8) & ~*(v143 + 80);
    v151 = (v207 + v150 + 7) & 0xFFFFFFFFFFFFFFF8;
    v152 = swift_allocObject();
    (*(v145 + 32))(v152 + v147, v209, v146);
    *(v152 + v211) = v202;
    v153 = v217;
    *(v152 + v148) = v218;
    *(v152 + v149) = v216;
    (*(v143 + 32))(v152 + v150, v153, v142);
    v154 = (v152 + v151);
    v155 = v215;
    *v154 = v214;
    v154[1] = v155;

    v156 = sub_1000A087C;
LABEL_53:
    v157 = v206;
    v158 = v203;
    sub_10006D34C(v206, v203, v156, v152);

    sub_100099C44(v158, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
    (*(v201 + 8))(v157, v210);
    goto LABEL_50;
  }

  if (v27 != enum case for REMNavigationSpecifier.search(_:))
  {
    if (v27 == enum case for REMNavigationSpecifier.assigned(_:))
    {
      v167 = v8;
      (*(v8 + 104))(v12, enum case for TTRListType.PredefinedSmartListType.assigned(_:), v210);
      v200 = *(v6 + 16);
      v168 = v211;
      sub_100090C24(&v19[Configuration[5]]);
      v169 = OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_fetchSubtasks;
      v170 = Configuration[6];
      v171 = sub_1000C1388();
      (*(*(v171 - 8) + 16))(&v19[v170], v6 + v169, v171);
      v172 = v212;
      v173 = v213;
      v174 = *(v213 + 16);
      v174(&v19[Configuration[7]], v168, v212);
      *v19 = v218;
      v175 = v167;
      v176 = v210;
      (*(v167 + 16))(v209, v206, v210);
      v174(v217, v168, v172);
      v177 = (*(v167 + 80) + 16) & ~*(v167 + 80);
      v211 = (v9 + v177 + 7) & 0xFFFFFFFFFFFFFFF8;
      v178 = (v211 + 15) & 0xFFFFFFFFFFFFFFF8;
      v179 = (v178 + 15) & 0xFFFFFFFFFFFFFFF8;
      v180 = (*(v173 + 80) + v179 + 8) & ~*(v173 + 80);
      v181 = (v207 + v180 + 7) & 0xFFFFFFFFFFFFFFF8;
      v152 = swift_allocObject();
      (*(v175 + 32))(v152 + v177, v209, v176);
      *(v152 + v211) = v202;
      v182 = v217;
      *(v152 + v178) = v218;
      *(v152 + v179) = v216;
      (*(v173 + 32))(v152 + v180, v182, v172);
      v183 = (v152 + v181);
      v184 = v215;
      *v183 = v214;
      v183[1] = v184;

      v156 = sub_100099CA8;
      goto LABEL_53;
    }

    if (v27 == enum case for REMNavigationSpecifier.siriFoundInApps(_:))
    {
      if (qword_1000EC9B0 != -1)
      {
        swift_once();
      }

      v185 = sub_1000C1568();
      sub_10000D978(v185, qword_1000F0120);
      v186 = sub_1000C1558();
      v187 = sub_1000C2948();
      if (!os_log_type_enabled(v186, v187))
      {
        goto LABEL_83;
      }

      v188 = swift_slowAlloc();
      *v188 = 0;
      v189 = "Widget presenter: unable to display siriFoundInApps";
LABEL_82:
      _os_log_impl(&_mh_execute_header, v186, v187, v189, v188, 2u);

LABEL_83:

      goto LABEL_50;
    }

    if (v27 == enum case for REMNavigationSpecifier.tagged(_:))
    {
      if (qword_1000EC9B0 != -1)
      {
        swift_once();
      }

      v190 = sub_1000C1568();
      sub_10000D978(v190, qword_1000F0120);
      v186 = sub_1000C1558();
      v187 = sub_1000C2948();
      if (!os_log_type_enabled(v186, v187))
      {
        goto LABEL_83;
      }

      v188 = swift_slowAlloc();
      *v188 = 0;
      v189 = "Widget presenter: unable to display tags";
      goto LABEL_82;
    }

    if (v27 == enum case for REMNavigationSpecifier.completed(_:))
    {
      if (qword_1000EC9B0 != -1)
      {
        swift_once();
      }

      v191 = sub_1000C1568();
      sub_10000D978(v191, qword_1000F0120);
      v186 = sub_1000C1558();
      v187 = sub_1000C2948();
      if (!os_log_type_enabled(v186, v187))
      {
        goto LABEL_83;
      }

      v188 = swift_slowAlloc();
      *v188 = 0;
      v189 = "Widget presenter: unable to display completed";
      goto LABEL_82;
    }

    if (v27 == enum case for REMNavigationSpecifier.publicTemplate(_:))
    {
      if (qword_1000EC9B0 != -1)
      {
        swift_once();
      }

      v192 = sub_1000C1568();
      sub_10000D978(v192, qword_1000F0120);
      v186 = sub_1000C1558();
      v187 = sub_1000C2948();
      if (!os_log_type_enabled(v186, v187))
      {
        goto LABEL_83;
      }

      v188 = swift_slowAlloc();
      *v188 = 0;
      v189 = "Widget presenter: unable to display publicTemplate";
      goto LABEL_82;
    }

    if (v27 == enum case for REMNavigationSpecifier.newReminder(_:))
    {
      if (qword_1000EC9B0 != -1)
      {
        swift_once();
      }

      v193 = sub_1000C1568();
      sub_10000D978(v193, qword_1000F0120);
      v194 = sub_1000C1558();
      v195 = sub_1000C2948();
      if (!os_log_type_enabled(v194, v195))
      {
        goto LABEL_95;
      }

      v196 = swift_slowAlloc();
      *v196 = 0;
      v197 = "Widget presenter: unable to display newReminder";
    }

    else
    {
      if (v27 != enum case for REMNavigationSpecifier.requestLocationAuthorization(_:))
      {
        if (qword_1000EC9B0 != -1)
        {
          swift_once();
        }

        v199 = sub_1000C1568();
        sub_10000D978(v199, qword_1000F0120);
        v186 = sub_1000C1558();
        v187 = sub_1000C2948();
        if (!os_log_type_enabled(v186, v187))
        {
          goto LABEL_83;
        }

        v188 = swift_slowAlloc();
        *v188 = 0;
        v189 = "Widget presenter: unable to handle unknown navigation specifier";
        goto LABEL_82;
      }

      if (qword_1000EC9B0 != -1)
      {
        swift_once();
      }

      v198 = sub_1000C1568();
      sub_10000D978(v198, qword_1000F0120);
      v194 = sub_1000C1558();
      v195 = sub_1000C2948();
      if (!os_log_type_enabled(v194, v195))
      {
LABEL_95:

        return;
      }

      v196 = swift_slowAlloc();
      *v196 = 0;
      v197 = "Widget presenter: unable to handle requestLocationAuthorization";
    }

    _os_log_impl(&_mh_execute_header, v194, v195, v197, v196, 2u);

    goto LABEL_95;
  }

  if (qword_1000EC9B0 != -1)
  {
    swift_once();
  }

  v159 = sub_1000C1568();
  sub_10000D978(v159, qword_1000F0120);
  v160 = sub_1000C1558();
  v161 = sub_1000C2948();
  v162 = os_log_type_enabled(v160, v161);
  v163 = v208;
  v164 = v204;
  v165 = v205;
  if (v162)
  {
    v166 = swift_slowAlloc();
    *v166 = 0;
    _os_log_impl(&_mh_execute_header, v160, v161, "Widget presenter: unable to display search", v166, 2u);
  }

  (*(v164 + 8))(v163, v165);
}

void *sub_10008F144(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v32 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v30 = &v26 - v16;
  v17 = *(a3 + 16);
  if (!v17)
  {
    return &_swiftEmptyArrayStorage;
  }

  v18 = *(type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0) - 8);
  v27 = v12;
  v19 = (v12 + 48);
  v20 = a3 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v31 = *(v18 + 72);
  v21 = &_swiftEmptyArrayStorage;
  v28 = v11;
  v29 = a2;
  while (1)
  {
    a1(v20);
    if (v3)
    {
      break;
    }

    if ((*v19)(v10, 1, v11) == 1)
    {
      sub_1000084C0(v10, &qword_1000ECD40, &unk_1000C5880);
    }

    else
    {
      v22 = v30;
      sub_10009DB2C(v10, v30, type metadata accessor for TTRNewWidgetViewModel.Reminder);
      sub_10009DB2C(v22, v32, type metadata accessor for TTRNewWidgetViewModel.Reminder);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1000224D4(0, v21[2] + 1, 1, v21);
      }

      v24 = v21[2];
      v23 = v21[3];
      if (v24 >= v23 >> 1)
      {
        v21 = sub_1000224D4(v23 > 1, v24 + 1, 1, v21);
      }

      v21[2] = v24 + 1;
      sub_10009DB2C(v32, v21 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v24, type metadata accessor for TTRNewWidgetViewModel.Reminder);
      v11 = v28;
    }

    v20 += v31;
    if (!--v17)
    {
      return v21;
    }
  }

  return v21;
}

uint64_t sub_10008F460(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for TTRNewWidgetPresenter.Division(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

void sub_10008F54C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v99 = a7;
  v100 = a4;
  v101 = a5;
  v102 = a3;
  v97 = sub_1000C0AF8();
  v95 = *(v97 - 8);
  v12 = *(v95 + 64);
  __chkstk_darwin(v97);
  v93 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v13;
  Configuration = type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0);
  v14 = *(*(Configuration - 8) + 64);
  __chkstk_darwin(Configuration);
  v96 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100004D04(&qword_1000EFF50, &qword_1000C8D10);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v104 = &v87 - v18;
  v19 = sub_1000C1118();
  v91 = *(v19 - 8);
  v20 = *(v91 + 64);
  __chkstk_darwin(v19);
  v89 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100004D04(&qword_1000ECCE0, &qword_1000C4EF0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v87 - v24;
  v26 = sub_1000C0938();
  v105 = *(v26 - 8);
  v106 = v26;
  v27 = *(v105 + 64);
  __chkstk_darwin(v26);
  v29 = &v87 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v90 = &v87 - v31;
  __chkstk_darwin(v32);
  v103 = &v87 - v33;
  if (qword_1000EC9B0 != -1)
  {
    swift_once();
  }

  v34 = sub_1000C1568();
  v35 = sub_10000D978(v34, qword_1000F0120);

  v98 = v35;
  v36 = sub_1000C1558();
  v37 = sub_1000C2968();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v88 = v19;
    v39 = v29;
    v40 = v38;
    v41 = a6;
    v42 = v8;
    v43 = swift_slowAlloc();
    v107[0] = v43;
    *v40 = 136315138;
    *(v40 + 4) = sub_1000B7B58(a1, a2, v107);
    _os_log_impl(&_mh_execute_header, v36, v37, "Widget presenter: requested %s", v40, 0xCu);
    sub_10002285C(v43);
    v8 = v42;
    a6 = v41;

    v29 = v39;
    v19 = v88;
  }

  v44 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v44 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v45 = v105;
  v46 = v106;
  v47 = v104;
  if (v44)
  {
    sub_1000C0918();
    if ((*(v45 + 48))(v25, 1, v46) == 1)
    {
      v48 = a1;
      sub_1000084C0(v25, &qword_1000ECCE0, &qword_1000C4EF0);

      v49 = sub_1000C1558();
      v50 = sub_1000C2948();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v107[0] = v52;
        *v51 = 136315138;
        *(v51 + 4) = sub_1000B7B58(v48, a2, v107);
        _os_log_impl(&_mh_execute_header, v49, v50, "Widget presenter: unable to parse identifier %s", v51, 0xCu);
        sub_10002285C(v52);
      }
    }

    else
    {
      v97 = a6;
      v70 = v103;
      (*(v45 + 32))(v103, v25, v46);
      v71 = *(v45 + 16);
      v71(v90, v70, v46);
      sub_1000C1128();
      v72 = v91;
      if ((*(v91 + 48))(v47, 1, v19) == 1)
      {
        sub_1000084C0(v47, &qword_1000EFF50, &qword_1000C8D10);
        v73 = v103;
        v71(v29, v103, v46);
        v74 = sub_1000C1558();
        v75 = sub_1000C2948();
        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v77 = v45;
          v78 = swift_slowAlloc();
          v107[0] = v78;
          *v76 = 136315138;
          sub_1000A064C(&qword_1000F0410, &type metadata accessor for URL);
          v79 = sub_1000C2CA8();
          v80 = v29;
          v82 = v81;
          v83 = *(v77 + 8);
          v83(v80, v46);
          v84 = sub_1000B7B58(v79, v82, v107);

          *(v76 + 4) = v84;
          _os_log_impl(&_mh_execute_header, v74, v75, "Widget presenter: unable to parse url %s", v76, 0xCu);
          sub_10002285C(v78);

          v83(v73, v46);
        }

        else
        {

          v86 = *(v45 + 8);
          v86(v29, v46);
          v86(v73, v46);
        }
      }

      else
      {
        v85 = v89;
        (*(v72 + 32))(v89, v47, v19);
        sub_10008D488(v85, v102, v100, v101, v97, v99);
        (*(v72 + 8))(v85, v19);
        (*(v45 + 8))(v103, v46);
      }
    }
  }

  else
  {
    v106 = *(v8 + 16);
    v53 = Configuration;
    v54 = v96;
    v55 = v101;
    sub_100090C24(&v96[*(Configuration + 20)]);
    v56 = OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_fetchSubtasks;
    v57 = *(v53 + 24);
    v58 = sub_1000C1388();
    (*(*(v58 - 8) + 16))(&v54[v57], v8 + v56, v58);
    v59 = *(v53 + 28);
    v60 = v95;
    v61 = *(v95 + 16);
    v62 = v97;
    v61(&v54[v59], v55, v97);
    v63 = v102;
    *v54 = v102;
    v64 = v93;
    v61(v93, v55, v62);
    v65 = (*(v60 + 80) + 40) & ~*(v60 + 80);
    v66 = (v94 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
    v67 = swift_allocObject();
    *(v67 + 2) = v8;
    *(v67 + 3) = v63;
    *(v67 + 4) = v100;
    (*(v60 + 32))(&v67[v65], v64, v62);
    v68 = &v67[v66];
    v69 = v99;
    *v68 = a6;
    v68[1] = v69;

    sub_100068A80(v54, sub_1000A0880, v67);

    sub_100099C44(v54, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
  }
}

void sub_10008FEEC(uint64_t a1@<X0>, char *a2@<X8>)
{
  v70 = a1;
  v3 = sub_1000C0C58();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C1118();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000C0938();
  v68 = *(v13 - 8);
  v69 = v13;
  v14 = *(v68 + 64);
  __chkstk_darwin(v13);
  v16 = v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000EC9B0 != -1)
  {
    swift_once();
  }

  v17 = sub_1000C1568();
  sub_10000D978(v17, qword_1000F0120);
  v18 = sub_1000C1558();
  v19 = sub_1000C2968();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v67 = v8;
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Widget presenter: requesting placeholder view model", v20, 2u);
    v8 = v67;
  }

  v21 = enum case for REMNavigationSpecifier.RootPathSpecifier.none(_:);
  v22 = sub_1000C10D8();
  (*(*(v22 - 8) + 104))(v12, v21, v22);
  (*(v9 + 104))(v12, enum case for REMNavigationSpecifier.root(_:), v8);
  sub_1000C1108();
  (*(v9 + 8))(v12, v8);
  v72._countAndFlagsBits = 119;
  v72._object = 0xE100000000000000;
  sub_1000C2708(v72, 100);
  v23 = objc_allocWithZone(NSAttributedString);
  v24 = sub_1000C2638();

  v25 = [v23 initWithString:v24];

  v27 = v70;
  v28 = (v70 + 1);
  if (__OFADD__(v70, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  if ((v28 & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v70 != -1)
  {
    v29 = sub_100099BC0(v70 + 1, 0);
    v26 = sub_10009A638(v71, (v29 + 4), v27 + 1, 0, v27 + 1);
    if (v26 == v28)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  v29 = _swiftEmptyArrayStorage;
LABEL_11:
  __chkstk_darwin(v26);
  v62[-2] = v16;
  v62[-1] = v25;
  v30 = sub_10008D0D8(sub_1000A0820, &v62[-4], v29);

  sub_1000C0C78();
  sub_1000C0C28();
  v67 = sub_1000C0C38();
  v31 = v16;
  v34 = *(v4 + 8);
  v33 = v4 + 8;
  v32 = v34;
  v34(v7, v3);
  v73._countAndFlagsBits = 119;
  v73._object = 0xE100000000000000;
  v35 = sub_1000C2708(v73, 20);
  if (!__OFADD__(v27, 2))
  {
    v65 = v35;
    v66 = v27 + 2;
    v64 = v36;
    v37 = type metadata accessor for TTRNewWidgetViewModel(0);
    v70 = v30;
    v62[1] = v33;
    v38 = v37;
    v39 = *(v37 + 28);
    v63 = v31;
    v40 = enum case for TTRRemindersListViewModel.EmptyListMessagingType.ViewModelType.defaultForNoReminders(_:);
    v41 = sub_1000C0E28();
    (*(*(v41 - 8) + 104))(&a2[v39], v40, v41);
    v42 = enum case for TTRRemindersListViewModel.EmptyListMessagingType.viewModel(_:);
    v43 = sub_1000C0E58();
    (*(*(v43 - 8) + 104))(&a2[v39], v42, v43);
    v74._countAndFlagsBits = 119;
    v74._object = 0xE100000000000000;
    v44 = sub_1000C2708(v74, 10);
    v46 = v45;
    v47 = v38[9];
    v48 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
    (*(*(v48 - 8) + 56))(&a2[v47], 1, 1, v48);
    sub_1000C0C28();
    v49 = sub_1000C0C48();
    v51 = v50;

    v32(v7, v3);
    v53 = v68;
    v52 = v69;
    v54 = v63;
    (*(v68 + 16))(&a2[v38[18]], v63, v69);
    v55 = v64;
    *a2 = v65;
    *(a2 + 1) = v55;
    v56 = v67;
    *(a2 + 2) = v66;
    *(a2 + 3) = 11565;
    *(a2 + 4) = 0xE200000000000000;
    v57 = &a2[v38[8]];
    *v57 = v44;
    v57[1] = v46;
    *&a2[v38[10]] = v56;
    v58 = &a2[v38[11]];
    *v58 = v49;
    v58[1] = v51;
    *&a2[v38[12]] = 0;
    v59 = &a2[v38[13]];
    *v59 = 0;
    *(v59 + 1) = 0;
    v60 = &a2[v38[14]];
    *v60 = 0;
    *(v60 + 1) = 0;
    a2[v38[15]] = 0;
    v61 = &a2[v38[16]];
    *v61 = 0;
    *(v61 + 1) = 0;
    *&a2[v38[17]] = 0;
    *&a2[v38[19]] = v70;
    a2[v38[20]] = 1;
    (*(v53 + 8))(v54, v52);
    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_100090590()
{
  v0 = sub_1000C1568();
  sub_10000D9B0(v0, qword_1000F0120);
  v1 = sub_10000D978(v0, qword_1000F0120);
  if (qword_1000EC8E8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D978(v0, qword_1000FAAE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100090658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a5;
  v38 = a4;
  v39 = a3;
  v37 = sub_1000C0C18();
  v7 = *(v37 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v37);
  v36 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Configuration = type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0);
  v10 = (Configuration - 8);
  v11 = *(*(Configuration - 8) + 64);
  __chkstk_darwin(Configuration);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100004D04(&qword_1000F0278, &unk_1000C8CA0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v34 - v17;
  (*(v15 + 16))(&v34 - v17, a1, v14);
  v19 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v20 = swift_allocObject();
  (*(v15 + 32))(v20 + v19, v18, v14);
  v34 = *(a2 + 16);
  v21 = v35;
  sub_100090C24(&v13[v10[7]]);
  v22 = OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_fetchSubtasks;
  v23 = v10[8];
  v24 = sub_1000C1388();
  (*(*(v24 - 8) + 16))(&v13[v23], a2 + v22, v24);
  v25 = v10[9];
  v26 = sub_1000C0AF8();
  (*(*(v26 - 8) + 16))(&v13[v25], v21, v26);
  v27 = v39;
  *v13 = v38;
  v28 = v36;
  v29 = v37;
  (*(v7 + 16))(v36, v27, v37);
  v30 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v31 = swift_allocObject();
  (*(v7 + 32))(v31 + v30, v28, v29);
  v32 = (v31 + ((v8 + v30 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v32 = sub_100099A04;
  v32[1] = v20;

  sub_10006D34C(v27, v13, sub_100099B20, v31);

  return sub_100099C44(v13, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
}

uint64_t sub_1000909F0()
{

  sub_100004D04(&qword_1000F0278, &unk_1000C8CA0);
  return sub_1000C2828();
}

id sub_100090A40@<X0>(void *a1@<X0>, void *a2@<X2>, char *a3@<X8>)
{
  v6 = sub_1000C08D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = *a1;
  v17[0] = sub_1000C2CA8();
  v17[1] = v11;
  (*(v7 + 104))(v10, enum case for URL.DirectoryHint.inferFromPath(_:), v6);
  v12 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v13 = v12[7];
  sub_100012814();
  sub_1000C0928();
  (*(v7 + 8))(v10, v6);

  v14 = v12[6];
  v15 = sub_1000C0818();
  (*(*(v15 - 8) + 56))(&a3[v14], 1, 1, v15);
  *a3 = a2;
  *(a3 + 1) = 0;
  *&a3[v12[8]] = 0;
  *&a3[v12[9]] = 0;
  a3[v12[10]] = 0;
  a3[v12[11]] = 0;
  return a2;
}

uint64_t sub_100090C24@<X0>(char *a1@<X8>)
{
  v29 = a1;
  v28 = sub_100004D04(&qword_1000EE308, &unk_1000C8CC0);
  v1 = *(*(v28 - 8) + 64);
  v2 = __chkstk_darwin(v28);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v28 - v5;
  v7 = sub_1000C0BC8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000C0AF8();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = __chkstk_darwin(v12);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v28 - v18;
  sub_1000C0A48();
  sub_1000C0B98();
  sub_1000C0B88();
  (*(v8 + 8))(v11, v7);
  sub_1000A064C(&qword_1000EE318, &type metadata accessor for Date);
  result = sub_1000C25E8();
  if (result)
  {
    v21 = v13[4];
    v21(v6, v19, v12);
    v22 = v28;
    v21(&v6[*(v28 + 48)], v17, v12);
    sub_1000082B4(v6, v4, &qword_1000EE308, &unk_1000C8CC0);
    v23 = *(v22 + 48);
    v24 = v29;
    v21(v29, v4, v12);
    v25 = v13[1];
    v25(&v4[v23], v12);
    sub_10001DA60(v6, v4, &qword_1000EE308, &unk_1000C8CC0);
    v26 = *(v22 + 48);
    v27 = sub_100004D04(&qword_1000EE310, &qword_1000C6380);
    v21(&v24[*(v27 + 36)], &v4[v26], v12);
    return (v25)(v4, v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100090F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v52 = a6;
  v53 = a7;
  v48 = a5;
  v50 = a4;
  v51 = a2;
  v49 = sub_1000C0AF8();
  v8 = *(v49 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v49);
  v47 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100004D04(&qword_1000EFC28, &unk_1000C8CE0);
  v46 = *(v10 - 8);
  v11 = *(v46 + 64);
  __chkstk_darwin(v10 - 8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = (&v45 - v14);
  v16 = sub_100004D04(&qword_1000EFC20, &unk_1000C7DC0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = (&v45 - v18);
  sub_1000082B4(a1, &v45 - v18, &qword_1000EFC20, &unk_1000C7DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v19;
    if (qword_1000EC9B0 != -1)
    {
      swift_once();
    }

    v21 = sub_1000C1568();
    sub_10000D978(v21, qword_1000F0120);
    swift_errorRetain();
    v22 = sub_1000C1558();
    v23 = sub_1000C2948();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v54 = v25;
      *v24 = 136446210;
      swift_getErrorValue();
      v26 = sub_1000C2D08();
      v28 = sub_1000B7B58(v26, v27, &v54);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "Widget presenter: Could not fetch default list because {error: %{public}s}", v24, 0xCu);
      sub_10002285C(v25);
    }

    v52(_swiftEmptyArrayStorage);
  }

  else
  {
    sub_10001DA60(v19, v15, &qword_1000EFC28, &unk_1000C8CE0);
    v30 = v15;
    if (qword_1000EC9B0 != -1)
    {
      swift_once();
    }

    v31 = sub_1000C1568();
    sub_10000D978(v31, qword_1000F0120);
    v32 = sub_1000C1558();
    v33 = sub_1000C2968();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Widget presenter: Fetched default list", v34, 2u);
    }

    v45 = *v15;
    sub_1000082B4(v15, v12, &qword_1000EFC28, &unk_1000C8CE0);
    v35 = v47;
    v36 = v49;
    (*(v8 + 16))(v47, v48, v49);
    v37 = (*(v46 + 80) + 16) & ~*(v46 + 80);
    v48 = v30;
    v38 = (v11 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = (*(v8 + 80) + v38 + 8) & ~*(v8 + 80);
    v40 = (v9 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    sub_10001DA60(v12, v41 + v37, &qword_1000EFC28, &unk_1000C8CE0);
    *(v41 + v38) = v51;
    (*(v8 + 32))(v41 + v39, v35, v36);
    v42 = v50;
    *(v41 + v40) = v50;
    v43 = (v41 + ((v40 + 15) & 0xFFFFFFFFFFFFFFF8));
    v44 = v53;
    *v43 = v52;
    v43[1] = v44;

    sub_1000953BC(v45, v42, sub_1000A0840, v41);

    return sub_1000084C0(v48, &qword_1000EFC28, &unk_1000C8CE0);
  }
}

uint64_t sub_100091504(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v88 = a8;
  v91 = a7;
  v85 = a6;
  v86 = a5;
  Configuration = type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0);
  v11 = *(*(Configuration - 8) + 64);
  __chkstk_darwin(Configuration);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000C0AF8();
  v89 = *(v14 - 8);
  v90 = v14;
  v15 = *(v89 + 64);
  __chkstk_darwin(v14);
  v87 = v16;
  v17 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100004D04(&qword_1000EFC28, &unk_1000C8CE0);
  v82 = *(v18 - 8);
  v19 = *(v82 + 8);
  v20 = __chkstk_darwin(v18 - 8);
  v83 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = (&v79 - v21);
  v23 = sub_100004D04(&qword_1000EFC20, &unk_1000C7DC0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = (&v79 - v25);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return a3(&_swiftEmptyArrayStorage);
  }

  v28 = Strong;
  v80 = a4;
  v81 = a3;
  sub_1000082B4(a1, v26, &qword_1000EFC20, &unk_1000C7DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v82 = v17;
    v29 = *v26;
    if (qword_1000EC9B0 != -1)
    {
      swift_once();
    }

    v30 = sub_1000C1568();
    sub_10000D978(v30, qword_1000F0120);
    v31 = v86;
    swift_errorRetain();
    v32 = sub_1000C1558();
    v33 = sub_1000C2948();

    v34 = os_log_type_enabled(v32, v33);
    v83 = v29;
    if (v34)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v92 = v86;
      *v35 = 138543618;
      *(v35 + 4) = v31;
      *v36 = v31;
      *(v35 + 12) = 2082;
      swift_getErrorValue();
      v37 = v31;
      v38 = sub_1000C2D08();
      v40 = sub_1000B7B58(v38, v39, &v92);

      *(v35 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v32, v33, "Widget presenter: Could not fetch list {listID: %{public}@ error: %{public}s}", v35, 0x16u);
      sub_1000084C0(v36, &qword_1000F0280, &qword_1000C8CF0);

      sub_10002285C(v86);
    }

    v86 = *(v28 + 16);
    v41 = Configuration;
    v42 = v88;
    sub_100090C24(&v13[*(Configuration + 20)]);
    v43 = OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_fetchSubtasks;
    v44 = *(v41 + 24);
    v45 = sub_1000C1388();
    (*(*(v45 - 8) + 16))(&v13[v44], v28 + v43, v45);
    v46 = v89;
    v47 = *(v89 + 16);
    v48 = &v13[*(v41 + 28)];
    v49 = v28;
    v50 = v90;
    v47(v48, v42, v90);
    v51 = v85;
    *v13 = v85;
    v52 = v82;
    v47(v82, v42, v50);
    v53 = (*(v46 + 80) + 40) & ~*(v46 + 80);
    v54 = (v87 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v55 = swift_allocObject();
    *(v55 + 2) = v49;
    *(v55 + 3) = v51;
    *(v55 + 4) = v91;
    (*(v46 + 32))(&v55[v53], v52, v50);
    v56 = &v55[v54];
    v57 = v80;
    *v56 = v81;
    *(v56 + 1) = v57;

    sub_100068A80(v13, sub_10009A158, v55);

    sub_100099C44(v13, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
  }

  else
  {
    sub_10001DA60(v26, v22, &qword_1000EFC28, &unk_1000C8CE0);
    if (qword_1000EC9B0 != -1)
    {
      swift_once();
    }

    v59 = v17;
    v85 = v28;
    v60 = sub_1000C1568();
    sub_10000D978(v60, qword_1000F0120);
    v61 = v86;
    v62 = sub_1000C1558();
    v63 = sub_1000C2968();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v64 = 138543362;
      *(v64 + 4) = v61;
      *v65 = v61;
      v66 = v61;
      _os_log_impl(&_mh_execute_header, v62, v63, "Widget presenter: Fetched list {listID: %{public}@}", v64, 0xCu);
      sub_1000084C0(v65, &qword_1000F0280, &qword_1000C8CF0);
    }

    v79 = v22;
    v86 = *v22;
    v67 = v22;
    v68 = v83;
    sub_1000082B4(v67, v83, &qword_1000EFC28, &unk_1000C8CE0);
    v69 = v89;
    v70 = v90;
    (*(v89 + 16))(v59, v88, v90);
    v71 = (v82[80] + 16) & ~v82[80];
    v72 = (v19 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
    v73 = (*(v69 + 80) + v72 + 8) & ~*(v69 + 80);
    v74 = (v87 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
    v75 = swift_allocObject();
    sub_10001DA60(v68, v75 + v71, &qword_1000EFC28, &unk_1000C8CE0);
    *(v75 + v72) = v85;
    (*(v69 + 32))(v75 + v73, v59, v70);
    v76 = v91;
    *(v75 + v74) = v91;
    v77 = (v75 + ((v74 + 15) & 0xFFFFFFFFFFFFFFF8));
    v78 = v80;
    *v77 = v81;
    v77[1] = v78;

    sub_1000953BC(v86, v76, sub_10009A160, v75);

    return sub_1000084C0(v79, &qword_1000EFC28, &unk_1000C8CE0);
  }
}

uint64_t sub_100091D7C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v76 = a8;
  v77 = a7;
  v74 = a6;
  v75 = a5;
  v11 = sub_1000C0AF8();
  v72 = *(v11 - 8);
  v73 = v11;
  v12 = *(v72 + 64);
  __chkstk_darwin(v11);
  v71 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Configuration = type metadata accessor for TTRNewWidgetInteractorFetchConfiguration(0);
  v13 = *(*(Configuration - 8) + 64);
  __chkstk_darwin(Configuration);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100004D04(&qword_1000EFC60, &qword_1000C7E48);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = (&v65 - v18);
  v20 = sub_100004D04(&qword_1000EFC58, &qword_1000C7E40);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = (&v65 - v22);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return (a3)(&_swiftEmptyArrayStorage);
  }

  v25 = Strong;
  v68 = a3;
  v69 = a4;
  sub_1000082B4(a1, v23, &qword_1000EFC58, &qword_1000C7E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = *v23;
    if (qword_1000EC9B0 != -1)
    {
      swift_once();
    }

    v27 = sub_1000C1568();
    sub_10000D978(v27, qword_1000F0120);
    v28 = v75;
    swift_errorRetain();
    v29 = sub_1000C1558();
    v30 = sub_1000C2948();

    v31 = os_log_type_enabled(v29, v30);
    v67 = v26;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v66 = v33;
      v75 = swift_slowAlloc();
      v78 = v75;
      *v32 = 138543618;
      *(v32 + 4) = v28;
      *v33 = v28;
      *(v32 + 12) = 2082;
      swift_getErrorValue();
      LOBYTE(v33) = v30;
      v34 = v28;
      v35 = sub_1000C2D08();
      v37 = sub_1000B7B58(v35, v36, &v78);

      *(v32 + 14) = v37;
      _os_log_impl(&_mh_execute_header, v29, v33, "Widget presenter: Could not fetch custom smart list {customSmartListID: %{public}@ error: %{public}s}", v32, 0x16u);
      sub_1000084C0(v66, &qword_1000F0280, &qword_1000C8CF0);

      sub_10002285C(v75);
    }

    v75 = *(v25 + 16);
    v38 = Configuration;
    v39 = v76;
    sub_100090C24(&v15[*(Configuration + 20)]);
    v40 = OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_fetchSubtasks;
    v41 = *(v38 + 24);
    v42 = sub_1000C1388();
    (*(*(v42 - 8) + 16))(&v15[v41], v25 + v40, v42);
    v43 = *(v38 + 28);
    v45 = v72;
    v44 = v73;
    v46 = *(v72 + 16);
    v46(&v15[v43], v39, v73);
    v47 = v74;
    *v15 = v74;
    v48 = v71;
    v46(v71, v39, v44);
    v49 = (*(v45 + 80) + 40) & ~*(v45 + 80);
    v50 = (v12 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v51 = swift_allocObject();
    *(v51 + 2) = v25;
    *(v51 + 3) = v47;
    *(v51 + 4) = v77;
    (*(v45 + 32))(&v51[v49], v48, v44);
    v52 = &v51[v50];
    v53 = v69;
    *v52 = v68;
    v52[1] = v53;

    sub_100068A80(v15, sub_1000A0880, v51);

    sub_100099C44(v15, type metadata accessor for TTRNewWidgetInteractorFetchConfiguration);
  }

  else
  {
    sub_10001DA60(v23, v19, &qword_1000EFC60, &qword_1000C7E48);
    if (qword_1000EC9B0 != -1)
    {
      swift_once();
    }

    v55 = sub_1000C1568();
    sub_10000D978(v55, qword_1000F0120);
    v56 = v75;
    v57 = sub_1000C1558();
    v58 = sub_1000C2968();

    v59 = os_log_type_enabled(v57, v58);
    v61 = v68;
    v60 = v69;
    if (v59)
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v62 = 138543362;
      *(v62 + 4) = v56;
      *v63 = v56;
      v64 = v56;
      _os_log_impl(&_mh_execute_header, v57, v58, "Widget presenter: Fetched custom smart list {customSmartListID: %{public}@}", v62, 0xCu);
      sub_1000084C0(v63, &qword_1000F0280, &qword_1000C8CF0);
    }

    sub_10009DEFC(v19, v77, v76, v61, v60);

    return sub_1000084C0(v19, &qword_1000EFC60, &qword_1000C7E48);
  }
}

uint64_t sub_10009245C(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v78 = a4;
  v79 = a3;
  v82 = a2;
  v77 = a1;
  v4 = sub_100004D04(&qword_1000EE300, &unk_1000C6370);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v84 = &v75 - v6;
  v85 = sub_1000C0AF8();
  v81 = *(v85 - 8);
  v7 = *(v81 + 64);
  v8 = __chkstk_darwin(v85);
  v80 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v83 = &v75 - v10;
  v11 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
  v75 = *(v11 - 8);
  v12 = *(v75 + 64);
  __chkstk_darwin(v11 - 8);
  v14 = (&v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_1000C0C18();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v75 - v21;
  v76 = sub_100004D04(&qword_1000EFBE8, &unk_1000C8CB0);
  v23 = *(*(v76 - 8) + 64);
  __chkstk_darwin(v76);
  v25 = &v75 - v24;
  v26 = sub_100004D04(&qword_1000EFB98, &qword_1000C7C50);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v29 = (&v75 - v28);
  sub_1000082B4(v77, &v75 - v28, &qword_1000EFB98, &qword_1000C7C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = *v29;
    if (qword_1000EC9B0 != -1)
    {
      swift_once();
    }

    v31 = sub_1000C1568();
    sub_10000D978(v31, qword_1000F0120);
    v32 = v20;
    (*(v16 + 16))(v20, v82, v15);
    swift_errorRetain();
    v33 = v15;
    v34 = sub_1000C1558();
    v35 = sub_1000C2948();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *v36 = 136446466;
      v37 = sub_1000C0C08();
      v39 = v38;
      (*(v16 + 8))(v32, v33);
      v40 = sub_1000B7B58(v37, v39, &v86);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2082;
      swift_getErrorValue();
      v41 = sub_1000C2D18();
      v43 = sub_1000B7B58(v41, v42, &v86);

      *(v36 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v34, v35, "Widget presenter: Could not fetch pre-defined smart list {predefinedSmartListType: %{public}s, error %{public}s}", v36, 0x16u);
      swift_arrayDestroy();

      v44 = v79;
    }

    else
    {

      (*(v16 + 8))(v20, v33);
      v44 = v79;
    }

    v44(_swiftEmptyArrayStorage);
  }

  else
  {
    sub_10001DA60(v29, v25, &qword_1000EFBE8, &unk_1000C8CB0);
    if (qword_1000EC9B0 != -1)
    {
      swift_once();
    }

    v45 = sub_1000C1568();
    sub_10000D978(v45, qword_1000F0120);
    (*(v16 + 16))(v22, v82, v15);
    v46 = sub_1000C1558();
    v47 = sub_1000C2968();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v86 = v49;
      *v48 = 136446210;
      v82 = sub_1000C0C08();
      v51 = v50;
      (*(v16 + 8))(v22, v15);
      v52 = sub_1000B7B58(v82, v51, &v86);

      *(v48 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v46, v47, "Widget presenter: Fetched pre-defined smart list {predefinedSmartListType: %{public}s}", v48, 0xCu);
      sub_10002285C(v49);
    }

    else
    {

      (*(v16 + 8))(v22, v15);
    }

    v54 = *(v76 + 40);
    v77 = v25;
    v55 = *&v25[v54];
    v56 = *(v55 + 16);
    if (v56)
    {
      v57 = v55 + ((*(v75 + 80) + 32) & ~*(v75 + 80));
      v82 = *(v75 + 72);
      v58 = (v81 + 32);
      v59 = (v81 + 56);
      v60 = _swiftEmptyArrayStorage;
      v61 = (v81 + 48);
      do
      {
        sub_10009DA8C(v57, v14, type metadata accessor for TTRNewWidgetInteractorReminderWrapper);
        v62 = v14[4];
        sub_100026D74(v14, v14[3]);
        if ((sub_1000C0DA8() & 1) != 0 || (v63 = v14[4], sub_100026D74(v14, v14[3]), (v64 = sub_1000C0D98()) == 0))
        {
          v71 = 1;
          v68 = v84;
          v70 = v85;
        }

        else
        {
          v65 = v64;
          v66 = [v64 date];

          v67 = v80;
          sub_1000C0AA8();

          v68 = v84;
          v69 = v67;
          v70 = v85;
          (*v58)(v84, v69, v85);
          v71 = 0;
        }

        (*v59)(v68, v71, 1, v70);
        sub_100099C44(v14, type metadata accessor for TTRNewWidgetInteractorReminderWrapper);
        if ((*v61)(v68, 1, v70) == 1)
        {
          sub_1000084C0(v68, &qword_1000EE300, &unk_1000C6370);
        }

        else
        {
          v72 = *v58;
          (*v58)(v83, v68, v70);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v60 = sub_1000224AC(0, *(v60 + 2) + 1, 1, v60);
          }

          v74 = *(v60 + 2);
          v73 = *(v60 + 3);
          if (v74 >= v73 >> 1)
          {
            v60 = sub_1000224AC(v73 > 1, v74 + 1, 1, v60);
          }

          *(v60 + 2) = v74 + 1;
          v72(&v60[((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v74], v83, v85);
        }

        v57 += v82;
        --v56;
      }

      while (v56);
    }

    else
    {
      v60 = _swiftEmptyArrayStorage;
    }

    v79(v60);

    return sub_1000084C0(v77, &qword_1000EFBE8, &unk_1000C8CB0);
  }
}

uint64_t sub_100092DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, void (*a7)(void *), uint64_t a8)
{
  v130 = a8;
  v131 = a7;
  v136 = a6;
  v134 = a3;
  v144 = a2;
  v139 = a1;
  v8 = type metadata accessor for TTRNewWidgetPresenter.Snapshot(0);
  v141 = *(v8 - 8);
  v142 = v8;
  v9 = *(v141 + 64);
  __chkstk_darwin(v8);
  v135 = v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v138 = v122 - v12;
  v13 = sub_100004D04(&qword_1000F0290, &qword_1000C8D08);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v122 - v15;
  v140 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
  v124 = *(v140 - 8);
  v17 = v124[8];
  __chkstk_darwin(v140);
  v143 = (v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v145 = type metadata accessor for TTRNewWidgetPresenter.Division(0);
  v123 = *(v145 - 8);
  v19 = *(v123 + 64);
  __chkstk_darwin(v145);
  v21 = v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100004D04(&qword_1000EFF50, &qword_1000C8D10);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v133 = v122 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v132 = v122 - v26;
  v129 = sub_1000C1118();
  v128 = *(v129 - 8);
  v27 = *(v128 + 64);
  __chkstk_darwin(v129);
  v127 = v122 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_1000C0C18();
  v29 = *(v137 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v137);
  v32 = v122 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = v122 - v34;
  v125 = sub_100004D04(&qword_1000EFBE8, &unk_1000C8CB0);
  v36 = *(*(v125 - 8) + 64);
  __chkstk_darwin(v125);
  v38 = v122 - v37;
  v39 = sub_100004D04(&qword_1000EFB98, &qword_1000C7C50);
  v40 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v42 = (v122 - v41);
  sub_1000082B4(v139, v122 - v41, &qword_1000EFB98, &qword_1000C7C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v43 = *v42;
    if (qword_1000EC9B0 != -1)
    {
      swift_once();
    }

    v44 = sub_1000C1568();
    sub_10000D978(v44, qword_1000F0120);
    v45 = v32;
    v46 = v32;
    v47 = v137;
    (*(v29 + 16))(v46, v144, v137);
    swift_errorRetain();
    v48 = sub_1000C1558();
    v49 = sub_1000C2948();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v146[0] = swift_slowAlloc();
      *v50 = 136446466;
      v51 = sub_1000C0C08();
      v53 = v52;
      (*(v29 + 8))(v45, v47);
      v54 = sub_1000B7B58(v51, v53, v146);

      *(v50 + 4) = v54;
      *(v50 + 12) = 2082;
      swift_getErrorValue();
      v55 = sub_1000C2D18();
      v57 = sub_1000B7B58(v55, v56, v146);

      *(v50 + 14) = v57;
      _os_log_impl(&_mh_execute_header, v48, v49, "Widget presenter: Could not fetch pre-defined smart list {predefinedSmartListType: %{public}s, error %{public}s}", v50, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v29 + 8))(v45, v47);
    }

    v131(_swiftEmptyArrayStorage);
  }

  sub_10001DA60(v42, v38, &qword_1000EFBE8, &unk_1000C8CB0);
  if (qword_1000EC9B0 != -1)
  {
    swift_once();
  }

  v126 = v38;
  v58 = sub_1000C1568();
  sub_10000D978(v58, qword_1000F0120);
  v59 = v137;
  (*(v29 + 16))(v35, v144, v137);
  v60 = sub_1000C1558();
  v61 = sub_1000C2968();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v146[0] = v63;
    *v62 = 136446210;
    v139 = sub_1000C0C08();
    v65 = v64;
    (*(v29 + 8))(v35, v59);
    v66 = sub_1000B7B58(v139, v65, v146);

    *(v62 + 4) = v66;
    _os_log_impl(&_mh_execute_header, v60, v61, "Widget presenter: Fetched pre-defined smart list {predefinedSmartListType: %{public}s}", v62, 0xCu);
    sub_10002285C(v63);
  }

  else
  {

    (*(v29 + 8))(v35, v59);
  }

  v68 = v128;
  v69 = v127;
  v70 = sub_1000C0BD8();
  v71 = v132;
  sub_1000C29A8();
  v72 = *(v68 + 48);
  v73 = v129;
  if (v72(v71, 1, v129) == 1)
  {
    v74 = enum case for REMNavigationSpecifier.SmartListPathSpecifier.showContents(_:);
    v75 = sub_1000C10B8();
    (*(*(v75 - 8) + 104))(v69, v74, v75);
    (*(v68 + 104))(v69, enum case for REMNavigationSpecifier.today(_:), v73);
    v76 = v72(v71, 1, v73);
    v77 = v125;
    if (v76 != 1)
    {
      sub_1000084C0(v71, &qword_1000EFF50, &qword_1000C8D10);
    }
  }

  else
  {
    (*(v68 + 32))(v69, v71, v73);
    v77 = v125;
  }

  v125 = v70;
  LODWORD(v137) = sub_1000C2998();
  v78 = *(v77 + 40);
  v79 = *&v126[*(v77 + 36)];
  v139 = *&v126[v78];
  v80 = v133;
  (*(v68 + 16))(v133, v69, v73);
  v81 = (*(v68 + 56))(v80, 0, 1, v73);
  __chkstk_darwin(v81);
  v82 = v136;
  v83 = v134;
  v122[-4] = v136;
  v122[-3] = v83;
  v122[-2] = v80;
  v144 = sub_10008D27C(sub_1000A0864, &v122[-6], v79, type metadata accessor for TTRNewWidgetViewModel.Reminder, sub_1000BA468, type metadata accessor for TTRNewWidgetInteractorReminderWrapper, type metadata accessor for TTRNewWidgetViewModel.Reminder);
  __chkstk_darwin(v144);
  v122[-2] = v83;
  v122[-1] = v80;
  v84 = sub_10008F144(sub_1000A0884, &v122[-4], v79);
  __chkstk_darwin(v84);
  v122[-2] = v83;
  v122[-1] = v80;
  v85 = sub_10008F144(sub_1000A089C, &v122[-4], v79);
  v86 = sub_10009A6D4(v139);
  v87 = sub_10009B378(v86, v82);

  v146[0] = v79;

  sub_100078858(v88);
  v89 = sub_10009C674(v87, v146[0], v82);

  v90 = *(v89 + 16);
  if (v90)
  {
    v122[1] = 0;
    v91 = (*(v123 + 80) + 32) & ~*(v123 + 80);
    v122[0] = v89;
    v92 = v89 + v91;
    v139 = *(v123 + 72);
    v93 = v85;
    v94 = (v124 + 6);
    v95 = _swiftEmptyArrayStorage;
    v132 = v84;
    v124 = v93;
    if (v137)
    {
      v96 = v93;
    }

    else
    {
      v96 = v84;
    }

    v136 = v16;
    v137 = v96;
    v97 = v135;
    v98 = v144;
    while (1)
    {
      sub_10009DA8C(v92, v21, type metadata accessor for TTRNewWidgetPresenter.Division);
      sub_1000082B4(v21, v16, &qword_1000F0290, &qword_1000C8D08);
      if ((*v94)(v16, 1, v140) == 1)
      {
        sub_1000084C0(v16, &qword_1000F0290, &qword_1000C8D08);
      }

      else
      {
        v105 = v143;
        sub_10009DB2C(v16, v143, type metadata accessor for TTRNewWidgetInteractorReminderWrapper);
        v106 = v105[4];
        sub_100026D74(v105, v105[3]);
        if ((sub_1000C0DA8() & 1) == 0)
        {
          v21[*(v145 + 24)];
LABEL_36:

          v108 = sub_1000983DC(v107, v143, v133);

          v109 = *(v145 + 20);
          v110 = sub_1000C0AF8();
          v111 = &v21[v109];
          v112 = v138;
          (*(*(v110 - 8) + 16))(v138, v111, v110);
          v113 = v142;
          *(v112 + *(v142 + 20)) = v108;
          *(v112 + *(v113 + 24)) = 1065353216;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v95 = sub_1000224FC(0, v95[2] + 1, 1, v95);
          }

          v115 = v95[2];
          v114 = v95[3];
          v97 = v135;
          if (v115 >= v114 >> 1)
          {
            v95 = sub_1000224FC(v114 > 1, v115 + 1, 1, v95);
          }

          sub_100099C44(v21, type metadata accessor for TTRNewWidgetPresenter.Division);
          v95[2] = v115 + 1;
          sub_10009DB2C(v138, v95 + ((*(v141 + 80) + 32) & ~*(v141 + 80)) + *(v141 + 72) * v115, type metadata accessor for TTRNewWidgetPresenter.Snapshot);
          sub_100099C44(v143, type metadata accessor for TTRNewWidgetInteractorReminderWrapper);
          goto LABEL_23;
        }

        v98 = v144;
        if (v21[*(v145 + 24)])
        {
          goto LABEL_36;
        }

        sub_100099C44(v143, type metadata accessor for TTRNewWidgetInteractorReminderWrapper);
        v97 = v135;
      }

      v99 = v145;
      if (!v21[*(v145 + 24)])
      {
        v98 = v137;
      }

      v100 = *(v99 + 20);
      v101 = sub_1000C0AF8();
      (*(*(v101 - 8) + 16))(v97, &v21[v100], v101);
      v102 = v142;
      *(v97 + *(v142 + 20)) = v98;
      *(v97 + *(v102 + 24)) = 0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v95 = sub_1000224FC(0, v95[2] + 1, 1, v95);
      }

      v16 = v136;
      v104 = v95[2];
      v103 = v95[3];
      if (v104 >= v103 >> 1)
      {
        v95 = sub_1000224FC(v103 > 1, v104 + 1, 1, v95);
      }

      sub_100099C44(v21, type metadata accessor for TTRNewWidgetPresenter.Division);
      v95[2] = v104 + 1;
      sub_10009DB2C(v97, v95 + ((*(v141 + 80) + 32) & ~*(v141 + 80)) + *(v141 + 72) * v104, type metadata accessor for TTRNewWidgetPresenter.Snapshot);
LABEL_23:
      v92 += v139;
      --v90;
      v98 = v144;
      if (!v90)
      {

        v116 = v129;
        goto LABEL_43;
      }
    }
  }

  v95 = _swiftEmptyArrayStorage;
  v116 = v129;
LABEL_43:

  v117 = sub_1000084C0(v133, &qword_1000EFF50, &qword_1000C8D10);
  __chkstk_darwin(v117);
  v118 = v125;
  v122[-4] = v134;
  v122[-3] = v118;
  v119 = v126;
  v120 = v127;
  v122[-2] = v126;
  v122[-1] = v120;
  v121 = sub_10008D27C(sub_10009EA4C, &v122[-6], v95, type metadata accessor for TTRNewWidgetTimelineEntry, sub_1000BA4F0, type metadata accessor for TTRNewWidgetPresenter.Snapshot, type metadata accessor for TTRNewWidgetTimelineEntry);

  v131(v121);

  (*(v128 + 8))(v120, v116);
  return sub_1000084C0(v119, &qword_1000EFBE8, &unk_1000C8CB0);
}

uint64_t sub_100093F14(uint64_t a1, uint64_t a2, uint64_t a3, id *a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t), uint64_t a9)
{
  v93 = a8;
  v91 = a7;
  v99 = a6;
  v90 = a3;
  v89 = a2;
  v87 = a1;
  v92 = a9;
  v11 = type metadata accessor for TTRNewWidgetPresenter.Snapshot(0);
  v101 = *(v11 - 8);
  v102 = v11;
  v12 = *(v101 + 64);
  __chkstk_darwin(v11);
  v96 = v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v97 = v81 - v15;
  v16 = sub_100004D04(&qword_1000F0290, &qword_1000C8D08);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = v81 - v18;
  v100 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
  v83 = *(v100 - 8);
  v20 = *(v83 + 64);
  __chkstk_darwin(v100);
  v103 = (v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v104 = type metadata accessor for TTRNewWidgetPresenter.Division(0);
  v82 = *(v104 - 8);
  v22 = *(v82 + 64);
  __chkstk_darwin(v104);
  v24 = v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100004D04(&qword_1000EFF50, &qword_1000C8D10);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = v81 - v27;
  v29 = sub_1000C1118();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = v81 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(sub_100004D04(&qword_1000EDA48, &unk_1000C5830) + 48);
  *v33 = [*a4 objectID];
  v35 = enum case for REMNavigationSpecifier.ListPathSpecifier.showContents(_:);
  v36 = sub_1000C10C8();
  (*(*(v36 - 8) + 104))(&v33[v34], v35, v36);
  (*(v30 + 104))(v33, enum case for REMNavigationSpecifier.list(_:), v29);
  v37 = sub_100004D04(&qword_1000EFC28, &unk_1000C8CE0);
  v38 = *(v37 + 40);
  v39 = *(a4 + *(v37 + 36));
  v88 = a4;
  v40 = *(a4 + v38);
  v41 = *(v30 + 16);
  v84 = v33;
  v41(v28, v33, v29);
  v85 = v30;
  v42 = *(v30 + 56);
  v86 = v29;
  v42(v28, 0, 1, v29);
  v43 = v99;
  v113 = v99;
  v114 = a5;
  v115 = v28;
  v105 = sub_10008D27C(sub_10009A450, v112, v39, type metadata accessor for TTRNewWidgetViewModel.Reminder, sub_1000BA468, type metadata accessor for TTRNewWidgetInteractorReminderWrapper, type metadata accessor for TTRNewWidgetViewModel.Reminder);
  v110 = a5;
  v111 = v28;
  v98 = sub_10008F144(sub_10009A474, v109, v39);
  v95 = a5;
  v107 = a5;
  v108 = v28;
  v94 = v28;
  sub_10008F144(sub_10009A490, v106, v39);

  v44 = sub_10009A6D4(v40);
  v45 = v43;
  v46 = sub_10009B378(v44, v43);

  v116 = v39;

  sub_100078858(v47);
  v48 = sub_10009C674(v46, v116, v45);

  v49 = *(v48 + 16);
  if (!v49)
  {

    v52 = _swiftEmptyArrayStorage;
    v73 = v93;
    goto LABEL_24;
  }

  v81[1] = 0;
  v50 = (*(v82 + 80) + 32) & ~*(v82 + 80);
  v81[0] = v48;
  v51 = v48 + v50;
  v99 = *(v82 + 72);
  v52 = _swiftEmptyArrayStorage;
  v53 = (v83 + 48);
  v54 = v96;
  v55 = v105;
  do
  {
    sub_10009DA8C(v51, v24, type metadata accessor for TTRNewWidgetPresenter.Division);
    sub_1000082B4(v24, v19, &qword_1000F0290, &qword_1000C8D08);
    if ((*v53)(v19, 1, v100) == 1)
    {
      sub_1000084C0(v19, &qword_1000F0290, &qword_1000C8D08);
LABEL_7:
      v56 = v104;
      if (!v24[*(v104 + 24)])
      {
        v55 = v98;
      }

      v57 = *(v56 + 20);
      v58 = sub_1000C0AF8();
      (*(*(v58 - 8) + 16))(v54, &v24[v57], v58);
      v59 = v102;
      *(v54 + *(v102 + 20)) = v55;
      *(v54 + *(v59 + 24)) = 0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_1000224FC(0, v52[2] + 1, 1, v52);
      }

      v61 = v52[2];
      v60 = v52[3];
      if (v61 >= v60 >> 1)
      {
        v52 = sub_1000224FC(v60 > 1, v61 + 1, 1, v52);
      }

      sub_100099C44(v24, type metadata accessor for TTRNewWidgetPresenter.Division);
      v52[2] = v61 + 1;
      sub_10009DB2C(v54, v52 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v61, type metadata accessor for TTRNewWidgetPresenter.Snapshot);
      goto LABEL_4;
    }

    v62 = v103;
    sub_10009DB2C(v19, v103, type metadata accessor for TTRNewWidgetInteractorReminderWrapper);
    v63 = v62[4];
    sub_100026D74(v62, v62[3]);
    if (sub_1000C0DA8())
    {
      v55 = v105;
      if ((v24[*(v104 + 24)] & 1) == 0)
      {
        sub_100099C44(v103, type metadata accessor for TTRNewWidgetInteractorReminderWrapper);
        v54 = v96;
        goto LABEL_7;
      }
    }

    else
    {
      v24[*(v104 + 24)];
    }

    v65 = sub_1000983DC(v64, v103, v94);

    v66 = *(v104 + 20);
    v67 = sub_1000C0AF8();
    v68 = &v24[v66];
    v69 = v97;
    (*(*(v67 - 8) + 16))(v97, v68, v67);
    v70 = v102;
    *(v69 + *(v102 + 20)) = v65;
    *(v69 + *(v70 + 24)) = 1065353216;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v52 = sub_1000224FC(0, v52[2] + 1, 1, v52);
    }

    v72 = v52[2];
    v71 = v52[3];
    v54 = v96;
    if (v72 >= v71 >> 1)
    {
      v52 = sub_1000224FC(v71 > 1, v72 + 1, 1, v52);
    }

    sub_100099C44(v24, type metadata accessor for TTRNewWidgetPresenter.Division);
    v52[2] = v72 + 1;
    sub_10009DB2C(v97, v52 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v72, type metadata accessor for TTRNewWidgetPresenter.Snapshot);
    sub_100099C44(v103, type metadata accessor for TTRNewWidgetInteractorReminderWrapper);
LABEL_4:
    v51 += v99;
    --v49;
    v55 = v105;
  }

  while (v49);

  v73 = v93;
LABEL_24:

  v74 = sub_1000084C0(v94, &qword_1000EFF50, &qword_1000C8D10);
  __chkstk_darwin(v74);
  v75 = v88;
  v81[-8] = v95;
  v81[-7] = v75;
  v76 = v84;
  v77 = v87;
  v81[-6] = v84;
  v81[-5] = v77;
  v78 = v90;
  v81[-4] = v89;
  v81[-3] = v78;
  v81[-2] = v91;
  v79 = sub_10008D27C(sub_10009DAF4, &v81[-10], v52, type metadata accessor for TTRNewWidgetTimelineEntry, sub_1000BA4F0, type metadata accessor for TTRNewWidgetPresenter.Snapshot, type metadata accessor for TTRNewWidgetTimelineEntry);

  v73(v79);

  return (*(v85 + 8))(v76, v86);
}

uint64_t sub_100094A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v108 = a7;
  v106 = a6;
  v107 = a5;
  v104 = a4;
  v100 = a2;
  v9 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v103 = &v87 - v11;
  v12 = sub_1000C0E58();
  v112 = *(v12 - 8);
  v113 = v12;
  v13 = *(v112 + 64);
  __chkstk_darwin(v12);
  v111 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000C0C58();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000C0938();
  v101 = *(v20 - 8);
  v102 = v20;
  v21 = *(v101 + 64);
  __chkstk_darwin(v20);
  v23 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for TTRNewWidgetViewModel(0);
  v24 = *(*(v90 - 8) + 64);
  __chkstk_darwin(v90);
  v26 = (&v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = *a3;
  v27 = *(a3 + 8);
  v99 = a3;
  v110 = v27;
  v94 = *(sub_100004D04(&qword_1000EFC28, &unk_1000C8CE0) + 32);
  v29 = type metadata accessor for TTRNewWidgetPresenter.Snapshot(0);
  v109 = *(a1 + *(v29 + 20));
  v98 = v23;
  sub_1000C1108();
  v30 = *(v29 + 24);
  v105 = a1;
  v31 = *(a1 + v30);
  sub_1000C0C78();
  v32 = sub_10007E3A8(0, &qword_1000EFF48, REMList_ptr);
  v115 = v32;
  v116 = &protocol witness table for REMList;
  v114[0] = v28;
  v33 = v28;
  sub_1000C0C68();
  sub_1000084C0(v114, &qword_1000F02A8, &qword_1000C8D28);
  v97 = sub_1000C0C38();
  v34 = *(v16 + 8);
  v34(v19, v15);
  v115 = v32;
  v116 = &protocol witness table for REMList;
  v92 = v32;
  v114[0] = v33;
  v35 = v33;
  sub_1000C0C68();
  sub_1000084C0(v114, &qword_1000F02A8, &qword_1000C8D28);
  v96 = sub_1000C0C48();
  v95 = v36;
  v34(v19, v15);
  v37 = [v35 appearanceContext];
  if (v37)
  {
    v38 = v37;
    v39 = [v37 badge];

    if (v39)
    {
      v40 = [v39 emoji];
      if (v40)
      {
        v41 = v40;
        v42 = sub_1000C2678();
        v44 = v43;

        v92 = 0;
        v91 = 0;
        v93 = 0;
        goto LABEL_7;
      }
    }
  }

  sub_1000C0D58();
  v45 = v92;
  v115 = v92;
  v116 = &protocol witness table for REMList;
  v114[0] = v35;
  v46 = v35;
  v47 = sub_1000C0D48();
  sub_10002285C(v114);
  v93 = sub_1000C2A08();

  v115 = v45;
  v116 = &protocol witness table for REMList;
  v114[0] = v46;
  v48 = v46;
  v49 = sub_1000C0D48();
  sub_10002285C(v114);
  v92 = sub_1000C29F8();
  v91 = v50;

  v42 = 0;
  v44 = 0;
LABEL_7:
  v51 = [v35 displayName];
  v89 = sub_1000C2678();
  v88 = v52;

  v53 = objc_opt_self();
  v54 = objc_allocWithZone(NSNumber);
  v55 = [v54 initWithInteger:v110];
  v56 = [v53 localizedStringFromNumber:v55 numberStyle:1];

  v57 = sub_1000C2678();
  v59 = v58;

  (*(v112 + 16))(v111, v99 + v94, v113);
  v61 = *(v100 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_moreFormatString);
  v60 = *(v100 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_moreFormatString + 8);
  if (v31 <= 0.0)
  {
    v68 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
    v67 = v103;
    (*(*(v68 - 8) + 56))(v103, 1, 1, v68);
  }

  else
  {
    v94 = *(v100 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_moreFormatString + 8);
    v99 = v44;
    v100 = v42;
    v62 = v109;
    v63 = *(v109 + 16);
    v64 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
    v65 = *(v64 - 8);
    v66 = v65;
    if (v63)
    {
      v67 = v103;
      sub_10009DA8C(v62 + ((*(v65 + 80) + 32) & ~*(v65 + 80)), v103, type metadata accessor for TTRNewWidgetViewModel.Reminder);
      (*(v66 + 56))(v67, 0, 1, v64);
    }

    else
    {
      v67 = v103;
      (*(v65 + 56))(v103, 1, 1, v64);
    }

    v44 = v99;
    v42 = v100;
    v60 = v94;
  }

  v69 = v90;
  (*(v101 + 32))(v26 + *(v90 + 72), v98, v102);
  v70 = v88;
  *v26 = v89;
  v26[1] = v70;
  v71 = v111;
  v26[2] = v110;
  v26[3] = v57;
  v26[4] = v59;
  (*(v112 + 32))(v26 + v69[7], v71, v113);
  v72 = (v26 + v69[8]);
  *v72 = v61;
  v72[1] = v60;
  sub_10001DA60(v67, v26 + v69[9], &qword_1000ECD40, &unk_1000C5880);
  *(v26 + v69[10]) = v97;
  v73 = (v26 + v69[11]);
  v74 = v95;
  *v73 = v96;
  v73[1] = v74;
  *(v26 + v69[12]) = v93;
  v75 = (v26 + v69[13]);
  v76 = v91;
  *v75 = v92;
  v75[1] = v76;
  v77 = (v26 + v69[14]);
  *v77 = v42;
  v77[1] = v44;
  *(v26 + v69[15]) = 0;
  v78 = (v26 + v69[16]);
  v80 = v106;
  v79 = v107;
  *v78 = v104;
  v78[1] = v79;
  *(v26 + v69[17]) = v80;
  *(v26 + v69[19]) = v109;
  *(v26 + v69[20]) = 2;
  v81 = sub_1000C0AF8();
  v82 = v108;
  (*(*(v81 - 8) + 16))(v108, v105, v81);
  v83 = type metadata accessor for TTRNewWidgetTimelineEntry(0);
  sub_10009DA8C(v26, v82 + *(v83 + 20), type metadata accessor for TTRNewWidgetViewModel);
  v84 = *(v83 + 24);

  sub_1000C2468();
  sub_100099C44(v26, type metadata accessor for TTRNewWidgetViewModel);
  v85 = sub_1000C2478();
  return (*(*(v85 - 8) + 56))(v82 + v84, 0, 1, v85);
}

uint64_t sub_1000953BC(uint64_t a1, uint64_t a2, void (*a3)(void, void, void), uint64_t a4)
{
  v7 = sub_1000C0F38();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000C0F68();
  v31 = *(v12 - 8);
  v13 = *(v31 + 64);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009A164((v4 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_shareeInfoStyle), &v33);
  if (!v34)
  {
    return (a3)(0, 0, 0);
  }

  v28 = v12;
  v29 = a3;
  v30 = a4;
  sub_100004E0C(&v33, v32);
  if (qword_1000EC9B0 != -1)
  {
    swift_once();
  }

  v16 = sub_1000C1568();
  sub_10000D978(v16, qword_1000F0120);
  v17 = sub_1000C1558();
  v18 = sub_1000C2968();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "TTRNewWidgetPresenter checking to see if list has sharees", v19, 2u);
  }

  v20 = sub_1000C2A18();
  if (*(v20 + 16))
  {

    sub_1000C0F58();
    if (*(v20 + 16) <= 4uLL)
    {
    }

    else
    {
      v21 = *(sub_1000C0D88() - 8);
      sub_10009A26C(v20, v20 + ((*(v21 + 80) + 32) & ~*(v21 + 80)), 0, 9uLL, &qword_1000F0288, &unk_1000C8CF8, &type metadata accessor for TTRParticipantModel);
    }

    v23 = sub_1000C1558();
    v24 = sub_1000C2968();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "TTRNewWidgetPresenter fetching sharee data", v25, 2u);
    }

    sub_100026D74(v32, v32[3]);
    (*(v8 + 104))(v11, enum case for TTRParticipantAvatarNameStyle.givenName(_:), v7);
    v26 = swift_allocObject();
    v27 = v29;
    v26[2] = v20;
    v26[3] = v27;
    v26[4] = v30;

    sub_1000C0F48();

    (*(v8 + 8))(v11, v7);
    (*(v31 + 8))(v15, v28);
  }

  else
  {

    v29(0, 0, 0);
  }

  return sub_10002285C(v32);
}

uint64_t sub_100095850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v102 = a4;
  v96 = a2;
  v6 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v100 = &v82 - v8;
  v9 = sub_1000C0E58();
  v105 = *(v9 - 8);
  v106 = v9;
  v10 = *(v105 + 64);
  __chkstk_darwin(v9);
  v104 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000C0C58();
  v92 = *(v12 - 8);
  v13 = *(v92 + 64);
  __chkstk_darwin(v12);
  v15 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000C0938();
  v97 = *(v16 - 8);
  v98 = v16;
  v17 = *(v97 + 64);
  __chkstk_darwin(v16);
  v19 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for TTRNewWidgetViewModel(0);
  v20 = *(*(v84 - 8) + 64);
  __chkstk_darwin(v84);
  v22 = (&v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *a3;
  v23 = *(a3 + 8);
  v95 = a3;
  v103 = v23;
  v90 = *(sub_100004D04(&qword_1000EFC60, &qword_1000C7E48) + 32);
  v25 = type metadata accessor for TTRNewWidgetPresenter.Snapshot(0);
  v99 = *(a1 + *(v25 + 20));
  v94 = v19;
  sub_1000C1108();
  v26 = *(v25 + 24);
  v101 = a1;
  v27 = *(a1 + v26);
  sub_1000C0C78();
  v28 = sub_10007E3A8(0, &qword_1000F02C8, REMSmartList_ptr);
  v108 = v28;
  v109 = &protocol witness table for REMSmartList;
  v107[0] = v24;
  v29 = v24;
  sub_1000C0C68();
  sub_1000084C0(v107, &qword_1000F02A8, &qword_1000C8D28);
  v93 = sub_1000C0C38();
  v30 = *(v92 + 8);
  v30(v15, v12);
  v108 = v28;
  v109 = &protocol witness table for REMSmartList;
  v88 = v28;
  v107[0] = v29;
  v31 = v29;
  sub_1000C0C68();
  sub_1000084C0(v107, &qword_1000F02A8, &qword_1000C8D28);
  v92 = sub_1000C0C48();
  v91 = v32;
  v30(v15, v12);
  v33 = [v31 customContext];
  if (v33)
  {
    v34 = v33;
    v35 = [v33 badge];

    if (v35)
    {
      v36 = [v35 emoji];
      if (v36)
      {
        v37 = v36;
        v38 = sub_1000C2678();
        v87 = v39;

        v40 = v38;
        v86 = 0;
        v85 = 0;
        v89 = 0;
        goto LABEL_7;
      }
    }
  }

  sub_1000C0D58();
  v41 = v88;
  v108 = v88;
  v109 = &protocol witness table for REMSmartList;
  v107[0] = v31;
  v42 = v31;
  v43 = sub_1000C0D48();
  sub_10002285C(v107);
  v89 = sub_1000C2A08();

  v108 = v41;
  v109 = &protocol witness table for REMSmartList;
  v107[0] = v42;
  v44 = v42;
  v45 = sub_1000C0D48();
  sub_10002285C(v107);
  v86 = sub_1000C29F8();
  v85 = v46;

  v40 = 0;
  v87 = 0;
LABEL_7:
  v107[0] = v31;
  v88 = sub_1000C2928();
  v83 = v47;
  v48 = objc_opt_self();
  v49 = objc_allocWithZone(NSNumber);
  v50 = [v49 initWithInteger:v103];
  v51 = [v48 localizedStringFromNumber:v50 numberStyle:1];

  v82 = sub_1000C2678();
  v53 = v52;

  (*(v105 + 16))(v104, v95 + v90, v106);
  v55 = *(v96 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_moreFormatString);
  v54 = *(v96 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_moreFormatString + 8);
  if (v27 <= 0.0)
  {
    v62 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
    v61 = v100;
    (*(*(v62 - 8) + 56))(v100, 1, 1, v62);
    v56 = v99;
  }

  else
  {
    v96 = v40;
    v56 = v99;
    v57 = *(v99 + 16);
    v58 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
    v59 = *(v58 - 8);
    v60 = v59;
    if (v57)
    {
      v61 = v100;
      sub_10009DA8C(v56 + ((*(v59 + 80) + 32) & ~*(v59 + 80)), v100, type metadata accessor for TTRNewWidgetViewModel.Reminder);
      (*(v60 + 56))(v61, 0, 1, v58);
    }

    else
    {
      v61 = v100;
      (*(v59 + 56))(v100, 1, 1, v58);
    }

    v40 = v96;
  }

  v63 = v84;
  (*(v97 + 32))(v22 + *(v84 + 72), v94, v98);
  v64 = v83;
  *v22 = v88;
  v22[1] = v64;
  v65 = v104;
  v66 = v82;
  v22[2] = v103;
  v22[3] = v66;
  v22[4] = v53;
  (*(v105 + 32))(v22 + v63[7], v65, v106);
  v67 = (v22 + v63[8]);
  *v67 = v55;
  v67[1] = v54;
  sub_10001DA60(v61, v22 + v63[9], &qword_1000ECD40, &unk_1000C5880);
  v68 = v92;
  *(v22 + v63[10]) = v93;
  v69 = (v22 + v63[11]);
  v70 = v91;
  *v69 = v68;
  v69[1] = v70;
  *(v22 + v63[12]) = v89;
  v71 = (v22 + v63[13]);
  v72 = v85;
  *v71 = v86;
  v71[1] = v72;
  v73 = (v22 + v63[14]);
  v74 = v87;
  *v73 = v40;
  v73[1] = v74;
  *(v22 + v63[15]) = 1;
  v75 = (v22 + v63[16]);
  *v75 = 0;
  v75[1] = 0;
  *(v22 + v63[17]) = 0;
  *(v22 + v63[19]) = v56;
  *(v22 + v63[20]) = 2;
  v76 = sub_1000C0AF8();
  v77 = v102;
  (*(*(v76 - 8) + 16))(v102, v101, v76);
  v78 = type metadata accessor for TTRNewWidgetTimelineEntry(0);
  sub_10009DA8C(v22, v77 + *(v78 + 20), type metadata accessor for TTRNewWidgetViewModel);
  v79 = *(v78 + 24);

  sub_1000C2468();
  sub_100099C44(v22, type metadata accessor for TTRNewWidgetViewModel);
  v80 = sub_1000C2478();
  return (*(*(v80 - 8) + 56))(v77 + v79, 0, 1, v80);
}

uint64_t sub_100096150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v76 = a5;
  v75 = a4;
  v71 = a2;
  v7 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v74 = &v65 - v9;
  v10 = sub_1000C0E58();
  v80 = *(v10 - 8);
  v81 = v10;
  v11 = *(v80 + 64);
  __chkstk_darwin(v10);
  v79 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000C0C58();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000C0938();
  v72 = *(v18 - 8);
  v73 = v18;
  v19 = *(v72 + 64);
  __chkstk_darwin(v18);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for TTRNewWidgetViewModel(0);
  v23 = *(*(v22 - 1) + 64);
  __chkstk_darwin(v22);
  v25 = (&v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = a3;
  v78 = *(a3 + 8);
  v66 = *(sub_100004D04(&qword_1000EFBE8, &unk_1000C8CB0) + 32);
  v26 = type metadata accessor for TTRNewWidgetPresenter.Snapshot(0);
  v77 = *(a1 + *(v26 + 20));
  v70 = v21;
  sub_1000C1108();
  v27 = *(v26 + 24);
  v75 = a1;
  v28 = *(a1 + v27);
  v29 = sub_1000C29D8();
  v31 = v30;
  v32 = sub_1000C29B8();
  if (v32)
  {
    v68 = v32;
  }

  else
  {
    sub_1000C0C78();
    sub_1000C0C28();
    v68 = sub_1000C0C38();
    (*(v14 + 8))(v17, v13);
  }

  v67 = sub_1000C29C8();
  v33 = objc_opt_self();
  v34 = objc_allocWithZone(NSNumber);
  v35 = [v34 initWithInteger:v78];
  v36 = [v33 localizedStringFromNumber:v35 numberStyle:1];

  v37 = sub_1000C2678();
  v39 = v38;

  (*(v80 + 16))(v79, v69 + v66, v81);
  v40 = *(v71 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_moreFormatString);
  v41 = *(v71 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_moreFormatString + 8);
  if (v28 <= 0.0)
  {
    v50 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
    v49 = v74;
    (*(*(v50 - 8) + 56))(v74, 1, 1, v50);
  }

  else
  {
    v66 = v37;
    v69 = v31;
    v71 = v29;
    v42 = v77;
    v43 = *(v77 + 16);
    v44 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
    v45 = *(v44 - 8);
    v46 = v45;
    if (v43)
    {
      v47 = v74;
      sub_10009DA8C(v42 + ((*(v45 + 80) + 32) & ~*(v45 + 80)), v74, type metadata accessor for TTRNewWidgetViewModel.Reminder);
      v48 = v44;
      v49 = v47;
      (*(v46 + 56))(v47, 0, 1, v48);
    }

    else
    {
      v51 = v44;
      v49 = v74;
      (*(v45 + 56))(v74, 1, 1, v51);
    }

    v29 = v71;
    v31 = v69;
    v37 = v66;
  }

  if (!v31)
  {
    v31 = 0xE000000000000000;
    v29 = 0;
  }

  (*(v72 + 32))(v25 + v22[18], v70, v73);
  *v25 = v29;
  v25[1] = v31;
  v52 = v79;
  v25[2] = v78;
  v25[3] = v37;
  v25[4] = v39;
  (*(v80 + 32))(v25 + v22[7], v52, v81);
  v53 = (v25 + v22[8]);
  *v53 = v40;
  v53[1] = v41;
  sub_10001DA60(v49, v25 + v22[9], &qword_1000ECD40, &unk_1000C5880);
  v54 = v67;
  *(v25 + v22[10]) = v68;
  v55 = (v25 + v22[11]);
  *v55 = 0;
  v55[1] = 0;
  *(v25 + v22[12]) = v54;
  v56 = (v25 + v22[13]);
  *v56 = 0;
  v56[1] = 0;
  v57 = (v25 + v22[14]);
  *v57 = 0;
  v57[1] = 0;
  *(v25 + v22[15]) = 0;
  v58 = (v25 + v22[16]);
  *v58 = 0;
  v58[1] = 0;
  *(v25 + v22[17]) = 0;
  *(v25 + v22[19]) = v77;
  *(v25 + v22[20]) = 2;
  v59 = sub_1000C0AF8();
  v60 = v76;
  (*(*(v59 - 8) + 16))(v76, v75, v59);
  v61 = type metadata accessor for TTRNewWidgetTimelineEntry(0);
  sub_10009DA8C(v25, v60 + *(v61 + 20), type metadata accessor for TTRNewWidgetViewModel);
  v62 = *(v61 + 24);

  sub_1000C2468();
  sub_100099C44(v25, type metadata accessor for TTRNewWidgetViewModel);
  v63 = sub_1000C2478();
  return (*(*(v63 - 8) + 56))(v60 + v62, 0, 1, v63);
}

uint64_t sub_100096824(int64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, char *), uint64_t a4)
{
  v61 = a4;
  v62 = a3;
  v57 = a2;
  v68 = sub_1000C0E98();
  v63 = *(v68 - 8);
  v5 = *(v63 + 64);
  __chkstk_darwin(v68);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1000C0EB8();
  v8 = *(v67 - 1);
  v9 = *(v8 + 64);
  __chkstk_darwin(v67);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000EC9B0 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v12 = sub_1000C1568();
    sub_10000D978(v12, qword_1000F0120);
    v13 = sub_1000C1558();
    v14 = sub_1000C2968();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "TTRNewWidgetPresenter fetched sharee data", v15, 2u);
    }

    v16 = *(a1 + 16);
    v59 = v8;
    v60 = a1;
    v58 = v16;
    if (!v16)
    {
      break;
    }

    v18 = *(v8 + 16);
    v17 = v8 + 16;
    v19 = a1 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v64 = *(v17 + 56);
    v65 = v18;
    v66 = v17;
    v20 = (v17 - 8);
    v21 = &_swiftEmptyArrayStorage;
    v8 = v16;
    while (1)
    {
      v22 = v67;
      v65(v11, v19, v67);
      v23 = sub_1000C0EA8();
      (*v20)(v11, v22);
      v24 = *(v23 + 16);
      a1 = v21[2];
      v25 = a1 + v24;
      if (__OFADD__(a1, v24))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v25 > v21[3] >> 1)
      {
        if (a1 <= v25)
        {
          v27 = a1 + v24;
        }

        else
        {
          v27 = a1;
        }

        v21 = sub_100022658(isUniquelyReferenced_nonNull_native, v27, 1, v21);
      }

      if (*(v23 + 16))
      {
        if ((v21[3] >> 1) - v21[2] < v24)
        {
          goto LABEL_44;
        }

        v28 = (*(v63 + 80) + 32) & ~*(v63 + 80);
        v29 = *(v63 + 72);
        swift_arrayInitWithCopy();

        if (v24)
        {
          v30 = v21[2];
          v31 = __OFADD__(v30, v24);
          v32 = v30 + v24;
          if (v31)
          {
            goto LABEL_45;
          }

          v21[2] = v32;
        }
      }

      else
      {

        if (v24)
        {
          goto LABEL_43;
        }
      }

      v19 += v64;
      if (!--v8)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    swift_once();
  }

  v21 = &_swiftEmptyArrayStorage;
LABEL_21:
  v33 = v21[2];
  if (v33)
  {
    v34 = *(v63 + 16);
    v35 = v21 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
    v66 = *(v63 + 72);
    v67 = v34;
    v36 = (v63 + 8);
    v37 = &_swiftEmptyArrayStorage;
    v38 = v68;
    (v34)(v7, v35, v68);
    while (1)
    {
      v39 = sub_1000C0E78();
      if (v39)
      {
        v40 = v39;
        sub_1000C0E88();
        v42 = v41;
        (*v36)(v7, v38);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_10002254C(0, *(v37 + 2) + 1, 1, v37);
        }

        v44 = *(v37 + 2);
        v43 = *(v37 + 3);
        if (v44 >= v43 >> 1)
        {
          v37 = sub_10002254C((v43 > 1), v44 + 1, 1, v37);
        }

        *(v37 + 2) = v44 + 1;
        v45 = &v37[16 * v44];
        *(v45 + 4) = v40;
        *(v45 + 5) = v42;
        v38 = v68;
      }

      else
      {
        (*v36)(v7, v38);
      }

      v35 += v66;
      if (!--v33)
      {
        break;
      }

      (v67)(v7, v35, v38);
    }
  }

  else
  {

    v37 = &_swiftEmptyArrayStorage;
  }

  if (v58)
  {
    v46 = v60 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
    v47 = sub_1000C0E68();
    v49 = v48;
    v50 = *(v57 + 16);
    v51 = v50 - 1;
    if (v50 == 1)
    {
      v69._countAndFlagsBits = 0x7720646572616853;
      v69._object = 0xEE00402520687469;
      v71._object = 0x80000001000CDDA0;
      v71._countAndFlagsBits = 0xD000000000000027;
      sub_1000C0D78(v69, v71);
      sub_100004D04(&qword_1000ED2C0, &unk_1000C5A20);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_1000C3590;
      *(v52 + 56) = &type metadata for String;
      *(v52 + 64) = sub_10002C68C();
      *(v52 + 32) = v47;
      *(v52 + 40) = v49;
LABEL_40:
      v47 = sub_1000C2688();
      v49 = v55;

      goto LABEL_41;
    }

    if (v50)
    {
      v70._countAndFlagsBits = 0x206425202B204025;
      v70._object = 0xEC00000065726F4DLL;
      v72._object = 0x80000001000CDD70;
      v72._countAndFlagsBits = 0xD000000000000027;
      sub_1000C0D78(v70, v72);
      sub_100004D04(&qword_1000ED2C0, &unk_1000C5A20);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_1000C44F0;
      *(v53 + 56) = &type metadata for String;
      v54 = sub_10002C68C();
      *(v53 + 32) = v47;
      *(v53 + 40) = v49;
      *(v53 + 96) = &type metadata for Int;
      *(v53 + 104) = &protocol witness table for Int;
      *(v53 + 64) = v54;
      *(v53 + 72) = v51;
      goto LABEL_40;
    }
  }

  else
  {
    v47 = 0;
    v49 = 0;
  }

LABEL_41:
  v62(v47, v49, v37);
}

uint64_t sub_100096E88@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v67 = a5;
  v60 = a3;
  v61 = a4;
  v57 = a2;
  v6 = sub_1000C1118();
  v63 = *(v6 - 8);
  v64 = v6;
  v7 = *(v63 + 64);
  v8 = __chkstk_darwin(v6);
  v59 = (&v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v58 = &v57 - v10;
  v11 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v12 = *(*(v11 - 1) + 64);
  __chkstk_darwin(v11);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000C0B68();
  v65 = *(v15 - 8);
  v66 = v15;
  v16 = *(v65 + 64);
  __chkstk_darwin(v15);
  v71 = (&v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_100004D04(&qword_1000EFF50, &qword_1000C8D10);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v62 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v68 = &v57 - v22;
  v23 = sub_100004D04(&qword_1000EE300, &unk_1000C6370);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v57 - v25;
  v27 = sub_1000C0AF8();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v57 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000239F4(a1, v69);
  v32 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
  sub_1000082B4(a1 + *(v32 + 24), v26, &qword_1000EE300, &unk_1000C6370);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_1000084C0(v26, &qword_1000EE300, &unk_1000C6370);
    v33 = a1[4];
    sub_100026D74(a1, a1[3]);
    v34 = sub_1000C0DA8();
  }

  else
  {
    (*(v28 + 32))(v31, v26, v27);
    v34 = sub_1000C0A98();
    (*(v28 + 8))(v31, v27);
  }

  v35 = *(v60 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_displayDateStyleForBaseReminder);
  v60 = a1[5];
  v36 = v68;
  sub_1000082B4(v61, v68, &qword_1000EFF50, &qword_1000C8D10);
  v37 = v71;
  sub_1000C0B58();
  sub_100026D74(v69, v70);
  v38 = sub_1000C0DC8();
  if (!v38)
  {
    v39 = objc_allocWithZone(NSAttributedString);
    v38 = [v39 init];
  }

  *v14 = v38;
  sub_100026D74(v69, v70);
  *(v14 + 1) = sub_1000C0D98();
  v40 = v11[6];
  if (v35 == 2)
  {
    v41 = sub_1000C0818();
    (*(*(v41 - 8) + 56))(&v14[v40], 1, 1, v41);
  }

  else
  {
    sub_100024434(v69, v35 & 1, v37, &v14[v40]);
  }

  v42 = v64;
  v43 = v62;
  sub_1000082B4(v36, v62, &qword_1000EFF50, &qword_1000C8D10);
  v44 = v63;
  if ((*(v63 + 48))(v43, 1, v42) == 1)
  {
    sub_1000084C0(v43, &qword_1000EFF50, &qword_1000C8D10);
    sub_100026D74(v69, v70);
    v45 = sub_1000C0DD8();
    v46 = [v45 urlRepresentation];

    v47 = &v14[v11[7]];
    sub_1000C0908();
  }

  else
  {
    v48 = v58;
    (*(v44 + 32))(v58, v43, v42);
    v49 = v34;
    v50 = v59;
    sub_100026384(v69, v59);
    v51 = &v14[v11[7]];
    sub_1000C1108();
    v52 = *(v44 + 8);
    v53 = v50;
    v34 = v49;
    v37 = v71;
    v52(v53, v42);
    v54 = v48;
    v36 = v68;
    v52(v54, v42);
  }

  sub_100026D74(v69, v70);
  *&v14[v11[8]] = sub_1000C0DD8();
  v14[v11[10]] = v34 & 1;
  *&v14[v11[9]] = v60;
  sub_100026D74(v69, v70);
  v55 = sub_1000C0DF8();
  (*(v65 + 8))(v37, v66);
  sub_1000084C0(v36, &qword_1000EFF50, &qword_1000C8D10);
  v14[v11[11]] = v55 & 1;
  sub_10009DB2C(v14, v67, type metadata accessor for TTRNewWidgetViewModel.Reminder);
  return sub_10002285C(v69);
}

uint64_t sub_100097578@<X0>(void *a1@<X0>, void (**a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v57 = a3;
  v53 = a2;
  v62 = a4;
  v5 = sub_1000C1118();
  v54 = *(v5 - 8);
  v55 = v5;
  v6 = *(v54 + 64);
  v7 = __chkstk_darwin(v5);
  v52 = (&v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v51 = &v48 - v9;
  v10 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v56 = (&v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1000C0B68();
  v58 = *(v14 - 8);
  v59 = v14;
  v15 = *(v58 + 64);
  __chkstk_darwin(v14);
  v17 = (&v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_100004D04(&qword_1000EFF50, &qword_1000C8D10);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v48 - v23;
  v25 = a1[4];
  sub_100026D74(a1, a1[3]);
  if (sub_1000C0DA8())
  {
    return (*(v11 + 56))(v62, 1, 1, v10);
  }

  v50 = v11;
  sub_1000239F4(a1, v60);
  v27 = *(v53 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_displayDateStyleForBaseReminder);
  v49 = a1[5];
  v28 = v57;
  v57 = v24;
  sub_1000082B4(v28, v24, &qword_1000EFF50, &qword_1000C8D10);
  v53 = v17;
  sub_1000C0B58();
  sub_100026D74(v60, v61);
  v29 = sub_1000C0DC8();
  if (!v29)
  {
    v29 = [objc_allocWithZone(NSAttributedString) init];
  }

  v30 = v10;
  v31 = v54;
  v32 = v56;
  *v56 = v29;
  sub_100026D74(v60, v61);
  *(v32 + 8) = sub_1000C0D98();
  v33 = v30[6];
  if (v27 == 2)
  {
    v34 = sub_1000C0818();
    (*(*(v34 - 8) + 56))(v32 + v33, 1, 1, v34);
  }

  else
  {
    sub_100024434(v60, v27 & 1, v53, v32 + v33);
  }

  v35 = v55;
  sub_1000082B4(v57, v22, &qword_1000EFF50, &qword_1000C8D10);
  v36 = (*(v31 + 48))(v22, 1, v35);
  v37 = v62;
  if (v36 == 1)
  {
    sub_1000084C0(v22, &qword_1000EFF50, &qword_1000C8D10);
    sub_100026D74(v60, v61);
    v38 = sub_1000C0DD8();
    v39 = [v38 urlRepresentation];

    v40 = v32 + v30[7];
    sub_1000C0908();
  }

  else
  {
    v41 = v51;
    (*(v31 + 32))(v51, v22, v35);
    v42 = v52;
    sub_100026384(v60, v52);
    v43 = v32 + v30[7];
    sub_1000C1108();
    v44 = *(v31 + 8);
    v44(v42, v35);
    v37 = v62;
    v44(v41, v35);
  }

  v45 = v50;
  v46 = v53;
  sub_100026D74(v60, v61);
  *(v32 + v30[8]) = sub_1000C0DD8();
  *(v32 + v30[10]) = 0;
  *(v32 + v30[9]) = v49;
  sub_100026D74(v60, v61);
  v47 = sub_1000C0DF8();
  (*(v58 + 8))(v46, v59);
  sub_1000084C0(v57, &qword_1000EFF50, &qword_1000C8D10);
  *(v32 + v30[11]) = v47 & 1;
  sub_10009DB2C(v32, v37, type metadata accessor for TTRNewWidgetViewModel.Reminder);
  sub_10002285C(v60);
  return (*(v45 + 56))(v37, 0, 1, v30);
}

uint64_t sub_100097B78@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v69 = a2;
  v70 = a3;
  v7 = sub_1000C1118();
  v72 = *(v7 - 8);
  v73 = v7;
  v8 = *(v72 + 64);
  v9 = __chkstk_darwin(v7);
  v68 = (&v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v67 = &v63 - v11;
  v12 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v13 = *(v12 - 1);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v76 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000C0B68();
  v74 = *(v16 - 8);
  v75 = v16;
  v17 = *(v74 + 64);
  __chkstk_darwin(v16);
  v77 = (&v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_100004D04(&qword_1000EFF50, &qword_1000C8D10);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v71 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v80 = &v63 - v23;
  v24 = sub_100004D04(&qword_1000EE300, &unk_1000C6370);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v63 - v26;
  v28 = a1[4];
  sub_100026D74(a1, a1[3]);
  if (sub_1000C0DA8())
  {
    return (*(v13 + 56))(a4, 1, 1, v12);
  }

  v65 = v4;
  v66 = v13;
  v64 = a4;
  v30 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
  sub_1000082B4(a1 + *(v30 + 24), v27, &qword_1000EE300, &unk_1000C6370);
  v31 = sub_1000C0AF8();
  v32 = (*(*(v31 - 8) + 48))(v27, 1, v31);
  sub_1000084C0(v27, &qword_1000EE300, &unk_1000C6370);
  v33 = v76;
  if (v32 == 1)
  {
    goto LABEL_10;
  }

  v34 = a1[4];
  sub_100026D74(a1, a1[3]);
  if (sub_1000C0DE8())
  {
    if (qword_1000EC9B0 != -1)
    {
      swift_once();
    }

    v35 = sub_1000C1568();
    sub_10000D978(v35, qword_1000F0120);
    v36 = sub_1000C1558();
    v37 = sub_1000C2968();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "TTRNewWidgetPresenter:generateSnapShots: recurrent reminders is completed, however the due date is still today, we need to display in today smart list.", v38, 2u);
    }

LABEL_10:
    sub_1000239F4(a1, v78);
    v39 = *(v69 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_displayDateStyleForBaseReminder);
    v40 = a1[5];
    sub_1000082B4(v70, v80, &qword_1000EFF50, &qword_1000C8D10);
    sub_1000C0B58();
    sub_100026D74(v78, v79);
    v41 = sub_1000C0DC8();
    if (!v41)
    {
      v41 = [objc_allocWithZone(NSAttributedString) init];
    }

    *v33 = v41;
    sub_100026D74(v78, v79);
    *(v33 + 1) = sub_1000C0D98();
    v42 = v12[6];
    if (v39 == 2)
    {
      v43 = sub_1000C0818();
      (*(*(v43 - 8) + 56))(&v33[v42], 1, 1, v43);
    }

    else
    {
      sub_100024434(v78, v39 & 1, v77, &v33[v42]);
    }

    v44 = v73;
    v45 = v71;
    sub_1000082B4(v80, v71, &qword_1000EFF50, &qword_1000C8D10);
    v46 = v72;
    if ((*(v72 + 48))(v45, 1, v44) == 1)
    {
      sub_1000084C0(v45, &qword_1000EFF50, &qword_1000C8D10);
      sub_100026D74(v78, v79);
      v47 = sub_1000C0DD8();
      v48 = [v47 urlRepresentation];

      v49 = &v33[v12[7]];
      sub_1000C0908();
    }

    else
    {
      v50 = v67;
      (*(v46 + 32))(v67, v45, v44);
      v51 = v68;
      sub_100026384(v78, v68);
      v52 = &v33[v12[7]];
      sub_1000C1108();
      v53 = *(v46 + 8);
      v53(v51, v44);
      v53(v50, v44);
    }

    sub_100026D74(v78, v79);
    *&v33[v12[8]] = sub_1000C0DD8();
    v33[v12[10]] = 0;
    *&v33[v12[9]] = v40;
    sub_100026D74(v78, v79);
    v54 = sub_1000C0DF8();
    (*(v74 + 8))(v77, v75);
    sub_1000084C0(v80, &qword_1000EFF50, &qword_1000C8D10);
    v33[v12[11]] = v54 & 1;
    v55 = v64;
    sub_10009DB2C(v33, v64, type metadata accessor for TTRNewWidgetViewModel.Reminder);
    sub_10002285C(v78);
    return (*(v66 + 56))(v55, 0, 1, v12);
  }

  v56 = v66;
  if (qword_1000EC9B0 != -1)
  {
    swift_once();
  }

  v57 = sub_1000C1568();
  sub_10000D978(v57, qword_1000F0120);
  v58 = sub_1000C1558();
  v59 = sub_1000C2968();
  v60 = os_log_type_enabled(v58, v59);
  v61 = v64;
  if (v60)
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&_mh_execute_header, v58, v59, "TTRNewWidgetPresenter:generateSnapShots: recurrent reminders is completed, and the due date pass today, hide it from today smart list.", v62, 2u);
  }

  return (*(v56 + 56))(v61, 1, 1, v12);
}

void *sub_1000983DC(uint64_t a1, void *a2, uint64_t a3)
{
  v57 = a3;
  v64 = a1;
  v4 = sub_100004D04(&qword_1000F0298, &unk_1000C8D18);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v65 = &v54 - v6;
  v60 = sub_1000C1118();
  v7 = *(v60 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v60);
  v56 = (&v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v55 = &v54 - v11;
  v12 = sub_1000C0B68();
  v61 = *(v12 - 8);
  v62 = v12;
  v13 = *(v61 + 64);
  __chkstk_darwin(v12);
  v15 = (&v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_100004D04(&qword_1000EFF50, &qword_1000C8D10);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v54 - v21;
  v23 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v24 = *(*(v23 - 1) + 64);
  v25 = __chkstk_darwin(v23);
  v27 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v63 = &v54 - v28;
  sub_1000239F4(a2, v66);
  v29 = a2[4];
  sub_100026D74(a2, a2[3]);
  v59 = sub_1000C0DA8();
  v30 = *(v58 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_displayDateStyleForInterestingReminder);
  v58 = a2[5];
  sub_1000082B4(v57, v22, &qword_1000EFF50, &qword_1000C8D10);
  v31 = v15;
  sub_1000C0B58();
  sub_100026D74(v66, v67);
  v32 = sub_1000C0DC8();
  if (!v32)
  {
    v32 = [objc_allocWithZone(NSAttributedString) init];
  }

  *v27 = v32;
  sub_100026D74(v66, v67);
  *(v27 + 1) = sub_1000C0D98();
  v33 = v23[6];
  if (v30 == 2)
  {
    v34 = sub_1000C0818();
    (*(*(v34 - 8) + 56))(&v27[v33], 1, 1, v34);
  }

  else
  {
    sub_100024434(v66, v30 & 1, v31, &v27[v33]);
  }

  v35 = v60;
  sub_1000082B4(v22, v20, &qword_1000EFF50, &qword_1000C8D10);
  if ((*(v7 + 48))(v20, 1, v35) == 1)
  {
    sub_1000084C0(v20, &qword_1000EFF50, &qword_1000C8D10);
    sub_100026D74(v66, v67);
    v36 = sub_1000C0DD8();
    v37 = [v36 urlRepresentation];

    v38 = &v27[v23[7]];
    sub_1000C0908();
  }

  else
  {
    v39 = v55;
    (*(v7 + 32))(v55, v20, v35);
    v40 = v31;
    v41 = v56;
    sub_100026384(v66, v56);
    v42 = &v27[v23[7]];
    sub_1000C1108();
    v43 = *(v7 + 8);
    v44 = v41;
    v31 = v40;
    v43(v44, v35);
    v43(v39, v35);
  }

  sub_100026D74(v66, v67);
  *&v27[v23[8]] = sub_1000C0DD8();
  v27[v23[10]] = v59 & 1;
  *&v27[v23[9]] = v58;
  sub_100026D74(v66, v67);
  v45 = sub_1000C0DF8();
  (*(v61 + 8))(v31, v62);
  sub_1000084C0(v22, &qword_1000EFF50, &qword_1000C8D10);
  v27[v23[11]] = v45 & 1;
  v46 = v63;
  sub_10009DB2C(v27, v63, type metadata accessor for TTRNewWidgetViewModel.Reminder);
  v47 = sub_10002285C(v66);
  __chkstk_darwin(v47);
  *(&v54 - 2) = v46;
  v48 = v64;

  v49 = sub_10008CE4C(sub_10009DB94, (&v54 - 4), v48);
  v50 = v65;
  sub_10009DA8C(v46, v65, type metadata accessor for TTRNewWidgetViewModel.Reminder);
  v51 = v49[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v66[0] = v49;
  if (!isUniquelyReferenced_nonNull_native || v51 >= v49[3] >> 1)
  {
    v49 = sub_1000224D4(isUniquelyReferenced_nonNull_native, v51 + 1, 1, v49);
    v66[0] = v49;
  }

  sub_10009A4AC(0, 0, 1, v50);
  sub_100099C44(v46, type metadata accessor for TTRNewWidgetViewModel.Reminder);
  return v49;
}

uint64_t sub_100098AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000C0AF8();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(*(v4 - 8));
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v23 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v9 + 16);
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v26 = v9;
    v24 = a2;
    v25 = v13;
    v13(&v23 - v10, v14, v4);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v8, v14 + *(result + 72) * v19, v4);
        sub_1000A064C(&qword_1000EE318, &type metadata accessor for Date);
        v21 = sub_1000C25C8();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v8, v4);
        }

        else
        {
          v22(v8, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v9 + 56);

    return v17(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_100098D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000C0AF8();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(*(v4 - 8));
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v23 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v9 + 16);
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v26 = v9;
    v24 = a2;
    v25 = v13;
    v13(&v23 - v10, v14, v4);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v8, v14 + *(result + 72) * v19, v4);
        sub_1000A064C(&qword_1000EE318, &type metadata accessor for Date);
        v21 = sub_1000C25C8();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v8, v4);
        }

        else
        {
          v22(v8, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v9 + 56);

    return v17(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_100099000(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for TTRNewWidgetPresenter.Division(0) + 20);
  sub_1000C0AF8();
  v2 = sub_100004D04(&qword_1000F02B0, &unk_1000C8D30);
  v3 = *(v2 + 36);
  sub_1000A064C(&qword_1000EE318, &type metadata accessor for Date);
  if (sub_1000C25E8() & 1) != 0 || (v4 = *(v2 + 36), (sub_1000C25E8()) || (sub_1000A064C(&qword_1000F02B8, &type metadata accessor for Date), (sub_1000C2608()))
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_1000C2608() ^ 1;
  }

  return v5 & 1;
}

BOOL sub_10009915C()
{
  v0 = *(type metadata accessor for TTRNewWidgetViewModel.Reminder(0) + 28);
  sub_1000C0938();
  sub_1000A064C(&qword_1000F02A0, &type metadata accessor for URL);
  return (sub_1000C2608() & 1) == 0;
}

uint64_t sub_100099204()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_10002285C(v0 + 4);
  v2 = OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_fetchSubtasks;
  v3 = sub_1000C1388();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_1000998CC((v0 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_shareeInfoStyle));
  v4 = *(v0 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_moreFormatString + 8);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t sub_1000992FC()
{
  result = sub_1000C1388();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRNewWidgetPresenter.DisplayDateStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = v7 - 2;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRNewWidgetPresenter.DisplayDateStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100099524(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_100099538(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t *destroy for TTRNewWidgetPresenter.ShareeInfoStyle(uint64_t *result)
{
  if (result[3] >= 0xFFFFFFFF)
  {
    return sub_10002285C(result);
  }

  return result;
}

__n128 initializeWithCopy for TTRNewWidgetPresenter.ShareeInfoStyle(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2 < 0xFFFFFFFF)
  {
    v7 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v7;
    result = *(a2 + 32);
    *(a1 + 32) = result;
    *(a1 + 48) = *(a2 + 48);
  }

  else
  {
    v3 = *(a2 + 32);
    *(a1 + 24) = v2;
    *(a1 + 32) = v3;
    (**(v2 - 8))();
    result = *(a2 + 40);
    *(a1 + 40) = result;
  }

  return result;
}

__n128 assignWithCopy for TTRNewWidgetPresenter.ShareeInfoStyle(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (*(a1 + 24) < 0xFFFFFFFFuLL)
  {
    if (v3 < 0xFFFFFFFF)
    {
      result = *a2;
      v9 = *(a2 + 16);
      v10 = *(a2 + 32);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 16) = v9;
      *(a1 + 32) = v10;
      *a1 = result;
    }

    else
    {
      *(a1 + 24) = v3;
      *(a1 + 32) = *(a2 + 32);
      (**(v3 - 8))();
      result = *(a2 + 40);
      *(a1 + 40) = result;
    }
  }

  else if (v3 < 0xFFFFFFFF)
  {
    sub_10002285C(a1);
    result = *a2;
    v7 = *(a2 + 16);
    v8 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 16) = v7;
    *(a1 + 32) = v8;
    *a1 = result;
  }

  else
  {
    sub_10008331C(a1, a2);
    *(a1 + 40) = *(a2 + 40);
    result.n128_u64[0] = *(a2 + 48);
    *(a1 + 48) = result.n128_u64[0];
  }

  return result;
}

__n128 initializeWithTake for TTRNewWidgetPresenter.ShareeInfoStyle(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

__n128 assignWithTake for TTRNewWidgetPresenter.ShareeInfoStyle(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) < 0xFFFFFFFFuLL)
  {
    v7 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v7;
    result = *(a2 + 32);
    *(a1 + 32) = result;
    *(a1 + 48) = *(a2 + 48);
  }

  else
  {
    v3 = *(a2 + 24);
    sub_10002285C(a1);
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    if (v3 < 0xFFFFFFFF)
    {
      result = *(a2 + 32);
      *(a1 + 32) = result;
      *(a1 + 48) = *(a2 + 48);
    }

    else
    {
      *(a1 + 32) = *(a2 + 32);
      result = *(a2 + 40);
      *(a1 + 40) = result;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRNewWidgetPresenter.ShareeInfoStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRNewWidgetPresenter.ShareeInfoStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_100099874(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_10009988C(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t *sub_1000998CC(uint64_t *result)
{
  if (result[3] >= 0xFFFFFFFF)
  {
    v1 = result;
    sub_10002285C(result);
    return v1;
  }

  return result;
}

unint64_t sub_10009991C()
{
  result = qword_1000F0270;
  if (!qword_1000F0270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0270);
  }

  return result;
}

uint64_t sub_100099970()
{
  v1 = sub_100004D04(&qword_1000F0278, &unk_1000C8CA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100099A04()
{
  v0 = *(*(sub_100004D04(&qword_1000F0278, &unk_1000C8CA0) - 8) + 80);

  return sub_1000909F0();
}

uint64_t sub_100099A80()
{
  v1 = sub_1000C0C18();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100099B20(uint64_t a1)
{
  v3 = *(sub_1000C0C18() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_10009245C(a1, v1 + v4, v6, v7);
}

void *sub_100099BC0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100004D04(&qword_1000F0418, &qword_1000C8D88);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

uint64_t sub_100099C44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100099CAC()
{
  v1 = sub_1000C0C18();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = sub_1000C0AF8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 + v6 + 8) & ~v9;
  v16 = v3 | v9;
  v11 = (*(v8 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v12 = *(v0 + v5);

  v13 = *(v0 + v6);

  (*(v8 + 8))(v0 + v10, v7);
  v14 = *(v0 + v11 + 8);

  return _swift_deallocObject(v0, v11 + 16, v16 | 7);
}

uint64_t sub_100099E48(uint64_t a1)
{
  v3 = *(sub_1000C0C18() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_1000C0AF8() - 8);
  v9 = (*(v8 + 80) + v7 + 8) & ~*(v8 + 80);
  v10 = *(v1 + v5);
  v11 = *(v1 + v6);
  v12 = *(v1 + v7);
  v13 = v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  v15 = *(v13 + 8);

  return sub_100092DA4(a1, v1 + v4, v10, v11, v12, (v1 + v9), v14, v15);
}

uint64_t sub_100099F7C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100099FD0()
{
  v1 = sub_1000C0AF8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  v8 = *(v0 + 56);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10009A0C4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, char *))
{
  v4 = *(sub_1000C0AF8() - 8);
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = v2 + ((*(v4 + 80) + 64) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_10009A164(__int128 *a1, uint64_t a2)
{
  v3 = *(a1 + 3);
  if (v3 < 0xFFFFFFFF)
  {
    v6 = *a1;
    v7 = a1[1];
    v8 = a1[2];
    *(a2 + 48) = *(a1 + 6);
    *(a2 + 16) = v7;
    *(a2 + 32) = v8;
    *a2 = v6;
  }

  else
  {
    v4 = *(a1 + 4);
    *(a2 + 24) = v3;
    *(a2 + 32) = v4;
    (**(v3 - 8))(a2, a1);
    *(a2 + 40) = *(a1 + 40);
  }

  return a2;
}

uint64_t sub_10009A1F8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10009A26C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_100004D04(a5, a6);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = j__malloc_size(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        v17 = *(a7(0) - 8);
        v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
        v19 = *(v17 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

unint64_t sub_10009A4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_1000084C0(a4, &qword_1000F0298, &unk_1000C8D18);
  }

  if (v17 < 1)
  {
    return sub_1000084C0(a4, &qword_1000F0298, &unk_1000C8D18);
  }

  result = sub_10009DA8C(a4, v15, type metadata accessor for TTRNewWidgetViewModel.Reminder);
  if (v12 >= v17)
  {
    return sub_1000084C0(a4, &qword_1000F0298, &unk_1000C8D18);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t *sub_10009A638(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_15:
    a3 = 0;
LABEL_16:
    v8 = a4;
LABEL_19:
    *result = a4;
    result[1] = a5;
    result[2] = v8;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    if (a5 <= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = a5;
    }

    v7 = a4 - v6;
    while (1)
    {
      if (!(a4 - a5 + v5))
      {
        v8 = a5;
        a3 = a5 - a4;
        goto LABEL_19;
      }

      if (a5 < a4)
      {
        break;
      }

      if (!(v7 + v5))
      {
        goto LABEL_21;
      }

      *(a2 + 8 * v5) = a4 + v5;
      if (a3 - 1 == v5)
      {
        v8 = a4 + v5 + 1;
        goto LABEL_19;
      }

      if (__OFADD__(++v5, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10009A6D4(uint64_t a1)
{
  v87 = type metadata accessor for TTRNewWidgetPresenter.Division(0);
  v86 = *(v87 - 8);
  v2 = *(v86 + 64);
  __chkstk_darwin(v87);
  v102 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_100004D04(&qword_1000EE308, &unk_1000C8CC0);
  v4 = *(*(v97 - 8) + 64);
  v5 = __chkstk_darwin(v97);
  v95 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v94 = &v80 - v7;
  v8 = sub_100004D04(&qword_1000F02B0, &unk_1000C8D30);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v80 - v14;
  v16 = sub_1000C0AF8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v96 = &v80 - v23;
  v24 = __chkstk_darwin(v22);
  v92 = &v80 - v25;
  __chkstk_darwin(v24);
  v107 = &v80 - v26;
  v85 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
  v27 = *(v85 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v85);
  v98 = (&v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = sub_100004D04(&qword_1000F02C0, &qword_1000C8D40);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v91 = &v80 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = *(v9 + 56);
  v105 = &v80 - v35;
  v109 = v8;
  v84 = v9 + 56;
  v83 = v34;
  v34();
  v36 = *(a1 + 16);
  if (!v36)
  {
    v110 = &_swiftEmptyArrayStorage;
LABEL_26:
    sub_1000084C0(v105, &qword_1000F02C0, &qword_1000C8D40);
    return v110;
  }

  v37 = a1 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
  v93 = (v17 + 32);
  v101 = *(v27 + 72);
  v106 = (v17 + 8);
  v90 = (v9 + 48);
  v80 = (v17 + 16);
  v82 = (v27 + 56);
  v110 = &_swiftEmptyArrayStorage;
  v38 = v98;
  v81 = v13;
  v89 = v21;
  while (1)
  {
    sub_10009DA8C(v37, v38, type metadata accessor for TTRNewWidgetInteractorReminderWrapper);
    v39 = v38[4];
    sub_100026D74(v38, v38[3]);
    v40 = sub_1000C0D98();
    if (!v40)
    {
      sub_100099C44(v38, type metadata accessor for TTRNewWidgetInteractorReminderWrapper);
      goto LABEL_4;
    }

    v104 = v36;
    v41 = v40;
    v42 = [v40 date];

    v43 = v92;
    sub_1000C0AA8();

    v44 = *v93;
    (*v93)(v107, v43, v16);
    v45 = v96;
    sub_1000C0A48();
    sub_1000C0A48();
    v46 = sub_1000A064C(&qword_1000EE318, &type metadata accessor for Date);
    result = sub_1000C25E8();
    if ((result & 1) == 0)
    {
      break;
    }

    v99 = v46;
    v108 = v37;
    v48 = v21;
    v49 = v15;
    v50 = v94;
    v44(v94, v45, v16);
    v51 = v97;
    v44((v50 + *(v97 + 48)), v48, v16);
    v52 = v95;
    sub_1000082B4(v50, v95, &qword_1000EE308, &unk_1000C8CC0);
    v53 = *(v51 + 48);
    v44(v49, v52, v16);
    v54 = *v106;
    (*v106)(v52 + v53, v16);
    sub_10001DA60(v50, v52, &qword_1000EE308, &unk_1000C8CC0);
    v55 = *(v51 + 48);
    v56 = v109;
    v15 = v49;
    v100 = *(v109 + 36);
    v88 = v44;
    v44((v49 + v100), (v52 + v55), v16);
    v103 = v54;
    v54(v52, v16);
    v57 = v91;
    sub_1000082B4(v105, v91, &qword_1000F02C0, &qword_1000C8D40);
    if ((*v90)(v57, 1, v56) == 1)
    {
      sub_1000084C0(v57, &qword_1000F02C0, &qword_1000C8D40);
      v36 = v104;
LABEL_18:
      v38 = v98;
      v63 = v102;
      sub_10009DA8C(v98, v102, type metadata accessor for TTRNewWidgetInteractorReminderWrapper);
      (*v82)(v63, 0, 1, v85);
      v64 = v87;
      sub_1000082B4(v15, v63 + *(v87 + 20), &qword_1000F02B0, &unk_1000C8D30);
      *(v63 + *(v64 + 24)) = 0;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = v89;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v110 = sub_100022484(0, v110[2] + 1, 1, v110);
      }

      v37 = v108;
      v67 = v110[2];
      v66 = v110[3];
      if (v67 >= v66 >> 1)
      {
        v110 = sub_100022484(v66 > 1, v67 + 1, 1, v110);
      }

      v103(v107, v16);
      v68 = v105;
      sub_1000084C0(v105, &qword_1000F02C0, &qword_1000C8D40);
      v69 = v110;
      v110[2] = v67 + 1;
      sub_10009DB2C(v102, v69 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v67, type metadata accessor for TTRNewWidgetPresenter.Division);
      sub_100099C44(v38, type metadata accessor for TTRNewWidgetInteractorReminderWrapper);
      sub_10001DA60(v15, v68, &qword_1000F02B0, &unk_1000C8D30);
      (v83)(v68, 0, 1, v109);
      goto LABEL_4;
    }

    v58 = v81;
    sub_10001DA60(v57, v81, &qword_1000F02B0, &unk_1000C8D30);
    sub_1000A064C(&qword_1000F02B8, &type metadata accessor for Date);
    v59 = sub_1000C2608();
    v36 = v104;
    v37 = v108;
    v60 = v100;
    if ((v59 & 1) == 0 || (v61 = *(v109 + 36), (sub_1000C2608() & 1) == 0))
    {
      v62 = *(v109 + 36);
      if (sub_1000C25E8() & 1) != 0 || (sub_1000C25E8() & 1) != 0 || (sub_1000C2608() & 1) != 0 || (sub_1000C2608())
      {
        sub_1000084C0(v58, &qword_1000F02B0, &unk_1000C8D30);
      }

      else
      {
        v70 = v96;
        sub_1000C0A48();
        v71 = sub_1000C25E8();
        result = sub_1000084C0(v58, &qword_1000F02B0, &unk_1000C8D30);
        if ((v71 & 1) == 0)
        {
          goto LABEL_28;
        }

        v72 = v94;
        v73 = v70;
        v74 = v88;
        v88(v94, v73, v16);
        v75 = v74;
        v76 = v97;
        (*v80)(v72 + *(v97 + 48), v49 + v60, v16);
        sub_1000084C0(v49, &qword_1000F02B0, &unk_1000C8D30);
        v77 = v95;
        sub_1000082B4(v72, v95, &qword_1000EE308, &unk_1000C8CC0);
        v78 = *(v76 + 48);
        v75(v49, v77, v16);
        v79 = v103;
        v103(v77 + v78, v16);
        sub_10001DA60(v72, v77, &qword_1000EE308, &unk_1000C8CC0);
        v88((v49 + v60), (v77 + *(v97 + 48)), v16);
        v36 = v104;
        v79(v77, v16);
      }

      v15 = v49;
      goto LABEL_18;
    }

    sub_1000084C0(v58, &qword_1000F02B0, &unk_1000C8D30);
    sub_1000084C0(v49, &qword_1000F02B0, &unk_1000C8D30);
    v103(v107, v16);
    v38 = v98;
    sub_100099C44(v98, type metadata accessor for TTRNewWidgetInteractorReminderWrapper);
    v15 = v49;
    v21 = v89;
LABEL_4:
    v37 += v101;
    if (!--v36)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

size_t sub_10009B378(void *a1, uint64_t a2)
{
  v178 = a1;
  v164 = sub_100004D04(&qword_1000EE308, &unk_1000C8CC0);
  v3 = *(*(v164 - 8) + 64);
  v4 = __chkstk_darwin(v164);
  v165 = &v148 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v163 = &v148 - v6;
  v7 = type metadata accessor for TTRNewWidgetPresenter.Division(0);
  v177 = *(v7 - 8);
  v8 = *(v177 + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v148 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v154 = &v148 - v13;
  v14 = __chkstk_darwin(v12);
  v156 = &v148 - v15;
  v16 = __chkstk_darwin(v14);
  v159 = &v148 - v17;
  v18 = __chkstk_darwin(v16);
  v162 = &v148 - v19;
  v20 = __chkstk_darwin(v18);
  v161 = &v148 - v21;
  v22 = __chkstk_darwin(v20);
  v170 = &v148 - v23;
  v24 = __chkstk_darwin(v22);
  v158 = &v148 - v25;
  __chkstk_darwin(v24);
  v27 = &v148 - v26;
  v28 = sub_100004D04(&qword_1000EE300, &unk_1000C6370);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v169 = &v148 - v30;
  v31 = sub_1000C0AF8();
  v32 = *(v31 - 8);
  v33 = *(v32 + 8);
  v34 = __chkstk_darwin(v31);
  v176 = &v148 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v38 = &v148 - v37;
  v39 = __chkstk_darwin(v36);
  v41 = &v148 - v40;
  v42 = __chkstk_darwin(v39);
  v155 = &v148 - v43;
  v44 = __chkstk_darwin(v42);
  v46 = &v148 - v45;
  v47 = __chkstk_darwin(v44);
  v166 = &v148 - v48;
  __chkstk_darwin(v47);
  v50 = &v148 - v49;
  sub_1000C0A58();
  v51 = *(v178 + 16);
  v172 = v7;
  v173 = v32;
  v157 = v50;
  if (v51)
  {
    v149 = v41;
    v150 = v38;
    v151 = a2;
    v152 = v11;
    v7 = *(v7 + 20);
    v168 = (*(v177 + 80) + 32) & ~*(v177 + 80);
    v52 = v178 + v168;
    v53 = (v32 + 16);
    v176 = *(v177 + 72);
    v177 = (v32 + 32);
    v54 = &_swiftEmptyArrayStorage;
    v153 = (v178 + v168);
    v171 = v51;
    v55 = v51;
    do
    {
      sub_10009DA8C(v52, v27, type metadata accessor for TTRNewWidgetPresenter.Division);
      v175 = *v53;
      v175(v46, &v27[v7], v31);
      sub_100099C44(v27, type metadata accessor for TTRNewWidgetPresenter.Division);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_1000224AC(0, v54[2] + 1, 1, v54);
      }

      v57 = v54[2];
      v56 = v54[3];
      if (v57 >= v56 >> 1)
      {
        v54 = sub_1000224AC(v56 > 1, v57 + 1, 1, v54);
      }

      v54[2] = v57 + 1;
      v58 = v54 + ((v173[80] + 32) & ~v173[80]) + *(v173 + 9) * v57;
      v50 = *(v173 + 4);
      (v50)(v58, v46, v31);
      v59 = v176;
      v52 += v176;
      --v55;
    }

    while (v55);
    v60 = v169;
    sub_100098AA0(v54, v169);

    v61 = (*(v173 + 6))(v60, 1, v31);
    v174 = v31;
    if (v61 == 1)
    {
      sub_1000084C0(v60, &qword_1000EE300, &unk_1000C6370);
      v7 = &_swiftEmptyArrayStorage;
      v62 = v161;
      v63 = v162;
      goto LABEL_17;
    }

    v46 = v166;
    (v50)(v166, v60, v31);
    v82 = v157;
    v83 = sub_1000C0A88();
    v62 = v161;
    v63 = v162;
    if ((v83 & 1) == 0)
    {
      (*(v173 + 1))(v46, v31);
      v7 = &_swiftEmptyArrayStorage;
LABEL_17:
      v94 = v171;
      v148 = v171 - 1;
      v160 = v53;
      if (v171 == 1)
      {
LABEL_18:
        v46 = v156;
        sub_10009DA8C(&v153[v59 * v148], v156, type metadata accessor for TTRNewWidgetPresenter.Division);
        v63 = v154;
        sub_10009DA8C(v46, v154, type metadata accessor for TTRNewWidgetPresenter.Division);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_19;
        }
      }

      else
      {
        v158 = v173 + 8;
        v125 = v153;
        v167 = v50;
        while (v94)
        {
          v46 = v31;
          v171 = v94;
          sub_10009DA8C(v125, v170, type metadata accessor for TTRNewWidgetPresenter.Division);
          v126 = v125;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_100022484(0, *(v7 + 16) + 1, 1, v7);
          }

          v128 = *(v7 + 16);
          v127 = *(v7 + 24);
          if (v128 >= v127 >> 1)
          {
            v7 = sub_100022484(v127 > 1, v128 + 1, 1, v7);
          }

          *(v7 + 16) = v128 + 1;
          v178 = v7;
          sub_10009DB2C(v170, v7 + v168 + v128 * v59, type metadata accessor for TTRNewWidgetPresenter.Division);
          sub_10009DA8C(v126, v62, type metadata accessor for TTRNewWidgetPresenter.Division);
          v169 = v126;
          sub_10009DA8C(v126 + v59, v63, type metadata accessor for TTRNewWidgetPresenter.Division);
          v129 = *(v172 + 20);
          v7 = v62 + v129;
          v130 = sub_100004D04(&qword_1000F02B0, &unk_1000C8D30);
          v50 = *(v130 + 36);
          sub_1000C0AC8();
          if (v131 <= 60.0)
          {
            sub_100099C44(v63, type metadata accessor for TTRNewWidgetPresenter.Division);
            sub_100099C44(v62, type metadata accessor for TTRNewWidgetPresenter.Division);
            v31 = v46;
          }

          else
          {
            v166 = v130;
            v132 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
            v31 = v159;
            (*(*(v132 - 8) + 56))(v159, 1, 1, v132);
            sub_1000A064C(&qword_1000EE318, &type metadata accessor for Date);
            if ((sub_1000C25E8() & 1) == 0)
            {
              goto LABEL_45;
            }

            v133 = (v7 + v50);
            v134 = v163;
            v135 = v175;
            v175(v163, v133, v46);
            v136 = v164;
            v135(v134 + *(v164 + 48), v63 + v129, v46);
            v137 = v165;
            sub_1000082B4(v134, v165, &qword_1000EE308, &unk_1000C8CC0);
            v138 = *(v136 + 48);
            v139 = v31 + *(v172 + 20);
            v140 = v167;
            v167(v139, v137, v174);
            v46 = v158;
            v141 = *v158;
            (*v158)(v137 + v138, v174);
            sub_10001DA60(v134, v137, &qword_1000EE308, &unk_1000C8CC0);
            v140(v139 + *(v166 + 9), v137 + *(v136 + 48), v174);
            v142 = v137;
            v143 = v174;
            v141(v142);
            *(v31 + *(v172 + 24)) = 0;
            v145 = *(v178 + 16);
            v144 = *(v178 + 24);
            if (v145 >= v144 >> 1)
            {
              v178 = sub_100022484(v144 > 1, v145 + 1, 1, v178);
            }

            v59 = v176;
            v146 = v162;
            sub_100099C44(v162, type metadata accessor for TTRNewWidgetPresenter.Division);
            v62 = v161;
            v63 = v146;
            sub_100099C44(v161, type metadata accessor for TTRNewWidgetPresenter.Division);
            v147 = v178;
            *(v178 + 16) = v145 + 1;
            sub_10009DB2C(v31, v147 + v168 + v145 * v59, type metadata accessor for TTRNewWidgetPresenter.Division);
            v31 = v143;
          }

          v94 = v171 - 1;
          v125 = v169 + v59;
          v50 = v167;
          v7 = v178;
          if (v171 == 2)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_45:
        __break(1u);
      }

      v7 = sub_100022484(0, *(v7 + 16) + 1, 1, v7);
LABEL_19:
      v96 = *(v7 + 16);
      v95 = *(v7 + 24);
      if (v96 >= v95 >> 1)
      {
        v7 = sub_100022484(v95 > 1, v96 + 1, 1, v7);
      }

      v178 = v7;
      *(v7 + 16) = v96 + 1;
      sub_10009DB2C(v63, v7 + v168 + v96 * v59, type metadata accessor for TTRNewWidgetPresenter.Division);
      v97 = (v46 + *(v172 + 20));
      v171 = sub_100004D04(&qword_1000F02B0, &unk_1000C8D30);
      v98 = *(v171 + 36);
      v99 = v149;
      sub_1000C0A68();
      v100 = v150;
      sub_1000C0A68();
      v81 = sub_1000A064C(&qword_1000EE318, &type metadata accessor for Date);
      v101 = sub_1000C25D8();
      v102 = *(v173 + 1);
      v103 = (v101 & 1) == 0;
      if (v101)
      {
        v104 = v99;
      }

      else
      {
        v104 = v100;
      }

      if (v103)
      {
        v105 = v99;
      }

      else
      {
        v105 = v100;
      }

      v173 = *(v173 + 1);
      v102(v104, v31);
      v106 = v155;
      v107 = v50;
      (v50)(v155, v105, v31);
      v108 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
      v109 = v152;
      (*(*(v108 - 8) + 56))(v152, 1, 1, v108);
      v110 = v31;
      if (sub_1000C25E8())
      {
        v112 = v163;
        v113 = v175;
        v175(v163, v97 + v98, v174);
        v114 = v106;
        v115 = v164;
        v113(v112 + *(v164 + 48), v114, v174);
        v116 = v165;
        sub_1000082B4(v112, v165, &qword_1000EE308, &unk_1000C8CC0);
        v117 = *(v115 + 48);
        v118 = v172;
        v119 = v109 + *(v172 + 20);
        (v107)(v119, v116, v174);
        v120 = v116 + v117;
        v121 = v173;
        (v173)(v120, v174);
        v122 = v112;
        v31 = v174;
        sub_10001DA60(v122, v116, &qword_1000EE308, &unk_1000C8CC0);
        (v107)(v119 + *(v171 + 36), v116 + *(v115 + 48), v31);
        v121(v116, v31);
        *(v109 + *(v118 + 24)) = 0;
        v81 = v178;
        v107 = *(v178 + 16);
        v111 = *(v178 + 24);
        v110 = v107 + 1;
        v97 = v121;
        if (v107 < v111 >> 1)
        {
LABEL_29:
          v123 = v156;
          v97(v155, v31);
          sub_100099C44(v123, type metadata accessor for TTRNewWidgetPresenter.Division);
          v97(v157, v31);
          v81[2] = v110;
          sub_10009DB2C(v109, v81 + v168 + v107 * v176, type metadata accessor for TTRNewWidgetPresenter.Division);
          return v81;
        }
      }

      else
      {
        __break(1u);
      }

      v81 = sub_100022484(v111 > 1, v110, 1, v81);
      goto LABEL_29;
    }

    v167 = v50;
    v84 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
    v50 = v158;
    (*(*(v84 - 8) + 56))(v158, 1, 1, v84);
    sub_1000A064C(&qword_1000EE318, &type metadata accessor for Date);
    v68 = v31;
    if (sub_1000C25E8())
    {
      v85 = v163;
      v86 = v82;
      v87 = v175;
      v175(v163, v86, v31);
      v88 = v164;
      v87(v85 + *(v164 + 48), v46, v174);
      v89 = v165;
      sub_1000082B4(v85, v165, &qword_1000EE308, &unk_1000C8CC0);
      v178 = *(v88 + 48);
      v90 = (v50 + *(v172 + 20));
      v50 = v167;
      v167(v90, v89, v174);
      v91 = *(v173 + 1);
      v91(v89 + v178, v174);
      sub_10001DA60(v85, v89, &qword_1000EE308, &unk_1000C8CC0);
      v92 = *(v88 + 48);
      v31 = v174;
      v93 = sub_100004D04(&qword_1000F02B0, &unk_1000C8D30);
      (v50)(&v90[*(v93 + 36)], v89 + v92, v31);
      v178 = v91;
      v91(v89, v31);
      v158[*(v172 + 24)] = 0;
      v7 = sub_100022484(0, 1, 1, &_swiftEmptyArrayStorage);
      v46 = *(v7 + 16);
      v69 = *(v7 + 24);
      v68 = v46 + 1;
      if (v46 < v69 >> 1)
      {
LABEL_15:
        v62 = v161;
        v63 = v162;
        (v178)(v166, v31);
        *(v7 + 16) = v68;
        sub_10009DB2C(v158, v7 + v168 + v46 * v59, type metadata accessor for TTRNewWidgetPresenter.Division);
        goto LABEL_17;
      }

LABEL_51:
      v7 = sub_100022484(v69 > 1, v68, 1, v7);
      goto LABEL_15;
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  sub_100004D04(&qword_1000ED980, &qword_1000C5740);
  v64 = *(v177 + 72);
  v65 = (*(v177 + 80) + 32) & ~*(v177 + 80);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1000C3590;
  v178 = v66;
  v59 = v66 + v65;
  v67 = type metadata accessor for TTRNewWidgetInteractorReminderWrapper(0);
  (*(*(v67 - 8) + 56))(v59, 1, 1, v67);
  v53 = v176;
  sub_1000C0A68();
  sub_1000A064C(&qword_1000EE318, &type metadata accessor for Date);
  v68 = v31;
  if ((sub_1000C25E8() & 1) == 0)
  {
    __break(1u);
    goto LABEL_50;
  }

  v70 = v173;
  v71 = v163;
  (*(v173 + 2))(v163, v50, v31);
  v72 = v164;
  v73 = *(v70 + 4);
  v73(v71 + *(v164 + 48), v53, v31);
  v74 = v165;
  sub_1000082B4(v71, v165, &qword_1000EE308, &unk_1000C8CC0);
  v75 = v7;
  v76 = *(v72 + 48);
  v77 = v59 + *(v75 + 20);
  v73(v77, v74, v31);
  v177 = v59;
  v78 = *(v70 + 1);
  v78(v74 + v76, v31);
  sub_10001DA60(v71, v74, &qword_1000EE308, &unk_1000C8CC0);
  v79 = *(v72 + 48);
  v80 = sub_100004D04(&qword_1000F02B0, &unk_1000C8D30);
  v73(v77 + *(v80 + 36), v74 + v79, v31);
  v78(v74, v31);
  *(v177 + *(v172 + 24)) = 0;
  v78(v157, v31);
  return v178;
}