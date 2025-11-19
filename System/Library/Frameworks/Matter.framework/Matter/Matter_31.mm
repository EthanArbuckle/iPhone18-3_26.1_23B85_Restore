uint64_t sub_239408250(__int128 *a1, void *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13 = 0;
  result = sub_239407F64(a1, &v12, 2, 1);
  if (result)
  {
    v4 = v13;
    if (!v13)
    {
      goto LABEL_9;
    }

    v5 = *v12;
    if (v13 == 1)
    {
LABEL_4:
      v14[0] = 0x101010101010101 * (v5 >> 7);
      v6 = v12 - 1;
      v7 = v14;
      do
      {
        *v7++ = v6[v4--];
      }

      while (v4);
      *a2 = v14[0];
      result = 1;
      goto LABEL_10;
    }

    v8 = v12[1];
    if (!*v12 && (v8 & 0x80000000) == 0)
    {
LABEL_9:
      result = 0;
      goto LABEL_10;
    }

    result = 0;
    v11 = v5 != 255 || (v8 & 0x80u) == 0;
    if (v13 <= 8 && v11)
    {
      goto LABEL_4;
    }
  }

LABEL_10:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_239408344(unsigned __int8 **a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a1;
  v4 = **a1;
  if (a2)
  {
    *a2 = v4 >> 7;
  }

  if (v2 == 1)
  {
    return 1;
  }

  v6 = *(v3 + 1);
  if (!v4 && (v6 & 0x80000000) == 0)
  {
    return 0;
  }

  return v4 != 255 || (v6 & 0x80u) == 0;
}

uint64_t sub_239408398(__int128 *a1, _DWORD *a2)
{
  v6 = 0;
  v7 = 0;
  v3 = sub_239407F64(a1, &v6, 1, 1);
  result = 0;
  if (v3 && v7 == 1)
  {
    v5 = *v6;
    if ((v5 - 1) >= 0xFE)
    {
      *a2 = v5 != 0;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_239408418(__int128 *a1, void *a2, int *a3, int a4)
{
  v11 = *a1;
  v10 = 0;
  v8 = 0;
  if (!sub_239408074(&v11, &v10) || v10 != a4 || (v8 = 1, result = sub_239407F64(a1, a2, a4, 1), result))
  {
    if (a3)
    {
      *a3 = v8;
    }

    return 1;
  }

  return result;
}

uint64_t sub_2394084B0(__int128 *a1, void *a2, _DWORD *a3, int a4)
{
  v9 = 0uLL;
  v8 = 0;
  result = sub_239408418(a1, &v9, &v8, a4);
  if (result)
  {
    if (!v8)
    {
      *a2 = 0;
      a2[1] = 0;
      if (!a3)
      {
        return 1;
      }

      goto LABEL_6;
    }

    v7 = sub_239407F64(&v9, a2, 4, 1);
    result = 0;
    if (v7 && !*(&v9 + 1))
    {
      if (!a3)
      {
        return 1;
      }

LABEL_6:
      *a3 = v8;
      return 1;
    }
  }

  return result;
}

uint64_t sub_239408540(__int128 *a1, unint64_t *a2, int a3, unint64_t a4)
{
  v9 = 0uLL;
  v8 = 0;
  result = sub_239408418(a1, &v9, &v8, a3);
  if (result)
  {
    if (v8)
    {
      v7 = sub_239408120(&v9, a2);
      result = 0;
      if (!v7 || *(&v9 + 1))
      {
        return result;
      }
    }

    else
    {
      *a2 = a4;
    }

    return 1;
  }

  return result;
}

uint64_t sub_2394085BC(__int128 *a1, int *a2, int a3, int a4)
{
  v11 = 0uLL;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  result = sub_239408418(a1, &v11, &v8, a3);
  if (result)
  {
    if (!v8)
    {
LABEL_9:
      *a2 = a4;
      return 1;
    }

    v7 = sub_239407F64(&v11, &v9, 1, 1);
    result = 0;
    if (v7 && v10 == 1 && !*(&v11 + 1))
    {
      a4 = *v9;
      if (*v9)
      {
        if (a4 != 255)
        {
          return 0;
        }

        a4 = 1;
      }

      goto LABEL_9;
    }
  }

  return result;
}

BOOL sub_23940866C(unsigned __int8 **a1)
{
  v1 = a1[1];
  if (!v1)
  {
    return 0;
  }

  v2 = **a1;
  if (v2 > 7)
  {
    return 0;
  }

  if (!**a1)
  {
    return 1;
  }

  if (v1 == 1)
  {
    return 0;
  }

  return (v1[*a1 - 1] & ~(-1 << v2)) == 0;
}

BOOL sub_2394086BC(uint64_t a1, unsigned int a2)
{
  result = sub_23940866C(a1);
  if (result)
  {
    v5 = (a2 >> 3) + 1;
    if (*(a1 + 8) <= v5)
    {
      return 0;
    }

    else
    {
      return (*(*a1 + v5) >> (~a2 & 7)) & 1;
    }
  }

  return result;
}

BOOL sub_23940871C(unsigned __int8 **a1)
{
  v1 = a1[1];
  if (!v1)
  {
    return 0;
  }

  LOBYTE(v2) = 0;
  v3 = *a1;
  while (1)
  {
    v4 = v2;
    if (!v1)
    {
      break;
    }

    v5 = *v3++;
    v2 = v5;
    --v1;
    if ((v4 & 0x80) == 0 && v2 == 128)
    {
      return 0;
    }
  }

  return (v2 & 0x80) == 0;
}

uint64_t sub_23940875C(unsigned __int8 **a1)
{
  memset(v15, 0, sizeof(v15));
  if (sub_2394065F4(v15, 0x20uLL))
  {
    v2 = 0;
    v3 = *a1;
    v4 = a1[1];
    while (v4)
    {
      if (v2 >> 57)
      {
        break;
      }

      v6 = *v3++;
      v5 = v6;
      if (!v2 && v5 == 128)
      {
        break;
      }

      v7 = v5 & 0x7F | (v2 << 7);
      --v4;
      v2 = v7;
      if ((v5 & 0x80) == 0)
      {
        v8 = v7 - 80;
        if (v7 < 0x50)
        {
          if (!sub_239408930(v15, v7 > 0x27) || !sub_239406ACC(v15, 0x2Eu))
          {
            break;
          }

          if (v7 >= 0x28)
          {
            v9 = v7 - 40;
          }

          else
          {
            v9 = v7;
          }
        }

        else
        {
          if (!sub_239406C48(v15, "2.", 2uLL))
          {
            break;
          }

LABEL_16:
          v9 = v8;
        }

        if (!sub_239408930(v15, v9))
        {
          break;
        }

        if (v4)
        {
          v8 = 0;
          while (v4)
          {
            if (v8 >> 57)
            {
              break;
            }

            v11 = *v3++;
            v10 = v11;
            if (!v8 && v10 == 128)
            {
              break;
            }

            v8 = v10 & 0x7F | (v8 << 7);
            --v4;
            if ((v10 & 0x80) == 0)
            {
              if (sub_239406ACC(v15, 0x2Eu))
              {
                goto LABEL_16;
              }

              goto LABEL_30;
            }
          }
        }

        else
        {
          v13 = 0;
          v14 = 0;
          if (sub_239406ACC(v15, 0) && sub_2394066A4(v15, &v14, &v13))
          {
            return v14;
          }
        }

        break;
      }
    }
  }

LABEL_30:
  sub_239406688(v15);
  return 0;
}

uint64_t sub_2394088D0(void *a1, unint64_t *a2)
{
  v2 = 0;
  for (i = a1[1] - 1; i != -1; --i)
  {
    v4 = (*a1)++;
    a1[1] = i;
    if (v2 >> 57)
    {
      break;
    }

    v5 = *v4;
    if (!v2 && v5 == 128)
    {
      break;
    }

    v6 = v5 & 0x7F | (v2 << 7);
    v2 = v6;
    if ((v5 & 0x80) == 0)
    {
      *a2 = v6;
      return 1;
    }
  }

  return 0;
}

uint64_t sub_239408930(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x18uLL, "%llu", a2);
  v3 = strlen(__str);
  result = sub_239406C48(a1, __str, v3);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394089C0(__int128 *a1, int a2, int a3, int *a4)
{
  v31 = 0;
  v30 = *a1;
  result = sub_239408CB0(&v30, &v31);
  if (a2)
  {
    if (!result)
    {
      return result;
    }

    v8 = v31;
    result = sub_239408CB0(&v30, &v31);
    if (!result)
    {
      return result;
    }

    v9 = v31 + 100 * v8;
  }

  else
  {
    if (!result)
    {
      return result;
    }

    if (v31 >= 50)
    {
      v10 = 1900;
    }

    else
    {
      v10 = 2000;
    }

    v9 = v10 + v31;
    if (v10 + v31 > 2049)
    {
      return 0;
    }
  }

  v36 = 0;
  v11 = sub_239408CB0(&v30, &v36);
  result = 0;
  if (!v11)
  {
    return result;
  }

  v12 = v36;
  if ((v36 - 13) < 0xFFFFFFF4)
  {
    return result;
  }

  v35 = 0;
  result = sub_239408CB0(&v30, &v35);
  if (!result)
  {
    return result;
  }

  v13 = v35;
  if (v35 < 1)
  {
    return 0;
  }

  if (((1 << v12) & 0x15AA) != 0)
  {
    if (v35 > 0x1F)
    {
      return 0;
    }
  }

  else if (((1 << v12) & 0xA50) != 0)
  {
    if (v35 >= 0x1F)
    {
      return 0;
    }
  }

  else
  {
    HIDWORD(v24) = -1030792151 * v9 + 85899344;
    LODWORD(v24) = HIDWORD(v24);
    v23 = v24 >> 2;
    v25 = (v9 & 3) == 0 && v23 > 0x28F5C28;
    v26 = v25;
    HIDWORD(v27) = -1030792151 * v9 + 85899344;
    LODWORD(v27) = HIDWORD(v27);
    if ((v27 >> 4) < 0xA3D70B || v26)
    {
      if (v35 >= 0x1E)
      {
        return 0;
      }
    }

    else if (v35 >= 0x1D)
    {
      return 0;
    }
  }

  v34 = 0;
  v14 = sub_239408CB0(&v30, &v34);
  result = 0;
  if (!v14)
  {
    return result;
  }

  v15 = v34;
  if (v34 > 23)
  {
    return result;
  }

  v33 = 0;
  v16 = sub_239408CB0(&v30, &v33);
  result = 0;
  if (!v16)
  {
    return result;
  }

  v17 = v33;
  if (v33 > 59)
  {
    return result;
  }

  v32 = 0;
  v18 = sub_239408CB0(&v30, &v32);
  result = 0;
  if (!v18)
  {
    return result;
  }

  v19 = v32;
  if (v32 > 59)
  {
    return result;
  }

  if (!*(&v30 + 1))
  {
    return 0;
  }

  v20 = *v30;
  v21 = *(&v30 + 1) - 1;
  *&v30 = v30 + 1;
  --*(&v30 + 1);
  if (v20 == 43)
  {
    v22 = 1;
LABEL_43:
    if (!a3)
    {
      return 0;
    }

    v29 = 0;
    if (!sub_239408CB0(&v30, &v29 + 1))
    {
      return 0;
    }

    v28 = HIDWORD(v29);
    if (SHIDWORD(v29) > 23 || !sub_239408CB0(&v30, &v29) || v29 >= 60)
    {
      return 0;
    }

    LODWORD(result) = (3600 * v28 + 60 * v29) * v22;
    v21 = *(&v30 + 1);
    goto LABEL_49;
  }

  result = 0;
  if (v20 != 90)
  {
    if (v20 != 45)
    {
      return result;
    }

    v22 = -1;
    goto LABEL_43;
  }

LABEL_49:
  if (v21)
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  a4[4] = v12 - 1;
  a4[5] = v9 - 1900;
  a4[2] = v15;
  a4[3] = v13;
  *a4 = v19;
  a4[1] = v17;
  if (!result)
  {
    return 1;
  }

  result = sub_239400390(a4, 0, result);
  if (result)
  {
    return 1;
  }

  return result;
}

BOOL sub_239408CB0(void *a1, _DWORD *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v5 = (*a1)++;
  a1[1] = v2 - 1;
  v6 = *v5;
  result = sub_2394503C0(v6);
  if (result)
  {
    v8 = a1[1];
    if (v8)
    {
      v9 = (*a1)++;
      a1[1] = v8 - 1;
      v10 = *v9;
      result = sub_2394503C0(v10);
      if (result)
      {
        *a2 = v10 + 10 * v6 - 528;
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_239408D54(void *a1, unsigned int *a2)
{
  v13 = 0;
  result = sub_239407860(a1, &v13);
  if (result)
  {
    v5 = v13;
    if (v13 < 0)
    {
      if ((v13 & 0xE0) == 0xC0)
      {
        v6 = 128;
        v7 = 31;
        v8 = 1;
      }

      else if ((v13 & 0xF0) == 0xE0)
      {
        v6 = 2048;
        v7 = 15;
        v8 = 2;
      }

      else
      {
        if ((v13 & 0xF8) != 0xF0)
        {
          return 0;
        }

        v6 = 0x10000;
        v7 = 7;
        v8 = 3;
      }

      v5 = (v7 & v13);
      while (1)
      {
        v9 = v5;
        result = sub_239407860(a1, &v13);
        if (!result)
        {
          break;
        }

        if ((v13 & 0xC0) != 0x80)
        {
          return 0;
        }

        v5 = (v9 << 6) | v13 & 0x3F;
        if (!--v8)
        {
          result = 0;
          if ((v9 & 0x7FE0) != 0x360)
          {
            v10 = v5 - 64976 < 0x20 || v9 << 6 >> 16 > 0x10;
            v11 = v10 || ((v9 << 6) & 0xFFFE | v13 & 0x3E) == 65534;
            if (!v11 && v5 >= v6)
            {
              goto LABEL_3;
            }
          }

          return result;
        }
      }
    }

    else
    {
LABEL_3:
      *a2 = v5;
      return 1;
    }
  }

  return result;
}

uint64_t sub_239408E84(void *a1, _DWORD *a2)
{
  v4 = 0;
  result = sub_239407860(a1, &v4);
  if (result)
  {
    *a2 = v4;
    return 1;
  }

  return result;
}

uint64_t sub_239408EC8(unsigned __int16 **a1, _DWORD *a2)
{
  v5 = 0;
  result = sub_239407890(a1, &v5);
  if (result)
  {
    result = 0;
    if ((v5 & 0xF800) != 0xD800 && v5 - 64976 >= 0x20 && (v5 & 0xFFFE) != 65534)
    {
      *a2 = v5;
      return 1;
    }
  }

  return result;
}

uint64_t sub_239408F3C(uint64_t *a1, int *a2)
{
  result = sub_239407940(a1, a2);
  if (result)
  {
    v4 = *a2;
    v6 = *a2 < 0x110000 && (*a2 - 65008) < 0xFFFFFFE0;
    if ((~v4 & 0xFFFE) == 0)
    {
      v6 = 0;
    }

    return (v4 & 0x1FF800) != 0xD800 && v6;
  }

  return result;
}

uint64_t sub_239408F9C(unsigned int a1)
{
  v1 = 2;
  v2 = 3;
  if (a1 >= 0x10000)
  {
    v2 = 4;
  }

  if (a1 >= 0x800)
  {
    v1 = v2;
  }

  if (a1 >= 0x80)
  {
    return v1;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_239408FC4(uint64_t a1, unsigned int a2)
{
  result = 0;
  if (HIWORD(a2) > 0x10u || (a2 & 0x1FF800) == 0xD800 || (a2 & 0xFFFE) == 0xFFFE || a2 - 64976 < 0x20)
  {
    return result;
  }

  if (a2 > 0x7F)
  {
    if (a2 > 0x7FF)
    {
      if (!HIWORD(a2))
      {
        result = sub_239406ACC(a1, (a2 >> 12) | 0xE0u);
        if (!result)
        {
          return result;
        }

        result = sub_239406ACC(a1, (a2 >> 6) & 0x3F | 0x80);
        if (!result)
        {
          return result;
        }

        v6 = a2 & 0x3F | 0x80;
        return sub_239406ACC(a1, v6) != 0;
      }

      result = sub_239406ACC(a1, (a2 >> 18) | 0xF0u);
      if (!result)
      {
        return result;
      }

      result = sub_239406ACC(a1, (a2 >> 12) & 0x3F | 0x80);
      if (!result)
      {
        return result;
      }

      v5 = (a2 >> 6) & 0x3F | 0x80;
    }

    else
    {
      v5 = (a2 >> 6) | 0xC0;
    }

    result = sub_239406ACC(a1, v5);
    if (!result)
    {
      return result;
    }

    v6 = a2 & 0x3F | 0x80;
    return sub_239406ACC(a1, v6) != 0;
  }

  return sub_239406ACC(a1, a2);
}

BOOL sub_23940915C(uint64_t a1, unsigned int a2)
{
  if (HIWORD(a2))
  {
    return 0;
  }

  result = 0;
  if ((a2 & 0xF800) != 0xD800 && a2 - 64976 >= 0x20 && (a2 & 0xFFFE) != 0xFFFE)
  {
    return sub_239406F68(a1, a2) != 0;
  }

  return result;
}

BOOL sub_2394091D0(uint64_t a1, unsigned int a2)
{
  result = 0;
  if ((a2 & 0x1FF800) != 0xD800 && a2 - 64976 >= 0x20 && HIWORD(a2) <= 0x10u && (a2 & 0xFFFE) != 0xFFFE)
  {
    return sub_239406F8C(a1, a2) != 0;
  }

  return result;
}

uint64_t sub_2394092E0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *(*a1 + 4);
  v5 = a4 - v4;
  if (a4 >= v4)
  {
    v9 = 0;
    v10 = *(a1 + 16);
    do
    {
      sub_239410D9C((a3 + v9), (a2 + v9), v10, *(a1 + 28));
      v9 += *(*a1 + 4);
    }

    while (v9 <= v5);
  }

  return 1;
}

uint64_t sub_23940935C(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 16);
  sub_23940FB98(a2, v3);
  sub_23940FB98(a2 + 2, v3 + 128);
  sub_23940FB98(a2 + 4, v3 + 256);
  return 1;
}

uint64_t sub_2394093E4(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 16);
  sub_23940FB98(a2, v3);
  sub_23940FB98(a2 + 2, v3 + 128);
  sub_23940FB98(a2, v3 + 256);
  return 1;
}

uint64_t sub_239409430(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *(*a1 + 4);
  v5 = a4 - v4;
  if (a4 >= v4)
  {
    v9 = 0;
    v10 = *(a1 + 16);
    do
    {
      sub_239412074((a3 + v9), (a2 + v9), v10, v10 + 32, v10 + 64, *(a1 + 28));
      v9 += *(*a1 + 4);
    }

    while (v9 <= v5);
  }

  return 1;
}

uint64_t sub_2394094CC(uint64_t a1, char *a2)
{
  v3 = *(a1 + 16);
  v4 = sub_23942E714(a1);
  *(v3 + 4) = 0;
  v5 = v3 + 4;
  v6 = *v3;
  if (v4 >= 128)
  {
    v7 = 128;
  }

  else
  {
    v7 = v4;
  }

  if (v6 >= 0x400)
  {
    v8 = 1024;
  }

  else
  {
    v8 = *v3;
  }

  if (v6 >= 1)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1024;
  }

  if (v4 < 1)
  {
    goto LABEL_14;
  }

  v10 = (v3 + 4);
  v11 = v7;
  do
  {
    v12 = *a2++;
    *v10++ = v12;
    --v11;
  }

  while (v11);
  if (v4 <= 127)
  {
LABEL_14:
    v13 = *(v5 + v7 - 1);
    v14 = (128 - v7);
    v15 = (v3 + 4);
    do
    {
      v13 = byte_2395C3138[(*v15 + v13)];
      v15[v4] = v13;
      ++v15;
      --v14;
    }

    while (v14);
  }

  v16 = (v9 + 7) >> 3;
  v17 = byte_2395C3138[(0xFFu >> (-v9 & 7)) & *(v5 + 128 - v16)];
  *(v5 + 128 - v16) = v17;
  if (v16 != 128)
  {
    v18 = v16 - 128;
    v19 = (128 - v16 + v3 + 3);
    do
    {
      v17 = byte_2395C3138[(v19[v16] ^ v17)];
      *v19-- = v17;
    }

    while (!__CFADD__(v18++, 1));
  }

  v21 = 0;
  do
  {
    v22 = v21 + 127;
    v21 -= 2;
  }

  while (v22 > 1);
  return 1;
}

uint64_t sub_2394095F8(uint64_t a1, uint64_t a2, int *a3, unint64_t a4)
{
  v4 = a4;
  v8 = *(a1 + 16);
  if (a4 >= 0x10000)
  {
    do
    {
      sub_2394096D8(a3, a2, 0x10000, (v8 + 4), (a1 + 52), *(a1 + 28));
      v4 -= 0x10000;
      a3 += 0x4000;
      a2 += 0x10000;
    }

    while (v4 >> 16);
  }

  if (v4)
  {
    sub_2394096D8(a3, a2, v4, (v8 + 4), (a1 + 52), *(a1 + 28));
  }

  return 1;
}

uint64_t sub_239409694(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 16);
  if (a2 == 3)
  {
    goto LABEL_4;
  }

  if (!a2)
  {
    a3 = 8 * sub_23942E714(a1);
LABEL_4:
    *v3 = a3;
    return 1;
  }

  return 0xFFFFFFFFLL;
}

int *sub_2394096D8(int *result, uint64_t a2, uint64_t a3, unsigned __int16 *a4, int8x8_t *a5, int a6)
{
  v6 = a5;
  v8 = a3;
  v10 = result;
  v46[1] = *MEMORY[0x277D85DE8];
  v11 = *a5;
  v12 = *a5;
  v13 = HIDWORD(*a5);
  if (!a6)
  {
    if (a3 >= 8)
    {
      do
      {
        v19 = a2;
        v20 = v12;
        v21 = v13;
        v12 = *v10;
        v13 = v10[1];
        v22 = v8;
        v8 -= 8;
        v23 = v10 + 2;
        LODWORD(v46[0]) = *v10;
        HIDWORD(v46[0]) = v13;
        result = sub_239409B54(v46, a4);
        v24 = WORD1(v46[0]) ^ HIWORD(v20);
        v25 = HIDWORD(v46[0]) ^ v21;
        *v19 = LOWORD(v46[0]) ^ v20;
        *(v19 + 2) = v24;
        *(v19 + 4) = v25;
        a2 = v19 + 8;
        v10 += 2;
      }

      while (v22 > 0xF);
      v10 = v23;
      v6 = a5;
    }

    if (!v8)
    {
      goto LABEL_41;
    }

    v27 = *v10;
    v26 = v10[1];
    v46[0] = __PAIR64__(v26, v27);
    result = sub_239409B54(v46, a4);
    v28 = LODWORD(v46[0]) ^ v12;
    v29 = a2 + v8;
    if (v8 <= 3)
    {
      if (v8 == 1)
      {
LABEL_40:
        *(v29 - 1) = v28;
        v12 = v27;
        v13 = v26;
LABEL_41:
        v6->i32[0] = v12;
        v6->i16[2] = v13;
        v36 = HIBYTE(v13);
        v6->i8[6] = BYTE2(v13);
        goto LABEL_42;
      }

      if (v8 == 2)
      {
LABEL_39:
        *--v29 = BYTE1(v28);
        goto LABEL_40;
      }

LABEL_38:
      *--v29 = BYTE2(v28);
      goto LABEL_39;
    }

    v30 = HIDWORD(v46[0]) ^ v13;
    if (v8 > 5)
    {
      if (v8 != 6)
      {
        *--v29 = BYTE2(v30);
      }

      *--v29 = BYTE1(v30);
    }

    else if (v8 == 4)
    {
      goto LABEL_37;
    }

    *--v29 = v30;
LABEL_37:
    *--v29 = HIBYTE(v28);
    goto LABEL_38;
  }

  if (a3 >= 8)
  {
    do
    {
      v14 = a2;
      v15 = v8;
      v8 -= 8;
      v16 = *v10;
      v10 += 2;
      v46[0] = veor_s8(v16, v11);
      result = sub_239409A44(v46, a4);
      v11 = v46[0];
      v12 = v46[0];
      *a2 = v46[0];
      *(a2 + 2) = BYTE2(v12);
      *(a2 + 3) = HIBYTE(v12);
      v13 = v11.u32[1];
      *(a2 + 4) = v11.i16[2];
      *(a2 + 6) = v11.i8[6];
      a2 += 8;
      *(v14 + 7) = v11.i8[7];
    }

    while (v15 > 0xF);
  }

  if (v8)
  {
    v17 = 0;
    v18 = v10 + v8;
    if (v8 <= 3)
    {
      v37 = 0;
      if (v8 == 1)
      {
LABEL_28:
        LODWORD(v46[0]) = (v17 | *(v18 - 1)) ^ v12;
        HIDWORD(v46[0]) = v37 ^ v13;
        result = sub_239409A44(v46, a4);
        LOBYTE(v12) = v46[0];
        v13 = HIDWORD(v46[0]);
        v31 = LODWORD(v46[0]) >> 8;
        v32 = HIWORD(LODWORD(v46[0]));
        v33 = HIBYTE(LODWORD(v46[0]));
        v34 = HIDWORD(v46[0]) >> 8;
        v35 = HIWORD(HIDWORD(v46[0]));
        v36 = HIBYTE(HIDWORD(v46[0]));
        *a2 = v46[0];
        *(a2 + 4) = v13;
        goto LABEL_29;
      }

      if (v8 == 2)
      {
LABEL_27:
        v43 = *--v18;
        v17 |= v43 << 8;
        goto LABEL_28;
      }

LABEL_26:
      v42 = *--v18;
      v17 |= v42 << 16;
      goto LABEL_27;
    }

    if (v8 > 5)
    {
      if (v8 != 6)
      {
        v38 = *--v18;
        v17 = v38 << 16;
      }

      v39 = *--v18;
      v17 |= v39 << 8;
    }

    else if (v8 == 4)
    {
      goto LABEL_25;
    }

    v40 = *--v18;
    v17 |= v40;
LABEL_25:
    v37 = v17;
    v41 = *--v18;
    v17 = v41 << 24;
    goto LABEL_26;
  }

  v31 = v12 >> 8;
  v32 = HIWORD(v12);
  v33 = HIBYTE(v12);
  v34 = v13 >> 8;
  v35 = HIWORD(v13);
  v36 = HIBYTE(v13);
LABEL_29:
  v6->i8[0] = v12;
  v6->i8[1] = v31;
  v6->i8[2] = v32;
  v6->i8[3] = v33;
  v6->i8[4] = v13;
  v6->i8[5] = v34;
  v6->i8[6] = v35;
LABEL_42:
  v6->i8[7] = v36;
  v44 = *MEMORY[0x277D85DE8];
  return result;
}

int *sub_239409A44(int *result, unsigned __int16 *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = HIWORD(*result);
  v5 = HIWORD(v3);
  v6 = 3;
  v7 = a2;
  v8 = 5;
  while (1)
  {
    do
    {
      v9 = *v7 + (v4 & ~v5) + v2 + (v5 & v3);
      v2 = (v9 >> 15) & 1 | (2 * v9);
      LOWORD(v9) = v7[1] + (v2 & v5) + (v3 & ~v2) + v4;
      v4 = (v9 >> 14) & 0xFFFC0003 | (4 * v9);
      LOWORD(v9) = v7[2] + (v4 & v2) + (v5 & ~v4) + v3;
      v3 = (v9 >> 13) & 0xFFF80007 | (8 * v9);
      v10 = v7 + 4;
      v11 = v7[3] + (v3 & v4) + (v2 & ~v3) + v5;
      v5 = (v11 >> 11) & 0xFFE0001F | (32 * v11);
      v7 = v10;
      --v8;
    }

    while (v8);
    if (!--v6)
    {
      break;
    }

    if (v6 == 2)
    {
      v8 = 6;
    }

    else
    {
      v8 = 5;
    }

    v2 = v2 + a2[v5 & 0x3F];
    v4 = v4 + a2[v2 & 0x3F];
    v3 = v3 + a2[v4 & 0x3F];
    v5 += a2[v3 & 0x3F];
    v7 = v10;
  }

  *result = v2 | (v4 << 16);
  result[1] = v3 | (v5 << 16);
  return result;
}

int *sub_239409B54(int *result, uint64_t a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = HIWORD(*result);
  v5 = HIWORD(v3);
  v6 = (a2 + 126);
  v7 = 3;
  v8 = 5;
  while (1)
  {
    do
    {
      v9 = ((v5 >> 5) | (v5 << 11)) - ((v3 & v4) + (v2 & ~v3)) - *v6;
      v5 = (((v5 >> 5) | (v5 << 11)) - ((v3 & v4) + (v2 & ~v3)) - *v6);
      v10 = ((v3 << 13) | (v3 >> 3)) - ((v4 & v2) + *(v6 - 1)) - (v9 & ~v4);
      v3 = (((v3 << 13) | (v3 >> 3)) - ((v4 & v2) + *(v6 - 1)) - (v9 & ~v4));
      v11 = ((v4 << 14) | (v4 >> 2)) - ((v9 & v2) + *(v6 - 2)) - (v10 & ~v2);
      v4 = (((v4 << 14) | (v4 >> 2)) - ((v9 & v2) + *(v6 - 2)) - (v10 & ~v2));
      v12 = v6 - 4;
      v2 = ((v2 >> 1) | (v2 << 15)) - ((v10 & v9) + *(v6 - 3)) - (v11 & ~v5);
      v6 -= 4;
      --v8;
    }

    while (v8);
    if (!--v7)
    {
      break;
    }

    if (v7 == 2)
    {
      v8 = 6;
    }

    else
    {
      v8 = 5;
    }

    v5 = (v9 - *(a2 + 2 * (v10 & 0x3F)));
    v3 -= *(a2 + 2 * (v11 & 0x3F));
    v13 = *(a2 + 2 * (v2 & 0x3F));
    v2 -= *(a2 + 2 * (v5 & 0x3F));
    v4 = (v11 - v13);
    v6 = v12;
  }

  *result = v2 | (v4 << 16);
  result[1] = v3 | (v5 << 16);
  return result;
}

uint64_t sub_239409C80(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = sub_23942E714(a1);
  sub_239455978(v3, v4, a2);
  return 1;
}

uint64_t *sub_239409CE8(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  v1 = sub_23945004C(0x10uLL);
  if (v1)
  {
    v1[1] = sub_23944FB28(sub_239409D8C, sub_239409D94);
    v3 = sub_23944FB28(sub_239409DA0, sub_239409DD8);
    *v1 = v3;
    if (!v1[1] || v3 == 0)
    {
      sub_239409E30(v1);
      return 0;
    }
  }

  return v1;
}

uint64_t sub_239409DD8(const char **a1, const char **a2)
{
  result = strcmp(*a1, *a2);
  if (!result)
  {
    v5 = a1[1];
    v6 = a2[1];

    return strcmp(v5, v6);
  }

  return result;
}

void sub_239409E30(uint64_t *a1)
{
  if (a1)
  {
    v2 = a1[1];
    v4 = sub_239409ED0;
    v5 = 0;
    sub_23944FEEC(v2, sub_23940ABA4, &v4);
    sub_23944FB98(a1[1]);
    v3 = *a1;
    v4 = sub_239409ED4;
    v5 = 0;
    sub_23944FEEC(v3, sub_23940ABF8, &v4);
    sub_23944FB98(*a1);
    sub_239450144(a1);
  }
}

uint64_t sub_239409ED8(uint64_t a1, uint64_t a2)
{
  v3[0] = a2;
  v3[1] = 0;
  result = sub_23944FC1C(*(a1 + 8), v3, sub_23940AC00, sub_23940AC0C);
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t sub_239409F2C(void **a1, const char *a2, uint64_t a3)
{
  v3 = "default";
  if (a2)
  {
    v3 = a2;
  }

  v5[1] = a3;
  v5[2] = 0;
  v5[0] = v3;
  result = sub_23944FC1C(*a1, v5, sub_23940AC1C, sub_23940AC28);
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t sub_239409F94(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v85 = *MEMORY[0x277D85DE8];
  __s2 = 0;
  v6 = sub_239405E68();
  if (!v6)
  {
    v68 = 7;
    v69 = 424;
LABEL_139:
    sub_2394170F4(13, 0, v68, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/conf/conf.c", v69);
    goto LABEL_140;
  }

  v7 = sub_23945030C("default");
  __s2 = v7;
  if (!v7)
  {
LABEL_140:
    v10 = 0;
LABEL_146:
    v53 = 0;
    goto LABEL_147;
  }

  v8 = sub_23940A6B4(a1, v7);
  if (!v8)
  {
    v68 = 104;
    v69 = 435;
    goto LABEL_139;
  }

  v9 = v8;
  if (!sub_239405F30(v6, 0x200uLL))
  {
    v10 = 0;
    goto LABEL_142;
  }

  v10 = 0;
  while (2)
  {
    v11 = 0;
    v12 = 0;
    LODWORD(v13) = 0;
LABEL_7:
    v14 = v6[1] + v11;
    *v14 = 0;
    sub_239403690(a2, v14, 511);
    *(v14 + 511) = 0;
    v15 = strlen(v14);
    if ((v12 & 1) == 0 && !v15)
    {
      sub_2393FFA58(v6);
      sub_239450144(__s2);
      result = 1;
      goto LABEL_150;
    }

    LODWORD(v16) = v15;
    if (v15 >= 1)
    {
      v16 = v15 & 0x7FFFFFFF;
      while (1)
      {
        v17 = *(v14 - 1 + v16);
        v18 = v17 == 13 || v17 == 10;
        if (!v18)
        {
          break;
        }

        v19 = v16-- <= 1;
        if (v19)
        {
          LODWORD(v16) = 0;
          break;
        }
      }
    }

    if (v15)
    {
      v20 = v16 == v15;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;
    if (!v20)
    {
      *(v14 + v16) = 0;
      ++v10;
    }

    v22 = v16 + v13;
    if (v22 >= 1)
    {
      v23 = v6[1] + v22;
      if (*(v23 - 1) == 92)
      {
        LODWORD(v13) = v22 - 1;
        if (v22 == 1 || *(v23 - 2) != 92)
        {
          v12 = 1;
          goto LABEL_115;
        }
      }
    }

    if (v21)
    {
      v12 = 1;
      LODWORD(v13) = v22;
      goto LABEL_115;
    }

    v24 = v6[1];
    for (i = v24; ; ++i)
    {
      v26 = *i;
      if (v26 > 0x20 || ((1 << v26) & 0x100002600) == 0)
      {
        break;
      }
    }

    while (v26 > 38)
    {
      if (v26 != 39)
      {
        if (v26 == 92)
        {
          if (*++i)
          {
            ++i;
          }

          goto LABEL_60;
        }

        if (v26 != 96)
        {
          goto LABEL_57;
        }
      }

LABEL_42:
      v28 = (i + 1);
      v29 = i[1];
      v30 = v29 == v26;
      if (i[1])
      {
        v31 = v29 == v26;
      }

      else
      {
        v31 = 1;
      }

      if (v31)
      {
LABEL_54:
        i += 2;
        if (!v30)
        {
          i = v28;
        }
      }

      else
      {
        while (1)
        {
          v32 = v28;
          if (v29 == 92)
          {
            v33 = i[2];
            i += 2;
            v32 = i;
            if (!v33)
            {
              break;
            }
          }

          v28 = v32 + 1;
          v29 = v32[1];
          v30 = v29 == v26;
          if (v32[1])
          {
            v34 = v29 == v26;
          }

          else
          {
            v34 = 1;
          }

          i = v32;
          if (v34)
          {
            i = v32;
            goto LABEL_54;
          }
        }
      }

LABEL_60:
      v26 = *i;
    }

    if (v26 == 34)
    {
      goto LABEL_42;
    }

    if (!v26)
    {
      goto LABEL_66;
    }

    if (v26 != 35)
    {
LABEL_57:
      ++i;
      goto LABEL_60;
    }

    *i = 0;
LABEL_66:
    for (j = v24 + 1; ; ++j)
    {
      v37 = *v24;
      if (v37 > 0x20)
      {
        goto LABEL_73;
      }

      if (((1 << v37) & 0x100002600) == 0)
      {
        break;
      }

      ++v24;
    }

    if (!*v24)
    {
      v12 = 0;
      LODWORD(v13) = 0;
      goto LABEL_115;
    }

LABEL_73:
    if (v37 == 91)
    {
      while (1)
      {
        v59 = *j;
        v19 = v59 > 0x20;
        v60 = (1 << v59) & 0x100002600;
        if (v19 || v60 == 0)
        {
          break;
        }

        ++j;
      }

      v62 = j;
      while (2)
      {
        v63 = sub_23940A770(v62);
        for (k = v63; ; ++k)
        {
          v65 = *k;
          if (v65 > 0x20)
          {
            goto LABEL_128;
          }

          if (((1 << v65) & 0x100002600) == 0)
          {
            break;
          }
        }

        if (!*k)
        {
LABEL_143:
          v70 = 101;
          v71 = 512;
          goto LABEL_145;
        }

LABEL_128:
        if (v65 != 93)
        {
          v18 = k == v62;
          v62 = k;
          if (!v18)
          {
            continue;
          }

          goto LABEL_143;
        }

        break;
      }

      *v63 = 0;
      if (!sub_23940A808(&__s2, j))
      {
        goto LABEL_146;
      }

      v66 = __s2;
      *__str = __s2;
      v84 = 0;
      v67 = sub_23944FC1C(*(a1 + 8), __str, sub_23940AC00, sub_23940AC0C);
      if (!v67)
      {
        v67 = sub_23940A6B4(a1, v66);
        if (!v67)
        {
          v70 = 104;
          v71 = 523;
          goto LABEL_145;
        }
      }

      v9 = v67;
      if (sub_239405F30(v6, 0x200uLL))
      {
        continue;
      }

LABEL_142:
      v70 = 7;
      v71 = 443;
LABEL_145:
      sub_2394170F4(13, 0, v70, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/conf/conf.c", v71);
      goto LABEL_146;
    }

    break;
  }

  v38 = sub_23940A770(v24);
  v81 = a2;
  if (*v38 == 58 && v38[1] == 58)
  {
    *v38 = 0;
    v39 = v38 + 2;
    v38 = sub_23940A770(v38 + 2);
    v40 = v24;
    v24 = v39;
  }

  else
  {
    v40 = 0;
  }

  v41 = v38 + 1;
  for (m = v38; ; ++m)
  {
    v43 = *(v41 - 1);
    if (v43 > 0x3D)
    {
      goto LABEL_144;
    }

    if (((1 << v43) & 0x100002600) == 0)
    {
      break;
    }

    ++v41;
  }

  if (v43 != 61)
  {
LABEL_144:
    v70 = 102;
    v71 = 540;
    goto LABEL_145;
  }

  *v38 = 0;
  for (n = 2; ; ++n)
  {
    v45 = *v41;
    v19 = v45 > 0x20;
    v46 = (1 << v45) & 0x100002600;
    if (v19 || v46 == 0)
    {
      break;
    }

    ++v41;
  }

  do
  {
    v48 = *++m;
    --n;
  }

  while (v48);
  if (n)
  {
    v49 = 0;
    while (1)
    {
      v50 = m[v49 - 1];
      v19 = v50 > 0x20;
      v51 = (1 << v50) & 0x100002600;
      if (v19 || v51 == 0)
      {
        break;
      }

      if (n == --v49)
      {
        m += v49;
        goto LABEL_99;
      }
    }

    m += v49;
  }

LABEL_99:
  *m = 0;
  v53 = sub_2394500B0(0x18uLL);
  if (!v53)
  {
    goto LABEL_147;
  }

  if (!v40)
  {
    v40 = __s2;
  }

  v54 = sub_23945030C(v24);
  v53[1] = v54;
  if (!v54 || !sub_23940A808(v53 + 2, v41))
  {
    goto LABEL_147;
  }

  v55 = v9;
  if (!strcmp(v40, __s2))
  {
LABEL_108:
    v57 = sub_23945030C(*v55);
    *v53 = v57;
    if (!v57 || !sub_2394579D0(*(v55 + 8), v53))
    {
      goto LABEL_147;
    }

    v58 = *a1;
    *__str = 0;
    if (!sub_23944FD8C(v58, __str, v53, sub_23940AC1C, sub_23940AC28))
    {
      sub_2394579D8(*(v55 + 8));
      goto LABEL_147;
    }

    v13 = *__str;
    if (*__str)
    {
      sub_239457778(*(v55 + 8), *__str);
      sub_23940A9B0(v13);
      v12 = 0;
      LODWORD(v13) = 0;
    }

    else
    {
      v12 = 0;
    }

    a2 = v81;
LABEL_115:
    v11 = v13;
    if (!sub_239405F30(v6, v13 + 512))
    {
      goto LABEL_142;
    }

    goto LABEL_7;
  }

  *__str = v40;
  v84 = 0;
  v56 = sub_23944FC1C(*(a1 + 8), __str, sub_23940AC00, sub_23940AC0C);
  if (v56 || (v56 = sub_23940A6B4(a1, v40)) != 0)
  {
    v55 = v56;
    goto LABEL_108;
  }

  sub_2394170F4(13, 0, 104, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/conf/conf.c", 576);
LABEL_147:
  sub_2393FFA58(v6);
  sub_239450144(__s2);
  if (a3)
  {
    *a3 = v10;
  }

  snprintf(__str, 0x18uLL, "%ld", v10);
  sub_2394171A0(2u, v72, v73, v74, v75, v76, v77, v78, "line ");
  sub_23940A9B0(v53);
  result = 0;
LABEL_150:
  v80 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_23940A6B4(uint64_t a1, const char *a2)
{
  v4 = sub_23945004C(0x10uLL);
  if (v4)
  {
    *v4 = sub_23945030C(a2);
    v5 = sub_2394574D8();
    v4[1] = v5;
    if (*v4)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6 || (v7 = *(a1 + 8), v9 = 0, !sub_23944FD8C(v7, &v9, v4, sub_23940AC00, sub_23940AC0C)))
    {
      sub_23940ABAC(v4);
      return 0;
    }

    else
    {
      sub_23940ABAC(v9);
    }
  }

  return v4;
}

char *sub_23940A770(char *a1)
{
  while (1)
  {
    while (1)
    {
      v2 = *a1;
      if (v2 != 92)
      {
        break;
      }

      if (*++a1)
      {
        ++a1;
      }
    }

    if (!sub_23945043C(*a1))
    {
      v4 = v2 - 33 > 0x3E || ((1 << (v2 - 33)) & 0x60000000C4007E31) == 0;
      if (v4 && v2 != 124 && v2 != 126)
      {
        break;
      }
    }

    ++a1;
  }

  return a1;
}

uint64_t sub_23940A808(void **a1, const char *a2)
{
  result = sub_239405E68();
  if (result)
  {
    v5 = result;
    v6 = strlen(a2);
    if (sub_239405F30(v5, v6 + 1))
    {
      for (i = 0; ; ++i)
      {
        while (1)
        {
          v8 = *a2;
          if (v8 > 0x26)
          {
            break;
          }

          if (v8 != 34)
          {
            if (!*a2)
            {
              goto LABEL_40;
            }

            if (v8 == 36)
            {
              sub_2394170F4(13, 0, 107, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/conf/conf.c", 259);
              goto LABEL_41;
            }

LABEL_27:
            ++a2;
            goto LABEL_39;
          }

LABEL_12:
          v9 = (a2 + 1);
          v10 = *(a2 + 1);
          if (a2[1])
          {
            v11 = v10 == v8;
          }

          else
          {
            v11 = 1;
          }

          if (!v11)
          {
            v12 = i;
            do
            {
              if (v10 == 92)
              {
                v10 = *(a2 + 2);
                v9 = (a2 + 2);
                if (!a2[2])
                {
                  break;
                }
              }

              a2 = v9;
              *(v5[1] + v12++) = v10;
              ++i;
              v13 = *++v9;
              v10 = v13;
            }

            while (v13 && v10 != v8);
          }

          if (v10 == v8)
          {
            a2 = (v9 + 1);
          }

          else
          {
            a2 = v9;
          }
        }

        if (v8 == 96)
        {
          goto LABEL_12;
        }

        if (v8 != 92)
        {
          if (v8 != 39)
          {
            goto LABEL_27;
          }

          goto LABEL_12;
        }

        v8 = *(a2 + 1);
        if (v8 <= 0x6D)
        {
          if (v8 != 98)
          {
            if (!a2[1])
            {
LABEL_40:
              *(v5[1] + i) = 0;
              sub_239450144(*a1);
              *a1 = v5[1];
              sub_239450144(v5);
              return 1;
            }

LABEL_36:
            if (v8 == 116)
            {
              LOBYTE(v8) = 9;
            }

            goto LABEL_38;
          }

          LOBYTE(v8) = 8;
        }

        else if (v8 == 114)
        {
          LOBYTE(v8) = 13;
        }

        else
        {
          if (v8 != 110)
          {
            goto LABEL_36;
          }

          LOBYTE(v8) = 10;
        }

LABEL_38:
        a2 += 2;
LABEL_39:
        *(v5[1] + i) = v8;
      }
    }

LABEL_41:
    sub_2393FFA58(v5);
    return 0;
  }

  return result;
}

void sub_23940A9B0(void *a1)
{
  if (a1)
  {
    sub_239450144(*a1);
    sub_239450144(a1[1]);
    sub_239450144(a1[2]);

    sub_239450144(a1);
  }
}

uint64_t sub_23940AA04(uint64_t a1, const char *a2, uint64_t *a3)
{
  v5 = sub_239404208(a2, "rb");
  if (v5)
  {
    v6 = v5;
    v7 = sub_239409F94(a1, v5, a3);
    sub_239403520(v6);
    return v7;
  }

  else
  {
    sub_2394170F4(13, 0, 2, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/conf/conf.c", 609);
    return 0;
  }
}

uint64_t sub_23940AA90(char *__s, int __c, int a3, uint64_t (*a4)(char *, uint64_t, uint64_t), uint64_t a5)
{
  if (__s)
  {
    v9 = __s;
    while (1)
    {
      if (a3)
      {
        v10 = *v9;
        if (*v9)
        {
          do
          {
            if (!sub_23945046C(v10))
            {
              break;
            }

            v11 = *++v9;
            v10 = v11;
          }

          while (v11);
        }
      }

      v12 = strchr(v9, __c);
      v13 = v12;
      if (v12 != v9)
      {
        if (*v9)
        {
          break;
        }
      }

      v15 = 0;
      v16 = 0;
LABEL_18:
      result = a4(v15, v16, a5);
      if (result < 1)
      {
        return result;
      }

      v9 = v13 + 1;
      if (!v13)
      {
        return 1;
      }
    }

    v14 = v12;
    if (v12)
    {
      if (!a3)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v14 = &v9[strlen(v9)];
      if (!a3)
      {
LABEL_16:
        --v14;
LABEL_17:
        v16 = v14 - v9 + 1;
        v15 = v9;
        goto LABEL_18;
      }
    }

    do
    {
      v17 = *--v14;
    }

    while (sub_23945046C(v17));
    goto LABEL_17;
  }

  sub_2394170F4(13, 0, 100, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/conf/conf.c", 626);
  return 0;
}

void sub_23940ABAC(void *a1)
{
  if (a1)
  {
    sub_239450144(*a1);
    sub_2393FFA58(a1[1]);

    sub_239450144(a1);
  }
}

_BYTE *sub_23940AC38(_BYTE *a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v4 = *(a2 + 96);
  v13[0] = *(a2 + 80);
  v13[1] = v4;
  v14 = *(a2 + 112);
  sub_23940F4EC(v11, v13);
  sub_23940F8A0(v9, a2, v11);
  sub_23940F8A0(v7, (a2 + 40), v11);
  sub_23940AD10(a1, v7);
  result = sub_23940AD10(v13, v9);
  a1[31] ^= LOBYTE(v13[0]) << 7;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_23940AD10(_BYTE *result, void *a2)
{
  v2 = *a2 - 0x7FFFFFFFFFFEDLL;
  v3 = a2[1] - -(v2 >> 51) - 0x7FFFFFFFFFFFFLL;
  v4 = a2[2] - -(v3 >> 51) - 0x7FFFFFFFFFFFFLL;
  v5 = a2[3] - -(v4 >> 51) - 0x7FFFFFFFFFFFFLL;
  v6 = v2 & 0x7FFFFFFFFFFFFLL;
  v7 = v3 & 0x7FFFFFFFFFFFFLL;
  v8 = v4 & 0x7FFFFFFFFFFFFLL;
  v9 = v5 & 0x7FFFFFFFFFFFFLL;
  v10 = a2[4] - -(v5 >> 51) - 0x7FFFFFFFFFFFFLL;
  if ((v10 & 0x7F8000000000000) != 0)
  {
    v11 = -1;
  }

  else
  {
    v11 = 0;
  }

  v12 = (v11 & 0x7FFFFFFFFFFEDLL) + v6;
  result[1] = BYTE1(v12);
  result[2] = BYTE2(v12);
  result[3] = ((v11 & 0xFFFFFFED) + v6) >> 24;
  result[4] = BYTE4(v12);
  result[5] = BYTE5(v12);
  v13 = (v11 & 0x7FFFFFFFFFFFFLL) + v7 + (v12 >> 51);
  *result = v12;
  result[6] = BYTE6(v12) & 7 | (8 * (v11 + v7 + (v12 >> 51)));
  result[7] = v13 >> 5;
  result[8] = v13 >> 13;
  result[9] = v13 >> 21;
  result[10] = v13 >> 29;
  result[11] = v13 >> 37;
  v14 = v8 + (v11 & 0x7FFFFFFFFFFFFLL) + (v13 >> 51);
  result[12] = (v13 >> 45) & 0x3F | ((v8 + v11 + (v13 >> 51)) << 6);
  result[13] = v14 >> 2;
  result[14] = v14 >> 10;
  result[15] = v14 >> 18;
  result[16] = v14 >> 26;
  result[17] = v14 >> 34;
  result[18] = v14 >> 42;
  v15 = v9 + (v11 & 0x7FFFFFFFFFFFFLL) + (v14 >> 51);
  result[19] = ((v14 & 0x4000000000000) != 0) | (2 * (v9 + v11 + (v14 >> 51)));
  result[20] = v15 >> 7;
  result[21] = v15 >> 15;
  result[22] = v15 >> 23;
  result[23] = v15 >> 31;
  result[24] = v15 >> 39;
  v16 = v10 + v11 + (v15 >> 51);
  result[25] = (v15 >> 47) & 0xF | (16 * v16);
  result[26] = v16 >> 4;
  result[27] = v16 >> 12;
  result[28] = v16 >> 20;
  result[29] = v16 >> 28;
  result[30] = v16 >> 36;
  result[31] = (v16 >> 44) & 0x7F;
  return result;
}

uint64_t sub_23940AEC8(uint64_t a1, int64x2_t *a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  v3 = a2[1];
  v53 = *a2;
  v54 = v3;
  v54.i8[15] = v3.i8[15] & 0x7F;
  sub_23940BDD0((a1 + 40), &v53);
  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 80) = 1;
  sub_23940B3F0(&v43, (a1 + 40));
  sub_23940F8A0(v40.i64, &v43, qword_2395C9250);
  v4 = *(a1 + 112);
  v5 = vaddq_s64(v41, *(a1 + 96));
  v6 = *(&v43 + 1) - *(a1 + 88) + ((v43 + 0xFFFFFFFFFFFD9) >> 51) + 0xFFFFFFFFFFFFELL;
  v7 = v44 - *(a1 + 96) + (v6 >> 51) + 0xFFFFFFFFFFFFELL;
  v8 = *(&v44 + 1) - *(a1 + 104) + (v7 >> 51) + 0xFFFFFFFFFFFFELL;
  v9.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v9.i64[1] = *(a1 + 88);
  v10 = v45 - v4 + (v8 >> 51) + 0xFFFFFFFFFFFFELL;
  v11 = ((v43 + 0xFFFFFFFFFFFD9) & 0x7FFFFFFFFFFFFLL) + 19 * (v10 >> 51);
  v12 = (v6 & 0x7FFFFFFFFFFFFLL) + (v11 >> 51);
  v13 = v12 & 0x7FFFFFFFFFFFFLL;
  v14 = v11 & 0x7FFFFFFFFFFFFLL;
  v48[0] = v11 & 0x7FFFFFFFFFFFFLL;
  v48[1] = v12 & 0x7FFFFFFFFFFFFLL;
  v15 = (v7 & 0x7FFFFFFFFFFFFLL) + (v12 >> 51);
  v16 = v8 & 0x7FFFFFFFFFFFFLL;
  v17 = v10 & 0x7FFFFFFFFFFFFLL;
  v48[2] = v15;
  v48[3] = v8 & 0x7FFFFFFFFFFFFLL;
  v48[4] = v10 & 0x7FFFFFFFFFFFFLL;
  v46[0] = vaddq_s64(v40, v9);
  v46[1] = v5;
  v47 = v42 + v4;
  sub_23940F8A0(&v43, v48, v46);
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  v52 = 0;
  memset(v51, 0, sizeof(v51));
  sub_23940B3F0(v53.i64, &v43);
  sub_23940B3F0(v51, &v53);
  sub_23940B3F0(v51, v51);
  sub_23940F8A0(v51, &v43, v51);
  sub_23940F8A0(v53.i64, &v53, v51);
  sub_23940B3F0(v53.i64, &v53);
  sub_23940F8A0(v53.i64, v51, &v53);
  sub_23940B3F0(v51, &v53);
  v18 = 4;
  do
  {
    sub_23940B3F0(v51, v51);
    --v18;
  }

  while (v18);
  sub_23940F8A0(v53.i64, v51, &v53);
  sub_23940B3F0(v51, &v53);
  v19 = 9;
  do
  {
    sub_23940B3F0(v51, v51);
    --v19;
  }

  while (v19);
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  sub_23940F8A0(v51, v51, &v53);
  sub_23940B3F0(v49, v51);
  v20 = 19;
  do
  {
    sub_23940B3F0(v49, v49);
    --v20;
  }

  while (v20);
  sub_23940F8A0(v51, v49, v51);
  sub_23940B3F0(v51, v51);
  v21 = 9;
  do
  {
    sub_23940B3F0(v51, v51);
    --v21;
  }

  while (v21);
  sub_23940F8A0(v53.i64, v51, &v53);
  sub_23940B3F0(v51, &v53);
  v22 = 49;
  do
  {
    sub_23940B3F0(v51, v51);
    --v22;
  }

  while (v22);
  v23 = v15;
  sub_23940F8A0(v51, v51, &v53);
  sub_23940B3F0(v49, v51);
  v24 = 99;
  do
  {
    sub_23940B3F0(v49, v49);
    --v24;
  }

  while (v24);
  v25 = v17;
  sub_23940F8A0(v51, v49, v51);
  sub_23940B3F0(v51, v51);
  v26 = 49;
  do
  {
    sub_23940B3F0(v51, v51);
    --v26;
  }

  while (v26);
  sub_23940F8A0(v53.i64, v51, &v53);
  sub_23940B3F0(v53.i64, &v53);
  sub_23940B3F0(v53.i64, &v53);
  sub_23940F8A0(a1, &v53, &v43);
  sub_23940F8A0(a1, a1, v48);
  sub_23940B3F0(v40.i64, a1);
  sub_23940F8A0(v40.i64, &v40, v46);
  v27 = v40;
  v28 = v41;
  v35 = v40.i64[0] - v14 + 0xFFFFFFFFFFFDALL;
  v29 = v42;
  v36 = v40.i64[1] - v13 + 0xFFFFFFFFFFFFELL;
  v37 = v41.i64[0] - v23 + 0xFFFFFFFFFFFFELL;
  v38 = v41.i64[1] - v16 + 0xFFFFFFFFFFFFELL;
  v39 = v42 - v25 + 0xFFFFFFFFFFFFELL;
  if (sub_23940B608(&v35))
  {
    v35 = v27.i64[0] + v14;
    v36 = v27.i64[1] + v13;
    v37 = v28.i64[0] + v23;
    v38 = v28.i64[1] + v16;
    v39 = v29 + v25;
    if (sub_23940B608(&v35))
    {
      result = 0;
      goto LABEL_22;
    }

    sub_23940F8A0(a1, a1, qword_2395C9278);
  }

  sub_23940AD10(&v53, a1);
  if ((v53.i8[0] & 1) != a2[1].u8[15] >> 7)
  {
    v31 = 0xFFFFFFFFFFFFELL - *(a1 + 32);
    v32 = vsubq_s64(vdupq_n_s64(0xFFFFFFFFFFFFEuLL), *(a1 + 16));
    v53 = vsubq_s64(xmmword_2395C3240, *a1);
    v54 = v32;
    v55 = v31;
    sub_23940B5AC(a1, &v53);
  }

  sub_23940F8A0((a1 + 120), a1, (a1 + 40));
  result = 1;
LABEL_22:
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *sub_23940B3F0(uint64_t *result, unint64_t *a2)
{
  v3 = a2[3];
  v2 = a2[4];
  v4 = a2[2];
  v5 = 2 * v4;
  v6 = *a2;
  v7 = a2[1];
  v9 = (v4 * (38 * v2)) >> 64;
  v10 = v4 * 38 * v2;
  v11 = v7 * (38 * v2) + v4 * (38 * v3) + v6 * v6;
  v12 = (v7 * (2 * v3) + v4 * v4) >> 64;
  v13 = v7 * 2 * v3 + v4 * v4;
  v14 = (v6 * (2 * v3)) >> 64;
  v15 = v6 * 2 * v3;
  v16 = __PAIR128__(v12, v13) + v6 * (2 * v2);
  v17 = (v6 * v5) >> 64;
  v18 = (v6 * (2 * v7)) >> 64;
  v19 = v6 * 2 * v7;
  v20 = v6 * v5;
  v22 = v7 * v5 + 19 * v2 * v2 + __PAIR128__(v14, v15);
  v21 = *(&v22 + 1);
  v24 = v7 * v7 + v3 * 38 * v2 + v20;
  v23 = (v7 * v7 + v3 * (38 * v2) + __PAIR128__(v17, v20)) >> 64;
  v26 = __PAIR128__(v9, v10) + 19 * v3 * v3 + __PAIR128__(v18, v19);
  v25 = *(&v26 + 1);
  v27 = v11 >> 51;
  if (__CFADD__(v26, v27))
  {
    v25 = *(&v26 + 1) + 1;
  }

  *(&v29 + 1) = v25;
  *&v29 = v26 + v27;
  v28 = v29 >> 51;
  if (__CFADD__(v24, v28))
  {
    ++v23;
  }

  *(&v31 + 1) = v23;
  *&v31 = v24 + v28;
  v30 = v31 >> 51;
  v32 = __CFADD__(v22, v30);
  v33 = v22 + v30;
  if (v32)
  {
    v21 = *(&v22 + 1) + 1;
  }

  *(&v35 + 1) = v21;
  *&v35 = v33;
  v34 = v35 >> 51;
  v32 = __CFADD__(v16, v34);
  v36 = v16 + v34;
  if (v32)
  {
    v37 = *(&v16 + 1) + 1;
  }

  else
  {
    v37 = *(&v16 + 1);
  }

  *(&v38 + 1) = v37;
  *&v38 = v36;
  v39 = (v11 & 0x7FFFFFFFFFFFFLL) + 19 * (v38 >> 51);
  v40 = ((v26 + v27) & 0x7FFFFFFFFFFFFLL) + (v39 >> 51);
  *result = v39 & 0x7FFFFFFFFFFFFLL;
  result[1] = v40 & 0x7FFFFFFFFFFFFLL;
  result[2] = ((v24 + v28) & 0x7FFFFFFFFFFFFLL) + (v40 >> 51);
  result[3] = v33 & 0x7FFFFFFFFFFFFLL;
  result[4] = v36 & 0x7FFFFFFFFFFFFLL;
  return result;
}

int64x2_t sub_23940B568(int64x2_t *a1, int64x2_t *a2, int64x2_t *a3)
{
  result = vaddq_s64(vsubq_s64(*a2, *a3), xmmword_2395C3240);
  v4 = a2[2].i64[0] - a3[2].i64[0] + 0xFFFFFFFFFFFFELL;
  v5 = vaddq_s64(vsubq_s64(a2[1], a3[1]), vdupq_n_s64(0xFFFFFFFFFFFFEuLL));
  *a1 = result;
  a1[1] = v5;
  a1[2].i64[0] = v4;
  return result;
}

unint64_t *sub_23940B5AC(unint64_t *result, void *a2)
{
  v2 = a2[1] + (*a2 >> 51);
  v3 = a2[2] + (v2 >> 51);
  v4 = a2[3] + (v3 >> 51);
  v5 = a2[4] + (v4 >> 51);
  v6 = (*a2 & 0x7FFFFFFFFFFFFLL) + 19 * (v5 >> 51);
  v7 = (v2 & 0x7FFFFFFFFFFFFLL) + (v6 >> 51);
  *result = v6 & 0x7FFFFFFFFFFFFLL;
  result[1] = v7 & 0x7FFFFFFFFFFFFLL;
  result[2] = (v3 & 0x7FFFFFFFFFFFFLL) + (v7 >> 51);
  result[3] = v4 & 0x7FFFFFFFFFFFFLL;
  result[4] = v5 & 0x7FFFFFFFFFFFFLL;
  return result;
}

BOOL sub_23940B608(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  sub_23940B5AC(v3, a1);
  sub_23940AD10(v5, v3);
  result = sub_23945022C(v5, byte_2395C9308, 32) != 0;
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *sub_23940B690(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32) + *(a2 + 72);
  v5 = vaddq_s64(*(a2 + 16), *(a2 + 56));
  *a1 = vaddq_s64(*a2, *(a2 + 40));
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  sub_23940B568((a1 + 40), (a2 + 40), a2);
  v6 = *(a2 + 80);
  v7 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;

  return sub_23940F8A0((a1 + 120), (a2 + 120), qword_2395C92A0);
}

uint64_t *sub_23940B718(uint64_t *a1, unint64_t *a2)
{
  sub_23940F8A0(a1, a2, a2 + 15);
  sub_23940F8A0(a1 + 5, a2 + 5, a2 + 10);

  return sub_23940F8A0(a1 + 10, a2 + 10, a2 + 15);
}

uint64_t *sub_23940B770(uint64_t *a1, unint64_t *a2)
{
  sub_23940F8A0(a1, a2, a2 + 15);
  sub_23940F8A0(a1 + 5, a2 + 5, a2 + 10);
  sub_23940F8A0(a1 + 10, a2 + 10, a2 + 15);

  return sub_23940F8A0(a1 + 15, a2, a2 + 5);
}

int64x2_t sub_23940B7D8(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  memset(v26, 0, 40);
  memset(v25, 0, 40);
  v6 = *(a2 + 32) + *(a2 + 72);
  v7 = vaddq_s64(*(a2 + 16), *(a2 + 56));
  *a1 = vaddq_s64(*a2, *(a2 + 40));
  *(a1 + 16) = v7;
  *(a1 + 32) = v6;
  sub_23940B568((a1 + 40), (a2 + 40), a2);
  sub_23940F8A0(v26[0].i64, a1, a3);
  sub_23940F8A0(v27.i64, (a1 + 40), a3 + 5);
  sub_23940F8A0(v25[0].i64, a3 + 15, (a2 + 120));
  sub_23940F8A0(v30.i64, (a2 + 80), a3 + 10);
  v8 = v32;
  v9 = v31;
  *(a1 + 120) = vaddq_s64(v30, v30);
  *(a1 + 136) = vaddq_s64(v9, v9);
  *(a1 + 152) = 2 * v8;
  v10 = v26[2].i64[0];
  v11 = v29;
  v12 = v26[2].i64[0] - v29 + 0xFFFFFFFFFFFFELL;
  v13 = v26[0];
  v14 = v26[1];
  v15 = v27;
  v16 = v28;
  v24 = vdupq_n_s64(0xFFFFFFFFFFFFEuLL);
  v17 = vaddq_s64(vsubq_s64(v26[1], v28), v24);
  *a1 = vaddq_s64(vsubq_s64(v26[0], v27), xmmword_2395C3240);
  *(a1 + 16) = v17;
  *(a1 + 32) = v12;
  *(a1 + 40) = vaddq_s64(v15, v13);
  *(a1 + 56) = vaddq_s64(v16, v14);
  *(a1 + 72) = v11 + v10;
  sub_23940B5AC(v26, (a1 + 120));
  v18 = v26[2].i64[0] - v25[2].i64[0] + 0xFFFFFFFFFFFFELL;
  v19 = v26[0];
  v20 = v26[1];
  v21 = v25[0];
  v22 = v25[1];
  *(a1 + 80) = vaddq_s64(v25[0], v26[0]).u64[0];
  *(a1 + 120) = vaddq_s64(vsubq_s64(v19, v21), xmmword_2395C3240);
  *(a1 + 104) = vaddq_s64(*(&v25[1] + 8), *(&v26[1] + 8));
  *(a1 + 88) = vaddq_s64(vextq_s8(v21, v22, 8uLL), vextq_s8(v19, v20, 8uLL));
  result = vaddq_s64(vsubq_s64(v20, v22), v24);
  *(a1 + 136) = result;
  *(a1 + 152) = v18;
  return result;
}

int64x2_t sub_23940B998(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v6 = *(a2 + 32) + *(a2 + 72);
  v7 = vaddq_s64(*(a2 + 16), *(a2 + 56));
  *a1 = vaddq_s64(*a2, *(a2 + 40));
  *(a1 + 16) = v7;
  *(a1 + 32) = v6;
  sub_23940B568((a1 + 40), (a2 + 40), a2);
  sub_23940F8A0(v31.i64, a1, a3 + 5);
  sub_23940F8A0(v34.i64, (a1 + 40), a3);
  sub_23940F8A0(v28.i64, a3 + 15, (a2 + 120));
  sub_23940F8A0(v37.i64, (a2 + 80), a3 + 10);
  v8 = v39;
  v9 = v38;
  *(a1 + 120) = vaddq_s64(v37, v37);
  *(a1 + 136) = vaddq_s64(v9, v9);
  *(a1 + 152) = 2 * v8;
  v10 = v33;
  v11 = v36;
  v12 = v33 - v36 + 0xFFFFFFFFFFFFELL;
  v13 = v31;
  v14 = v32;
  v15 = v34;
  v16 = v35;
  v27 = vdupq_n_s64(0xFFFFFFFFFFFFEuLL);
  v17 = vaddq_s64(vsubq_s64(v32, v35), v27);
  *a1 = vaddq_s64(vsubq_s64(v31, v34), xmmword_2395C3240);
  *(a1 + 16) = v17;
  *(a1 + 32) = v12;
  *(a1 + 40) = vaddq_s64(v15, v13);
  *(a1 + 56) = vaddq_s64(v16, v14);
  *(a1 + 72) = v11 + v10;
  sub_23940B5AC(&v31, (a1 + 120));
  v18 = v31;
  v19 = v32;
  v20 = v28;
  v21 = v29;
  v22 = vaddq_s64(vsubq_s64(v32, v29), v27);
  v23 = v33;
  v24 = v30;
  v25 = v33 - v30 + 0xFFFFFFFFFFFFELL;
  *(a1 + 80) = vaddq_s64(vsubq_s64(v31, v28), xmmword_2395C3240);
  *(a1 + 96) = v22;
  *(a1 + 112) = v25;
  *(a1 + 120) = vaddq_s64(v20, v18);
  result = vaddq_s64(v21, v19);
  *(a1 + 136) = result;
  *(a1 + 152) = v24 + v23;
  return result;
}

uint64_t *sub_23940BB40(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v6 = 0;
  v56 = *MEMORY[0x277D85DE8];
  v25 = vdupq_n_s64(0xFFFFFFFFFFFFEuLL);
  do
  {
    *&v38 = 0;
    v36 = 0u;
    v37 = 0u;
    *&v28 = 0;
    v26 = 0u;
    v27 = 0u;
    sub_23940BDD0(&v36, a3);
    sub_23940BDD0(&v26, a3 + 8);
    v7 = &v55[v6];
    v8 = v26;
    v9 = v27;
    v10 = v36;
    v11 = v37;
    *(v7 + 40) = vaddq_s64(vsubq_s64(v26, v36), xmmword_2395C3240);
    v12 = v28;
    v13 = v38;
    *(v7 + 4) = v38 + v28;
    *v7 = vaddq_s64(v10, v8);
    *(v7 + 1) = vaddq_s64(v11, v9);
    *(v7 + 56) = vaddq_s64(vsubq_s64(v9, v11), v25);
    *(v7 + 9) = v12 - v13 + 0xFFFFFFFFFFFFELL;
    sub_23940F8A0(&v55[v6 + 80], &v36, &v26);
    sub_23940F8A0(v7 + 10, v7 + 10, qword_2395C92A0);
    v6 += 120;
    a3 += 16;
  }

  while (v6 != 1800);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  v14 = 63;
  *(a1 + 152) = 0;
  do
  {
    v15 = 0;
    v16 = 0;
    v17 = (a2 + (v14 >> 3));
    do
    {
      v18 = *v17;
      v17 += 8;
      v16 |= ((v18 >> (v14 & 7)) & 1) << v15++;
    }

    while (v15 != 4);
    v48 = 0u;
    v47 = 0u;
    v50 = 0u;
    v51 = 0u;
    v46 = 1;
    v49 = 1;
    v19 = v16;
    v52 = 0u;
    v53 = 0u;
    v20 = ~v16;
    v21 = v55;
    v22 = 1;
    v54 = 0;
    do
    {
      sub_23940BE90(&v46, v21, (((v22++ ^ v19) - 1) & v20) >> 63);
      v21 += 120;
    }

    while (v22 != 16);
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
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    sub_23940B690(&v36, a1);
    sub_23940B7D8(&v26, a1, &v36);
    sub_23940B770(a1, &v26);
    sub_23940BF20(&v26, a1, &v46);
    result = sub_23940B770(a1, &v26);
    --v14;
  }

  while (v14 < 0x40);
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t *sub_23940BDD0(unint64_t *result, unsigned int *a2)
{
  v2 = a2[7] << 20;
  v3 = *(a2 + 6);
  v4 = (*(a2 + 5) << 40) & 0xFFF8FFFFFFFFFFFFLL | ((v3 & 7) << 48) | *a2 | (*(a2 + 4) << 32);
  v5 = *(a2 + 12);
  v6 = *(a2 + 27);
  v7 = *(a2 + 26);
  v8 = *(a2 + 22);
  v9 = a2[4];
  v10 = ((v5 & 0x3F) << 45) | (*(a2 + 11) << 37) | (*(a2 + 10) << 29) | (*(a2 + 9) << 21) | (*(a2 + 8) << 13) | (32 * *(a2 + 7)) | (v3 >> 3);
  v11 = ((v9 & 0x1FFFFFF) << 26) | (*(a2 + 15) << 18) | (*(a2 + 14) << 10) | (4 * *(a2 + 13)) | (v5 >> 6);
  v12 = ((v8 & 0xFFFFFFF) << 23) | (*(a2 + 21) << 15) | (*(a2 + 20) << 7) | (v9 >> 25);
  *result = v4;
  result[1] = v10;
  result[2] = v11;
  result[3] = v12;
  result[4] = v2 | (v6 << 12) | (16 * v7) | (v8 >> 28);
  return result;
}

uint64_t sub_23940BE90(uint64_t result, uint64_t a2, unsigned int a3)
{
  for (i = 0; i != 40; i += 8)
  {
    *(result + i) = *(a2 + i) & -a3 | *(result + i) & (a3 - 1);
  }

  for (j = 0; j != 40; j += 8)
  {
    *(result + 40 + j) = *(a2 + 40 + j) & -a3 | *(result + 40 + j) & (a3 - 1);
  }

  for (k = 0; k != 40; k += 8)
  {
    *(result + 80 + k) = *(a2 + 80 + k) & -a3 | *(result + 80 + k) & (a3 - 1);
  }

  return result;
}

int64x2_t sub_23940BF20(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  memset(v26, 0, 40);
  memset(v25, 0, 40);
  v6 = *(a2 + 32) + *(a2 + 72);
  v7 = vaddq_s64(*(a2 + 16), *(a2 + 56));
  *a1 = vaddq_s64(*a2, *(a2 + 40));
  *(a1 + 16) = v7;
  *(a1 + 32) = v6;
  sub_23940B568((a1 + 40), (a2 + 40), a2);
  sub_23940F8A0(v26[0].i64, a1, a3);
  sub_23940F8A0(v27.i64, (a1 + 40), a3 + 5);
  sub_23940F8A0(v25[0].i64, a3 + 10, (a2 + 120));
  v8 = 2 * *(a2 + 112);
  v9 = vaddq_s64(*(a2 + 96), *(a2 + 96));
  *(a1 + 120) = vaddq_s64(*(a2 + 80), *(a2 + 80));
  *(a1 + 136) = v9;
  *(a1 + 152) = v8;
  v10 = v26[2].i64[0];
  v11 = v29;
  v12 = v26[2].i64[0] - v29 + 0xFFFFFFFFFFFFELL;
  v13 = v26[0];
  v14 = v26[1];
  v15 = v27;
  v16 = v28;
  v24 = vdupq_n_s64(0xFFFFFFFFFFFFEuLL);
  v17 = vaddq_s64(vsubq_s64(v26[1], v28), v24);
  *a1 = vaddq_s64(vsubq_s64(v26[0], v27), xmmword_2395C3240);
  *(a1 + 16) = v17;
  *(a1 + 32) = v12;
  *(a1 + 40) = vaddq_s64(v15, v13);
  *(a1 + 56) = vaddq_s64(v16, v14);
  *(a1 + 72) = v11 + v10;
  sub_23940B5AC(v26, (a1 + 120));
  v18 = v26[2].i64[0] - v25[2].i64[0] + 0xFFFFFFFFFFFFELL;
  v19 = v26[0];
  v20 = v26[1];
  v21 = v25[0];
  v22 = v25[1];
  *(a1 + 80) = vaddq_s64(v25[0], v26[0]).u64[0];
  *(a1 + 120) = vaddq_s64(vsubq_s64(v19, v21), xmmword_2395C3240);
  *(a1 + 104) = vaddq_s64(*(&v25[1] + 8), *(&v26[1] + 8));
  *(a1 + 88) = vaddq_s64(vextq_s8(v21, v22, 8uLL), vextq_s8(v19, v20, 8uLL));
  result = vaddq_s64(vsubq_s64(v20, v22), v24);
  *(a1 + 136) = result;
  *(a1 + 152) = v18;
  return result;
}

uint64_t *sub_23940C0C8(uint64_t a1, int8x16_t *a2)
{
  v3 = 0;
  v38 = *MEMORY[0x277D85DE8];
  v4.i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v4.i64[1] = 0xF0F0F0F0F0F0F0FLL;
  do
  {
    v5 = *a2++;
    v39.val[0] = vandq_s8(v5, v4);
    v39.val[1] = vshrq_n_u8(v5, 4uLL);
    v6 = &v36[v3];
    vst2q_s8(v6, v39);
    v3 += 32;
  }

  while (v3 != 64);
  v7 = 0;
  v8 = 0;
  do
  {
    v9 = v36[v7] + v8;
    v8 = (v9 + 8) << 24 >> 28;
    v36[v7++] = v9 - ((v9 + 8) & 0xF0);
  }

  while (v7 != 63);
  v10 = 0;
  memset(v27, 0, sizeof(v27));
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  v37 += v8;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  v11 = 1;
  *(a1 + 40) = 1;
  *(a1 + 80) = 0u;
  v12 = (a1 + 80);
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 80) = 1;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  do
  {
    sub_23940C350(v23, v10, v36[v11]);
    sub_23940BF20(v27, a1, v23);
    sub_23940B770(a1, v27);
    ++v10;
    v13 = v11 >= 0x3E;
    v11 += 2;
  }

  while (!v13);
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  v14 = *(a1 + 16);
  v28[0] = *a1;
  v28[1] = v14;
  v15 = *(a1 + 32);
  v16 = *(a1 + 56);
  v30 = *(a1 + 40);
  v31 = v16;
  v17 = *(a1 + 72);
  v29 = v15;
  v32 = v17;
  v18 = *(a1 + 96);
  v33 = *v12;
  v34 = v18;
  v35 = *(a1 + 112);
  sub_23940C530(v27, v28);
  sub_23940B718(v25, v27);
  sub_23940C530(v27, v25);
  sub_23940B718(v25, v27);
  sub_23940C530(v27, v25);
  sub_23940B718(v25, v27);
  sub_23940C530(v27, v25);
  sub_23940B770(a1, v27);
  v19 = 0;
  v20 = 0;
  do
  {
    sub_23940C350(v23, v19, v36[v20]);
    sub_23940BF20(v27, a1, v23);
    result = sub_23940B770(a1, v27);
    ++v19;
    v13 = v20 >= 0x3E;
    v20 += 2;
  }

  while (!v13);
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23940C350(uint64_t a1, int a2, int a3)
{
  v4 = 0;
  v43 = *MEMORY[0x277D85DE8];
  v5 = &unk_2395C3250 + 768 * a2;
  memset(v42, 0, sizeof(v42));
  v41 = 0u;
  v40 = ((a3 - 1) & ~a3) < 0;
  v42[15] = v40;
  do
  {
    v7 = 0;
    v8 = vdupq_n_s8(((++v4 ^ (a3 - 2 * ((a3 >> 31) & a3))) - 1) >> 63);
    do
    {
      *(&v40 + v7) = veorq_s8(vandq_s8(*&v5[v7], v8), *(&v40 + v7));
      v7 += 16;
    }

    while (v7 != 96);
    v5 += 96;
  }

  while (v4 != 8);
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  sub_23940BDD0(&v37, &v40);
  sub_23940BDD0(&v34, &v42[15]);
  sub_23940BDD0(&v31, &v42[47]);
  v9 = v38;
  v10 = v37;
  v11 = v38;
  *a1 = v37;
  *(a1 + 16) = v9;
  v12 = v35;
  *(a1 + 40) = v34;
  v13 = v34;
  v14 = v35;
  *(a1 + 56) = v12;
  v15 = v32;
  v16 = v31;
  v17 = v32;
  *(a1 + 80) = v31;
  *(a1 + 96) = v15;
  v23[0] = v13;
  v23[1] = v14;
  v25 = v10;
  v26 = v11;
  v18 = v39;
  *(a1 + 32) = v39;
  v19 = v36;
  *(a1 + 72) = v36;
  v20 = v33;
  *(a1 + 112) = v33;
  v24 = v19;
  v27 = v18;
  v28 = vsubq_s64(xmmword_2395C3240, v16);
  v29 = vsubq_s64(vdupq_n_s64(0xFFFFFFFFFFFFEuLL), v17);
  v30 = 0xFFFFFFFFFFFFELL - v20;
  result = sub_23940BE90(a1, v23, (a3 >> 7) & 1);
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t *sub_23940C530(uint64_t a1, unint64_t *a2)
{
  v83 = 0;
  v81 = 0u;
  v82 = 0u;
  v80 = 0;
  v78 = 0u;
  v79 = 0u;
  v77 = 0;
  v75 = 0u;
  v76 = 0u;
  sub_23940B3F0(v81.i64, a2);
  sub_23940B3F0(v78.i64, a2 + 5);
  sub_23940B3F0(&v75, a2 + 10);
  v4 = ((v75 >> 50) & 0x1FFF) + 2 * *(&v75 + 1);
  v5 = (v4 >> 51) + 2 * v76;
  v6 = (v5 >> 51) + 2 * *(&v76 + 1);
  v7 = (v6 >> 51) + 2 * v77;
  v8 = a2[7] + a2[2];
  v9 = a2[8] + a2[3];
  v10 = a2[9] + a2[4];
  v11 = a2[5] + *a2;
  v12 = a2[6] + a2[1];
  v13 = 2 * v9;
  v14 = 38 * v9 * v8 + v11 * v11 + 38 * v10 * v12;
  v15 = 2 * v9 * v12 + v8 * v8 + 2 * v10 * v11;
  v16 = 19 * v9 * v9;
  v17 = (38 * v10 * v9) >> 64;
  v18 = (19 * v9 * v9) >> 64;
  v19 = 38 * v10 * v9;
  v20 = 2 * v8;
  v21 = (2 * v8 * v12) >> 64;
  v22 = v14 >> 51;
  v24 = __PAIR128__(v18, v16) + 2 * v12 * v11 + 38 * v10 * v8;
  v23 = *(&v24 + 1);
  v25 = v12 * v12;
  v26 = __CFADD__(v24, v22);
  v27 = v24 + v22;
  v28 = v20 * v11;
  if (v26)
  {
    v23 = *(&v24 + 1) + 1;
  }

  v26 = __CFADD__(v28, v25);
  v29 = v28 + v25;
  v30 = (v13 * v11) >> 64;
  v31 = v13 * v11;
  v32 = v20 * v12;
  v34 = v29 + v19;
  v33 = (__PAIR128__(((v12 * v12) >> 64) + v26 + ((v20 * v11) >> 64), v29) + __PAIR128__(v17, v19)) >> 64;
  *(&v36 + 1) = v23;
  *&v36 = v27;
  v35 = v36 >> 51;
  v37 = v29 + v19 + v35;
  if (__CFADD__(v34, v35))
  {
    ++v33;
  }

  v38 = __PAIR128__(v21 + __CFADD__(v31, v32) + v30, v31 + v32) + 19 * v10 * v10;
  *(&v40 + 1) = v33;
  *&v40 = v34 + v35;
  v39 = v40 >> 51;
  v41 = 2 * (v75 & 0x3FFFFFFFFFFFFLL) + 19 * (v7 >> 51);
  v42 = v78;
  v43 = v79;
  v44 = v81;
  v45 = v82;
  *(a1 + 80) = vaddq_s64(vsubq_s64(v78, v81), xmmword_2395C3240);
  v46 = (v4 & 0x7FFFFFFFFFFFFLL) + (v41 >> 51);
  v72 = (v5 & 0x7FFFFFFFFFFFFLL) + (v46 >> 51);
  v70 = v41 & 0x7FFFFFFFFFFFFLL;
  v71 = v46 & 0x7FFFFFFFFFFFFLL;
  v73 = v6 & 0x7FFFFFFFFFFFFLL;
  v74 = v7 & 0x7FFFFFFFFFFFFLL;
  if (__CFADD__(v38, v39))
  {
    v47 = *(&v38 + 1) + 1;
  }

  else
  {
    v47 = (__PAIR128__(v21 + __CFADD__(v31, v32) + v30, v31 + v32) + 19 * v10 * v10) >> 64;
  }

  *(&v49 + 1) = v47;
  *&v49 = v38 + v39;
  v48 = v49 >> 51;
  v50 = v37 & 0x7FFFFFFFFFFFFLL;
  v51 = (v38 + v39) & 0x7FFFFFFFFFFFFLL;
  v26 = __CFADD__(v15, v48);
  v52 = v15 + v48;
  if (v26)
  {
    v53 = *(&v15 + 1) + 1;
  }

  else
  {
    v53 = *(&v15 + 1);
  }

  *(&v54 + 1) = v53;
  *&v54 = v52;
  v55 = v52 & 0x7FFFFFFFFFFFFLL;
  v56 = (v14 & 0x7FFFFFFFFFFFFLL) + 19 * (v54 >> 51);
  v57 = v56 & 0x7FFFFFFFFFFFFLL;
  v58 = (v27 & 0x7FFFFFFFFFFFFLL) + (v56 >> 51);
  v59 = v80;
  v60 = v83;
  *(a1 + 72) = v83 + v80;
  *(a1 + 112) = v59 - v60 + 0xFFFFFFFFFFFFELL;
  *(a1 + 40) = vaddq_s64(v44, v42);
  *(a1 + 56) = vaddq_s64(v45, v43);
  *(a1 + 96) = vaddq_s64(vsubq_s64(v43, v45), vdupq_n_s64(0xFFFFFFFFFFFFEuLL));
  sub_23940B5AC(&v78, (a1 + 40));
  v61 = (v58 & 0x7FFFFFFFFFFFFLL) - v78.i64[1] + 0xFFFFFFFFFFFFELL;
  v62 = v50 + (v58 >> 51) - v79.i64[0] + 0xFFFFFFFFFFFFELL;
  v63 = v51 - v79.i64[1] + 0xFFFFFFFFFFFFELL;
  v64 = v55 - v80 + 0xFFFFFFFFFFFFELL;
  *a1 = v57 + 0xFFFFFFFFFFFDALL - v78.i64[0];
  *(a1 + 8) = v61;
  *(a1 + 16) = v62;
  *(a1 + 24) = v63;
  *(a1 + 32) = v64;
  result = sub_23940B5AC(&v78, (a1 + 80));
  v66 = v71 - v78.i64[1] + 0xFFFFFFFFFFFFELL;
  v67 = v72 - v79.i64[0] + 0xFFFFFFFFFFFFELL;
  v68 = v73 - v79.i64[1] + 0xFFFFFFFFFFFFELL;
  v69 = v74 - v80 + 0xFFFFFFFFFFFFELL;
  *(a1 + 120) = v70 + 0xFFFFFFFFFFFDALL - v78.i64[0];
  *(a1 + 128) = v66;
  *(a1 + 136) = v67;
  *(a1 + 144) = v68;
  *(a1 + 152) = v69;
  return result;
}

uint64_t *sub_23940C89C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69[90] = *MEMORY[0x277D85DE8];
  memset(v36, 0, sizeof(v36));
  v48 = 0u;
  v49 = 0u;
  v51 = 0u;
  v52 = 0u;
  v47 = 1;
  v50 = 1;
  v55 = 0u;
  v54 = 0u;
  v53 = 1;
  v58 = 0;
  v57 = 0u;
  v56 = 0u;
  sub_23940B690(&v59, a3);
  v6 = 0;
  v7 = *(a3 + 16);
  v61[0] = *a3;
  v61[1] = v7;
  v8 = *(a3 + 56);
  v63 = *(a3 + 40);
  v64 = v8;
  v9 = *(a3 + 96);
  v66 = *(a3 + 80);
  v10 = *(a3 + 72);
  v62 = *(a3 + 32);
  v65 = v10;
  v68 = *(a3 + 112);
  v11 = v61;
  v12 = &v60;
  v67 = v9;
  v13 = v69;
  do
  {
    sub_23940C530(v36, v11);
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    sub_23940B770(&v37, v36);
    sub_23940B690(v12, &v37);
    if (v6 + 2 <= 7)
    {
      sub_23940B718(v13, v36);
    }

    sub_23940B7D8(v36, a3, v12);
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    sub_23940B770(&v37, v36);
    sub_23940B690((v12 + 20), &v37);
    if (v6 + 2 <= 6)
    {
      sub_23940B718(v13 + 15, v36);
    }

    v6 += 2;
    v12 += 40;
    v13 += 30;
    v11 += 15;
  }

  while (v6 < 0xE);
  v14 = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  do
  {
    sub_23940C530(v36, a1);
    sub_23940B718(a1, v36);
    sub_23940C530(v36, a1);
    sub_23940B718(a1, v36);
    sub_23940C530(v36, a1);
    sub_23940B718(a1, v36);
    sub_23940C530(v36, a1);
    sub_23940B770(&v37, v36);
    v15 = 0;
    v16 = *(a2 - (v14 >> 3) + 31);
    v26 = 0u;
    v25 = 0u;
    v17 = (v16 >> (~v14 & 4)) & 0xF;
    v28 = 0u;
    v29 = 0u;
    v24 = 1;
    v27 = 1;
    v31 = 0u;
    v32 = 0u;
    v30 = 1;
    v33 = 0u;
    v34 = 0u;
    v35 = 0;
    v18 = &v47;
    do
    {
      v19 = 0;
      v20 = ((v17 ^ v15) - 1) >> 63;
      do
      {
        *(&v24 + v19 * 8) = v18[v19] & v20 | *(&v24 + v19 * 8) & ~v20;
        ++v19;
      }

      while (v19 != 5);
      do
      {
        *(&v24 + v19 * 8) = v18[v19] & v20 | *(&v24 + v19 * 8) & ~v20;
        ++v19;
      }

      while (v19 != 10);
      do
      {
        *(&v24 + v19 * 8) = v18[v19] & v20 | *(&v24 + v19 * 8) & ~v20;
        ++v19;
      }

      while (v19 != 15);
      do
      {
        *(&v24 + v19 * 8) = v18[v19] & v20 | *(&v24 + v19 * 8) & ~v20;
        ++v19;
      }

      while (v19 != 20);
      ++v15;
      v18 += 20;
    }

    while (v15 != 16);
    sub_23940B7D8(v36, &v37, &v24);
    result = sub_23940B718(a1, v36);
    v22 = v14 >= 0xFC;
    v14 += 4;
  }

  while (!v22);
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

unsigned __int16 *sub_23940CC50(unsigned __int16 *result)
{
  v1 = *(result + 15);
  v2 = *(result + 9);
  v3 = (v2 >> 24) | (*(result + 40) << 8) | (*(result + 41) << 16);
  v4 = ((HIBYTE(*(result + 11)) | (*(result + 48) << 8) | (*(result + 49) << 16)) >> 2) & 0x1FFFFF;
  v5 = (*(result + 49) >> 7) & 0x1FFFFF;
  v6 = (*(result + 13) >> 4) & 0x1FFFFF;
  v7 = ((HIBYTE(*(result + 13)) | (*(result + 56) << 8) | (*(result + 57) << 16)) >> 1) & 0x1FFFFF;
  v8 = ((v1 >> 6) & 0x1FFFFF) + 666643 * v4;
  v9 = (*(result + 21) | ((*(result + 23) & 0x1F) << 16)) + 470296 * v5 + 666643 * v6 + 654183 * v4;
  v10 = (((v1 >> 24) | (*(result + 19) << 8) | (*(result + 20) << 16)) >> 3) + 666643 * v5 + 470296 * v4 + ((v8 + 0x100000) >> 21);
  v11 = ((*(result + 23) >> 5) & 0x1FFFFF) + 654183 * v5 + 470296 * v6 - 997805 * v4 + 666643 * v7 + ((v9 + 0x100000) >> 21);
  v12 = (((HIBYTE(*(result + 23)) | (*(result + 27) << 8) | (*(result + 28) << 16)) >> 2) & 0x1FFFFF) - 997805 * v5 + 654183 * v6 + 136657 * v4;
  v13 = ((*(result + 7) >> 7) & 0x1FFFFF) + 136657 * v5 - 997805 * v6 - 683901 * v4;
  v14 = ((*(result + 31) >> 4) & 0x1FFFFF) - 683901 * v5 + 136657 * v6;
  v15 = (((HIBYTE(*(result + 31)) | (*(result + 35) << 8) | (*(result + 36) << 16)) >> 1) & 0x1FFFFF) - 683901 * v6;
  v16 = *(result + 15) >> 3;
  v17 = ((v2 >> 6) & 0x1FFFFF) - 997805 * v16;
  v18 = (v3 >> 3) + 136657 * v16;
  v19 = (result[21] | ((result[22] & 0x1F) << 16)) - 683901 * v16;
  v20 = v14 + 470296 * v16;
  v21 = v13 + 666643 * v16;
  v22 = v15 + 654183 * v16;
  v23 = (*(result + 57) >> 6) & 0x1FFFFF;
  v24 = v17 + 136657 * v23 - 683901 * v7;
  v25 = v20 + 654183 * v23 - 997805 * v7;
  v26 = v12 + 666643 * v23 + 470296 * v7;
  v27 = v21 + 470296 * v23 + 654183 * v7 + ((v26 + 0x100000) >> 21);
  v28 = v22 - 997805 * v23 + 136657 * v7 + ((v25 + 0x100000) >> 21);
  v29 = v25 - ((v25 + 0x100000) & 0xFFFFFFFFFFE00000);
  v30 = v18 - 683901 * v23 + ((v24 + 0x100000) >> 21);
  v31 = ((*(result + 11) >> 5) & 0x1FFFFF) + ((v19 + 0x100000) >> 21);
  v32 = v29 + ((v27 + 0x100000) >> 21);
  v33 = v24 - ((v24 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v28 + 0x100000) >> 21);
  v34 = v28 - ((v28 + 0x100000) & 0xFFFFFFFFFFE00000);
  v35 = v19 - ((v19 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v30 + 0x100000) >> 21);
  v36 = v30 - ((v30 + 0x100000) & 0xFFFFFFFFFFE00000);
  v37 = v26 - 683901 * v31 - ((v26 + 0x100000) & 0xFFFFFFFFFFE00000);
  v38 = ((*(result + 7) >> 7) & 0x1FFFFF) + 666643 * v36;
  v39 = ((*(result + 5) >> 4) & 0x1FFFFF) + 666643 * v35 + 470296 * v36;
  v40 = (((HIBYTE(*(result + 5)) | (*(result + 14) << 8) | (*(result + 15) << 16)) >> 1) & 0x1FFFFF) + 666643 * v31 + 470296 * v35 + 654183 * v36;
  v41 = v8 - ((v8 + 0x100000) & 0x7FFFFE00000) + 470296 * v31 + 654183 * v35 - 997805 * v36;
  v42 = v10 - ((v10 + 0x100000) & 0x7FFFFFFFFFE00000) + 654183 * v31 - 997805 * v35 + 136657 * v36;
  v43 = v9 - ((v9 + 0x100000) & 0xFFFFFE00000) + ((v10 + 0x100000) >> 21) - 997805 * v31 + 136657 * v35 - 683901 * v36;
  v44 = (((HIBYTE(*(result + 1)) | (*(result + 6) << 8) | (*(result + 7) << 16)) >> 2) & 0x1FFFFF) + 666643 * v33;
  v45 = v38 + 470296 * v33;
  v46 = v39 + 654183 * v33;
  v47 = v40 - 997805 * v33;
  v48 = v41 + 136657 * v33;
  v49 = v42 - 683901 * v33;
  v50 = v48 - 683901 * v34;
  v51 = v37 + ((v11 + 0x100000) >> 21);
  v52 = (*result | ((result[1] & 0x1F) << 16)) + 666643 * v32;
  v53 = v44 + 470296 * v34 + 654183 * v32;
  v54 = v45 + 654183 * v34 - 997805 * v32;
  v55 = v46 - 997805 * v34 + 136657 * v32;
  v56 = v47 + 136657 * v34 - 683901 * v32;
  v57 = ((*(result + 1) >> 5) & 0x1FFFFF) + 666643 * v34 + 470296 * v32 + ((v52 + 0x100000) >> 21);
  v58 = v52 - ((v52 + 0x100000) & 0xFFFFFFFFFFE00000);
  v59 = v49 + ((v50 + 0x100000) >> 21);
  v60 = v50 - ((v50 + 0x100000) & 0xFFFFFFFFFFE00000);
  v61 = v11 + 136657 * v31 - ((v11 + 0x100000) & 0xFFFFFFFFFFE00000) - 683901 * v35 + ((v43 + 0x100000) >> 21);
  v62 = v27 - ((v27 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v51 + 0x100000) >> 21);
  v63 = v57 + 0x100000;
  v64 = v43 - ((v43 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v59 + 0x100000) >> 21);
  v65 = v59 - ((v59 + 0x100000) & 0xFFFFFFFFFFE00000);
  v66 = v51 - ((v51 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v61 + 0x100000) >> 21);
  v67 = v61 - ((v61 + 0x100000) & 0xFFFFFFFFFFE00000);
  v68 = (v62 + 0x100000) >> 21;
  v69 = v54 + ((v53 + 0x100000) >> 21);
  v70 = v69 - 997805 * v68 - ((v69 + 0x100000) & 0xFFFFFFFFFFE00000);
  v71 = v56 + ((v55 + 0x100000) >> 21);
  v72 = v55 + 136657 * v68 - ((v55 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v69 + 0x100000) >> 21);
  v73 = v58 + 666643 * v68;
  v74 = v71 - 683901 * v68;
  v71 += 0x100000;
  v75 = v57 + 470296 * v68 - ((v57 + 0x100000) & 0xFFFFFFFFFFE00000) + (v73 >> 21);
  v76 = v53 + 654183 * v68 - ((v53 + 0x100000) & 0xFFFFFFFFFFE00000) + (v63 >> 21) + (v75 >> 21);
  v77 = v70 + (v76 >> 21);
  v78 = v72 + (v77 >> 21);
  v79 = v74 - (v71 & 0xFFFFFFFFFFE00000) + (v78 >> 21);
  v80 = v60 + (v71 >> 21) + (v79 >> 21);
  v81 = v65 + (v80 >> 21);
  v82 = v64 + (v81 >> 21);
  v83 = v67 + (v82 >> 21);
  v84 = v66 + (v83 >> 21);
  v85 = v62 - ((v62 + 0x100000) & 0xFFFFFFFFFFE00000) + (v84 >> 21);
  v86 = (v73 & 0x1FFFFF) + 666643 * (v85 >> 21);
  *(result + 1) = (v73 + 11283 * (v85 >> 21)) >> 8;
  v87 = (v75 & 0x1FFFFF) + 470296 * (v85 >> 21) + (v86 >> 21);
  *result = v73 + 19 * (v85 >> 21);
  *(result + 2) = (((v73 & 0x1FFFFF) + 666643 * (v85 >> 21)) >> 16) & 0x1F | (32 * (v75 + 24 * (v85 >> 21) + (v86 >> 21)));
  *(result + 3) = v87 >> 3;
  *(result + 4) = v87 >> 11;
  v88 = (v76 & 0x1FFFFF) + 654183 * (v85 >> 21) + (v87 >> 21);
  *(result + 5) = (v87 >> 19) & 3 | (4 * (v76 + 103 * (v85 >> 21) + (v87 >> 21)));
  *(result + 6) = v88 >> 6;
  v89 = (v77 & 0x1FFFFF) - 997805 * (v85 >> 21) + (v88 >> 21);
  *(result + 7) = (v88 >> 14) & 0x7F | ((v77 - -83 * (v85 >> 21) + (v88 >> 21)) << 7);
  *(result + 8) = v89 >> 1;
  *(result + 9) = v89 >> 9;
  v90 = (v78 & 0x1FFFFF) + 136657 * (v85 >> 21) + (v89 >> 21);
  *(result + 10) = (v89 >> 17) & 0xF | (16 * (v78 - 47 * (v85 >> 21) + (v89 >> 21)));
  *(result + 11) = v90 >> 4;
  *(result + 12) = v90 >> 12;
  v91 = (v79 & 0x1FFFFF) - 683901 * (v85 >> 21) + (v90 >> 21);
  *(result + 13) = ((v90 & 0x100000) != 0) | (2 * (v79 - 125 * (v85 >> 21) + (v90 >> 21)));
  *(result + 14) = v91 >> 7;
  v92 = (v80 & 0x1FFFFF) + (v91 >> 21);
  *(result + 15) = (v91 >> 15) & 0x3F | ((v80 + (v91 >> 21)) << 6);
  *(result + 16) = v92 >> 2;
  *(result + 17) = v92 >> 10;
  v93 = (v81 & 0x1FFFFF) + (v92 >> 21);
  *(result + 18) = (v92 >> 18) & 7 | (8 * (v81 + (v92 >> 21)));
  *(result + 19) = v93 >> 5;
  v94 = (v82 & 0x1FFFFF) + (v93 >> 21);
  *(result + 20) = v93 >> 13;
  *(result + 22) = (v82 + (v93 >> 21)) >> 8;
  v95 = (v83 & 0x1FFFFF) + (v94 >> 21);
  *(result + 21) = v94;
  *(result + 23) = BYTE2(v94) & 0x1F | (32 * (v83 + (v94 >> 21)));
  *(result + 24) = v95 >> 3;
  *(result + 25) = v95 >> 11;
  v96 = (v84 & 0x1FFFFF) + (v95 >> 21);
  v97 = (v85 & 0x1FFFFF) + (v96 >> 21);
  *(result + 26) = (v95 >> 19) & 3 | (4 * (v84 + (v95 >> 21)));
  *(result + 27) = v96 >> 6;
  *(result + 28) = (v96 >> 14) & 0x7F | ((v85 + (v96 >> 21)) << 7);
  *(result + 29) = ((v96 >> 21) + v85) >> 1;
  *(result + 30) = v97 >> 9;
  *(result + 31) = v97 >> 17;
  return result;
}

void sub_23940D26C(uint64_t a1, _OWORD *a2)
{
  __src[4] = *MEMORY[0x277D85DE8];
  sub_23942C1AC(__src, 0x20uLL);
  sub_23940D2E0(a1, a2, __src);
  v4 = *MEMORY[0x277D85DE8];
}

__n128 sub_23940D2E0(uint64_t a1, _OWORD *a2, unint64_t *__src)
{
  v13 = *MEMORY[0x277D85DE8];
  sub_239432620(__src, 0x20uLL, &v11);
  v11.i8[0] &= 0xF8u;
  v12 = v12 & 0x3F | 0x40;
  memset(v10, 0, sizeof(v10));
  sub_23940C0C8(v10, &v11);
  sub_23940AC38(a1, v10);
  v6 = *(__src + 1);
  *a2 = *__src;
  a2[1] = v6;
  result = *a1;
  v8 = *(a1 + 16);
  a2[2] = *a1;
  a2[3] = v8;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23940D3B0(unint64_t *a1, unint64_t *a2, size_t a3, unint64_t *__src)
{
  v203[4] = *MEMORY[0x277D85DE8];
  sub_239432620(__src, 0x20uLL, &v191);
  LOBYTE(v191) = v191 & 0xF8;
  HIBYTE(v202) = HIBYTE(v202) & 0x3F | 0x40;
  v190 = 0;
  memset(v189, 0, sizeof(v189));
  sub_23943321C(v189);
  sub_23943325C(v189, v203, 0x20uLL);
  sub_23943325C(v189, a2, a3);
  sub_23943335C(&v177, v189);
  sub_23940CC50(&v177);
  memset(v164, 0, sizeof(v164));
  sub_23940C0C8(v164, &v177);
  sub_23940AC38(a1, v164);
  sub_23943321C(v189);
  sub_23943325C(v189, a1, 0x20uLL);
  sub_23943325C(v189, __src + 4, 0x20uLL);
  sub_23943325C(v189, a2, a3);
  sub_23943335C(&v165, v189);
  sub_23940CC50(&v165);
  v8 = v165 | ((v166 & 0x1F) << 16);
  v9 = v173 | ((v174 & 0x1F) << 16);
  v10 = v191 | ((v192 & 0x1F) << 16);
  v11 = v199 | ((v200 & 0x1F) << 16);
  v12 = (v166 >> 5) & 0x1FFFFF;
  v13 = ((HIBYTE(v166) | (v167 << 8) | (v168[0] << 16)) >> 2) & 0x1FFFFF;
  v14 = (v192 >> 5) & 0x1FFFFF;
  v15 = ((HIBYTE(v192) | (v193 << 8) | (v194[0] << 16)) >> 2) & 0x1FFFFF;
  v163 = v14 * v12 + v10 * v13 + v15 * v8 + (((HIBYTE(v178) | (v179 << 8) | (v180[0] << 16)) >> 2) & 0x1FFFFF);
  v16 = (*v168 >> 7) & 0x1FFFFF;
  v17 = (*&v168[3] >> 4) & 0x1FFFFF;
  v18 = (*v194 >> 7) & 0x1FFFFF;
  v19 = (*&v194[3] >> 4) & 0x1FFFFF;
  v20 = v14 * v16 + v10 * v17 + v18 * v12 + v8 * v19 + v15 * v13 + ((*&v180[3] >> 4) & 0x1FFFFF);
  v21 = ((v168[6] | (v169 << 8) | (v170 << 16)) >> 1) & 0x1FFFFF;
  v22 = (v170 >> 6) & 0x1FFFFF;
  v23 = (v196 >> 6) & 0x1FFFFF;
  v24 = ((v194[6] | (v195 << 8) | (v196 << 16)) >> 1) & 0x1FFFFF;
  v162 = v21 * v14 + v10 * v22 + v18 * v16 + v13 * v19 + v15 * v17 + v8 * v23 + v24 * v12 + ((v182 >> 6) & 0x1FFFFF);
  v25 = ((v170 >> 24) | (v171 << 8) | (v172 << 16)) >> 3;
  v26 = ((v196 >> 24) | (v197 << 8) | (v198 << 16)) >> 3;
  v161 = v25 * v14 + v10 * v9 + v21 * v18 + v19 * v17 + v15 * v22 + v13 * v23 + v24 * v16 + v26 * v12 + v11 * v8 + v185 + ((v186 & 0x1F) << 16);
  v27 = (v174 >> 5) & 0x1FFFFF;
  v28 = ((HIBYTE(v174) | (v175 << 8) | (v176 << 16)) >> 2) & 0x1FFFFF;
  v29 = (v200 >> 5) & 0x1FFFFF;
  v30 = ((HIBYTE(v200) | (v201 << 8) | (v202 << 16)) >> 2) & 0x1FFFFF;
  v160 = v14 * v27 + v10 * v28 + v25 * v18 + v19 * v22 + v15 * v9 + v23 * v17 + v24 * v21 + v26 * v16 + v29 * v12 + v11 * v13 + v30 * v8 + (((HIBYTE(v186) | (v187 << 8) | (v188 << 16)) >> 2) & 0x1FFFFF);
  v31 = (v177 | ((v178 & 0x1F) << 16)) + v10 * v8;
  v32 = v8 * v14 + v10 * v12 + ((v178 >> 5) & 0x1FFFFF) + ((v31 + 0x100000) >> 21);
  v33 = v13 * v14 + v10 * v16 + v8 * v18 + v15 * v12 + ((*v180 >> 7) & 0x1FFFFF);
  v158 = v14 * v17 + v10 * v21 + v13 * v18 + v19 * v12 + v15 * v16 + v24 * v8 + ((v20 + 0x100000) >> 21) + (((v180[6] | (v181 << 8) | (v182 << 16)) >> 1) & 0x1FFFFF);
  v153 = v20 - ((v20 + 0x100000) & 0xFFFFFFFFFFE00000);
  v154 = v14 * v22 + v10 * v25 + v18 * v17 + v19 * v16 + v15 * v21 + v23 * v12 + v24 * v13 + v26 * v8 + (((v182 >> 24) | (v183 << 8) | (v184 << 16)) >> 3);
  v155 = v9 * v14 + v10 * v27 + v18 * v22 + v21 * v19 + v15 * v25 + v23 * v16 + v24 * v17 + v26 * v13 + v8 * v29 + v11 * v12 + ((v186 >> 5) & 0x1FFFFF);
  v34 = v176 >> 7;
  v35 = v28 * v14 + v10 * v34;
  v36 = v202 >> 7;
  v37 = v35 + v9 * v18 + v25 * v19 + v15 * v27 + v21 * v23 + v24 * v22 + v26 * v17 + v13 * v29 + v11 * v16 + v8 * v36;
  v38 = v14 * v34 + v18 * v27 + v9 * v19 + v15 * v28 + v23 * v22 + v24 * v25 + v26 * v21 + v29 * v16 + v11 * v17 + v36 * v12;
  v39 = v37 + v30 * v12 + (v188 >> 7);
  v40 = v38 + v30 * v13;
  v41 = v28 * v18 + v19 * v27 + v15 * v34 + v25 * v23 + v24 * v9 + v26 * v22 + v29 * v17 + v11 * v21 + v13 * v36 + v30 * v16;
  v42 = v26 * v34 + v29 * v27 + v11 * v28 + v25 * v36 + v30 * v9;
  v43 = v28 * v29 + v11 * v34 + v9 * v36 + v30 * v27 + ((v42 + 0x100000) >> 21);
  v44 = v18 * v34 + v28 * v19 + v9 * v23 + v24 * v27 + v26 * v25 + v21 * v29 + v11 * v22 + v36 * v16 + v30 * v17;
  v45 = v19 * v34 + v23 * v27 + v24 * v28 + v26 * v9 + v29 * v22 + v11 * v25 + v36 * v17;
  v46 = v28 * v23 + v24 * v34 + v26 * v27 + v25 * v29 + v11 * v9 + v21 * v36;
  v47 = v33 + ((v163 + 0x100000) >> 21);
  v48 = v41 + ((v40 + 0x100000) >> 21);
  v49 = v46 + v30 * v22;
  v50 = v23 * v34 + v26 * v28 + v9 * v29 + v11 * v27 + v36 * v22;
  v51 = v45 + v30 * v21 + ((v44 + 0x100000) >> 21);
  v52 = v50 + v30 * v25 + ((v49 + 0x100000) >> 21);
  v53 = v29 * v34 + v36 * v27 + v30 * v28;
  v54 = v28 * v36 + v30 * v34 + ((v53 + 0x100000) >> 21);
  v55 = v53 - ((v53 + 0x100000) & 0x1FFFFFFE00000);
  v56 = v36 * v34;
  v57 = (v56 + 0x100000) >> 21;
  v58 = v32 + 0x100000;
  v156 = v32 - ((v32 + 0x100000) & 0xFFFFFFFFFFE00000);
  v159 = v153 + ((v47 + 0x100000) >> 21);
  v157 = v47 - ((v47 + 0x100000) & 0xFFFFFFFFFFE00000);
  v59 = v42 - ((v42 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v52 + 0x100000) >> 21);
  v60 = v52 - ((v52 + 0x100000) & 0xFFFFFFFFFFE00000);
  v61 = v55 + ((v43 + 0x100000) >> 21);
  v62 = v43 - ((v43 + 0x100000) & 0xFFFFFFFFFFE00000);
  v63 = v56 - ((v56 + 0x100000) & 0x7FFFFFFE00000) + ((v54 + 0x100000) >> 21);
  v64 = v54 - ((v54 + 0x100000) & 0x1FFFFFFE00000);
  v65 = v49 - 683901 * v57 - ((v49 + 0x100000) & 0xFFFFFFFFFFE00000);
  v66 = v44 - 997805 * v57 - ((v44 + 0x100000) & 0xFFFFFFFFFFE00000);
  v67 = v40 + 470296 * v57 - ((v40 + 0x100000) & 0xFFFFFFFFFFE00000);
  v68 = v154 + ((v162 + 0x100000) >> 21);
  v69 = v162 + 666643 * v59 - ((v162 + 0x100000) & 0xFFFFFFFFFFE00000);
  v70 = v155 + ((v161 + 0x100000) >> 21);
  v71 = 666643 * v61 + 470296 * v62 + 654183 * v59 + v161 + ((v68 + 0x100000) >> 21) - ((v161 + 0x100000) & 0xFFFFFFFFFFE00000);
  v72 = v39 + ((v160 + 0x100000) >> 21);
  v73 = 666643 * v63 + 470296 * v64 + 654183 * v61 - 997805 * v62 + 136657 * v59 + ((v70 + 0x100000) >> 21) + v160 - ((v160 + 0x100000) & 0xFFFFFFFFFFE00000);
  v74 = 666643 * v62 + 470296 * v59 + v68 - ((v68 + 0x100000) & 0xFFFFFFFFFFE00000);
  v75 = 666643 * v64 + 470296 * v61 + 654183 * v62 - 997805 * v59 + v70 - ((v70 + 0x100000) & 0xFFFFFFFFFFE00000);
  v76 = v67 + 654183 * v63 - 997805 * v64 + 136657 * v61 - 683901 * v62 + ((v72 + 0x100000) >> 21);
  v77 = 470296 * v63 + 666643 * v57 + 654183 * v64 - 997805 * v61 + 136657 * v62 - 683901 * v59 + v72 - ((v72 + 0x100000) & 0xFFFFFFFFFFE00000);
  v78 = v66 + ((v48 + 0x100000) >> 21);
  v79 = v48 + 654183 * v57 - ((v48 + 0x100000) & 0xFFFFFFFFFFE00000) - 997805 * v63 + 136657 * v64 - 683901 * v61 + ((v76 + 0x100000) >> 21);
  v80 = v51 + 136657 * v57;
  v51 += 0x100000;
  v81 = v65 + (v51 >> 21);
  v82 = v69 + ((v158 + 0x100000) >> 21);
  v83 = v75 + ((v71 + 0x100000) >> 21);
  v84 = v78 + 136657 * v63 - 683901 * v64;
  v85 = v77 + ((v73 + 0x100000) >> 21);
  v86 = v80 - (v51 & 0xFFFFFFFFFFE00000) - 683901 * v63 + ((v84 + 0x100000) >> 21);
  v87 = v60 + ((v81 + 0x100000) >> 21);
  v88 = v81 - ((v81 + 0x100000) & 0xFFFFFFFFFFE00000);
  v89 = v76 - ((v76 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v85 + 0x100000) >> 21);
  v90 = v85 - ((v85 + 0x100000) & 0xFFFFFFFFFFE00000);
  v91 = v84 - ((v84 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v79 + 0x100000) >> 21);
  v92 = v79 - ((v79 + 0x100000) & 0xFFFFFFFFFFE00000);
  v93 = v88 + ((v86 + 0x100000) >> 21);
  v94 = v86 - ((v86 + 0x100000) & 0xFFFFFFFFFFE00000);
  v95 = v73 - 683901 * v87 + ((v83 + 0x100000) >> 21) - ((v73 + 0x100000) & 0xFFFFFFFFFFE00000);
  v96 = v74 + ((v82 + 0x100000) >> 21);
  v97 = -997805 * v87 + 136657 * v93 - 683901 * v94 + v71 + ((v96 + 0x100000) >> 21) - ((v71 + 0x100000) & 0xFFFFFFFFFFE00000);
  v98 = v82 + 470296 * v87 - ((v82 + 0x100000) & 0xFFFFFFFFFFE00000);
  v99 = v163 + (v58 >> 21) - ((v163 + 0x100000) & 0xFFFFFFFFFFE00000);
  v100 = v31 - ((v31 + 0x100000) & 0xFFFFFE00000) + 666643 * v89;
  v101 = v156 + 470296 * v89 + 666643 * v92 + ((v100 + 0x100000) >> 21);
  v102 = v158 + 666643 * v87 - ((v158 + 0x100000) & 0xFFFFFFFFFFE00000);
  v103 = v98 + 654183 * v93 - 997805 * v94 + 136657 * v91 - 683901 * v92;
  v104 = v96 + 654183 * v87 - 997805 * v93 + 136657 * v94 - ((v96 + 0x100000) & 0xFFFFFFFFFFE00000) - 683901 * v91 + ((v103 + 0x100000) >> 21);
  v105 = v103 - ((v103 + 0x100000) & 0xFFFFFFFFFFE00000);
  v106 = 136657 * v87 - 683901 * v93 + v83 - ((v83 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v97 + 0x100000) >> 21);
  v107 = v95 + 0x100000;
  v108 = v90 + ((v95 + 0x100000) >> 21);
  v109 = v97 - ((v97 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v104 + 0x100000) >> 21);
  v110 = v104 - ((v104 + 0x100000) & 0xFFFFFFFFFFE00000);
  v111 = v106 + 0x100000;
  v112 = v106 - ((v106 + 0x100000) & 0xFFFFFFFFFFE00000);
  v113 = v108 - ((v108 + 0x100000) & 0xFFFFFFFFFFE00000);
  v114 = (v108 + 0x100000) >> 21;
  v115 = v99 + 654183 * v89 + 666643 * v91 + 470296 * v92;
  v116 = v157 + 666643 * v94 - 997805 * v89 + 470296 * v91 + 654183 * v92 + ((v115 + 0x100000) >> 21);
  v117 = v116 + 0x100000;
  v118 = v159 + 666643 * v93;
  v119 = v102 + 470296 * v93 + 654183 * v94;
  v120 = v118 + 470296 * v94 + 136657 * v89;
  v121 = v119 - 683901 * v89 - 997805 * v91;
  v122 = v120 + 654183 * v91 - 997805 * v92;
  v123 = v121 + 136657 * v92 + ((v122 + 0x100000) >> 21);
  v124 = v105 + ((v123 + 0x100000) >> 21);
  v125 = v95 + (v111 >> 21);
  v126 = v100 - ((v100 + 0x100000) & 0xFFFFFFFFFFE00000) + 666643 * v114;
  v127 = v107 & 0xFFFFFFFFFFE00000;
  v128 = v101 + 470296 * v114 - ((v101 + 0x100000) & 0xFFFFFFFFFFE00000) + (v126 >> 21);
  v129 = v115 + 654183 * v114 - ((v115 + 0x100000) & 0xFFFFFFFFFFE00000) + ((v101 + 0x100000) >> 21) + (v128 >> 21);
  v130 = v116 - 997805 * v114 - ((v116 + 0x100000) & 0xFFFFFFFFFFE00000) + (v129 >> 21);
  v131 = v122 + 136657 * v114 - ((v122 + 0x100000) & 0xFFFFFFFFFFE00000) + (v117 >> 21) + (v130 >> 21);
  v132 = v123 - 683901 * v114 - ((v123 + 0x100000) & 0xFFFFFFFFFFE00000) + (v131 >> 21);
  v133 = v124 + (v132 >> 21);
  v134 = v110 + (v133 >> 21);
  v135 = v109 + (v134 >> 21);
  v136 = v112 + (v135 >> 21);
  v137 = v125 - v127 + (v136 >> 21);
  v138 = v113 + (v137 >> 21);
  v139 = (v126 & 0x1FFFFF) + 666643 * (v138 >> 21);
  *(a1 + 33) = (v126 + 11283 * (v138 >> 21)) >> 8;
  v140 = (v128 & 0x1FFFFF) + 470296 * (v138 >> 21) + (v139 >> 21);
  *(a1 + 32) = v126 + 19 * (v138 >> 21);
  *(a1 + 34) = (((v126 & 0x1FFFFF) + 666643 * (v138 >> 21)) >> 16) & 0x1F | (32 * (v101 + 24 * v114 + (v126 >> 21) + 24 * (v138 >> 21) + (v139 >> 21)));
  *(a1 + 35) = v140 >> 3;
  *(a1 + 36) = v140 >> 11;
  v141 = (v129 & 0x1FFFFF) + 654183 * (v138 >> 21) + (v140 >> 21);
  *(a1 + 37) = (v140 >> 19) & 3 | (4 * (v129 + 103 * (v138 >> 21) + (v140 >> 21)));
  *(a1 + 38) = v141 >> 6;
  v142 = (v130 & 0x1FFFFF) - 997805 * (v138 >> 21) + (v141 >> 21);
  *(a1 + 39) = (v141 >> 14) & 0x7F | ((v130 - -83 * (v138 >> 21) + (v141 >> 21)) << 7);
  *(a1 + 40) = v142 >> 1;
  *(a1 + 41) = v142 >> 9;
  v143 = (v131 & 0x1FFFFF) + 136657 * (v138 >> 21) + (v142 >> 21);
  *(a1 + 42) = (v142 >> 17) & 0xF | (16 * (v131 - 47 * (v138 >> 21) + (v142 >> 21)));
  *(a1 + 43) = v143 >> 4;
  *(a1 + 44) = v143 >> 12;
  v144 = (v132 & 0x1FFFFF) - 683901 * (v138 >> 21) + (v143 >> 21);
  *(a1 + 45) = ((v143 & 0x100000) != 0) | (2 * (v132 - 125 * (v138 >> 21) + (v143 >> 21)));
  *(a1 + 46) = v144 >> 7;
  v145 = (v133 & 0x1FFFFF) + (v144 >> 21);
  *(a1 + 47) = (v144 >> 15) & 0x3F | ((v133 + (v144 >> 21)) << 6);
  *(a1 + 48) = v145 >> 2;
  *(a1 + 49) = v145 >> 10;
  v146 = (v134 & 0x1FFFFF) + (v145 >> 21);
  *(a1 + 50) = (v145 >> 18) & 7 | (8 * (v134 + (v145 >> 21)));
  *(a1 + 51) = v146 >> 5;
  v147 = (v135 & 0x1FFFFF) + (v146 >> 21);
  *(a1 + 52) = v146 >> 13;
  *(a1 + 54) = (v135 + (v146 >> 21)) >> 8;
  v148 = (v136 & 0x1FFFFF) + (v147 >> 21);
  *(a1 + 53) = v147;
  *(a1 + 55) = BYTE2(v147) & 0x1F | (32 * (v136 + (v147 >> 21)));
  *(a1 + 56) = v148 >> 3;
  *(a1 + 57) = v148 >> 11;
  v149 = (v137 & 0x1FFFFF) + (v148 >> 21);
  v150 = (v138 & 0x1FFFFF) + (v149 >> 21);
  *(a1 + 58) = (v148 >> 19) & 3 | (4 * (v137 + (v148 >> 21)));
  *(a1 + 59) = v149 >> 6;
  *(a1 + 60) = (v149 >> 14) & 0x7F | ((v138 + (v149 >> 21)) << 7);
  *(a1 + 61) = ((v149 >> 21) + v138) >> 1;
  *(a1 + 62) = v150 >> 9;
  *(a1 + 63) = v150 >> 17;
  v151 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t sub_23940E074(unint64_t *a1, size_t a2, uint64_t a3, int64x2_t *a4)
{
  v96 = *MEMORY[0x277D85DE8];
  if (*(a3 + 63) > 0x1Fu)
  {
    goto LABEL_8;
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v46 = 0u;
  memset(v45, 0, sizeof(v45));
  v43 = 0u;
  v44 = 0u;
  result = sub_23940AEC8(&v43, a4);
  if (!result)
  {
    goto LABEL_9;
  }

  v9 = ((0xFFFFFFFFFFFDALL - v43) >> 51) - *(&v43 + 1) + 0xFFFFFFFFFFFFELL;
  v10 = (v9 >> 51) - v44 + 0xFFFFFFFFFFFFELL;
  v11 = (v10 >> 51) - *(&v44 + 1) + 0xFFFFFFFFFFFFELL;
  v12 = (v11 >> 51) - *&v45[0] + 0xFFFFFFFFFFFFELL;
  v13 = ((0xFFFFFFFFFFFDALL - v43) & 0x7FFFFFFFFFFFFLL) + 19 * (v12 >> 51);
  v14 = (v9 & 0x7FFFFFFFFFFFFLL) + (v13 >> 51);
  *&v43 = v13 & 0x7FFFFFFFFFFFFLL;
  *(&v43 + 1) = v14 & 0x7FFFFFFFFFFFFLL;
  *&v44 = (v10 & 0x7FFFFFFFFFFFFLL) + (v14 >> 51);
  *(&v44 + 1) = v11 & 0x7FFFFFFFFFFFFLL;
  v15 = ((0xFFFFFFFFFFFDALL - *(&v48 + 1)) >> 51) - v49 + 0xFFFFFFFFFFFFELL;
  v16 = (v15 >> 51) - *(&v49 + 1) + 0xFFFFFFFFFFFFELL;
  v17 = (v16 >> 51) - v50 + 0xFFFFFFFFFFFFELL;
  v18 = (v17 >> 51) - *(&v50 + 1) + 0xFFFFFFFFFFFFELL;
  v19 = ((0xFFFFFFFFFFFDALL - *(&v48 + 1)) & 0x7FFFFFFFFFFFFLL) + 19 * (v18 >> 51);
  v20 = (v15 & 0x7FFFFFFFFFFFFLL) + (v19 >> 51);
  *&v45[0] = v12 & 0x7FFFFFFFFFFFFLL;
  *(&v48 + 1) = v19 & 0x7FFFFFFFFFFFFLL;
  *&v49 = v20 & 0x7FFFFFFFFFFFFLL;
  *(&v49 + 1) = (v16 & 0x7FFFFFFFFFFFFLL) + (v20 >> 51);
  *&v50 = v17 & 0x7FFFFFFFFFFFFLL;
  *(&v50 + 1) = v18 & 0x7FFFFFFFFFFFFLL;
  v21 = *(a3 + 16);
  v85[0] = *a3;
  v85[1] = v21;
  v22 = *(a3 + 32);
  v84 = *(a3 + 48);
  v83 = v22;
  v23 = *(&v84 + 1);
  if (*(&v84 + 1) > 0x1000000000000000uLL)
  {
LABEL_8:
    result = 0;
    goto LABEL_9;
  }

  v24 = 0x1000000000000000;
  v25 = 0x10u;
  while (v23 >= v24)
  {
    if (v25 != -8)
    {
      v23 = *(&v83 + v25);
      v24 = *(&unk_2395C92C8 + v25);
      v25 -= 8;
      if (v23 <= v24)
      {
        continue;
      }
    }

    goto LABEL_8;
  }

  v82 = 0;
  memset(v81, 0, sizeof(v81));
  sub_23943321C(v81);
  sub_23943325C(v81, a3, 0x20uLL);
  sub_23943325C(v81, a4, 0x20uLL);
  sub_23943325C(v81, a1, a2);
  sub_23943335C(v80, v81);
  sub_23940CC50(v80);
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v61 = 0u;
  memset(v60, 0, sizeof(v60));
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  memset(v57, 0, sizeof(v57));
  v55 = 0u;
  memset(v54, 0, sizeof(v54));
  v52 = 0u;
  v53 = 0u;
  memset(v51, 0, sizeof(v51));
  sub_23940FAB0(v95, v80);
  sub_23940FAB0(v94, &v83);
  sub_23940B690(v86, &v43);
  v66 = v43;
  v67 = v44;
  *v69 = *(v45 + 8);
  *&v69[16] = *(&v45[1] + 8);
  v68 = *&v45[0];
  *&v69[32] = *(&v45[2] + 1);
  v70[0] = v46;
  v70[1] = v47;
  *&v70[2] = v48;
  sub_23940C530(&v58, &v66);
  sub_23940B770(v51, &v58);
  sub_23940B7D8(&v58, v51, v86);
  sub_23940B770(v52.i64, &v58);
  sub_23940B690(v87, &v52);
  sub_23940B7D8(&v58, v51, v87);
  sub_23940B770(v52.i64, &v58);
  sub_23940B690(v88, &v52);
  sub_23940B7D8(&v58, v51, v88);
  sub_23940B770(v52.i64, &v58);
  sub_23940B690(v89, &v52);
  sub_23940B7D8(&v58, v51, v89);
  sub_23940B770(v52.i64, &v58);
  sub_23940B690(v90, &v52);
  sub_23940B7D8(&v58, v51, v90);
  sub_23940B770(v52.i64, &v58);
  sub_23940B690(v91, &v52);
  sub_23940B7D8(&v58, v51, v91);
  sub_23940B770(v52.i64, &v58);
  sub_23940B690(v92, &v52);
  sub_23940B7D8(&v58, v51, v92);
  sub_23940B770(v52.i64, &v58);
  sub_23940B690(&v93, &v52);
  memset(&v69[8], 0, 32);
  v67 = 0u;
  v68 = 0;
  v66 = 0u;
  *v69 = 1;
  memset(v70 + 8, 0, 32);
  v27 = 255;
  *&v70[0] = 1;
  while (1)
  {
    v28 = v27;
    if (v95[v27])
    {
      break;
    }

    v29 = v94[v27];
    if (v94[v28])
    {
      break;
    }

    v27 = v28 - 1;
    if (!v28)
    {
      goto LABEL_27;
    }
  }

  if ((v28 & 0x80000000) == 0)
  {
    v42 = vdupq_n_s64(0xFFFFFFFFFFFFEuLL);
    do
    {
      sub_23940C530(&v58, &v66);
      v30 = v95[v28];
      if (v95[v28] < 1)
      {
        if ((v30 & 0x80) != 0)
        {
          sub_23940B770(v52.i64, &v58);
          sub_23940B998(&v58, &v52, &v86[20 * (-v30 >> 1)]);
        }
      }

      else
      {
        sub_23940B770(v52.i64, &v58);
        sub_23940B7D8(&v58, &v52, &v86[20 * (v30 >> 1)]);
      }

      v31 = v94[v28];
      if (v31 < 1)
      {
        if (v31 < 0)
        {
          sub_23940B770(v52.i64, &v58);
          v79 = 0;
          v32 = &qword_2395C9328[15 * (-v31 >> 1)];
          v77 = 0u;
          v78 = 0u;
          v76 = 0;
          v74 = 0u;
          v75 = 0u;
          v73 = 0;
          v71 = 0u;
          v72 = 0u;
          *(v60 + 8) = vaddq_s64(vsubq_s64(*(v54 + 8), v52), xmmword_2395C3240);
          v58 = vaddq_s64(v52, *(v54 + 8));
          v59 = vaddq_s64(v53, *(&v54[1] + 8));
          *(&v60[1] + 8) = vaddq_s64(vsubq_s64(*(&v54[1] + 8), v53), v42);
          *&v60[0] = v54[0].i64[0] + v54[2].i64[1];
          *(&v60[2] + 1) = v54[2].i64[1] - v54[0].i64[0] + 0xFFFFFFFFFFFFELL;
          sub_23940F8A0(v74.i64, &v58, v32 + 5);
          sub_23940F8A0(v77.i64, v60 + 1, v32);
          sub_23940F8A0(&v71, v32 + 10, v57 + 1);
          v58 = vaddq_s64(vsubq_s64(v74, v77), xmmword_2395C3240);
          v59 = vaddq_s64(vsubq_s64(v75, v78), v42);
          *(v60 + 8) = vaddq_s64(v77, v74);
          *(&v60[1] + 8) = vaddq_s64(v78, v75);
          *&v60[0] = v76 - v79 + 0xFFFFFFFFFFFFELL;
          *(&v60[2] + 1) = v79 + v76;
          v33 = 2 * *(&v55 + 1) + ((2 * v55) >> 51);
          v34 = (v33 >> 51) + 2 * v56;
          v35 = (v34 >> 51) + 2 * *(&v56 + 1);
          v36 = (v35 >> 51) + 2 * *&v57[0];
          v37 = ((2 * v55) & 0x7FFFFFFFFFFFELL) + 19 * (v36 >> 51);
          v38 = (v33 & 0x7FFFFFFFFFFFFLL) + (v37 >> 51);
          v37 &= 0x7FFFFFFFFFFFFuLL;
          v39 = v38 & 0x7FFFFFFFFFFFFLL;
          v40 = (v34 & 0x7FFFFFFFFFFFFLL) + (v38 >> 51);
          *&v61 = v37 + 0xFFFFFFFFFFFDALL - v71;
          *(&v61 + 1) = v39 - *(&v71 + 1) + 0xFFFFFFFFFFFFELL;
          *&v62 = v40 - v72 + 0xFFFFFFFFFFFFELL;
          *(&v62 + 1) = (v35 & 0x7FFFFFFFFFFFFLL) - *(&v72 + 1) + 0xFFFFFFFFFFFFELL;
          *&v63 = (v36 & 0x7FFFFFFFFFFFFLL) - v73 + 0xFFFFFFFFFFFFELL;
          *(&v63 + 1) = v71 + v37;
          *&v64 = *(&v71 + 1) + v39;
          *(&v64 + 1) = v72 + v40;
          *&v65 = *(&v72 + 1) + (v35 & 0x7FFFFFFFFFFFFLL);
          *(&v65 + 1) = v73 + (v36 & 0x7FFFFFFFFFFFFLL);
        }
      }

      else
      {
        sub_23940B770(v52.i64, &v58);
        sub_23940BF20(&v58, &v52, &qword_2395C9328[15 * (v31 >> 1)]);
      }

      sub_23940B718(&v66, &v58);
    }

    while (v28-- > 0);
  }

LABEL_27:
  sub_23940AC38(v86, &v66);
  result = sub_23945022C(v86, v85, 32) == 0;
LABEL_9:
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_23940E83C(_BYTE *a1, char *a2)
{
  sub_23942C1AC(a2, 0x20uLL);
  *a2 |= 7u;
  a2[31] = a2[31] & 0x3F | 0x80;

  return sub_23940E8A0(a1, a2);
}

_BYTE *sub_23940E8A0(_BYTE *a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 16);
  v18 = *a2;
  v19 = v3;
  v18.i8[0] &= 0xF8u;
  HIBYTE(v19) = HIBYTE(v3) & 0x3F | 0x40;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  memset(v12, 0, sizeof(v12));
  sub_23940C0C8(v12, &v18);
  memset(v6, 0, sizeof(v6));
  v10[0] = vaddq_s64(*(&v12[2] + 8), v13);
  v10[1] = vaddq_s64(*(&v12[3] + 8), v14);
  v7 = 0;
  v11 = v12[4].i64[1] + v15;
  v8[0] = vaddq_s64(vsubq_s64(v13, *(&v12[2] + 8)), xmmword_2395C3240);
  v8[1] = vaddq_s64(vsubq_s64(v14, *(&v12[3] + 8)), vdupq_n_s64(0xFFFFFFFFFFFFEuLL));
  v9 = v15 - v12[4].i64[1] + 0xFFFFFFFFFFFFELL;
  sub_23940F4EC(v6, v8);
  sub_23940F8A0(v6, v10, v6);
  result = sub_23940AD10(a1, v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_23940E9D8(char *a1, __int128 *a2, __int128 *a3)
{
  v232 = *MEMORY[0x277D85DE8];
  v226 = 0;
  v224 = 0u;
  v225 = 0u;
  v213 = 0;
  v211 = 0u;
  v212 = 0u;
  v210 = 0;
  v208 = 0u;
  v209 = 0u;
  v207 = 0;
  v205 = 0u;
  v206 = 0u;
  v204 = 0;
  v202 = 0u;
  v203 = 0u;
  v201 = 0;
  v199 = 0u;
  v200 = 0u;
  v198 = 0;
  v196 = 0u;
  v197 = 0u;
  v3 = a2[1];
  v227 = *a2;
  v228 = v3;
  LOBYTE(v227) = v227 & 0xF8;
  HIBYTE(v228) = HIBYTE(v3) & 0x3F | 0x40;
  v4 = a3[1];
  v229 = *a3;
  v230 = v4;
  HIBYTE(v230) = HIBYTE(v4) & 0x7F;
  sub_23940BDD0(&v224, &v229);
  v5 = 0;
  v222 = 0u;
  v223 = 0u;
  v221 = 1;
  v218 = 0u;
  v219 = 0u;
  v220 = 0;
  v215 = v224;
  v216 = v225;
  v217 = v226;
  v6 = 254;
  memset(&v214[0].u64[1], 0, 32);
  v214[0].i64[0] = 1;
  v180 = vdupq_n_s64(0xFFFFFFFFFFFFEuLL);
  do
  {
    v7 = 0;
    v194 = v6;
    v195 = (*(&v227 + (v6 >> 3)) >> (v6 & 7)) & 1;
    v8 = -(v195 ^ v5);
    do
    {
      v9 = *(&v221 + v7 * 8);
      v10 = v215.i64[v7];
      v11 = (v10 ^ v9) & v8;
      *(&v221 + v7 * 8) = v11 ^ v9;
      v215.i64[v7++] = v11 ^ v10;
    }

    while (v7 != 5);
    for (i = 0; i != 5; ++i)
    {
      v13 = *(&v218 + i * 8);
      v14 = v214[0].i64[i];
      v15 = (v14 ^ v13) & v8;
      *(&v218 + i * 8) = v15 ^ v13;
      v214[0].i64[i] = v15 ^ v14;
    }

    v199 = vaddq_s64(vsubq_s64(v215, v214[0]), xmmword_2395C3240);
    v200 = vaddq_s64(vsubq_s64(v216, v214[1]), v180);
    v201 = v217 - v214[2].i64[0] + 0xFFFFFFFFFFFFELL;
    v16 = v221 + 0xFFFFFFFFFFFDALL - v218;
    v17 = v222 - *(&v218 + 1) + 0xFFFFFFFFFFFFELL;
    v18 = *(&v222 + 1) - v219 + 0xFFFFFFFFFFFFELL;
    v19 = v223 - *(&v219 + 1) + 0xFFFFFFFFFFFFELL;
    v20 = *(&v223 + 1) - v220 + 0xFFFFFFFFFFFFELL;
    *&v196 = v16;
    *(&v196 + 1) = v17;
    *&v197 = v18;
    *(&v197 + 1) = v19;
    v198 = v20;
    v21 = v218 + v221;
    v22 = *(&v218 + 1) + v222;
    v23 = v219 + *(&v222 + 1);
    v24 = *(&v219 + 1) + v223;
    v192 = v220 + *(&v223 + 1);
    *&v205 = v218 + v221;
    *(&v205 + 1) = *(&v218 + 1) + v222;
    *&v206 = v219 + *(&v222 + 1);
    *(&v206 + 1) = *(&v219 + 1) + v223;
    v207 = v220 + *(&v223 + 1);
    v202 = vaddq_s64(v214[0], v215);
    v203 = vaddq_s64(v214[1], v216);
    v204 = v214[2].i64[0] + v217;
    sub_23940F8A0(v214[0].i64, &v199, &v205);
    sub_23940F8A0(&v218, &v202, &v196);
    v25 = (38 * v19) * v18 + v16 * v16 + (38 * v20) * v17;
    v26 = (2 * v19) * v17 + v18 * v18 + (2 * v20) * v16;
    v27 = (19 * v19) * v19 + (2 * v17) * v16 + (38 * v20) * v18;
    v28 = v25 >> 51;
    v29 = __CFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      v31 = *(&v27 + 1) + 1;
    }

    else
    {
      v31 = ((19 * v19) * v19 + (2 * v17) * v16 + (38 * v20) * v18) >> 64;
    }

    *(&v33 + 1) = v31;
    *&v33 = v30;
    v32 = v33 >> 51;
    v34 = (2 * v18) * v16 + v17 * v17 + (38 * v20) * v19;
    if (__CFADD__(v34, v32))
    {
      v35 = *(&v34 + 1) + 1;
    }

    else
    {
      v35 = ((2 * v18) * v16 + v17 * v17 + (38 * v20) * v19) >> 64;
    }

    *(&v37 + 1) = v35;
    *&v37 = v34 + v32;
    v36 = v37 >> 51;
    v38 = (2 * v19) * v16 + (2 * v18) * v17 + (19 * v20) * v20;
    v39 = v38 + v36;
    if (__CFADD__(v38, v36))
    {
      v40 = *(&v38 + 1) + 1;
    }

    else
    {
      v40 = ((2 * v19) * v16 + (2 * v18) * v17 + (19 * v20) * v20) >> 64;
    }

    *(&v42 + 1) = v40;
    *&v42 = v38 + v36;
    v41 = v42 >> 51;
    v29 = __CFADD__(v26, v41);
    v43 = v26 + v41;
    if (v29)
    {
      v44 = *(&v26 + 1) + 1;
    }

    else
    {
      v44 = ((2 * v19) * v17 + v18 * v18 + (2 * v20) * v16) >> 64;
    }

    v45 = 38 * v24 * v23 + v21 * v21 + (38 * v192) * v22;
    v46 = v45 >> 51;
    v47 = 2 * v24 * v22 + v23 * v23 + (2 * v192) * v21;
    v48 = 19 * v24 * v24 + 2 * v22 * v21 + (38 * v192) * v23;
    if (__CFADD__(v48, v46))
    {
      v49 = *(&v48 + 1) + 1;
    }

    else
    {
      v49 = (19 * v24 * v24 + 2 * v22 * v21 + (38 * v192) * v23) >> 64;
    }

    *(&v51 + 1) = v49;
    *&v51 = v48 + v46;
    v50 = v51 >> 51;
    v52 = 2 * v23 * v21 + v22 * v22 + (38 * v192) * v24;
    v53 = v52 + v50;
    if (__CFADD__(v52, v50))
    {
      v54 = *(&v52 + 1) + 1;
    }

    else
    {
      v54 = (2 * v23 * v21 + v22 * v22 + (38 * v192) * v24) >> 64;
    }

    *(&v56 + 1) = v54;
    *&v56 = v53;
    v55 = v56 >> 51;
    v57 = 2 * v24 * v21 + 2 * v23 * v22 + (19 * v192) * v192;
    v58 = v57 + v55;
    if (__CFADD__(v57, v55))
    {
      v59 = *(&v57 + 1) + 1;
    }

    else
    {
      v59 = (2 * v24 * v21 + 2 * v23 * v22 + (19 * v192) * v192) >> 64;
    }

    *(&v61 + 1) = v59;
    *&v61 = v58;
    v60 = v61 >> 51;
    v29 = __CFADD__(v47, v60);
    v62 = v47 + v60;
    v63 = v218 + v214[0].i64[0];
    v64 = *(&v218 + 1) + v214[0].i64[1];
    v193 = v219 + v214[1].i64[0];
    v65 = v214[0].i64[0] + 0xFFFFFFFFFFFDALL - v218;
    v191 = *(&v219 + 1) + v214[1].i64[1];
    v66 = v214[0].i64[1] - *(&v218 + 1);
    v67 = v214[1].i64[0] - v219;
    v68 = v214[1].i64[1] - *(&v219 + 1);
    v190 = v220 + v214[2].i64[0];
    v69 = v214[2].i64[0] - v220;
    *(&v61 + 1) = v44;
    *&v61 = v43;
    v70 = (v25 & 0x7FFFFFFFFFFFFLL) + 19 * (v61 >> 51);
    if (v29)
    {
      v71 = *(&v47 + 1) + 1;
    }

    else
    {
      v71 = *(&v47 + 1);
    }

    *(&v72 + 1) = v71;
    *&v72 = v62;
    v73 = (v45 & 0x7FFFFFFFFFFFFLL) + 19 * (v72 >> 51);
    v74 = (v30 & 0x7FFFFFFFFFFFFLL) + (v70 >> 51);
    v186 = ((v34 + v32) & 0x7FFFFFFFFFFFFLL) + (v74 >> 51);
    v187 = v70 & 0x7FFFFFFFFFFFFLL;
    v188 = v74 & 0x7FFFFFFFFFFFFLL;
    *&v211 = v70 & 0x7FFFFFFFFFFFFLL;
    *(&v211 + 1) = v74 & 0x7FFFFFFFFFFFFLL;
    v189 = v39 & 0x7FFFFFFFFFFFFLL;
    v185 = v43 & 0x7FFFFFFFFFFFFLL;
    *&v212 = v186;
    *(&v212 + 1) = v39 & 0x7FFFFFFFFFFFFLL;
    v213 = v43 & 0x7FFFFFFFFFFFFLL;
    v75 = ((v48 + v46) & 0x7FFFFFFFFFFFFLL) + (v73 >> 51);
    v76 = (v53 & 0x7FFFFFFFFFFFFLL) + (v75 >> 51);
    v181 = v73 & 0x7FFFFFFFFFFFFLL;
    v182 = v75 & 0x7FFFFFFFFFFFFLL;
    *&v208 = v73 & 0x7FFFFFFFFFFFFLL;
    *(&v208 + 1) = v75 & 0x7FFFFFFFFFFFFLL;
    v183 = v58 & 0x7FFFFFFFFFFFFLL;
    *&v209 = v76;
    *(&v209 + 1) = v58 & 0x7FFFFFFFFFFFFLL;
    v184 = v62 & 0x7FFFFFFFFFFFFLL;
    v210 = v62 & 0x7FFFFFFFFFFFFLL;
    v77 = v66 + 0xFFFFFFFFFFFFELL;
    v78 = v67 + 0xFFFFFFFFFFFFELL;
    v79 = v68 + 0xFFFFFFFFFFFFELL;
    v202.i64[0] = v214[0].i64[0] + 0xFFFFFFFFFFFDALL - v218;
    v202.i64[1] = v66 + 0xFFFFFFFFFFFFELL;
    v80 = v69 + 0xFFFFFFFFFFFFELL;
    v203.i64[0] = v67 + 0xFFFFFFFFFFFFELL;
    v203.i64[1] = v68 + 0xFFFFFFFFFFFFELL;
    v204 = v69 + 0xFFFFFFFFFFFFELL;
    sub_23940F8A0(&v221, &v208, &v211);
    v81 = 2 * v79;
    v82 = 19 * v80 * v80;
    v83 = (38 * v79) * v78 + v65 * v65 + (38 * v80) * v77;
    v84 = (2 * v79) * v77 + v78 * v78 + (2 * v80) * v65;
    v85 = 2 * v78;
    v87 = ((19 * v79) * v79 + (2 * v77) * v65 + (38 * v80) * v78) >> 64;
    v86 = 19 * v79 * v79 + 2 * v77 * v65 + 38 * v80 * v78;
    v88 = v83 >> 51;
    v29 = __CFADD__(v86, v88);
    v89 = v86 + v88;
    if (v29)
    {
      ++v87;
    }

    v90 = (v81 * v65) >> 64;
    v91 = v81 * v65;
    v92 = (v85 * v65) >> 64;
    v93 = v85 * v77;
    v96 = __PAIR128__(v92, 2 * v78 * v65) + v77 * v77 + (38 * v80) * v79;
    v94 = v96 >> 64;
    v95 = v96;
    *(&v98 + 1) = v87;
    *&v98 = v89;
    v97 = v98 >> 51;
    v29 = __CFADD__(v95, v97);
    v99 = v95 + v97;
    if (v29)
    {
      v100 = v94 + 1;
    }

    else
    {
      v100 = v94;
    }

    v29 = __CFADD__(v91, v93);
    v101 = v91 + v93;
    v102 = v181 + 0xFFFFFFFFFFFDALL - v187;
    v103 = v182 - v188 + 0xFFFFFFFFFFFFELL;
    v104 = v76 - v186 + 0xFFFFFFFFFFFFELL;
    v105 = v183 - v189 + 0xFFFFFFFFFFFFELL;
    v106 = v184 - v185 + 0xFFFFFFFFFFFFELL;
    *&v196 = v102;
    *(&v196 + 1) = v103;
    *&v197 = v104;
    *(&v197 + 1) = v105;
    v198 = v106;
    v107 = v89 & 0x7FFFFFFFFFFFFLL;
    *(&v109 + 1) = v100;
    *&v109 = v99;
    v108 = v109 >> 51;
    v110 = v99 & 0x7FFFFFFFFFFFFLL;
    v111 = ((2 * v78 * v77) >> 64) + v29 + v90;
    v29 = __CFADD__(v101, v82);
    v112 = v101 + v82;
    v113 = (((19 * v80) * v80) >> 64) + v29 + v111;
    v29 = __CFADD__(v112, v108);
    v114 = v112 + v108;
    if (v29)
    {
      ++v113;
    }

    *(&v116 + 1) = v113;
    *&v116 = v114;
    v115 = v116 >> 51;
    v29 = __CFADD__(v84, v115);
    v117 = v84 + v115;
    if (v29)
    {
      v118 = *(&v84 + 1) + 1;
    }

    else
    {
      v118 = ((2 * v79) * v77 + v78 * v78 + (2 * v80) * v65) >> 64;
    }

    *(&v119 + 1) = v118;
    *&v119 = v117;
    v120 = (v83 & 0x7FFFFFFFFFFFFLL) + 19 * (v119 >> 51);
    v121 = v120 & 0x7FFFFFFFFFFFFLL;
    v122 = v107 + (v120 >> 51);
    *&v218 = v121;
    *(&v218 + 1) = v122 & 0x7FFFFFFFFFFFFLL;
    *&v219 = v110 + (v122 >> 51);
    *(&v219 + 1) = v114 & 0x7FFFFFFFFFFFFLL;
    v220 = v117 & 0x7FFFFFFFFFFFFLL;
    v123 = (v106 * 0x1DB42uLL) >> 64;
    v124 = 121666 * v106;
    v125 = (v105 * 0x1DB42uLL) >> 64;
    v126 = 121666 * v105;
    v127 = (v104 * 0x1DB42uLL) >> 64;
    v128 = 121666 * v104;
    v129 = (v103 * 0x1DB42uLL) >> 64;
    v130 = 121666 * v102;
    v131 = (v102 * 0x1DB42uLL) >> 51;
    v132 = 121666 * v103 + v131;
    if (__CFADD__(121666 * v103, v131))
    {
      ++v129;
    }

    *(&v134 + 1) = v129;
    *&v134 = 121666 * v103 + v131;
    v133 = v134 >> 51;
    v29 = __CFADD__(v133, v128);
    v135 = v133 + v128;
    if (v29)
    {
      ++v127;
    }

    *(&v137 + 1) = v127;
    *&v137 = v135;
    v136 = v137 >> 51;
    v29 = __CFADD__(v136, v126);
    v138 = v136 + v126;
    if (v29)
    {
      ++v125;
    }

    *(&v140 + 1) = v125;
    *&v140 = v138;
    v139 = v140 >> 51;
    v29 = __CFADD__(v139, v124);
    v141 = v139 + v124;
    if (v29)
    {
      ++v123;
    }

    v142 = (38 * v191) * v193 + v63 * v63 + (38 * v190) * v64;
    v144 = ((2 * v191) * v64 + v193 * v193 + (2 * v190) * v63) >> 64;
    v143 = 2 * v191 * v64 + v193 * v193 + 2 * v190 * v63;
    v145 = 2 * v193;
    v146 = v142 >> 51;
    v147 = ((19 * v191) * v191 + (2 * v64) * v63 + (38 * v190) * v193) >> 64;
    v148 = 19 * v191 * v191 + 2 * v64 * v63 + 38 * v190 * v193;
    v29 = __CFADD__(v148, v146);
    v149 = v148 + v146;
    if (v29)
    {
      ++v147;
    }

    *(&v153 + 1) = v147;
    *&v153 = v149;
    v152 = v153 >> 51;
    v151 = (v145 * v63 + v64 * v64 + (38 * v190) * v191) >> 64;
    v150 = v145 * v63 + v64 * v64 + 38 * v190 * v191;
    v29 = __CFADD__(v150, v152);
    v154 = v150 + v152;
    if (v29)
    {
      ++v151;
    }

    v156 = ((2 * v191) * v63 + v145 * v64 + (19 * v190) * v190) >> 64;
    v155 = 2 * v191 * v63 + v145 * v64 + 19 * v190 * v190;
    *(&v158 + 1) = v151;
    *&v158 = v154;
    v157 = v158 >> 51;
    v29 = __CFADD__(v155, v157);
    v159 = v155 + v157;
    if (v29)
    {
      ++v156;
    }

    *(&v161 + 1) = v156;
    *&v161 = v159;
    v160 = v161 >> 51;
    v29 = __CFADD__(v143, v160);
    v162 = v143 + v160;
    if (v29)
    {
      ++v144;
    }

    *(&v163 + 1) = v144;
    *&v163 = v162;
    v164 = (v142 & 0x7FFFFFFFFFFFFLL) + 19 * (v163 >> 51);
    v165 = (v149 & 0x7FFFFFFFFFFFFLL) + (v164 >> 51);
    v215.i64[0] = v164 & 0x7FFFFFFFFFFFFLL;
    v215.i64[1] = v165 & 0x7FFFFFFFFFFFFLL;
    v216.i64[0] = (v154 & 0x7FFFFFFFFFFFFLL) + (v165 >> 51);
    v216.i64[1] = v159 & 0x7FFFFFFFFFFFFLL;
    v217 = v162 & 0x7FFFFFFFFFFFFLL;
    *(&v163 + 1) = v123;
    *&v163 = v141;
    v166 = (v130 & 0x7FFFFFFFFFFFELL) + 19 * (v163 >> 51);
    v167 = (v132 & 0x7FFFFFFFFFFFFLL) + (v166 >> 51);
    v214[0].i64[0] = v166 & 0x7FFFFFFFFFFFFLL;
    v214[0].i64[1] = v167 & 0x7FFFFFFFFFFFFLL;
    v214[1].i64[0] = (v135 & 0x7FFFFFFFFFFFFLL) + (v167 >> 51);
    v214[1].i64[1] = v138 & 0x7FFFFFFFFFFFFLL;
    v199.i64[0] = (v166 & 0x7FFFFFFFFFFFFLL) + v187;
    v199.i64[1] = (v167 & 0x7FFFFFFFFFFFFLL) + v188;
    v214[2].i64[0] = v141 & 0x7FFFFFFFFFFFFLL;
    v200.i64[0] = v214[1].i64[0] + v186;
    v200.i64[1] = (v138 & 0x7FFFFFFFFFFFFLL) + v189;
    v201 = (v141 & 0x7FFFFFFFFFFFFLL) + v185;
    sub_23940F8A0(v214[0].i64, &v224, &v218);
    sub_23940F8A0(&v218, &v196, &v199);
    v5 = v195;
    v6 = v194 - 1;
  }

  while (v194);
  v168 = 0;
  v169 = -v195;
  do
  {
    v170 = *(&v221 + v168 * 8);
    v171 = v215.i64[v168];
    v172 = (v171 ^ v170) & v169;
    *(&v221 + v168 * 8) = v172 ^ v170;
    v215.i64[v168++] = v172 ^ v171;
  }

  while (v168 != 5);
  for (j = 0; j != 5; ++j)
  {
    v174 = *(&v218 + j * 8);
    v175 = v214[0].i64[j];
    v176 = (v175 ^ v174) & v169;
    *(&v218 + j * 8) = v176 ^ v174;
    v214[0].i64[j] = v176 ^ v175;
  }

  v229 = v218;
  v230 = v219;
  v231 = v220;
  sub_23940F4EC(&v218, &v229);
  sub_23940F8A0(&v221, &v221, &v218);
  sub_23940AD10(a1, &v221);
  result = sub_23945022C(byte_2395C92E8, a1, 32) != 0;
  v178 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *sub_23940F4EC(uint64_t *a1, unint64_t *a2)
{
  v5 = a2[3];
  v4 = a2[4];
  v6 = a2[2];
  v7 = a2[1];
  v8 = v7 * (38 * v4) + v6 * (38 * v5) + *a2 * *a2;
  v9 = v7 * (2 * v5) + v6 * v6 + *a2 * (2 * v4);
  v10 = (*a2 * (2 * v7)) >> 64;
  v11 = *a2 * 2 * v7;
  v12 = (v7 * (2 * v6) + 19 * v4 * v4 + *a2 * (2 * v5)) >> 64;
  v13 = v7 * 2 * v6 + 19 * v4 * v4 + *a2 * 2 * v5;
  v15 = v7 * v7 + v5 * 38 * v4 + *a2 * 2 * v6;
  v14 = (v7 * v7 + v5 * (38 * v4) + *a2 * (2 * v6)) >> 64;
  v17 = v6 * (38 * v4) + 19 * v5 * v5 + __PAIR128__(v10, v11);
  v16 = *(&v17 + 1);
  v18 = v8 >> 51;
  if (__CFADD__(v17, v18))
  {
    v16 = *(&v17 + 1) + 1;
  }

  *(&v20 + 1) = v16;
  *&v20 = v17 + v18;
  v19 = v20 >> 51;
  if (__CFADD__(v15, v19))
  {
    ++v14;
  }

  *(&v22 + 1) = v14;
  *&v22 = v15 + v19;
  v21 = v22 >> 51;
  v23 = __CFADD__(v13, v21);
  v24 = v13 + v21;
  if (v23)
  {
    ++v12;
  }

  *(&v26 + 1) = v12;
  *&v26 = v24;
  v25 = v26 >> 51;
  v23 = __CFADD__(v9, v25);
  v27 = v9 + v25;
  if (v23)
  {
    v28 = *(&v9 + 1) + 1;
  }

  else
  {
    v28 = *(&v9 + 1);
  }

  *(&v29 + 1) = v28;
  *&v29 = v27;
  v30 = (v8 & 0x7FFFFFFFFFFFFLL) + 19 * (v29 >> 51);
  v31 = v30 & 0x7FFFFFFFFFFFFLL;
  v32 = ((v17 + v18) & 0x7FFFFFFFFFFFFLL) + (v30 >> 51);
  v48[0] = v31;
  v48[1] = v32 & 0x7FFFFFFFFFFFFLL;
  v48[2] = ((v15 + v19) & 0x7FFFFFFFFFFFFLL) + (v32 >> 51);
  v48[3] = v24 & 0x7FFFFFFFFFFFFLL;
  v48[4] = v27 & 0x7FFFFFFFFFFFFLL;
  v47 = 0;
  memset(v46, 0, sizeof(v46));
  v45 = 0;
  memset(v44, 0, sizeof(v44));
  sub_23940B3F0(v46, v48);
  sub_23940B3F0(v46, v46);
  sub_23940F8A0(v46, a2, v46);
  sub_23940F8A0(v48, v48, v46);
  sub_23940B3F0(v44, v48);
  sub_23940F8A0(v46, v46, v44);
  sub_23940B3F0(v44, v46);
  v33 = 4;
  do
  {
    sub_23940B3F0(v44, v44);
    --v33;
  }

  while (v33);
  sub_23940F8A0(v46, v44, v46);
  sub_23940B3F0(v44, v46);
  v34 = 9;
  do
  {
    sub_23940B3F0(v44, v44);
    --v34;
  }

  while (v34);
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  sub_23940F8A0(v44, v44, v46);
  sub_23940B3F0(v42, v44);
  v35 = 19;
  do
  {
    sub_23940B3F0(v42, v42);
    --v35;
  }

  while (v35);
  sub_23940F8A0(v44, v42, v44);
  sub_23940B3F0(v44, v44);
  v36 = 9;
  do
  {
    sub_23940B3F0(v44, v44);
    --v36;
  }

  while (v36);
  sub_23940F8A0(v46, v44, v46);
  sub_23940B3F0(v44, v46);
  v37 = 49;
  do
  {
    sub_23940B3F0(v44, v44);
    --v37;
  }

  while (v37);
  sub_23940F8A0(v44, v44, v46);
  sub_23940B3F0(v42, v44);
  v38 = 99;
  do
  {
    sub_23940B3F0(v42, v42);
    --v38;
  }

  while (v38);
  sub_23940F8A0(v44, v42, v44);
  sub_23940B3F0(v44, v44);
  v39 = 49;
  do
  {
    sub_23940B3F0(v44, v44);
    --v39;
  }

  while (v39);
  sub_23940F8A0(v46, v44, v46);
  sub_23940B3F0(v46, v46);
  v40 = 4;
  do
  {
    sub_23940B3F0(v46, v46);
    --v40;
  }

  while (v40);
  return sub_23940F8A0(a1, v46, v48);
}

uint64_t *sub_23940F8A0(uint64_t *result, unint64_t *a2, unint64_t *a3)
{
  v4 = a3[3];
  v3 = a3[4];
  v5 = 19 * v3;
  v7 = a2[3];
  v6 = a2[4];
  v9 = a3[1];
  v8 = a3[2];
  v10 = *a3;
  v11 = 19 * v9 * v6;
  v12 = a2[2];
  v13 = v7 * 19 * v8;
  v14 = __CFADD__(v13, v11);
  v15 = v13 + v11;
  v16 = *a2;
  v17 = a2[1];
  v19 = __PAIR128__(((19 * v9 * v6) >> 64) + v14 + ((v7 * (19 * v8)) >> 64), v15) + v12 * (19 * v4) + v17 * (19 * v3) + v16 * *a3;
  v20 = v7 * (19 * v3) + 19 * v4 * v6;
  v22 = (v7 * (19 * v4) + 19 * v8 * v6 + v12 * (19 * v3) + *a3 * v17 + v16 * v9) >> 64;
  v21 = v7 * 19 * v4 + 19 * v8 * v6 + v12 * 19 * v3 + *a3 * v17 + v16 * v9;
  v23 = v19 >> 51;
  v14 = __CFADD__(v21, v23);
  v24 = v21 + v23;
  if (v14)
  {
    ++v22;
  }

  v26 = (v20 + v17 * v9 + v10 * v12 + v16 * v8) >> 64;
  v25 = v20 + v17 * v9 + v10 * v12 + v16 * v8;
  v27 = (v5 * v6) >> 64;
  v28 = v5 * v6;
  *(&v30 + 1) = v22;
  *&v30 = v24;
  v29 = v30 >> 51;
  v14 = __CFADD__(v25, v29);
  v31 = v25 + v29;
  if (v14)
  {
    ++v26;
  }

  v32 = (v12 * v9 + __PAIR128__(v27, v28) + v17 * v8 + v10 * v7 + v16 * v4) >> 64;
  v33 = v12 * v9 + v28 + v17 * v8 + v10 * v7 + v16 * v4;
  v34 = (v7 * v9) >> 64;
  v35 = v7 * v9;
  *(&v37 + 1) = v26;
  *&v37 = v31;
  v36 = v37 >> 51;
  v14 = __CFADD__(v33, v36);
  v38 = v33 + v36;
  if (v14)
  {
    v39 = v32 + 1;
  }

  else
  {
    v39 = v32;
  }

  v41 = v12 * v8 + __PAIR128__(v34, v35) + v17 * v4 + v10 * v6 + v16 * v3;
  v40 = *(&v41 + 1);
  *(&v43 + 1) = v39;
  *&v43 = v38;
  v42 = v43 >> 51;
  v14 = __CFADD__(v41, v42);
  v44 = v41 + v42;
  if (v14)
  {
    v40 = *(&v41 + 1) + 1;
  }

  *(&v45 + 1) = v40;
  *&v45 = v44;
  v46 = (v19 & 0x7FFFFFFFFFFFFLL) + 19 * (v45 >> 51);
  v47 = (v24 & 0x7FFFFFFFFFFFFLL) + (v46 >> 51);
  *result = v46 & 0x7FFFFFFFFFFFFLL;
  result[1] = v47 & 0x7FFFFFFFFFFFFLL;
  result[2] = (v31 & 0x7FFFFFFFFFFFFLL) + (v47 >> 51);
  result[3] = v38 & 0x7FFFFFFFFFFFFLL;
  result[4] = v44 & 0x7FFFFFFFFFFFFLL;
  return result;
}

uint64_t sub_23940FAB0(uint64_t result, uint64_t a2)
{
  for (i = 0; i != 256; ++i)
  {
    *(result + i) = (*(a2 + (i >> 3)) >> (i & 7)) & 1;
  }

  v3 = 0;
  v4 = result + 1;
  v5 = 1;
  do
  {
    if (*(result + v3) && v3 <= 0xFE)
    {
      v6 = v3;
      v7 = 1;
      v8 = v5;
      do
      {
        v9 = *(result + v8);
        if (*(result + v8))
        {
          v10 = *(result + v3);
          v11 = v9 << v7;
          v12 = (v9 << v7) + v10;
          if (v12 > 15)
          {
            v13 = v10 - v11;
            if (v13 < -15)
            {
              break;
            }

            *(result + v3) = v13;
            v14 = v6;
            while (*(v4 + v14))
            {
              *(v4 + v14++) = 0;
              if (v14 >= 0xFF)
              {
                goto LABEL_16;
              }
            }

            *(v4 + v14) = 1;
          }

          else
          {
            *(result + v3) = v12;
            *(result + v8) = 0;
          }
        }

LABEL_16:
        if (v7 > 5)
        {
          break;
        }

        ++v7;
        ++v8;
        ++v6;
      }

      while (v7 + v3 < 0x100);
    }

    ++v3;
    ++v5;
  }

  while (v3 != 256);
  return result;
}

uint64_t sub_23940FB98(_DWORD *a1, uint64_t a2)
{
  v2 = 0;
  v3 = a1[1];
  v4 = (*a1 ^ (v3 >> 4)) & 0xF0F0F0F;
  v5 = ((v4 ^ *a1 ^ ((v4 ^ *a1) << 18)) & 0xCCCC0000 | (((v4 ^ *a1 ^ ((v4 ^ *a1) << 18)) & 0xCCCC0000) >> 18)) ^ v4 ^ *a1;
  v6 = ((v3 ^ (16 * v4) ^ ((v3 ^ (16 * v4)) << 18)) & 0xCCCC0000 | (((v3 ^ (16 * v4) ^ ((v3 ^ (16 * v4)) << 18)) & 0xCCCC0000) >> 18)) ^ v3 ^ (16 * v4);
  v7 = (v5 ^ (v6 >> 1)) & 0x55555555;
  v8 = v7 ^ v5;
  v9 = v6 ^ (2 * v7);
  v10 = (v9 ^ (v8 >> 8)) & 0xFF00FF;
  v11 = v10 ^ v9;
  v12 = v8 ^ (v10 << 8);
  v13 = (v12 ^ (v11 >> 1)) & 0x55555555;
  v14 = v13 ^ v12;
  v15 = (v14 >> 4) & 0xF000000 | (v11 ^ (2 * v13)) & 0xFF00 | ((v11 ^ (2 * v13)) << 16) | ((v11 ^ (2 * v13)) >> 16);
  v16 = (a2 + 4);
  do
  {
    if ((0x8103uLL >> v2))
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    v18 = (v14 & 0xFFFFFFF) >> v17;
    if ((0x8103uLL >> v2))
    {
      v19 = 27;
    }

    else
    {
      v19 = 26;
    }

    v20 = v15 >> v17;
    v14 = v18 | (v14 << v19);
    v21 = v20 | (v15 << v19);
    v22 = dword_2395C96E8[((v18 >> 7) & 0x3C | (v18 >> 6)) + 64] | dword_2395C96E8[v18 & 0x3F] | dword_2395C96E8[((v18 >> 14) & 0x30 | (v18 >> 13) & 0xF) + 128] | dword_2395C96E8[((v18 >> 21) & 6 | (v18 >> 20) & 1 | (v14 >> 22) & 0x38) + 192];
    v23 = dword_2395C96E8[((v20 >> 8) & 0x3C | (v20 >> 7) & 3) + 320] | dword_2395C96E8[(v20 & 0x3F) + 256] | dword_2395C96E8[((v20 >> 15) & 0x3F) + 384] | dword_2395C96E8[((v21 >> 22) & 0x30 | (v20 >> 21) & 0xF) + 448];
    HIDWORD(v25) = v22 | (v23 << 16);
    LODWORD(v25) = HIDWORD(v25);
    result = (v25 >> 30);
    HIDWORD(v25) = v23 & 0xFFFF0000 | HIWORD(v22);
    LODWORD(v25) = HIDWORD(v25);
    v15 = v21 & 0xFFFFFFF;
    *(v16 - 1) = result;
    *v16 = v25 >> 26;
    ++v2;
    v16 += 2;
  }

  while (v2 != 16);
  return result;
}

uint64_t sub_23940FD34(uint64_t result)
{
  for (i = 0; i != 8; ++i)
  {
    *(result + i) = byte_2395C9EE8[*(result + i)];
  }

  return result;
}

_DWORD *sub_23940FD5C(int *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  v7 = a1[1];
  v8 = (*a1 ^ (v7 >> 4)) & 0xF0F0F0F;
  v9 = v8 ^ *a1;
  v10 = v7 ^ (16 * v8);
  v11 = v10 ^ HIWORD(v9);
  v12 = v11 ^ v10;
  v13 = v9 ^ (v11 << 16);
  v14 = (v13 ^ (v12 >> 2)) & 0x33333333;
  v15 = v14 ^ v13;
  v16 = v12 ^ (4 * v14);
  v17 = (v16 ^ (v15 >> 8)) & 0xFF00FF;
  v18 = v17 ^ v16;
  v19 = v15 ^ (v17 << 8);
  v20 = (v19 ^ (v18 >> 1)) & 0x55555555;
  *a1 = v20 ^ v19;
  a1[1] = v18 ^ (2 * v20);
  sub_23940FE64(a1, a2, 1);
  sub_23940FE64(a1, a3, 0);
  result = sub_23940FE64(a1, a4, 1);
  v22 = a1[1];
  v23 = (*a1 ^ (v22 >> 1)) & 0x55555555;
  v24 = v23 ^ *a1;
  v25 = v22 ^ (2 * v23);
  v26 = (v25 ^ (v24 >> 8)) & 0xFF00FF;
  v27 = v26 ^ v25;
  v28 = v24 ^ (v26 << 8);
  v29 = (v28 ^ (v27 >> 2)) & 0x33333333;
  v30 = v29 ^ v28;
  v31 = v27 ^ (4 * v29);
  v32 = v31 ^ HIWORD(v30);
  v33 = v32 ^ v31;
  v34 = v30 ^ (v32 << 16);
  v35 = (v34 ^ (v33 >> 4)) & 0xF0F0F0F;
  *a1 = v35 ^ v34;
  a1[1] = v33 ^ (16 * v35);
  return result;
}

_DWORD *sub_23940FE64(_DWORD *result, _DWORD *a2, int a3)
{
  HIDWORD(v4) = *result;
  LODWORD(v4) = *result;
  v3 = v4 >> 29;
  HIDWORD(v4) = result[1];
  LODWORD(v4) = HIDWORD(v4);
  v5 = v4 >> 29;
  if (a3)
  {
    v6 = *a2 ^ v3;
    HIDWORD(v8) = a2[1] ^ v3;
    LODWORD(v8) = HIDWORD(v8);
    v7 = v8 >> 4;
    v9 = dword_2395C9FE8[v6 >> 2] ^ dword_2395C9FE8[(v6 >> 10) + 128] ^ dword_2395C9FE8[((v6 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v6 >> 26) + 384] ^ dword_2395C9FE8[(v7 >> 2) + 64] ^ dword_2395C9FE8[(v7 >> 10) + 192] ^ dword_2395C9FE8[((v7 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v7 >> 26) + 448] ^ v5;
    v10 = v9 ^ a2[2];
    HIDWORD(v8) = v9 ^ a2[3];
    LODWORD(v8) = HIDWORD(v8);
    v11 = v8 >> 4;
    v12 = dword_2395C9FE8[v10 >> 2] ^ dword_2395C9FE8[(v10 >> 10) + 128] ^ dword_2395C9FE8[((v10 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v10 >> 26) + 384] ^ dword_2395C9FE8[(v11 >> 2) + 64] ^ dword_2395C9FE8[(v11 >> 10) + 192] ^ dword_2395C9FE8[((v11 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v11 >> 26) + 448] ^ v3;
    v13 = v12 ^ a2[4];
    HIDWORD(v8) = v12 ^ a2[5];
    LODWORD(v8) = HIDWORD(v8);
    v14 = v8 >> 4;
    v15 = dword_2395C9FE8[v13 >> 2] ^ dword_2395C9FE8[(v13 >> 10) + 128] ^ dword_2395C9FE8[((v13 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v13 >> 26) + 384] ^ dword_2395C9FE8[(v14 >> 2) + 64] ^ dword_2395C9FE8[(v14 >> 10) + 192] ^ dword_2395C9FE8[((v14 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v14 >> 26) + 448] ^ v9;
    v16 = v15 ^ a2[6];
    HIDWORD(v8) = v15 ^ a2[7];
    LODWORD(v8) = HIDWORD(v8);
    v17 = v8 >> 4;
    v18 = dword_2395C9FE8[v16 >> 2] ^ dword_2395C9FE8[(v16 >> 10) + 128] ^ dword_2395C9FE8[((v16 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v16 >> 26) + 384] ^ dword_2395C9FE8[(v17 >> 2) + 64] ^ dword_2395C9FE8[(v17 >> 10) + 192] ^ dword_2395C9FE8[((v17 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v17 >> 26) + 448] ^ v12;
    v19 = v18 ^ a2[8];
    HIDWORD(v8) = v18 ^ a2[9];
    LODWORD(v8) = HIDWORD(v8);
    v20 = v8 >> 4;
    v21 = dword_2395C9FE8[v19 >> 2] ^ dword_2395C9FE8[(v19 >> 10) + 128] ^ dword_2395C9FE8[((v19 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v19 >> 26) + 384] ^ dword_2395C9FE8[(v20 >> 2) + 64] ^ dword_2395C9FE8[(v20 >> 10) + 192] ^ dword_2395C9FE8[((v20 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v20 >> 26) + 448] ^ v15;
    v22 = v21 ^ a2[10];
    HIDWORD(v8) = v21 ^ a2[11];
    LODWORD(v8) = HIDWORD(v8);
    v23 = v8 >> 4;
    v24 = dword_2395C9FE8[v22 >> 2] ^ dword_2395C9FE8[(v22 >> 10) + 128] ^ dword_2395C9FE8[((v22 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v22 >> 26) + 384] ^ dword_2395C9FE8[(v23 >> 2) + 64] ^ dword_2395C9FE8[(v23 >> 10) + 192] ^ dword_2395C9FE8[((v23 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v23 >> 26) + 448] ^ v18;
    v25 = v24 ^ a2[12];
    HIDWORD(v8) = v24 ^ a2[13];
    LODWORD(v8) = HIDWORD(v8);
    v26 = v8 >> 4;
    v27 = dword_2395C9FE8[v25 >> 2] ^ dword_2395C9FE8[(v25 >> 10) + 128] ^ dword_2395C9FE8[((v25 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v25 >> 26) + 384] ^ dword_2395C9FE8[(v26 >> 2) + 64] ^ dword_2395C9FE8[(v26 >> 10) + 192] ^ dword_2395C9FE8[((v26 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v26 >> 26) + 448] ^ v21;
    v28 = v27 ^ a2[14];
    HIDWORD(v8) = v27 ^ a2[15];
    LODWORD(v8) = HIDWORD(v8);
    v29 = v8 >> 4;
    v30 = dword_2395C9FE8[v28 >> 2] ^ dword_2395C9FE8[(v28 >> 10) + 128] ^ dword_2395C9FE8[((v28 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v28 >> 26) + 384] ^ dword_2395C9FE8[(v29 >> 2) + 64] ^ dword_2395C9FE8[(v29 >> 10) + 192] ^ dword_2395C9FE8[((v29 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v29 >> 26) + 448] ^ v24;
    v31 = v30 ^ a2[16];
    HIDWORD(v8) = v30 ^ a2[17];
    LODWORD(v8) = HIDWORD(v8);
    v32 = v8 >> 4;
    v33 = dword_2395C9FE8[v31 >> 2] ^ dword_2395C9FE8[(v31 >> 10) + 128] ^ dword_2395C9FE8[((v31 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v31 >> 26) + 384] ^ dword_2395C9FE8[(v32 >> 2) + 64] ^ dword_2395C9FE8[(v32 >> 10) + 192] ^ dword_2395C9FE8[((v32 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v32 >> 26) + 448] ^ v27;
    v34 = v33 ^ a2[18];
    HIDWORD(v8) = v33 ^ a2[19];
    LODWORD(v8) = HIDWORD(v8);
    v35 = v8 >> 4;
    v36 = dword_2395C9FE8[v34 >> 2] ^ dword_2395C9FE8[(v34 >> 10) + 128] ^ dword_2395C9FE8[((v34 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v34 >> 26) + 384] ^ dword_2395C9FE8[(v35 >> 2) + 64] ^ dword_2395C9FE8[(v35 >> 10) + 192] ^ dword_2395C9FE8[((v35 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v35 >> 26) + 448] ^ v30;
    v37 = v36 ^ a2[20];
    HIDWORD(v8) = v36 ^ a2[21];
    LODWORD(v8) = HIDWORD(v8);
    v38 = v8 >> 4;
    v39 = dword_2395C9FE8[v37 >> 2] ^ dword_2395C9FE8[(v37 >> 10) + 128] ^ dword_2395C9FE8[((v37 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v37 >> 26) + 384] ^ dword_2395C9FE8[(v38 >> 2) + 64] ^ dword_2395C9FE8[(v38 >> 10) + 192] ^ dword_2395C9FE8[((v38 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v38 >> 26) + 448] ^ v33;
    v40 = v39 ^ a2[22];
    HIDWORD(v8) = v39 ^ a2[23];
    LODWORD(v8) = HIDWORD(v8);
    v41 = v8 >> 4;
    v42 = dword_2395C9FE8[v40 >> 2] ^ dword_2395C9FE8[(v40 >> 10) + 128] ^ dword_2395C9FE8[((v40 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v40 >> 26) + 384] ^ dword_2395C9FE8[(v41 >> 2) + 64] ^ dword_2395C9FE8[(v41 >> 10) + 192] ^ dword_2395C9FE8[((v41 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v41 >> 26) + 448] ^ v36;
    v43 = v42 ^ a2[24];
    HIDWORD(v8) = v42 ^ a2[25];
    LODWORD(v8) = HIDWORD(v8);
    v44 = v8 >> 4;
    v45 = dword_2395C9FE8[v43 >> 2] ^ dword_2395C9FE8[(v43 >> 10) + 128] ^ dword_2395C9FE8[((v43 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v43 >> 26) + 384] ^ dword_2395C9FE8[(v44 >> 2) + 64] ^ dword_2395C9FE8[(v44 >> 10) + 192] ^ dword_2395C9FE8[((v44 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v44 >> 26) + 448] ^ v39;
    v46 = v45 ^ a2[26];
    HIDWORD(v8) = v45 ^ a2[27];
    LODWORD(v8) = HIDWORD(v8);
    v47 = v8 >> 4;
    v48 = dword_2395C9FE8[v46 >> 2] ^ dword_2395C9FE8[(v46 >> 10) + 128] ^ dword_2395C9FE8[((v46 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v46 >> 26) + 384] ^ dword_2395C9FE8[(v47 >> 2) + 64] ^ dword_2395C9FE8[(v47 >> 10) + 192] ^ dword_2395C9FE8[((v47 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v47 >> 26) + 448] ^ v42;
    v49 = v48 ^ a2[28];
    HIDWORD(v8) = v48 ^ a2[29];
    LODWORD(v8) = HIDWORD(v8);
    v50 = dword_2395C9FE8[v49 >> 2] ^ dword_2395C9FE8[(v49 >> 10) + 128] ^ dword_2395C9FE8[((v49 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v49 >> 26) + 384] ^ dword_2395C9FE8[((v8 >> 4) >> 2) + 64] ^ dword_2395C9FE8[((v8 >> 4) >> 10) + 192] ^ dword_2395C9FE8[(((v8 >> 4) >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[((v8 >> 4) >> 26) + 448] ^ v45;
    v51 = a2 + 30;
    v52 = 31;
  }

  else
  {
    v53 = a2[30] ^ v3;
    HIDWORD(v55) = a2[31] ^ v3;
    LODWORD(v55) = HIDWORD(v55);
    v54 = v55 >> 4;
    v56 = dword_2395C9FE8[v53 >> 2] ^ dword_2395C9FE8[(v53 >> 10) + 128] ^ dword_2395C9FE8[((v53 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v53 >> 26) + 384] ^ dword_2395C9FE8[(v54 >> 2) + 64] ^ dword_2395C9FE8[(v54 >> 10) + 192] ^ dword_2395C9FE8[((v54 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v54 >> 26) + 448] ^ v5;
    v57 = v56 ^ a2[28];
    HIDWORD(v55) = v56 ^ a2[29];
    LODWORD(v55) = HIDWORD(v55);
    v58 = v55 >> 4;
    v59 = dword_2395C9FE8[v57 >> 2] ^ dword_2395C9FE8[(v57 >> 10) + 128] ^ dword_2395C9FE8[((v57 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v57 >> 26) + 384] ^ dword_2395C9FE8[(v58 >> 2) + 64] ^ dword_2395C9FE8[(v58 >> 10) + 192] ^ dword_2395C9FE8[((v58 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v58 >> 26) + 448] ^ v3;
    v60 = v59 ^ a2[26];
    HIDWORD(v55) = v59 ^ a2[27];
    LODWORD(v55) = HIDWORD(v55);
    v61 = v55 >> 4;
    v62 = dword_2395C9FE8[v60 >> 2] ^ dword_2395C9FE8[(v60 >> 10) + 128] ^ dword_2395C9FE8[((v60 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v60 >> 26) + 384] ^ dword_2395C9FE8[(v61 >> 2) + 64] ^ dword_2395C9FE8[(v61 >> 10) + 192] ^ dword_2395C9FE8[((v61 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v61 >> 26) + 448] ^ v56;
    v63 = v62 ^ a2[24];
    HIDWORD(v55) = v62 ^ a2[25];
    LODWORD(v55) = HIDWORD(v55);
    v64 = v55 >> 4;
    v65 = dword_2395C9FE8[v63 >> 2] ^ dword_2395C9FE8[(v63 >> 10) + 128] ^ dword_2395C9FE8[((v63 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v63 >> 26) + 384] ^ dword_2395C9FE8[(v64 >> 2) + 64] ^ dword_2395C9FE8[(v64 >> 10) + 192] ^ dword_2395C9FE8[((v64 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v64 >> 26) + 448] ^ v59;
    v66 = v65 ^ a2[22];
    HIDWORD(v55) = v65 ^ a2[23];
    LODWORD(v55) = HIDWORD(v55);
    v67 = v55 >> 4;
    v68 = dword_2395C9FE8[v66 >> 2] ^ dword_2395C9FE8[(v66 >> 10) + 128] ^ dword_2395C9FE8[((v66 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v66 >> 26) + 384] ^ dword_2395C9FE8[(v67 >> 2) + 64] ^ dword_2395C9FE8[(v67 >> 10) + 192] ^ dword_2395C9FE8[((v67 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v67 >> 26) + 448] ^ v62;
    v69 = v68 ^ a2[20];
    HIDWORD(v55) = v68 ^ a2[21];
    LODWORD(v55) = HIDWORD(v55);
    v70 = v55 >> 4;
    v71 = dword_2395C9FE8[v69 >> 2] ^ dword_2395C9FE8[(v69 >> 10) + 128] ^ dword_2395C9FE8[((v69 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v69 >> 26) + 384] ^ dword_2395C9FE8[(v70 >> 2) + 64] ^ dword_2395C9FE8[(v70 >> 10) + 192] ^ dword_2395C9FE8[((v70 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v70 >> 26) + 448] ^ v65;
    v72 = v71 ^ a2[18];
    HIDWORD(v55) = v71 ^ a2[19];
    LODWORD(v55) = HIDWORD(v55);
    v73 = v55 >> 4;
    v74 = dword_2395C9FE8[v72 >> 2] ^ dword_2395C9FE8[(v72 >> 10) + 128] ^ dword_2395C9FE8[((v72 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v72 >> 26) + 384] ^ dword_2395C9FE8[(v73 >> 2) + 64] ^ dword_2395C9FE8[(v73 >> 10) + 192] ^ dword_2395C9FE8[((v73 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v73 >> 26) + 448] ^ v68;
    v75 = v74 ^ a2[16];
    HIDWORD(v55) = v74 ^ a2[17];
    LODWORD(v55) = HIDWORD(v55);
    v76 = v55 >> 4;
    v77 = dword_2395C9FE8[v75 >> 2] ^ dword_2395C9FE8[(v75 >> 10) + 128] ^ dword_2395C9FE8[((v75 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v75 >> 26) + 384] ^ dword_2395C9FE8[(v76 >> 2) + 64] ^ dword_2395C9FE8[(v76 >> 10) + 192] ^ dword_2395C9FE8[((v76 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v76 >> 26) + 448] ^ v71;
    v78 = v77 ^ a2[14];
    HIDWORD(v55) = v77 ^ a2[15];
    LODWORD(v55) = HIDWORD(v55);
    v79 = v55 >> 4;
    v80 = dword_2395C9FE8[v78 >> 2] ^ dword_2395C9FE8[(v78 >> 10) + 128] ^ dword_2395C9FE8[((v78 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v78 >> 26) + 384] ^ dword_2395C9FE8[(v79 >> 2) + 64] ^ dword_2395C9FE8[(v79 >> 10) + 192] ^ dword_2395C9FE8[((v79 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v79 >> 26) + 448] ^ v74;
    v81 = v80 ^ a2[12];
    HIDWORD(v55) = v80 ^ a2[13];
    LODWORD(v55) = HIDWORD(v55);
    v82 = v55 >> 4;
    v83 = dword_2395C9FE8[v81 >> 2] ^ dword_2395C9FE8[(v81 >> 10) + 128] ^ dword_2395C9FE8[((v81 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v81 >> 26) + 384] ^ dword_2395C9FE8[(v82 >> 2) + 64] ^ dword_2395C9FE8[(v82 >> 10) + 192] ^ dword_2395C9FE8[((v82 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v82 >> 26) + 448] ^ v77;
    v84 = v83 ^ a2[10];
    HIDWORD(v55) = v83 ^ a2[11];
    LODWORD(v55) = HIDWORD(v55);
    v85 = v55 >> 4;
    v86 = dword_2395C9FE8[v84 >> 2] ^ dword_2395C9FE8[(v84 >> 10) + 128] ^ dword_2395C9FE8[((v84 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v84 >> 26) + 384] ^ dword_2395C9FE8[(v85 >> 2) + 64] ^ dword_2395C9FE8[(v85 >> 10) + 192] ^ dword_2395C9FE8[((v85 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v85 >> 26) + 448] ^ v80;
    v87 = v86 ^ a2[8];
    HIDWORD(v55) = v86 ^ a2[9];
    LODWORD(v55) = HIDWORD(v55);
    v88 = v55 >> 4;
    v89 = dword_2395C9FE8[v87 >> 2] ^ dword_2395C9FE8[(v87 >> 10) + 128] ^ dword_2395C9FE8[((v87 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v87 >> 26) + 384] ^ dword_2395C9FE8[(v88 >> 2) + 64] ^ dword_2395C9FE8[(v88 >> 10) + 192] ^ dword_2395C9FE8[((v88 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v88 >> 26) + 448] ^ v83;
    v90 = v89 ^ a2[6];
    HIDWORD(v55) = v89 ^ a2[7];
    LODWORD(v55) = HIDWORD(v55);
    v91 = v55 >> 4;
    v92 = dword_2395C9FE8[v90 >> 2] ^ dword_2395C9FE8[(v90 >> 10) + 128] ^ dword_2395C9FE8[((v90 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v90 >> 26) + 384] ^ dword_2395C9FE8[(v91 >> 2) + 64] ^ dword_2395C9FE8[(v91 >> 10) + 192] ^ dword_2395C9FE8[((v91 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v91 >> 26) + 448] ^ v86;
    v93 = v92 ^ a2[4];
    HIDWORD(v55) = v92 ^ a2[5];
    LODWORD(v55) = HIDWORD(v55);
    v94 = v55 >> 4;
    v48 = dword_2395C9FE8[v93 >> 2] ^ dword_2395C9FE8[(v93 >> 10) + 128] ^ dword_2395C9FE8[((v93 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v93 >> 26) + 384] ^ dword_2395C9FE8[(v94 >> 2) + 64] ^ dword_2395C9FE8[(v94 >> 10) + 192] ^ dword_2395C9FE8[((v94 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v94 >> 26) + 448] ^ v89;
    v95 = v48 ^ a2[2];
    HIDWORD(v55) = v48 ^ a2[3];
    LODWORD(v55) = HIDWORD(v55);
    v50 = dword_2395C9FE8[v95 >> 2] ^ dword_2395C9FE8[(v95 >> 10) + 128] ^ dword_2395C9FE8[((v95 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v95 >> 26) + 384] ^ dword_2395C9FE8[((v55 >> 4) >> 2) + 64] ^ dword_2395C9FE8[((v55 >> 4) >> 10) + 192] ^ dword_2395C9FE8[(((v55 >> 4) >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[((v55 >> 4) >> 26) + 448] ^ v92;
    v52 = 1;
    v51 = a2;
  }

  v96 = v50 ^ *v51;
  HIDWORD(v98) = v50 ^ a2[v52];
  LODWORD(v98) = HIDWORD(v98);
  v97 = v98 >> 4;
  HIDWORD(v98) = v50;
  LODWORD(v98) = v50;
  v99 = v98 >> 3;
  HIDWORD(v98) = dword_2395C9FE8[v96 >> 2] ^ dword_2395C9FE8[(v96 >> 10) + 128] ^ dword_2395C9FE8[((v96 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v96 >> 26) + 384] ^ dword_2395C9FE8[(v97 >> 2) + 64] ^ dword_2395C9FE8[(v97 >> 10) + 192] ^ dword_2395C9FE8[((v97 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v97 >> 26) + 448] ^ v48;
  LODWORD(v98) = HIDWORD(v98);
  *result = v99;
  result[1] = v98 >> 3;
  return result;
}

_DWORD *sub_239410C90(int *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  v7 = a1[1];
  v8 = (*a1 ^ (v7 >> 4)) & 0xF0F0F0F;
  v9 = v8 ^ *a1;
  v10 = v7 ^ (16 * v8);
  v11 = v10 ^ HIWORD(v9);
  v12 = v11 ^ v10;
  v13 = v9 ^ (v11 << 16);
  v14 = (v13 ^ (v12 >> 2)) & 0x33333333;
  v15 = v14 ^ v13;
  v16 = v12 ^ (4 * v14);
  v17 = (v16 ^ (v15 >> 8)) & 0xFF00FF;
  v18 = v17 ^ v16;
  v19 = v15 ^ (v17 << 8);
  v20 = (v19 ^ (v18 >> 1)) & 0x55555555;
  *a1 = v20 ^ v19;
  a1[1] = v18 ^ (2 * v20);
  sub_23940FE64(a1, a4, 0);
  sub_23940FE64(a1, a3, 1);
  result = sub_23940FE64(a1, a2, 0);
  v22 = a1[1];
  v23 = (*a1 ^ (v22 >> 1)) & 0x55555555;
  v24 = v23 ^ *a1;
  v25 = v22 ^ (2 * v23);
  v26 = (v25 ^ (v24 >> 8)) & 0xFF00FF;
  v27 = v26 ^ v25;
  v28 = v24 ^ (v26 << 8);
  v29 = (v28 ^ (v27 >> 2)) & 0x33333333;
  v30 = v29 ^ v28;
  v31 = v27 ^ (4 * v29);
  v32 = v31 ^ HIWORD(v30);
  v33 = v32 ^ v31;
  v34 = v30 ^ (v32 << 16);
  v35 = (v34 ^ (v33 >> 4)) & 0xF0F0F0F;
  *a1 = v35 ^ v34;
  a1[1] = v33 ^ (16 * v35);
  return result;
}

double sub_239410D9C(void *a1, void *a2, _DWORD *a3, int a4)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = *a1;
  sub_239410E10(v7, a3, a4);
  result = *v7;
  *a2 = v7[0];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

int *sub_239410E10(int *result, _DWORD *a2, int a3)
{
  v3 = result[1];
  v4 = (*result ^ (v3 >> 4)) & 0xF0F0F0F;
  v5 = v4 ^ *result;
  v6 = v3 ^ (16 * v4);
  v7 = v6 ^ HIWORD(v5);
  v8 = v7 ^ v6;
  v9 = v5 ^ (v7 << 16);
  v10 = (v9 ^ (v8 >> 2)) & 0x33333333;
  v11 = v10 ^ v9;
  v12 = v8 ^ (4 * v10);
  v13 = (v12 ^ (v11 >> 8)) & 0xFF00FF;
  v14 = v13 ^ v12;
  v15 = v11 ^ (v13 << 8);
  v16 = (v15 ^ (v14 >> 1)) & 0x55555555;
  HIDWORD(v18) = v16 ^ v15;
  LODWORD(v18) = v16 ^ v15;
  v17 = v18 >> 29;
  HIDWORD(v18) = v14 ^ (2 * v16);
  LODWORD(v18) = HIDWORD(v18);
  v19 = v18 >> 29;
  if (a3)
  {
    v20 = *a2 ^ v17;
    HIDWORD(v22) = a2[1] ^ v17;
    LODWORD(v22) = HIDWORD(v22);
    v21 = v22 >> 4;
    v23 = dword_2395C9FE8[v20 >> 2] ^ dword_2395C9FE8[(v20 >> 10) + 128] ^ dword_2395C9FE8[((v20 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v20 >> 26) + 384] ^ dword_2395C9FE8[(v21 >> 2) + 64] ^ dword_2395C9FE8[(v21 >> 10) + 192] ^ dword_2395C9FE8[((v21 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v21 >> 26) + 448] ^ v19;
    v24 = v23 ^ a2[2];
    HIDWORD(v22) = v23 ^ a2[3];
    LODWORD(v22) = HIDWORD(v22);
    v25 = v22 >> 4;
    v26 = dword_2395C9FE8[v24 >> 2] ^ dword_2395C9FE8[(v24 >> 10) + 128] ^ dword_2395C9FE8[((v24 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v24 >> 26) + 384] ^ dword_2395C9FE8[(v25 >> 2) + 64] ^ dword_2395C9FE8[(v25 >> 10) + 192] ^ dword_2395C9FE8[((v25 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v25 >> 26) + 448] ^ v17;
    v27 = v26 ^ a2[4];
    HIDWORD(v22) = v26 ^ a2[5];
    LODWORD(v22) = HIDWORD(v22);
    v28 = v22 >> 4;
    v29 = dword_2395C9FE8[v27 >> 2] ^ dword_2395C9FE8[(v27 >> 10) + 128] ^ dword_2395C9FE8[((v27 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v27 >> 26) + 384] ^ dword_2395C9FE8[(v28 >> 2) + 64] ^ dword_2395C9FE8[(v28 >> 10) + 192] ^ dword_2395C9FE8[((v28 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v28 >> 26) + 448] ^ v23;
    v30 = v29 ^ a2[6];
    HIDWORD(v22) = v29 ^ a2[7];
    LODWORD(v22) = HIDWORD(v22);
    v31 = v22 >> 4;
    v32 = dword_2395C9FE8[v30 >> 2] ^ dword_2395C9FE8[(v30 >> 10) + 128] ^ dword_2395C9FE8[((v30 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v30 >> 26) + 384] ^ dword_2395C9FE8[(v31 >> 2) + 64] ^ dword_2395C9FE8[(v31 >> 10) + 192] ^ dword_2395C9FE8[((v31 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v31 >> 26) + 448] ^ v26;
    v33 = v32 ^ a2[8];
    HIDWORD(v22) = v32 ^ a2[9];
    LODWORD(v22) = HIDWORD(v22);
    v34 = v22 >> 4;
    v35 = dword_2395C9FE8[v33 >> 2] ^ dword_2395C9FE8[(v33 >> 10) + 128] ^ dword_2395C9FE8[((v33 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v33 >> 26) + 384] ^ dword_2395C9FE8[(v34 >> 2) + 64] ^ dword_2395C9FE8[(v34 >> 10) + 192] ^ dword_2395C9FE8[((v34 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v34 >> 26) + 448] ^ v29;
    v36 = v35 ^ a2[10];
    HIDWORD(v22) = v35 ^ a2[11];
    LODWORD(v22) = HIDWORD(v22);
    v37 = v22 >> 4;
    v38 = dword_2395C9FE8[v36 >> 2] ^ dword_2395C9FE8[(v36 >> 10) + 128] ^ dword_2395C9FE8[((v36 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v36 >> 26) + 384] ^ dword_2395C9FE8[(v37 >> 2) + 64] ^ dword_2395C9FE8[(v37 >> 10) + 192] ^ dword_2395C9FE8[((v37 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v37 >> 26) + 448] ^ v32;
    v39 = v38 ^ a2[12];
    HIDWORD(v22) = v38 ^ a2[13];
    LODWORD(v22) = HIDWORD(v22);
    v40 = v22 >> 4;
    v41 = dword_2395C9FE8[v39 >> 2] ^ dword_2395C9FE8[(v39 >> 10) + 128] ^ dword_2395C9FE8[((v39 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v39 >> 26) + 384] ^ dword_2395C9FE8[(v40 >> 2) + 64] ^ dword_2395C9FE8[(v40 >> 10) + 192] ^ dword_2395C9FE8[((v40 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v40 >> 26) + 448] ^ v35;
    v42 = v41 ^ a2[14];
    HIDWORD(v22) = v41 ^ a2[15];
    LODWORD(v22) = HIDWORD(v22);
    v43 = v22 >> 4;
    v44 = dword_2395C9FE8[v42 >> 2] ^ dword_2395C9FE8[(v42 >> 10) + 128] ^ dword_2395C9FE8[((v42 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v42 >> 26) + 384] ^ dword_2395C9FE8[(v43 >> 2) + 64] ^ dword_2395C9FE8[(v43 >> 10) + 192] ^ dword_2395C9FE8[((v43 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v43 >> 26) + 448] ^ v38;
    v45 = v44 ^ a2[16];
    HIDWORD(v22) = v44 ^ a2[17];
    LODWORD(v22) = HIDWORD(v22);
    v46 = v22 >> 4;
    v47 = dword_2395C9FE8[v45 >> 2] ^ dword_2395C9FE8[(v45 >> 10) + 128] ^ dword_2395C9FE8[((v45 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v45 >> 26) + 384] ^ dword_2395C9FE8[(v46 >> 2) + 64] ^ dword_2395C9FE8[(v46 >> 10) + 192] ^ dword_2395C9FE8[((v46 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v46 >> 26) + 448] ^ v41;
    v48 = v47 ^ a2[18];
    HIDWORD(v22) = v47 ^ a2[19];
    LODWORD(v22) = HIDWORD(v22);
    v49 = v22 >> 4;
    v50 = dword_2395C9FE8[v48 >> 2] ^ dword_2395C9FE8[(v48 >> 10) + 128] ^ dword_2395C9FE8[((v48 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v48 >> 26) + 384] ^ dword_2395C9FE8[(v49 >> 2) + 64] ^ dword_2395C9FE8[(v49 >> 10) + 192] ^ dword_2395C9FE8[((v49 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v49 >> 26) + 448] ^ v44;
    v51 = v50 ^ a2[20];
    HIDWORD(v22) = v50 ^ a2[21];
    LODWORD(v22) = HIDWORD(v22);
    v52 = v22 >> 4;
    v53 = dword_2395C9FE8[v51 >> 2] ^ dword_2395C9FE8[(v51 >> 10) + 128] ^ dword_2395C9FE8[((v51 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v51 >> 26) + 384] ^ dword_2395C9FE8[(v52 >> 2) + 64] ^ dword_2395C9FE8[(v52 >> 10) + 192] ^ dword_2395C9FE8[((v52 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v52 >> 26) + 448] ^ v47;
    v54 = v53 ^ a2[22];
    HIDWORD(v22) = v53 ^ a2[23];
    LODWORD(v22) = HIDWORD(v22);
    v55 = v22 >> 4;
    v56 = dword_2395C9FE8[v54 >> 2] ^ dword_2395C9FE8[(v54 >> 10) + 128] ^ dword_2395C9FE8[((v54 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v54 >> 26) + 384] ^ dword_2395C9FE8[(v55 >> 2) + 64] ^ dword_2395C9FE8[(v55 >> 10) + 192] ^ dword_2395C9FE8[((v55 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v55 >> 26) + 448] ^ v50;
    v57 = v56 ^ a2[24];
    HIDWORD(v22) = v56 ^ a2[25];
    LODWORD(v22) = HIDWORD(v22);
    v58 = v22 >> 4;
    v59 = dword_2395C9FE8[v57 >> 2] ^ dword_2395C9FE8[(v57 >> 10) + 128] ^ dword_2395C9FE8[((v57 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v57 >> 26) + 384] ^ dword_2395C9FE8[(v58 >> 2) + 64] ^ dword_2395C9FE8[(v58 >> 10) + 192] ^ dword_2395C9FE8[((v58 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v58 >> 26) + 448] ^ v53;
    v60 = v59 ^ a2[26];
    HIDWORD(v22) = v59 ^ a2[27];
    LODWORD(v22) = HIDWORD(v22);
    v61 = v22 >> 4;
    v62 = dword_2395C9FE8[v60 >> 2] ^ dword_2395C9FE8[(v60 >> 10) + 128] ^ dword_2395C9FE8[((v60 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v60 >> 26) + 384] ^ dword_2395C9FE8[(v61 >> 2) + 64] ^ dword_2395C9FE8[(v61 >> 10) + 192] ^ dword_2395C9FE8[((v61 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v61 >> 26) + 448] ^ v56;
    v63 = v62 ^ a2[28];
    HIDWORD(v22) = v62 ^ a2[29];
    LODWORD(v22) = HIDWORD(v22);
    v64 = dword_2395C9FE8[v63 >> 2] ^ dword_2395C9FE8[(v63 >> 10) + 128] ^ dword_2395C9FE8[((v63 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v63 >> 26) + 384] ^ dword_2395C9FE8[((v22 >> 4) >> 2) + 64] ^ dword_2395C9FE8[((v22 >> 4) >> 10) + 192] ^ dword_2395C9FE8[(((v22 >> 4) >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[((v22 >> 4) >> 26) + 448] ^ v59;
    v65 = a2 + 30;
    v66 = 31;
  }

  else
  {
    v67 = a2[30] ^ v17;
    HIDWORD(v69) = a2[31] ^ v17;
    LODWORD(v69) = HIDWORD(v69);
    v68 = v69 >> 4;
    v70 = dword_2395C9FE8[v67 >> 2] ^ dword_2395C9FE8[(v67 >> 10) + 128] ^ dword_2395C9FE8[((v67 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v67 >> 26) + 384] ^ dword_2395C9FE8[(v68 >> 2) + 64] ^ dword_2395C9FE8[(v68 >> 10) + 192] ^ dword_2395C9FE8[((v68 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v68 >> 26) + 448] ^ v19;
    v71 = v70 ^ a2[28];
    HIDWORD(v69) = v70 ^ a2[29];
    LODWORD(v69) = HIDWORD(v69);
    v72 = v69 >> 4;
    v73 = dword_2395C9FE8[v71 >> 2] ^ dword_2395C9FE8[(v71 >> 10) + 128] ^ dword_2395C9FE8[((v71 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v71 >> 26) + 384] ^ dword_2395C9FE8[(v72 >> 2) + 64] ^ dword_2395C9FE8[(v72 >> 10) + 192] ^ dword_2395C9FE8[((v72 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v72 >> 26) + 448] ^ v17;
    v74 = v73 ^ a2[26];
    HIDWORD(v69) = v73 ^ a2[27];
    LODWORD(v69) = HIDWORD(v69);
    v75 = v69 >> 4;
    v76 = dword_2395C9FE8[v74 >> 2] ^ dword_2395C9FE8[(v74 >> 10) + 128] ^ dword_2395C9FE8[((v74 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v74 >> 26) + 384] ^ dword_2395C9FE8[(v75 >> 2) + 64] ^ dword_2395C9FE8[(v75 >> 10) + 192] ^ dword_2395C9FE8[((v75 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v75 >> 26) + 448] ^ v70;
    v77 = v76 ^ a2[24];
    HIDWORD(v69) = v76 ^ a2[25];
    LODWORD(v69) = HIDWORD(v69);
    v78 = v69 >> 4;
    v79 = dword_2395C9FE8[v77 >> 2] ^ dword_2395C9FE8[(v77 >> 10) + 128] ^ dword_2395C9FE8[((v77 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v77 >> 26) + 384] ^ dword_2395C9FE8[(v78 >> 2) + 64] ^ dword_2395C9FE8[(v78 >> 10) + 192] ^ dword_2395C9FE8[((v78 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v78 >> 26) + 448] ^ v73;
    v80 = v79 ^ a2[22];
    HIDWORD(v69) = v79 ^ a2[23];
    LODWORD(v69) = HIDWORD(v69);
    v81 = v69 >> 4;
    v82 = dword_2395C9FE8[v80 >> 2] ^ dword_2395C9FE8[(v80 >> 10) + 128] ^ dword_2395C9FE8[((v80 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v80 >> 26) + 384] ^ dword_2395C9FE8[(v81 >> 2) + 64] ^ dword_2395C9FE8[(v81 >> 10) + 192] ^ dword_2395C9FE8[((v81 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v81 >> 26) + 448] ^ v76;
    v83 = v82 ^ a2[20];
    HIDWORD(v69) = v82 ^ a2[21];
    LODWORD(v69) = HIDWORD(v69);
    v84 = v69 >> 4;
    v85 = dword_2395C9FE8[v83 >> 2] ^ dword_2395C9FE8[(v83 >> 10) + 128] ^ dword_2395C9FE8[((v83 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v83 >> 26) + 384] ^ dword_2395C9FE8[(v84 >> 2) + 64] ^ dword_2395C9FE8[(v84 >> 10) + 192] ^ dword_2395C9FE8[((v84 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v84 >> 26) + 448] ^ v79;
    v86 = v85 ^ a2[18];
    HIDWORD(v69) = v85 ^ a2[19];
    LODWORD(v69) = HIDWORD(v69);
    v87 = v69 >> 4;
    v88 = dword_2395C9FE8[v86 >> 2] ^ dword_2395C9FE8[(v86 >> 10) + 128] ^ dword_2395C9FE8[((v86 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v86 >> 26) + 384] ^ dword_2395C9FE8[(v87 >> 2) + 64] ^ dword_2395C9FE8[(v87 >> 10) + 192] ^ dword_2395C9FE8[((v87 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v87 >> 26) + 448] ^ v82;
    v89 = v88 ^ a2[16];
    HIDWORD(v69) = v88 ^ a2[17];
    LODWORD(v69) = HIDWORD(v69);
    v90 = v69 >> 4;
    v91 = dword_2395C9FE8[v89 >> 2] ^ dword_2395C9FE8[(v89 >> 10) + 128] ^ dword_2395C9FE8[((v89 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v89 >> 26) + 384] ^ dword_2395C9FE8[(v90 >> 2) + 64] ^ dword_2395C9FE8[(v90 >> 10) + 192] ^ dword_2395C9FE8[((v90 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v90 >> 26) + 448] ^ v85;
    v92 = v91 ^ a2[14];
    HIDWORD(v69) = v91 ^ a2[15];
    LODWORD(v69) = HIDWORD(v69);
    v93 = v69 >> 4;
    v94 = dword_2395C9FE8[v92 >> 2] ^ dword_2395C9FE8[(v92 >> 10) + 128] ^ dword_2395C9FE8[((v92 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v92 >> 26) + 384] ^ dword_2395C9FE8[(v93 >> 2) + 64] ^ dword_2395C9FE8[(v93 >> 10) + 192] ^ dword_2395C9FE8[((v93 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v93 >> 26) + 448] ^ v88;
    v95 = v94 ^ a2[12];
    HIDWORD(v69) = v94 ^ a2[13];
    LODWORD(v69) = HIDWORD(v69);
    v96 = v69 >> 4;
    v97 = dword_2395C9FE8[v95 >> 2] ^ dword_2395C9FE8[(v95 >> 10) + 128] ^ dword_2395C9FE8[((v95 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v95 >> 26) + 384] ^ dword_2395C9FE8[(v96 >> 2) + 64] ^ dword_2395C9FE8[(v96 >> 10) + 192] ^ dword_2395C9FE8[((v96 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v96 >> 26) + 448] ^ v91;
    v98 = v97 ^ a2[10];
    HIDWORD(v69) = v97 ^ a2[11];
    LODWORD(v69) = HIDWORD(v69);
    v99 = v69 >> 4;
    v100 = dword_2395C9FE8[v98 >> 2] ^ dword_2395C9FE8[(v98 >> 10) + 128] ^ dword_2395C9FE8[((v98 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v98 >> 26) + 384] ^ dword_2395C9FE8[(v99 >> 2) + 64] ^ dword_2395C9FE8[(v99 >> 10) + 192] ^ dword_2395C9FE8[((v99 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v99 >> 26) + 448] ^ v94;
    v101 = v100 ^ a2[8];
    HIDWORD(v69) = v100 ^ a2[9];
    LODWORD(v69) = HIDWORD(v69);
    v102 = v69 >> 4;
    v103 = dword_2395C9FE8[v101 >> 2] ^ dword_2395C9FE8[(v101 >> 10) + 128] ^ dword_2395C9FE8[((v101 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v101 >> 26) + 384] ^ dword_2395C9FE8[(v102 >> 2) + 64] ^ dword_2395C9FE8[(v102 >> 10) + 192] ^ dword_2395C9FE8[((v102 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v102 >> 26) + 448] ^ v97;
    v104 = v103 ^ a2[6];
    HIDWORD(v69) = v103 ^ a2[7];
    LODWORD(v69) = HIDWORD(v69);
    v105 = v69 >> 4;
    v106 = dword_2395C9FE8[v104 >> 2] ^ dword_2395C9FE8[(v104 >> 10) + 128] ^ dword_2395C9FE8[((v104 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v104 >> 26) + 384] ^ dword_2395C9FE8[(v105 >> 2) + 64] ^ dword_2395C9FE8[(v105 >> 10) + 192] ^ dword_2395C9FE8[((v105 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v105 >> 26) + 448] ^ v100;
    v107 = v106 ^ a2[4];
    HIDWORD(v69) = v106 ^ a2[5];
    LODWORD(v69) = HIDWORD(v69);
    v108 = v69 >> 4;
    v62 = dword_2395C9FE8[v107 >> 2] ^ dword_2395C9FE8[(v107 >> 10) + 128] ^ dword_2395C9FE8[((v107 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v107 >> 26) + 384] ^ dword_2395C9FE8[(v108 >> 2) + 64] ^ dword_2395C9FE8[(v108 >> 10) + 192] ^ dword_2395C9FE8[((v108 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v108 >> 26) + 448] ^ v103;
    v109 = v62 ^ a2[2];
    HIDWORD(v69) = v62 ^ a2[3];
    LODWORD(v69) = HIDWORD(v69);
    v64 = dword_2395C9FE8[v109 >> 2] ^ dword_2395C9FE8[(v109 >> 10) + 128] ^ dword_2395C9FE8[((v109 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v109 >> 26) + 384] ^ dword_2395C9FE8[((v69 >> 4) >> 2) + 64] ^ dword_2395C9FE8[((v69 >> 4) >> 10) + 192] ^ dword_2395C9FE8[(((v69 >> 4) >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[((v69 >> 4) >> 26) + 448] ^ v106;
    v66 = 1;
    v65 = a2;
  }

  v110 = v64 ^ *v65;
  HIDWORD(v112) = v64 ^ a2[v66];
  LODWORD(v112) = HIDWORD(v112);
  v111 = v112 >> 4;
  HIDWORD(v112) = dword_2395C9FE8[v110 >> 2] ^ dword_2395C9FE8[(v110 >> 10) + 128] ^ dword_2395C9FE8[((v110 >> 18) & 0x3F) + 256] ^ dword_2395C9FE8[(v110 >> 26) + 384] ^ dword_2395C9FE8[(v111 >> 2) + 64] ^ dword_2395C9FE8[(v111 >> 10) + 192] ^ dword_2395C9FE8[((v111 >> 18) & 0x3F) + 320] ^ dword_2395C9FE8[(v111 >> 26) + 448] ^ v62;
  LODWORD(v112) = HIDWORD(v112);
  v113 = (((v112 >> 3) >> 1) ^ __ROR4__(v64, 3)) & 0x55555555;
  v114 = v113 ^ __ROR4__(v64, 3);
  v115 = (2 * v113) ^ __ROR4__(HIDWORD(v112), 3);
  v116 = (v115 ^ (v114 >> 8)) & 0xFF00FF;
  v117 = v116 ^ v115;
  v118 = v114 ^ (v116 << 8);
  v119 = (v118 ^ (v117 >> 2)) & 0x33333333;
  v120 = v119 ^ v118;
  v121 = v117 ^ (4 * v119);
  v122 = v121 ^ HIWORD(v120);
  v123 = v122 ^ v121;
  v124 = v120 ^ (v122 << 16);
  v125 = (v124 ^ (v123 >> 4)) & 0xF0F0F0F;
  *result = v125 ^ v124;
  result[1] = v123 ^ (16 * v125);
  return result;
}

int *sub_239411D04(int *result, uint64_t a2, unint64_t a3, _DWORD *a4, int8x8_t *a5, int a6)
{
  v8 = a3;
  v10 = result;
  v43[1] = *MEMORY[0x277D85DE8];
  v11 = *a5;
  v12 = *a5;
  v13 = HIDWORD(*a5);
  if (!a6)
  {
    if (a3 >= 8)
    {
      do
      {
        v18 = a2;
        v19 = v12;
        v20 = v13;
        v12 = *v10;
        v13 = v10[1];
        v21 = v10 + 2;
        LODWORD(v43[0]) = *v10;
        HIDWORD(v43[0]) = v13;
        result = sub_239410E10(v43, a4, 0);
        v22 = WORD1(v43[0]) ^ HIWORD(v19);
        v23 = HIDWORD(v43[0]) ^ v20;
        *v18 = LOWORD(v43[0]) ^ v19;
        *(v18 + 2) = v22;
        *(v18 + 4) = v23;
        a2 = v18 + 8;
        v8 -= 8;
        v10 += 2;
      }

      while (v8 > 7);
      v10 = v21;
    }

    if (!v8)
    {
      goto LABEL_41;
    }

    v25 = *v10;
    v24 = v10[1];
    v43[0] = __PAIR64__(v24, v25);
    result = sub_239410E10(v43, a4, 0);
    v26 = LODWORD(v43[0]) ^ v12;
    v27 = a2 + v8;
    if (v8 <= 3)
    {
      if (v8 == 1)
      {
LABEL_40:
        *(v27 - 1) = v26;
        v12 = v25;
        v13 = v24;
LABEL_41:
        a5->i32[0] = v12;
        a5->i16[2] = v13;
        v34 = HIBYTE(v13);
        a5->i8[6] = BYTE2(v13);
        goto LABEL_42;
      }

      if (v8 == 2)
      {
LABEL_39:
        *--v27 = BYTE1(v26);
        goto LABEL_40;
      }

LABEL_38:
      *--v27 = BYTE2(v26);
      goto LABEL_39;
    }

    v28 = HIDWORD(v43[0]) ^ v13;
    if (v8 > 5)
    {
      if (v8 != 6)
      {
        *--v27 = BYTE2(v28);
      }

      *--v27 = BYTE1(v28);
    }

    else if (v8 == 4)
    {
      goto LABEL_37;
    }

    *--v27 = v28;
LABEL_37:
    *--v27 = HIBYTE(v26);
    goto LABEL_38;
  }

  if (a3 >= 8)
  {
    do
    {
      v14 = a2;
      v15 = *v10;
      v10 += 2;
      v43[0] = veor_s8(v15, v11);
      result = sub_239410E10(v43, a4, 1);
      v11 = v43[0];
      v12 = v43[0];
      *a2 = v43[0];
      *(a2 + 2) = BYTE2(v12);
      *(a2 + 3) = HIBYTE(v12);
      v13 = v11.u32[1];
      *(a2 + 4) = v11.i16[2];
      *(a2 + 6) = v11.i8[6];
      a2 += 8;
      *(v14 + 7) = v11.i8[7];
      v8 -= 8;
    }

    while (v8 > 7);
  }

  if (v8)
  {
    v16 = 0;
    v17 = v10 + v8;
    if (v8 <= 3)
    {
      v35 = 0;
      if (v8 == 1)
      {
LABEL_28:
        LODWORD(v43[0]) = (v16 | *(v17 - 1)) ^ v12;
        HIDWORD(v43[0]) = v35 ^ v13;
        result = sub_239410E10(v43, a4, 1);
        LOBYTE(v12) = v43[0];
        v13 = HIDWORD(v43[0]);
        v29 = LODWORD(v43[0]) >> 8;
        v30 = HIWORD(LODWORD(v43[0]));
        v31 = HIBYTE(LODWORD(v43[0]));
        v32 = HIDWORD(v43[0]) >> 8;
        v33 = HIWORD(HIDWORD(v43[0]));
        v34 = HIBYTE(HIDWORD(v43[0]));
        *a2 = v43[0];
        *(a2 + 4) = v13;
        goto LABEL_29;
      }

      if (v8 == 2)
      {
LABEL_27:
        v41 = *--v17;
        v16 |= v41 << 8;
        goto LABEL_28;
      }

LABEL_26:
      v40 = *--v17;
      v16 |= v40 << 16;
      goto LABEL_27;
    }

    if (v8 > 5)
    {
      if (v8 != 6)
      {
        v36 = *--v17;
        v16 = v36 << 16;
      }

      v37 = *--v17;
      v16 |= v37 << 8;
    }

    else if (v8 == 4)
    {
      goto LABEL_25;
    }

    v38 = *--v17;
    v16 |= v38;
LABEL_25:
    v35 = v16;
    v39 = *--v17;
    v16 = v39 << 24;
    goto LABEL_26;
  }

  v29 = v12 >> 8;
  v30 = HIWORD(v12);
  v31 = HIBYTE(v12);
  v32 = v13 >> 8;
  v33 = HIWORD(v13);
  v34 = HIBYTE(v13);
LABEL_29:
  a5->i8[0] = v12;
  a5->i8[1] = v29;
  a5->i8[2] = v30;
  a5->i8[3] = v31;
  a5->i8[4] = v13;
  a5->i8[5] = v32;
  a5->i8[6] = v33;
LABEL_42:
  a5->i8[7] = v34;
  v42 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_239412074(void *a1, void *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, int a6)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = *a1;
  if (a6)
  {
    sub_23940FD5C(v9, a3, a4, a5);
  }

  else
  {
    sub_239410C90(v9, a3, a4, a5);
  }

  result = *v9;
  *a2 = v9[0];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

unsigned __int32 *sub_2394120FC(unsigned __int32 *result, uint64_t a2, unint64_t a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, int8x8_t *a7, int a8)
{
  v8 = a7;
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v14 = result;
  v51[1] = *MEMORY[0x277D85DE8];
  v15 = *a7;
  v16 = *a7;
  v17 = HIDWORD(*a7);
  if (!a8)
  {
    if (a3 >= 8)
    {
      do
      {
        v24 = a2;
        v25 = v16;
        v26 = v17;
        v16 = *v14;
        v17 = v14[1];
        v27 = v14 + 2;
        LODWORD(v51[0]) = *v14;
        HIDWORD(v51[0]) = v17;
        result = sub_239410C90(v51, a4, a5, a6);
        v28 = WORD1(v51[0]) ^ HIWORD(v25);
        v29 = HIDWORD(v51[0]) ^ v26;
        *v24 = LOWORD(v51[0]) ^ v25;
        *(v24 + 2) = v28;
        *(v24 + 4) = v29;
        a2 = v24 + 8;
        v12 -= 8;
        v14 += 2;
      }

      while (v12 > 7);
      v14 = v27;
      v9 = a6;
      v10 = a5;
      v8 = a7;
      v11 = a4;
    }

    if (!v12)
    {
      goto LABEL_41;
    }

    v31 = *v14;
    v30 = v14[1];
    v51[0] = __PAIR64__(v30, v31);
    result = sub_239410C90(v51, v11, v10, v9);
    v32 = LODWORD(v51[0]) ^ v16;
    v33 = a2 + v12;
    if (v12 <= 3)
    {
      if (v12 == 1)
      {
LABEL_40:
        *(v33 - 1) = v32;
        v16 = v31;
        v17 = v30;
LABEL_41:
        v8->i32[0] = v16;
        v8->i16[2] = v17;
        v40 = HIBYTE(v17);
        v8->i8[6] = BYTE2(v17);
        goto LABEL_42;
      }

      if (v12 == 2)
      {
LABEL_39:
        *--v33 = BYTE1(v32);
        goto LABEL_40;
      }

LABEL_38:
      *--v33 = BYTE2(v32);
      goto LABEL_39;
    }

    v34 = HIDWORD(v51[0]) ^ v17;
    if (v12 > 5)
    {
      if (v12 != 6)
      {
        *--v33 = BYTE2(v34);
      }

      *--v33 = BYTE1(v34);
    }

    else if (v12 == 4)
    {
      goto LABEL_37;
    }

    *--v33 = v34;
LABEL_37:
    *--v33 = HIBYTE(v32);
    goto LABEL_38;
  }

  if (a3 >= 8)
  {
    do
    {
      v18 = a2;
      v19 = *v14;
      v14 += 2;
      v51[0] = veor_s8(v19, v15);
      result = sub_23940FD5C(v51, v11, v10, v9);
      v15 = v51[0];
      v16 = v51[0];
      *a2 = v51[0];
      *(a2 + 2) = BYTE2(v16);
      *(a2 + 3) = HIBYTE(v16);
      v17 = v15.u32[1];
      *(a2 + 4) = v15.i16[2];
      *(a2 + 6) = v15.i8[6];
      a2 += 8;
      *(v18 + 7) = v15.i8[7];
      v12 -= 8;
    }

    while (v12 > 7);
  }

  if (v12)
  {
    v20 = 0;
    v21 = v14 + v12;
    if (v12 <= 3)
    {
      v41 = 0;
      if (v12 == 1)
      {
LABEL_28:
        LODWORD(v51[0]) = (v20 | *(v21 - 1)) ^ v16;
        HIDWORD(v51[0]) = v41 ^ v17;
        result = sub_23940FD5C(v51, v11, v10, v9);
        v16 = v51[0];
        v17 = HIDWORD(v51[0]);
        *a2 = v51[0];
        v35 = v16 >> 8;
        *(a2 + 1) = BYTE1(v16);
        v36 = HIWORD(v16);
        *(a2 + 2) = BYTE2(v16);
        v37 = HIBYTE(v16);
        *(a2 + 3) = HIBYTE(v16);
        *(a2 + 4) = v17;
        v38 = v17 >> 8;
        v39 = HIWORD(v17);
        v40 = HIBYTE(v17);
        goto LABEL_29;
      }

      if (v12 == 2)
      {
LABEL_27:
        v47 = *--v21;
        v20 |= v47 << 8;
        goto LABEL_28;
      }

LABEL_26:
      v46 = *--v21;
      v20 |= v46 << 16;
      goto LABEL_27;
    }

    if (v12 > 5)
    {
      if (v12 != 6)
      {
        v42 = *--v21;
        v20 = v42 << 16;
      }

      v43 = *--v21;
      v20 |= v43 << 8;
    }

    else if (v12 == 4)
    {
      goto LABEL_25;
    }

    v44 = *--v21;
    v20 |= v44;
LABEL_25:
    v41 = v20;
    v45 = *--v21;
    v20 = v45 << 24;
    goto LABEL_26;
  }

  v35 = v16 >> 8;
  v36 = HIWORD(v16);
  v37 = HIBYTE(v16);
  v38 = v17 >> 8;
  v39 = HIWORD(v17);
  v40 = HIBYTE(v17);
LABEL_29:
  v8->i8[0] = v16;
  v8->i8[1] = v35;
  v8->i8[2] = v36;
  v8->i8[3] = v37;
  v8->i8[4] = v17;
  v8->i8[5] = v38;
  v8->i8[6] = v39;
LABEL_42:
  v8->i8[7] = v40;
  v48 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_2394124C4(__int128 *a1)
{
  v2 = sub_2394305DC();
  if (v2)
  {
    if ((v7 = 0uLL, !sub_239407F5C(a1, &v7, 536870928)) || (v3 = sub_239421E8C(), (*v2 = v3) == 0) || !sub_239405234(&v7, v3) || (v4 = sub_239421E8C(), (v2[1] = v4) == 0) || !sub_239405234(&v7, v4) || (v6 = 0, *(&v7 + 1)) && (!sub_239408120(&v7, &v6) || HIDWORD(v6) || (*(v2 + 10) = v6, *(&v7 + 1))) || !sub_239430028(v2))
    {
      sub_2394170F4(5, 0, 104, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/dh_extra/dh_asn1.c", 120);
      sub_23943061C(v2);
      return 0;
    }
  }

  return v2;
}

uint64_t sub_2394125B8(uint64_t *a1, uint64_t a2)
{
  memset(v6, 0, sizeof(v6));
  if (sub_239406A10(a1, v6, 0x20000010u))
  {
    if (sub_23941266C(v6, *a2))
    {
      if (sub_23941266C(v6, *(a2 + 8)))
      {
        v4 = *(a2 + 40);
        if (!v4 || sub_239406FE8(v6, v4))
        {
          if (sub_239406758(a1))
          {
            return 1;
          }
        }
      }
    }
  }

  sub_2394170F4(5, 0, 105, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/dh_extra/dh_asn1.c", 133);
  return 0;
}

uint64_t sub_23941266C(uint64_t *a1, uint64_t *a2)
{
  if (a2)
  {

    return sub_2394052E0(a1, a2);
  }

  else
  {
    sub_2394170F4(5, a2, 67, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/dh_extra/dh_asn1.c", 81);
    return 0;
  }
}

void *sub_2394126B0(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a3 < 0)
  {
    return 0;
  }

  *&v7 = *a2;
  *(&v7 + 1) = a3;
  v5 = sub_2394124C4(&v7);
  if (v5)
  {
    if (a1)
    {
      sub_23943061C(*a1);
      *a1 = v5;
    }

    *a2 = v7;
  }

  return v5;
}

uint64_t sub_239412724(uint64_t a1, void **a2)
{
  memset(v5, 0, sizeof(v5));
  if (sub_2394065F4(v5, 0) && sub_2394125B8(v5, a1))
  {
    return sub_23940603C(v5, a2);
  }

  sub_239406688(v5);
  return 0xFFFFFFFFLL;
}

uint64_t sub_239412798(int a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = &off_284BB94A0;
  v2 = 18;
  while (*(v1 - 2) != a1)
  {
    v1 += 4;
    if (!--v2)
    {
      return 0;
    }
  }

  return (*v1)();
}

uint64_t sub_2394127D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = &off_284BB94A0;
    v3 = 18;
    while (*(v2 - 2) != v1)
    {
      v2 += 4;
      if (!--v3)
      {
        return 0;
      }
    }

    v6 = *v2;

    return v6();
  }

  else
  {
    v7[0] = sub_23952C968(a1);
    v7[1] = sub_2394509D8(a1);
    return sub_23941286C(v7);
  }
}

uint64_t sub_23941286C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = &unk_2395CA7E8;
  v4 = 7;
  while (v2 != v3[9] || v3[9] && memcmp(*a1, v3, v2))
  {
    v3 += 16;
    if (!--v4)
    {
      return 0;
    }
  }

  v5 = *(v3 + 3);
  if (!v5)
  {
    return 0;
  }

  v6 = &off_284BB94A0;
  v7 = 18;
  while (*(v6 - 2) != v5)
  {
    v6 += 4;
    if (!--v7)
    {
      return 0;
    }
  }

  v9 = *v6;

  return v9();
}

uint64_t sub_23941292C(__int128 *a1)
{
  v7 = 0uLL;
  v6[0] = 0;
  v6[1] = 0;
  if (!sub_239407F5C(a1, &v7, 536870928) || !sub_239407F5C(&v7, v6, 6))
  {
    v2 = 172;
    goto LABEL_10;
  }

  v1 = sub_23941286C(v6);
  if (!v1)
  {
    sub_2394170F4(29, 0, 102, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/digest_extra/digest_extra.c", 178);
    return v1;
  }

  if (*(&v7 + 1))
  {
    v4 = 0;
    v5 = 0;
    if (!sub_239407F5C(&v7, &v4, 5) || v5 || *(&v7 + 1))
    {
      v2 = 191;
LABEL_10:
      sub_2394170F4(29, 0, 101, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/digest_extra/digest_extra.c", v2);
      return 0;
    }
  }

  return v1;
}

uint64_t sub_239412A20(uint64_t *a1, unsigned int *a2)
{
  memset(v10, 0, sizeof(v10));
  memset(v9, 0, sizeof(v9));
  memset(v8, 0, sizeof(v8));
  result = sub_239406A10(a1, v10, 0x20000010u);
  if (result)
  {
    result = sub_239406A10(v10, v9, 6u);
    if (result)
    {
      v5 = sub_2393FFBE4(a2);
      v6 = &unk_2395CA7E8;
      v7 = 7;
      while (v5 != v6[3])
      {
        v6 += 4;
        if (!--v7)
        {
          sub_2394170F4(29, 0, 102, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/digest_extra/digest_extra.c", 219);
          return 0;
        }
      }

      result = sub_239406C48(v9, v6, *(v6 + 9));
      if (result)
      {
        result = sub_239406A10(v10, v8, 5u);
        if (result)
        {
          return sub_239406758(a1) != 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_239412B10(char *__s2)
{
  v2 = &off_284BB94B0;
  v3 = 18;
  while (1)
  {
    v4 = *(v2 - 1);
    v5 = *v2;
    if (v4)
    {
      if (!strcmp(v4, __s2))
      {
        break;
      }
    }

    if (v5 && !strcmp(v5, __s2))
    {
      break;
    }

    v2 += 4;
    if (!--v3)
    {
      return 0;
    }
  }

  v7 = *(v2 - 2);

  return v7();
}

void *sub_239412BCC()
{
  v0 = sub_2394500B0(0x110uLL);
  v1 = v0;
  if (v0)
  {
    *(v0 + 64) = 1;
    sub_239457CF8((v0 + 5));
    sub_2393F7EB0(v1 + 33);
  }

  return v1;
}

void sub_239412C14(uint64_t a1)
{
  if (a1 && sub_239455A20((a1 + 256)))
  {
    sub_23941F114(&unk_27DF76878, a1, (a1 + 264));
    sub_239421F28(*a1);
    sub_239421F28(*(a1 + 8));
    sub_239421F28(*(a1 + 16));
    sub_239421F28(*(a1 + 24));
    sub_239421F28(*(a1 + 32));
    sub_239425AB8(*(a1 + 240));
    sub_239425AB8(*(a1 + 248));
    j__pthread_rwlock_destroy((a1 + 40));

    sub_239450144(a1);
  }
}

uint64_t sub_239412CF8(uint64_t result, void *a2, void *a3)
{
  if (a2)
  {
    *a2 = *(result + 24);
  }

  if (a3)
  {
    *a3 = *(result + 32);
  }

  return result;
}

void *sub_239412D14(void *result, void *a2, void *a3, void *a4)
{
  if (a2)
  {
    *a2 = *result;
  }

  if (a3)
  {
    *a3 = result[1];
  }

  if (a4)
  {
    *a4 = result[2];
  }

  return result;
}

uint64_t sub_239412D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 24);
  if (!(a2 | v4))
  {
    return 0;
  }

  if (a2)
  {
    sub_239421EC8(v4);
    *(a1 + 24) = a2;
  }

  if (a3)
  {
    sub_239421EC8(*(a1 + 32));
    *(a1 + 32) = a3;
  }

  return 1;
}

uint64_t sub_239412DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  if (!(a2 | v5) || !(a3 | *(a1 + 8)) || !(a4 | *(a1 + 16)))
  {
    return 0;
  }

  if (a2)
  {
    sub_239421EC8(v5);
    *a1 = a2;
  }

  if (a3)
  {
    sub_239421EC8(*(a1 + 8));
    *(a1 + 8) = a3;
  }

  if (a4)
  {
    sub_239421EC8(*(a1 + 16));
    *(a1 + 16) = a4;
  }

  sub_239425AB8(*(a1 + 240));
  *(a1 + 240) = 0;
  sub_239425AB8(*(a1 + 248));
  *(a1 + 248) = 0;
  return 1;
}

BOOL sub_239412E48(void ***a1, unsigned int a2, uint64_t a3, unint64_t a4, _DWORD *a5, void *a6, uint64_t a7)
{
  v70 = *MEMORY[0x277D85DE8];
  if (a2 < 0x2711)
  {
    if (a2 < 0x800)
    {
      v13 = sub_2394315BC();
    }

    else
    {
      v13 = sub_2394316DC();
    }

    v14 = v13;
    v15 = sub_2393FFBEC(v13);
    v16 = v15;
    if (a2 <= 0x200)
    {
      v17 = 512;
    }

    else
    {
      v17 = a2;
    }

    v18 = a3 == 0;
    if (a3)
    {
      if (v15 > a4)
      {
        goto LABEL_11;
      }

      if (v15)
      {
        __memcpy_chk();
      }
    }

    sub_239422D0C();
    if (v20)
    {
      v21 = v20;
      sub_239422DA4(v20);
      v22 = sub_239422E50(v21);
      v58 = sub_239422E50(v21);
      v23 = sub_239422E50(v21);
      v62 = sub_239422E50(v21);
      v60 = sub_239422E50(v21);
      v61 = sub_239422E50(v21);
      v59 = sub_239422E50(v21);
      v24 = sub_239422E50(v21);
      if (v24 && (v64 = a7, v25 = v24, v26 = sub_239422040(), v27 = ((v17 + 63) & 0x7FC0) - 1, sub_23942350C(v25, v26, v27)))
      {
        v57 = a5;
        v28 = 0;
LABEL_18:
        v29 = v64;
        while (1)
        {
          if (!sub_23942ABA0(v29, 0, v28) || v18 && !sub_23942C1AC(v69, v16))
          {
            goto LABEL_75;
          }

          if (v16)
          {
            __memcpy_chk();
            __memcpy_chk();
            v30 = v16;
            do
            {
              v31 = v66[v30 + 31]++ + 1;
              if ((v31 & 0x100) == 0)
              {
                break;
              }

              v32 = v30 - 2;
              --v30;
            }

            while (v32 < v16);
          }

          if (!sub_239430E60(v69, v16, v68, 0, v14) || !sub_239430E60(v67, v16, v66, 0, v14))
          {
            goto LABEL_75;
          }

          if (v16)
          {
            v33 = v68;
            v34 = v66;
            v35 = v16;
            do
            {
              v36 = *v34++;
              *v33++ ^= v36;
              --v35;
            }

            while (v35);
          }

          v68[0] |= 0x80u;
          v68[v16 - 1] |= 1u;
          if (!sub_23942253C(v68, v16, v62))
          {
            goto LABEL_75;
          }

          v63 = v28 + 1;
          v37 = sub_23942B170(v62, 50, v21, v18, v64);
          if (v37 > 0)
          {
            break;
          }

          v29 = v64;
          v18 = 1;
          v28 = v63;
          if (v37)
          {
            goto LABEL_75;
          }
        }

        v38 = v61;
        if (!sub_23942ABA0(v64, 2, 0) || !sub_23942ABA0(v64, 3, 0))
        {
          goto LABEL_75;
        }

        v39 = 0;
        while (2)
        {
          if (!v39 || (v40 = v39, v41 = sub_23942ABA0(v64, 0, v39), LODWORD(v39) = v40, v41))
          {
            v56 = v39;
            sub_239422198(v23);
            v42 = 0;
            do
            {
              v43 = v16 - 1;
              do
              {
                if (v43 >= v16)
                {
                  break;
                }

                v44 = v67[v43--]++ + 1;
              }

              while ((v44 & 0x100) != 0);
              if (!sub_239430E60(v67, v16, v68, 0, v14) || !sub_23942253C(v68, v16, v22) || !sub_23942350C(v22, v22, 8 * v16 * v42) || !sub_2394213B4(v23, v23, v22))
              {
                goto LABEL_75;
              }
            }

            while (v42++ != v27 / 0xA0);
            if (!sub_23942C818(v23, v27))
            {
              goto LABEL_75;
            }

            if (!sub_239421F90(v60, v23))
            {
              goto LABEL_75;
            }

            if (!sub_2394213B4(v60, v60, v25))
            {
              goto LABEL_75;
            }

            if (!sub_239424670(v22, v62))
            {
              goto LABEL_75;
            }

            if (!sub_239422F7C(0, v38, v60, v22, v21))
            {
              goto LABEL_75;
            }

            v46 = sub_239422040();
            if (!sub_239421B30(v22, v38, v46) || !sub_239421B30(v59, v60, v22))
            {
              goto LABEL_75;
            }

            v38 = v61;
            if ((sub_2394229D8(v59, v25) & 0x80000000) != 0)
            {
LABEL_60:
              v39 = (v56 + 1);
              v18 = 1;
              if (v56 != 4095)
              {
                continue;
              }

              v28 = v63;
              goto LABEL_18;
            }

            v47 = sub_23942B170(v59, 50, v21, 1, v64);
            if (v47 <= 0)
            {
              if (v47)
              {
                goto LABEL_75;
              }

              goto LABEL_60;
            }

            if (!sub_23942ABA0(v64, 2, 1))
            {
              goto LABEL_75;
            }

            v49 = sub_239422040();
            if (!sub_239421B30(v25, v59, v49) || !sub_239422F7C(v22, 0, v25, v62, v21))
            {
              goto LABEL_75;
            }

            v48 = sub_239426A1C(v59, v21);
            if (!v48 || !sub_239421948(v25, 2) || !sub_2394253C4(v58, v25, v22, v59, v21, v48))
            {
              goto LABEL_76;
            }

            v50 = 2;
            while (sub_239422B0C(v58))
            {
              v51 = sub_239422040();
              if (sub_2394213B4(v25, v25, v51))
              {
                ++v50;
                if (sub_2394253C4(v58, v25, v22, v59, v21, v48))
                {
                  continue;
                }
              }

              goto LABEL_76;
            }

            v54 = sub_23942ABA0(v64, 3, 1);
            v19 = v54 != 0;
            if (v54)
            {
              sub_239421EC8(*a1);
              sub_239421EC8(a1[1]);
              sub_239421EC8(a1[2]);
              *a1 = sub_239421F2C(v59);
              a1[1] = sub_239421F2C(v62);
              v55 = sub_239421F2C(v58);
              a1[2] = v55;
              if (!*a1)
              {
                goto LABEL_76;
              }

              v19 = 0;
              if (a1[1] && v55)
              {
                if (v57)
                {
                  *v57 = v56;
                }

                if (a6)
                {
                  *a6 = v50;
                }

                v19 = 1;
              }
            }
          }

          else
          {
LABEL_75:
            v48 = 0;
LABEL_76:
            v19 = 0;
          }

          break;
        }
      }

      else
      {
        v19 = 0;
        v48 = 0;
      }

      sub_239422F58(v21);
      sub_239422D38(v21);
    }

    else
    {
      v19 = 0;
      v48 = 0;
    }

    sub_239425AB8(v48);
    goto LABEL_79;
  }

  sub_2394170F4(10, 0, 107, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/dsa/dsa.c", 212);
LABEL_11:
  v19 = 0;
LABEL_79:
  v52 = *MEMORY[0x277D85DE8];
  return v19;
}

void *sub_239413538(uint64_t *a1)
{
  v2 = sub_239412BCC();
  if (v2)
  {
    *v2 = sub_239421F2C(*a1);
    v2[1] = sub_239421F2C(a1[1]);
    v3 = sub_239421F2C(a1[2]);
    v2[2] = v3;
    if (!*v2 || !v2[1] || !v3)
    {
      sub_239412C14(v2);
      return 0;
    }
  }

  return v2;
}

uint64_t sub_2394135AC(uint64_t a1)
{
  if (!sub_239414180(a1))
  {
    return 0;
  }

  sub_239422D0C();
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 32);
    if ((v4 || (v4 = sub_239421E8C()) != 0) && sub_239427A14(v4, 1uLL, *(a1 + 8)))
    {
      v5 = *(a1 + 24);
      if ((v5 || (v5 = sub_239421E8C()) != 0) && sub_239429C8C((a1 + 240), (a1 + 40), *a1, v3) && sub_239426160(v5, *(a1 + 16), v4, *a1, v3, *(a1 + 240)))
      {
        *(a1 + 24) = v5;
        *(a1 + 32) = v4;
        v6 = 1;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
    v4 = 0;
  }

  if (!*(a1 + 24))
  {
    sub_239421EC8(v5);
  }

  if (!*(a1 + 32))
  {
    sub_239421EC8(v4);
  }

  sub_239422D38(v3);
  return v6;
}

void sub_2394136CC(void *a1)
{
  if (a1)
  {
    sub_239421EC8(*a1);
    sub_239421EC8(a1[1]);

    sub_239450144(a1);
  }
}

void *sub_239413718(void *result, void *a2, void *a3)
{
  if (a2)
  {
    *a2 = *result;
  }

  if (a3)
  {
    *a3 = result[1];
  }

  return result;
}

uint64_t sub_239413734(void ***a1, void **a2, void **a3)
{
  result = 0;
  if (a2)
  {
    if (a3)
    {
      sub_239421EC8(*a1);
      sub_239421EC8(a1[1]);
      *a1 = a2;
      a1[1] = a3;
      return 1;
    }
  }

  return result;
}

void *sub_239413788(unsigned __int8 *a1, unint64_t a2, uint64_t a3)
{
  if (!sub_239414180(a3))
  {
    return 0;
  }

  if (!*(a3 + 32))
  {
    sub_2394170F4(10, 0, 101, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/dsa/dsa.c", 599);
    return 0;
  }

  memset(v24, 0, sizeof(v24));
  memset(v23, 0, sizeof(v23));
  sub_239421EBC(v24);
  sub_239421EBC(v23);
  v6 = sub_239421E8C();
  if (!v6)
  {
    v9 = 0;
    v10 = 0;
    v8 = 0;
    goto LABEL_34;
  }

  sub_239422D0C();
  v8 = v7;
  v9 = 0;
  v10 = 0;
  if (!v7)
  {
LABEL_34:
    sub_2394170F4(10, 0, 3, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/dsa/dsa.c", 688);
    sub_239421EC8(v10);
    sub_239421EC8(v6);
    v19 = 0;
    goto LABEL_35;
  }

  v11 = 33;
  v22 = a1;
  while (1)
  {
    memset(v25, 0, sizeof(v25));
    sub_239421EBC(v25);
    v12 = sub_239421E8C();
    v13 = sub_239421E8C();
    v14 = v13;
    if (v12 && v13 && sub_239427A14(v25, 1uLL, *(a3 + 8)) && sub_239429C8C((a3 + 240), (a3 + 40), *a3, v8) && sub_239429C8C((a3 + 248), (a3 + 40), *(a3 + 8), v8) && sub_239426160(v12, *(a3 + 16), v25, *a3, v8, *(a3 + 240)))
    {
      if (sub_239422F7C(0, v12, v12, *(a3 + 8), v8) && sub_239427A80(v14, v25, *(a3 + 8), v8, *(a3 + 248)))
      {
        sub_239421F28(v9);
        sub_239421F28(v10);
        v15 = 0;
        v16 = v14;
        v10 = v12;
        v12 = 0;
        v14 = 0;
        goto LABEL_17;
      }

      v16 = v9;
      v17 = 935;
    }

    else
    {
      v16 = v9;
      v17 = 920;
    }

    sub_2394170F4(10, 0, 3, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/dsa/dsa.c", v17);
    v15 = 1;
LABEL_17:
    sub_239421F28(v25);
    sub_239421F28(v12);
    sub_239421F28(v14);
    if (v15)
    {
      v9 = v16;
      goto LABEL_34;
    }

    if (a2 > sub_239422178(*(a3 + 8)))
    {
      a2 = sub_239422178(*(a3 + 8));
    }

    v9 = v16;
    if (!sub_23942253C(v22, a2, v24))
    {
      goto LABEL_34;
    }

    v18 = sub_239421E5C(*(a3 + 8));
    if (!sub_2394223D0(v24, v18))
    {
      goto LABEL_34;
    }

    if (!sub_2394223D0(v23, v18))
    {
      goto LABEL_34;
    }

    sub_23942390C(v24[0], 0, **(a3 + 8), v23[0], v18);
    if (!sub_239413B38(v23, *(a3 + 32), v10, *(a3 + 248), v8) || !sub_239423E1C(v6, v23, v24, *(a3 + 8), v8) || !sub_239413B38(v6, v6, v16, *(a3 + 248), v8))
    {
      goto LABEL_34;
    }

    if (!sub_239421914(v10) && !sub_239421914(v6))
    {
      break;
    }

    if (!--v11)
    {
      sub_2394170F4(10, 0, 108, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/dsa/dsa.c", 673);
      goto LABEL_34;
    }
  }

  v21 = sub_2394500B0(0x10uLL);
  if (!v21)
  {
    goto LABEL_34;
  }

  v19 = v21;
  *v21 = v10;
  v21[1] = v6;
LABEL_35:
  sub_239422D38(v8);
  sub_239421F28(v24);
  sub_239421F28(v23);
  sub_239421F28(v9);
  return v19;
}

BOOL sub_239413B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_239422DA4(a5);
  v10 = sub_239422E50(a5);
  v12 = v10 && (v11 = v10, sub_23942593C(v10, a2, a4, a5)) && sub_239425948(a1, v11, a3, a4, a5) != 0;
  sub_239422F58(a5);
  return v12;
}

uint64_t sub_239413BD8(unsigned __int8 *a1, unint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = 0;
  if (sub_239413C1C(&v5, a1, a2, a3, a4))
  {
    return v5;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_239413C1C(_DWORD *a1, unsigned __int8 *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  *a1 = 0;
  if (sub_239414180(a5))
  {
    if (*(a5 + 24))
    {
      memset(v18, 0, sizeof(v18));
      memset(v17, 0, sizeof(v17));
      memset(v16, 0, sizeof(v16));
      sub_239421EBC(v18);
      sub_239421EBC(v17);
      sub_239421EBC(v16);
      sub_239422D0C();
      v11 = v10;
      if (v10)
      {
        if (sub_239421914(*a4) || sub_23942236C(*a4) || (sub_239421468(*a4, *(a5 + 8)) & 0x80000000) == 0 || sub_239421914(a4[1]) || sub_23942236C(a4[1]) || (sub_239421468(a4[1], *(a5 + 8)) & 0x80000000) == 0)
        {
          goto LABEL_10;
        }

        if (sub_239426F04(v17, a4[1], *(a5 + 8), v11))
        {
          v13 = sub_239422114(*(a5 + 8));
          v14 = v13 >> 3 >= a3 ? a3 : v13 >> 3;
          if (sub_23942253C(a2, v14, v18) && sub_2394241E0(v18, v18, v17, *(a5 + 8), v11) && sub_2394241E0(v17, *a4, v17, *(a5 + 8), v11) && sub_239429C8C((a5 + 240), (a5 + 40), *a5, v11) && sub_2394268FC(v16, *(a5 + 16), v18, *(a5 + 24), v17, *a5, v11, *(a5 + 240)) && sub_239422F7C(0, v18, v16, *(a5 + 8), v11))
          {
            *a1 = sub_239421468(v18, *a4) == 0;
LABEL_10:
            v12 = 1;
LABEL_25:
            sub_239422D38(v11);
            sub_239421EC8(v18);
            sub_239421EC8(v17);
            sub_239421EC8(v16);
            return v12;
          }
        }
      }

      sub_2394170F4(10, 0, 3, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/dsa/dsa.c", 796);
      v12 = 0;
      goto LABEL_25;
    }

    sub_2394170F4(10, 0, 101, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/dsa/dsa.c", 718);
  }

  return 0;
}

uint64_t sub_239413E60(uint64_t a1, unsigned __int8 *a2, unint64_t a3, void *a4, _DWORD *a5, uint64_t a6)
{
  v9 = a4;
  result = sub_239413788(a2, a3, a6);
  if (result)
  {
    v8 = result;
    *a5 = sub_239414B84(result, &v9);
    sub_2394136CC(v8);
    return 1;
  }

  else
  {
    *a5 = 0;
  }

  return result;
}

uint64_t sub_239413EC4(uint64_t a1, unsigned __int8 *a2, unint64_t a3, char *a4, size_t a5, uint64_t a6)
{
  v7 = 0;
  if (sub_239413EF8(&v7, a2, a3, a4, a5, a6))
  {
    return v7;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_239413EF8(_DWORD *a1, unsigned __int8 *a2, unint64_t a3, char *a4, size_t a5, uint64_t a6)
{
  __s2 = 0;
  v17 = sub_2394500B0(0x10uLL);
  if (!v17)
  {
LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  v15 = a4;
  v12 = 0;
  if (sub_239414B10(&v17, &v15, a5))
  {
    if (v15 == &a4[a5])
    {
      v13 = sub_239414B84(v17, &__s2);
      v12 = 0;
      if ((v13 & 0x80000000) == 0 && v13 == a5)
      {
        if (!a5 || !memcmp(a4, __s2, a5))
        {
          v12 = sub_239413C1C(a1, a2, a3, v17, a6);
          goto LABEL_9;
        }

        goto LABEL_8;
      }
    }
  }

LABEL_9:
  sub_239450144(__s2);
  sub_2394136CC(v17);
  return v12;
}

uint64_t *sub_239413FFC(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v2 = sub_239422178(result);
    v3 = v2;
    if (v2 >= 0x7F)
    {
      v5 = v2 + 1;
      v4 = 1;
      do
      {
        ++v4;
        v6 = v5 >= 0xFF;
        v7 = v5 == 255;
        v5 >>= 8;
      }

      while (!v7 && v6);
    }

    else
    {
      v4 = 1;
    }

    result = 0;
    v8 = v3 + v4 + 2;
    if (v8 >= v3 && (v8 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v8;
      if (v8 >= 0x40)
      {
        v10 = 1;
        v11 = v9;
        do
        {
          ++v10;
          v6 = v11 >= 0xFF;
          v7 = v11 == 255;
          v11 >>= 8;
        }

        while (!v7 && v6);
      }

      else
      {
        v10 = 1;
      }

      v12 = v10 + v9 + 1;
      if (v12 >= v9)
      {
        return v12;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void *sub_2394140D0(uint64_t *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = sub_2394305DC();
  if (!v2)
  {
    goto LABEL_13;
  }

  v3 = a1[1];
  if (v3)
  {
    *(v2 + 10) = sub_239422114(v3);
    v4 = sub_239421F2C(a1[1]);
    v2[2] = v4;
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  if (*a1)
  {
    v5 = sub_239421F2C(*a1);
    *v2 = v5;
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  v6 = a1[2];
  if (v6)
  {
    v7 = sub_239421F2C(v6);
    v2[1] = v7;
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  if ((v8 = a1[3]) != 0 && (v9 = sub_239421F2C(v8), (v2[3] = v9) == 0) || (v10 = a1[4]) != 0 && (v11 = sub_239421F2C(v10), (v2[4] = v11) == 0))
  {
LABEL_13:
    sub_23943061C(v2);
    return 0;
  }

  return v2;
}

uint64_t sub_239414180(uint64_t *a1)
{
  v2 = *a1;
  if (!v2 || !a1[1] || !a1[2])
  {
    v3 = 101;
    v4 = 73;
    goto LABEL_10;
  }

  if (sub_23942236C(v2) || sub_23942236C(a1[1]) || sub_239421914(*a1) || sub_239421914(a1[1]) || !sub_239422BC4(*a1) || !sub_239422BC4(a1[1]) || (sub_2394229D8(a1[1], *a1) & 0x80000000) == 0 || sub_23942236C(a1[2]) || sub_239421914(a1[2]) || (sub_2394229D8(a1[2], *a1) & 0x80000000) == 0)
  {
    v3 = 107;
    v4 = 90;
LABEL_10:
    sub_2394170F4(10, 0, v3, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/dsa/dsa_asn1.c", v4);
    return 0;
  }

  v6 = sub_239422114(a1[1]);
  if (v6 != 160 && v6 != 224 && v6 != 256)
  {
    v3 = 100;
    v4 = 97;
    goto LABEL_10;
  }

  if (sub_239422114(*a1) >= 0x2711)
  {
    v3 = 102;
    v4 = 104;
    goto LABEL_10;
  }

  v7 = a1[3];
  if (v7 && (sub_23942236C(v7) || sub_239421914(a1[3]) || (sub_2394229D8(a1[3], *a1) & 0x80000000) == 0))
  {
    v3 = 107;
    v4 = 112;
    goto LABEL_10;
  }

  v8 = a1[4];
  if (v8 && (sub_23942236C(v8) || sub_239421914(a1[4]) || sub_2394229D8(a1[4], a1[1]) >= 0))
  {
    v3 = 107;
    v4 = 123;
    goto LABEL_10;
  }

  return 1;
}

void *sub_239414378(__int128 *a1)
{
  v2 = sub_2394136C4();
  if (v2)
  {
    v6 = 0uLL;
    if (!sub_239407F5C(a1, &v6, 536870928) || (v3 = sub_239421E8C(), (*v2 = v3) == 0) || !sub_239405234(&v6, v3) || (v4 = sub_239421E8C(), (v2[1] = v4) == 0) || !sub_239405234(&v6, v4) || *(&v6 + 1))
    {
      sub_2394170F4(10, 0, 105, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/dsa/dsa_asn1.c", 159);
      sub_2394136CC(v2);
      return 0;
    }
  }

  return v2;
}

void *sub_239414434(__int128 *a1, void *a2)
{
  result = sub_239421E8C();
  *a2 = result;
  if (result)
  {

    return sub_239405234(a1, result);
  }

  return result;
}

uint64_t sub_239414488(uint64_t *a1, uint64_t **a2)
{
  memset(v5, 0, sizeof(v5));
  if (sub_239406A10(a1, v5, 0x20000010u) && sub_239414528(v5, *a2) && sub_239414528(v5, a2[1]) && sub_239406758(a1))
  {
    return 1;
  }

  sub_2394170F4(10, 0, 106, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/dsa/dsa_asn1.c", 172);
  return 0;
}

uint64_t sub_239414528(uint64_t *a1, uint64_t *a2)
{
  if (a2)
  {

    return sub_2394052E0(a1, a2);
  }

  else
  {
    sub_2394170F4(10, a2, 67, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/dsa/dsa_asn1.c", 143);
    return 0;
  }
}

uint64_t *sub_23941456C(__int128 *a1)
{
  v2 = sub_239412BCC();
  if (v2)
  {
    v8 = 0uLL;
    if (!sub_239407F5C(a1, &v8, 536870928))
    {
      goto LABEL_14;
    }

    v3 = sub_239421E8C();
    v2[3] = v3;
    if (!v3 || !sub_239405234(&v8, v3) || (v4 = sub_239421E8C(), (*v2 = v4) == 0) || !sub_239405234(&v8, v4) || (v5 = sub_239421E8C(), (v2[1] = v5) == 0) || !sub_239405234(&v8, v5) || (v6 = sub_239421E8C(), (v2[2] = v6) == 0) || !sub_239405234(&v8, v6) || *(&v8 + 1))
    {
LABEL_14:
      sub_2394170F4(10, 0, 105, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/dsa/dsa_asn1.c", 190);
LABEL_15:
      sub_239412C14(v2);
      return 0;
    }

    if (!sub_239414180(v2))
    {
      goto LABEL_15;
    }
  }

  return v2;
}

uint64_t sub_239414670(uint64_t *a1, uint64_t **a2)
{
  memset(v5, 0, sizeof(v5));
  if (sub_239406A10(a1, v5, 0x20000010u) && sub_239414528(v5, a2[3]) && sub_239414528(v5, *a2) && sub_239414528(v5, a2[1]) && sub_239414528(v5, a2[2]) && sub_239406758(a1))
  {
    return 1;
  }

  sub_2394170F4(10, 0, 106, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/dsa/dsa_asn1.c", 211);
  return 0;
}

uint64_t *sub_239414730(__int128 *a1)
{
  v2 = sub_239412BCC();
  if (v2)
  {
    v7 = 0uLL;
    if (!sub_239407F5C(a1, &v7, 536870928) || (v3 = sub_239421E8C(), (*v2 = v3) == 0) || !sub_239405234(&v7, v3) || (v4 = sub_239421E8C(), (v2[1] = v4) == 0) || !sub_239405234(&v7, v4) || (v5 = sub_239421E8C(), (v2[2] = v5) == 0) || !sub_239405234(&v7, v5) || *(&v7 + 1))
    {
      sub_2394170F4(10, 0, 105, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/dsa/dsa_asn1.c", 228);
LABEL_13:
      sub_239412C14(v2);
      return 0;
    }

    if (!sub_239414180(v2))
    {
      goto LABEL_13;
    }
  }

  return v2;
}

uint64_t sub_239414818(uint64_t *a1, uint64_t **a2)
{
  memset(v5, 0, sizeof(v5));
  if (sub_239406A10(a1, v5, 0x20000010u) && sub_239414528(v5, *a2) && sub_239414528(v5, a2[1]) && sub_239414528(v5, a2[2]) && sub_239406758(a1))
  {
    return 1;
  }

  sub_2394170F4(10, 0, 106, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/dsa/dsa_asn1.c", 248);
  return 0;
}

uint64_t *sub_2394148C8(__int128 *a1)
{
  v2 = sub_239412BCC();
  if (v2)
  {
    v11 = 0uLL;
    v10 = 0;
    if (sub_239407F5C(a1, &v11, 536870928) && sub_239408120(&v11, &v10))
    {
      if (v10)
      {
        v3 = 104;
        v4 = 269;
      }

      else
      {
        v6 = sub_239421E8C();
        *v2 = v6;
        if (v6)
        {
          if (sub_239405234(&v11, v6))
          {
            v7 = sub_239421E8C();
            v2[1] = v7;
            if (v7)
            {
              if (sub_239405234(&v11, v7))
              {
                v8 = sub_239421E8C();
                v2[2] = v8;
                if (v8)
                {
                  if (sub_239405234(&v11, v8))
                  {
                    v9 = sub_239421E8C();
                    v2[3] = v9;
                    if (v9)
                    {
                      if (sub_239405234(&v11, v9) && sub_239414434(&v11, v2 + 4) && !*(&v11 + 1))
                      {
                        if (sub_239414180(v2))
                        {
                          return v2;
                        }

                        goto LABEL_8;
                      }
                    }
                  }
                }
              }
            }
          }
        }

        v3 = 105;
        v4 = 279;
      }
    }

    else
    {
      v3 = 105;
      v4 = 264;
    }

    sub_2394170F4(10, 0, v3, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/dsa/dsa_asn1.c", v4);
LABEL_8:
    sub_239412C14(v2);
    return 0;
  }

  return v2;
}

uint64_t sub_239414A30(uint64_t *a1, uint64_t **a2)
{
  memset(v5, 0, sizeof(v5));
  if (sub_239406A10(a1, v5, 0x20000010u) && sub_239406FE8(v5, 0) && sub_239414528(v5, *a2) && sub_239414528(v5, a2[1]) && sub_239414528(v5, a2[2]) && sub_239414528(v5, a2[3]) && sub_239414528(v5, a2[4]) && sub_239406758(a1))
  {
    return 1;
  }

  sub_2394170F4(10, 0, 106, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/dsa/dsa_asn1.c", 303);
  return 0;
}

void *sub_239414B10(void **a1, void *a2, uint64_t a3)
{
  if (a3 < 0)
  {
    return 0;
  }

  *&v7 = *a2;
  *(&v7 + 1) = a3;
  v5 = sub_239414378(&v7);
  if (v5)
  {
    if (a1)
    {
      sub_2394136CC(*a1);
      *a1 = v5;
    }

    *a2 = v7;
  }

  return v5;
}

uint64_t sub_239414B84(uint64_t **a1, void **a2)
{
  memset(v5, 0, sizeof(v5));
  if (sub_2394065F4(v5, 0) && sub_239414488(v5, a1))
  {
    return sub_23940603C(v5, a2);
  }

  sub_239406688(v5);
  return 0xFFFFFFFFLL;
}

uint64_t *sub_239414BF8(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a3 < 0)
  {
    return 0;
  }

  *&v7 = *a2;
  *(&v7 + 1) = a3;
  v5 = sub_23941456C(&v7);
  if (v5)
  {
    if (a1)
    {
      sub_239412C14(*a1);
      *a1 = v5;
    }

    *a2 = v7;
  }

  return v5;
}

uint64_t sub_239414C6C(uint64_t **a1, void **a2)
{
  memset(v5, 0, sizeof(v5));
  if (sub_2394065F4(v5, 0) && sub_239414670(v5, a1))
  {
    return sub_23940603C(v5, a2);
  }

  sub_239406688(v5);
  return 0xFFFFFFFFLL;
}

uint64_t *sub_239414CE0(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a3 < 0)
  {
    return 0;
  }

  *&v7 = *a2;
  *(&v7 + 1) = a3;
  v5 = sub_2394148C8(&v7);
  if (v5)
  {
    if (a1)
    {
      sub_239412C14(*a1);
      *a1 = v5;
    }

    *a2 = v7;
  }

  return v5;
}

uint64_t sub_239414D54(uint64_t **a1, void **a2)
{
  memset(v5, 0, sizeof(v5));
  if (sub_2394065F4(v5, 0) && sub_239414A30(v5, a1))
  {
    return sub_23940603C(v5, a2);
  }

  sub_239406688(v5);
  return 0xFFFFFFFFLL;
}

uint64_t *sub_239414DC8(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a3 < 0)
  {
    return 0;
  }

  *&v7 = *a2;
  *(&v7 + 1) = a3;
  v5 = sub_239414730(&v7);
  if (v5)
  {
    if (a1)
    {
      sub_239412C14(*a1);
      *a1 = v5;
    }

    *a2 = v7;
  }

  return v5;
}

uint64_t sub_239414E3C(uint64_t **a1, void **a2)
{
  memset(v5, 0, sizeof(v5));
  if (sub_2394065F4(v5, 0) && sub_239414818(v5, a1))
  {
    return sub_23940603C(v5, a2);
  }

  sub_239406688(v5);
  return 0xFFFFFFFFLL;
}

uint64_t sub_239414EB0(__int128 *a1, uint64_t a2)
{
  v19 = 0uLL;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  if (sub_239407F5C(a1, &v19, 536870928) && sub_239408120(&v19, &v16) && v16 == 1 && sub_239407F5C(&v19, &v17, 4))
  {
    if (sub_239408024(&v19, -1610612736))
    {
      v15 = 0uLL;
      if (!sub_239407F5C(&v19, &v15, -1610612736))
      {
        v4 = 128;
        v5 = 106;
        goto LABEL_34;
      }

      v3 = sub_2394151A8(&v15);
      if (!v3)
      {
LABEL_35:
        v6 = 0;
LABEL_36:
        v9 = 0;
LABEL_37:
        sub_23943603C(v6);
        sub_239421EC8(v9);
        return 0;
      }

      if (a2)
      {
        if (sub_2394321AC(a2, v3))
        {
          v4 = 130;
          v5 = 117;
LABEL_34:
          sub_2394170F4(15, 0, v4, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/ec_extra/ec_asn1.c", v5);
          goto LABEL_35;
        }
      }

      else
      {
        a2 = v3;
      }

      if (*(&v15 + 1))
      {
        v4 = 128;
        v5 = 121;
        goto LABEL_34;
      }
    }

    else if (!a2)
    {
      v4 = 114;
      v5 = 127;
      goto LABEL_34;
    }

    v8 = sub_239435F30();
    v6 = v8;
    if (!v8 || !sub_23943618C(v8, a2))
    {
      goto LABEL_36;
    }

    v9 = sub_23942253C(v17, v18, 0);
    v10 = sub_2394345C0(a2);
    *(v6 + 8) = v10;
    if (!v9 || !v10 || !sub_2394362AC(v6, v9))
    {
      goto LABEL_37;
    }

    if (sub_239408024(&v19, -1610612735))
    {
      v15 = 0uLL;
      v13 = 0;
      v14 = 0;
      v12 = 0;
      if (!sub_239407F5C(&v19, &v15, -1610612735) || !sub_239407F5C(&v15, &v13, 3) || !sub_239407860(&v13, &v12) || v12 || !v14 || !sub_2394367DC(a2, *(v6 + 8), v13, v14, 0) || *(&v15 + 1))
      {
        v11 = 161;
LABEL_43:
        sub_2394170F4(15, 0, 128, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/ec_extra/ec_asn1.c", v11);
        goto LABEL_37;
      }

      *(v6 + 28) = *v13 & 0xFE;
    }

    else
    {
      if (!sub_239435A44(a2, *(v6 + 8) + 8, *(v6 + 16) + 24))
      {
        goto LABEL_37;
      }

      *(v6 + 24) |= 2u;
    }

    if (!*(&v19 + 1))
    {
      if (sub_239436430(v6))
      {
        sub_239421EC8(v9);
        return v6;
      }

      goto LABEL_37;
    }

    v11 = 181;
    goto LABEL_43;
  }

  sub_2394170F4(15, 0, 128, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/ec_extra/ec_asn1.c", 92);
  return 0;
}

uint64_t sub_2394151A8(__int128 *a1)
{
  if (!sub_239408024(a1, 536870928))
  {

    return sub_239415988(a1);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v41 = 0uLL;
  v40 = 0uLL;
  v38 = 0;
  v39 = 0;
  v37 = 0uLL;
  v35 = 0;
  v36 = 0;
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v31 = 0;
  if (!sub_239407F5C(a1, &v41, 536870928) || !sub_239408120(&v41, &v31) || v31 != 1 || !sub_239407F5C(&v41, &v40, 536870928) || !sub_239407F5C(&v40, &v38, 6) || v39 != 7 || (*v38 == -834107862 ? (v2 = *(v38 + 3) == 16858574) : (v2 = 0), !v2 || !sub_239407F5C(&v40, &v24, 2) || !sub_2394081F8(&v24) || *(&v40 + 1) || !sub_239407F5C(&v41, &v37, 536870928) || !sub_239407F5C(&v37, &v25, 4) || !sub_239407F5C(&v37, &v26, 4) || !sub_239408418(&v37, 0, 0, 3) || *(&v37 + 1) || !sub_239407F5C(&v41, &v35, 4) || !sub_239407F5C(&v41, &v29, 2) || !sub_2394081F8(&v29) || !sub_239408418(&v41, &v33, &v32, 2) || *(&v41 + 1)))
  {
    v3 = 128;
    v4 = 288;
LABEL_13:
    sub_2394170F4(15, 0, v3, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/ec_extra/ec_asn1.c", v4);
    return 0;
  }

  if (v32 && (v34 != 1 || *v33 != 1))
  {
    v3 = 123;
    v4 = 296;
    goto LABEL_13;
  }

  v30 = 0;
  if (!sub_239407860(&v35, &v30) || v30 != 4)
  {
    v3 = 111;
    v4 = 304;
    goto LABEL_13;
  }

  if (v36)
  {
    v3 = 128;
    v4 = 309;
    goto LABEL_13;
  }

  *&v27 = v35;
  *(&v27 + 1) = v36 >> 1;
  *&v28 = v35 + (v36 >> 1);
  *(&v28 + 1) = v36 >> 1;
  v6 = sub_239421E8C();
  v7 = sub_239421E8C();
  v8 = sub_239421E8C();
  v9 = sub_239421E8C();
  v10 = sub_239421E8C();
  v16 = v10;
  v17 = 0;
  if (v6 && v7 && v8 && v9 && v10)
  {
    v18 = 0;
    v19 = off_284BB9708;
    while (1)
    {
      v20 = v18;
      v21 = v19;
      v17 = (*(v19 + v18))(v10, v11, v12, v13, v14, v15);
      v22 = sub_239433214(v17);
      v10 = sub_239415A40(&v29, v22);
      if (v10)
      {
        break;
      }

      v18 = v20 + 8;
      v19 = v21;
      if (v20 == 24)
      {
        goto LABEL_44;
      }
    }

    if (!sub_2394343D0(v17, v6, v7, v8, 0))
    {
LABEL_45:
      v17 = 0;
      goto LABEL_46;
    }

    if (!sub_239415A40(&v24, v6) || !sub_239415A40(&v25, v7) || !sub_239415A40(&v26, v8))
    {
      goto LABEL_44;
    }

    v23 = sub_239434338(v17);
    if (!sub_239434D00(v17, v23, v9, v16))
    {
      goto LABEL_45;
    }

    if (!sub_239415A40(&v27, v9) || !sub_239415A40(&v28, v16) || !v17)
    {
LABEL_44:
      sub_2394170F4(15, 0, 123, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/ec_extra/ec_asn1.c", 422);
      goto LABEL_45;
    }
  }

LABEL_46:
  sub_239421EC8(v6);
  sub_239421EC8(v7);
  sub_239421EC8(v8);
  sub_239421EC8(v9);
  sub_239421EC8(v16);
  return v17;
}

uint64_t sub_239415624(uint64_t *a1, uint64_t a2, char a3)
{
  if (a2 && *a2 && *(a2 + 16))
  {
    memset(v17, 0, sizeof(v17));
    memset(v16, 0, sizeof(v16));
    if (sub_239406A10(a1, v17, 0x20000010u) && sub_239406FE8(v17, 1uLL) && sub_239406A10(v17, v16, 4u) && (v6 = sub_239433214(*a2), v7 = sub_239422178(v6), v8 = sub_239412CF0(a2), sub_2394053C4(v16, v7, v8)))
    {
      if ((a3 & 1) != 0 || (v14 = 0u, v15 = 0u, v13 = 0u, sub_239406A10(v17, &v13, 0xA0000000)) && sub_239415848(&v13, *a2) && sub_239406758(v17))
      {
        if ((a3 & 2) != 0 || !*(a2 + 8) || (v14 = 0u, v15 = 0u, v13 = 0u, memset(v12, 0, sizeof(v12)), sub_239406A10(v17, &v13, 0xA0000001)) && sub_239406A10(&v13, v12, 3u) && sub_239406ACC(v12, 0) && sub_2394158E0(v12, *a2, *(a2 + 8), *(a2 + 28)) && sub_239406758(v17))
        {
          if (sub_239406758(a1))
          {
            return 1;
          }

          v10 = 129;
          v11 = 244;
        }

        else
        {
          v10 = 129;
          v11 = 238;
        }
      }

      else
      {
        v10 = 129;
        v11 = 222;
      }
    }

    else
    {
      v10 = 129;
      v11 = 213;
    }
  }

  else
  {
    v10 = 67;
    v11 = 202;
  }

  sub_2394170F4(15, 0, v10, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/ec_extra/ec_asn1.c", v11);
  return 0;
}

uint64_t sub_239415848(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 525))
  {
    memset(v5, 0, sizeof(v5));
    result = sub_239406A10(a1, v5, 6u);
    if (result)
    {
      result = sub_239406C48(v5, (a2 + 516), *(a2 + 525));
      if (result)
      {
        return sub_239406758(a1) != 0;
      }
    }
  }

  else
  {
    sub_2394170F4(15, 0, 123, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/ec_extra/ec_asn1.c", 363);
    return 0;
  }

  return result;
}

uint64_t sub_2394158E0(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  result = sub_239438578(a2, a3, a4, 0, 0);
  if (result)
  {
    v9 = result;
    v10 = 0;
    result = sub_239406C9C(a1, &v10, result);
    if (result)
    {
      return sub_239438578(a2, a3, a4, v10, v9) == v9;
    }
  }

  return result;
}

uint64_t sub_239415988(__int128 *a1)
{
  v6[0] = 0;
  v6[1] = 0;
  if (sub_239407F5C(a1, v6, 6))
  {
    v1 = 0;
    while (1)
    {
      v2 = off_284BB9708[v1]();
      if (sub_239407824(v6, (v2 + 516), *(v2 + 525)))
      {
        break;
      }

      if (++v1 == 4)
      {
        v3 = 123;
        v4 = 357;
        goto LABEL_7;
      }
    }
  }

  else
  {
    v3 = 128;
    v4 = 345;
LABEL_7:
    sub_2394170F4(15, 0, v3, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/ec_extra/ec_asn1.c", v4);
    return 0;
  }

  return v2;
}

BOOL sub_239415A40(__int128 *a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  for (i = *a1; *(&i + 1); sub_239407718(&i, 1uLL))
  {
    if (*i)
    {
      if (*(&i + 1) > 0x42uLL)
      {
        goto LABEL_9;
      }

      break;
    }
  }

  if (sub_2394227EC(v6, *(&i + 1), a2))
  {
    result = sub_239407824(&i, v6, *(&i + 1));
    goto LABEL_10;
  }

  sub_239416A38();
LABEL_9:
  result = 0;
LABEL_10:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_239415AF4(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a1 && (v6 = *a1) != 0)
  {
    v7 = sub_2392CCA14(v6);
    if (a3 < 0)
    {
LABEL_4:
      sub_2394170F4(15, 0, 128, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/ec_extra/ec_asn1.c", 454);
      return 0;
    }
  }

  else
  {
    v7 = 0;
    if (a3 < 0)
    {
      goto LABEL_4;
    }
  }

  *&v10 = *a2;
  *(&v10 + 1) = a3;
  v8 = sub_239414EB0(&v10, v7);
  if (v8)
  {
    if (a1)
    {
      sub_23943603C(*a1);
      *a1 = v8;
    }

    *a2 = v10;
  }

  return v8;
}

uint64_t sub_239415BA4(uint64_t a1, void **a2)
{
  memset(v6, 0, sizeof(v6));
  if (sub_2394065F4(v6, 0))
  {
    v4 = sub_23942E714(a1);
    if (sub_239415624(v6, a1, v4))
    {
      return sub_23940603C(v6, a2);
    }
  }

  sub_239406688(v6);
  return 0xFFFFFFFFLL;
}

uint64_t sub_239415C24(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a3 < 0)
  {
    return 0;
  }

  *&v10 = *a2;
  *(&v10 + 1) = a3;
  v5 = sub_2394151A8(&v10);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = sub_239435F30();
  v8 = v7;
  if (!v7 || !sub_23943618C(v7, v6))
  {
    sub_23943603C(v8);
    return 0;
  }

  if (a1)
  {
    sub_23943603C(*a1);
    *a1 = v8;
  }

  *a2 = v10;
  return v8;
}

uint64_t sub_239415CBC(uint64_t *a1, void **a2)
{
  if (a1 && *a1)
  {
    memset(v5, 0, sizeof(v5));
    if (sub_2394065F4(v5, 0) && sub_239415848(v5, *a1))
    {
      return sub_23940603C(v5, a2);
    }

    sub_239406688(v5);
  }

  else
  {
    sub_2394170F4(15, 0, 67, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/ec_extra/ec_asn1.c", 509);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_239415D5C(uint64_t *a1, unsigned __int8 **a2, uint64_t a3)
{
  if (!a1 || (v3 = *a1) == 0 || (v4 = *v3) == 0)
  {
    v9 = 67;
    v10 = 526;
LABEL_10:
    sub_2394170F4(15, 0, v9, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/ec_extra/ec_asn1.c", v10);
    return 0;
  }

  v7 = *(v3 + 8);
  if (!v7)
  {
    v8 = sub_2394345C0(v4);
    *(v3 + 8) = v8;
    if (!v8)
    {
      return 0;
    }

    v7 = v8;
    v4 = *v3;
  }

  if (!sub_2394367DC(v4, v7, *a2, a3, 0))
  {
    v9 = 15;
    v10 = 535;
    goto LABEL_10;
  }

  *(v3 + 28) = **a2 & 0xFE;
  *a2 += a3;
  return v3;
}

uint64_t sub_239415E2C(uint64_t a1, void **a2)
{
  if (a1)
  {
    memset(v6, 0, sizeof(v6));
    if (sub_2394065F4(v6, 0) && sub_2394158E0(v6, *a1, *(a1 + 8), *(a1 + 28)))
    {
      v4 = sub_23940603C(v6, a2);
      return v4 & ~(v4 >> 31);
    }

    else
    {
      sub_239406688(v6);
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    sub_2394170F4(15, 0, 67, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/ec_extra/ec_asn1.c", 546);
    return 0;
  }
}

uint64_t sub_239415ED4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
    v2 = 4;
  }

  else
  {
    v2 = a2;
  }

  if (a2)
  {
    v3 = (a1 + 8);
    v4 = off_284BB9708;
    do
    {
      v5 = *v4++;
      v6 = v5();
      *(v3 - 2) = *(v6 + 512);
      *v3 = *(v6 + 504);
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  return 4;
}

size_t sub_239415F38(void *a1, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(_BYTE *, size_t, void *, unint64_t *))
{
  v21 = *MEMORY[0x277D85DE8];
  v19 = a2;
  v5 = *(a4 + 16);
  if (!v5)
  {
    v11 = 27;
    v12 = 101;
    v13 = 85;
    goto LABEL_11;
  }

  v8 = a2;
  v10 = sub_2392CCA14(a4);
  if (sub_2394321AC(v10, *a3))
  {
    v11 = 15;
    v12 = 106;
    v13 = 91;
LABEL_11:
    sub_2394170F4(v11, 0, v12, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/ecdh_extra/ecdh_extra.c", v13);
    v8 = 0xFFFFFFFFLL;
    goto LABEL_12;
  }

  v18 = 0;
  memset(v17, 0, sizeof(v17));
  v16 = 0;
  if (!sub_23943228C(v10, v17, (a3 + 1), v5 + 24) || !sub_239432318(v10, __src, &v16, 0x42uLL, v17))
  {
    v11 = 27;
    v12 = 102;
    v13 = 101;
    goto LABEL_11;
  }

  if (a5)
  {
    if (!a5(__src, v16, a1, &v19))
    {
      v11 = 27;
      v12 = 100;
      v13 = 107;
      goto LABEL_11;
    }

    v8 = v19;
LABEL_17:
    if (!(v8 >> 31))
    {
      goto LABEL_12;
    }

    v11 = 27;
    v12 = 69;
    v13 = 119;
    goto LABEL_11;
  }

  if (v16 < v8)
  {
    v19 = v16;
    v8 = v16;
  }

  if (v8)
  {
    memcpy(a1, __src, v8);
    goto LABEL_17;
  }

LABEL_12:
  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t sub_23941611C(uint64_t a1, unint64_t *a2, size_t a3, uint64_t a4, _DWORD *a5, uint64_t *a6)
{
  v9 = a6[5];
  if (!v9 || (v10 = *(v9 + 40)) == 0)
  {
    v12 = sub_239433008(a2, a3, a6);
    if (v12)
    {
      memset(v17, 0, sizeof(v17));
      v13 = sub_23941623C(a6);
      sub_239406658(v17, a4, v13);
      v16 = 0;
      if (sub_23941629C(v17, v12) && sub_2394066A4(v17, 0, &v16))
      {
        v14 = v16;
        v15 = 1;
LABEL_12:
        *a5 = v14;
        sub_2394136CC(v12);
        return v15;
      }

      sub_2394170F4(26, 0, 105, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/ecdsa_extra/ecdsa_asn1.c", 88);
    }

    v14 = 0;
    v15 = 0;
    goto LABEL_12;
  }

  return v10(a2, a3, a4, a5, a6);
}

unint64_t sub_23941623C(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 40);
  if (!v1 || (v2 = *(v1 + 32)) == 0)
  {
    v4 = sub_2392CCA14(a1);
    if (v4)
    {
      v5 = sub_239433214(v4);
      v3 = sub_239422178(v5);
      goto LABEL_7;
    }

    return 0;
  }

  v3 = v2();
LABEL_7:

  return sub_239416544(v3);
}

uint64_t sub_23941629C(uint64_t *a1, uint64_t **a2)
{
  memset(v5, 0, sizeof(v5));
  if (sub_239406A10(a1, v5, 0x20000010u) && sub_2394052E0(v5, *a2) && sub_2394052E0(v5, a2[1]) && sub_239406758(a1))
  {
    return 1;
  }

  sub_2394170F4(26, 0, 105, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/ecdsa_extra/ecdsa_asn1.c", 185);
  return 0;
}

uint64_t sub_23941633C(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, size_t a5, uint64_t a6)
{
  __s2 = 0;
  v11 = sub_239416428(a4, a5);
  if (v11)
  {
    v14 = 0;
    if (sub_239416494(&__s2, &v14, v11) && v14 == a5 && (!a5 || !memcmp(a4, __s2, a5)))
    {
      v12 = sub_239432C14(a2, a3, v11, a6);
      goto LABEL_8;
    }

    sub_2394170F4(26, 0, 68, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/ecdsa_extra/ecdsa_asn1.c", 117);
  }

  v12 = 0;
LABEL_8:
  sub_239450144(__s2);
  sub_2394136CC(v11);
  return v12;
}

void *sub_239416428(uint64_t a1, uint64_t a2)
{
  *&v4 = a1;
  *(&v4 + 1) = a2;
  v2 = sub_2394165C8(&v4);
  if (!v2 || *(&v4 + 1))
  {
    sub_2394170F4(26, 0, 100, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/ecdsa_extra/ecdsa_asn1.c", 172);
    sub_2394136CC(v2);
    return 0;
  }

  return v2;
}

uint64_t sub_239416494(void *a1, void *a2, uint64_t **a3)
{
  memset(v7, 0, sizeof(v7));
  sub_2394065E4(v7);
  if (sub_2394065F4(v7, 0) && sub_23941629C(v7, a3) && sub_2394066A4(v7, a1, a2))
  {
    return 1;
  }

  sub_2394170F4(26, 0, 105, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/ecdsa_extra/ecdsa_asn1.c", 198);
  sub_239406688(v7);
  return 0;
}

unint64_t sub_239416544(unint64_t a1)
{
  v1 = a1 + 1;
  v2 = 1;
  if (a1 + 1 >= 0x80)
  {
    do
    {
      ++v2;
      v3 = v1 > 0xFF;
      v1 >>= 8;
    }

    while (v3);
  }

  v4 = 0;
  v5 = a1 + v2 + 2;
  if (v5 >= a1 && (v5 & 0x8000000000000000) == 0)
  {
    v6 = 2 * v5;
    if (v5 >= 0x40)
    {
      v7 = 1;
      v8 = v6;
      do
      {
        ++v7;
        v3 = v8 > 0xFF;
        v8 >>= 8;
      }

      while (v3);
    }

    else
    {
      v7 = 1;
    }

    v9 = v7 + v6;
    if (v9 + 1 >= v6)
    {
      return v9 + 1;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

void *sub_2394165C8(__int128 *a1)
{
  v2 = sub_2394326F0();
  if (v2)
  {
    v4 = 0uLL;
    if (!sub_239407F5C(a1, &v4, 536870928) || !sub_239405234(&v4, *v2) || !sub_239405234(&v4, v2[1]) || *(&v4 + 1))
    {
      sub_2394170F4(26, 0, 100, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/ecdsa_extra/ecdsa_asn1.c", 160);
      sub_2394136CC(v2);
      return 0;
    }
  }

  return v2;
}

void *sub_23941666C(void **a1, void *a2, uint64_t a3)
{
  if (a3 < 0)
  {
    return 0;
  }

  *&v7 = *a2;
  *(&v7 + 1) = a3;
  v5 = sub_2394165C8(&v7);
  if (v5)
  {
    if (a1)
    {
      sub_2394136CC(*a1);
      *a1 = v5;
    }

    *a2 = v7;
  }

  return v5;
}

uint64_t sub_2394166E0(uint64_t **a1, void **a2)
{
  memset(v5, 0, sizeof(v5));
  if (sub_2394065F4(v5, 0) && sub_23941629C(v5, a1))
  {
    return sub_23940603C(v5, a2);
  }

  sub_239406688(v5);
  return 0xFFFFFFFFLL;
}

uint64_t sub_239416770(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 80 || !*(a2 + 4))
  {
    return 0;
  }

  *a1 = a2;
  return 1;
}

uint64_t sub_239416794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 56 || !*(a2 + 4))
  {
    return 0;
  }

  *(a1 + 8) = a2;
  return 1;
}

uint64_t sub_2394167D4(int a1, int a2, void *a3, _DWORD *a4, void *a5, _DWORD *a6)
{
  v12 = sub_239416A98();
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14 = *(v12 + 97);
  if (v14 == *(v12 + 96))
  {
    return 0;
  }

  v16 = (v14 + 1) & 0xF;
  if (a2)
  {
    v17 = *(v12 + 96);
  }

  else
  {
    v17 = v16;
  }

  v18 = &v12[3 * v17];
  v15 = *(v18 + 4);
  if (a3 && a4)
  {
    v19 = *v18;
    if (*v18)
    {
      *a3 = v19;
      LODWORD(v19) = *(v18 + 10);
    }

    else
    {
      *a3 = "NA";
    }

    *a4 = v19;
  }

  if (!a5)
  {
    goto LABEL_23;
  }

  v20 = v18[1];
  if (!v20)
  {
    *a5 = "";
    if (a6)
    {
      *a6 = 0;
    }

LABEL_23:
    if (!a1)
    {
      return v15;
    }

    v21 = v18[1];
LABEL_25:
    free(v21);
    *v18 = 0;
    v18[1] = 0;
    v18[2] = 0;
    *(v13 + 97) = v17;
    return v15;
  }

  *a5 = v20;
  if (a6)
  {
    *a6 = 3;
  }

  if (a1)
  {
    if (v18[1])
    {
      free(v12[49]);
      v13[49] = v18[1];
    }

    v21 = 0;
    v18[1] = 0;
    goto LABEL_25;
  }

  return v15;
}

void *sub_239416940()
{
  result = sub_239416A98();
  if (result)
  {
    v1 = *(result + 97);
    if (v1 == *(result + 96))
    {
      return 0;
    }

    else
    {
      return LODWORD(result[3 * ((v1 + 1) & 0xF) + 2]);
    }
  }

  return result;
}

void *sub_2394169C0()
{
  result = sub_239416A98();
  if (result)
  {
    v1 = *(result + 96);
    if (*(result + 97) == v1)
    {
      return 0;
    }

    else
    {
      return LODWORD(result[3 * v1 + 2]);
    }
  }

  return result;
}

void sub_239416A38()
{
  v0 = sub_239416A98();
  if (v0)
  {
    v1 = v0;
    v2 = (v0 + 1);
    v3 = 16;
    do
    {
      free(*v2);
      *(v2 - 1) = 0;
      *v2 = 0;
      v2[1] = 0;
      v2 += 3;
      --v3;
    }

    while (v3);
    free(v1[49]);
    v1[48] = 0;
    v1[49] = 0;
  }
}

void *sub_239416A98()
{
  v0 = sub_239457DA0(0);
  if (!v0)
  {
    v2 = malloc_type_malloc(0x190uLL, 0x10D00400F8CE868uLL);
    v0 = v2;
    if (v2)
    {
      v2[23] = 0u;
      v2[24] = 0u;
      v2[21] = 0u;
      v2[22] = 0u;
      v2[19] = 0u;
      v2[20] = 0u;
      v2[17] = 0u;
      v2[18] = 0u;
      v2[15] = 0u;
      v2[16] = 0u;
      v2[13] = 0u;
      v2[14] = 0u;
      v2[11] = 0u;
      v2[12] = 0u;
      v2[9] = 0u;
      v2[10] = 0u;
      v2[7] = 0u;
      v2[8] = 0u;
      v2[5] = 0u;
      v2[6] = 0u;
      v2[3] = 0u;
      v2[4] = 0u;
      v2[1] = 0u;
      v2[2] = 0u;
      *v2 = 0u;
      if (!sub_239457E4C(0, v2, sub_239417780))
      {
        return 0;
      }
    }
  }

  return v0;
}

void sub_239416B48(uint64_t a1)
{
  if (!a1)
  {
    sub_239416A38();
  }
}

uint64_t sub_239416B54()
{
  sub_239457D3C(&stru_27DF76958);
  v0 = dword_27DF76A20++;
  sub_239457D5C(&stru_27DF76958);
  return v0;
}

int *sub_239416BA0()
{
  result = __error();
  *result = 0;
  return result;
}

const char *sub_239416BBC(unsigned int a1)
{
  if (a1 >> 25 <= 0x10)
  {
    v1 = (&off_278A773F0)[3 * HIBYTE(a1)];
  }

  else
  {
    v1 = 0;
  }

  if (v1)
  {
    return v1;
  }

  else
  {
    return "unknown library";
  }
}

char *sub_239416BFC(unsigned int a1)
{
  if (a1 >> 25 <= 0x10)
  {
    return (&off_278A773F0)[3 * HIBYTE(a1) + 1];
  }

  else
  {
    return 0;
  }
}

char *sub_239416C38(unsigned int a1)
{
  result = sub_239416C64(a1, 0);
  if (!result)
  {
    return "unknown error";
  }

  return result;
}

char *sub_239416C64(unsigned int a1, int a2)
{
  v5 = HIBYTE(a1);
  v6 = a1 & 0xFFF;
  if (v5 != 2)
  {
    if (v6 > 0x21)
    {
      if (v6 > 0x63)
      {
        v7 = 0;
        if (!(a1 >> 30) && v6 <= 0x7FF)
        {
          v15 = v2;
          v16 = v3;
          v14 = (v6 << 15) | (v5 << 26);
          v13 = bsearch(&v14, &unk_2395D15C0, 0x2F5uLL, 4uLL, sub_2394177F0);
          if (v13)
          {
            return &aAsn1LengthMism[*v13 & 0x7FFF];
          }

          else
          {
            return 0;
          }
        }
      }

      else
      {
        if (v6 <= 66)
        {
          v7 = "MALLOC_FAILURE";
          if (a2)
          {
            v10 = "SHOULD_NOT_HAVE_BEEN_CALLED";
          }

          else
          {
            v7 = "malloc failure";
            v10 = "function should not have been called";
          }

          if (v6 != 66)
          {
            v10 = 0;
          }

          v12 = v6 == 65;
        }

        else
        {
          v7 = "PASSED_NULL_PARAMETER";
          if (!a2)
          {
            v7 = "passed a null parameter";
          }

          v10 = "INTERNAL_ERROR";
          if (!a2)
          {
            v10 = "internal error";
          }

          v11 = "OVERFLOW";
          if (!a2)
          {
            v11 = "overflow";
          }

          if (v6 != 69)
          {
            v11 = 0;
          }

          if (v6 != 68)
          {
            v10 = v11;
          }

          v12 = v6 == 67;
        }

        if (!v12)
        {
          return v10;
        }
      }
    }

    else
    {
      v9 = &(&off_278A773F0)[3 * v6];
      if (a2)
      {
        v9 += 2;
      }

      return *v9;
    }

    return v7;
  }

  v7 = 0;
  if (a2 || v6 > 0x7E)
  {
    return v7;
  }

  return strerror(v6);
}

char *sub_239416E0C(unsigned int a1, char *a2)
{
  if (!a2)
  {
    a2 = &unk_27DF77778;
  }

  return sub_239416E24(a1, a2, 0x78uLL);
}

char *sub_239416E24(unsigned int a1, char *a2, size_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    a2 = 0;
    goto LABEL_18;
  }

  v6 = HIBYTE(a1);
  if (a1 >> 25 < 0x11)
  {
    v8 = (&off_278A773F0)[3 * v6];
    v7 = sub_239416C64(a1, 0);
    if (v8)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = sub_239416C64(a1, 0);
  }

  v8 = __str;
  snprintf(__str, 0x20uLL, "lib(%u)", v6);
LABEL_7:
  if (!v7)
  {
    v7 = v16;
    snprintf(v16, 0x20uLL, "reason(%u)", a1 & 0xFFF);
  }

  v9 = snprintf(a2, a3, "error:%08x:%s:OPENSSL_internal:%s", a1, v8, v7);
  if (a3 >= 5 && (v9 & 0x80000000) == 0 && v9 >= a3)
  {
    v10 = &a2[a3 - 5];
    v11 = 4;
    v12 = a2;
    while (1)
    {
      v13 = strchr(v12, 58);
      if (!v13 || v13 > v10)
      {
        break;
      }

      v12 = v13 + 1;
      ++v10;
      if (!--v11)
      {
        goto LABEL_18;
      }
    }

    memset(v10, 58, v11);
  }

LABEL_18:
  v14 = *MEMORY[0x277D85DE8];
  return a2;
}

uint64_t sub_239416FA8(uint64_t (*a1)(char *, size_t, uint64_t), uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v11 = 0;
  v9 = 0;
  v4 = sub_239416A98();
  do
  {
    result = sub_2394167D4(1, 0, &v11, &v9 + 1, &v10, &v9);
    if (!result)
    {
      break;
    }

    sub_239416E24(result, v13, 0x78uLL);
    v6 = (v9 & 1) != 0 ? v10 : "";
    snprintf(__str, 0x400uLL, "%lu:%s:%s:%d:%s\n", v4, v13, v11, HIDWORD(v9), v6);
    v7 = strlen(__str);
    result = a1(__str, v7, a2);
  }

  while (result > 0);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2394170F4(int a1, uint64_t a2, int a3, uint64_t a4, __int16 a5)
{
  v9 = sub_239416A98();
  if (v9)
  {
    v10 = v9;
    if (a1 == 2 && !a3)
    {
      a3 = *__error();
    }

    v11 = *(v10 + 96);
    v12 = (v11 + 1) & 0xF;
    *(v10 + 96) = v12;
    if (v12 == *(v10 + 97))
    {
      *(v10 + 97) = (v11 + 2) & 0xF;
    }

    v13 = &v10[3 * ((v11 + 1) & 0xF)];
    free(v13[1]);
    v13[1] = 0;
    v13[2] = 0;
    *v13 = a4;
    *(v13 + 10) = a5;
    *(v13 + 4) = a3 & 0xFFF | (a1 << 24);
  }
}

void sub_2394171A0(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = &a9;
  v19 = &a9;
  v10 = a1;
  v11 = 0;
  if (!a1)
  {
    goto LABEL_8;
  }

  v12 = a1;
  do
  {
    v13 = v18++;
    if (*v13)
    {
      v14 = strlen(*v13);
      if (__CFADD__(v11, v14))
      {
        return;
      }

      v11 += v14;
    }

    --v12;
  }

  while (v12);
  if (v11 != -1)
  {
LABEL_8:
    v15 = malloc_type_malloc(v11 + 1, 0x653ED810uLL);
    if (v15)
    {
      v16 = v15;
      *v15 = 0;
      if (a1)
      {
        do
        {
          v17 = v19++;
          if (*v17)
          {
            sub_239450834(v16, *v17, v11 + 1);
          }

          --v10;
        }

        while (v10);
      }

      sub_2394172B8(v16);
    }
  }
}

void sub_239417270(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = 0;
  if (sub_2394505A0(&v9, a1, &a9, 1) != -1)
  {
    sub_2394172B8(v9);
  }
}

void sub_2394172B8(void *a1)
{
  v2 = sub_239416A98();
  if (v2 && (v3 = *(v2 + 96), v3 != *(v2 + 97)))
  {
    v4 = &v2[3 * v3];
    free(v4[1]);
    v4[1] = a1;
  }

  else
  {

    free(a1);
  }
}

void sub_239417324(char *a1, char a2)
{
  if (a2)
  {
    v4 = sub_23941737C(a1);
    if (v4)
    {
      sub_2394172B8(v4);
    }

    if ((a2 & 2) != 0)
    {

      sub_239450144(a1);
    }
  }
}

void *sub_23941737C(const char *a1)
{
  v2 = strlen(a1);
  result = malloc_type_malloc(v2 + 1, 0xB2A0D864uLL);
  if (result)
  {

    return memcpy(result, a1, v2 + 1);
  }

  return result;
}

uint64_t sub_2394173DC()
{
  result = sub_239416A98();
  if (result)
  {
    v1 = *(result + 384);
    if (*(result + 388) == v1)
    {
      return 0;
    }

    else
    {
      *(result + 24 * v1 + 22) |= 1u;
      return 1;
    }
  }

  return result;
}

uint64_t sub_239417428()
{
  result = sub_239416A98();
  if (result)
  {
    v1 = result;
    v2 = *(result + 384);
    if (*(result + 388) == v2)
    {
      return 0;
    }

    else
    {
      while (1)
      {
        v3 = v1 + 24 * v2;
        if (*(v3 + 22))
        {
          break;
        }

        free(*(v3 + 8));
        *v3 = 0;
        *(v3 + 8) = 0;
        *(v3 + 16) = 0;
        v4 = *(v1 + 384);
        if (v4)
        {
          v2 = v4 - 1;
        }

        else
        {
          v2 = 15;
        }

        *(v1 + 384) = v2;
        if (*(v1 + 388) == v2)
        {
          return 0;
        }
      }

      *(v3 + 22) &= ~1u;
      return 1;
    }
  }

  return result;
}

void sub_2394174C0(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 8))
    {
      v2 = 0;
      v3 = 0;
      do
      {
        v4 = *a1 + v2;
        free(*(v4 + 8));
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
        ++v3;
        v2 += 24;
      }

      while (v3 < *(a1 + 8));
    }

    free(*a1);

    free(a1);
  }
}

void *sub_239417548()
{
  v0 = sub_239416A98();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  if (*(v0 + 96) == *(v0 + 97))
  {
    return 0;
  }

  v2 = malloc_type_malloc(0x10uLL, 0x1020040EDED9539uLL);
  if (!v2)
  {
    return v2;
  }

  v4 = *(v1 + 96);
  v5 = *(v1 + 97);
  if (v4 >= v5)
  {
    v6 = *(v1 + 96);
  }

  else
  {
    v6 = v4 + 16;
  }

  v7 = v6 - v5;
  v8 = malloc_type_malloc(24 * v7, 0x10500400B811B97uLL);
  *v2 = v8;
  if (!v8)
  {
    free(v2);
    return 0;
  }

  if (v6 == v5)
  {
    v2[1] = v7;
  }

  else
  {
    bzero(v8, 24 * (v6 - v5));
    v9 = 0;
    v2[1] = v7;
    if (v7 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v6 - v5;
    }

    v11 = 24 * v10;
    v12 = 1;
    do
    {
      sub_23941766C(*v2 + v9, &v1[3 * ((v12 + *(v1 + 97)) & 0xF)]);
      v9 += 24;
      ++v12;
    }

    while (v11 != v9);
  }

  return v2;
}

const char *sub_23941766C(uint64_t a1, uint64_t a2)
{
  free(*(a1 + 8));
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  result = *(a2 + 8);
  if (result)
  {
    result = sub_23941737C(result);
    *(a1 + 8) = result;
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  return result;
}

void sub_2394176C8(void *a1)
{
  if (a1 && (v2 = a1[1]) != 0)
  {
    if (v2 >= 0x10)
    {
      abort();
    }

    v3 = sub_239416A98();
    if (v3)
    {
      v4 = v3;
      if (a1[1])
      {
        v5 = 0;
        v6 = 0;
        do
        {
          sub_23941766C(&v4[v5], *a1 + v5 * 8);
          ++v6;
          v7 = a1[1];
          v5 += 3;
        }

        while (v6 < v7);
        v8 = v7 - 1;
      }

      else
      {
        v8 = -1;
      }

      *(v4 + 96) = v8;
      *(v4 + 97) = 15;
    }
  }

  else
  {

    sub_239416A38();
  }
}

void sub_239417780(void **a1)
{
  if (a1)
  {
    for (i = 0; i != 48; i += 3)
    {
      v3 = &a1[i];
      free(a1[i + 1]);
      *v3 = 0;
      v3[1] = 0;
      v3[2] = 0;
    }

    free(a1[49]);

    free(a1);
  }
}

uint64_t sub_2394177F0(_DWORD *a1, _DWORD *a2)
{
  v2 = *a1 >> 15;
  v3 = v2 >= *a2 >> 15;
  v4 = v2 > *a2 >> 15;
  if (v3)
  {
    return v4;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

double sub_23941780C()
{
  v0 = sub_2394500B0(0x18uLL);
  if (v0)
  {
    *&result = 1;
    *v0 = 1;
  }

  return result;
}

void sub_239417838(uint64_t a1)
{
  if (a1 && sub_239455A20(a1))
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      v3 = *(v2 + 160);
      if (v3)
      {
        v3(a1);
        *(a1 + 8) = 0;
        *(a1 + 4) = 0;
      }
    }

    sub_239450144(a1);
  }
}

uint64_t sub_2394178C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && (v2 = *(v1 + 112)) != 0)
  {
    return v2();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2394178DC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4))
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 4294967294;
  }

  v5 = *(v3 + 152);
  if (v5)
  {
    result = v5(a1, a2);
    if (result < 1)
    {
      return result;
    }

    v3 = *(a1 + 16);
  }

  v7 = *(v3 + 40);
  if (!v7)
  {
    return 4294967294;
  }

  return v7(a1, a2);
}

uint64_t sub_239417970(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 4);
  if (v4)
  {
    if (v4 != *(a2 + 4))
    {
      v5 = 103;
      v6 = 151;
LABEL_25:
      sub_2394170F4(6, 0, v5, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/evp/evp.c", v6);
      return 0;
    }
  }

  else
  {
    v7 = *(a2 + 16);
    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = *(v8 + 160);
      if (v9)
      {
        v9(a1);
        *(a1 + 8) = 0;
        *(a1 + 4) = 0;
      }
    }

    *(a1 + 16) = v7;
    *(a1 + 4) = *v7;
  }

  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = *(v10 + 136);
    if (v11)
    {
      if (v11(a2))
      {
        v5 = 118;
        v6 = 156;
        goto LABEL_25;
      }
    }
  }

  v12 = *(a1 + 16);
  if (v12 && (v13 = *(v12 + 136)) != 0 && v13(a1))
  {
    v14 = *(a2 + 16);
    if (!v14)
    {
      return 0;
    }

    v15 = *(v14 + 144);
    if (!v15)
    {
      return 0;
    }

    return v15(a1, a2);
  }

  else if (*(a1 + 4) != *(a2 + 4) || (v17 = *(a1 + 16)) == 0 || (v18 = *(v17 + 152)) == 0 || (result = v18(a1, a2), result != 1))
  {
    v5 = 104;
    v6 = 165;
    goto LABEL_25;
  }

  return result;
}