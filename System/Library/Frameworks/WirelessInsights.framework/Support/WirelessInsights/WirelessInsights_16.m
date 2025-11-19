uint64_t sub_10014D904(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 96);
  if (v1 == *(a1 + 64))
  {
    if ((v2 & 0x100) == 0)
    {
      if (v2)
      {
        return 0;
      }

      goto LABEL_25;
    }
  }

  else if ((v2 & 0x100000) != 0)
  {
    return 0;
  }

  v3 = *(v1 - 1);
  if (*(a1 + 32) == v1)
  {
    v6 = v3 > 0xD || ((1 << v3) & 0x3400) == 0;
    if (v6 && v3 != 133)
    {
      return 0;
    }

    goto LABEL_25;
  }

  v4 = 0;
  if (*(v1 - 1) > 0xCu)
  {
    if (v3 != 133)
    {
      if (v3 != 13)
      {
        return v4;
      }

      if (*v1 == 10)
      {
        return 0;
      }
    }

LABEL_25:
    *(a1 + 88) = *(*(a1 + 88) + 8);
    return 1;
  }

  if (v3 == 10 || v3 == 12)
  {
    goto LABEL_25;
  }

  return v4;
}

uint64_t sub_10014D9BC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 96);
  if (v1 != *(a1 + 32))
  {
    if ((v2 & 0x100000) == 0)
    {
      v3 = *v1;
      v4 = v3 > 0xD || ((1 << v3) & 0x3400) == 0;
      if (!v4 || v3 == 133)
      {
        if ((v2 & 0x100) == 0 && v1 == *(a1 + 64))
        {
          goto LABEL_18;
        }

        if (*(v1 - 1) != 13 || v3 != 10)
        {
          goto LABEL_18;
        }
      }
    }

    return 0;
  }

  if ((v2 & 2) != 0)
  {
    return 0;
  }

LABEL_18:
  *(a1 + 88) = *(*(a1 + 88) + 8);
  return 1;
}

uint64_t sub_10014DA38(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 == *(a1 + 32))
  {
    return 0;
  }

  v2 = *v1;
  if (v2 <= 0xB)
  {
    if (!*v1)
    {
      if ((*(a1 + 96) & 0x80) == 0)
      {
        goto LABEL_9;
      }

      return 0;
    }

    if (v2 != 10)
    {
LABEL_9:
      *(a1 + 88) = *(*(a1 + 88) + 8);
      *(a1 + 40) = v1 + 1;
      return 1;
    }
  }

  else if (v2 - 12 >= 2 && v2 != 133)
  {
    goto LABEL_9;
  }

  if ((*(*(a1 + 88) + 16) & *(a1 + 180)) != 0)
  {
    goto LABEL_9;
  }

  return 0;
}

BOOL sub_10014DAB4(__n128 *a1)
{
  v2 = a1[12].n128_u64[0];
  if (a1[11].n128_u64[1] != v2)
  {
    v3 = *(v2 - 104);
    a1[5].n128_u64[1] = v3;
    v4 = *(v2 - 112);
    v5 = a1[1].n128_i64[0];
    v6 = v2 - 96;
    v7 = a1[13].n128_u64[0];
    v8 = a1[13].n128_u64[1] - 184;
    if (v8 < v7)
    {
      sub_1001488AC(a1);
      v8 = a1[13].n128_u64[1] - 184;
    }

    a1[13].n128_u64[1] = sub_10014F1A8(v8, v4, v3, v5, v6);
    sub_1001489D4(a1[1].n128_i64[0], a1[12].n128_u64[0] - 96);
    v9 = a1[12].n128_u64[0];
    sub_10014C2F8(v9 - 96);
    a1[12].n128_u64[0] = v9 - 112;
    return 1;
  }

  v11 = a1[6].n128_u32[0];
  if ((v11 & 0x800) != 0)
  {
    if (a1[2].n128_u64[1] == *sub_10014CE48(a1[1].n128_u64[0], 0))
    {
      return 0;
    }

    v11 = a1[6].n128_u32[0];
  }

  if ((v11 & 0x8000) != 0 && a1[2].n128_u64[1] != a1[2].n128_u64[0])
  {
    return 0;
  }

  if ((v11 & 0x4000) != 0)
  {
    v12 = a1[2].n128_u64[1];
    if (v12 == a1[3].n128_u64[1])
    {
      return 0;
    }
  }

  else
  {
    v12 = a1[2].n128_u64[1];
  }

  v13 = a1[1].n128_u64[0];
  *(*v13 + 56) = v12;
  v14 = *v13;
  *(v14 + 64) = 1;
  *v14 = v12;
  *(*v13 + 16) = **v13 != *(*v13 + 8);
  *(v13 + 32) = v12;
  *(v13 + 40) = v12;
  *(v13 + 48) = 0;
  *(v13 + 76) = 0;
  a1[5].n128_u64[1] = 0;
  a1[7].n128_u8[10] = 1;
  if ((v11 & 0x20000) == 0)
  {
    return 1;
  }

  sub_10014D104(a1->n128_u64[0], a1[1].n128_u64[0]);
  return (a1[6].n128_u8[1] & 4) != 0;
}

uint64_t sub_10014DC1C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 == *(a1 + 32))
  {
    v3 = 0;
    result = 0;
    if ((*(a1 + 96) & 0x20) != 0)
    {
      return result;
    }
  }

  else
  {
    v3 = sub_100146404(*(a1 + 80), *v2, *(a1 + 176));
    v2 = *(a1 + 40);
  }

  if (v2 != *(a1 + 64) || (*(a1 + 96) & 0x100) != 0)
  {
    *(a1 + 40) = v2 - 1;
    v5 = sub_100146404(*(a1 + 80), *(v2 - 1), *(a1 + 176));
    ++*(a1 + 40);
    if (v3 == v5)
    {
      return 0;
    }
  }

  else if ((((*(a1 + 96) & 0x10) == 0) & v3) == 0)
  {
    return 0;
  }

  *(a1 + 88) = *(*(a1 + 88) + 8);
  return 1;
}

uint64_t sub_10014DCDC(uint64_t a1)
{
  v2 = sub_10014DC1C(a1);
  if ((v2 & 1) == 0)
  {
    *(a1 + 88) = *(*(a1 + 88) + 8);
  }

  return v2 ^ 1u;
}

BOOL sub_10014DD14(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 == *(a1 + 32))
  {
    return 0;
  }

  result = sub_100146404(*(a1 + 80), *v1, *(a1 + 176));
  if (!result)
  {
    return result;
  }

  v4 = *(a1 + 40);
  if (v4 != *(a1 + 64) || (v5 = *(a1 + 96), (v5 & 0x100) != 0))
  {
    if (sub_100146404(*(a1 + 80), *(v4 - 1), *(a1 + 176)))
    {
      return 0;
    }
  }

  else if ((v5 & 0x10) != 0)
  {
    return 0;
  }

  *(a1 + 88) = *(*(a1 + 88) + 8);
  return 1;
}

BOOL sub_10014DDA8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 == *(a1 + 64) && (*(a1 + 97) & 1) == 0)
  {
    return 0;
  }

  result = sub_100146404(*(a1 + 80), *(v2 - 1), *(a1 + 176));
  if (!result)
  {
    return result;
  }

  v4 = *(a1 + 40);
  if (v4 == *(a1 + 32))
  {
    if ((*(a1 + 96) & 0x20) != 0)
    {
      return 0;
    }
  }

  else if (sub_100146404(*(a1 + 80), *v4, *(a1 + 176)))
  {
    return 0;
  }

  *(a1 + 88) = *(*(a1 + 88) + 8);
  return 1;
}

uint64_t sub_10014DE34(uint64_t a1)
{
  if (*(a1 + 40) != *(a1 + 64) || (*(a1 + 96) & 4) != 0)
  {
    return 0;
  }

  *(a1 + 88) = *(*(a1 + 88) + 8);
  return 1;
}

uint64_t sub_10014DE68(uint64_t a1)
{
  if (*(a1 + 40) != *(a1 + 32) || (*(a1 + 96) & 8) != 0)
  {
    return 0;
  }

  *(a1 + 88) = *(*(a1 + 88) + 8);
  return 1;
}

uint64_t sub_10014DE98(uint64_t a1)
{
  v2 = *(*(a1 + 88) + 16);
  if (v2 >= 0x40000000)
  {
    v3 = **(a1 + 72);
    v17[0] = 0;
    v17[1] = v2;
    v4 = sub_100148F58(*v3, v3[1], v17);
    v6 = v5;
    v7 = v4 + 8;
    do
    {
      v2 = *(v7 - 8);
      if (v7 == v6)
      {
        break;
      }

      v8 = sub_10014CE48(*(a1 + 16), *(v7 - 8));
      v7 += 8;
    }

    while (!*(v8 + 16));
  }

  if ((*(a1 + 98) & 1) == 0 || *(sub_10014CE48(*(a1 + 16), v2) + 16) == 1)
  {
    v9 = *sub_10014CE48(*(a1 + 16), v2);
    v10 = sub_10014CE48(*(a1 + 16), v2)[1];
    if (v9 == v10)
    {
LABEL_16:
      *(a1 + 88) = *(*(a1 + 88) + 8);
      return 1;
    }

    v11 = *(a1 + 40);
    while (v11 != *(a1 + 32))
    {
      v12 = *v11;
      if (*(a1 + 120) == 1)
      {
        v13 = *(**(a1 + 80) + 8);
        LOBYTE(v12) = (*(*v13 + 40))(v13, v12);
        v14 = *v9;
        if (*(a1 + 120))
        {
          v15 = *(**(a1 + 80) + 8);
          LOBYTE(v14) = (*(*v15 + 40))(v15, v14);
        }
      }

      else
      {
        LOBYTE(v14) = *v9;
      }

      if (v12 != v14)
      {
        break;
      }

      ++v9;
      v11 = (*(a1 + 40) + 1);
      *(a1 + 40) = v11;
      if (v9 == v10)
      {
        goto LABEL_16;
      }
    }
  }

  return 0;
}

uint64_t sub_10014E04C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2 == v3)
  {
    return 0;
  }

  v4 = sub_10014F338(v2, v3, *(a1 + 88), **(a1 + 72), *(a1 + 120));
  if (*(a1 + 40) == v4)
  {
    return 0;
  }

  *(a1 + 88) = *(*(a1 + 88) + 8);
  *(a1 + 40) = v4;
  return 1;
}

uint64_t sub_10014E0B8(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 == *(a1 + 32))
  {
    return 0;
  }

  v3 = *(a1 + 88) + 16;
  v4 = *v1;
  if (*(a1 + 120) == 1)
  {
    v5 = *(**(a1 + 80) + 8);
    LOBYTE(v4) = (*(*v5 + 40))(v5, v4);
  }

  if (!*(v3 + v4))
  {
    return 0;
  }

  *(a1 + 88) = *(*(a1 + 88) + 8);
  ++*(a1 + 40);
  return 1;
}

uint64_t sub_10014E180(__n128 *a1)
{
  v2 = a1[5].n128_u64[1];
  v3 = a1[2].n128_u64[1];
  if (v3 == a1[2].n128_u64[0])
  {
    v4 = *(v2 + 280);
  }

  else
  {
    v4 = *(v2 + *v3 + 24);
  }

  v5 = (v4 >> 1) & 1;
  if (v4)
  {
    if (v5)
    {
      v7 = *(v2 + 16);
      v8 = a1[13].n128_u64[1] - 24;
      if (v8 < a1[13].n128_u64[0])
      {
        sub_1001488AC(a1);
        v8 = a1[13].n128_u64[1] - 24;
        v3 = a1[2].n128_u64[1];
      }

      *v8 = 4;
      *(v8 + 8) = v7;
      *(v8 + 16) = v3;
      a1[13].n128_u64[1] = v8;
      v2 = a1[5].n128_u64[1];
    }

    v6 = (v2 + 8);
    goto LABEL_12;
  }

  if (v5)
  {
    v6 = (v2 + 16);
LABEL_12:
    a1[5].n128_u64[1] = *v6;
    return 1;
  }

  return 0;
}

uint64_t sub_10014E230(__n128 *a1)
{
  v2 = a1[5].n128_u64[1];
  v3 = a1[2].n128_u64[1];
  if (v3 == a1[2].n128_u64[0])
  {
    v5 = *(v2 + 280);
    v6 = (v5 >> 1) & 1;
  }

  else
  {
    v4 = *(v2 + *v3 + 24);
    LOBYTE(v5) = v4 & 1;
    v6 = (v4 >> 1) & 1;
  }

  v7 = a1[13].n128_u64[1];
  if (*v7 == 5)
  {
    v8 = v7[6];
    v9 = *(v2 + 304);
    if (v8 == v9)
    {
      v10 = a1[8].n128_u64[0];
      v9 = v7[6];
      if (*(v10 + 16) == v8)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v9 = *(v2 + 304);
  }

  v11 = v7 - 12;
  if ((v7 - 12) < a1[13].n128_u64[0])
  {
    sub_1001488AC(a1);
    v11 = (a1[13].n128_u64[1] - 48);
    v3 = a1[2].n128_u64[1];
  }

  v12 = a1[12].n128_u64[0];
  if (a1[11].n128_u64[1] == v12)
  {
    v13 = -2147483645;
  }

  else
  {
    v13 = *(v12 - 112);
  }

  *v11 = 5;
  sub_100148E58((v11 + 2), v9, &a1[8], v3, v13);
  a1[13].n128_u64[1] = v11;
  v10 = a1[8].n128_u64[0];
LABEL_15:
  v14 = *(v2 + 296);
  if (*(v10 + 24))
  {
    v15 = a1[2].n128_u64[1];
    if (v15 == *(v10 + 32))
    {
      *(v10 + 24) = v14;
      v16 = v14;
      goto LABEL_20;
    }
  }

  else
  {
    v15 = a1[2].n128_u64[1];
  }

  *(v10 + 32) = v15;
  v10 = a1[8].n128_u64[0];
  v16 = *(v10 + 24);
LABEL_20:
  if (v16 < *(v2 + 288))
  {
    if ((v5 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_37;
  }

  if (*(v2 + 309) == 1 && ((a1[6].n128_u8[1] & 4) == 0 || a1[7].n128_u8[11] == 1))
  {
    if (((v16 < v14) & v5) == 1)
    {
      if (v6)
      {
        v17 = *(v2 + 16);
        v18 = a1[13].n128_u64[1] - 24;
        if (v18 < a1[13].n128_u64[0])
        {
          sub_1001488AC(a1);
          v18 = a1[13].n128_u64[1] - 24;
        }

        v19 = a1[2].n128_u64[1];
        *v18 = 4;
        *(v18 + 8) = v17;
        *(v18 + 16) = v19;
        a1[13].n128_u64[1] = v18;
        v10 = a1[8].n128_u64[0];
        v16 = *(v10 + 24);
      }

      goto LABEL_37;
    }

    if (v6)
    {
LABEL_39:
      v24 = 16;
      goto LABEL_40;
    }
  }

  else
  {
    v20 = (v16 < v14) & v5;
    if (v6)
    {
      if (v20)
      {
        v21 = *(v2 + 8);
        v22 = a1[13].n128_u64[1] - 24;
        if (v22 < a1[13].n128_u64[0])
        {
          sub_1001488AC(a1);
          v22 = a1[13].n128_u64[1] - 24;
        }

        v23 = a1[2].n128_u64[1];
        *v22 = 13;
        *(v22 + 8) = v21;
        *(v22 + 16) = v23;
        a1[13].n128_u64[1] = v22;
      }

      goto LABEL_39;
    }

    if (v20)
    {
LABEL_37:
      *(v10 + 24) = v16 + 1;
      v24 = 8;
LABEL_40:
      a1[5].n128_u64[1] = *(v2 + v24);
      return 1;
    }
  }

  return 0;
}

BOOL sub_10014E470(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v1 != v2)
  {
    if (*(a1 + 120) == 1)
    {
      v4 = *(**(a1 + 80) + 8);
      (*(*v4 + 40))(v4, *v1);
      v6 = *(a1 + 32);
      v5 = *(a1 + 40);
    }

    else
    {
      v6 = *(a1 + 32);
      v5 = *(a1 + 40);
    }

    v7 = (v5 + 1);
    *(a1 + 40) = v7;
    if (v7 != v6 && *(a1 + 120) == 1)
    {
      v8 = *(**(a1 + 80) + 8);
      (*(*v8 + 40))(v8, *v7);
    }

    *(a1 + 88) = *(*(a1 + 88) + 8);
  }

  return v1 != v2;
}

uint64_t sub_10014E558(uint64_t a1)
{
  if ((*(a1 + 96) & 8) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 40);
  if (*(a1 + 32) != v2)
  {
    while (1)
    {
      v3 = *v2;
      if (*(a1 + 120) == 1)
      {
        v4 = *(**(a1 + 80) + 8);
        LODWORD(v3) = (*(*v4 + 40))(v4, v3);
      }

      if (v3 > 0xD || ((1 << v3) & 0x3400) == 0)
      {
        break;
      }

      if (++v2 == *(a1 + 32))
      {
        goto LABEL_10;
      }
    }

    if (v2 != *(a1 + 32))
    {
      return 0;
    }
  }

LABEL_10:
  *(a1 + 88) = *(*(a1 + 88) + 8);
  return 1;
}

BOOL sub_10014E638(void *a1)
{
  v1 = a1[5];
  v2 = a1[7];
  if (v1 == v2)
  {
    a1[11] = *(a1[11] + 8);
  }

  return v1 == v2;
}

uint64_t sub_10014E664(uint64_t a1)
{
  v2 = *(a1 + 88);
  if ((*(v2 + 309) & 1) == 0)
  {
    v5 = 0;
    v3 = (v2 + 296);
    v4 = (v2 + 288);
    goto LABEL_5;
  }

  if ((*(a1 + 97) & 4) != 0)
  {
    v3 = (v2 + 296);
    v4 = (v2 + 288);
    if (*(a1 + 123) == 1)
    {
      goto LABEL_7;
    }

    v5 = 0;
LABEL_5:
    v6 = v4;
    goto LABEL_8;
  }

  v3 = (v2 + 296);
  v4 = (v2 + 288);
LABEL_7:
  v5 = 1;
  v6 = v3;
LABEL_8:
  v7 = *v6;
  v8 = *(a1 + 40);
  if (v7 == -1)
  {
    v9 = *(a1 + 32);
  }

  else if (v7 >= *(a1 + 32) - v8)
  {
    v9 = *(a1 + 32);
  }

  else
  {
    v9 = &v8[v7];
  }

  if (v9 == v8)
  {
    v11 = *(a1 + 40);
  }

  else
  {
    v10 = *(*(v2 + 8) + 24);
    v11 = *(a1 + 40);
    do
    {
      v12 = *v11;
      if (*(a1 + 120) == 1)
      {
        v13 = *(**(a1 + 80) + 8);
        LOBYTE(v12) = (*(*v13 + 40))(v13, v12);
        v11 = *(a1 + 40);
      }

      if (v10 != v12)
      {
        break;
      }

      *(a1 + 40) = ++v11;
    }

    while (v11 != v9);
  }

  v14 = (v11 - v8);
  v15 = *v4;
  if (v14 < *v4)
  {
    return 0;
  }

  if (v5)
  {
    if (*(v2 + 308) == 1 && v14 < *v3)
    {
      *(a1 + 48) = v11;
    }

    if (v14 != v15)
    {
      v17 = *(a1 + 216) - 32;
      if (v17 < *(a1 + 208))
      {
        sub_1001488AC(a1);
        v17 = *(a1 + 216) - 32;
      }

      *v17 = 7;
      *(v17 + 8) = v14;
      *(v17 + 16) = v2;
      *(v17 + 24) = v11;
      *(a1 + 216) = v17;
    }

    *(a1 + 88) = *(v2 + 16);
    return 1;
  }

  else
  {
    if (v14 < *v3)
    {
      v18 = *(a1 + 216) - 32;
      if (v18 < *(a1 + 208))
      {
        sub_1001488AC(a1);
        v18 = *(a1 + 216) - 32;
      }

      *v18 = 10;
      *(v18 + 8) = v14;
      *(v18 + 16) = v2;
      *(v18 + 24) = v11;
      *(a1 + 216) = v18;
      v11 = *(a1 + 40);
    }

    *(a1 + 88) = *(v2 + 16);
    if (v11 == *(a1 + 32))
    {
      v19 = *(v2 + 280);
    }

    else
    {
      v19 = *(v2 + *v11 + 24);
    }

    return (v19 >> 1) & 1;
  }
}

uint64_t sub_10014E898(uint64_t a1)
{
  v2 = *(a1 + 88);
  if ((*(v2 + 309) & 1) == 0)
  {
    v5 = 0;
    v3 = (v2 + 296);
    v4 = (v2 + 288);
    goto LABEL_5;
  }

  if ((*(a1 + 97) & 4) != 0)
  {
    v3 = (v2 + 296);
    v4 = (v2 + 288);
    if (*(a1 + 123) == 1)
    {
      goto LABEL_7;
    }

    v5 = 0;
LABEL_5:
    v6 = v4;
    goto LABEL_8;
  }

  v3 = (v2 + 296);
  v4 = (v2 + 288);
LABEL_7:
  v5 = 1;
  v6 = v3;
LABEL_8:
  v7 = *v6;
  v8 = *(a1 + 40);
  if (v7 == -1)
  {
    v9 = *(a1 + 32);
  }

  else if (v7 >= *(a1 + 32) - v8)
  {
    v9 = *(a1 + 32);
  }

  else
  {
    v9 = &v8[v7];
  }

  if (v9 == v8)
  {
    v11 = *(a1 + 40);
  }

  else
  {
    v10 = *(v2 + 8) + 16;
    v11 = *(a1 + 40);
    do
    {
      v12 = *v11;
      if (*(a1 + 120) == 1)
      {
        v13 = *(**(a1 + 80) + 8);
        LOBYTE(v12) = (*(*v13 + 40))(v13, v12);
        v11 = *(a1 + 40);
      }

      if (!*(v10 + v12))
      {
        break;
      }

      *(a1 + 40) = ++v11;
    }

    while (v11 != v9);
  }

  v14 = (v11 - v8);
  v15 = *v4;
  if (v14 < *v4)
  {
    return 0;
  }

  if (v5)
  {
    if (*(v2 + 308) == 1 && v14 < *v3)
    {
      *(a1 + 48) = v11;
    }

    if (v14 != v15)
    {
      v17 = *(a1 + 216) - 32;
      if (v17 < *(a1 + 208))
      {
        sub_1001488AC(a1);
        v17 = *(a1 + 216) - 32;
      }

      *v17 = 7;
      *(v17 + 8) = v14;
      *(v17 + 16) = v2;
      *(v17 + 24) = v11;
      *(a1 + 216) = v17;
    }

    *(a1 + 88) = *(v2 + 16);
    return 1;
  }

  else
  {
    if (v14 < *v3)
    {
      v18 = *(a1 + 216) - 32;
      if (v18 < *(a1 + 208))
      {
        sub_1001488AC(a1);
        v18 = *(a1 + 216) - 32;
      }

      *v18 = 11;
      *(v18 + 8) = v14;
      *(v18 + 16) = v2;
      *(v18 + 24) = v11;
      *(a1 + 216) = v18;
      v11 = *(a1 + 40);
    }

    *(a1 + 88) = *(v2 + 16);
    if (v11 == *(a1 + 32))
    {
      v19 = *(v2 + 280);
    }

    else
    {
      v19 = *(v2 + *v11 + 24);
    }

    return (v19 >> 1) & 1;
  }
}

uint64_t sub_10014EAD0(uint64_t a1)
{
  v2 = *(a1 + 88);
  if ((*(v2 + 309) & 1) == 0)
  {
    v5 = 0;
    v3 = (v2 + 296);
    v4 = (v2 + 288);
    goto LABEL_5;
  }

  if ((*(a1 + 97) & 4) != 0)
  {
    v3 = (v2 + 296);
    v4 = (v2 + 288);
    if (*(a1 + 123) == 1)
    {
      goto LABEL_7;
    }

    v5 = 0;
LABEL_5:
    v6 = v4;
    goto LABEL_8;
  }

  v3 = (v2 + 296);
  v4 = (v2 + 288);
LABEL_7:
  v5 = 1;
  v6 = v3;
LABEL_8:
  v7 = *v6;
  v8 = *(a1 + 40);
  if (v7 == -1)
  {
    v9 = *(a1 + 32);
  }

  else if (v7 >= *(a1 + 32) - v8)
  {
    v9 = *(a1 + 32);
  }

  else
  {
    v9 = &v8[v7];
  }

  if (v9 == v8)
  {
    v11 = *(a1 + 40);
  }

  else
  {
    v10 = *(v2 + 8);
    v11 = *(a1 + 40);
    do
    {
      v12 = sub_10014F338(v11, *(a1 + 32), v10, **(a1 + 72), *(a1 + 120));
      v11 = *(a1 + 40);
      if (v11 == v12)
      {
        break;
      }

      *(a1 + 40) = ++v11;
    }

    while (v11 != v9);
  }

  v13 = (v11 - v8);
  v14 = *v4;
  if (v13 < *v4)
  {
    return 0;
  }

  if (v5)
  {
    if (*(v2 + 308) == 1 && v13 < *v3)
    {
      *(a1 + 48) = v11;
    }

    if (v13 != v14)
    {
      v16 = *(a1 + 216) - 32;
      if (v16 < *(a1 + 208))
      {
        sub_1001488AC(a1);
        v16 = *(a1 + 216) - 32;
      }

      *v16 = 7;
      *(v16 + 8) = v13;
      *(v16 + 16) = v2;
      *(v16 + 24) = v11;
      *(a1 + 216) = v16;
    }

    *(a1 + 88) = *(v2 + 16);
    return 1;
  }

  else
  {
    if (v13 < *v3)
    {
      v17 = *(a1 + 216) - 32;
      if (v17 < *(a1 + 208))
      {
        sub_1001488AC(a1);
        v17 = *(a1 + 216) - 32;
      }

      *v17 = 12;
      *(v17 + 8) = v13;
      *(v17 + 16) = v2;
      *(v17 + 24) = v11;
      *(a1 + 216) = v17;
      v11 = *(a1 + 40);
    }

    *(a1 + 88) = *(v2 + 16);
    if (v11 == *(a1 + 32))
    {
      v18 = *(v2 + 280);
    }

    else
    {
      v18 = *(v2 + *v11 + 24);
    }

    return (v18 >> 1) & 1;
  }
}

BOOL sub_10014ECD8(void *a1)
{
  v1 = a1[5];
  v2 = v1 - a1[8];
  v3 = a1[11];
  v4 = *(v3 + 16);
  if (v2 >= v4)
  {
    a1[5] = v1 - v4;
    a1[11] = *(v3 + 8);
  }

  return v2 >= v4;
}

uint64_t sub_10014ED10(uint64_t a1)
{
  v3 = *(*(a1 + 88) + 16);
  if (v3 != 9999)
  {
    v24 = v1;
    v25 = v2;
    if (v3 < 1)
    {
      if (v3 > -1073741825)
      {
        v16 = *(a1 + 192);
        if (*(a1 + 184) != v16)
        {
          v17 = *(v16 - 112);
          if (v3)
          {
            v18 = v17 == ~v3;
          }

          else
          {
            v18 = 1;
          }

          v4 = v18;
          goto LABEL_31;
        }
      }

      else
      {
        v11 = **(a1 + 72);
        v22 = 0;
        v23 = ~v3;
        v12 = sub_100148F58(*v11, v11[1], &v22);
        v14 = *(a1 + 192);
        if (*(a1 + 184) == v14)
        {
          v15 = -1;
        }

        else
        {
          v15 = *(v14 - 112);
        }

        if (v12 != v13)
        {
          v19 = v12 + 8;
          do
          {
            v4 = v15 == *(v19 - 8);
            v20 = v15 == *(v19 - 8) || v19 == v13;
            v19 += 8;
          }

          while (!v20);
          goto LABEL_31;
        }
      }
    }

    else
    {
      if (!(v3 >> 30))
      {
        v4 = *(sub_10014CE48(*(a1 + 16), v3) + 16);
LABEL_31:
        *(a1 + 88) = *(*(a1 + 88) + 8);
        return v4 & 1;
      }

      v6 = **(a1 + 72);
      v22 = 0;
      v23 = v3;
      v7 = sub_100148F58(*v6, v6[1], &v22);
      if (v7 != v8)
      {
        v9 = v8;
        v10 = v7 + 8;
        do
        {
          v4 = *(sub_10014CE48(*(a1 + 16), *(v10 - 8)) + 16);
          if (v4)
          {
            break;
          }

          v18 = v10 == v9;
          v10 += 8;
        }

        while (!v18);
        goto LABEL_31;
      }
    }

    v4 = 0;
    goto LABEL_31;
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_10014EE7C(__n128 *a1)
{
  v2 = a1[7].n128_u8[8];
  v3 = a1[13].n128_u64[1] - 16;
  if (v3 < a1[13].n128_u64[0])
  {
    sub_1001488AC(a1);
    v3 = a1[13].n128_u64[1] - 16;
  }

  *v3 = 18;
  *(v3 + 8) = v2;
  a1[13].n128_u64[1] = v3;
  v4 = a1[5].n128_u64[1];
  a1[7].n128_u8[8] = *(v4 + 16);
  a1[5].n128_u64[1] = *(v4 + 8);
  return 1;
}

uint64_t sub_10014EEE8(__n128 *a1)
{
  v2 = a1[12].n128_u64[0];
  v3 = &a1[11].n128_i64[1];
  while (v2 != a1[11].n128_u64[1])
  {
    v4 = *(v2 - 112);
    v2 -= 112;
    if (v4 == *(*(a1[5].n128_u64[1] + 16) + 16))
    {
      if (*(v2 + 104) == a1[2].n128_u64[1])
      {
        return 0;
      }

      break;
    }
  }

  v5 = (a1[13].n128_u64[1] - 8);
  if (v5 < a1[13].n128_u64[0])
  {
    sub_1001488AC(a1);
    v5 = (a1[13].n128_u64[1] - 8);
  }

  *v5 = 15;
  a1[13].n128_u64[1] = v5;
  if (a1[12].n128_u64[1] == a1[11].n128_u64[1])
  {
    sub_10014FB0C(v3, 0x32uLL);
  }

  v18 = 0;
  v19 = 0;
  v17 = 0u;
  v15 = 0u;
  memset(v16, 0, sizeof(v16));
  BYTE12(v17) = 1;
  sub_10014FBF4(v3, &v15);
  sub_10014C2F8(v16);
  v6 = a1[12].n128_u64[0];
  *(v6 - 104) = *(a1[5].n128_u64[1] + 8);
  sub_1001489D4(v6 - 96, a1[1].n128_i64[0]);
  v7 = *(a1[5].n128_u64[1] + 16);
  a1[5].n128_u64[1] = v7;
  v8 = a1[12].n128_u64[0];
  *(v8 - 112) = *(v7 + 16);
  v9 = a1[2].n128_i64[1];
  *(v8 - 8) = v9;
  v10 = -2 - *(a1[5].n128_u64[1] + 16);
  v11 = (a1[13].n128_u64[1] - 48);
  if (v11 < a1[13].n128_u64[0])
  {
    sub_1001488AC(a1);
    v11 = (a1[13].n128_u64[1] - 48);
    v9 = a1[2].n128_i64[1];
  }

  v12 = a1[12].n128_u64[0];
  if (a1[11].n128_u64[1] == v12)
  {
    v13 = -2147483645;
  }

  else
  {
    v13 = *(v12 - 112);
  }

  *v11 = 5;
  sub_100148E58((v11 + 2), v10, &a1[8], v9, v13);
  a1[13].n128_u64[1] = v11;
  return 1;
}

uint64_t sub_10014F098(uint64_t a1)
{
  v1 = *(a1 + 192);
  if (*(a1 + 184) == v1)
  {
    v2 = 0x7FFFFFFF;
  }

  else
  {
    v2 = *(v1 - 112);
  }

  return sub_10014FE7C(a1, v2, 1);
}

uint64_t sub_10014F0B8(__n128 *a1)
{
  v2 = *(a1[5].n128_u64[1] + 16);
  if (v2 == 1)
  {
    v4 = a1[2].n128_u64[1];
    if (a1[1].n128_u64[1] == v4)
    {
      goto LABEL_7;
    }

    v3 = v4 - 1;
  }

  else
  {
    if (v2 != 2)
    {
      goto LABEL_7;
    }

    v3 = a1[2].n128_u64[0];
  }

  a1[3].n128_u64[0] = v3;
LABEL_7:
  v5 = (a1[13].n128_u64[1] - 8);
  if (v5 < a1[13].n128_u64[0])
  {
    sub_1001488AC(a1);
    v5 = (a1[13].n128_u64[1] - 8);
  }

  *v5 = 16;
  a1[13].n128_u64[1] = v5;
  a1[5].n128_u64[1] = *(a1[5].n128_u64[1] + 8);
  return 1;
}

uint64_t sub_10014F14C(__n128 *a1)
{
  v2 = (a1[13].n128_u64[1] - 8);
  if (v2 < a1[13].n128_u64[0])
  {
    sub_1001488AC(a1);
    v2 = (a1[13].n128_u64[1] - 8);
  }

  *v2 = 17;
  a1[13].n128_u64[1] = v2;
  a1[5].n128_u64[1] = *(a1[5].n128_u64[1] + 8);
  return 1;
}

uint64_t sub_10014F1A8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = 14;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  sub_10014F20C(a1 + 24, a4);
  sub_10014F20C(a1 + 104, a5);
  return a1;
}

uint64_t sub_10014F20C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_10014F2B4(a1, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 40) = 0;
  v4 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = *(a2 + 72);
  v5 = *(a2 + 76);
  *(a1 + 76) = v5;
  if ((v5 & 1) == 0)
  {
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
  }

  return a1;
}

uint64_t sub_10014F2B4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100148C24(result, a4);
  }

  return result;
}

void sub_10014F31C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *sub_10014F338(char *a1, char *a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a1;
  if (a1 == a2)
  {
    return v5;
  }

  v9 = (a3 + 40);
  v10 = *(a4 + 24);
  if (*(a3 + 16))
  {
    v12 = 0;
    do
    {
      v13 = *v9;
      if (*v9)
      {
        v14 = v5;
        do
        {
          v15 = *v14;
          if (a5)
          {
            LOBYTE(v15) = (*(**(*v10 + 8) + 40))(*(*v10 + 8), v15);
            v13 = *v9;
          }

          if (v15 != v13)
          {
            break;
          }

          v16 = *++v9;
          v13 = v16;
          ++v14;
        }

        while (v16 && v14 != a2);
        if (!v13)
        {
          if (v14 == v5)
          {
            v36 = v5 + 1;
          }

          else
          {
            v36 = v14;
          }

          if ((*(a3 + 36) & 1) == 0)
          {
            return v36;
          }

          return v5;
        }

          ;
        }
      }

      else
      {
        v19 = *v5;
        if (a5)
        {
          LODWORD(v19) = (*(**(*v10 + 8) + 40))(*(*v10 + 8), v19);
        }

        if (!v19)
        {
          goto LABEL_92;
        }

        ++v9;
      }

      ++v12;
    }

    while (v12 < *(a3 + 16));
  }

  v20 = *v5;
  if (a5)
  {
    v20 = (*(**(*v10 + 8) + 40))(*(*v10 + 8), *v5);
  }

  if (!*(a3 + 20))
  {
    if (!*(a3 + 24))
    {
      goto LABEL_88;
    }

    memset(&v41, 0, sizeof(v41));
    goto LABEL_64;
  }

  memset(&v41, 0, sizeof(v41));
  if ((*(a4 + 42) & 0x20) != 0)
  {
    v39 = v20;
    v40 = 0;
    sub_100149494(*v10, &v38);
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    v41 = v38;
  }

  else
  {
    std::string::assign(&v41, 1uLL, v20);
  }

  if (!*(a3 + 20))
  {
LABEL_64:
    if (!*(a3 + 24))
    {
      goto LABEL_83;
    }

    v39 = v20;
    v40 = 0;
    sub_100149660(*v10, &v39, &v40, &v38);
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    v41 = v38;
    if (!*(a3 + 24))
    {
LABEL_83:
      v33 = 1;
      goto LABEL_85;
    }

    v29 = 0;
    while (1)
    {
      if (!*v9)
      {
        if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          v30 = HIBYTE(v41.__r_.__value_.__r.__words[2]);
          if (HIBYTE(v41.__r_.__value_.__r.__words[2]) == 1)
          {
            v31 = &v41;
            goto LABEL_77;
          }

          goto LABEL_78;
        }

        if (v41.__r_.__value_.__l.__size_ == 1)
        {
          v31 = v41.__r_.__value_.__r.__words[0];
LABEL_77:
          v30 = v31->__r_.__value_.__s.__data_[0];
LABEL_78:
          if (!v30)
          {
            goto LABEL_84;
          }

          goto LABEL_79;
        }

        if (!v41.__r_.__value_.__l.__size_)
        {
          goto LABEL_84;
        }
      }

LABEL_79:
      if (!std::string::compare(&v41, v9))
      {
        goto LABEL_84;
      }

      ++v9;
        ;
      }

      if (++v29 >= *(a3 + 24))
      {
        goto LABEL_83;
      }
    }
  }

  v21 = 0;
  while (1)
  {
    if (!*v9)
    {
      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        if (!v41.__r_.__value_.__l.__size_)
        {
          goto LABEL_36;
        }

        if (v41.__r_.__value_.__l.__size_ != 1)
        {
          goto LABEL_35;
        }

        v26 = v41.__r_.__value_.__r.__words[0];
        goto LABEL_52;
      }

      if (!*(&v41.__r_.__value_.__s + 23))
      {
        goto LABEL_36;
      }

      if (HIBYTE(v41.__r_.__value_.__r.__words[2]) == 1)
      {
        v26 = &v41;
LABEL_52:
        if (!v26->__r_.__value_.__s.__data_[0])
        {
          goto LABEL_36;
        }
      }
    }

LABEL_35:
    if (std::string::compare(&v41, v9) < 0)
    {
      v22 = v9 + 1;
        ;
      }

      goto LABEL_61;
    }

LABEL_36:
    v22 = v9 + 1;
      ;
    }

    if (*v22)
    {
      goto LABEL_60;
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v41.__r_.__value_.__l.__size_ != 1)
      {
        if (!v41.__r_.__value_.__l.__size_)
        {
          break;
        }

        goto LABEL_60;
      }

      v25 = v41.__r_.__value_.__r.__words[0];
    }

    else
    {
      v24 = HIBYTE(v41.__r_.__value_.__r.__words[2]);
      if (HIBYTE(v41.__r_.__value_.__r.__words[2]) != 1)
      {
        goto LABEL_59;
      }

      v25 = &v41;
    }

    v24 = v25->__r_.__value_.__s.__data_[0];
LABEL_59:
    if (!v24)
    {
      break;
    }

LABEL_60:
    if (std::string::compare(&v41, v22) <= 0)
    {
      break;
    }

LABEL_61:
    v9 = v22 + 1;
      ;
    }

    if (++v21 >= *(a3 + 20))
    {
      goto LABEL_64;
    }
  }

LABEL_84:
  v33 = 0;
  v5 += *(a3 + 36) ^ 1;
LABEL_85:
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (v33)
  {
LABEL_88:
    if (!sub_100146404(v10, v20, *(a3 + 28)))
    {
      v34 = *(a3 + 32);
      if (!v34 || sub_100146404(v10, v20, v34))
      {
        v35 = *(a3 + 36);
        goto LABEL_93;
      }
    }

LABEL_92:
    v35 = *(a3 + 36) ^ 1;
LABEL_93:
    v5 += v35;
  }

  return v5;
}

void sub_10014F774(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10014F798(__n128 *a1)
{
  v2 = a1[6].n128_u32[0];
  if ((v2 & 0x80) != 0 || (v3 = a1[5].n128_u64[1], (a1[11].n128_u8[4] & *(*(v3 + 8) + 16)) == 0))
  {

    return sub_10014F984(a1);
  }

  else
  {
    if (*(v3 + 309) == 1)
    {
      if ((v2 & 0x400) == 0)
      {
        v4 = &a1[2].n128_u64[1];
        v5 = a1[2].n128_u64[1];
        v6 = a1[2].n128_u64[0];
        v7 = &v6[-v5];
        v8 = (v3 + 296);
        v9 = (v3 + 288);
        goto LABEL_18;
      }

      v4 = &a1[2].n128_u64[1];
      v5 = a1[2].n128_u64[1];
      v6 = a1[2].n128_u64[0];
      v7 = &v6[-v5];
      v8 = (v3 + 296);
      v9 = (v3 + 288);
      if (a1[7].n128_u8[11] == 1)
      {
LABEL_18:
        if (*v8 >= v7)
        {
          v15 = v7;
        }

        else
        {
          v15 = *v8;
        }

        v16 = *v9;
        if (*v9 <= v15)
        {
          v17 = &v15[v5];
          *v4 = &v15[v5];
          if (*(v3 + 308) == 1 && v15 < *v8)
          {
            a1[3].n128_u64[0] = v17;
          }

          if (v15 != v16)
          {
            v18 = a1[13].n128_u64[1] - 32;
            if (v18 < a1[13].n128_u64[0])
            {
              sub_1001488AC(a1);
              v18 = a1[13].n128_u64[1] - 32;
            }

            *v18 = 7;
            *(v18 + 8) = v15;
            *(v18 + 16) = v3;
            *(v18 + 24) = v17;
            a1[13].n128_u64[1] = v18;
          }

          a1[5].n128_u64[1] = *(v3 + 16);
          return 1;
        }

LABEL_31:
        result = 0;
        *v4 = v6;
        return result;
      }

      v11 = *v9;
      if (v7 < *v9)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v4 = &a1[2].n128_u64[1];
      v5 = a1[2].n128_u64[1];
      v6 = a1[2].n128_u64[0];
      v11 = *(v3 + 288);
      if (&v6[-v5] < v11)
      {
        goto LABEL_31;
      }

      v8 = (v3 + 296);
    }

    v12 = (v5 + v11);
    *v4 = v5 + v11;
    if (v11 < *v8)
    {
      v13 = a1[13].n128_u64[1] - 32;
      if (v13 < a1[13].n128_u64[0])
      {
        sub_1001488AC(a1);
        v13 = a1[13].n128_u64[1] - 32;
      }

      *v13 = 9;
      *(v13 + 8) = v11;
      *(v13 + 16) = v3;
      *(v13 + 24) = v12;
      a1[13].n128_u64[1] = v13;
      v6 = a1[2].n128_u64[0];
      v12 = a1[2].n128_u64[1];
    }

    a1[5].n128_u64[1] = *(v3 + 16);
    if (v12 == v6)
    {
      v14 = *(v3 + 280);
    }

    else
    {
      v14 = *(v3 + *v12 + 24);
    }

    return (v14 >> 1) & 1;
  }
}

uint64_t sub_10014F984(__n128 *a1)
{
  v2 = a1[5].n128_u64[1];
  v3 = *(v2 + 8);
  if (*(v2 + 288))
  {
    v4 = 0;
    while (1)
    {
      a1[5].n128_u64[1] = v3;
      result = sub_10014DA38(a1);
      if (!result)
      {
        break;
      }

      if (++v4 >= *(v2 + 288))
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    v4 = 0;
LABEL_7:
    if (*(v2 + 309) == 1 && ((a1[6].n128_u8[1] & 4) == 0 || a1[7].n128_u8[11] == 1))
    {
      while (v4 < *(v2 + 296))
      {
        a1[5].n128_u64[1] = v3;
        if (!sub_10014DA38(a1))
        {
          break;
        }

        ++v4;
      }

      if (*(v2 + 308) == 1 && v4 < *(v2 + 296))
      {
        a1[3].n128_u64[0] = a1[2].n128_u64[1];
      }

      if (v4 != *(v2 + 288))
      {
        v10 = a1[2].n128_u64[1];
        v11 = a1[13].n128_u64[1] - 32;
        if (v11 < a1[13].n128_u64[0])
        {
          sub_1001488AC(a1);
          v11 = a1[13].n128_u64[1] - 32;
        }

        *v11 = 7;
        *(v11 + 8) = v4;
        *(v11 + 16) = v2;
        *(v11 + 24) = v10;
        a1[13].n128_u64[1] = v11;
      }

      a1[5].n128_u64[1] = *(v2 + 16);
      return 1;
    }

    else
    {
      if (v4 < *(v2 + 296))
      {
        v6 = a1[2].n128_u64[1];
        v7 = a1[13].n128_u64[1] - 32;
        if (v7 < a1[13].n128_u64[0])
        {
          sub_1001488AC(a1);
          v7 = a1[13].n128_u64[1] - 32;
        }

        *v7 = 8;
        *(v7 + 8) = v4;
        *(v7 + 16) = v2;
        *(v7 + 24) = v6;
        a1[13].n128_u64[1] = v7;
      }

      a1[5].n128_u64[1] = *(v2 + 16);
      v8 = a1[2].n128_u64[1];
      if (v8 == a1[2].n128_u64[0])
      {
        v9 = *(v2 + 280);
      }

      else
      {
        v9 = *(v2 + *v8 + 24);
      }

      return (v9 >> 1) & 1;
    }
  }

  return result;
}

void *sub_10014FB0C(void *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x24924924924924ALL)
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_100149E2C(result, a2);
    }

    sub_100033FD0();
  }

  return result;
}

void sub_10014FBE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100149F40(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10014FBF4(uint64_t *a1, _OWORD *a2)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    result = sub_10014FD24(a1, a2);
  }

  else
  {
    *v4 = *a2;
    sub_10014F20C((v4 + 1), (a2 + 1));
    v4[6] = a2[6];
    result = (v4 + 7);
    a1[1] = (v4 + 7);
  }

  a1[1] = result;
  return result;
}

uint64_t sub_10014FC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = v6 + v7;
      *(a4 + v7) = *(v6 + v7);
      result = sub_10014F20C(a4 + v7 + 16, v6 + v7 + 16);
      *(a4 + v7 + 96) = *(v6 + v7 + 96);
      v7 += 112;
    }

    while (v8 + 112 != a3);
    while (v6 != a3)
    {
      result = sub_10014C2F8(v6 + 16);
      v6 += 112;
    }
  }

  return result;
}

void sub_10014FCFC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = v2 - 96;
    do
    {
      v5 = sub_10014C2F8(v5) - 112;
      v4 += 112;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10014FD24(uint64_t *a1, _OWORD *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x249249249249249)
  {
    sub_100033FD0();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v6 = 0x249249249249249;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    sub_100149E2C(a1, v6);
  }

  v7 = 112 * v2;
  v14 = 0;
  v15 = v7;
  v16 = v7;
  *v7 = *a2;
  sub_10014F20C(v7 + 16, (a2 + 1));
  *(v7 + 96) = a2[6];
  *&v16 = v16 + 112;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  sub_10014FC6C(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_100149F40(&v14);
  return v13;
}

void sub_10014FE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100149F40(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10014FE7C(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 88);
  if (!v3)
  {
    return 1;
  }

  while (1)
  {
    v7 = *v3;
    if (!*v3)
    {
      v9 = v3[4];
      *(a1 + 88) = *(v3 + 1);
      sub_10014FE7C(a1, v9, 0);
      v8 = *(a1 + 88);
      goto LABEL_13;
    }

    if (v7 == 1)
    {
      break;
    }

    if (v7 == 6)
    {
      return 1;
    }

LABEL_5:
    v8 = *(v3 + 1);
    *(a1 + 88) = v8;
LABEL_13:
    v3 = v8;
    if (!v8)
    {
      return 1;
    }
  }

  if (v3[4] != a2)
  {
    sub_10014D694(a1);
    v8 = *(a1 + 88);
    if (v8)
    {
      goto LABEL_13;
    }

    *(a1 + 228) = 1;
    *(a1 + 230) = 0;
      ;
    }

    v8 = *(a1 + 88);
    if (v8)
    {
      goto LABEL_13;
    }

    goto LABEL_5;
  }

  if (!a3)
  {
    *(a1 + 88) = *(v3 + 1);
    return 1;
  }

  return sub_10014D694(a1);
}

unint64_t sub_10014FFE4(uint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = a2;
  if (a3)
  {
    v5 = a4;
    v8 = a1[1];
    v9 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3) >= a3)
    {
      v15 = 0xAAAAAAAAAAAAAAABLL * ((v8 - a2) >> 3);
      v16 = a3;
      if (a3 <= v15)
      {
        goto LABEL_15;
      }

      v16 = 0xAAAAAAAAAAAAAAABLL * ((v8 - a2) >> 3);
      v17 = v8 + 24 * (a3 - v15);
      v18 = a1[1];
      do
      {
        *v18 = *a4;
        *(v18 + 16) = *(a4 + 16);
        v18 += 24;
      }

      while (v18 != v17);
      a1[1] = v17;
      if (v8 != a2)
      {
LABEL_15:
        sub_10014B420(a1, a2, v8, a2 + 24 * a3);
        if (v4 <= v5)
        {
          if (a1[1] <= v5)
          {
            v19 = 0;
          }

          else
          {
            v19 = a3;
          }

          v5 += 24 * v19;
        }

        v20 = 0;
        v21 = *(v5 + 16);
        do
        {
          v22 = v20 + v4;
          *v22 = *v5;
          *(v22 + 8) = *(v5 + 8);
          *(v22 + 16) = v21;
          v20 += 24;
          --v16;
        }

        while (v16);
      }
    }

    else
    {
      v10 = *a1;
      v11 = a3 - 0x5555555555555555 * ((v8 - *a1) >> 3);
      if (v11 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_100033FD0();
      }

      v12 = a2 - v10;
      v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3);
      if (2 * v13 > v11)
      {
        v11 = 2 * v13;
      }

      if (v13 >= 0x555555555555555)
      {
        v14 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v14 = v11;
      }

      v29 = a1;
      if (v14)
      {
        sub_100148C70(a1, v14);
      }

      v23 = 8 * (v12 >> 3);
      __p = 0;
      v26 = v23;
      v28 = 0;
      do
      {
        *v23 = *a4;
        *(v23 + 16) = *(a4 + 16);
        v23 += 24;
      }

      while (v23 != 8 * (v12 >> 3) + 24 * a3);
      v27 = 8 * (v12 >> 3) + 24 * a3;
      v4 = sub_10014B4A8(a1, &__p, v4);
      if (v27 != v26)
      {
        v27 = (v27 - v26 - 24) % 0x18uLL + v26;
      }

      if (__p)
      {
        operator delete(__p);
      }
    }
  }

  return v4;
}

void sub_100150208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100150264(uint64_t a1, char a2)
{
  v3 = *(a1 + 216);
  if ((a2 & 1) == 0)
  {
    sub_10014886C(*(a1 + 16), *(v3 + 16), *(v3 + 8), *(v3 + 8) == 0);
    sub_100146710(*(a1 + 16), *(v3 + 24), *(v3 + 8), *(v3 + 32), *(v3 + 8) == 0);
  }

  *(a1 + 216) = v3 + 40;
  return 1;
}

uint64_t sub_1001502CC(uint64_t a1)
{
  *(a1 + 216) += 8;
  *(a1 + 88) = 0;
  return 0;
}

BOOL sub_1001502E4(uint64_t a1, int a2)
{
  v2 = *(a1 + 216);
  *(a1 + 88) = *(v2 + 8);
  *(a1 + 40) = *(v2 + 16);
  v3 = *(v2 + 24);
  *(a1 + 228) = v3 ^ a2 ^ 1;
  *(a1 + 216) = v2 + 32;
  *(a1 + 229) = 1;
  return v3 != a2;
}

uint64_t sub_100150328(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 216);
  if ((a2 & 1) == 0)
  {
    *(a1 + 88) = *(v2 + 8);
    *(a1 + 40) = *(v2 + 16);
  }

  *(a1 + 216) = v2 + 24;
  *(a1 + 230) = a2 ^ 1;
  return a2;
}

uint64_t sub_100150358(uint64_t a1)
{
  v1 = *(a1 + 216);
  v2 = *(v1 + 16);
  if (v2)
  {
    **(v1 + 8) = v2;
  }

  *(a1 + 216) = v1 + 48;
  return 1;
}

uint64_t sub_10015037C(uint64_t a1)
{
  ++*(a1 + 224);
  v1 = *(a1 + 208);
  *(a1 + 208) = *(*(a1 + 216) + 8);
  v2 = sub_100148954();
  v3 = 0;
  while (1)
  {
    v4 = atomic_load(&v2[v3]);
    if (!v4)
    {
      atomic_compare_exchange_strong(&v2[v3], &v4, v1);
      if (!v4)
      {
        break;
      }
    }

    v3 += 8;
    if (v3 == 128)
    {
      operator delete(v1);
      return 1;
    }
  }

  return 1;
}

uint64_t sub_1001503E8(uint64_t a1, int a2)
{
  v2 = *(a1 + 216);
  if (a2)
  {
    *(a1 + 216) = v2 + 4;
    return 1;
  }

  else
  {
    v4 = v2[1];
    v3 = v2[2];
    v5 = *(v3 + 288);
    if ((*(a1 + 97) & 0x20) != 0 && *(a1 + 40) == *(a1 + 32))
    {
      *(a1 + 121) = 1;
    }

    v6 = v2[3];
    v7 = v3 + 24;
    v8 = *(a1 + 104) + 1;
    v9 = (v6 - 1);
    v10 = v5 + 1;
    while (1)
    {
      *(a1 + 40) = v9;
      *(a1 + 104) = v8;
      if (v10 == v4)
      {
        break;
      }

      v11 = *v9--;
      ++v8;
      --v6;
      --v4;
      if ((*(v7 + v11) & 2) != 0)
      {
        v2[1] = v4;
        v2[3] = v6;
        goto LABEL_12;
      }
    }

    *(a1 + 216) = v2 + 4;
    if ((*(v7 + *v9) & 2) == 0)
    {
      return 1;
    }

LABEL_12:
    v12 = 0;
    *(a1 + 88) = *(v3 + 16);
  }

  return v12;
}

uint64_t sub_10015049C(uint64_t a1, int a2)
{
  v3 = *(a1 + 216);
  if (a2)
  {
    v4 = (v3 + 4);
LABEL_3:
    *(a1 + 216) = v4;
    return 1;
  }

  v6 = v3[1];
  v7 = v3[2];
  *(a1 + 88) = *(v7 + 8);
  v8 = v3[3];
  *(a1 + 40) = v8;
  if (*(a1 + 32) == v8)
  {
LABEL_17:
    *(a1 + 216) += 32;
    if ((*(a1 + 97) & 0x20) != 0 && v8 != *(a1 + 56))
    {
      *(a1 + 121) = 1;
    }

    if ((*(v7 + 280) & 2) == 0)
    {
      return 1;
    }
  }

  else
  {
    v9 = v7 + 24;
    v10 = v6 + 1;
    do
    {
      v11 = v10;
      if ((sub_10014DA38(a1) & 1) == 0)
      {
        v4 = *(a1 + 216) + 32;
        goto LABEL_3;
      }

      ++*(a1 + 104);
      *(a1 + 88) = *(v7 + 8);
      v8 = *(a1 + 32);
      v12 = *(a1 + 40);
      if (v11 >= *(v7 + 296) || v12 == v8)
      {
        break;
      }

      v10 = v11 + 1;
    }

    while ((*(v9 + *v12) & 2) == 0);
    if (v12 == v8)
    {
      goto LABEL_17;
    }

    if (*(v7 + 296) == v11)
    {
      *(a1 + 216) += 32;
      if ((*(v9 + *v12) & 2) == 0)
      {
        return 1;
      }
    }

    else
    {
      v3[1] = v11;
      v3[3] = v12;
    }
  }

  result = 0;
  *(a1 + 88) = *(v7 + 16);
  return result;
}

uint64_t sub_1001505D8(uint64_t a1, int a2)
{
  v2 = *(a1 + 216);
  if (!a2)
  {
    v5 = v2[1];
    v4 = v2[2];
    v6 = v2[3];
    *(a1 + 40) = v6;
    v7 = *(a1 + 32);
    if (v7 == v6)
    {
      v13 = v6;
    }

    else
    {
      v8 = *(v4 + 296);
      v9 = *(a1 + 104) + 1;
      v10 = v6 + 1;
      v11 = v5 + 1;
      v12 = v6 + 1;
      do
      {
        v6 = v12;
        v13 = v10;
        v5 = v11;
        *(a1 + 40) = v10;
        *(a1 + 104) = v9;
        if (v11 >= v8)
        {
          break;
        }

        if (v10 == v7)
        {
          break;
        }

        ++v10;
        ++v9;
        ++v12;
        ++v11;
      }

      while ((*(v4 + 24 + *v13) & 2) == 0);
    }

    if (*(v4 + 308) == 1 && v5 < *(v4 + 296))
    {
      *(a1 + 48) = v6;
    }

    if (v13 == v7)
    {
      *(a1 + 216) = v2 + 4;
      if ((*(a1 + 97) & 0x20) != 0 && v7 != *(a1 + 56))
      {
        *(a1 + 121) = 1;
      }

      if ((*(v4 + 280) & 2) == 0)
      {
        return 1;
      }
    }

    else if (v5 == *(v4 + 296))
    {
      *(a1 + 216) = v2 + 4;
      if ((*(v4 + *v13 + 24) & 2) == 0)
      {
        return 1;
      }
    }

    else
    {
      v2[1] = v5;
      v2[3] = v6;
    }

    v3 = 0;
    *(a1 + 88) = *(v4 + 16);
    return v3;
  }

  *(a1 + 216) = v2 + 4;
  return 1;
}

uint64_t sub_100150704(uint64_t a1, int a2)
{
  v3 = *(a1 + 216);
  if (a2)
  {
    v4 = (v3 + 4);
LABEL_3:
    *(a1 + 216) = v4;
    return 1;
  }

  v7 = v3[1];
  v6 = v3[2];
  v8 = *(v6 + 8);
  *(a1 + 88) = v8;
  v9 = *(v8 + 24);
  v10 = v3[3];
  *(a1 + 40) = v10;
  if (*(a1 + 32) != v10)
  {
    LOBYTE(v11) = *v10;
    v12 = v7 + 1;
    while (1)
    {
      v7 = v12;
      if (*(a1 + 120) == 1)
      {
        LOBYTE(v11) = (*(**(**(a1 + 80) + 8) + 40))(*(**(a1 + 80) + 8), v11);
      }

      if (v9 != v11)
      {
        break;
      }

      v10 = (*(a1 + 40) + 1);
      *(a1 + 40) = v10;
      ++*(a1 + 104);
      *(a1 + 88) = *(v6 + 8);
      if (v7 < *(v6 + 296) && v10 != *(a1 + 32))
      {
        v11 = *v10;
        v12 = v7 + 1;
        if ((*(v6 + 24 + v11) & 2) == 0)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    v4 = *(a1 + 216) + 32;
    goto LABEL_3;
  }

LABEL_13:
  if (*(v6 + 308) == 1 && v7 < *(v6 + 296))
  {
    *(a1 + 48) = v10;
  }

  if (v10 == *(a1 + 32))
  {
    *(a1 + 216) += 32;
    if ((*(a1 + 97) & 0x20) != 0 && v10 != *(a1 + 56))
    {
      *(a1 + 121) = 1;
    }

    if ((*(v6 + 280) & 2) == 0)
    {
      return 1;
    }
  }

  else if (v7 == *(v6 + 296))
  {
    *(a1 + 216) += 32;
    if ((*(v6 + *v10 + 24) & 2) == 0)
    {
      return 1;
    }
  }

  else
  {
    v3[1] = v7;
    v3[3] = v10;
  }

  result = 0;
  *(a1 + 88) = *(v6 + 16);
  return result;
}

uint64_t sub_1001508BC(uint64_t a1, int a2)
{
  v3 = *(a1 + 216);
  if (a2)
  {
    v4 = (v3 + 4);
LABEL_3:
    *(a1 + 216) = v4;
    return 1;
  }

  v7 = v3[1];
  v6 = v3[2];
  v8 = *(v6 + 8);
  *(a1 + 88) = v8;
  v9 = v3[3];
  *(a1 + 40) = v9;
  if (*(a1 + 32) != v9)
  {
    v10 = v8 + 16;
    LOBYTE(v11) = *v9;
    v12 = v7 + 1;
    while (1)
    {
      v7 = v12;
      if (*(a1 + 120) == 1)
      {
        LOBYTE(v11) = (*(**(**(a1 + 80) + 8) + 40))(*(**(a1 + 80) + 8), v11);
      }

      if (!*(v10 + v11))
      {
        break;
      }

      v9 = (*(a1 + 40) + 1);
      *(a1 + 40) = v9;
      ++*(a1 + 104);
      *(a1 + 88) = *(v6 + 8);
      if (v7 < *(v6 + 296) && v9 != *(a1 + 32))
      {
        v11 = *v9;
        v12 = v7 + 1;
        if ((*(v6 + 24 + v11) & 2) == 0)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    v4 = *(a1 + 216) + 32;
    goto LABEL_3;
  }

LABEL_13:
  if (*(v6 + 308) == 1 && v7 < *(v6 + 296))
  {
    *(a1 + 48) = v9;
  }

  if (v9 == *(a1 + 32))
  {
    *(a1 + 216) += 32;
    if ((*(a1 + 97) & 0x20) != 0 && v9 != *(a1 + 56))
    {
      *(a1 + 121) = 1;
    }

    if ((*(v6 + 280) & 2) == 0)
    {
      return 1;
    }
  }

  else if (v7 == *(v6 + 296))
  {
    *(a1 + 216) += 32;
    if ((*(v6 + *v9 + 24) & 2) == 0)
    {
      return 1;
    }
  }

  else
  {
    v3[1] = v7;
    v3[3] = v9;
  }

  result = 0;
  *(a1 + 88) = *(v6 + 16);
  return result;
}

uint64_t sub_100150A78(uint64_t a1, int a2)
{
  v3 = *(a1 + 216);
  if (a2)
  {
    v4 = (v3 + 4);
LABEL_3:
    *(a1 + 216) = v4;
    return 1;
  }

  v7 = v3[1];
  v6 = v3[2];
  v8 = *(v6 + 8);
  *(a1 + 88) = v8;
  v9 = v3[3];
  *(a1 + 40) = v9;
  v10 = *(a1 + 32);
  if (v10 != v9)
  {
    v11 = v7 + 1;
    while (1)
    {
      v7 = v11;
      v12 = sub_10014F338(v9, v10, v8, **(a1 + 72), *(a1 + 120));
      v13 = *(a1 + 40);
      if (v13 == v12)
      {
        break;
      }

      v9 = v13 + 1;
      *(a1 + 40) = v13 + 1;
      ++*(a1 + 104);
      *(a1 + 88) = *(v6 + 8);
      if (v7 < *(v6 + 296))
      {
        v10 = *(a1 + 32);
        if (v9 != v10)
        {
          v11 = v7 + 1;
          if ((*(v6 + 24 + *v9) & 2) == 0)
          {
            continue;
          }
        }
      }

      goto LABEL_11;
    }

    v4 = *(a1 + 216) + 32;
    goto LABEL_3;
  }

LABEL_11:
  if (*(v6 + 308) == 1 && v7 < *(v6 + 296))
  {
    *(a1 + 48) = v9;
  }

  if (v9 == *(a1 + 32))
  {
    *(a1 + 216) += 32;
    if ((*(a1 + 97) & 0x20) != 0 && v9 != *(a1 + 56))
    {
      *(a1 + 121) = 1;
    }

    if ((*(v6 + 280) & 2) == 0)
    {
      return 1;
    }
  }

  else if (v7 == *(v6 + 296))
  {
    *(a1 + 216) += 32;
    if ((*(v6 + *v9 + 24) & 2) == 0)
    {
      return 1;
    }
  }

  else
  {
    v3[1] = v7;
    v3[3] = v9;
  }

  result = 0;
  *(a1 + 88) = *(v6 + 16);
  return result;
}

uint64_t sub_100150BF8(void *a1, uint64_t a2)
{
  v2 = a1[27];
  if ((a2 & 1) == 0)
  {
    a1[5] = *(v2 + 16);
    a1[11] = *(v2 + 8);
    ++*(a1[16] + 24);
  }

  a1[27] = v2 + 24;
  return a2;
}

uint64_t sub_100150C30(uint64_t *a1, char a2)
{
  v3 = a1[27];
  if ((a2 & 1) == 0)
  {
    v9 = 0;
    v10 = 0;
    v8 = 0u;
    v6 = 0u;
    memset(v7, 0, sizeof(v7));
    BYTE12(v8) = 1;
    sub_10014FBF4(a1 + 23, &v6);
    sub_10014C2F8(v7);
    v4 = a1[24];
    *(v4 - 112) = *(v3 + 8);
    *(v4 - 104) = *(v3 + 16);
    sub_1001489D4(v4 - 96, v3 + 104);
    *(a1[24] - 8) = a1[5];
    sub_1001489D4(a1[2], v3 + 24);
  }

  sub_10014C2F8(v3 + 104);
  sub_10014C2F8(v3 + 24);
  a1[27] = v3 + 184;
  return 1;
}

uint64_t sub_100150D04(uint64_t *a1, char a2)
{
  v3 = a1[27];
  if ((a2 & 1) == 0)
  {
    v4 = a1[24];
    if (a1[23] != v4)
    {
      sub_1001489D4(a1[2], v4 - 96);
      v5 = a1[24];
      v6 = v5 - 112;
      a1[5] = *(v5 - 8);
      sub_10014C2F8(v5 - 96);
      a1[24] = v6;
    }
  }

  a1[27] = v3 + 8;
  return 1;
}

uint64_t sub_100150D74(uint64_t a1, char a2)
{
  *(a1 + 216) += 8;
  while (1)
  {
    *(a1 + 228) = a2;
    *(a1 + 229) = 0;
      ;
    }

    if (!*(a1 + 88))
    {
      break;
    }

    if (*(a1 + 229) == 1)
    {
      *(a1 + 229) = 0;
      v4 = (*(a1 + 216) - 8);
      if (v4 < *(a1 + 208))
      {
        sub_1001488AC(a1);
        v4 = (*(a1 + 216) - 8);
      }

      *v4 = 16;
      *(a1 + 216) = v4;
      break;
    }
  }

  *(a1 + 123) = 0;
  return 0;
}

uint64_t sub_100150E2C(uint64_t a1, char a2)
{
  *(a1 + 216) += 8;
  *(a1 + 228) = a2;
  *(a1 + 229) = 0;
    ;
  }

  while (*(a1 + 88))
  {
    v4 = *(a1 + 230);
    *(a1 + 228) = a2;
    *(a1 + 229) = 0;
    if (v4)
    {
        ;
      }

      return 0;
    }

      ;
    }
  }

  return 0;
}

uint64_t sub_100150F00(uint64_t a1)
{
  v1 = *(a1 + 216);
  *(a1 + 120) = *(v1 + 8);
  *(a1 + 216) = v1 + 16;
  return 1;
}

void sub_100150F1C(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  v2 = a2[1];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_100150F80(a1);
}

void sub_100150F68(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_100008350(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100150F80(void *a1)
{
  if (*a1)
  {
    operator new();
  }

  operator new();
}

void sub_100151124(uint64_t a1, const void *a2, uint64_t a3, unsigned int a4)
{
  sub_1001538C4(v7, a1);
  v10 = 0u;
  memset(v11, 0, sizeof(v11));
  v12 = 0xFFFFFFFFLL;
  v16 = 0;
  v17 = 0;
  v19 = 0;
  v20 = 0;
  __p = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  sub_100153670(v7, a2, a3, a4);
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }
}

void sub_1001511D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10015E4A8(va);
  _Unwind_Resume(a1);
}

void sub_1001511E4(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void *sub_1001512DC(void *a1)
{
  std::locale::locale(&v3);
  sub_1001513F4(&v4, &v3);
  sub_100151360(&v4, a1);
  std::locale::~locale(&v4);
  std::locale::~locale(&v3);
  return a1;
}

void sub_10015133C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, std::locale a11)
{
  std::locale::~locale(&a11);
  std::locale::~locale(&a10);
  _Unwind_Resume(a1);
}

void sub_100151360(void *a1@<X0>, void *a2@<X8>)
{
  if ((atomic_load_explicit(&qword_1002D5608, memory_order_acquire) & 1) == 0)
  {
    sub_10020BFE0();
  }

  std::mutex::lock(&stru_1002D55C8);
  sub_100151508(a1, a2);

  std::mutex::unlock(&stru_1002D55C8);
}

std::locale *sub_1001513F4(std::locale *a1, const std::locale *a2)
{
  v4 = std::locale::locale(a1);
  sub_100151450(v4, a2, &v6);
  std::locale::~locale(&v6);
  return a1;
}

std::locale::__imp *sub_100151450@<X0>(std::locale *a1@<X0>, const std::locale *a2@<X1>, std::locale *a3@<X8>)
{
  std::locale::locale(a3, a1);
  std::locale::operator=(a1, a2);
  a1[1].__locale_ = std::locale::use_facet(a2, &std::ctype<char>::id);
  if (std::locale::has_facet(a2, &std::messages<char>::id))
  {
    v5 = std::locale::use_facet(a2, &std::messages<char>::id);
  }

  else
  {
    v5 = 0;
  }

  a1[2].__locale_ = v5;
  result = std::locale::use_facet(a2, &std::collate<char>::id);
  a1[3].__locale_ = result;
  return result;
}

void sub_100151508(void *a1@<X0>, void *a2@<X8>)
{
  if ((atomic_load_explicit(&qword_1002D5640, memory_order_acquire) & 1) == 0)
  {
    sub_10020C038();
  }

  v4 = sub_100151900(&unk_1002D5628, a1);
  if (v4 == &qword_1002D5630)
  {
    operator new();
  }

  v5 = off_1002D5610;
  v6 = v4[8];
  if (off_1002D5610 != v6)
  {
    v7 = &v16;
    v16.__locale_ = &v16;
    v17 = &v16;
    if (&v16 == v6 || (v8 = v6[1].__locale_, v8 == &v16))
    {
      v11 = -1;
    }

    else
    {
      locale = v6->__locale_;
      *(locale + 1) = v8;
      v8->__locale_ = locale;
      v10 = v16.__locale_;
      *(v16.__locale_ + 1) = v6;
      v6->__locale_ = v10;
      v6[1].__locale_ = &v16;
      --qword_1002D5620;
      v16.__locale_ = v6;
      *(&v17 + 1) = 1;
      v7 = v17;
      if (v17 == &off_1002D5610)
      {
LABEL_13:
        v4[8] = off_1002D5610;
        sub_1001519BC(&v16);
        v5 = off_1002D5610;
        goto LABEL_14;
      }

      v11 = 0;
    }

    v12 = v7[1].__locale_;
    if (v12 != &off_1002D5610)
    {
      v13 = v7->__locale_;
      *(v13 + 1) = v12;
      *v12 = v13;
      v14 = off_1002D5610;
      *(off_1002D5610 + 1) = v7;
      v7->__locale_ = v14;
      v7[1].__locale_ = &off_1002D5610;
      off_1002D5610 = v7;
      *(&v17 + 1) = v11;
      ++qword_1002D5620;
    }

    goto LABEL_13;
  }

LABEL_14:
  *a2 = v5[2];
  v15 = v5[3];
  a2[1] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1001517C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  v12 = *(v10 + 8);
  if (v12)
  {
    sub_100008350(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10015181C(uint64_t a1)
{
  sub_1001518A4(a1 + 24, *(a1 + 32));
  sub_1001519BC(a1);
  return a1;
}

void *sub_100151854(uint64_t a1, uint64_t *__p)
{
  v3 = *__p;
  v4 = __p[1];
  *(v3 + 8) = v4;
  *v4 = v3;
  --*(a1 + 16);
  v5 = __p[3];
  if (v5)
  {
    sub_100008350(v5);
  }

  operator delete(__p);
  return v4;
}

void sub_1001518A4(uint64_t a1, std::locale *a2)
{
  if (a2)
  {
    sub_1001518A4(a1, a2->__locale_);
    sub_1001518A4(a1, a2[1].__locale_);
    std::locale::~locale(a2 + 4);

    operator delete(a2);
  }
}

void *sub_100151900(uint64_t a1, void *a2)
{
  v3 = (a1 + 8);
  result = sub_10015196C(a1, a2, *(a1 + 8), (a1 + 8));
  if (v3 == result)
  {
    return v3;
  }

  v5 = a2[1];
  v6 = result[5];
  v7 = v5 >= v6;
  if (v5 == v6)
  {
    v8 = a2[2];
    v9 = result[6];
    v7 = v8 >= v9;
    if (v8 == v9)
    {
      v7 = a2[3] >= result[7];
    }
  }

  if (!v7)
  {
    return v3;
  }

  return result;
}

void *sub_10015196C(uint64_t a1, void *a2, void *a3, void *a4)
{
  result = a4;
  if (a3)
  {
    v5 = a2[1];
    v6 = a2[2];
    do
    {
      v7 = a3[5];
      v8 = v7 >= v5;
      if (v7 == v5)
      {
        v9 = a3[6];
        v8 = v9 >= v6;
        if (v9 == v6)
        {
          v8 = a3[7] >= a2[3];
        }
      }

      v10 = !v8;
      v11 = v10 == 0;
      if (v10)
      {
        v12 = 1;
      }

      else
      {
        v12 = 0;
      }

      if (v11)
      {
        result = a3;
      }

      a3 = a3[v12];
    }

    while (a3);
  }

  return result;
}

void sub_1001519BC(uint64_t *a1)
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
        v5 = v2[1];
        v6 = v2[3];
        if (v6)
        {
          sub_100008350(v6);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

std::locale *sub_100151A34(std::locale *a1, uint64_t a2)
{
  v3 = sub_100151AB8(a1, a2);
  v3[36].__locale_ = &v3[37];
  v3[37].__locale_ = 0;
  v3[40].__locale_ = 0;
  v3[41].__locale_ = 0;
  v3[38].__locale_ = 0;
  v3[39].__locale_ = &v3[40];
  v3[43].__locale_ = 0;
  v3[44].__locale_ = 0;
  v3[42].__locale_ = &v3[43];
  sub_100151B0C(v3);
  return a1;
}

void sub_100151A80(_Unwind_Exception *a1)
{
  sub_100013464(v1 + 336, *(v1 + 344));
  sub_1000134C0(v1 + 312, *(v1 + 320));
  sub_100067D18(v1 + 288, *(v1 + 296));
  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

std::locale *sub_100151AB8(std::locale *a1, uint64_t a2)
{
  v4 = std::locale::locale(a1, a2);
  v5 = *(a2 + 8);
  v4[3].__locale_ = *(a2 + 24);
  *&v4[1].__locale_ = v5;
  sub_100151F14(v4);
  return a1;
}

void sub_100151B0C(uint64_t a1)
{
  sub_100152268(v25);
  v2 = v26;
  if ((v26 & 0x80u) != 0)
  {
    v2 = v25[1];
  }

  if (v2)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      if (((*(*v3 + 24))(v3, v25, a1) & 0x80000000) != 0)
      {
        sub_100007ECC(&v24, "Unable to open message catalog: ");
        sub_10000F2A8(&v24.__r_.__value_.__l.__data_, v25, &__p);
        std::runtime_error::runtime_error(&__str, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        sub_100152358(&__str);
      }

      for (i = 0; i != 22; ++i)
      {
        v5 = off_1002B4380[i];
        memset(&v24, 0, sizeof(v24));
        v6 = *v5;
        if (*v5)
        {
          v7 = (v5 + 1);
          do
          {
            v8 = (*(**(a1 + 8) + 56))(*(a1 + 8), v6);
            std::string::append(&v24, 1uLL, v8);
            v9 = *v7++;
            v6 = v9;
          }

          while (v9);
        }

        (*(**(a1 + 16) + 32))(&__p);
        memset(&__str, 0, sizeof(__str));
        size = __p.__r_.__value_.__l.__size_;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        if (size)
        {
          v11 = 0;
          v12 = SHIBYTE(__p.__r_.__value_.__r.__words[2]) >> 63;
          do
          {
            if (v12)
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            else
            {
              p_p = &__p;
            }

            v14 = (*(**(a1 + 8) + 72))(*(a1 + 8), p_p->__r_.__value_.__s.__data_[v11], 0);
            std::string::append(&__str, 1uLL, v14);
            ++v11;
            v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
            v12 = SHIBYTE(__p.__r_.__value_.__r.__words[2]) >> 63;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v15 = __p.__r_.__value_.__l.__size_;
            }
          }

          while (v11 < v15);
        }

        v21 = i;
        v27 = &v21;
        v16 = sub_100152DC8(a1 + 288, &v21);
        std::string::operator=((v16 + 5), &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v24.__r_.__value_.__l.__data_);
        }
      }

      if ((atomic_load_explicit(&qword_1002D56C8, memory_order_acquire) & 1) == 0)
      {
        sub_10020C0B4();
      }

      for (j = 0; j != 14; ++j)
      {
        (*(**(a1 + 16) + 32))(&v24);
        v18 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
        v19 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
        if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v18 = v24.__r_.__value_.__l.__size_;
        }

        if (v18)
        {
          v20 = dword_100248C94[j];
          __p.__r_.__value_.__r.__words[0] = &v24;
          *(sub_100152EA0(a1 + 312, &v24.__r_.__value_.__l.__data_) + 56) = v20;
          v19 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
        }

        if (v19 < 0)
        {
          operator delete(v24.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  *(a1 + 360) = sub_100152A64(a1, (a1 + 364));
  if (v26 < 0)
  {
    operator delete(v25[0]);
  }
}

void sub_100151E88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::runtime_error a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  std::runtime_error::~runtime_error(&a11);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(a1);
}

void sub_100151F14(uint64_t a1)
{
  *(a1 + 32) = 0u;
  v2 = a1 + 32;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
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
  *(a1 + 48) = 0u;
  sub_100152268(v27);
  v3 = v28;
  if ((v28 & 0x80u) != 0)
  {
    v3 = v27[1];
  }

  if (v3 && (v4 = *(a1 + 16)) != 0)
  {
    v5 = (*(*v4 + 24))(v4, v27, a1);
    if ((v5 & 0x80000000) != 0)
    {
      sub_100007ECC(v25, "Unable to open message catalog: ");
      sub_10000F2A8(v25, v27, &__p);
      std::runtime_error::runtime_error(&v24, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      sub_100152358(&v24);
    }

    for (i = 1; i != 60; ++i)
    {
      v7 = *(a1 + 16);
      sub_100007ECC(&__p, *(&off_1002B4B98 + i));
      (*(*v7 + 32))(v25, v7, v5, 0, i, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v8 = 0;
      v9 = v26;
      v10 = v25[0];
      v11 = v25[1];
      if ((v26 & 0x80) != 0)
      {
        while (1)
        {
          v12 = v10;
          if (v8 >= v11)
          {
            break;
          }

LABEL_13:
          *(v2 + *(v12 + v8++)) = i;
          if ((v9 & 0x80) == 0)
          {
            goto LABEL_10;
          }
        }

        operator delete(v10);
      }

      else
      {
LABEL_10:
        if (v8 < v9)
        {
          v12 = v25;
          goto LABEL_13;
        }
      }
    }

    (*(**(a1 + 16) + 40))(*(a1 + 16), v5);
  }

  else
  {
    for (j = 1; j != 60; ++j)
    {
      v14 = *(&off_1002B4B98 + j);
      v15 = *v14;
      if (*v14)
      {
        v16 = v14 + 1;
        do
        {
          *(v2 + v15) = j;
          v17 = *v16++;
          v15 = v17;
        }

        while (v17);
      }
    }
  }

  v18 = 0;
  v19 = a1 + 97;
  do
  {
    if (*(v19 + v18))
    {
      v20 = 0;
    }

    else
    {
      v20 = ((v18 + 65) & 0x80) == 0;
    }

    if (v20)
    {
      v21 = *(*(*(a1 + 8) + 16) + 4 * v18 + 260);
      if ((v21 & 0x1000) != 0)
      {
        v22 = 22;
      }

      else
      {
        if ((v21 & 0x8000) == 0)
        {
          goto LABEL_34;
        }

        v22 = 23;
      }

      *(v19 + v18) = v22;
    }

LABEL_34:
    ++v18;
  }

  while (v18 != 191);
  if (v28 < 0)
  {
    operator delete(v27[0]);
  }
}

void sub_100152268(uint64_t a1@<X8>)
{
  v2 = sub_1001522E8();
  std::mutex::lock(v2);
  v3 = sub_100152320();
  if (*(v3 + 23) < 0)
  {
    sub_10000FFF8(a1, *v3, v3[1]);
  }

  else
  {
    v4 = *v3;
    *(a1 + 16) = v3[2];
    *a1 = v4;
  }

  std::mutex::unlock(v2);
}

void *sub_1001522E8()
{
  if ((atomic_load_explicit(&qword_1002D5688, memory_order_acquire) & 1) == 0)
  {
    sub_10020C100();
  }

  return &unk_1002D5648;
}

uint64_t *sub_100152320()
{
  if ((atomic_load_explicit(&qword_1002D56A8, memory_order_acquire) & 1) == 0)
  {
    sub_10020C158();
  }

  return &qword_1002D5690;
}

void sub_100152358(const std::runtime_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_1001523B4(exception, a1);
}

uint64_t sub_1001523B4(uint64_t a1, const std::runtime_error *a2)
{
  *a1 = &off_1002B40B0;
  std::runtime_error::runtime_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &off_1002B4B30;
  *(a1 + 8) = off_1002B4B60;
  *(a1 + 24) = off_1002B4B88;
  return a1;
}

uint64_t sub_100152460(uint64_t a1)
{
  *(a1 + 24) = &off_1002B40E0;
  sub_100145840((a1 + 32));
  std::runtime_error::~runtime_error((a1 + 8));
  return a1;
}

void sub_100152668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100145840(&a9);
  sub_100145840(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void sub_1001526D4(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_100152944(exception, a1);
}

void sub_100152730(uint64_t a1)
{
  *(a1 + 24) = &off_1002B40E0;
  sub_100145840((a1 + 32));
  std::runtime_error::~runtime_error((a1 + 8));

  operator delete();
}

void sub_1001527A4(uint64_t a1)
{
  *(a1 + 16) = &off_1002B40E0;
  sub_100145840((a1 + 24));

  std::runtime_error::~runtime_error(a1);
}

void sub_100152800(uint64_t a1)
{
  *(a1 + 16) = &off_1002B40E0;
  sub_100145840((a1 + 24));
  std::runtime_error::~runtime_error(a1);

  operator delete();
}

void sub_100152878(void *a1)
{
  *a1 = &off_1002B40E0;
  v1 = (a1 - 2);
  sub_100145840(a1 + 1);

  std::runtime_error::~runtime_error(v1);
}

void sub_1001528D0(void *a1)
{
  *a1 = &off_1002B40E0;
  v1 = (a1 - 2);
  sub_100145840(a1 + 1);
  std::runtime_error::~runtime_error(v1);

  operator delete();
}

uint64_t sub_100152944(uint64_t a1, uint64_t a2)
{
  *a1 = &off_1002B40B0;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  v4 = *(a2 + 32);
  *(a1 + 24) = &off_1002B40E0;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &off_1002B4B30;
  *(a1 + 8) = off_1002B4B60;
  *(a1 + 24) = off_1002B4B88;
  return a1;
}

uint64_t sub_100152A64(uint64_t a1, _BYTE *a2)
{
  strcpy(__s, "a");
  sub_100149494(a1, &__s1);
  v4 = strlen(__s);
  v5 = v4;
  v6 = HIBYTE(__s1.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (v4 != __s1.__r_.__value_.__l.__size_)
    {
      goto LABEL_8;
    }

    if (v4 == -1)
    {
      sub_1000C3798();
    }

    p_s1 = __s1.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (v4 != SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
    {
      goto LABEL_8;
    }

    p_s1 = &__s1;
  }

  if (memcmp(p_s1, __s, v5))
  {
LABEL_8:
    v47 = 65;
    sub_100149494(a1, &v46);
    v45 = 59;
    sub_100149494(a1, &__p);
    size = HIBYTE(__s1.__r_.__value_.__r.__words[2]);
    if ((__s1.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __s1.__r_.__value_.__l.__size_;
    }

    if ((size & 0x80000000) != 0)
    {
LABEL_65:
      LOBYTE(v18) = 0;
      v16 = 3;
      goto LABEL_83;
    }

    v9 = 0;
    v10 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
    if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v10 = v46.__r_.__value_.__r.__words[1];
    }

    v11 = v46.__r_.__value_.__r.__words[0];
    if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v46;
    }

    if (v10 < 0)
    {
      v12 = -1;
    }

    else
    {
      v12 = v10;
    }

    if ((__s1.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &__s1;
    }

    else
    {
      v13 = __s1.__r_.__value_.__r.__words[0];
    }

    v14 = (size + 1);
    v15 = (v12 + 1);
    while (v15 != v9)
    {
      if (v13->__r_.__value_.__s.__data_[v9] != v11->__r_.__value_.__s.__data_[v9])
      {
        LODWORD(v15) = v9;
        break;
      }

      if (v14 == ++v9)
      {
        goto LABEL_30;
      }
    }

    LODWORD(v14) = v15;
    if (!v15)
    {
      goto LABEL_65;
    }

LABEL_30:
    if ((__s1.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &__s1;
    }

    else
    {
      v17 = __s1.__r_.__value_.__r.__words[0];
    }

    if (v14 == 1)
    {
      v24 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
      v26 = v46.__r_.__value_.__l.__size_;
      v25 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v18 = v17->__r_.__value_.__s.__data_[(v14 - 1)];
      v19 = 0;
      if (size)
      {
        v20 = 1;
        v21 = v17;
        do
        {
          v22 = v21->__r_.__value_.__s.__data_[0];
          v21 = (v21 + 1);
          if (v22 == v18)
          {
            ++v19;
          }

          v23 = size > v20++;
        }

        while (v23);
      }

      v24 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
      v25 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
      v26 = v46.__r_.__value_.__l.__size_;
      v27 = 0;
      if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v28 = v46.__r_.__value_.__l.__size_;
      }

      if (v28)
      {
        v29 = v46.__r_.__value_.__r.__words[0];
        if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v29 = &v46;
        }

        v30 = 1;
        do
        {
          v31 = v29->__r_.__value_.__s.__data_[0];
          v29 = (v29 + 1);
          if (v31 == v18)
          {
            ++v27;
          }

          v23 = v28 > v30++;
        }

        while (v23);
      }

      if (v19 == v27)
      {
        v32 = 0;
        if (size)
        {
          v33 = 1;
          do
          {
            v34 = v17->__r_.__value_.__s.__data_[0];
            v17 = (v17 + 1);
            if (v34 == v18)
            {
              ++v32;
            }

            v23 = size > v33++;
          }

          while (v23);
        }

        v35 = __p.__r_.__value_.__l.__size_;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v35 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        if (v35)
        {
          v36 = 0;
          p_p = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          v38 = 1;
          do
          {
            v39 = p_p->__r_.__value_.__s.__data_[0];
            p_p = (p_p + 1);
            if (v39 == v18)
            {
              ++v36;
            }

            v23 = v35 > v38++;
          }

          while (v23);
        }

        else
        {
          v36 = 0;
        }

        if (v32 == v36)
        {
          v16 = 2;
          goto LABEL_83;
        }
      }
    }

    if (v25 >= 0)
    {
      v40 = v24;
    }

    else
    {
      v40 = v26;
    }

    v16 = 3;
    if (size == v40)
    {
      v41 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v41 = __p.__r_.__value_.__l.__size_;
      }

      v42 = size == v41;
      if (size == v41)
      {
        LOBYTE(v18) = v14;
      }

      else
      {
        LOBYTE(v18) = 0;
      }

      if (v42)
      {
        v16 = 1;
      }

      else
      {
        v16 = 3;
      }
    }

    else
    {
      LOBYTE(v18) = 0;
    }

LABEL_83:
    *a2 = v18;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    if ((*(&__s1.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      goto LABEL_88;
    }

    return v16;
  }

  v16 = 0;
  *a2 = 0;
  if (v6 < 0)
  {
LABEL_88:
    operator delete(__s1.__r_.__value_.__l.__data_);
  }

  return v16;
}

void sub_100152D94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100152DC8(uint64_t a1, int *a2)
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
      v5 = *(v2 + 32);
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

uint64_t sub_100152EA0(uint64_t a1, const void **a2)
{
  result = *sub_10000FEF0(a1, &v3, a2);
  if (!result)
  {
    sub_100152F38();
  }

  return result;
}

void sub_100152FD4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000237E0(v3, v2);
  _Unwind_Resume(a1);
}

void sub_100153060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_100153104(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100153084(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1001530C4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100153104(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100013464(a2 + 336, *(a2 + 344));
    sub_1000134C0(a2 + 312, *(a2 + 320));
    sub_100067D18(a2 + 288, *(a2 + 296));
    std::locale::~locale(a2);

    operator delete();
  }
}

uint64_t sub_100153178(uint64_t a1, void *a2)
{
  v2 = *sub_10015323C(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_10015323C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = a3[1];
    v7 = a3[2];
    v8 = a3[3];
    while (1)
    {
      while (1)
      {
        v9 = v4;
        v10 = v4[5];
        if (v6 != v10)
        {
          break;
        }

        v11 = v9[6];
        if (v7 == v11)
        {
          v12 = v9[7];
          if (v8 >= v12)
          {
            if (v12 >= v8)
            {
              goto LABEL_18;
            }

            goto LABEL_15;
          }
        }

        else if (v7 >= v11)
        {
          if (v11 >= v7)
          {
            goto LABEL_18;
          }

          goto LABEL_15;
        }

LABEL_12:
        v4 = *v9;
        result = v9;
        if (!*v9)
        {
          goto LABEL_18;
        }
      }

      if (v6 < v10)
      {
        goto LABEL_12;
      }

      if (v10 >= v6)
      {
        goto LABEL_18;
      }

LABEL_15:
      result = v9 + 1;
      v4 = v9[1];
      if (!v4)
      {
        goto LABEL_18;
      }
    }
  }

  v9 = result;
LABEL_18:
  *a2 = v9;
  return result;
}

uint64_t sub_1001532C8(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::locale::~locale(v2 + 4);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_100153314(uint64_t **a1, void *a2)
{
  v3 = sub_100151900(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_10001756C(a1, v3);
  std::locale::~locale(v4 + 4);
  operator delete(v4);
  return 1;
}

void sub_1001533E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_100153484(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100153404(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100153444(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100153484(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8);
    if (v2)
    {
      sub_100008350(v2);
    }

    operator delete();
  }
}

void sub_10015354C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_1001535F0(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100153570(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1001535B0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1001535F0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 376);
    if (v3)
    {
      *(a2 + 384) = v3;
      operator delete(v3);
    }

    operator delete(*(a2 + 352));
    v4 = *(a2 + 32);
    if (v4)
    {
      sub_100008350(v4);
    }

    v5 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v5;
      operator delete(v5);
    }

    operator delete();
  }
}

void sub_100153670(uint64_t a1, const void *a2, uint64_t a3, unsigned int a4)
{
  *(*a1 + 40) = a4;
  v8 = (a4 >> 20) & 1;
  *(a1 + 24) = (a4 & 0x100000) != 0;
  *(a1 + 128) = a3;
  *(a1 + 136) = a2;
  *(a1 + 120) = a2;
  if (a2 == a3 && (a4 & 0x1000003) != 0)
  {

    sub_100154748(a1, 17, 0);
    return;
  }

  if ((a4 & 3) > 1)
  {
    if ((a4 & 3) != 2)
    {
      sub_100007ECC(__p, "An invalid combination of regular expression syntax flags was used.");
      sub_100154EBC(a1, 21, 0, __p);
      goto LABEL_23;
    }

    v10 = sub_100154E4C;
    goto LABEL_12;
  }

  if ((a4 & 3) != 0)
  {
    v10 = sub_100154C38;
LABEL_12:
    *(a1 + 104) = v10;
    *(a1 + 112) = 0;
    goto LABEL_13;
  }

  *(a1 + 104) = sub_1001547D4;
  *(a1 + 112) = 0;
  v9 = sub_100154BB4(a1, 0, 0x18uLL);
  v9[4] = 0;
  *(v9 + 20) = (*(*a1 + 40) & 0x100000) != 0;
LABEL_13:
  v11 = sub_100154F60(a1);
  sub_100155048(a1, -1);
  v12 = *a1;
  *(*a1 + 40) = a4;
  if (v8 != *(a1 + 24))
  {
    *(a1 + 24) = v8;
  }

  if (v11)
  {
    if (!*(v12 + 44))
    {
      v13 = *(a1 + 144);
      *(v12 + 64) = v13 + 1;
      if (*(a1 + 184) > v13)
      {
        v14 = *(a1 + 136) - *(a1 + 120);
        sub_100007ECC(__p, "Found a backreference to a non-existant sub-expression.");
        sub_100154EBC(a1, 6, v14, __p);
        if (v17 < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_1001551A4(a1, a2, a3);
    }

    return;
  }

  v15 = *(a1 + 136) - *(a1 + 120);
  sub_100007ECC(__p, "Found a closing) with no corresponding opening parenthesis.");
  sub_100154EBC(a1, 8, v15, __p);
LABEL_23:
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1001538A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001538C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  *a1 = a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 28) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 84) = 0u;
  *(a2 + 360) = *(a2 + 352);
  *(a2 + 44) = 0;
  *(a1 + 80) = sub_1001539DC(*v3, "wslowerupperalpha", "slowerupperalpha");
  *(a1 + 84) = sub_1001539DC(**(a1 + 8), "slowerupperalpha", "lowerupperalpha");
  *(a1 + 88) = sub_1001539DC(**(a1 + 8), "lowerupperalpha", "upperalpha");
  *(a1 + 92) = sub_1001539DC(**(a1 + 8), "upperalpha", "alpha");
  *(a1 + 96) = sub_1001539DC(**(a1 + 8), "alpha", "");
  *(*a1 + 368) = *(a1 + 80);
  return a1;
}

void sub_1001539BC(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 64) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001539DC(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v6 = sub_100153AD8(a1, a2, a3);
  if (!v6)
  {
    sub_10005D6A0(&__p, a2, a3, a3 - a2);
    v7 = v14;
    if ((v14 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v14 & 0x80u) != 0)
    {
      v7 = v13;
    }

    (*(**(a1 + 8) + 48))(*(a1 + 8), p_p, &p_p[v7]);
    v9 = v14;
    if ((v14 & 0x80u) == 0)
    {
      v10 = &__p;
    }

    else
    {
      v10 = __p;
    }

    if ((v14 & 0x80u) != 0)
    {
      v9 = v13;
    }

    v6 = sub_100153AD8(a1, v10, &v10[v9]);
    if (v14 < 0)
    {
      operator delete(__p);
    }
  }

  return v6;
}

void sub_100153AB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100153AD8(uint64_t a1, _BYTE *__src, _BYTE *a3)
{
  if (!*(a1 + 328))
  {
    goto LABEL_6;
  }

  sub_10005D6A0(__p, __src, a3, a3 - __src);
  v6 = sub_10000F0D8(a1 + 312, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 320 == v6)
  {
LABEL_6:
    v7 = (&unk_100249210 + 4 * sub_100153B9C(__src, a3) + 4);
  }

  else
  {
    v7 = (v6 + 56);
  }

  return *v7;
}

void sub_100153B80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100153B9C(_BYTE *a1, _BYTE *a2)
{
  sub_100007ECC(&v68, "alnum");
  v70[0] = 0;
  __dst = v68;
  v74 = v69;
  v68 = 0uLL;
  v69 = 0;
  v75 = 0;
  sub_100007ECC(&v65, "alpha");
  v67 = 1;
  v76 = v65;
  v77 = v66;
  v65 = 0uLL;
  v66 = 0;
  v78 = 1;
  sub_100007ECC(&v62, "blank");
  v64 = 2;
  v79 = v62;
  v80 = v63;
  v62 = 0uLL;
  v63 = 0;
  v81 = 2;
  sub_100007ECC(&v59, "cntrl");
  v61 = 3;
  v82 = v59;
  v83 = v60;
  v59 = 0uLL;
  v60 = 0;
  v84 = 3;
  sub_100007ECC(&v56, "d");
  v58 = 4;
  v85 = v56;
  v86 = v57;
  v56 = 0uLL;
  v57 = 0;
  v87 = 4;
  sub_100007ECC(&v53, "digit");
  v55 = 5;
  v88 = v53;
  v89 = v54;
  v53 = 0uLL;
  v54 = 0;
  v90 = 5;
  sub_100007ECC(&v50, "graph");
  v52 = 6;
  v91 = v50;
  v92 = v51;
  v50 = 0uLL;
  v51 = 0;
  v93 = 6;
  sub_100007ECC(&v47, "h");
  v49 = 7;
  v94 = v47;
  v95 = v48;
  v47 = 0uLL;
  v48 = 0;
  v96 = 7;
  sub_100007ECC(&v44, "l");
  v46 = 8;
  v97 = v44;
  v98 = v45;
  v44 = 0uLL;
  v45 = 0;
  v99 = 8;
  sub_100007ECC(&v41, "lower");
  v43 = 9;
  v100 = v41;
  v101 = v42;
  v41 = 0uLL;
  v42 = 0;
  v102 = 9;
  sub_100007ECC(&v38, "print");
  v40 = 10;
  v103 = v38;
  v104 = v39;
  v38 = 0uLL;
  v39 = 0;
  v105 = 10;
  sub_100007ECC(&v35, "punct");
  v37 = 11;
  v106 = v35;
  v107 = v36;
  v35 = 0uLL;
  v36 = 0;
  v108 = 11;
  sub_100007ECC(&v32, "s");
  v34 = 12;
  v109 = v32;
  v110 = v33;
  v32 = 0uLL;
  v33 = 0;
  v111 = 12;
  sub_100007ECC(&v29, "space");
  v31 = 13;
  v112 = v29;
  v113 = v30;
  v29 = 0uLL;
  v30 = 0;
  v114 = 13;
  sub_100007ECC(&v26, "u");
  v28 = 14;
  v115 = v26;
  v116 = v27;
  v26 = 0uLL;
  v27 = 0;
  v117 = 14;
  sub_100007ECC(&v23, "unicode");
  v25 = 15;
  v118 = v23;
  v119 = v24;
  v23 = 0uLL;
  v24 = 0;
  v120 = 15;
  sub_100007ECC(&v20, "upper");
  v22 = 16;
  v121 = v20;
  v122 = v21;
  v20 = 0uLL;
  v21 = 0;
  v123 = 16;
  sub_100007ECC(v17, "v");
  v19 = 17;
  v124 = *v17;
  v125 = v18;
  v17[0] = 0;
  v17[1] = 0;
  v18 = 0;
  v126 = 17;
  sub_100007ECC(v14, "w");
  v16 = 18;
  v127 = *v14;
  v128 = v15;
  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  v129 = 18;
  sub_100007ECC(v11, "word");
  v13 = 19;
  v130 = *v11;
  v131 = v12;
  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  v132 = 19;
  sub_100007ECC(__p, "xdigit");
  v10 = 20;
  v133 = *__p;
  v134 = v9;
  __p[0] = 0;
  __p[1] = 0;
  v9 = 0;
  v135 = 20;
  sub_10015458C(&v71, &__dst, 21);
  v4 = 672;
  do
  {
    if (SHIBYTE(v72[v4 / 8]) < 0)
    {
      operator delete(*&v70[v4 / 4]);
    }

    v4 -= 32;
  }

  while (v4);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29);
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35);
  }

  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38);
  }

  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47);
  }

  if (SHIBYTE(v51) < 0)
  {
    operator delete(v50);
  }

  if (SHIBYTE(v54) < 0)
  {
    operator delete(v53);
  }

  if (SHIBYTE(v57) < 0)
  {
    operator delete(v56);
  }

  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59);
  }

  if (SHIBYTE(v63) < 0)
  {
    operator delete(v62);
  }

  if (SHIBYTE(v66) < 0)
  {
    operator delete(v65);
  }

  if (SHIBYTE(v69) < 0)
  {
    operator delete(v68);
  }

  sub_10005D6A0(&__dst, a1, a2, a2 - a1);
  v5 = sub_10000F0D8(&v71, &__dst);
  if (v72 == v5)
  {
    v6 = 0xFFFFFFFFLL;
  }

  else
  {
    v6 = *(v5 + 56);
  }

  if (SHIBYTE(v74) < 0)
  {
    operator delete(__dst);
  }

  sub_1000134C0(&v71, v72[0]);
  return v6;
}

void sub_1001542B4(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x2D7]) < 0)
  {
    operator delete(*v2);
  }

  sub_1000134C0(&STACK[0x2A8], *(v1 + 552));
  _Unwind_Resume(a1);
}

void *sub_10015458C(void *a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      sub_10015460C(a1, v4, a2);
      a2 += 4;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_10015460C(void *a1, uint64_t a2, const void **a3)
{
  result = *sub_1000135B8(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_100154690();
  }

  return result;
}

void sub_10015472C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000237E0(v3, v2);
  _Unwind_Resume(a1);
}

void sub_100154748(std::string *a1, int a2, uint64_t a3)
{
  sub_10014A214(**(a1->__r_.__value_.__r.__words[0] + 24), a2, __p);
  sub_100154EBC(a1, a2, a3, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1001547B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001547D4(std::string *a1)
{
  v2 = a1[5].__r_.__value_.__r.__words[2];
  v3 = 0;
  switch(*(*a1->__r_.__value_.__l.__size_ + *v2 + 32))
  {
    case 1:

      return sub_100155328(a1);
    case 2:
      return v3;
    case 3:
      a1[5].__r_.__value_.__r.__words[2] = (v2 + 1);
      v6 = (*(a1->__r_.__value_.__r.__words[0] + 40) & 0x400) == 0;
      v7 = 12;
      v8 = 4;
      goto LABEL_40;
    case 4:
      a1[5].__r_.__value_.__r.__words[2] = (v2 + 1);
      v6 = (*(a1->__r_.__value_.__r.__words[0] + 40) & 0x400) == 0;
      v7 = 11;
      v8 = 3;
LABEL_40:
      if (v6)
      {
        v17 = v8;
      }

      else
      {
        v17 = v7;
      }

      sub_100154BB4(a1, v17, 0x10uLL);
      return 1;
    case 5:
      a1[5].__r_.__value_.__r.__words[2] = (v2 + 1);
      v18 = *(a1->__r_.__value_.__r.__words[0] + 40);
      v3 = 1;
      if ((v18 & 0x1000) != 0)
      {
        v19 = 2;
      }

      else
      {
        v19 = 1;
      }

      if ((v18 & 0x2000) != 0)
      {
        v20 = 0;
      }

      else
      {
        v20 = v19;
      }

      *(sub_100154BB4(a1, 5, 0x18uLL) + 16) = v20;
      return v3;
    case 6:
      if (v2 != a1[5].__r_.__value_.__l.__data_)
      {
        a1[5].__r_.__value_.__r.__words[2] = (v2 + 1);
        v9 = 0;
        goto LABEL_26;
      }

      sub_100007ECC(__p, "The repeat operator * cannot start a regular expression.");
      sub_100154EBC(a1, 13, 0, __p);
      goto LABEL_58;
    case 7:
      if (v2 == a1[5].__r_.__value_.__l.__data_)
      {
        sub_100007ECC(__p, "The repeat operator + cannot start a regular expression.");
        sub_100154EBC(a1, 13, 0, __p);
        goto LABEL_58;
      }

      a1[5].__r_.__value_.__r.__words[2] = (v2 + 1);
      v9 = 1;
LABEL_26:
      v16 = -1;
      goto LABEL_29;
    case 8:
      if (v2 == a1[5].__r_.__value_.__l.__data_)
      {
        sub_100007ECC(__p, "The repeat operator ? cannot start a regular expression.");
        sub_100154EBC(a1, 13, 0, __p);
LABEL_58:
        if (v22 < 0)
        {
          operator delete(__p[0]);
        }

        return 0;
      }

      a1[5].__r_.__value_.__r.__words[2] = (v2 + 1);
      v9 = 0;
      v16 = 1;
LABEL_29:

      return sub_100155EAC(a1, v9, v16);
    case 9:

      return sub_100156AA4(a1);
    case 0xB:
      goto LABEL_36;
    case 0xC:

      return sub_1001555C0(a1);
    case 0xD:
      if ((*(a1->__r_.__value_.__r.__words[0] + 40) & 0xA00) != 0x800)
      {
        goto LABEL_33;
      }

      size = a1[5].__r_.__value_.__l.__size_;
      v3 = 1;
      break;
    case 0xF:
      a1[5].__r_.__value_.__r.__words[2] = (v2 + 1);

      return sub_100156308(a1, 0);
    case 0x10:
      if ((*(a1->__r_.__value_.__r.__words[0] + 41) & 2) == 0)
      {
        goto LABEL_33;
      }

      v5 = &v2[-a1[5].__r_.__value_.__r.__words[0]];
      sub_100007ECC(__p, "Found a closing repetition operator } with no corresponding {.");
      sub_100154EBC(a1, 9, v5, __p);
      goto LABEL_58;
    case 0x1A:
      if ((*(a1->__r_.__value_.__r.__words[0] + 42) & 2) == 0)
      {
        goto LABEL_33;
      }

LABEL_36:

      return sub_100156874(a1);
    default:
LABEL_33:

      return sub_100154E4C(a1);
  }

  while (v2 != size)
  {
    v11 = v2 + 1;
    a1[5].__r_.__value_.__r.__words[2] = (v2 + 1);
    v12 = *v2;
    v13 = v12 > 0xD;
    v14 = (1 << v12) & 0x3400;
    v15 = v13 || v14 == 0;
    v2 = v11;
    if (!v15)
    {
      return v3;
    }
  }

  return 1;
}

void sub_100154B8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_100154BB4(uint64_t *a1, int a2, unint64_t a3)
{
  if (a2 == 13)
  {
    *(a1 + 32) = 1;
  }

  v5 = *a1;
  v6 = *(*a1 + 352);
  v7 = (*(*a1 + 360) - v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(*a1 + 360) = v6 + v7;
  v8 = a1[2];
  if (v8)
  {
    *(v8 + 8) = v7 - v8 + v6;
    v5 = *a1;
  }

  v9 = sub_10015AFCC((v5 + 344), a3);
  a1[2] = v9;
  *(v9 + 8) = 0;
  result = a1[2];
  *result = a2;
  return result;
}

uint64_t sub_100154C38(uint64_t a1)
{
  v1 = *(a1 + 136);
  v2 = *(**(a1 + 8) + *v1 + 32);
  if (v2 <= 6)
  {
    if (*(**(a1 + 8) + *v1 + 32) > 4u)
    {
      if (v2 != 5)
      {
        v5 = *(a1 + 16);
        if (!v5 || *v5 == 3)
        {
          goto LABEL_44;
        }

        *(a1 + 136) = v1 + 1;
        v6 = 0;
        goto LABEL_39;
      }

      *(a1 + 136) = v1 + 1;
      v9 = *(*a1 + 40);
      if ((v9 & 0x1000) != 0)
      {
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }

      if ((v9 & 0x2000) != 0)
      {
        v11 = 0;
      }

      else
      {
        v11 = v10;
      }

      *(sub_100154BB4(a1, 5, 0x18uLL) + 16) = v11;
    }

    else
    {
      if (v2 == 3)
      {
        *(a1 + 136) = v1 + 1;
        v4 = 4;
      }

      else
      {
        if (v2 != 4)
        {
          goto LABEL_44;
        }

        *(a1 + 136) = v1 + 1;
        v4 = 3;
      }

      sub_100154BB4(a1, v4, 0x10uLL);
    }

    return 1;
  }

  if (*(**(a1 + 8) + *v1 + 32) <= 8u)
  {
    if (v2 != 7)
    {
      v7 = *(a1 + 16);
      if (!v7 || *v7 == 3 || (*(*a1 + 41) & 0x10) == 0)
      {
        goto LABEL_44;
      }

      *(a1 + 136) = v1 + 1;
      v6 = 0;
      v8 = 1;
      goto LABEL_40;
    }

    v12 = *(a1 + 16);
    if (!v12 || *v12 == 3 || (*(*a1 + 41) & 0x10) == 0)
    {
      goto LABEL_44;
    }

    *(a1 + 136) = v1 + 1;
    v6 = 1;
LABEL_39:
    v8 = -1;
LABEL_40:

    return sub_100155EAC(a1, v6, v8);
  }

  switch(v2)
  {
    case 9u:

      return sub_100156AA4(a1);
    case 0x1Au:
      if ((*(*a1 + 42) & 2) == 0)
      {
LABEL_44:

        return sub_100154E4C(a1);
      }

      return sub_100156874(a1);
    case 0xCu:

      return sub_10015C0A0(a1);
    default:
      goto LABEL_44;
  }
}

uint64_t sub_100154E4C(uint64_t a1)
{
  if ((*(*a1 + 40) & 0xA03) != 0x800 || !sub_100146404(*(a1 + 8), **(a1 + 136), *(a1 + 84)))
  {
    sub_1001594E8(a1, **(a1 + 136));
  }

  ++*(a1 + 136);
  return 1;
}

void sub_100154EBC(std::string *a1, int a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 23) < 0)
  {
    sub_10000FFF8(&__p, *a4, *(a4 + 8));
  }

  else
  {
    __p = *a4;
  }

  sub_10015CB18(a1, a2, a3, &__p, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_100154F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100154F60(uint64_t a1)
{
  v2 = *(a1 + 180) + 1;
  *(a1 + 180) = v2;
  if (v2 >= 0x191)
  {
    v3 = *(a1 + 136) - *(a1 + 120);
    sub_100007ECC(__p, "Exceeded nested brace limit.");
    sub_100154EBC(a1, 18, v3, __p);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  do
  {
    v5 = *(a1 + 128);
    v4 = *(a1 + 136);
    if (v4 == v5)
    {
      break;
    }

    v6 = *(a1 + 104);
    v7 = *(a1 + 112);
    v8 = (a1 + (v7 >> 1));
    if (v7)
    {
      v6 = *(*v8 + v6);
    }
  }

  while ((v6(v8) & 1) != 0);
  result = v4 == v5;
  --*(a1 + 180);
  return result;
}

void sub_10015502C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100155048(std::string *a1, uint64_t a2)
{
  data = a1[8].__r_.__value_.__l.__data_;
  size = a1[8].__r_.__value_.__l.__size_;
  v5 = a1[7].__r_.__value_.__r.__words[0] != *(a1->__r_.__value_.__r.__words[0] + 360) - *(a1->__r_.__value_.__r.__words[0] + 352) || data == size;
  if (v5 || *(size - 8) <= a2 || (*(a1->__r_.__value_.__r.__words[0] + 40) & 0x1000003) == 0)
  {
    while (1)
    {
      if (data == size)
      {
        return 1;
      }

      v9 = *(size - 8);
      v7 = size - 8;
      v8 = v9;
      if (v9 <= a2)
      {
        return 1;
      }

      a1[8].__r_.__value_.__l.__size_ = v7;
      v10 = *(a1->__r_.__value_.__r.__words[0] + 352);
      v11 = (*(a1->__r_.__value_.__r.__words[0] + 360) - v10 + 7) & 0xFFFFFFFFFFFFFFF8;
      *(a1->__r_.__value_.__r.__words[0] + 360) = v10 + v11;
      if (*(v10 + v8) != 16)
      {
        break;
      }

      *(v10 + v8 + 16) = v11 - v8;
      data = a1[8].__r_.__value_.__l.__data_;
      size = a1[8].__r_.__value_.__l.__size_;
    }

    v13 = a1[5].__r_.__value_.__r.__words[2] - a1[5].__r_.__value_.__r.__words[0];
    sub_100007ECC(__p, "Internal logic failed while compiling the expression, probably you added a repeat to something non-repeatable!");
    sub_100154EBC(a1, 21, v13, __p);
  }

  else
  {
    v6 = a1[5].__r_.__value_.__r.__words[2] - a1[5].__r_.__value_.__r.__words[0];
    sub_100007ECC(__p, "Can't terminate a sub-expression with an alternation operator |.");
    sub_100154EBC(a1, 17, v6, __p);
  }

  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_100155184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1001551A4(uint64_t *result, const void *a2, uint64_t a3)
{
  if (!*(*result + 44))
  {
    v5 = result;
    sub_100154BB4(result, 6, 0x10uLL);
    v6 = *v5;
    *(v6 + 56) = a3 - a2;
    v7 = sub_10015AFCC((v6 + 344), a3 - a2 + 1);
    v8 = v7;
    *(*v5 + 48) = v7;
    v9 = a3 - a2;
    if (v9)
    {
      memmove(v7, a2, v9);
    }

    v8[v9] = 0;
    v10 = *v5;
    *(v10 + 44) = 0;
    v11 = *(v10 + 352);
    *(v10 + 72) = v11;
    sub_10015CD0C(v5, v11);
    v12 = *v5;
    if (*(v5 + 48) == 1)
    {
      *(v12 + 400) = 1;
      result = sub_10015CDC8(v5, *(v12 + 72));
      v12 = *v5;
      if (*(*v5 + 44))
      {
        return result;
      }
    }

    else
    {
      *(v12 + 400) = 0;
    }

    sub_10015D00C(v5, *(v12 + 72));
    v13 = *v5;
    *(v13 + 84) = 0u;
    v13 = (v13 + 84);
    v13[14] = 0u;
    v13[15] = 0u;
    v13[12] = 0u;
    v13[13] = 0u;
    v13[10] = 0u;
    v13[11] = 0u;
    v13[8] = 0u;
    v13[9] = 0u;
    v13[6] = 0u;
    v13[7] = 0u;
    v13[4] = 0u;
    v13[5] = 0u;
    v13[2] = 0u;
    v13[3] = 0u;
    v13[1] = 0u;
    v14 = *v5;
    *(*v5 + 340) = 0;
    *(v5 + 40) = 0;
    if (*(v5 + 48) == 1)
    {
      v15 = *(v14 + 64);
      v18 = 0;
      sub_10015D310((v5 + 56), v15 + 1, &v18);
      v14 = *v5;
    }

    sub_10015D400(v5, *(v14 + 72), (v14 + 84), (v14 + 340), 3);
    v16 = sub_10015DCD4(v5, *(*v5 + 72));
    v17 = *v5;
    *(v17 + 80) = v16;
    return sub_10015DD3C(v5, *(v17 + 72));
  }

  return result;
}

uint64_t sub_100155328(uint64_t a1)
{
  v2 = *(a1 + 128);
  v3 = (*(a1 + 136) + 1);
  *(a1 + 136) = v3;
  if (v3 == v2)
  {
    goto LABEL_28;
  }

  v4 = *a1;
  v5 = *(*a1 + 40);
  if ((v5 & 0x203) != 0 && (*(*a1 + 40) & 0x1003) != 4097)
  {
LABEL_12:
    if ((v5 & 0x400000) != 0)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(a1 + 144) + 1;
      *(a1 + 144) = v9;
      if ((v5 & 0x800000) != 0)
      {
        v25 = &v3[~*(a1 + 120)];
        sub_10015891C(v4 + 376, &v25);
      }
    }

    v10 = sub_100154BB4(a1, 0, 0x18uLL);
    v10[4] = v9;
    v11 = *a1;
    v12 = *(*a1 + 40);
    *(v10 + 20) = (v12 & 0x100000) != 0;
    v13 = *(v11 + 352);
    v14 = v10 - v13;
    v15 = *(a1 + 168);
    v16 = (*(v11 + 360) - v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    *(v11 + 360) = v13 + v16;
    *(a1 + 168) = v16;
    v17 = *(a1 + 176);
    *(a1 + 176) = 0;
    v18 = *(a1 + 148);
    *(a1 + 148) = -1;
    sub_100154F60(a1);
    if (!sub_100155048(a1, v14))
    {
      return 0;
    }

    if (*(a1 + 176) == 1)
    {
      *(sub_100154BB4(a1, 28, 0x18uLL) + 16) = (v12 & 0x100000) != 0;
    }

    v19 = *a1;
    *(*a1 + 40) = v12;
    if (((v12 >> 20) & 1) != *(a1 + 24))
    {
      *(a1 + 24) = (v12 & 0x100000) != 0;
    }

    *(a1 + 176) = v17;
    *(a1 + 148) = v18;
    v3 = *(a1 + 136);
    if (v3 != *(a1 + 128))
    {
      if (*(**(a1 + 8) + *v3 + 32) == 2)
      {
        if (v9 && (v12 & 0x800000) != 0)
        {
          v20 = (v9 - 1);
          v22 = v19 + 376;
          v21 = *(v19 + 376);
          if (v20 >= (*(v22 + 8) - v21) >> 4)
          {
            sub_1000CCC1C();
          }

          *(v21 + 16 * v20 + 8) = &v3[-*(a1 + 120)];
        }

        *(a1 + 136) = v3 + 1;
        v23 = 1;
        v24 = sub_100154BB4(a1, 1, 0x18uLL);
        v24[4] = v9;
        *(v24 + 20) = (*(*a1 + 40) & 0x100000) != 0;
        *(a1 + 160) = v14;
        *(a1 + 168) = v15;
        return v23;
      }

      return 0;
    }

LABEL_28:
    sub_100154748(a1, 8, &v3[-*(a1 + 120)]);
    return 0;
  }

  v7 = *(**(a1 + 8) + *v3 + 32);
  if (v7 == 6)
  {

    return sub_100158398(a1);
  }

  else
  {
    if (v7 != 8)
    {
      goto LABEL_12;
    }

    return sub_100156D50(a1);
  }
}

uint64_t sub_1001555C0(uint64_t a1)
{
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  v4 = v3 + 1;
  *(a1 + 136) = v3 + 1;
  if (v3 + 1 == v2)
  {
    v11 = &v4[-*(a1 + 120)];
    sub_100007ECC(&__p, "Incomplete escape sequence found.");
    sub_100154EBC(a1, 5, v11, &__p);
LABEL_7:
    if (SHIBYTE(v55) < 0)
    {
      operator delete(__p);
    }

    return 0;
  }

  v5 = *(a1 + 8);
  v6 = *v5;
  v7 = *v5 + 32;
  v8 = 0;
  v9 = 0;
  switch(*(v7 + *v4))
  {
    case 0x11:

      return sub_100159C94(a1);
    case 0x12:
      *(a1 + 136) = v3 + 2;
      v15 = a1;
      v16 = 7;
      goto LABEL_36;
    case 0x13:
      *(a1 + 136) = v3 + 2;
      v15 = a1;
      v16 = 8;
      goto LABEL_36;
    case 0x14:
      *(a1 + 136) = v3 + 2;
      v15 = a1;
      v16 = 9;
      goto LABEL_36;
    case 0x15:
      *(a1 + 136) = v3 + 2;
      v15 = a1;
      v16 = 10;
      goto LABEL_36;
    case 0x16:
      goto LABEL_39;
    case 0x17:
      v8 = 1;
      goto LABEL_39;
    case 0x18:
      *(a1 + 136) = v3 + 2;
      v15 = a1;
      v16 = 11;
      goto LABEL_36;
    case 0x19:
      *(a1 + 136) = v3 + 2;
      v15 = a1;
      v16 = 12;
      goto LABEL_36;
    case 0x21:
      if ((*(*a1 + 40) & 0x203) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_44;
    case 0x30:

      return sub_100159DA0(a1);
    case 0x31:
      *(a1 + 136) = v3 + 2;
      v15 = a1;
      v16 = 19;
      goto LABEL_36;
    case 0x32:
      *(a1 + 136) = v3 + 2;
      v17 = *(*a1 + 40);
      v12 = 1;
      if ((v17 & 0x1000) != 0)
      {
        v18 = 2;
      }

      else
      {
        v18 = 1;
      }

      if ((v17 & 0x2000) != 0)
      {
        v19 = 0;
      }

      else
      {
        v19 = v18;
      }

      *(sub_100154BB4(a1, 5, 0x18uLL) + 16) = v19;
      return v12;
    case 0x33:
      *(a1 + 136) = v3 + 2;
      v15 = a1;
      v16 = 20;
      goto LABEL_36;
    case 0x34:
      *(a1 + 136) = v3 + 2;
      v15 = a1;
      v16 = 21;
LABEL_36:
      sub_100154BB4(v15, v16, 0x10uLL);
      return 1;
    case 0x36:
      goto LABEL_48;
    case 0x37:
      v9 = 1;
LABEL_48:
      v25 = v3 + 2;
      *(a1 + 136) = v3 + 2;
      if (v3 + 2 == v2)
      {
        v27 = &v2[-*(a1 + 120)];
        sub_100007ECC(&__p, "Incomplete property escape found.");
        sub_100154EBC(a1, 5, v27, &__p);
        goto LABEL_7;
      }

      if (*(v7 + *v25) == 15)
      {
        while (*(v7 + *v25) != 16)
        {
          *(a1 + 136) = ++v25;
          if (v25 == v2)
          {
            v26 = &v2[-*(a1 + 120)];
            sub_100007ECC(&__p, "Closing } missing from property escape sequence.");
            sub_100154EBC(a1, 5, v26, &__p);
            goto LABEL_7;
          }
        }

        *(a1 + 136) = v25 + 1;
        v28 = sub_1001539DC(v6, v3 + 3, v25);
      }

      else
      {
        v28 = sub_1001539DC(v6, v3 + 2, v3 + 3);
        ++*(a1 + 136);
      }

      if (!v28)
      {
        v38 = *(a1 + 136) - *(a1 + 120);
        sub_100007ECC(&__p, "Escape sequence was neither a valid property nor a valid character class name.");
        sub_100154EBC(a1, 4, v38, &__p);
        goto LABEL_7;
      }

      __p = &v54;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v64 = 0;
      v65 = 0;
      v63 = &v64;
      v59 = 0;
      v61 = 0;
      if (v9)
      {
        LOBYTE(v59) = 1;
      }

      v60 = v28;
      v62 = 0;
      v37 = sub_100159480(a1, &__p);
      v12 = v37 != 0;
      if (!v37)
      {
        sub_100154748(a1, 4, *(a1 + 136) - *(a1 + 120));
      }

      sub_10015949C(&__p);
      return v12;
    case 0x39:
      if ((*(*a1 + 40) & 0x203) != 0)
      {
        goto LABEL_38;
      }

      v29 = v3 + 2;
      *(a1 + 136) = v3 + 2;
      if (v3 + 2 == v2)
      {
        goto LABEL_98;
      }

      v30 = *v29;
      v31 = *(v7 + *v29);
      v32 = v31 == 20;
      if (v31 == 25)
      {
        v32 = 1;
      }

      v33 = v31 == 15 || v32;
      if (v31 > 0x19 || ((1 << v31) & 0x2108000) == 0)
      {
        v36 = 0;
      }

      else
      {
        v29 = v3 + 3;
        *(a1 + 136) = v3 + 3;
        if (v3 + 3 == v2)
        {
LABEL_98:
          v46 = &v2[-*(a1 + 120)];
          sub_100007ECC(&__p, "Incomplete \\g escape found.");
          sub_100154EBC(a1, 5, v46, &__p);
          goto LABEL_7;
        }

        if (v31 == 20)
        {
          v35 = 21;
        }

        else
        {
          v35 = 25;
        }

        if (v31 == 15)
        {
          v36 = 16;
        }

        else
        {
          v36 = v35;
        }

        v30 = *v29;
      }

      if (v30 == 45)
      {
        *(a1 + 136) = ++v29;
        if (v29 == v2)
        {
          goto LABEL_98;
        }
      }

      v52 = v29;
      v39 = sub_1001589F4(v5, &v52, v2, 10);
      v40 = v33 ^ 1;
      if (v39 >= 0)
      {
        v40 = 1;
      }

      if ((v40 & 1) == 0)
      {
        v42 = *(a1 + 128);
        v41 = *(a1 + 136);
        if (v41 == v42)
        {
          v39 = 0x40000000;
        }

        else
        {
          v43 = 0;
          v44 = **(a1 + 8) + 32;
          v45 = *(a1 + 136);
          while (v36 != *(v44 + *v45))
          {
            *(a1 + 136) = ++v45;
            --v43;
            if (v45 == v42)
            {
              goto LABEL_101;
            }
          }

          if (!v43)
          {
            v39 = 0x40000000;
            goto LABEL_104;
          }

LABEL_101:
          v47 = 0;
          do
          {
            v48 = *v41++;
            v47 ^= (v47 << 6) + (v47 >> 2) + 2654435769u + v48;
          }

          while (v41 != v45);
          v39 = (v47 % 0x7FFFFFFF) | 0x40000000;
LABEL_104:
          v41 = v45;
        }

        v52 = v41;
      }

      if (v30 == 45)
      {
        v39 = *(a1 + 144) - v39 + 1;
      }

      if ((v39 - 1) <= 0x3FFFFFFE || v39 >= 0x40000000 && sub_100159ED8(*a1, v39) >= 1)
      {
        *(a1 + 136) = v52;
        v49 = sub_100154BB4(a1, 13, 0x18uLL);
        v49[4] = v39;
        *(v49 + 20) = (*(*a1 + 40) & 0x100000) != 0;
        if (v39 <= 0x3FFFFFFF && v39 > *(a1 + 184))
        {
          *(a1 + 184) = v39;
        }

        v50 = v52;
        *(a1 + 136) = v52;
        v12 = 1;
        if (v31 > 0x19 || ((1 << v31) & 0x2108000) == 0)
        {
          return v12;
        }

        if (v50 != *(a1 + 128) && v36 == *(**(a1 + 8) + *v50 + 32))
        {
          *(a1 + 136) = v50 + 1;
          return v12;
        }

        v51 = &v50[-*(a1 + 120)];
        sub_100007ECC(&__p, "Incomplete \\g escape found.");
        sub_100154EBC(a1, 5, v51, &__p);
        goto LABEL_7;
      }

      sub_100154748(a1, 6, *(a1 + 136) - *(a1 + 120));
      return 0;
    case 0x3A:
      if ((*(*a1 + 40) & 0x203) != 0)
      {
        goto LABEL_38;
      }

      v13 = sub_100154BB4(a1, 0, 0x18uLL);
      v13[4] = -5;
      v14 = *a1;
      *(v13 + 20) = (*(*a1 + 40) & 0x100000) != 0;
      v14[45] = (v14[44] + ((v14[45] - v14[44] + 7) & 0xFFFFFFFFFFFFFFF8));
      ++*(a1 + 136);
      return 1;
    case 0x3B:
      if ((*(*a1 + 40) & 0x203) == 0)
      {
        v20 = *(a1 + 120);
        *(a1 + 120) = &unk_1002492C3;
        *(a1 + 128) = &unk_1002492D7;
        *(a1 + 136) = &unk_1002492C3;
        result = sub_100154F60(a1);
        *(a1 + 128) = v2;
        *(a1 + 136) = v3 + 2;
        *(a1 + 120) = v20;
        return result;
      }

LABEL_38:
      v8 = 0;
LABEL_39:
      v21 = sub_1001539DC(v6, v4, v3 + 2);
      if (v21)
      {
        __p = &v54;
        v54 = 0;
        v55 = 0;
        v56 = 0;
        v57 = 0;
        v58 = 0;
        v64 = 0;
        v65 = 0;
        v63 = &v64;
        v59 = 0;
        v61 = 0;
        if (v8)
        {
          LOBYTE(v59) = 1;
        }

        v60 = v21;
        v62 = 0;
        v22 = sub_10015A8D4(a1, &__p);
        v12 = v22 != 0;
        v23 = *(a1 + 136);
        if (v22)
        {
          *(a1 + 136) = v23 + 1;
        }

        else
        {
          sub_100154748(a1, 4, v23 - *(a1 + 120));
        }

        sub_10001C4B0(&v63, v64);
        if (v56)
        {
          v57 = v56;
          operator delete(v56);
        }

        sub_10001C4B0(&__p, v54);
      }

      else
      {
LABEL_44:
        v24 = sub_100159614(a1);
        sub_1001594E8(a1, v24);
        return 1;
      }

      return v12;
    default:
      goto LABEL_44;
  }
}

void sub_100155E60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100155EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + 128);
  v6 = *(a1 + 136);
  if (v6 != v7 && ((*(*a1 + 40) & 0x203) != 0 ? (v8 = (*(*a1 + 40) & 0x1003) == 4097) : (v8 = 1), v8))
  {
    if ((*(*a1 + 40) & 0xA01) == 0x800)
    {
      do
      {
        v9 = sub_100146404(*(a1 + 8), *v6, *(a1 + 84));
        v7 = *(a1 + 128);
        v6 = *(a1 + 136);
        if (!v9)
        {
          break;
        }

        *(a1 + 136) = ++v6;
      }

      while (v6 != v7);
    }

    if (v6 == v7 || *(**(a1 + 8) + *v6 + 32) != 8)
    {
      v10 = 1;
    }

    else
    {
      v10 = 0;
      *(a1 + 136) = ++v6;
    }

    if (v6 == v7)
    {
      v11 = 0;
      v6 = v7;
    }

    else if ((*(*a1 + 40) & 3) != 0 || *(**(a1 + 8) + *v6 + 32) != 7)
    {
      v11 = 0;
    }

    else
    {
      *(a1 + 136) = ++v6;
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
    v10 = 1;
  }

  v12 = *(a1 + 16);
  if (!v12)
  {
    v14 = &v6[-*(a1 + 120)];
    sub_100007ECC(__p, "Nothing to repeat.");
    sub_100154EBC(a1, 13, v14, __p);
    if (v40 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  v13 = *v12;
  if (*v12 > 0x1Cu)
  {
LABEL_33:
    v21 = v12 - *(*a1 + 352);
    goto LABEL_35;
  }

  if (((1 << v13) & 0x14331F99) != 0)
  {
LABEL_17:
    sub_100154748(a1, 13, &v6[-*(a1 + 120)]);
    return 0;
  }

  if (v13 != 1)
  {
    if (v13 == 2)
    {
      v17 = v12[4];
      if (v17 >= 2)
      {
        v18 = v17 - 1;
        v19 = *(v12 + v18 + 24);
        v12[4] = v18;
        v20 = sub_100154BB4(a1, 2, 0x19uLL);
        v20[4] = 1;
        *(v20 + 24) = v19;
        v21 = *(a1 + 16) - *(*a1 + 352);
        goto LABEL_35;
      }
    }

    goto LABEL_33;
  }

  v21 = *(a1 + 160);
LABEL_35:
  v22 = sub_100158FDC(a1, v21, 18, 0x138uLL);
  *(v22 + 36) = a2;
  *(v22 + 37) = a3;
  v22[309] = v10;
  v22[308] = 0;
  v23 = &v22[-*(*a1 + 352)];
  v24 = sub_100154BB4(a1, 16, 0x18uLL);
  *(v24 + 2) = v23 - v24 + *(*a1 + 352);
  v25 = *(*a1 + 352);
  v26 = (*(*a1 + 360) - v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(*a1 + 360) = v25 + v26;
  *&v23[v25 + 16] = v26 - v23;
  if (!v11)
  {
    return 1;
  }

  v27 = *(a1 + 128);
  v6 = *(a1 + 136);
  if (v6 != v27)
  {
    while (1)
    {
LABEL_37:
      if ((*(*a1 + 40) & 0xA03) == 0x800)
      {
        if (v6 == v27)
        {
          break;
        }

        do
        {
          v28 = sub_100146404(*(a1 + 8), *v6, *(a1 + 84));
          v27 = *(a1 + 128);
          v6 = *(a1 + 136);
          if (!v28)
          {
            break;
          }

          *(a1 + 136) = ++v6;
        }

        while (v6 != v27);
      }

      if (v6 == v27)
      {
        break;
      }

      v29 = **(a1 + 8) + 32;
      v30 = *(v29 + *v6);
      if (v30 != 1)
      {
        if (v30 > 0xF || ((1 << v30) & 0x81C0) == 0)
        {
          break;
        }

        goto LABEL_17;
      }

      if ((v6 + 2) >= v27 || *(v29 + v6[1]) != 8 || *(v29 + v6[2]) != 13)
      {
        break;
      }

      while (v6 != v27)
      {
        v31 = (v6 + 1);
        *(a1 + 136) = v6 + 1;
        v32 = *(v29 + *v6++);
        if (v32 == 2)
        {
          v6 = v31;
          goto LABEL_37;
        }
      }
    }
  }

  v34 = sub_100158FDC(a1, v21, 0, 0x18uLL);
  *(v34 + 4) = -3;
  v34[20] = (*(*a1 + 40) & 0x100000) != 0;
  v35 = sub_100158FDC(a1, v21 + 24, 16, 0x18uLL);
  v36 = *(*a1 + 352);
  v37 = (*(*a1 + 360) - v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(*a1 + 360) = v36 + v37;
  *(v35 + 2) = v36 - v35 + v37;
  v15 = 1;
  v38 = sub_100154BB4(a1, 1, 0x18uLL);
  v38[4] = -3;
  *(v38 + 20) = (*(*a1 + 40) & 0x100000) != 0;
  return v15;
}

void sub_1001562EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100156308(uint64_t a1, int a2)
{
  v5 = (a1 + 136);
  v4 = *(a1 + 136);
  v6 = *(a1 + 128);
  while (v4 != v6)
  {
    v7 = sub_100146404(*(a1 + 8), *v4, *(a1 + 84));
    v6 = *(a1 + 128);
    v4 = *(a1 + 136);
    if (!v7)
    {
      break;
    }

    *v5 = ++v4;
  }

  if (v4 == v6)
  {
    if ((*(*a1 + 40) & 0x203) == 0)
    {
      v25 = **(a1 + 8) + 32;
      v26 = v4 - 1;
      do
      {
        *v5 = v26;
        v27 = *v26--;
      }

      while (*(v25 + v27) != 15);
      goto LABEL_68;
    }

    goto LABEL_34;
  }

  v8 = sub_1001589F4(*(a1 + 8), v5, v6, 10);
  if (v8 < 0)
  {
    if ((*(*a1 + 40) & 0x203) == 0)
    {
      v31 = **(a1 + 8) + 32;
      v32 = (*(a1 + 136) - 1);
      do
      {
        *v5 = v32;
        v33 = *v32--;
      }

      while (*(v31 + v33) != 15);
      goto LABEL_68;
    }

    v22 = *(a1 + 136) - *(a1 + 120);
    sub_100007ECC(__p, "Missing } in quantified repetition.");
    sub_100154EBC(a1, 9, v22, __p);
LABEL_40:
    if (v44 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  v9 = *(a1 + 136);
  if (v9 == *(a1 + 128))
  {
    v12 = *(a1 + 136);
    goto LABEL_38;
  }

  v10 = v8;
  do
  {
    v11 = sub_100146404(*(a1 + 8), *v9, *(a1 + 84));
    v12 = *(a1 + 128);
    v9 = *(a1 + 136);
    if (!v11)
    {
      break;
    }

    *v5 = ++v9;
  }

  while (v9 != v12);
  if (v9 == v12)
  {
LABEL_38:
    if ((*(*a1 + 40) & 0x203) == 0)
    {
      v28 = **(a1 + 8) + 32;
      v29 = v9 - 1;
      do
      {
        *v5 = v29;
        v30 = *v29--;
      }

      while (*(v28 + v30) != 15);
      goto LABEL_68;
    }

    goto LABEL_39;
  }

  v13 = v10;
  if (*(**(a1 + 8) + *v9 + 32) == 27)
  {
    while (1)
    {
      v6 = *(a1 + 128);
      v14 = (*(a1 + 136) + 1);
      *(a1 + 136) = v14;
      if (v14 == v6)
      {
        break;
      }

      if (!sub_100146404(*(a1 + 8), *v14, *(a1 + 84)))
      {
        v6 = *(a1 + 128);
        v14 = *(a1 + 136);
        break;
      }
    }

    if (v14 != v6)
    {
      v15 = sub_1001589F4(*(a1 + 8), v5, v6, 10);
      if (v15 >= 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = -1;
      }

      else
      {
        v13 = v15;
      }

      v12 = *(a1 + 128);
      v9 = *(a1 + 136);
      goto LABEL_23;
    }

    if ((*(*a1 + 40) & 0x203) == 0)
    {
      v40 = **(a1 + 8) + 32;
      v41 = v14 - 1;
      do
      {
        *v5 = v41;
        v42 = *v41--;
      }

      while (*(v40 + v42) != 15);
      goto LABEL_68;
    }

LABEL_34:
    v21 = &v6[-*(a1 + 120)];
    sub_100007ECC(__p, "Missing } in quantified repetition.");
    sub_100154EBC(a1, 9, v21, __p);
    goto LABEL_40;
  }

LABEL_23:
  while (v9 != v12)
  {
    v16 = sub_100146404(*(a1 + 8), *v9, *(a1 + 84));
    v12 = *(a1 + 128);
    v9 = *(a1 + 136);
    if (!v16)
    {
      break;
    }

    *v5 = ++v9;
  }

  if (v9 == v12)
  {
    if ((*(*a1 + 40) & 0x203) == 0)
    {
      v37 = **(a1 + 8) + 32;
      v38 = v9 - 1;
      do
      {
        *v5 = v38;
        v39 = *v38--;
      }

      while (*(v37 + v39) != 15);
      goto LABEL_68;
    }

    goto LABEL_39;
  }

  v17 = *(a1 + 8);
  v18 = *v17;
  if (!a2)
  {
    goto LABEL_28;
  }

  if (*(v18 + *v9 + 32) != 12)
  {
    v36 = &v9[-*(a1 + 120)];
    sub_100007ECC(__p, "Missing } in quantified repetition.");
    sub_100154EBC(a1, 9, v36, __p);
    goto LABEL_40;
  }

  *v5 = ++v9;
  if (v9 == v12)
  {
LABEL_39:
    v23 = &v12[-*(a1 + 120)];
    sub_100007ECC(__p, "Missing } in quantified repetition.");
    sub_100154EBC(a1, 9, v23, __p);
    goto LABEL_40;
  }

LABEL_28:
  if (*(v18 + 32 + *v9) != 16)
  {
    v34 = v9 - 1;
    do
    {
      *v5 = v34;
      v35 = *v34--;
    }

    while (*(v18 + 32 + v35) != 15);
LABEL_68:

    return sub_100154E4C(a1);
  }

  *v5 = v9 + 1;
  if (v10 > v13)
  {
    *(a1 + 136) = v9 - 1;
    if (sub_100146404(v17, *(v9 - 1), *(a1 + 80)))
    {
      do
      {
        v19 = *(a1 + 136);
        *(a1 + 136) = v19 - 1;
      }

      while (sub_100146404(*(a1 + 8), *(v19 - 1), *(a1 + 80)));
    }

    v20 = *(a1 + 136) + 1;
    *(a1 + 136) = v20;
    sub_100154748(a1, 10, v20 - *(a1 + 120));
    return 0;
  }

  return sub_100155EAC(a1, v10, v13);
}

void sub_100156840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100156874(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 && *v2 || (*(*a1 + 40) & 0x1000003) == 0)
  {
    v5 = *(a1 + 144);
    if (*(a1 + 152) < v5)
    {
      *(a1 + 152) = v5;
    }

    v6 = *(a1 + 148);
    if ((v6 & 0x80000000) == 0)
    {
      *(a1 + 144) = v6;
    }

    ++*(a1 + 136);
    v7 = sub_100154BB4(a1, 16, 0x18uLL) - *(*a1 + 352);
    v8 = sub_100158FDC(a1, *(a1 + 168), 17, 0x120uLL);
    v9 = v7 + 288;
    v10 = *(*a1 + 352);
    v11 = (*(*a1 + 360) - v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    *(*a1 + 360) = v10 + v11;
    *(v8 + 2) = v10 - v8 + v11;
    *(a1 + 168) = *(*a1 + 360) - *(*a1 + 352);
    if (*(a1 + 176) == 1)
    {
      v12 = *(a1 + 24);
      *(sub_100154BB4(a1, 28, 0x18uLL) + 16) = v12;
    }

    v14 = *(a1 + 200);
    v13 = *(a1 + 208);
    if (v14 >= v13)
    {
      v16 = *(a1 + 192);
      v17 = v14 - v16;
      v18 = (v14 - v16) >> 3;
      v19 = v18 + 1;
      if ((v18 + 1) >> 61)
      {
        sub_100033FD0();
      }

      v20 = v13 - v16;
      if (v20 >> 2 > v19)
      {
        v19 = v20 >> 2;
      }

      v21 = v20 >= 0x7FFFFFFFFFFFFFF8;
      v22 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v21)
      {
        v22 = v19;
      }

      if (v22)
      {
        sub_100044B08(a1 + 192, v22);
      }

      v23 = (v14 - v16) >> 3;
      v24 = (8 * v18);
      v25 = (8 * v18 - 8 * v23);
      *v24 = v9;
      v15 = v24 + 1;
      memcpy(v25, v16, v17);
      v26 = *(a1 + 192);
      *(a1 + 192) = v25;
      *(a1 + 200) = v15;
      *(a1 + 208) = 0;
      if (v26)
      {
        operator delete(v26);
      }
    }

    else
    {
      *v14 = v9;
      v15 = v14 + 8;
    }

    *(a1 + 200) = v15;
    return 1;
  }

  else
  {
    v3 = *(a1 + 136) - *(a1 + 120);
    sub_100007ECC(__p, "A regular expression cannot start with the alternation operator |.");
    sub_100154EBC(a1, 17, v3, __p);
    if (v28 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }
}

void sub_100156A88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100156AA4(uint64_t a1)
{
  v2 = *(a1 + 128);
  v3 = *(a1 + 136) + 1;
  *(a1 + 136) = v3;
  if (v3 == v2)
  {
    v14 = v3 - *(a1 + 120);
    sub_100007ECC(&__p, "Character set declaration starting with [ terminated prematurely - either no ] was found or the set had no content.");
    sub_100154EBC(a1, 7, v14, &__p);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p);
    }

    return 0;
  }

  v18 = 0u;
  __p = &v18;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v27[0] = 0;
  v27[1] = 0;
  v26 = v27;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 1;
  v4 = v3;
  v5 = v3;
  while (1)
  {
    v6 = **(a1 + 8);
    v7 = *(v6 + 32 + *v4);
    if (v7 <= 9)
    {
      if (v7 != 4)
      {
        if (v7 == 9)
        {
          if (!sub_10015B48C(a1, &__p))
          {
            goto LABEL_33;
          }

          goto LABEL_24;
        }

        goto LABEL_23;
      }

      if (v4 != v3)
      {
        goto LABEL_23;
      }

      LOBYTE(v22) = 1;
      v11 = v4 + 1;
      v5 = v4 + 1;
LABEL_21:
      *(a1 + 136) = v11;
      goto LABEL_24;
    }

    if (v7 != 10)
    {
      if (v7 != 12)
      {
        goto LABEL_23;
      }

      v8 = v4 + 1;
      *(a1 + 136) = v4 + 1;
      v9 = *(v6 + 32 + v4[1]);
      if (v9 == 23)
      {
        v12 = sub_1001539DC(v6, v8, v4 + 2);
        v8 = *(a1 + 136);
        if (!v12)
        {
          goto LABEL_22;
        }

        v24 |= v12;
      }

      else
      {
        if (v9 != 22 || (v10 = sub_1001539DC(v6, v8, v4 + 2), v8 = *(a1 + 136), !v10))
        {
LABEL_22:
          *(a1 + 136) = v8 - 1;
LABEL_23:
          sub_10015B344(a1, &__p);
          goto LABEL_24;
        }

        v23 |= v10;
      }

      v25 = 0;
      v11 = v8 + 1;
      goto LABEL_21;
    }

    if (v4 != v5)
    {
      break;
    }

    sub_10015B344(a1, &__p);
    v5 = v4;
LABEL_24:
    v4 = *(a1 + 136);
    if (v4 == *(a1 + 128))
    {
      goto LABEL_25;
    }
  }

  *(a1 + 136) = v4 + 1;
  if (HIBYTE(v22) == 1)
  {
    v15 = sub_100159F38(a1, &__p);
  }

  else
  {
    v15 = sub_10015A8D4(a1, &__p);
  }

  if (!v15)
  {
    sub_100154748(a1, 4, *(a1 + 136) - *(a1 + 120));
LABEL_25:
    v13 = 0;
    goto LABEL_34;
  }

LABEL_33:
  v13 = 1;
LABEL_34:
  sub_10001C4B0(&v26, v27[0]);
  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  sub_10001C4B0(&__p, v18);
  return v13;
}

uint64_t sub_100156D50(uint64_t a1)
{
  v3 = (a1 + 136);
  v2 = *(a1 + 136);
  v4 = v2 + 1;
  *(a1 + 136) = v2 + 1;
  v5 = *(a1 + 128);
  v6 = *(a1 + 8);
  if (v2 + 1 == v5)
  {
    v10 = *v6 + 32;
    do
    {
      *v3 = v2;
      v11 = *v2--;
      --v4;
    }

    while (*(v10 + v11) != 1);
    goto LABEL_8;
  }

  v7 = *v6 + 32;
  if (*(v7 + *v4) == 13)
  {
    do
    {
      if (v4 == v5)
      {
        break;
      }

      *v3 = v4 + 1;
      v8 = *(v7 + *v4++);
    }

    while (v8 != 2);
    return 1;
  }

  v15 = sub_100154BB4(a1, 0, 0x18uLL);
  v16 = *a1;
  v17 = *(*a1 + 40);
  *(v15 + 20) = (v17 & 0x100000) != 0;
  v18 = *(a1 + 168);
  v19 = *(v16 + 352);
  v20 = (*(v16 + 360) - v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(v16 + 360) = v19 + v20;
  *(a1 + 168) = v20;
  v21 = *(a1 + 176);
  *(a1 + 176) = 0;
  v22 = *(a1 + 148);
  v23 = *(a1 + 144);
  *(a1 + 148) = -1;
  *(a1 + 152) = v23;
  v24 = *(a1 + 8);
  v25 = *(a1 + 136);
  v26 = *v25;
  v27 = *v24 + 32;
  v28 = *(v27 + *v25);
  if (v28 > 0x13)
  {
    if (*(v27 + *v25) > 0x23u)
    {
      switch(v28)
      {
        case '$':
LABEL_64:
          v235 = v21;
          v237 = (v17 >> 20) & 1;
          v42 = v18;
          v62 = 0;
          v33 = 0;
          v15[4] = 0;
          *v3 = v25 + 1;
LABEL_232:
          v94 = 1;
          goto LABEL_233;
        case '%':
          v235 = v21;
          v237 = (v17 >> 20) & 1;
          v42 = v18;
          v33 = -1;
          break;
        case '5':
          v235 = v21;
          v237 = (v17 >> 20) & 1;
          v42 = v18;
          v33 = -2;
          break;
        default:
          goto LABEL_77;
      }
    }

    else
    {
      if (v28 == 20)
      {
        v59 = v25 + 1;
        *(a1 + 136) = v25 + 1;
        if (v25 + 1 == *(a1 + 128))
        {
          do
          {
            *v3 = v25;
            v61 = *v25--;
            --v59;
          }

          while (*(v27 + v61) != 1);
          v12 = &v59[-*(a1 + 120)];
          goto LABEL_9;
        }

        v60 = *(v27 + *v59);
        if (v60 == 53)
        {
          v235 = v21;
          v237 = (v17 >> 20) & 1;
          v42 = v18;
          v33 = -2;
        }

        else
        {
          if (v60 != 37)
          {
            *v3 = v25;
            v26 = 62;
            goto LABEL_26;
          }

          v235 = v21;
          v237 = (v17 >> 20) & 1;
          v42 = v18;
          v33 = -1;
        }

        v15[4] = v33;
        *(a1 + 136) = v25 + 2;
        v62 = sub_100154BB4(a1, 16, 0x18uLL) - *(*a1 + 352);
        sub_100154BB4(a1, 26, 0x18uLL);
        v71 = *a1;
        v72 = *(*a1 + 352);
        v73 = *(*a1 + 360);
LABEL_76:
        v74 = (v73 - v72 + 7) & 0xFFFFFFFFFFFFFFF8;
        *(v71 + 360) = v72 + v74;
        *(a1 + 168) = v74;
        goto LABEL_232;
      }

      if (v28 != 21)
      {
        if (v28 != 25)
        {
          goto LABEL_77;
        }

LABEL_26:
        v237 = (v17 >> 20) & 1;
        if ((v17 & 0x400000) != 0)
        {
          v33 = 0;
        }

        else
        {
          v33 = v23 + 1;
          *(a1 + 144) = v23 + 1;
          if ((v17 & 0x800000) != 0)
          {
            __p[0] = &v25[-*(a1 + 120) - 2];
            __p[1] = 0;
            sub_10015891C(v16 + 376, __p);
            v25 = *(a1 + 136);
          }
        }

        v15[4] = v33;
        v80 = (v25 + 1);
        *(a1 + 136) = v25 + 1;
        v81 = *(a1 + 128);
        if (v25 + 1 == v81)
        {
          v86 = **(a1 + 8) + 32;
          do
          {
            *v3 = v25;
            v87 = *v25--;
            --v80;
          }

          while (*(v86 + v87) != 1);
          v12 = &v80[-*(a1 + 120)];
          goto LABEL_9;
        }

        v4 = v25 + 1;
        v82 = (v25 + 1);
        do
        {
          if (*v82 == v26)
          {
            v235 = v21;
            v42 = v18;
            sub_100158CF8(*a1, v80, v82, v33);
            v62 = 0;
            ++*(a1 + 136);
            goto LABEL_232;
          }

          *v3 = ++v82;
          ++v4;
        }

        while (v82 != v81);
        v83 = **(a1 + 8) + 32;
        v84 = v82 - 1;
        do
        {
          *v3 = v84;
          v85 = *v84--;
          --v4;
        }

        while (*(v83 + v85) != 1);
        goto LABEL_8;
      }

      v235 = v21;
      v237 = (v17 >> 20) & 1;
      v42 = v18;
      v33 = -3;
    }

    v15[4] = v33;
    *(a1 + 136) = v25 + 1;
    v70 = sub_100154BB4(a1, 16, 0x18uLL);
    v71 = *a1;
    v72 = *(*a1 + 352);
    v73 = *(*a1 + 360);
    v62 = v70 - v72;
    goto LABEL_76;
  }

  if (*(v27 + *v25) <= 0xAu)
  {
    if (v28 != 1)
    {
      if (v28 != 2)
      {
        if (v28 == 7)
        {
          *(a1 + 136) = v25 + 1;
          v29 = sub_1001589F4(v24, v3, *(a1 + 128), 10);
          v30 = **(a1 + 8);
          v31 = *(a1 + 136);
          if (v29 < 1 || *(v30 + *v31 + 32) != 2)
          {
            v76 = v30 + 32;
            v77 = v31 - 1;
            do
            {
              *v3 = v77;
              v78 = *v77--;
              --v31;
            }

            while (*(v76 + v78) != 1);
            goto LABEL_86;
          }

          v32 = *(a1 + 144);
          if ((v32 ^ 0x7FFFFFFFFFFFFFFFuLL) < v29)
          {
LABEL_86:
            v79 = &v31[-*(a1 + 120)];
            sub_100007ECC(__p, "An invalid or unterminated recursive sub-expression.");
            sub_100154EBC(a1, 20, v79, __p);
            goto LABEL_259;
          }

          v237 = (v17 >> 20) & 1;
          v37 = v29 + v32;
          goto LABEL_231;
        }

        goto LABEL_77;
      }

      v63 = v25 - 1;
      do
      {
        *v3 = v63;
        v64 = *v63--;
        --v25;
      }

      while (*(v27 + v64) != 1);
LABEL_67:
      v12 = &v25[-*(a1 + 120)];
      goto LABEL_9;
    }

    v15[4] = -4;
    v43 = v25 + 1;
    *(a1 + 136) = v25 + 1;
    v44 = *(a1 + 128);
    if (v25 + 1 == v44)
    {
      do
      {
        *v3 = v25;
        v58 = *v25--;
        --v43;
      }

      while (*(v27 + v58) != 1);
      goto LABEL_116;
    }

    v237 = (v17 >> 20) & 1;
    v45 = sub_1001589F4(v24, v3, v44, 10);
    v46 = *(a1 + 128);
    v4 = *(a1 + 136);
    v47 = v4 - v46;
    if (v4 == v46)
    {
      v107 = **(a1 + 8) + 32;
      v108 = v4 - 1;
      do
      {
        *v3 = v108;
        v109 = *v108--;
        --v4;
      }

      while (*(v107 + v109) != 1);
      goto LABEL_8;
    }

    v48 = v45;
    v49 = *v4;
    if (v49 <= 0x43)
    {
      if (v49 == 39 || v49 == 60)
      {
        v25 = v4 + 1;
        *v3 = v4 + 1;
        if (v4 + 1 == v46)
        {
LABEL_52:
          v55 = **(a1 + 8) + 32;
          v56 = v25 - 1;
          do
          {
            *v3 = v56;
            v57 = *v56--;
            --v25;
          }

          while (*(v55 + v57) != 1);
          goto LABEL_67;
        }

        v50 = 0;
        v51 = v47 + 1;
        v52 = v4;
        while (1)
        {
          v54 = *++v52;
          v53 = v54;
          if (v54 == 39 || v53 == 62)
          {
            break;
          }

          *v3 = v4 + 2;
          --v50;
          v4 = v52;
          if (v51 == v50)
          {
            v25 = v52 + 1;
            goto LABEL_52;
          }
        }

        if (v50)
        {
          v129 = 0;
          v130 = -v50;
          do
          {
            v131 = *v25++;
            v129 ^= (v129 << 6) + 2654435769u + (v129 >> 2) + v131;
            --v130;
          }

          while (v130);
          v132 = (v129 % 0x7FFFFFFF) | 0x40000000;
        }

        else
        {
          v132 = 0x40000000;
        }

        sub_100154BB4(a1, 27, 0x18uLL)[4] = v132;
        v144 = *(a1 + 136);
        v145 = *v144;
        if (v145 == 62 || v145 == 39)
        {
          v146 = v144 + 1;
          *(a1 + 136) = v144 + 1;
          v147 = *(a1 + 128);
          if (v144 + 1 != v147)
          {
            v148 = **(a1 + 8) + 32;
            if (*(v148 + *v146) != 2)
            {
              v43 = v144 + 1;
              do
              {
                *v3 = v144;
                v163 = *v144--;
                --v43;
              }

              while (*(v148 + v163) != 1);
              goto LABEL_116;
            }

            v4 = v144 + 2;
            *v3 = v4;
            if (v4 == v147)
            {
              do
              {
                *v3 = v146;
                v149 = *v146--;
                --v4;
              }

              while (*(v148 + v149) != 1);
              goto LABEL_8;
            }

            goto LABEL_306;
          }

          ++v144;
        }

        v157 = **(a1 + 8) + 32;
        v158 = v144 - 1;
        do
        {
          *v3 = v158;
          v159 = *v158--;
          --v144;
        }

        while (*(v157 + v159) != 1);
        v160 = &v144[-*(a1 + 120)];
        sub_100007ECC(__p, "Unterminated named capture.");
        sub_100154EBC(a1, 20, v160, __p);
        goto LABEL_259;
      }

      goto LABEL_150;
    }

    if (v49 != 82)
    {
      if (v49 == 68)
      {
        v110 = &_mh_execute_header.magic + 1;
        do
        {
          if (v4 == v46 || *v4 != v49)
          {
            goto LABEL_172;
          }

          *v3 = ++v4;
          v49 = aDefine[v110++];
        }

        while (v110 != 7);
        if (v4 == v46)
        {
LABEL_172:
          v133 = **(a1 + 8) + 32;
          v134 = v4 - 1;
          do
          {
            *v3 = v134;
            v135 = *v134--;
            --v4;
          }

          while (*(v133 + v135) != 1);
          goto LABEL_8;
        }

        sub_100154BB4(a1, 27, 0x18uLL)[4] = 9999;
        v4 = *(a1 + 136);
        v111 = **(a1 + 8) + 32;
        if (*(v111 + *v4) != 2)
        {
          v218 = v4 - 1;
          do
          {
            *v3 = v218;
            v219 = *v218--;
            --v4;
          }

          while (*(v111 + v219) != 1);
          goto LABEL_8;
        }

        v235 = v21;
        v43 = v4 + 1;
        *(a1 + 136) = v4 + 1;
        if (v4 + 1 != *(a1 + 128))
        {
          goto LABEL_307;
        }

        do
        {
          *v3 = v4;
          v112 = *v4--;
          --v43;
        }

        while (*(v111 + v112) != 1);
        goto LABEL_116;
      }

LABEL_150:
      if (v45 < 1)
      {
        v138 = **(a1 + 8) + 32;
        if (*(v138 + *v4) != 8)
        {
          v161 = v4 - 1;
          do
          {
            *v3 = v161;
            v162 = *v161--;
            --v4;
          }

          while (*(v138 + v162) != 1);
          goto LABEL_8;
        }

        v43 = v4 + 1;
        *v3 = v4 + 1;
        if (v4 + 1 == v46)
        {
          do
          {
            *v3 = v4;
            v141 = *v4--;
            --v43;
          }

          while (*(v138 + v141) != 1);
          goto LABEL_116;
        }

        v235 = v21;
        v139 = *(v138 + *v43);
        if (v139 == 20)
        {
          v232 = v4 + 2;
          *v3 = v4 + 2;
          if (v4 + 2 == v46)
          {
            do
            {
              *v3 = v43;
              v233 = *v43--;
              --v232;
            }

            while (*(v138 + v233) != 1);
            v12 = &v232[-*(a1 + 120)];
            goto LABEL_9;
          }

          if ((*(v138 + *v232) | 0x10) != 0x35)
          {
            v4 += 2;
            do
            {
              *v3 = v43;
              v234 = *v43--;
              --v4;
            }

            while (*(v138 + v234) != 1);
            goto LABEL_8;
          }

          v42 = v18;
        }

        else
        {
          v42 = v18;
          if (v139 != 37 && v139 != 53)
          {
            v43 = v4 + 1;
            do
            {
              *v3 = v4;
              v140 = *v4--;
              --v43;
            }

            while (*(v138 + v140) != 1);
            goto LABEL_116;
          }
        }

        v62 = 0;
        *v3 = v4 - 1;
LABEL_308:
        v33 = -4;
        goto LABEL_232;
      }

      sub_100154BB4(a1, 27, 0x18uLL)[4] = v45;
      v4 = *(a1 + 136);
      v117 = **(a1 + 8) + 32;
      if (*(v117 + *v4) != 2)
      {
        v150 = v4 - 1;
        do
        {
          *v3 = v150;
          v151 = *v150--;
          --v4;
        }

        while (*(v117 + v151) != 1);
        goto LABEL_8;
      }

      v43 = v4 + 1;
      *(a1 + 136) = v4 + 1;
      if (v4 + 1 == *(a1 + 128))
      {
        do
        {
          *v3 = v4;
          v118 = *v4--;
          --v43;
        }

        while (*(v117 + v118) != 1);
        goto LABEL_116;
      }

LABEL_306:
      v235 = v21;
LABEL_307:
      v42 = v18;
      v62 = 0;
      goto LABEL_308;
    }

    v25 = v4 + 1;
    *v3 = v4 + 1;
    if (v4 + 1 == v46)
    {
      v142 = **(a1 + 8) + 32;
      do
      {
        *v3 = v4;
        v143 = *v4--;
        --v25;
      }

      while (*(v142 + v143) != 1);
      goto LABEL_67;
    }

    if (*v25 != 38)
    {
      v48 = -sub_1001589F4(*(a1 + 8), v3, v46, 10);
      goto LABEL_304;
    }

    v119 = (v4 + 2);
    *(a1 + 136) = v4 + 2;
    v120 = **(a1 + 8);
    if (v4 + 2 == v46)
    {
      v217 = 1;
    }

    else
    {
      if (*(v120 + 32 + *v119) == 2)
      {
        v121 = 0;
        v122 = 1;
        v123 = v119;
LABEL_293:
        if (v122)
        {
          v223 = 0x4000000000000000;
        }

        else
        {
          v224 = 0;
          do
          {
            v225 = *v119++;
            v224 ^= (v224 << 6) + 2654435769u + (v224 >> 2) + v225;
          }

          while (v119 != v123);
          v223 = ((v224 % 0x7FFFFFFF) << 32) | 0x4000000000000000;
        }

        if (v121)
        {
          return 0;
        }

        v48 = -v223 >> 32;
        goto LABEL_304;
      }

      v220 = v4 + 3;
      v221 = -3;
      while (1)
      {
        *v3 = v220;
        if (v47 == v221)
        {
          break;
        }

        v222 = *v220++;
        --v221;
        if (*(v120 + 32 + v222) == 2)
        {
          v123 = v220 - 1;
          v121 = v220 - 1 == v46;
          v122 = v221 == -3;
          goto LABEL_293;
        }
      }

      v217 = v220 == v46;
      v119 = v220;
    }

    v226 = (v119 - 1);
    do
    {
      *v3 = v226;
      v227 = *v226--;
      --v119;
    }

    while (*(v120 + 32 + v227) != 1);
    sub_100154748(a1, 20, &v119[-*(a1 + 120)]);
    if (v217)
    {
      return 0;
    }

LABEL_304:
    sub_100154BB4(a1, 27, 0x18uLL)[4] = (v48 >> 63) & (v48 - 1);
    v4 = *(a1 + 136);
    v228 = **(a1 + 8) + 32;
    if (*(v228 + *v4) != 2)
    {
      v230 = v4 - 1;
      do
      {
        *v3 = v230;
        v231 = *v230--;
        --v4;
      }

      while (*(v228 + v231) != 1);
      goto LABEL_8;
    }

    v43 = v4 + 1;
    *(a1 + 136) = v4 + 1;
    if (v4 + 1 == *(a1 + 128))
    {
      do
      {
        *v3 = v4;
        v229 = *v4--;
        --v43;
      }

      while (*(v228 + v229) != 1);
      goto LABEL_116;
    }

    goto LABEL_306;
  }

  switch(v28)
  {
    case 0xBu:
      *(a1 + 148) = v23;
      goto LABEL_64;
    case 0xEu:
      *(a1 + 136) = v25 + 1;
      v65 = sub_1001589F4(v24, v3, *(a1 + 128), 10);
      if (v65 > 0)
      {
        v66 = *(a1 + 144) - v65;
        if (v66 >= 0x7FFFFFFFFFFFFFFFLL)
        {
          v67 = **(a1 + 8) + 32;
          v31 = *(a1 + 136);
          v68 = v31 - 1;
          do
          {
            *v3 = v68;
            v69 = *v68--;
            --v31;
          }

          while (*(v67 + v69) != 1);
          goto LABEL_86;
        }

        v237 = (v17 >> 20) & 1;
        v37 = v66 + 1;
        goto LABEL_231;
      }

      --*v3;
      goto LABEL_100;
    case 0x11u:
      v237 = (v17 >> 20) & 1;
      v34 = sub_1001589F4(v24, v3, *(a1 + 128), 10);
      v35 = **(a1 + 8);
      v36 = *(a1 + 136);
      if (v34 < 0 || (v37 = v34, *(v35 + *v36 + 32) != 2))
      {
        v38 = v35 + 32;
        v39 = v36 - 1;
        do
        {
          *v3 = v39;
          v40 = *v39--;
          --v36;
        }

        while (*(v38 + v40) != 1);
        v41 = &v36[-*(a1 + 120)];
        sub_100007ECC(__p, "The recursive sub-expression refers to an invalid marking group, or is unterminated.");
        sub_100154EBC(a1, 20, v41, __p);
        goto LABEL_259;
      }

      goto LABEL_231;
  }

LABEL_77:
  switch(v26)
  {
    case '&':
      v99 = (v25 + 1);
      v104 = *(a1 + 128);
      *(a1 + 136) = v25 + 1;
      if (v25 + 1 == v104)
      {
        v237 = (v17 >> 20) & 1;
        v116 = 1;
      }

      else
      {
        v105 = *(v27 + *v99);
        if (v105 == 2)
        {
          v100 = 0;
          v106 = (v25 + 1);
LABEL_164:
          if (v105 == 2)
          {
            goto LABEL_210;
          }

          v127 = 0;
          do
          {
            v128 = *v99++;
            v127 ^= (v127 << 6) + 2654435769u + (v127 >> 2) + v128;
          }

          while (v99 != v106);
          goto LABEL_214;
        }

        v124 = v104 - v25 - 2;
        v125 = v25 + 2;
        while (1)
        {
          *v3 = v125;
          if (!v124)
          {
            break;
          }

          v126 = *v125++;
          --v124;
          if (*(v27 + v126) == 2)
          {
            v106 = (v125 - 1);
            v100 = v106 == v104;
            goto LABEL_164;
          }
        }

        v237 = (v17 >> 20) & 1;
        v116 = v125 == v104;
        v99 = v125;
      }

      v136 = v99 - 1;
      do
      {
        *v3 = v136;
        v137 = *v136--;
        --v99;
      }

      while (*(v27 + v137) != 1);
LABEL_229:
      sub_100154748(a1, 20, &v99[-*(a1 + 120)]);
      if (v116)
      {
        return 0;
      }

      goto LABEL_230;
    case 'P':
      v43 = v25 + 1;
      *(a1 + 136) = v25 + 1;
      v98 = *(a1 + 128);
      if (v25 + 1 != v98)
      {
        if (*v43 != 62)
        {
          break;
        }

        v99 = (v25 + 2);
        *v3 = v25 + 2;
        if (v25 + 2 == v98)
        {
          v237 = (v17 >> 20) & 1;
          v116 = 1;
        }

        else
        {
          if (*(v27 + *v99) == 2)
          {
            v100 = 0;
            v101 = 1;
            v102 = (v25 + 2);
LABEL_209:
            if (v101)
            {
LABEL_210:
              if (v100)
              {
                return 0;
              }

              v237 = (v17 >> 20) & 1;
              v37 = 0x40000000;
              goto LABEL_231;
            }

            v127 = 0;
            do
            {
              v156 = *v99++;
              v127 ^= (v127 << 6) + 2654435769u + (v127 >> 2) + v156;
            }

            while (v99 != v102);
LABEL_214:
            if (v100)
            {
              return 0;
            }

            v237 = (v17 >> 20) & 1;
            v37 = (v127 % 0x7FFFFFFF) | 0x40000000;
            goto LABEL_231;
          }

          v152 = (v25 - v98);
          v153 = v25 + 3;
          v154 = -3;
          while (1)
          {
            *v3 = v153;
            if (v152 == v154)
            {
              break;
            }

            v155 = *v153++;
            --v154;
            if (*(v27 + v155) == 2)
            {
              v102 = (v153 - 1);
              v100 = v102 == v98;
              v101 = v154 == -3;
              goto LABEL_209;
            }
          }

          v237 = (v17 >> 20) & 1;
          v116 = v153 == v98;
          v99 = v153;
        }

        v164 = v99 - 1;
        do
        {
          *v3 = v164;
          v165 = *v164--;
          --v99;
        }

        while (*(v27 + v165) != 1);
        goto LABEL_229;
      }

      do
      {
        *v3 = v25;
        v103 = *v25--;
        --v43;
      }

      while (*(v27 + v103) != 1);
LABEL_116:
      v12 = &v43[-*(a1 + 120)];
      goto LABEL_9;
    case 'R':
      v43 = v25 + 1;
      *v3 = v25 + 1;
      if (*(v27 + v25[1]) == 2)
      {
        v237 = (v17 >> 20) & 1;
LABEL_230:
        v37 = 0;
LABEL_231:
        v235 = v21;
        v42 = v18;
        v15[4] = 0;
        v166 = sub_100154BB4(a1, 29, 0x20uLL);
        *(v166 + 2) = v37;
        v166[6] = 0;
        v167 = *(*a1 + 40);
        v62 = 0;
        v33 = 0;
        *(sub_100154BB4(a1, 28, 0x18uLL) + 16) = (v167 & 0x100000) != 0;
        goto LABEL_232;
      }

      do
      {
        *v3 = v25;
        v75 = *v25--;
        --v43;
      }

      while (*(v27 + v75) != 1);
      goto LABEL_116;
  }

LABEL_100:
  v88 = sub_100158E58(a1);
  v4 = *(a1 + 136);
  if (v4 == *(a1 + 128))
  {
    v95 = **(a1 + 8) + 32;
    v96 = v4 - 1;
    do
    {
      *v3 = v96;
      v97 = *v96--;
      --v4;
    }

    while (*(v95 + v97) != 1);
    goto LABEL_8;
  }

  v89 = v88 & 0x100000;
  v90 = *a1;
  v91 = *(*a1 + 40) & 0x100000;
  *(a1 + 176) = (v88 & 0x100000) != v91;
  v15[4] = 0;
  v92 = **(a1 + 8) + 32;
  v93 = *(v92 + *v4);
  if (v93 == 2)
  {
    v236 = v21;
    v42 = v18;
    *(v90 + 40) = v88;
    if (((v88 >> 20) & 1) != *(a1 + 24))
    {
      *(a1 + 24) = (v88 & 0x100000) != 0;
    }

    v94 = 0;
    v113 = v236;
    if (v89 != v91)
    {
      v113 = 1;
    }

    v235 = v113;
    goto LABEL_143;
  }

  if (v93 != 36)
  {
    v114 = v4 - 1;
    do
    {
      *v3 = v114;
      v115 = *v114--;
      --v4;
    }

    while (*(v92 + v115) != 1);
LABEL_8:
    v12 = &v4[-*(a1 + 120)];
LABEL_9:
    v13 = a1;
    v14 = 20;
LABEL_10:
    sub_100154748(v13, v14, v12);
    return 0;
  }

  v235 = v21;
  v42 = v18;
  *(v90 + 40) = v88;
  if (((v88 >> 20) & 1) != *(a1 + 24))
  {
    *(a1 + 24) = (v88 & 0x100000) != 0;
  }

  *v3 = v4 + 1;
  v94 = 1;
LABEL_143:
  v237 = (v17 >> 20) & 1;
  v62 = 0;
  v33 = 0;
  if (v89 != v91)
  {
    *(sub_100154BB4(a1, 28, 0x18uLL) + 16) = v89 >> 20;
  }

LABEL_233:
  v168 = v15 - v19;
  sub_100154F60(a1);
  if ((sub_100155048(a1, v168) & 1) == 0)
  {
    v183 = **(a1 + 8) + 32;
    v184 = *(a1 + 136);
    v185 = (v184 - 1);
    do
    {
      *v3 = v185;
      v186 = *v185--;
      --v184;
    }

    while (*(v183 + v186) != 1);
    v187 = v184 - *(a1 + 120);
    sub_100007ECC(__p, "Invalid alternation operators within (?...) block.");
    sub_100154EBC(a1, 20, v187, __p);
    goto LABEL_259;
  }

  v169 = *(a1 + 136);
  if (v169 == *(a1 + 128))
  {
    v188 = **(a1 + 8) + 32;
    v189 = (v169 - 1);
    do
    {
      *v3 = v189;
      v190 = *v189--;
    }

    while (*(v188 + v190) != 1);
    v12 = v169 - *(a1 + 120);
    v13 = a1;
    v14 = 8;
    goto LABEL_10;
  }

  *v3 = v169 + 1;
  if (v94)
  {
    if (*(a1 + 176) == 1)
    {
      *(sub_100154BB4(a1, 28, 0x18uLL) + 16) = v237;
    }

    *(*a1 + 40) = v17;
    if (v237 != *(a1 + 24))
    {
      *(a1 + 24) = v237;
    }
  }

  if (v62)
  {
    v170 = *(*a1 + 352);
    v171 = (*(*a1 + 360) - v170 + 7) & 0xFFFFFFFFFFFFFFF8;
    *(*a1 + 360) = v170 + v171;
    *&v62[v170 + 16] = v171 - v62;
    if (*(a1 + 16) == &v62[v170] && v33 != -2)
    {
      v191 = **(a1 + 8) + 32;
      v192 = *(a1 + 136);
      v193 = (v192 - 1);
      do
      {
        *v3 = v193;
        v194 = *v193--;
        --v192;
      }

      while (*(v191 + v194) != 1);
      v195 = v192 - *(a1 + 120);
      sub_100007ECC(__p, "Invalid or empty zero width assertion.");
      sub_100154EBC(a1, 20, v195, __p);
      goto LABEL_259;
    }
  }

  if (v33 != -4)
  {
    goto LABEL_277;
  }

  v173 = *(*a1 + 352);
  v174 = v173 + v20;
  if (*(v173 + v20) != 17)
  {
    v196 = sub_100158FDC(a1, v20, 17, 0x120uLL);
    *(v196 + 2) = *(*a1 + 360) - v196;
    v197 = *(*(*a1 + 352) + v20 + *(*(*a1 + 352) + v20 + 8));
LABEL_272:
    if (v197)
    {
      v204 = v197 == 27;
    }

    else
    {
      v204 = 1;
    }

    if (v204)
    {
      goto LABEL_277;
    }

    v212 = **(a1 + 8) + 32;
    v213 = *(a1 + 136);
    v214 = (v213 - 1);
    do
    {
      *v3 = v214;
      v215 = *v214--;
      --v213;
    }

    while (*(v212 + v215) != 1);
    v216 = v213 - *(a1 + 120);
    sub_100007ECC(__p, "A repetition operator cannot be applied to a zero-width assertion.");
    sub_100154EBC(a1, 13, v216, __p);
LABEL_259:
    if (v239 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  v175 = *(*a1 + 360) - v173;
  v176 = *(v174 + 16);
  v177 = v176 < 1 || v175 <= (v176 + v20);
  if (!v177 && *(v174 + v176) == 17)
  {
    v178 = **(a1 + 8) + 32;
    v179 = *(a1 + 136);
    v180 = (v179 - 1);
    do
    {
      *v3 = v180;
      v181 = *v180--;
      --v179;
    }

    while (*(v178 + v181) != 1);
    v182 = v179 - *(a1 + 120);
    sub_100007ECC(__p, "More than one alternation operator | was encountered inside a conditional expression.");
    sub_100154EBC(a1, 2, v182, __p);
    goto LABEL_259;
  }

  v198 = (v174 + *(v174 + 8));
  v197 = *v198;
  if (*v198 != 27)
  {
    goto LABEL_272;
  }

  if (v198[4] == 9999)
  {
    v199 = **(a1 + 8) + 32;
    v200 = *(a1 + 136);
    v201 = (v200 - 1);
    do
    {
      *v3 = v201;
      v202 = *v201--;
      --v200;
    }

    while (*(v199 + v202) != 1);
    v203 = v200 - *(a1 + 120);
    sub_100007ECC(__p, "Alternation operators are not allowed inside a DEFINE block.");
    sub_100154EBC(a1, 2, v203, __p);
    goto LABEL_259;
  }

LABEL_277:
  v205 = sub_100154BB4(a1, 1, 0x18uLL);
  v205[4] = v33;
  v206 = *a1;
  v207 = *(*a1 + 40);
  *(v205 + 20) = (v207 & 0x100000) != 0;
  *(a1 + 160) = v168;
  *(a1 + 168) = v42;
  *(a1 + 176) = v235;
  v208 = *(a1 + 152);
  if (v208 > *(a1 + 144))
  {
    *(a1 + 144) = v208;
  }

  *(a1 + 148) = v22;
  result = 1;
  if (v33 >= 1 && (v207 & 0x800000) != 0)
  {
    v209 = v33 - 1;
    v211 = v206 + 376;
    v210 = *(v206 + 376);
    if (v209 >= (*(v211 + 8) - v210) >> 4)
    {
      sub_1000CCC1C();
    }

    *(v210 + 16 * v209 + 8) = *(a1 + 136) + ~*(a1 + 120);
  }

  return result;
}

void sub_100158358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100158398(uint64_t a1)
{
  v3 = *(a1 + 128);
  v2 = *(a1 + 136);
  v4 = v2 + 1;
  *(a1 + 136) = v2 + 1;
  if (v2 + 1 == v3)
  {
    v12 = **(a1 + 8) + 32;
    do
    {
      *(a1 + 136) = v2;
      v13 = *v2--;
      --v4;
    }

    while (*(v12 + v13) != 1);
    goto LABEL_71;
  }

  v5 = *v4;
  if (v5 > 0x4F)
  {
    if (v5 != 80)
    {
      if (v5 == 83)
      {
        v6 = v2 + 2;
        *(a1 + 136) = v6;
        if (v6 == v3)
        {
          v42 = **(a1 + 8) + 32;
          do
          {
            *(a1 + 136) = v4;
            v43 = *v4--;
            --v6;
          }

          while (*(v42 + v43) != 1);
          goto LABEL_67;
        }

        v28 = sub_1001593B0(a1, "KIP");
        v4 = *(a1 + 136);
        if (v28)
        {
          v29 = *(a1 + 8);
          if (v4 == *(a1 + 128))
          {
            v30 = *v29;
          }

          else
          {
            v30 = *v29;
            if (*(v30 + *v4 + 32) == 2)
            {
              *(a1 + 136) = v4 + 1;
              v31 = sub_100154BB4(a1, 32, 0x18uLL);
              result = 1;
              v31[4] = 1;
              v27 = *a1;
              goto LABEL_46;
            }
          }

          v63 = v30 + 32;
          v64 = v4 - 1;
          do
          {
            *(a1 + 136) = v64;
            v65 = *v64--;
            --v4;
          }

          while (*(v63 + v65) != 1);
          goto LABEL_71;
        }

        goto LABEL_69;
      }

      if (v5 != 84)
      {
        goto LABEL_69;
      }

      v6 = v2 + 2;
      *(a1 + 136) = v6;
      if (v6 == v3)
      {
        v38 = **(a1 + 8) + 32;
        do
        {
          *(a1 + 136) = v4;
          v39 = *v4--;
          --v6;
        }

        while (*(v38 + v39) != 1);
        goto LABEL_67;
      }

      v14 = sub_1001593B0(a1, "HEN");
      v4 = *(a1 + 136);
      if (!v14)
      {
        goto LABEL_69;
      }

      v15 = *(a1 + 8);
      if (v4 == *(a1 + 128))
      {
        v16 = *v15;
      }

      else
      {
        v16 = *v15;
        if (*(v16 + *v4 + 32) == 2)
        {
          *(a1 + 136) = v4 + 1;
          sub_100154BB4(a1, 33, 0x10uLL);
LABEL_40:
          v27 = *a1;
          result = 1;
LABEL_46:
          *(v27 + 401) = 1;
          return result;
        }
      }

      v57 = v16 + 32;
      v58 = v4 - 1;
      do
      {
        *(a1 + 136) = v58;
        v59 = *v58--;
        --v4;
      }

      while (*(v57 + v59) != 1);
      goto LABEL_71;
    }

    v6 = v2 + 2;
    *(a1 + 136) = v6;
    if (v6 == v3)
    {
      v34 = **(a1 + 8) + 32;
      do
      {
        *(a1 + 136) = v4;
        v35 = *v4--;
        --v6;
      }

      while (*(v34 + v35) != 1);
      goto LABEL_67;
    }

    v21 = sub_1001593B0(a1, "RUNE");
    v4 = *(a1 + 136);
    if (!v21)
    {
      goto LABEL_69;
    }

    v22 = *(a1 + 8);
    if (v4 == *(a1 + 128))
    {
      v23 = *v22;
    }

    else
    {
      v23 = *v22;
      if (*(v23 + *v4 + 32) == 2)
      {
        *(a1 + 136) = v4 + 1;
        sub_100154BB4(a1, 32, 0x18uLL)[4] = 0;
        goto LABEL_40;
      }
    }

    v54 = v23 + 32;
    v55 = v4 - 1;
    do
    {
      *(a1 + 136) = v55;
      v56 = *v55--;
      --v4;
    }

    while (*(v54 + v56) != 1);
    goto LABEL_71;
  }

  if (v5 == 65)
  {
    v6 = v2 + 2;
    *(a1 + 136) = v6;
    if (v6 != v3)
    {
      v17 = sub_1001593B0(a1, "CCEPT");
      v4 = *(a1 + 136);
      if (v17)
      {
        v18 = *(a1 + 8);
        if (v4 == *(a1 + 128))
        {
          v19 = *v18;
        }

        else
        {
          v19 = *v18;
          if (*(v19 + *v4 + 32) == 2)
          {
            *(a1 + 136) = v4 + 1;
            v10 = a1;
            v11 = 31;
            goto LABEL_29;
          }
        }

        v51 = v19 + 32;
        v52 = v4 - 1;
        do
        {
          *(a1 + 136) = v52;
          v53 = *v52--;
          --v4;
        }

        while (*(v51 + v53) != 1);
        goto LABEL_71;
      }

      goto LABEL_69;
    }

    v32 = **(a1 + 8) + 32;
    do
    {
      *(a1 + 136) = v4;
      v33 = *v4--;
      --v6;
    }

    while (*(v32 + v33) != 1);
    goto LABEL_67;
  }

  if (v5 == 67)
  {
    v6 = v2 + 2;
    *(a1 + 136) = v6;
    if (v6 == v3)
    {
      v40 = **(a1 + 8) + 32;
      do
      {
        *(a1 + 136) = v4;
        v41 = *v4--;
        --v6;
      }

      while (*(v40 + v41) != 1);
      goto LABEL_67;
    }

    v24 = sub_1001593B0(a1, "OMMIT");
    v4 = *(a1 + 136);
    if (v24)
    {
      v25 = *(a1 + 8);
      if (v4 == *(a1 + 128))
      {
        v26 = *v25;
      }

      else
      {
        v26 = *v25;
        if (*(v26 + *v4 + 32) == 2)
        {
          *(a1 + 136) = v4 + 1;
          sub_100154BB4(a1, 32, 0x18uLL)[4] = 2;
          goto LABEL_40;
        }
      }

      v60 = v26 + 32;
      v61 = v4 - 1;
      do
      {
        *(a1 + 136) = v61;
        v62 = *v61--;
        --v4;
      }

      while (*(v60 + v62) != 1);
      goto LABEL_71;
    }

LABEL_69:
    v48 = **(a1 + 8) + 32;
    v49 = v4 - 1;
    do
    {
      *(a1 + 136) = v49;
      v50 = *v49--;
      --v4;
    }

    while (*(v48 + v50) != 1);
LABEL_71:
    v47 = &v4[-*(a1 + 120)];
    goto LABEL_72;
  }

  if (v5 != 70)
  {
    goto LABEL_69;
  }

  v6 = v2 + 2;
  *(a1 + 136) = v6;
  v7 = *(a1 + 8);
  if (v6 != v3)
  {
    v8 = *v7;
    if (*(*v7 + *v6 + 32) == 2)
    {
      goto LABEL_10;
    }

    v9 = sub_1001593B0(a1, "AIL");
    v6 = *(a1 + 136);
    if (v9)
    {
      v3 = *(a1 + 128);
      v8 = **(a1 + 8);
LABEL_10:
      if (v6 != v3 && *(v8 + *v6 + 32) == 2)
      {
        *(a1 + 136) = v6 + 1;
        v10 = a1;
        v11 = 30;
LABEL_29:
        sub_100154BB4(v10, v11, 0x10uLL);
        return 1;
      }

      v44 = v8 + 32;
      v45 = v6 - 1;
      do
      {
        *(a1 + 136) = v45;
        v46 = *v45--;
        --v6;
      }

      while (*(v44 + v46) != 1);
      goto LABEL_67;
    }

    v4 = *(a1 + 136);
    goto LABEL_69;
  }

  v36 = *v7 + 32;
  do
  {
    *(a1 + 136) = v4;
    v37 = *v4--;
    --v6;
  }

  while (*(v36 + v37) != 1);
LABEL_67:
  v47 = &v6[-*(a1 + 120)];
LABEL_72:
  sub_100154748(a1, 20, v47);
  return 0;
}

void sub_10015891C(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_100033FD0();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_1000E3DEC(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t sub_1001589F4(uint64_t a1, void *a2, _BYTE *a3, int a4)
{
  std::locale::locale(&v24);
  v26 = 0u;
  v27 = 0u;
  __sb = off_1002B4EF0;
  v25 = 0u;
  v20.__loc_ = 0;
  v19[1] = 0;
  std::ios_base::init(&v20, &__sb);
  v21 = 0;
  v22 = -1;
  v7 = *a2;
  v8 = std::locale::use_facet(&v18, &std::numpunct<char>::id);
  v9 = (v8->__vftable[1].~facet_0)(v8);
  v10 = memchr(v7, v9, a3 - v7);
  if (v10)
  {
    a3 = v10;
  }

  std::locale::~locale(&v18);
  (__sb[3])(&__sb, *a2, &a3[-*a2]);
  std::ios_base::clear((v19 + *(v19[0] - 24)), 0);
  if (a4 >= 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = -a4;
  }

  if (v11 == 8)
  {
    v12 = 64;
  }

  else
  {
    v12 = 2;
  }

  if (v11 == 16)
  {
    v13 = 8;
  }

  else
  {
    v13 = v12;
  }

  *(&v19[1] + *(v19[0] - 24)) = *(&v19[1] + *(v19[0] - 24)) & 0xFFFFFFB5 | v13;
  v18.__locale_ = 0;
  v14 = std::istream::operator>>();
  if ((*(v14 + *(*v14 - 24) + 32) & 5) != 0)
  {
    locale = -1;
  }

  else
  {
    if (*(&v25 + 1) >= v26)
    {
      v16 = (__sb[7])(&__sb);
    }

    else
    {
      v16 = v26 - *(&v25 + 1);
    }

    *a2 = &a3[-v16];
    locale = v18.__locale_;
  }

  std::istream::~istream();
  std::locale::~locale(&v24);
  return locale;
}

void sub_100158CB0(_Unwind_Exception *a1)
{
  std::istream::~istream();
  *(v3 - 128) = v1;
  std::locale::~locale(v2 + 1);
  _Unwind_Resume(a1);
}

int *sub_100158CF8(uint64_t a1, char *a2, char *a3, unsigned int a4)
{
  if (a2 == a3)
  {
    v7 = 0x4000000000000000;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = *a2++;
      v5 ^= (v5 << 6) + (v5 >> 2) + 2654435769u + v6;
    }

    while (a2 != a3);
    v7 = ((v5 % 0x7FFFFFFF) << 32) | 0x4000000000000000;
  }

  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v9 >= v8)
  {
    v11 = (v9 - *a1) >> 3;
    if ((v11 + 1) >> 61)
    {
      sub_100033FD0();
    }

    v12 = v8 - *a1;
    v13 = v12 >> 2;
    if (v12 >> 2 <= (v11 + 1))
    {
      v13 = v11 + 1;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    if (v14)
    {
      sub_100044B08(a1, v14);
    }

    v15 = (8 * v11);
    *v15 = v7 | a4;
    v10 = (8 * v11 + 8);
    v16 = *(a1 + 8) - *a1;
    v17 = v15 - v16;
    memcpy(v15 - v16, *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v10;
    *(a1 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v9 = v7 | a4;
    v10 = (v9 + 1);
  }

  *(a1 + 8) = v10;
  v19 = *a1;

  return sub_10015922C(v19, v10);
}

uint64_t sub_100158E58(uint64_t a1)
{
  v1 = *(*a1 + 40);
  v2 = *(a1 + 136);
  while (1)
  {
    v3 = v2;
    v4 = *v2;
    if (v4 > 114)
    {
      if (v4 == 120)
      {
        v1 = v1 | 0x800;
      }

      else
      {
        if (v4 != 115)
        {
          return v1;
        }

        v1 = v1 & 0xFFFFCFFF | 0x1000;
      }

      goto LABEL_11;
    }

    if (v4 == 105)
    {
      v1 = v1 | 0x100000;
      goto LABEL_11;
    }

    if (v4 != 109)
    {
      break;
    }

    v1 = v1 & 0xFFFFFBFF;
LABEL_11:
    v2 = v3 + 1;
    *(a1 + 136) = v3 + 1;
    if (v3 + 1 == *(a1 + 128))
    {
      v5 = **(a1 + 8) + 32;
      do
      {
        *(a1 + 136) = v3;
        v6 = *v3--;
      }

      while (*(v5 + v6) != 1);
LABEL_14:
      sub_100154748(a1, 8, &v3[-*(a1 + 120) + 1]);
      return 0;
    }
  }

  if (v4 == 45)
  {
    v8 = v3 + 1;
    *(a1 + 136) = v3 + 1;
    v9 = *(a1 + 128);
    if (v3 + 1 == v9)
    {
      v13 = **(a1 + 8) + 32;
      do
      {
        *(a1 + 136) = v3;
        v14 = *v3--;
      }

      while (*(v13 + v14) != 1);
    }

    else
    {
      do
      {
        v10 = *v8;
        if (v10 > 0x72)
        {
          if (v10 == 120)
          {
            v1 = v1 & 0xFFFFF7FF;
          }

          else
          {
            if (v10 != 115)
            {
              return v1;
            }

            v1 = v1 & 0xFFFFCFFF | 0x2000;
          }
        }

        else if (v10 == 105)
        {
          v1 = v1 & 0xFFEFFFFF;
        }

        else
        {
          if (v10 != 109)
          {
            return v1;
          }

          v1 = v1 | 0x400;
        }

        *(a1 + 136) = ++v8;
      }

      while (v8 != v9);
      v11 = **(a1 + 8) + 32;
      v3 = v8 - 1;
      do
      {
        *(a1 + 136) = v3;
        v12 = *v3--;
      }

      while (*(v11 + v12) != 1);
    }

    goto LABEL_14;
  }

  return v1;
}

char *sub_100158FDC(void *a1, uint64_t a2, int a3, unint64_t a4)
{
  v7 = *a1;
  v8 = *(*a1 + 352);
  v9 = (*(*a1 + 360) - v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(*a1 + 360) = v8 + v9;
  v10 = a1[2];
  if (v10)
  {
    *(v10 + 8) = v9 - v10 + v8;
    v11 = a1[2];
    v7 = *a1;
    v8 = *(*a1 + 352);
  }

  else
  {
    v11 = 0;
  }

  v12 = v11 - v8;
  result = sub_100159288((v7 + 344), a2, a4);
  *(result + 1) = a4;
  *result = a3;
  a1[2] = *(*a1 + 352) + a4 + v12;
  return result;
}

std::locale *sub_10015907C(std::locale *a1)
{
  std::locale::~locale(a1 + 1);
  return a1;
}

void sub_1001590C0(std::locale *a1)
{
  std::locale::~locale(a1 + 1);

  operator delete();
}

void *sub_100159124(void *result, uint64_t a2, uint64_t a3)
{
  result[2] = a2;
  result[3] = a2;
  result[4] = a2 + a3;
  return result;
}

double sub_100159134@<D0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if ((a4 & 0x10) != 0)
  {
    v7 = -1;
    goto LABEL_19;
  }

  v5 = a1[2];
  v6 = a1[4] - v5;
  if (!a3)
  {
    v7 = -1;
    if (a2 < 0 || v6 < a2)
    {
      goto LABEL_19;
    }

    v9 = v5 + a2;
LABEL_15:
    v8 = a1[4];
    goto LABEL_16;
  }

  if (a3 == 1)
  {
    v7 = -1;
    v10 = a1[3] - v5 + a2;
    if (v10 < 0 || v10 > v6)
    {
      goto LABEL_19;
    }

    v9 = a1[3] + a2;
    goto LABEL_15;
  }

  if (a3 != 2)
  {
    v9 = a1[3];
    goto LABEL_18;
  }

  v7 = -1;
  if ((a2 & 0x8000000000000000) == 0 && v6 >= a2)
  {
    v8 = a1[4];
    v9 = v8 - a2;
LABEL_16:
    a1[3] = v9;
    a1[4] = v8;
LABEL_18:
    v7 = v9 - v5;
  }

LABEL_19:
  result = 0.0;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 128) = v7;
  return result;
}

double sub_1001591E4@<D0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if ((a3 & 0x10) == 0)
  {
    v4 = a1[2];
    v5 = *(a2 + 128);
    if (v5 <= a1[4] - v4)
    {
      v6 = v4 + v5;
      v7 = a1[4];
      a1[3] = v6;
      a1[4] = v7;
    }
  }

  result = 0.0;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 128) = -1;
  return result;
}

int *sub_10015922C(int *result, int *a2)
{
  if (result != a2)
  {
    v2 = a2 - 2;
    if (a2 - 2 != result)
    {
      v3 = a2 - 4;
      do
      {
        if (v2[1] >= v3[1])
        {
          break;
        }

        v4 = *v3;
        *v3 = *v2;
        *v2 = v4;
        v5 = v3[1];
        v3[1] = v2[1];
        v2[1] = v5;
        v2 -= 2;
        v3 -= 2;
      }

      while (v2 != result);
    }
  }

  return result;
}

char *sub_100159288(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = a1[2];
  if (*a1 - v6 < a3)
  {
    sub_10015930C(a1, v6 + a3 - a1[1]);
    v6 = a1[2];
  }

  v7 = (a1[1] + a2);
  memmove(&v7[a3], v7, v6 - v7);
  a1[2] += a3;
  return v7;
}

void sub_10015930C(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *a1 - v3;
  }

  else
  {
    v4 = 1024;
  }

  do
  {
    v5 = v4;
    v4 *= 2;
  }

  while (v5 < a2);
  v6 = *(a1 + 16) - v3;
  v7 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = operator new(v7);
  v9 = v8;
  v10 = *(a1 + 8);
  if (v10)
  {
    memcpy(v8, *(a1 + 8), v6);
  }

  operator delete(v10);
  *(a1 + 8) = v9;
  *(a1 + 16) = &v9[v6];
  *a1 = &v9[v7];
}

uint64_t sub_1001593B0(uint64_t a1, _BYTE *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 1;
  }

  v3 = *(a1 + 136);
  v4 = a2 + 1;
  while (v2 == *v3)
  {
    *(a1 + 136) = v3 + 1;
    if (v3 + 1 == *(a1 + 128))
    {
      v9 = **(a1 + 8) + 32;
      do
      {
        *(a1 + 136) = v3;
        v10 = *v3--;
      }

      while (*(v9 + v10) != 1);
      goto LABEL_14;
    }

    v5 = *v4++;
    v2 = v5;
    ++v3;
    if (!v5)
    {
      return 1;
    }
  }

  v7 = **(a1 + 8) + 32;
  if (*(v7 + *v3) == 1)
  {
    goto LABEL_15;
  }

  --v3;
  do
  {
    *(a1 + 136) = v3;
    v8 = *v3--;
  }

  while (*(v7 + v8) != 1);
LABEL_14:
  ++v3;
LABEL_15:
  sub_100154748(a1, 20, &v3[-*(a1 + 120)]);
  return 0;
}

char *sub_100159480(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 49) == 1)
  {
    return sub_100159F38(a1, a2);
  }

  else
  {
    return sub_10015A8D4(a1, a2);
  }
}

uint64_t sub_10015949C(uint64_t a1)
{
  sub_10001C4B0(a1 + 64, *(a1 + 72));
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  sub_10001C4B0(a1, *(a1 + 8));
  return a1;
}

char *sub_1001594E8(void *a1, uint64_t a2)
{
  v4 = a1[2];
  if (v4 && *v4 == 2)
  {
    v5 = v4 - *(*a1 + 352);
    sub_10015AFCC((*a1 + 344), 1uLL);
    v6 = &v5[*(*a1 + 352)];
    a1[2] = v6;
    if (*(a1 + 24) == 1)
    {
      v7 = *(*a1[1] + 8);
      LOBYTE(a2) = (*(*v7 + 40))(v7, a2);
    }

    v8 = *(v6 + 4);
    v6[v8 + 24] = a2;
    *(v6 + 4) = v8 + 1;
  }

  else
  {
    v6 = sub_100154BB4(a1, 2, 0x19uLL);
    *(v6 + 4) = 1;
    if (*(a1 + 24) == 1)
    {
      v9 = *(*a1[1] + 8);
      LOBYTE(a2) = (*(*v9 + 40))(v9, a2);
    }

    v6[24] = a2;
  }

  return v6;
}

uint64_t sub_100159614(std::string *a1)
{
  v2 = &a1[5].__r_.__value_.__r.__words[2];
  v3 = a1[5].__r_.__value_.__r.__words[2];
  size = a1[5].__r_.__value_.__l.__size_;
  if (v3 == size)
  {
    v9 = &v3[-a1[5].__r_.__value_.__r.__words[0]];
    sub_100007ECC(&__p, "Escape sequence terminated prematurely.");
    sub_100154EBC(a1, 5, v9, &__p);
    goto LABEL_9;
  }

  v5 = a1->__r_.__value_.__l.__size_;
  v6 = *v3;
  v7 = *v5 + 32;
  v8 = *(v7 + v6);
  if (v8 <= 0x1F)
  {
    if (*(v7 + v6) > 0x1Cu)
    {
      switch(v8)
      {
        case 0x1Du:
          LOBYTE(v6) = 12;
          break;
        case 0x1Eu:
          LOBYTE(v6) = 10;
          break;
        case 0x1Fu:
          LOBYTE(v6) = 13;
          break;
      }

      goto LABEL_48;
    }

    if (v8 != 17)
    {
      if (v8 == 18)
      {
        LOBYTE(v6) = 8;
      }

      else if (v8 == 28)
      {
        LOBYTE(v6) = 7;
      }

      goto LABEL_48;
    }

    v59 = v3;
    if (sub_1001589F4(v5, &v59, v3 + 1, 8))
    {
      v19 = *a1->__r_.__value_.__l.__size_ + 32;
      v20 = a1[5].__r_.__value_.__r.__words[2];
      v21 = (v20 - 1);
      do
      {
        *v2 = v21;
        v22 = *v21--;
        --v20;
      }

      while (*(v19 + v22) != 12);
      v23 = v20 - a1[5].__r_.__value_.__r.__words[0];
      sub_100007ECC(&__p, "Invalid octal escape sequence.");
      sub_100154EBC(a1, 5, v23, &__p);
      goto LABEL_9;
    }

    v34 = size - v3;
    if (size - v3 >= 4)
    {
      v34 = 4;
    }

    v12 = sub_1001589F4(a1->__r_.__value_.__l.__size_, v2, (a1[5].__r_.__value_.__r.__words[2] + v34), 8);
    if (v12 >= 0x80)
    {
      v35 = *a1->__r_.__value_.__l.__size_ + 32;
      v36 = a1[5].__r_.__value_.__r.__words[2];
      v37 = (v36 - 1);
      do
      {
        *v2 = v37;
        v38 = *v37--;
        --v36;
      }

      while (*(v35 + v38) != 12);
      v39 = v36 - a1[5].__r_.__value_.__r.__words[0];
      sub_100007ECC(&__p, "Octal escape sequence is invalid.");
      sub_100154EBC(a1, 5, v39, &__p);
      goto LABEL_9;
    }

LABEL_69:
    LOBYTE(v6) = v12;
    return v6;
  }

  if (*(v7 + v6) <= 0x22u)
  {
    switch(v8)
    {
      case ' ':
        LOBYTE(v6) = 9;
        break;
      case '!':
        LOBYTE(v6) = 11;
        break;
      case '""':
        v10 = v3 + 1;
        *v2 = (v3 + 1);
        if (v3 + 1 == size)
        {
          do
          {
            *v2 = v3;
            v15 = *v3--;
            --v10;
          }

          while (*(v7 + v15) != 12);
          v16 = &v10[-a1[5].__r_.__value_.__r.__words[0]];
          sub_100007ECC(&__p, "Hexadecimal escape sequence terminated prematurely.");
          sub_100154EBC(a1, 5, v16, &__p);
        }

        else if (*(v7 + *v10) == 15)
        {
          v11 = v3 + 2;
          *v2 = (v3 + 2);
          if (v3 + 2 == size)
          {
            do
            {
              *v2 = v10;
              v17 = *v10--;
              --v11;
            }

            while (*(v7 + v17) != 12);
            v18 = &v11[-a1[5].__r_.__value_.__r.__words[0]];
            sub_100007ECC(&__p, "Missing } in hexadecimal escape sequence.");
            sub_100154EBC(a1, 5, v18, &__p);
          }

          else
          {
            v12 = sub_1001589F4(v5, v2, size, 16);
            v13 = a1[5].__r_.__value_.__r.__words[2];
            v14 = *a1->__r_.__value_.__l.__size_;
            if (v13 != a1[5].__r_.__value_.__l.__size_ && v12 <= 0x7F && *(v14 + *v13 + 32) == 16)
            {
              *v2 = (v13 + 1);
              goto LABEL_69;
            }

            v48 = v14 + 32;
            v49 = v13 - 1;
            do
            {
              *v2 = v49;
              v50 = *v49--;
              --v13;
            }

            while (*(v48 + v50) != 12);
            v51 = &v13[-a1[5].__r_.__value_.__r.__words[0]];
            sub_100007ECC(&__p, "Hexadecimal escape sequence was invalid.");
            sub_100154EBC(a1, 10, v51, &__p);
          }
        }

        else
        {
          v40 = size - v10;
          if (size - v10 >= 2)
          {
            v40 = 2;
          }

          v12 = sub_1001589F4(v5, v2, &v10[v40], 16);
          if (v12 < 0x100)
          {
            goto LABEL_69;
          }

          v43 = *a1->__r_.__value_.__l.__size_ + 32;
          v44 = a1[5].__r_.__value_.__r.__words[2];
          v45 = (v44 - 1);
          do
          {
            *v2 = v45;
            v46 = *v45--;
            --v44;
          }

          while (*(v43 + v46) != 12);
          v47 = v44 - a1[5].__r_.__value_.__r.__words[0];
          sub_100007ECC(&__p, "Escape sequence did not encode a valid character.");
          sub_100154EBC(a1, 5, v47, &__p);
        }

LABEL_9:
        if (v62 < 0)
        {
          operator delete(__p);
        }

        goto LABEL_11;
    }

    goto LABEL_48;
  }

  if (v8 == 35)
  {
    v24 = (v3 + 1);
    *v2 = (v3 + 1);
    if (v3 + 1 == size)
    {
      do
      {
        *v2 = v3;
        v25 = *v3--;
        --v24;
      }

      while (*(v7 + v25) != 12);
      v26 = &v24[-a1[5].__r_.__value_.__r.__words[0]];
      sub_100007ECC(&__p, "ASCII escape sequence terminated prematurely.");
      sub_100154EBC(a1, 5, v26, &__p);
      goto LABEL_9;
    }

    LODWORD(v6) = *v24 - ((*v24 + ((*v24 >> 10) & 0x1F)) & 0xFFFFFFE0);
    ++v3;
LABEL_48:
    *v2 = (v3 + 1);
    return v6;
  }

  if (v8 != 56)
  {
    if (v8 == 38)
    {
      LOBYTE(v6) = 27;
    }

    goto LABEL_48;
  }

  v28 = v3 + 1;
  *v2 = (v3 + 1);
  if (v3 + 1 == size)
  {
    do
    {
      *v2 = v3;
      v33 = *v3--;
      --v28;
    }

    while (*(v7 + v33) != 12);
    goto LABEL_93;
  }

  if (*(v7 + *v28) != 15)
  {
LABEL_91:
    v56 = *v5 + 32;
    v57 = v28 - 1;
    do
    {
      *v2 = v57;
      v58 = *v57--;
      --v28;
    }

    while (*(v56 + v58) != 12);
LABEL_93:
    v32 = &v28[-a1[5].__r_.__value_.__r.__words[0]];
    goto LABEL_94;
  }

  v29 = v3 + 1;
  do
  {
    if (*(v7 + *v28) == 16)
    {
      *v2 = (v28 + 1);
      sub_10015B024(v3 + 2, *v5, v28, &__p);
      v41 = v62;
      if (v62 < 0)
      {
        if (v61)
        {
          if (v61 == 1)
          {
            p_p = __p;
            goto LABEL_83;
          }

          operator delete(__p);
LABEL_90:
          v5 = a1->__r_.__value_.__l.__size_;
          v28 = a1[5].__r_.__value_.__r.__words[2];
          goto LABEL_91;
        }
      }

      else if (v62)
      {
        if (v62 == 1)
        {
          p_p = &__p;
LABEL_83:
          LOBYTE(v6) = *p_p;
          goto LABEL_87;
        }

        goto LABEL_90;
      }

      v52 = *a1->__r_.__value_.__l.__size_ + 32;
      v53 = a1[5].__r_.__value_.__r.__words[2];
      v54 = (v53 - 1);
      do
      {
        *v2 = v54;
        v55 = *v54--;
        --v53;
      }

      while (*(v52 + v55) != 12);
      sub_100154748(a1, 3, v53 - a1[5].__r_.__value_.__r.__words[0]);
      LOBYTE(v6) = 0;
      v41 = v62;
LABEL_87:
      if (v41 < 0)
      {
        operator delete(__p);
      }

      return v6;
    }

    *v2 = ++v28;
    ++v29;
  }

  while (v28 != size);
  v30 = v28 - 1;
  do
  {
    *v2 = v30;
    v31 = *v30--;
    --v29;
  }

  while (*(v7 + v31) != 12);
  v32 = &v29[-a1[5].__r_.__value_.__r.__words[0]];
LABEL_94:
  sub_100154748(a1, 5, v32);
LABEL_11:
  LOBYTE(v6) = 0;
  return v6;
}