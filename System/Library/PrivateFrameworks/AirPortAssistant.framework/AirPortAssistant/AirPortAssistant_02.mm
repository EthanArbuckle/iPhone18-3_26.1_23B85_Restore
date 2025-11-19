uint64_t sub_23EB7DE5C(char *a1, char a2, unsigned int *a3, int *a4, int *a5, int *a6, char **a7)
{
  v27 = a1;
  if (!a1)
  {
    return 4294960591;
  }

  result = sub_23EB7DFF8(a1, &v26, &v27);
  if (!result)
  {
    v14 = v27;
    v15 = *v27;
    if (v15 == 58)
    {
      if (a2)
      {
        return 4294960560;
      }

      v14 = v27 + 1;
      v16 = v27[1];
      if ((v16 - 48) > 9)
      {
        v17 = 0;
        ++v27;
      }

      else
      {
        v17 = 0;
        do
        {
          v17 = v16 + 10 * v17 - 48;
          v18 = *++v14;
          v16 = v18;
        }

        while ((v18 - 48) < 0xA);
        v27 = v14;
        if (v17 >= 0x10000)
        {
          return 4294960586;
        }
      }
    }

    else
    {
      v17 = 0;
      v16 = *v27;
    }

    v19 = bswap32(v26);
    if (v16 != 47)
    {
      v24 = 0;
      v25 = 0;
      if (!a3)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    if ((a2 & 2) == 0)
    {
      v20 = *++v14;
      v21 = v20 - 48;
      if ((v20 - 48) > 9)
      {
        LOBYTE(v22) = 0;
      }

      else
      {
        v22 = 0;
        do
        {
          v22 = 10 * v22 + v21;
          v23 = *++v14;
          v21 = v23 - 48;
        }

        while ((v23 - 48) < 0xA);
        if (v22 > 0x20)
        {
          return 4294960586;
        }
      }

      v24 = -1 << -v22;
      v25 = v24 & v19 | 1;
      if (!a3)
      {
        goto LABEL_22;
      }

LABEL_21:
      *a3 = v19;
LABEL_22:
      if (a4 && v15 == 58)
      {
        *a4 = v17;
      }

      if (a5 && v16 == 47)
      {
        *a5 = v24;
      }

      if (a6 && v16 == 47)
      {
        *a6 = v25;
      }

      result = 0;
      if (a7)
      {
        *a7 = v14;
      }

      return result;
    }

    return 4294960560;
  }

  return result;
}

uint64_t sub_23EB7DFF8(char *a1, _BYTE *a2, char **a3)
{
  *a2 = 0;
  v3 = *a1;
  if (!*a1)
  {
    return 4294960546;
  }

  LOBYTE(v4) = 0;
  v5 = 0;
  v6 = 0;
  do
  {
    if ((v3 - 48) <= 9u)
    {
      v4 = 10 * v4 + (v3 - 48);
      if (v4 > 0xFF)
      {
        return 4294960586;
      }

      *a2 = v4;
      if (!v5)
      {
        if (v6 > 3)
        {
          return 4294960545;
        }

        ++v6;
      }

      v5 = 1;
      goto LABEL_13;
    }

    if (!v5 || v3 != 46)
    {
      break;
    }

    if (v6 > 3)
    {
      return 4294960554;
    }

    LOBYTE(v4) = 0;
    v5 = 0;
    *++a2 = 0;
LABEL_13:
    v7 = *++a1;
    v3 = v7;
  }

  while (v7);
  if (v6 != 4)
  {
    return 4294960546;
  }

  v8 = 0;
  *a3 = a1;
  return v8;
}

char *sub_23EB7E0B8(_BYTE *a1, unsigned int a2, int a3, unsigned int a4, char *a5)
{
  v7 = a3;
  v8 = a2;
  v51 = *MEMORY[0x277D85DE8];
  if (a3 > 0 || (v9 = a5, a3 == -2))
  {
    *a5 = 91;
    v9 = a5 + 1;
  }

  if (*a1 || a1[1])
  {
    v10 = 0;
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v10 = !a1[2] && !a1[3] && !a1[4] && !a1[5] && !a1[6] && !a1[7] && !a1[8] && !a1[9] && a1[10] == 255 && a1[11] == 255;
  if (a1[2] || a1[3] || a1[4] || a1[5] || a1[6] || a1[7] || a1[8] || a1[9] || a1[10] || a1[11])
  {
    goto LABEL_7;
  }

  if (!a1[12] && !a1[13])
  {
    if (!a1[14])
    {
      v11 = a1[15];
      if (!v11)
      {
LABEL_8:
        if (!v10 && (v11 & 1) == 0)
        {
          v12 = 0;
          v13 = v49;
          while (1)
          {
            v14 = v12 | 1;
            v15 = a1[v12];
            if (v15 >= 0x10)
            {
              *v13 = a0123456789abcd_1[v15 >> 4];
              LODWORD(v15) = v15 & 0xF;
              v16 = 1;
            }

            else
            {
              if (!a1[v12])
              {
                v18 = 0;
                v20 = 0;
                v12 += 2;
                v19 = a1[v14];
                if (v19 < 0x10)
                {
                  goto LABEL_17;
                }

                goto LABEL_16;
              }

              v16 = 0;
            }

            v17 = a0123456789abcd_1[v15];
            v18 = v16 + 1;
            v13[v16] = v17;
            v12 += 2;
            v19 = a1[v14];
LABEL_16:
            v20 = v18 + 1;
            v13[v18] = a0123456789abcd_1[v19 >> 4];
LABEL_17:
            *&v13[v20] = a0123456789abcd_1[v19 & 0xF];
            v13 += 5;
            if (v12 >= 16)
            {
              v22 = 0;
              v23 = a1 + 15;
              for (i = 28; i != -4; i -= 4)
              {
                if (*(v23 - 1))
                {
                  v22 = 0;
                }

                else if (*v23)
                {
                  v22 = 0;
                }

                else
                {
                  ++v22;
                }

                *&v48[i] = v22;
                v23 -= 2;
              }

              v25 = 0;
              v26 = 0;
              v27 = -1;
              do
              {
                if (*&v48[4 * v25] > v26)
                {
                  v26 = *&v48[4 * v25];
                  v27 = v25;
                }

                ++v25;
              }

              while (v25 != 8);
              v28 = 0;
              while (1)
              {
                if (v28 == v27)
                {
                  if (!v27)
                  {
                    *v9++ = 58;
                  }

                  *v9 = 58;
                  v28 = v27 - 1 + *&v48[4 * v27];
                }

                else
                {
                  v29 = v49[5 * v28];
                  if (v29)
                  {
                    v30 = &v49[5 * v28 + 1];
                    do
                    {
                      *v9++ = v29;
                      v31 = *v30++;
                      v29 = v31;
                    }

                    while (v31);
                  }

                  if (v28 == 7)
                  {
                    goto LABEL_44;
                  }

                  *v9 = 58;
                }

                ++v9;
                v32 = v28++ < 7;
                if (!v32)
                {
                  goto LABEL_44;
                }
              }
            }
          }
        }

        *v9 = 14906;
        v21 = v9 + 2;
        if (v10)
        {
          goto LABEL_22;
        }

        goto LABEL_94;
      }
    }

    if (!a1[14])
    {
      v11 = a1[15] != 1;
      goto LABEL_8;
    }
  }

  *v9 = 14906;
  v21 = v9 + 2;
  if (v10)
  {
LABEL_22:
    v9[2] = 102;
    *(v9 + 3) = 979789414;
    v9 += 7;
    goto LABEL_95;
  }

LABEL_94:
  v9 = v21;
LABEL_95:
  for (j = 12; ; ++j)
  {
    v45 = a1[j];
    v46 = v50;
    do
    {
      *v46++ = (v45 % 0xA) | 0x30;
      v32 = v45 > 9;
      v45 /= 0xAu;
    }

    while (v32);
    while (v46 > v50)
    {
      v47 = *--v46;
      *v9++ = v47;
    }

    if (j == 15)
    {
      break;
    }

    *v9++ = 46;
  }

LABEL_44:
  if (a2)
  {
    *v9++ = 37;
    v33 = if_indextoname(a2, v50);
    if (v33)
    {
      v34 = *v33;
      if (*v33)
      {
        v35 = (v33 + 1);
        do
        {
          *v9++ = v34;
          v36 = *v35++;
          v34 = v36;
        }

        while (v36);
      }
    }

    else
    {
      v42 = v50;
      do
      {
        *v42++ = (v8 % 0xA) | 0x30;
        v32 = v8 > 9;
        v8 /= 0xAu;
      }

      while (v32);
      while (v42 > v50)
      {
        v43 = *--v42;
        *v9++ = v43;
      }
    }
  }

  if (v7 < 1)
  {
    if (v7 == -2)
    {
      *v9++ = 93;
    }
  }

  else
  {
    *v9 = 14941;
    v37 = v50;
    do
    {
      *v37++ = (v7 % 0xA) | 0x30;
      v32 = v7 > 9;
      v7 /= 0xAu;
    }

    while (v32);
    v9 += 2;
    while (v37 > v50)
    {
      v38 = *--v37;
      *v9++ = v38;
    }
  }

  if ((a4 & 0x80000000) == 0)
  {
    *v9 = 47;
    v39 = v50;
    do
    {
      *v39++ = (a4 % 0xA) | 0x30;
      v32 = a4 > 9;
      a4 /= 0xAu;
    }

    while (v32);
    ++v9;
    while (v39 > v50)
    {
      v40 = *--v39;
      *v9++ = v40;
    }
  }

  *v9 = 0;
  return a5;
}

uint64_t sub_23EB7E5D8(unsigned __int8 *a1, unint64_t a2)
{
  v2 = 32;
  if (!a2)
  {
    v5 = 0x2000;
    v4 = 0x2000;
    goto LABEL_7;
  }

  v3 = *a1;
  if (!*a1)
  {
    v3 = 32;
  }

  v4 = v3 << 8;
  if (a2 == 1)
  {
    v5 = 0x2000;
LABEL_7:
    v6 = 32;
    return v6 | v5 | ((v4 | v2) << 16);
  }

  v2 = a1[1];
  v6 = 32;
  if (!a1[1])
  {
    v2 = 32;
  }

  if (a2 < 3)
  {
    v5 = 0x2000;
  }

  else
  {
    v8 = a1[2];
    if (!a1[2])
    {
      v8 = 32;
    }

    v5 = v8 << 8;
    if (a2 != 3)
    {
      v6 = a1[3];
      if (!a1[3])
      {
        v6 = 32;
      }
    }
  }

  return v6 | v5 | ((v4 | v2) << 16);
}

uint64_t sub_23EB7E668(char *__s, size_t a2, int a3, _BYTE *a4)
{
  v6 = __s;
  if (a2 == -1)
  {
    a2 = strlen(__s);
  }

  if (a3 < 1)
  {
    return 0;
  }

  v7 = &v6[a2];
  v8 = MEMORY[0x277D85DE0];
LABEL_5:
  if (v6 < v7)
  {
    v9 = 0;
    v10 = 0;
    v11 = v6 + 1;
    while (1)
    {
      v6 = v11;
      v12 = *(v11 - 1);
      if ((v12 - 48) > 9)
      {
        if ((*(v8 + 4 * *(v11 - 1) + 60) & 0x10000) == 0)
        {
          if (v10)
          {
            goto LABEL_20;
          }

          if (v12 > 0x3A || ((1 << v12) & 0x400200100000000) == 0)
          {
            return 4294960554;
          }

          v10 = 0;
          goto LABEL_18;
        }

        v9 = __tolower(v12) + 16 * v9 - 87;
      }

      else
      {
        v9 = v12 + 16 * v9 - 48;
      }

      ++v10;
LABEL_18:
      if (v10 <= 1)
      {
        v11 = v6 + 1;
        if (v6 < v7)
        {
          continue;
        }
      }

LABEL_20:
      if (!v10)
      {
        return 4294960554;
      }

      if (a4)
      {
        *a4++ = v9;
      }

      if (a3-- <= 1)
      {
        return 0;
      }

      goto LABEL_5;
    }
  }

  return 4294960554;
}

_BYTE *sub_23EB7E798(unsigned __int8 *a1, uint64_t a2, _BYTE *a3)
{
  v3 = a3;
  if (a2 >= 1)
  {
    v4 = &a1[a2];
    v3 = a3;
    do
    {
      v5 = a3;
      if (v3 != a3)
      {
        *v3 = 58;
        v5 = v3 + 1;
      }

      v6 = *a1++;
      *v5 = a0123456789abcd_0[v6 >> 4];
      v3 = v5 + 2;
      v5[1] = a0123456789abcd_0[v6 & 0xF];
    }

    while (a1 < v4);
  }

  *v3 = 0;
  return a3;
}

uint64_t sub_23EB7E800(char *__s, int64_t a2, int *a3)
{
  v4 = a2;
  if (a2 == -1)
  {
    v4 = strlen(__s);
  }

  v6 = &__s[v4];
  if (v4 < 1)
  {
    v8 = __s;
  }

  else
  {
    v7 = MEMORY[0x277D85DE0];
    v8 = __s;
    do
    {
      v9 = *v8;
      if (v9 < 0)
      {
        if (!__maskrune(*v8, 0x4000uLL))
        {
          break;
        }
      }

      else if ((*(v7 + 4 * v9 + 60) & 0x4000) == 0)
      {
        break;
      }

      ++v8;
    }

    while (v8 < v6);
  }

  if (v8 >= v6)
  {
    v14 = 0;
LABEL_21:
    v10 = v8;
    goto LABEL_22;
  }

  if (*v8 - 48 > 9)
  {
    v14 = 1;
    goto LABEL_21;
  }

  v10 = &__s[v4];
  v11 = v8 + 1;
  v12 = &__s[v4 + ~v8];
  while (1)
  {
    v13 = v11;
    if (!v12)
    {
      break;
    }

    ++v11;
    --v12;
    if (*v13 - 48 > 9)
    {
      v10 = v13;
      break;
    }
  }

  v14 = v13 < v6;
LABEL_22:
  if (v8 == v10)
  {
    return 4294960554;
  }

  v15 = sub_23EB7EB84(v8, v10 - v8, 10);
  if (v15 > 0xFF)
  {
    return 4294960586;
  }

  v16 = v15;
  v17 = &v10[v14];
  if (v17 >= v6)
  {
    v20 = 1;
    v18 = v17;
  }

  else
  {
    v18 = v17;
    while (1)
    {
      v19 = *v18 - 48;
      v20 = v19 < 0xA;
      if (v19 > 9)
      {
        break;
      }

      if (++v18 >= v6)
      {
        v18 = &__s[v4];
        break;
      }
    }
  }

  v22 = sub_23EB7EB84(v17, v18 - v17, 10);
  if (v22 > 0xF)
  {
    return 4294960586;
  }

  v23 = v22;
  v24 = v17 == v18 || v20;
  if ((v24 & 1) == 0)
  {
    v28 = v18 + 1;
    v29 = __tolower(*v18);
    if (v29 != 46)
    {
      v36 = 0;
      v30 = v28;
      goto LABEL_46;
    }

    if (v28 >= v6)
    {
      v31 = 1;
      v30 = v18 + 1;
      v35 = 1;
    }

    else
    {
      if (v18[1] - 48 > 9)
      {
        v48 = 0;
        v31 = 1;
        v30 = v18 + 1;
LABEL_80:
        v45 = sub_23EB7EB84(v18 + 1, v31 - 1, 10);
        if (v45 <= 0xF)
        {
          v36 = v45;
          v46 = v48;
          if (v31 == 1)
          {
            v46 = 1;
          }

          if (v46)
          {
            v38 = 0x8000;
LABEL_54:
            v39 = v30;
            if (v30 < v6)
            {
              v40 = (&__s[v4] - v30);
              v39 = v30;
              while (*v39 - 48 <= 9)
              {
                ++v39;
                if (!--v40)
                {
                  v39 = &__s[v4];
                  break;
                }
              }
            }

            if (v30 >= v39)
            {
              v41 = 0;
            }

            else
            {
              v41 = sub_23EB7EB84(v30, v39 - v30, 10);
            }

            v43 = v30 == v39 || v41 > 0xFF;
            v44 = !v43;
            if (v43)
            {
              v27 = 0x8000;
            }

            else
            {
              v27 = v38;
            }

            if (v44)
            {
              v26 = v41;
            }

            else
            {
              v26 = 0;
            }

            v25 = v36 << 16;
            goto LABEL_75;
          }

          v47 = *v30++;
          v29 = __tolower(v47);
LABEL_46:
          if (v29 == 100)
          {
            v37 = 0x2000;
          }

          else
          {
            v37 = 0x8000;
          }

          if (v29 == 98)
          {
            v37 = 24576;
          }

          if (v29 == 97)
          {
            v38 = 0x4000;
          }

          else
          {
            v38 = v37;
          }

          goto LABEL_54;
        }

        return 4294960586;
      }

      v30 = &__s[v4];
      v31 = &__s[v4] - v18;
      v32 = 2;
      while (1)
      {
        v33 = v32;
        if (v31 == v32)
        {
          break;
        }

        v34 = v18[v32++] - 48;
        if (v34 > 9)
        {
          v31 = v33;
          v30 = &v18[v33];
          break;
        }
      }

      v35 = &v18[v33] >= v6;
    }

    v48 = v35;
    goto LABEL_80;
  }

  v25 = 0;
  v26 = 0;
  v27 = 0x8000;
LABEL_75:
  result = 0;
  if (a3)
  {
    *a3 = v25 | (v23 << 20) | (v16 << 24) | v27 | v26;
  }

  return result;
}

uint64_t sub_23EB7EB84(char *__s, int64_t a2, int a3)
{
  v4 = a2;
  if (a2 == -1)
  {
    v4 = strlen(__s);
  }

  v6 = &__s[v4];
  if (v4 < 1)
  {
    v8 = __s;
  }

  else
  {
    v7 = MEMORY[0x277D85DE0];
    v8 = __s;
    do
    {
      v9 = *v8;
      if (v9 < 0)
      {
        if (!__maskrune(*v8, 0x4000uLL))
        {
          break;
        }
      }

      else if ((*(v7 + 4 * v9 + 60) & 0x4000) == 0)
      {
        break;
      }

      ++v8;
    }

    while (v8 < v6);
  }

  if (v6 - v8 <= 1)
  {
    if (a3)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (*v8 == 48)
    {
      if (__tolower(v8[1]) == 120)
      {
        v8 += 2;
        a3 = 16;
LABEL_22:
        v10 = a3 - 2;
        goto LABEL_27;
      }

      if (*v8 == 48 && __tolower(v8[1]) == 98)
      {
        v8 += 2;
        a3 = 2;
        goto LABEL_22;
      }
    }

    if (a3)
    {
      goto LABEL_22;
    }

    if (*v8 == 48 && (v8[1] & 0xF8) == 0x30)
    {
      a3 = 8;
      ++v8;
      goto LABEL_22;
    }
  }

  v10 = 8;
LABEL_27:
  v11 = 0;
  HIDWORD(v13) = v10;
  LODWORD(v13) = v10;
  v12 = v13 >> 1;
  if (v12 > 3)
  {
    if (v12 == 4)
    {
      v23 = *v8;
      if (v23 == 45 || v23 == 43)
      {
        ++v8;
      }

      v24 = 0;
      while (v8 < v6)
      {
        v26 = *v8++;
        v25 = v26;
        if (v26 != 44)
        {
          v27 = v25 - 48;
          if (v27 > 9)
          {
            break;
          }

          v24 = v27 + 10 * v24;
        }
      }

      if (v23 == 45)
      {
        return -v24;
      }

      else
      {
        return v24;
      }
    }

    else
    {
      if (v12 != 7)
      {
        return v11;
      }

      if (v8 >= v6)
      {
        return 0;
      }

      v11 = 0;
      v16 = (&__s[v4] - v8);
      v17 = MEMORY[0x277D85DE0];
      do
      {
        v19 = *v8++;
        v18 = v19;
        v20 = v19 - 48;
        if (v19 - 48 > 9)
        {
          if ((*(v17 + 4 * v18 + 60) & 0x10000) == 0)
          {
            return v11;
          }

          v11 = (__tolower(v18) + 16 * v11 - 87);
        }

        else
        {
          v11 = v20 | (16 * v11);
        }

        --v16;
      }

      while (v16);
    }
  }

  else
  {
    if (v12)
    {
      if (v12 != 3)
      {
        return v11;
      }

      if (v8 < v6)
      {
        v11 = 0;
        v14 = (&__s[v4] - v8);
        do
        {
          v15 = *v8;
          if ((v15 - 56) < 0xFFFFFFF8)
          {
            break;
          }

          ++v8;
          v11 = (v15 + 8 * v11 - 48);
          --v14;
        }

        while (v14);
        return v11;
      }

      return 0;
    }

    if (v8 >= v6)
    {
      return 0;
    }

    v11 = 0;
    v21 = (&__s[v4] - v8);
    do
    {
      v22 = *v8;
      if ((v22 - 50) < 0xFFFFFFFE)
      {
        break;
      }

      ++v8;
      v11 = (v22 + 2 * v11 - 48);
      --v21;
    }

    while (v21);
  }

  return v11;
}

uint64_t sub_23EB7EE20(char *__s, int64_t a2)
{
  v2 = a2;
  if (a2 == -1)
  {
    v2 = strlen(__s);
  }

  v4 = &__s[v2];
  if (v2 < 1)
  {
    v6 = __s;
  }

  else
  {
    v5 = MEMORY[0x277D85DE0];
    v6 = __s;
    do
    {
      v7 = *v6;
      if (v7 < 0)
      {
        if (!__maskrune(*v6, 0x4000uLL))
        {
          break;
        }
      }

      else if ((*(v5 + 4 * v7 + 60) & 0x4000) == 0)
      {
        break;
      }

      ++v6;
    }

    while (v6 < v4);
  }

  if (v6 >= v4)
  {
    v10 = 0;
    v8 = 0;
  }

  else
  {
    v8 = 0;
    v9 = (&__s[v2] - v6);
    while (1)
    {
      v10 = *v6;
      if ((v10 - 48) > 9 || v8 >= 0x346DC)
      {
        break;
      }

      v8 = v10 - 48 + 10 * v8;
      ++v6;
      if (!--v9)
      {
        v6 = &__s[v2];
        break;
      }
    }

    if (v8 > 0x346DB)
    {
      return 0;
    }
  }

  if (v10 == 46)
  {
    v12 = v6 + 1;
  }

  else
  {
    v12 = v6;
  }

  if (v12 >= v4)
  {
    v13 = 0;
  }

  else
  {
    v13 = 0;
    while (1)
    {
      v10 = *v12;
      if ((v10 - 48) > 9 || v13 > 0x63)
      {
        break;
      }

      v13 = v10 - 48 + 10 * v13;
      if (++v12 >= v4)
      {
        v12 = &__s[v2];
        break;
      }
    }

    if (v13 > 0x63)
    {
      return 0;
    }
  }

  if (v10 == 46)
  {
    ++v12;
  }

  if (v12 >= v4)
  {
    v14 = 0;
  }

  else
  {
    v14 = 0;
    do
    {
      v15 = *v12 - 48;
      if (v15 > 9)
      {
        break;
      }

      if (v14 > 0x63)
      {
        break;
      }

      v14 = v15 + 10 * v14;
      ++v12;
    }

    while (v12 < v4);
    if (v14 > 0x63)
    {
      return 0;
    }
  }

  return 10000 * v8 + 100 * v13 + v14;
}

uint64_t sub_23EB7EFEC(char *__s, int64_t a2, uint64_t a3, _BYTE *a4, void *a5)
{
  v8 = __s;
  if (a2 == -1)
  {
    a2 = strlen(__s);
  }

  v9 = &v8[a2];
  v10 = MEMORY[0x277D85DE0];
  if (a2 >= 1)
  {
    do
    {
      v11 = *v8;
      if (v11 < 0)
      {
        if (!__maskrune(*v8, 0x4000uLL))
        {
          break;
        }
      }

      else if ((*(v10 + 4 * v11 + 60) & 0x4000) == 0)
      {
        break;
      }

      ++v8;
    }

    while (v8 < v9);
  }

  v12 = v9 - v8;
  if (v9 - v8 <= 1)
  {
    result = 0;
    v14 = a4;
    if (a5)
    {
LABEL_28:
      *a5 = v14 - a4;
    }
  }

  else
  {
    v13 = &a4[a3];
    v14 = a4;
    while (1)
    {
      v15 = __tolower(*v8);
      if (v15 > 0xFF || (v16 = v15, (*(v10 + 4 * v15 + 60) & 0x10000) == 0))
      {
LABEL_25:
        result = 0;
        if (a5)
        {
          goto LABEL_28;
        }

        return result;
      }

      v17 = __tolower(v8[1]);
      if (v17 > 0xFF || (*(v10 + 4 * v17 + 60) & 0x10000) == 0)
      {
        break;
      }

      if (a4 && v14 < v13)
      {
        if (v16 <= 0x60)
        {
          v18 = -48;
        }

        else
        {
          v18 = -87;
        }

        v19 = v18 + v16;
        if (v17 <= 0x60)
        {
          v20 = -48;
        }

        else
        {
          v20 = -87;
        }

        *v14 = (v20 + v17) | (16 * v19);
      }

      ++v14;
      v12 -= 2;
      v8 += 2;
      if (v12 <= 1)
      {
        goto LABEL_25;
      }
    }

    result = 4294960554;
    if (a5)
    {
      goto LABEL_28;
    }
  }

  return result;
}

char *sub_23EB7F164(unsigned __int8 *a1, int a2, char *__str)
{
  if (a2)
  {
    v4 = a1[3];
    v5 = a1[2];
    v6 = a1[1];
    v7 = *a1;
    v8 = a1[5];
    v9 = a1[4];
    v10 = a1[7];
    v11 = a1[6];
  }

  else
  {
    v4 = *a1;
    v5 = a1[1];
    v6 = a1[2];
    v7 = a1[3];
    v8 = a1[4];
    v9 = a1[5];
    v10 = a1[6];
    v11 = a1[7];
  }

  snprintf(__str, 0x25uLL, "%02x%02x%02x%02x-%02x%02x-%02x%02x-%02x%02x-%02x%02x%02x%02x%02x%02x", v4, v5, v6, v7, v8, v9, v10, v11, a1[8], a1[9], a1[10], a1[11], a1[12], a1[13], a1[14], a1[15]);
  return __str;
}

double sub_23EB7F22C(char *__s, size_t a2, int a3, _OWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2 == -1)
  {
    a2 = strlen(__s);
  }

  if (a2 == 36)
  {
    v13 = 0;
    if (a3)
    {
      v12 = sub_23EB7F3B0(__s, 0x24uLL, "%2hhx%2hhx%2hhx%2hhx-%2hhx%2hhx-%2hhx%2hhx-%2hhx%2hhx-%2hhx%2hhx%2hhx%2hhx%2hhx%2hhx%n", &v14 + 4, &v14 + 7, &v14 + 6, &v13, a8, &v14 + 3);
    }

    else
    {
      v12 = sub_23EB7F3B0(__s, 0x24uLL, "%2hhx%2hhx%2hhx%2hhx-%2hhx%2hhx-%2hhx%2hhx-%2hhx%2hhx-%2hhx%2hhx%2hhx%2hhx%2hhx%2hhx%n", &v14 + 5, &v14 + 6, &v14 + 7, &v13, a8, &v14);
    }

    if (v12 == 16 && v13 == 36)
    {
      if (a4)
      {
        result = *&v14;
        *a4 = v14;
      }
    }
  }

  return result;
}

_BYTE *sub_23EB7F3DC(_BYTE *a1, size_t a2)
{
  v3 = 0;
  if (a2)
  {
    while (a1[v3])
    {
      if (a2 == ++v3)
      {
        v3 = a2;
        break;
      }
    }
  }

  v4 = malloc_type_malloc(v3 + 1, 0x100004077774924uLL);
  v5 = v4;
  if (v4)
  {
    memcpy(v4, a1, v3);
    v5[v3] = 0;
  }

  return v5;
}

uint64_t sub_23EB7F45C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  result = 0;
  while (*(a1 + result))
  {
    if (a2 == ++result)
    {
      return a2;
    }
  }

  return result;
}

uint64_t sub_23EB7F48C(unsigned __int8 *a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = a2;
  v4 = a3;
  while (v3)
  {
    v6 = *a1++;
    v5 = v6;
    v8 = *v4++;
    v7 = v8;
    v9 = v5 > v8;
    if (v5 < v8)
    {
      return 0xFFFFFFFFLL;
    }

    if (v9)
    {
      return 1;
    }

    --v3;
    if (!v7)
    {
      return 0;
    }
  }

  if (a3[a2])
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_23EB7F4DC(_BYTE *a1, _BYTE *a2)
{
  if (a2 && *a2)
  {
    v4 = __tolower(*a2);
    while (*a1)
    {
      if (__tolower(*a1) == v4)
      {
        v5 = 1;
        do
        {
          v6 = __tolower(a1[v5]);
          v7 = __tolower(a2[v5++]);
          if (v6)
          {
            v8 = v6 == v7;
          }

          else
          {
            v8 = 0;
          }
        }

        while (v8);
        if (!v7)
        {
          return a1;
        }
      }

      ++a1;
    }

    return 0;
  }

  return a1;
}

unint64_t sub_23EB7F574(char *__s, size_t a2, unint64_t a3)
{
  if (a2 == -1)
  {
    a2 = strlen(__s);
  }

  if (a2 >= a3)
  {
    result = a3;
  }

  else
  {
    result = a2;
  }

  if (result)
  {
    while (__s[result - 1] < 0)
    {
      v6 = 0;
      v7 = __s[result - 1];
      if (result == 1 || v7 > 0xBF)
      {
        v14 = 0;
        v15 = 1;
        --result;
      }

      else
      {
        v8 = 0;
        v9 = result - 2;
        v10 = 1;
        while (1)
        {
          v11 = v7;
          v12 = v10;
          if ((__s[v9] & 0x80000000) == 0)
          {
            break;
          }

          v7 = __s[v9];
          ++v10;
          if (v9-- != 0)
          {
            v8 = v11;
            if (v7 < 0xC0)
            {
              continue;
            }
          }

          result = v9 + 1;
          v6 = v12;
          goto LABEL_18;
        }

        result = v9 + 1;
        v6 = v10 - 1;
        v11 = v8;
LABEL_18:
        v14 = (v11 & 0xF0) == 160;
        v15 = v10;
      }

      if (v6 < 6)
      {
        v16 = 255 << (7 - v6);
        v17 = (v16 | (1 << (6 - v6))) & v7;
        v18 = v7 == 237 && v14;
        if (v17 == v16 && !v18)
        {
          result += v15;
          return result;
        }
      }

      if (!result)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_23EB7F6A4(unsigned __int8 *a1, unint64_t a2, _BYTE *a3, uint64_t a4, void *a5, void *a6, _BYTE *a7, uint64_t a8, void *a9, void *a10, void *a11)
{
  v15 = a1;
  if (a1 >= a2)
  {
    result = 4294960569;
  }

  else
  {
    result = sub_23EB7F740(a1, a2, 0x3Du, a3, a4, a5, a6, &v15);
    if (!result)
    {
      result = sub_23EB7F740(v15, a2, 0x2Cu, a7, a8, a9, a10, &v15);
    }
  }

  if (a11)
  {
    *a11 = v15;
  }

  return result;
}

uint64_t sub_23EB7F740(unsigned __int8 *a1, unint64_t a2, unsigned __int8 a3, _BYTE *a4, uint64_t a5, void *a6, void *a7, unsigned __int8 **a8)
{
  if (a5)
  {
    v8 = a5 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (a1 < a2)
  {
    v9 = 0;
    v10 = &a4[v8];
    v11 = a4;
    while (1)
    {
      v12 = a1 + 1;
      v13 = *a1;
      if (v13 == a3)
      {
        ++a1;
        goto LABEL_19;
      }

      if (v13 == 92)
      {
        if (v12 >= a2)
        {
          v14 = 4294960546;
          if (!a6)
          {
            goto LABEL_24;
          }

LABEL_23:
          *a6 = v11 - a4;
          goto LABEL_24;
        }

        LOBYTE(v13) = a1[1];
        a1 += 2;
      }

      else
      {
        ++a1;
      }

      if (v11 < v10)
      {
        if (a4)
        {
          *v11 = v13;
        }

        ++v11;
      }

      ++v9;
      if (a1 >= a2)
      {
        goto LABEL_19;
      }
    }
  }

  v9 = 0;
  v11 = a4;
LABEL_19:
  v14 = 0;
  if (a4 && a5)
  {
    v14 = 0;
    *v11 = 0;
  }

  v12 = a1;
  if (a6)
  {
    goto LABEL_23;
  }

LABEL_24:
  if (a7)
  {
    *a7 = v9;
  }

  if (a8)
  {
    *a8 = v12;
  }

  return v14;
}

uint64_t sub_23EB7F80C(char *__s, size_t a2, unsigned __int8 *a3, _DWORD *a4)
{
  v5 = __s;
  if (a2 == -1)
  {
    a2 = strlen(__s);
  }

  v120 = 0;
  v121 = &v5[a2];
  v6 = MEMORY[0x277D85DE0];
  v117 = v5;
  do
  {
    while (1)
    {
LABEL_4:
      v7 = *a3;
      if (v7 < 0)
      {
        v8 = __maskrune(*a3, 0x4000uLL);
      }

      else
      {
        v8 = *(v6 + 4 * v7 + 60) & 0x4000;
      }

      if (v8)
      {
        do
        {
          while (1)
          {
            v10 = *++a3;
            v9 = v10;
            if (v10 < 0)
            {
              break;
            }

            if ((*(v6 + 4 * v9 + 60) & 0x4000) == 0)
            {
              goto LABEL_12;
            }
          }
        }

        while (__maskrune(v9, 0x4000uLL));
LABEL_12:
        if (v5 < v121)
        {
          v11 = v121 - v5;
          do
          {
            v12 = *v5;
            if (v12 < 0)
            {
              if (!__maskrune(*v5, 0x4000uLL))
              {
                break;
              }
            }

            else if ((*(v6 + 4 * v12 + 60) & 0x4000) == 0)
            {
              break;
            }

            ++v5;
            --v11;
          }

          while (v11);
        }
      }

      v13 = v5;
      v14 = *a3;
      if (v14 == 37)
      {
        break;
      }

      if (*a3)
      {
        if (v5 < v121)
        {
          ++a3;
          v15 = *v5++;
          if (v14 == v15)
          {
            continue;
          }
        }
      }

      return v120;
    }

    v16 = 0;
    v17 = 0;
    v18 = 1;
    while (1)
    {
      v19 = a3 + 1;
      v20 = v17;
      do
      {
        v17 = v20;
        v22 = *v19++;
        v21 = v22;
        v20 = 1;
      }

      while (v22 == 42);
      if (v21 != 38)
      {
        break;
      }

      v18 = 0;
LABEL_31:
      a3 = v19 - 1;
    }

    if (v21 == 35)
    {
      ++v16;
      goto LABEL_31;
    }

    v23 = v19 - 1;
    if ((v21 - 48) > 9)
    {
      if (v21 != 46)
      {
        v24 = 0x7FFFFFFF;
        goto LABEL_40;
      }

      v27 = a4;
      a4 += 2;
      v24 = *v27;
      if (*v27 < 0)
      {
        return v120;
      }

      v28 = *v19;
      v21 = v28;
      v23 = v19;
    }

    else
    {
      v24 = 0;
      do
      {
        v25 = v21 + 10 * v24;
        v26 = *++v23;
        v21 = v26;
        v24 = v25 - 48;
      }

      while ((v26 - 48) < 0xA);
LABEL_40:
      v28 = v21;
    }

    v29 = 0;
    HIDWORD(v31) = v28 - 104;
    LODWORD(v31) = v28 - 104;
    v30 = v31 >> 1;
    if (v30 <= 1)
    {
      if (v30)
      {
        if (v30 != 1)
        {
          goto LABEL_57;
        }

LABEL_50:
        ++v23;
LABEL_56:
        v21 = *v23;
        v29 = v28;
        goto LABEL_57;
      }

      v36 = *++v23;
      v34 = v36 == 104;
      v35 = 104;
      v28 = 72;
LABEL_53:
      if (v34)
      {
        ++v23;
      }

      else
      {
        v28 = v35;
      }

      goto LABEL_56;
    }

    if (v30 == 2)
    {
      v33 = *++v23;
      v34 = v33 == 108;
      v35 = 108;
      v28 = 76;
      goto LABEL_53;
    }

    if (v30 == 6 || v30 == 9)
    {
      goto LABEL_50;
    }

LABEL_57:
    if (!v21)
    {
      return v120;
    }

    v37 = 0;
    a3 = v23 + 1;
    if (v21 <= 104)
    {
      if (v21 <= 97)
      {
        if (v21 == 37)
        {
          if (!v29 && v24 == 0x7FFFFFFF && !v17 && v13 < v121)
          {
            v5 = v13 + 1;
            if (*v13 == 37)
            {
              goto LABEL_4;
            }
          }

          return v120;
        }

        if (v21 != 88)
        {
          if (v21 == 91 && !v29)
          {
            v40 = v23[1];
            v41 = v23 + 2;
            v42 = 1;
            if (v40 == 94)
            {
              v42 = 2;
              v43 = v23 + 2;
            }

            else
            {
              v43 = v23 + 1;
            }

            v44 = v23[v42];
            v45 = v44 == 93;
            for (i = v44 == 93 ? v43 + 1 : v43; ; ++i)
            {
              if (!*i)
              {
                return v120;
              }

              if (*i == 93)
              {
                break;
              }

              ++v45;
            }

            v5 = v13;
            if (v40 == 94)
            {
              if (v13 < v121)
              {
                v5 = v13;
                while (*v5)
                {
                  v66 = __OFSUB__(v24--, 1);
                  if (v24 < 0 != v66)
                  {
                    break;
                  }

                  if (v41 < i)
                  {
                    v80 = 0;
                    while (v43[v80] != *v5)
                    {
                      if (v45 == ++v80)
                      {
                        goto LABEL_232;
                      }
                    }

                    break;
                  }

LABEL_232:
                  if (++v5 == v121)
                  {
                    v5 = v121;
                    break;
                  }
                }
              }
            }

            else if (v13 < v121)
            {
              v5 = v13;
              while (*v5)
              {
                v66 = __OFSUB__(v24, 1);
                if (--v24 < 0 != v66)
                {
                  break;
                }

                v89 = v45;
                v90 = v43;
                if (a3 >= i)
                {
                  break;
                }

                while (*v90 != *v5)
                {
                  ++v90;
                  if (!--v89)
                  {
                    goto LABEL_268;
                  }
                }

                if (++v5 == v121)
                {
                  v5 = v121;
                  break;
                }
              }
            }

LABEL_268:
            if (v13 != v5 || v16)
            {
              a3 = i + 1;
              if (!v17)
              {
                v91 = a4;
                a4 += 2;
                v92 = *v91;
                if (v18)
                {
                  if (!v92)
                  {
                    return v120;
                  }

                  if (v13 < v5)
                  {
                    v93 = v5 - v13;
                    do
                    {
                      v94 = *v13++;
                      *v92++ = v94;
                      --v93;
                    }

                    while (v93);
                  }

                  *v92 = 0;
                  v95 = v120;
                }

                else
                {
                  if (v92)
                  {
                    *v92 = v13;
                  }

                  v114 = a4;
                  a4 += 2;
                  v115 = *v114;
                  v95 = v120;
                  if (v115)
                  {
                    *v115 = v5 - v13;
                  }
                }

                v120 = v95 + 1;
              }

              goto LABEL_4;
            }
          }

          return v120;
        }

        goto LABEL_100;
      }

      if (v21 == 98)
      {
        v37 = 0;
        v47 = 0;
        v48 = 1;
        v49 = 2;
      }

      else
      {
        if (v21 == 99)
        {
          if (v29)
          {
            return v120;
          }

          if (v18)
          {
            if (v24 == 0x7FFFFFFF)
            {
              v74 = 1;
            }

            else
            {
              v74 = v24;
            }

            if (v121 - v13 < v74)
            {
              return v120;
            }

            v75 = v74;
            if (v17)
            {
              v5 = &v13[v74];
              goto LABEL_4;
            }

            v110 = a4;
            a4 += 2;
            v111 = *v110;
            if (!v111)
            {
              return v120;
            }

            if (v75 < 1)
            {
              v100 = v120;
            }

            else
            {
              v112 = v75 + 1;
              v100 = v120;
              do
              {
                v113 = *v13++;
                *v111++ = v113;
                --v112;
              }

              while (v112 > 1);
            }
          }

          else
          {
            v81 = v121 - v13;
            if (v121 - v13 >= v24)
            {
              v81 = v24;
            }

            if (v17)
            {
              v5 = &v13[v81];
              goto LABEL_4;
            }

            v96 = a4;
            v123 = (a4 + 2);
            v97 = *v96;
            if (v97)
            {
              *v97 = v13;
            }

            v98 = v123;
            a4 = v123 + 1;
            v99 = *v98;
            v100 = v120;
            if (v99)
            {
              *v99 = v81;
            }

            v13 += v81;
          }

          v120 = v100 + 1;
          v5 = v13;
          goto LABEL_4;
        }

        v47 = 0;
        v48 = 0;
        v49 = 10;
        if (v21 != 100)
        {
          return v120;
        }
      }
    }

    else if (v21 <= 111)
    {
      switch(v21)
      {
        case 'i':
          v47 = 0;
          v48 = 0;
          v49 = 0;
          v37 = 1;
          break;
        case 'n':
          if (!v29 && v24 == 0x7FFFFFFF && !v17)
          {
            v72 = a4;
            a4 += 2;
            v73 = *v72;
            if (v73)
            {
              *v73 = v13 - v117;
              v5 = v13;
              goto LABEL_4;
            }
          }

          return v120;
        case 'o':
          v37 = 0;
          v47 = 0;
          v48 = 0;
          v49 = 8;
          break;
        default:
          return v120;
      }
    }

    else if (v21 > 116)
    {
      if (v21 != 117)
      {
        if (v21 != 120)
        {
          return v120;
        }

        goto LABEL_100;
      }

      v47 = 0;
      v48 = 0;
      v49 = 10;
    }

    else
    {
      if (v21 != 112)
      {
        if (v21 == 115 && !v29)
        {
          if (v13 < v121)
          {
            v38 = v121 - v13;
            v5 = v13;
            while (1)
            {
              v39 = *v5;
              if (v39 < 0)
              {
                if (!__maskrune(*v5, 0x4000uLL))
                {
LABEL_255:
                  if (!v16 && !*v5)
                  {
                    return v120;
                  }

LABEL_210:
                  if (v17)
                  {
                    if (v5 < v121)
                    {
                      v76 = v121 - v5;
                      do
                      {
                        v77 = *v5;
                        if (!*v5)
                        {
                          break;
                        }

                        v78 = (v77 & 0x80) != 0 ? __maskrune(v77, 0x4000uLL) : *(v6 + 4 * v77 + 60) & 0x4000;
                        if (v78 || v24 < 1)
                        {
                          break;
                        }

                        --v24;
                        ++v5;
                        --v76;
                      }

                      while (v76);
                    }

                    goto LABEL_4;
                  }

                  if (v18)
                  {
                    v82 = a4;
                    a4 += 2;
                    v83 = *v82;
                    if (!*v82)
                    {
                      return v120;
                    }

                    if (v5 < v121)
                    {
                      v84 = v121 - v5;
                      do
                      {
                        v85 = *v5;
                        if (!*v5)
                        {
                          break;
                        }

                        v86 = *v5;
                        v87 = v85 < 0 ? __maskrune(v85, 0x4000uLL) : *(v6 + 4 * v85 + 60) & 0x4000;
                        if (v87 || v24 < 1)
                        {
                          break;
                        }

                        --v24;
                        ++v5;
                        *v83++ = v86;
                        --v84;
                      }

                      while (v84);
                    }

                    *v83 = 0;
                    goto LABEL_207;
                  }

                  v101 = v5;
                  if (v5 < v121)
                  {
                    v102 = v121 - v5;
                    v101 = v5;
                    do
                    {
                      v103 = *v101;
                      if (!*v101)
                      {
                        break;
                      }

                      v104 = (v103 & 0x80) != 0 ? __maskrune(v103, 0x4000uLL) : *(v6 + 4 * v103 + 60) & 0x4000;
                      if (v104 || v24 < 1)
                      {
                        break;
                      }

                      --v24;
                      ++v101;
                      --v102;
                    }

                    while (v102);
                  }

                  v106 = a4;
                  v124 = (a4 + 2);
                  v107 = *v106;
                  if (v107)
                  {
                    *v107 = v5;
                  }

                  v108 = v124;
                  a4 = v124 + 1;
                  v109 = *v108;
                  if (v109)
                  {
                    *v109 = v101 - v5;
                  }

                  ++v120;
                  v5 = v101;
                  goto LABEL_4;
                }
              }

              else if ((*(v6 + 4 * v39 + 60) & 0x4000) == 0)
              {
                goto LABEL_255;
              }

              ++v5;
              if (!--v38)
              {
                goto LABEL_209;
              }
            }
          }

          v5 = v13;
LABEL_209:
          if (v16)
          {
            goto LABEL_210;
          }
        }

        return v120;
      }

      if (!v29)
      {
        v29 = 112;
      }

LABEL_100:
      v37 = 0;
      v48 = 0;
      v47 = 1;
      v49 = 16;
    }

    v50 = v121;
    if (v13 < v121)
    {
      v118 = v47;
      v51 = v29;
      v52 = v48;
      v53 = v121 - v13;
      do
      {
        v54 = *v13;
        if (v54 < 0)
        {
          if (!__maskrune(*v13, 0x4000uLL))
          {
            break;
          }
        }

        else if ((*(v6 + 4 * v54 + 60) & 0x4000) == 0)
        {
          break;
        }

        ++v13;
        --v53;
      }

      while (v53);
      v50 = v121;
      v48 = v52;
      v29 = v51;
      v47 = v118;
    }

    v55 = 1;
    if (v50 - v13 >= 2 && v24 >= 1)
    {
      v56 = *v13;
      if (v56 == 43)
      {
        ++v13;
        v55 = 1;
LABEL_123:
        --v24;
      }

      else
      {
        if (v56 == 45)
        {
          v55 = 0;
          ++v13;
          goto LABEL_123;
        }

        v55 = 1;
      }
    }

    v119 = v55;
    if (!v37)
    {
      if (v47)
      {
        if (v121 - v13 >= 2)
        {
          v58 = v24 - 2;
          if (v24 >= 2 && *v13 == 48)
          {
            v61 = v29;
            v62 = v48;
            v63 = __tolower(v13[1]);
            v48 = v62;
            v29 = v61;
            if (v63 == 120)
            {
              v5 = v13 + 2;
LABEL_149:
              v24 = v58;
              v49 = 16;
              goto LABEL_160;
            }
          }
        }
      }

      if (v48)
      {
        v59 = v121;
        if (v121 - v13 >= 2)
        {
          v58 = v24 - 2;
          if (v24 >= 2 && *v13 == 48 && __tolower(v13[1]) == 98)
          {
            v5 = v13 + 2;
            goto LABEL_156;
          }

          v49 = 2;
          goto LABEL_159;
        }

        v49 = 2;
LABEL_239:
        v5 = v13;
        goto LABEL_161;
      }

LABEL_159:
      v5 = v13;
      goto LABEL_160;
    }

    v57 = v50 - v13;
    if (v50 - v13 <= 2 || (v58 = v24 - 2, v24 < 2) || *v13 != 48)
    {
LABEL_134:
      if (v57 >= 2 && v24 >= 1)
      {
        v59 = v121;
        if (*v13 == 48)
        {
          v60 = v13[1] & 0xF8;
          if (v60 == 48)
          {
            --v24;
            v49 = 8;
          }

          else
          {
            v49 = 10;
          }

          if (v60 == 48)
          {
            v5 = v13 + 1;
          }

          else
          {
            v5 = v13;
          }

          goto LABEL_161;
        }

        v49 = 10;
        goto LABEL_239;
      }

      v49 = 10;
      goto LABEL_159;
    }

    if (__tolower(v13[1]) == 120)
    {
      v5 = v13 + 2;
      if ((*(v6 + 4 * v13[2] + 60) & 0x10000) != 0)
      {
        goto LABEL_149;
      }
    }

    if (*v13 != 48)
    {
      goto LABEL_134;
    }

    if (__tolower(v13[1]) != 98)
    {
      goto LABEL_134;
    }

    v5 = v13 + 2;
    if ((v13[2] & 0xFE) != 0x30)
    {
      goto LABEL_134;
    }

LABEL_156:
    v24 = v58;
    v49 = 2;
LABEL_160:
    v59 = v121;
LABEL_161:
    if (v5 >= v59)
    {
      v64 = 0;
    }

    else
    {
      v64 = 0;
      v65 = v59 - v5;
      do
      {
        v66 = __OFSUB__(v24--, 1);
        if (v24 < 0 != v66)
        {
          break;
        }

        v67 = *v5;
        v68 = v67 - 48;
        if ((v67 - 48) >= 0xA)
        {
          if ((*(v6 + 4 * *v5 + 60) & 0x10000) == 0)
          {
            break;
          }

          v68 = __tolower(v67) - 87;
        }

        if (v68 >= v49)
        {
          break;
        }

        v64 = v64 * v49 + v68;
        ++v5;
        --v65;
      }

      while (v65);
    }

    if (v5 == v13)
    {
      return v120;
    }
  }

  while (v17);
  if (v119)
  {
    v69 = v64;
  }

  else
  {
    v69 = -v64;
  }

  v70 = a4;
  a4 += 2;
  v71 = *v70;
  if (v71)
  {
    if (v29 <= 105)
    {
      if (v29 <= 75)
      {
        if (v29)
        {
          if (v29 != 72)
          {
            return v120;
          }

          *v71 = v69;
        }

        else
        {
          *v71 = v69;
        }

        goto LABEL_207;
      }

      if (v29 != 76)
      {
        if (v29 != 104)
        {
          return v120;
        }

        *v71 = v69;
        goto LABEL_207;
      }
    }

    else if (v29 <= 111)
    {
      if (v29 != 106 && v29 != 108)
      {
        return v120;
      }
    }

    else if (v29 != 112 && v29 != 116 && v29 != 122)
    {
      return v120;
    }

    *v71 = v69;
LABEL_207:
    ++v120;
    goto LABEL_4;
  }

  return v120;
}

uint64_t sub_23EB803C4()
{
  if (byte_27E383410 == 1)
  {
    return qword_27E383418;
  }

  v0 = 1000000000;
  info = 0;
  if (!mach_timebase_info(&info) && info.numer && info.denom)
  {
    v0 = 1000000000 * info.denom / info.numer;
  }

  qword_27E383418 = v0;
  byte_27E383410 = 1;
  return v0;
}

uint64_t sub_23EB80448(tm *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 4294960591;
  }

  memset(&v10.tm_wday, 0, 32);
  v9 = 0;
  if (!a1)
  {
    v9 = time(0);
    if (v9 == -1)
    {
      return 4294960596;
    }

    a1 = gmtime(&v9);
    if (!a1)
    {
      return 4294960561;
    }
  }

  v3 = *&a1->tm_sec;
  v4 = *&a1->tm_mon;
  v5 = *&a1->tm_isdst;
  v11.tm_zone = a1->tm_zone;
  *&v11.tm_mon = v4;
  *&v11.tm_isdst = v5;
  *&v11.tm_sec = v3;
  v9 = mktime(&v11);
  if (v9 == -1)
  {
    return 4294960596;
  }

  *&v10.tm_mon = 0x6500000000;
  *&v10.tm_sec = xmmword_23EC21E10;
  v10.tm_isdst = -1;
  v6 = mktime(&v10);
  if (v6 == -1)
  {
    return 4294960596;
  }

  v7 = difftime(v9, v6);
  if (v7 < 0.0)
  {
    return 4294960586;
  }

  result = 0;
  *a2 = v7;
  return result;
}

uint64_t sub_23EB80544(unsigned __int8 *a1, int *a2)
{
  v14 = 0;
  v15 = 0;
  result = sub_23EB8069C(a1, "days", &v15, &v14, 0);
  if (result == -6727)
  {
    v12 = 127;
LABEL_33:
    result = 0;
    *a2 = v12;
    return result;
  }

  if (result)
  {
    return result;
  }

  if (v14 == 7)
  {
    v4 = *v15;
    if ((v4 | 0x40) == 0x6D)
    {
      v5 = v15[1];
      if (v5 == 116 || v5 == 45)
      {
        v6 = v15[2];
        if (v6 == 119 || v6 == 45)
        {
          v7 = v15[3];
          if (v7 == 116 || v7 == 45)
          {
            v8 = v15[4];
            if (v8 == 102 || v8 == 45)
            {
              v9 = v15[5];
              if (v9 == 115 || v9 == 45)
              {
                v10 = v15[6];
                if (v10 == 115 || v10 == 45)
                {
                  v11 = v4 == 45;
                  v12 = v4 != 45;
                  if (v11)
                  {
                    v13 = 2;
                  }

                  else
                  {
                    v13 = 3;
                  }

                  if (v5 != 45)
                  {
                    v12 = v13;
                  }

                  if (v6 != 45)
                  {
                    v12 |= 4u;
                  }

                  if (v7 != 45)
                  {
                    v12 |= 8u;
                  }

                  if (v8 != 45)
                  {
                    v12 |= 0x10u;
                  }

                  if (v9 != 45)
                  {
                    v12 |= 0x20u;
                  }

                  if (v10 != 45)
                  {
                    v12 |= 0x40u;
                  }

                  goto LABEL_33;
                }
              }
            }
          }
        }
      }
    }
  }

  return 4294960554;
}

uint64_t sub_23EB8069C(unsigned __int8 *a1, unsigned __int8 *a2, void *a3, void *a4, void *a5)
{
  v10 = MEMORY[0x277D85DE0];
  do
  {
    do
    {
      v11 = a1;
      v12 = *a1;
      if (v12 < 0)
      {
        v13 = __maskrune(*a1, 0x4000uLL);
      }

      else
      {
        v13 = *(v10 + 4 * v12 + 60) & 0x4000;
      }

      ++a1;
    }

    while (v13);
    if (!v12)
    {
      return 4294960569;
    }

    for (i = 0; ; ++i)
    {
      if (!v11[i])
      {
        return 4294960554;
      }

      if (v11[i] == 61)
      {
        break;
      }
    }

    v15 = &v11[i];
    for (j = 1; ; ++j)
    {
      v17 = v15[j];
      if (!v15[j] || v17 == 59)
      {
        break;
      }
    }

    if (v17 == 59)
    {
      v18 = v11 + 1;
    }

    else
    {
      v18 = v11;
    }

    a1 = &v18[i + j];
  }

  while (sub_23EB7F48C(v11, i, a2));
  v19 = &v11[i];
  if (v17 == 59)
  {
    v20 = v19 + 1;
  }

  else
  {
    v20 = &v11[i];
  }

  if (a3)
  {
    *a3 = v19 + 1;
  }

  if (a4)
  {
    *a4 = j - 1;
  }

  result = 0;
  if (a5)
  {
    *a5 = &v20[j];
  }

  return result;
}

uint64_t sub_23EB807CC(unsigned __int8 *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, _DWORD *a7)
{
  v23 = 0;
  v24 = a1;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  result = sub_23EB8069C(a1, "t", &v23, &v22, &v24);
  if (!result)
  {
    v21 = v23;
    v14 = &v23[v22];
    result = sub_23EB8093C(v23, &v23[v22], &v20 + 1, &v20, &v19 + 1, &v21);
    if (!result)
    {
      if (v21 >= v14 || *v21 != 45)
      {
        return 4294960554;
      }

      result = 4294960586;
      if (HIDWORD(v20) <= 0x17 && v20 <= 0x3B && HIDWORD(v19) <= 0x3D)
      {
        ++v21;
        result = sub_23EB8093C(v21, v14, &v19, &v18 + 1, &v18, &v21);
        if (!result)
        {
          if (v21 != v14)
          {
            return 4294960554;
          }

          v15 = v19;
          result = 4294960586;
          if (v19 <= 0x18)
          {
            v16 = HIDWORD(v18);
            if (HIDWORD(v18) <= 0x3C)
            {
              v17 = v18;
              if (v18 <= 0x3E)
              {
                result = 0;
                *a2 = HIDWORD(v20);
                *a3 = v20;
                *a4 = HIDWORD(v19);
                *a5 = v15;
                *a6 = v16;
                *a7 = v17;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_23EB8093C(_BYTE *a1, unint64_t a2, int *a3, int *a4, int *a5, void *a6)
{
  if (a1 < a2)
  {
    v6 = 0;
    v7 = a1;
    while (1)
    {
      v8 = *v7;
      if ((v8 - 48) > 9)
      {
        break;
      }

      v6 = v8 + 10 * v6 - 48;
      if (++v7 == a2)
      {
        if (a2 == a1)
        {
          return 4294960554;
        }

        v9 = 0;
LABEL_7:
        v7 = a2;
LABEL_16:
        if (v7 < a2 && *v7 == 58)
        {
          if ((v7 + 1) >= a2)
          {
            return 4294960554;
          }

          v12 = 0;
          v13 = a2 - v7;
          v14 = 1;
          ++v7;
          while (1)
          {
            v15 = *v7;
            if ((v15 - 48) > 9)
            {
              break;
            }

            v12 = v15 + 10 * v12 - 48;
            ++v14;
            ++v7;
            if (v13 == v14)
            {
              v14 = v13;
              v7 = a2;
              break;
            }
          }

          if (v14 == 1)
          {
            return 4294960554;
          }
        }

        else
        {
          v12 = 0;
        }

        if (a3)
        {
          *a3 = v6;
        }

        if (a4)
        {
          *a4 = v9;
        }

        if (a5)
        {
          *a5 = v12;
        }

        result = 0;
        if (a6)
        {
          *a6 = v7;
        }

        return result;
      }
    }

    if (v7 == a1)
    {
      return 4294960554;
    }

    if (v8 != 58)
    {
      v9 = 0;
      goto LABEL_16;
    }

    if ((v7 + 1) < a2)
    {
      v9 = 0;
      v10 = 1;
      while (1)
      {
        v11 = v7[v10];
        if ((v11 - 48) > 9)
        {
          break;
        }

        v9 = v11 + 10 * v9 - 48;
        if (&v7[++v10] >= a2)
        {
          goto LABEL_7;
        }
      }

      if (v10 != 1)
      {
        v7 += v10;
        goto LABEL_16;
      }
    }
  }

  return 4294960554;
}

uint64_t sub_23EB80AA0(char *__s, char *a2, char **a3, char **a4)
{
  v6 = __s;
  if (!a2)
  {
    a2 = &__s[strlen(__s)];
  }

  if (a2 <= v6)
  {
    goto LABEL_14;
  }

  v7 = v6;
  while (1)
  {
    v8 = *v7;
    if (v8 <= 0x3F && ((1 << v8) & 0x8400800800000000) != 0)
    {
      break;
    }

    if (++v7 == a2)
    {
      v7 = a2;
      break;
    }
  }

  if (v8 == 58)
  {
    v10 = v7 + 1;
  }

  else
  {
LABEL_14:
    v7 = 0;
    v10 = v6;
    v6 = 0;
  }

  if (a2 - v10 >= 2 && *v10 == 47 && v10[1] == 47)
  {
    v11 = v10 + 2;
    if (v10 + 2 >= a2)
    {
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v17 = v10 + 2;
    }

    else
    {
      v12 = 2;
      while (1)
      {
        v13 = v10[v12];
        v14 = v13 > 0x3F;
        v15 = (1 << v13) & 0x8000800800000000;
        if (!v14 && v15 != 0)
        {
          break;
        }

        if (a2 - v10 == ++v12)
        {
          v12 = a2 - v10;
          break;
        }
      }

      v17 = &v10[v12];
      if (v12 < 3)
      {
LABEL_31:
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 0;
      }

      else
      {
        v18 = 2;
        while (v10[v18] != 64)
        {
          if (v12 == ++v18)
          {
            goto LABEL_31;
          }
        }

        v35 = &v10[v18];
        if (v18 < 3)
        {
          v21 = 0;
          v22 = 0;
          v20 = v10 + 2;
        }

        else
        {
          v20 = v10 + 2;
          v21 = (v10 + 2);
          while (1)
          {
            v36 = *v21++;
            if (v36 == 58)
            {
              break;
            }

            v20 = v21;
            if (v21 >= v35)
            {
              v22 = 0;
              v20 = v21;
              v21 = 0;
              goto LABEL_69;
            }
          }

          v22 = &v10[v18];
        }

LABEL_69:
        v19 = v10 + 2;
        v11 = v35 + 1;
      }
    }

    v10 = v17;
    v23 = v17;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v11 = 0;
    v23 = 0;
    v17 = v10;
  }

  if (v10 >= a2)
  {
    v27 = 0;
    v29 = 0;
    v26 = 0;
    v30 = v17;
    v25 = v10;
  }

  else
  {
    v24 = (a2 - v17);
    v25 = v10;
    while (1)
    {
      v26 = *v25;
      if (v26 == 35 || v26 == 63)
      {
        break;
      }

      ++v25;
      if (!--v24)
      {
        v25 = &v10[a2 - v17];
        break;
      }
    }

    if (v26 == 63)
    {
      v27 = (v25 + 1);
      if (v25 + 1 >= a2)
      {
        v26 = 63;
        v29 = (v25 + 1);
      }

      else
      {
        v28 = &a2[~v25];
        v29 = (v25 + 1);
        while (1)
        {
          v26 = *v29;
          if (v26 == 35)
          {
            break;
          }

          ++v29;
          if (!--v28)
          {
            v29 = a2;
            break;
          }
        }
      }

      v30 = v25;
      v25 = v29;
    }

    else
    {
      v27 = 0;
      v29 = 0;
      v30 = v25;
    }
  }

  if (v26 == 35)
  {
    v31 = (v25 + 1);
  }

  else
  {
    v31 = 0;
  }

  *a3 = v6;
  a3[1] = (v7 - v6);
  if (v26 == 35)
  {
    v32 = a2;
  }

  else
  {
    v32 = 0;
  }

  a3[2] = v19;
  a3[3] = (v20 - v19);
  a3[4] = v21;
  a3[5] = (v22 - v21);
  a3[6] = v11;
  a3[7] = (v23 - v11);
  a3[8] = v10;
  a3[9] = (v30 - v17);
  a3[10] = v27;
  a3[11] = (v29 - v27);
  a3[12] = v31;
  a3[13] = (v32 - v31);
  if (a4)
  {
    if (v26 == 35)
    {
      v33 = a2;
    }

    else
    {
      v33 = v25;
    }

    *a4 = v33;
  }

  return 0;
}

uint64_t sub_23EB81F28(CFDictionaryRef theDict, void *a2, void *a3)
{
  v13 = 0;
  result = 4294960591;
  if (theDict && a2 && a3)
  {
    Value = CFDictionaryGetValue(theDict, @"IE");
    if (Value)
    {
      v8 = Value;
      BytePtr = CFDataGetBytePtr(Value);
      if (!BytePtr)
      {
        return 4294960568;
      }

      v10 = BytePtr;
      v12 = 0;
      Length = CFDataGetLength(v8);
      result = sub_23EB78C88(v10, &v10[Length], &v13, &v12);
      if (result)
      {
        return result;
      }

      if (v13)
      {
        result = 0;
        *a2 = v13;
        *a3 = v12;
      }

      else
      {
        return 4294960568;
      }
    }

    else
    {
      return 4294960569;
    }
  }

  return result;
}

double sub_23EB844B8(uint64_t a1, int a2, void *a3, size_t a4, _OWORD *a5)
{
  v14 = *MEMORY[0x277D85DE8];
  __memcpy_chk();
  sub_23EB84650(key, a2, a3, a4, 1, &v11);
  sub_23EB84650(key, a2, a3, a4, 2, &v12 + 4);
  result = *&v11;
  v10 = v12;
  *a5 = v11;
  a5[1] = v10;
  return result;
}

BOOL sub_23EB84580(char *__s, uint64_t a2)
{
  v2 = __s;
  v9 = *MEMORY[0x277D85DE8];
  if ((a2 - 8) > 0x37)
  {
    if (a2 != 64 || strspn(__s, "0123456789abcdefABCDEF") != 64)
    {
      return 0;
    }

    v7 = 0;
    return !sub_23EB7EFEC(v2, 64, 32, v8, &v7) && v7 == 32;
  }

  else
  {
    do
    {
      v4 = *v2++;
      v3 = v4;
    }

    while ((v4 - 127) > 0xFFFFFFA0);
    return v3 == 0;
  }
}

void sub_23EB84650(void *key, int a2, void *__src, size_t __n, char a5, uint64_t a6)
{
  v8 = __n;
  v18 = *MEMORY[0x277D85DE8];
  if (__n >= 1)
  {
    memcpy(&__dst, __src, __n);
  }

  v11 = &__dst + v8;
  *v11 = 0;
  v11[2] = 0;
  v11[3] = a5;
  CCHmac(0, key, a2, &__dst, v8 + 4, &v14);
  v12 = 0;
  *a6 = v14;
  *(a6 + 16) = v15;
  do
  {
    CCHmac(0, key, a2, &v14, 0x14uLL, &__dst);
    v13 = 0;
    v14 = __dst;
    v15 = v17;
    do
    {
      *(a6 + v13) ^= *(&__dst + v13);
      ++v13;
    }

    while (v13 != 20);
    ++v12;
  }

  while (v12 != 4095);
}

dispatch_group_t sub_23EB847B0()
{
  qword_27E383430 = dispatch_queue_create("com.apple.airport.airportutility.setupcontroller.keychain", 0);
  result = dispatch_group_create();
  qword_27E383438 = result;
  return result;
}

void sub_23EB8491C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v130 = *MEMORY[0x277D85DE8];
  v99 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  if (!a4)
  {
    goto LABEL_94;
  }

  v8 = a4;
  v13 = objc_msgSend_setupDelegates(a4, v9, v10);
  if (!a2)
  {
    objc_msgSend_updateLastHeardFromDevice(a4, v11, v12);
  }

  v14 = objc_msgSend_objectForKey_(a3, v11, @"BSAssistantProgressKey_DictionaryParameter");
  v17 = v14;
  if (a1 == 135)
  {
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v18 = objc_msgSend_copy(v13, v15, v16);
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v120, v129, 16);
    if (v20)
    {
      v21 = v20;
      v22 = *v121;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v121 != v22)
          {
            objc_enumerationMutation(v18);
          }

          v24 = *(*(&v120 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            objc_msgSend_setupMonitoringMessage_paramDict_forController_(v24, v25, a2, v17, a4);
          }
        }

        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v25, &v120, v129, 16);
      }

      while (v21);
    }

    goto LABEL_94;
  }

  if ((a1 - 5) <= 1 && v14)
  {
    v26 = sub_23EB6D22C(v14, 1, v16);
LABEL_21:
    v29 = v26;
    v28 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x277CBEB38], v27, v17);
    objc_msgSend_setObject_forKey_(v28, v30, v29, @"BSAssistantProgressKey_StringParameter");
    goto LABEL_22;
  }

  v28 = a3;
  if ((a1 - 7) <= 1)
  {
    v28 = a3;
    if (v14)
    {
      v26 = sub_23EB6D18C(v14, 1, v16);
      goto LABEL_21;
    }
  }

LABEL_22:
  v97 = a3;
  v98 = v13;
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v31 = objc_msgSend_copy(v13, v15, v16);
  v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v116, v128, 16);
  if (v33)
  {
    v36 = v33;
    v37 = *v117;
    do
    {
      for (j = 0; j != v36; ++j)
      {
        if (*v117 != v37)
        {
          objc_enumerationMutation(v31);
        }

        v39 = *(*(&v116 + 1) + 8 * j);
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_setupProgressUpdated_status_paramDict_forController_(v39, v40, a1, a2, v28, a4);
        }
      }

      v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v40, &v116, v128, 16);
    }

    while (v36);
  }

  if (a1 <= 27)
  {
    v42 = v97;
    v41 = v98;
    switch(a1)
    {
      case 0xE:
        goto LABEL_94;
      case 0xF:
        if (a2)
        {
          v87 = 0;
        }

        else
        {
          v87 = objc_msgSend_targetBaseInfoDict(a4, v34, v35);
        }

        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        v88 = objc_msgSend_copy(v98, v34, v35);
        v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(v88, v89, &v112, v127, 16);
        if (v90)
        {
          v92 = v90;
          v93 = *v113;
          do
          {
            for (k = 0; k != v92; ++k)
            {
              if (*v113 != v93)
              {
                objc_enumerationMutation(v88);
              }

              v95 = *(*(&v112 + 1) + 8 * k);
              if (objc_opt_respondsToSelector())
              {
                objc_msgSend_setupCompleteWithResult_baseStationInfo_forController_(v95, v96, a2, v87, a4);
              }
            }

            v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(v88, v96, &v112, v127, 16);
          }

          while (v92);
        }

        objc_msgSend_handleSetupComplete_(a4, v91, a2);
        break;
      case 0x13:
        if (!objc_msgSend_performingManualRead(a4, v34, v35))
        {
          goto LABEL_94;
        }

        if (!a2 || a2 == -16)
        {
          objc_msgSend_updateRememberKeychainFlagsButSkipBasePassword_(a4, v43, 1);
        }

        objc_msgSend_updateKeychainWithPasswordsWithStatus_(a4, v43, a2);
        break;
      default:
        goto LABEL_47;
    }

LABEL_93:
    objc_msgSend_handleBusyComplete(a4, v44, v45);
    goto LABEL_94;
  }

  v42 = v97;
  v41 = v98;
  if (a1 <= 29)
  {
    if (a1 == 28)
    {
      v58 = objc_msgSend_objectForKey_(v97, v34, @"BSAssistantProgressKey_DictionaryParameter");
      v60 = objc_msgSend_objectForKey_(v97, v59, @"kBSAssistantProgressKey_NumberParameter");
      v63 = objc_msgSend_integerValue(v60, v61, v62);
      v104 = 0u;
      v105 = 0u;
      v106 = 0u;
      v107 = 0u;
      v66 = objc_msgSend_copy(v98, v64, v65);
      v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v66, v67, &v104, v125, 16);
      if (v68)
      {
        v69 = v68;
        v70 = *v105;
        do
        {
          for (m = 0; m != v69; ++m)
          {
            if (*v105 != v70)
            {
              objc_enumerationMutation(v66);
            }

            v72 = *(*(&v104 + 1) + 8 * m);
            if (objc_opt_respondsToSelector())
            {
              objc_msgSend_setupRPCResponseWithResult_rpcSelector_responseDict_forController_(v72, v73, a2, v63, v58, a4);
            }
          }

          v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v66, v73, &v104, v125, 16);
        }

        while (v69);
      }
    }

    goto LABEL_94;
  }

  if (a1 == 30)
  {
    v74 = objc_msgSend_objectForKey_(v97, v34, @"BSAssistantProgressKey_DictionaryParameter");
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v77 = objc_msgSend_copy(v98, v75, v76);
    v79 = objc_msgSend_countByEnumeratingWithState_objects_count_(v77, v78, &v108, v126, 16);
    if (v79)
    {
      v82 = v79;
      v83 = *v109;
      do
      {
        for (n = 0; n != v82; ++n)
        {
          if (*v109 != v83)
          {
            objc_enumerationMutation(v77);
          }

          v85 = *(*(&v108 + 1) + 8 * n);
          if (objc_opt_respondsToSelector())
          {
            objc_msgSend_setupTaskResponseWithResult_responseDict_forController_(v85, v86, a2, v74, a4);
          }
        }

        v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(v77, v86, &v108, v126, 16);
      }

      while (v82);
    }

    objc_msgSend_handleTaskComplete(a4, v80, v81);
    goto LABEL_93;
  }

  if (a1 == 36)
  {
    if (!a2)
    {
      objc_msgSend_updateKeychainWithPasswords(a4, v34, v35);
    }

    goto LABEL_94;
  }

LABEL_47:
  if (a1 == 34 && !a2)
  {
    v46 = objc_msgSend_objectForKey_(v42, v34, @"BSAssistantProgressKey_DictionaryParameter");
    if (v46)
    {
      v49 = v46;
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v50 = objc_msgSend_copy(v41, v47, v48);
      v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v51, &v100, v124, 16);
      if (v52)
      {
        v53 = v52;
        v54 = *v101;
        do
        {
          for (ii = 0; ii != v53; ++ii)
          {
            if (*v101 != v54)
            {
              objc_enumerationMutation(v50);
            }

            v56 = *(*(&v100 + 1) + 8 * ii);
            if (objc_opt_respondsToSelector())
            {
              objc_msgSend_setupMonitoredSettingChanged_paramDict_forController_(v56, v57, 0, v49, a4);
            }
          }

          v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v57, &v100, v124, 16);
        }

        while (v53);
      }
    }
  }

LABEL_94:
}

void sub_23EB86590(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_keychainPasswordForBaseStation_(AUSetupController, a2, *(a1 + 40));
  objc_msgSend_setKeychainBasePassword_(*(a1 + 32), v4, v3);
  v5 = *(a1 + 40);

  CFRelease(v5);
}

uint64_t sub_23EB86828(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_keychainBasePassword(*(a1 + 40), a2, a3);
  result = objc_msgSend_isEqualToString_(v4, v6, v5);
  if ((result & 1) == 0)
  {
    result = objc_msgSend_updateKeychainBasePassword_forMACAddress_withBaseName_(AUSetupController, v8, *(a1 + 32), *(a1 + 48), *(a1 + 56));
    v14 = result;
    if (dword_27E3818B0 <= 800)
    {
      if (dword_27E3818B0 != -1 || (result = sub_23EB74AC8(&dword_27E3818B0, 0x320u), result))
      {
        result = sub_23EB75374(&dword_27E3818B0, "[AUSetupController saveKeychainBasePassword]_block_invoke", 800, "updateKeychainBasePassword err: %#m\n", v10, v11, v12, v13, v14);
      }
    }

    if (!v14)
    {
      v16 = *(a1 + 32);
      v15 = *(a1 + 40);

      return objc_msgSend_setKeychainBasePassword_(v15, v9, v16);
    }
  }

  return result;
}

void sub_23EB869DC(uint64_t a1, const char *a2)
{
  if (objc_msgSend_removeKeychainPasswordForBaseStation_(AUSetupController, a2, *(a1 + 40)) != -6727)
  {
    objc_msgSend_setKeychainBasePassword_(*(a1 + 32), v3, 0);
  }

  v4 = *(a1 + 40);

  CFRelease(v4);
}

uint64_t sub_23EB86BB8(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CBEAC0]);
  v4 = objc_msgSend_initWithObjectsAndKeys_(v2, v3, *(a1 + 32), @"SSID_STR", 0);
  NetworkPassword = objc_msgSend_getNetworkPassword_(WiFiUtils, v5, v4);

  if (objc_msgSend_BOOLValue(*(a1 + 40), v7, v8))
  {
    v11 = NetworkPassword == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    if (!objc_msgSend_length(*(a1 + 48), v9, v10))
    {
      goto LABEL_12;
    }

    v12 = objc_alloc(MEMORY[0x277CBEAC0]);
    v14 = objc_msgSend_initWithObjectsAndKeys_(v12, v13, *(a1 + 48), @"SSID_STR", 0);
    NetworkPassword = objc_msgSend_getNetworkPassword_(WiFiUtils, v15, v14);
  }

  if (NetworkPassword)
  {
    v16 = *(a1 + 56);

    return MEMORY[0x2821F9670](v16, sel_setKeychainWiFiPassword_, NetworkPassword);
  }

LABEL_12:
  v17 = *(a1 + 56);

  return objc_msgSend_setRememberWiFiPassword_(v17, v9, 0);
}

uint64_t sub_23EB86E48(uint64_t a1)
{
  v2 = sub_23EC0C1A0();
  result = objc_msgSend_BOOLValue(*(a1 + 40), v3, v4);
  if (result)
  {
    result = objc_msgSend_length(*(a1 + 48), v6, v7);
    if (result)
    {
      result = sub_23EC0C1A0();
      v2 = result;
    }
  }

  if (!v2)
  {
    v8 = *(a1 + 56);

    return MEMORY[0x2821F9670](v8, sel_setKeychainWiFiPassword_, 0);
  }

  return result;
}

void sub_23EB8891C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v21 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  if (a4)
  {
    v10 = objc_msgSend_delegate(a4, v8, v9);
    if (v10)
    {
      v12 = v10;
      if (objc_opt_respondsToSelector())
      {
        v14 = objc_msgSend_objectForKey_(a3, v13, @"BSAssistantProgressKey_DictionaryParameter");
        if ((a1 - 5) <= 1 && v14)
        {
          v17 = sub_23EB6D22C(v14, 1, v16);
        }

        else if ((a1 - 7) <= 1 && v14)
        {
          v17 = sub_23EB6D18C(v14, 1, v16);
        }

        else
        {
          v17 = objc_msgSend_objectForKey_(a3, v15, @"BSAssistantProgressKey_StringParameter");
        }

        objc_msgSend_stepByStepProgressUpdated_status_paramString_(v12, v18, a1, a2, v17);
      }

      if (a1 == 15)
      {
        v19 = objc_msgSend_objectForKey_(a3, v13, @"BSAssistantProgressKey_DictionaryParameter");
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_stepByStepCompleteWithResult_paramDict_(v12, v20, a2, v19);
        }
      }
    }

    else if (a1 == 15)
    {
      objc_msgSend_objectForKey_(a3, v11, @"BSAssistantProgressKey_DictionaryParameter");
    }
  }
}

uint64_t sub_23EB88F50(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  *a1 = &unk_285145328;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = time(0);
  *(a1 + 120) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 200) = 0;
  *(a1 + 384) = 0;
  *(a1 + 386) = 0;
  *(a1 + 456) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 223) = 0;
  *(a1 + 232) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 344) = 0;
  *(a1 + 256) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 328) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 366) = 0;
  pthread_mutexattr_init(&v9);
  pthread_mutexattr_settype(&v9, 2);
  pthread_mutex_init((a1 + 392), &v9);
  v2 = *MEMORY[0x277CBECE8];
  *(a1 + 32) = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(a1 + 40) = CFDictionaryCreateMutable(v2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(a1 + 48) = CFDictionaryCreateMutable(v2, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  sub_23EB6F348(v2, (a1 + 56), "{%kO=%i%kO=[{%kO={%kO={}%kO=[]}}]}", v3, v4, v5, v6, v7, @"Version");
  *(a1 + 336) = 0;
  sub_23EB89214(a1);
  return a1;
}

void sub_23EB89168(_Unwind_Exception *a1)
{
  sub_23EBADAC4(v2);
  if (*(v1 + 31) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_23EB89214(uint64_t a1)
{
  *(a1 + 384) = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    CFDictionaryRemoveAllValues(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    CFDictionaryRemoveAllValues(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    CFDictionaryRemoveAllValues(v4);
  }

  sub_23EB89280(a1);
  *(a1 + 226) = 0;

  return sub_23EB8CE30(a1);
}

uint64_t sub_23EB89280(uint64_t result)
{
  v1 = *(result + 104);
  if (v1)
  {
    v2 = result;
    do
    {
      CFRelease(*(*(v2[9] + (((v1 + v2[12] - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v1 + v2[12] - 1) & 0x1FF)));
      --v2[13];
      result = sub_23EBAE648(v2 + 8, 1);
      v1 = v2[13];
    }

    while (v1);
  }

  return result;
}

void sub_23EB892F4(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 336);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    *(a1 + 336) = cf;
    if (cf)
    {

      CFRetain(cf);
    }
  }
}

uint64_t sub_23EB89354(uint64_t a1, int a2)
{
  value = 0;
  valuePtr = 0;
  propertyList = 0;
  if (a2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_23EB8BFFC(a1, 1349676902, &propertyList, v4);
  if (v5)
  {
    goto LABEL_5;
  }

  v7 = propertyList;
  v8 = *MEMORY[0x277CBECE8];
  if (propertyList)
  {
    propertyList = CFPropertyListCreateDeepCopy(*MEMORY[0x277CBECE8], propertyList, 2uLL);
    CFRelease(v7);
    Mutable = propertyList;
    if (!propertyList)
    {
      goto LABEL_27;
    }
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    propertyList = Mutable;
    if (!Mutable)
    {
      goto LABEL_27;
    }
  }

  v10 = CFDictionaryGetValue(Mutable, @"profiles");
  if (!v10)
  {
    v11 = CFArrayCreateMutable(v8, 0, MEMORY[0x277CBF128]);
    if (!v11)
    {
      goto LABEL_27;
    }

    v10 = v11;
    CFDictionarySetValue(propertyList, @"profiles", v11);
    CFRelease(v10);
  }

  if (CFArrayGetCount(v10) < 1)
  {
    v5 = sub_23EB8C900(a1, qword_27E383810, &value);
    if (v5)
    {
LABEL_5:
      v6 = v5;
      goto LABEL_28;
    }

    CFArrayAppendValue(v10, value);
    CFRelease(value);
    ValueAtIndex = value;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v10, 0);
    value = ValueAtIndex;
    if (a2)
    {
      *(a1 + 372) = 1;
    }
  }

  if (!CFDictionaryGetValue(ValueAtIndex, @"name"))
  {
    v13 = CFStringCreateWithCString(v8, qword_27E383810, 0x8000100u);
    if (!v13)
    {
      v6 = 4294960554;
      goto LABEL_28;
    }

    v14 = v13;
    CFDictionarySetValue(value, @"name", v13);
    CFRelease(v14);
  }

  v15 = CFDictionaryGetValue(propertyList, @"currentProfile");
  if (!v15)
  {
    *(a1 + 368) = 0;
    v16 = CFNumberCreate(v8, kCFNumberIntType, (a1 + 368));
    if (v16)
    {
      v17 = v16;
      CFDictionarySetValue(propertyList, @"currentProfile", v16);
      CFRelease(v17);
      goto LABEL_26;
    }

LABEL_27:
    v6 = 4294960568;
    goto LABEL_28;
  }

  if (CFNumberGetValue(v15, kCFNumberIntType, &valuePtr))
  {
    *(a1 + 368) = valuePtr;
LABEL_26:
    v5 = sub_23EB8A18C(a1, 1349676902, propertyList, 0);
    goto LABEL_5;
  }

  v6 = 4294960553;
LABEL_28:
  if (propertyList)
  {
    CFRelease(propertyList);
  }

  return v6;
}

uint64_t sub_23EB895C4(uint64_t a1)
{
  *a1 = &unk_285145328;
  if (*(a1 + 40))
  {
    v8 = a1;
    pthread_mutex_lock((a1 + 392));
    ++*(a1 + 456);
    CFRelease(*(a1 + 40));
    *(a1 + 40) = 0;
    sub_23EBADBC0(&v8);
  }

  if (*(a1 + 32))
  {
    v8 = a1;
    pthread_mutex_lock((a1 + 392));
    ++*(a1 + 456);
    CFRelease(*(a1 + 32));
    *(a1 + 32) = 0;
    sub_23EBADBC0(&v8);
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 48) = 0;
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 56) = 0;
  }

  sub_23EB89280(a1);
  v4 = *(a1 + 336);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 336) = 0;
  }

  pthread_mutex_destroy((a1 + 392));
  if (*(a1 + 367) < 0)
  {
    operator delete(*(a1 + 344));
  }

  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

  if (*(a1 + 311) < 0)
  {
    operator delete(*(a1 + 288));
  }

  if (*(a1 + 287) < 0)
  {
    operator delete(*(a1 + 264));
  }

  v5 = *(a1 + 232);
  if (v5)
  {
    *(a1 + 240) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 200);
  if (v6)
  {
    *(a1 + 208) = v6;
    operator delete(v6);
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  sub_23EBADAC4((a1 + 64));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_23EB89768(uint64_t a1)
{
  sub_23EB895C4(a1);

  JUMPOUT(0x23EF1F030);
}

uint64_t sub_23EB897A0(uint64_t a1, int a2)
{
  v23 = 0;
  v22 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v21 = 0;
  v4 = sub_23EB89D74(a1, 1937326416, &v23 + 4, 0);
  if (!v4)
  {
    v5 = sub_23EB4BDDC(HIDWORD(v23));
    *(a1 + 256) = v5;
    if (v5)
    {
      v10 = 0;
    }

    else
    {
      v10 = dword_27E381AB0 <= 5000;
    }

    if (v10 && (dword_27E381AB0 != -1 || sub_23EB74AC8(&dword_27E381AB0, 0x1388u)))
    {
      sub_23EB75374(&dword_27E381AB0, "ACPStatus BaseStation::Prepare(BOOL)", 5000, "### no product family for product ID %d\n", v6, v7, v8, v9, HIDWORD(v23));
    }

    v11 = HIDWORD(v23);
    v4 = sub_23EB89D74(a1, 1717907505, &v23, 0);
    if (!v4)
    {
      if (v11 <= 0x67)
      {
        LODWORD(v23) = v23 | 0x1000000;
      }

      if (HIDWORD(v23) <= 1)
      {
        LODWORD(v23) = v23 | 0x2000000;
      }

      if (v11 <= 0x67)
      {
        LODWORD(v23) = v23 | 0x7C000000;
        if (HIDWORD(v23))
        {
LABEL_17:
          if (!a2)
          {
            goto LABEL_72;
          }

          goto LABEL_21;
        }
      }

      else if (HIDWORD(v23))
      {
        goto LABEL_17;
      }

      LODWORD(v23) = v23 | 0x1F880;
      if (!a2)
      {
LABEL_72:
        v13 = HIDWORD(v23);
        if (HIDWORD(v23) == 102)
        {
          sub_23EB89E10(a1, 0x61546E73u);
          sub_23EB89E10(a1, 0x4C454449u);
          sub_23EB89E10(a1, 0x4C454443u);
          v13 = HIDWORD(v23);
        }

        v14 = v13 - 104;
        if (v14 <= 5 && v14 != 3)
        {
          sub_23EB89E10(a1, 0x52544370u);
        }

        v4 = sub_23EB89D74(a1, 1937327724, &v22, 0);
        if (!v4)
        {
          if ((*(a1 + 224) & 8) != 0 || (v22 & 8) != 0 || HIDWORD(v23) == 104)
          {
            sub_23EB89E10(a1, 0x4C454449u);
          }

          sub_23EB89F10(a1, 1330463043);
          if (*(a1 + 385) == 1)
          {
            cf = 0;
            if (!sub_23EB8A04C(a1, "raMA", -1, &cf, 2))
            {
              sub_23EB8A18C(a1, 1918979393, cf, 2);
            }

            *(a1 + 385) = 0;
            if (cf)
            {
              CFRelease(cf);
            }
          }

          sub_23EB8A428(a1, 1);
          if (a2)
          {
            *(a1 + 260) = -1;
            v4 = sub_23EB8BD6C(a1, 1836013171, __p, 0);
            v15 = (a1 + 260);
            if (v21 >= 0)
            {
              v16 = __p;
            }

            else
            {
              v16 = __p[0];
            }

            v17 = strstr(v16, "APPLE VERSION ");
            if (v17)
            {
              sscanf(v17 + 14, "%u", a1 + 260);
            }

            if ((*v15 & 0x80000000) != 0)
            {
              *v15 = 7;
            }

            if (sub_23EB8BE08(a1, 1347372333) || (v4 = sub_23EB8BE98(a1, 1769161027, 1, 2), !v4))
            {
              if (sub_23EB8BE08(a1, 1349676902))
              {
                sub_23EB8BF4C(a1);
              }
            }
          }

          else
          {
            v4 = 0;
          }
        }

        goto LABEL_100;
      }

LABEL_21:
      if (v11 <= 0x67)
      {
        v12 = v23;
        if (v23)
        {
          sub_23EB89E10(a1, 0x53416343u);
          v12 = v23;
        }

        if ((v12 & 2) != 0)
        {
          sub_23EB89E10(a1, 0x52654449u);
          v12 = v23;
        }

        if ((v12 & 4) != 0)
        {
          sub_23EB89E10(a1, 0x444D6573u);
          v12 = v23;
        }

        if ((v12 & 8) != 0)
        {
          sub_23EB89E10(a1, 0x4E414F4Cu);
          v12 = v23;
        }

        if ((v12 & 0x10) != 0)
        {
          sub_23EB89E10(a1, 0x4E6F4D57u);
          v12 = v23;
        }

        if ((v12 & 0x20) != 0)
        {
          sub_23EB89E10(a1, 0x41436853u);
          v12 = v23;
        }

        if ((v12 & 0x40) != 0)
        {
          sub_23EB89E10(a1, 0x5261526Fu);
          v12 = v23;
        }

        if ((v12 & 0x80) != 0)
        {
          sub_23EB89E10(a1, 0x53447557u);
          v12 = v23;
        }

        if ((v12 & 0x100) != 0)
        {
          sub_23EB89E10(a1, 0x4D435274u);
          v12 = v23;
        }

        if ((v12 & 0x200) != 0)
        {
          sub_23EB89E10(a1, 0x416C7444u);
          v12 = v23;
        }

        if ((v12 & 0x400) != 0)
        {
          sub_23EB89E10(a1, 0x416C7449u);
          v12 = v23;
        }

        if ((v12 & 0x800) != 0)
        {
          sub_23EB89E10(a1, 0x5750412Du);
          v12 = v23;
        }

        if ((v12 & 0x1000) != 0)
        {
          sub_23EB89E10(a1, 0x4145532Du);
          v12 = v23;
        }

        if ((v12 & 0x2000) != 0)
        {
          sub_23EB89E10(a1, 0x5379734Cu);
          v12 = v23;
        }

        if ((v12 & 0x4000) != 0)
        {
          sub_23EB89E10(a1, 0x4E54502Du);
          v12 = v23;
        }

        if ((v12 & 0x8000) != 0)
        {
          sub_23EB89E10(a1, 0x50726F66u);
          v12 = v23;
        }

        if ((v12 & 0x10000) != 0)
        {
          sub_23EB89E10(a1, 0x42535441u);
          v12 = v23;
        }

        if ((v12 & 0x1000000) != 0)
        {
          sub_23EB89E10(a1, 0x52614D53u);
          v12 = v23;
        }

        if ((v12 & 0x2000000) != 0)
        {
          sub_23EB89E10(a1, 0x52616444u);
          v12 = v23;
        }

        if ((v12 & 0x4000000) != 0)
        {
          sub_23EB89E10(a1, 0x5553422Du);
          v12 = v23;
        }

        if ((v12 & 0x8000000) != 0)
        {
          sub_23EB89E10(a1, 0x54785077u);
          v12 = v23;
        }

        if ((v12 & 0x10000000) != 0)
        {
          sub_23EB89E10(a1, 0x5744532Du);
          v12 = v23;
        }

        if ((v12 & 0x20000000) != 0)
        {
          sub_23EB89E10(a1, 0x4E507241u);
          v12 = v23;
        }

        if ((v12 & 0x40000000) != 0)
        {
          sub_23EB89E10(a1, 0x4E446548u);
          v12 = v23;
        }

        if (v12 < 0)
        {
          sub_23EB89E10(a1, 0x504F452Du);
        }
      }

      goto LABEL_72;
    }
  }

LABEL_100:
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_23EB89D58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EB89D74(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  sub_23EB4BD2C(a2, __s);
  sub_23EB8CCB8(__p, __s);
  v7 = sub_23EB97374(a1, __p, a3, a4);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return v7;
}

void sub_23EB89DF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EB89E10(uint64_t a1, unsigned int a2)
{
  cf = 0;
  if (!sub_23EB8BE08(a1, a2))
  {
    *bytes = 0;
    if (!sub_23EB8BFFC(a1, 1717920116, &cf, 0))
    {
      if (!cf)
      {
        return;
      }

      v4 = CFGetTypeID(cf);
      if (v4 == CFDataGetTypeID())
      {
        v5 = *MEMORY[0x277CBECE8];
        Length = CFDataGetLength(cf);
        MutableCopy = CFDataCreateMutableCopy(v5, Length + 4, cf);
        if (MutableCopy)
        {
          v8 = MutableCopy;
          *bytes = bswap32(a2);
          CFDataAppendBytes(MutableCopy, bytes, 4);
          if (!sub_23EB8A18C(a1, 1717920116, v8, 2))
          {
            sub_23EB8A428(a1, 1);
          }

          CFRelease(v8);
        }
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }
}

void sub_23EB89F10(uint64_t a1, int a2)
{
  cf = 0;
  if (sub_23EB8BE08(a1, a2))
  {
    if (!sub_23EB8BFFC(a1, 1717920116, &cf, 0))
    {
      if (!cf)
      {
        return;
      }

      v4 = CFGetTypeID(cf);
      if (v4 == CFDataGetTypeID())
      {
        BytePtr = CFDataGetBytePtr(cf);
        Length = CFDataGetLength(cf);
        v7 = *MEMORY[0x277CBECE8];
        v8 = CFDataGetLength(cf);
        Mutable = CFDataCreateMutable(v7, v8 - 4);
        if (Mutable)
        {
          v10 = Mutable;
          if (Length >= 4)
          {
            v11 = Length >> 2;
            do
            {
              if (bswap32(*BytePtr) != a2)
              {
                CFDataAppendBytes(v10, BytePtr, 4);
              }

              BytePtr += 4;
              --v11;
            }

            while (v11);
          }

          if (!sub_23EB8A18C(a1, 1717920116, v10, 2))
          {
            sub_23EB8A428(a1, 1);
          }

          CFRelease(v10);
        }
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }
}

uint64_t sub_23EB8A04C(uint64_t a1, char *a2, uint64_t a3, CFMutableDictionaryRef *a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  memset(&v13, 0, sizeof(v13));
  if (a4)
  {
    sub_23EBA33E0(v14, 0x11uLL, a3);
    MEMORY[0x23EF1EFD0](&v13, v14);
    sub_23EB8CCB8(__p, a2);
    sub_23EB90814(&v13, __p, &v13);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    v9 = sub_23EB912D0(a1, &v13, a4, a5);
    if (v9 == -5)
    {
      *a4 = &stru_285145FE8;
      CFRetain(&stru_285145FE8);
      v9 = 0;
    }
  }

  else
  {
    v9 = 4294967292;
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_23EB8A154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EB8A18C(uint64_t a1, uint64_t a2, const __CFString *a3, uint64_t a4)
{
  value = 0;
  v17 = 0;
  v16 = a1;
  pthread_mutex_lock((a1 + 392));
  ++*(a1 + 456);
  sub_23EB4BD2C(a2, cStr);
  v8 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x8000100u);
  if (v8)
  {
    if (sub_23EB8E1B0(a1, a2))
    {
      sub_23EB8CCB8(__p, cStr);
      v9 = sub_23EB92938(a1, __p, a3, a4);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_20;
    }

    if (a3)
    {
      v9 = sub_23EB97254(a1, a2, a3, &value, &v17);
      if (v9 || !value)
      {
        goto LABEL_20;
      }

      __p[0] = 0;
      if (a4 > 1)
      {
        CFDictionarySetValue(*(a1 + 32), v8, value);
        __p[0] = value;
LABEL_17:
        if (v17 == 1)
        {
          CFRelease(value);
        }

        goto LABEL_19;
      }

      if (a2 != 2002862934)
      {
        __p[0] = CFDictionaryGetValue(*(a1 + 32), v8);
        goto LABEL_23;
      }

      v9 = sub_23EB8C68C(a1, 2002862934, __p, 2);
      if (!v9)
      {
LABEL_23:
        v11 = CFDictionaryGetValue(*(a1 + 40), v8);
        v12 = v11;
        if (v11 && !CFEqual(v11, value) || !__p[0] || !CFEqual(__p[0], value))
        {
          v13 = !sub_23EB972F8(a1, a2);
          if (a2 == 1466517097)
          {
            LOBYTE(v13) = 0;
          }

          if (!v13)
          {
            CFDictionarySetValue(*(a1 + 40), v8, value);
            v12 = value;
          }
        }

        if (__p[0])
        {
          if (v12)
          {
            if (CFEqual(v12, __p[0]))
            {
              v9 = sub_23EB8A18C(a1, a2, 0, 1);
              if (v9)
              {
                goto LABEL_20;
              }
            }
          }
        }

        goto LABEL_17;
      }
    }

    else
    {
      if (a4 <= 1)
      {
        CFDictionaryRemoveValue(*(a1 + 40), v8);
LABEL_19:
        v9 = 0;
        goto LABEL_20;
      }

      v9 = 4294960591;
    }

LABEL_20:
    CFRelease(v8);
    goto LABEL_21;
  }

  v9 = 4294960568;
LABEL_21:
  sub_23EBADBC0(&v16);
  return v9;
}

void sub_23EB8A428(uint64_t a1, char a2)
{
  if ((a2 & 1) != 0 || *(a1 + 208) == *(a1 + 200))
  {
    v51 = 0;
    if (!sub_23EB89D74(a1, 1752641585, &v51, 0))
    {
      v3 = sub_23EB8BE08(a1, 2003390540);
      v4 = sub_23EB8BE08(a1, 1382368329);
      v50 = v51;
      v49 = sub_23EB8BE08(a1, 1768961614);
      v5 = sub_23EB8BE08(a1, 1765164850);
      v48 = sub_23EB8BE08(a1, 1198748750);
      v6 = 1651861868;
      v7 = 0;
      do
      {
        v8 = *(&qword_23EC201D8 + v7 + 12);
        v7 += 12;
      }

      while (v8);
      v10 = (a1 + 200);
      v9 = *(a1 + 200);
      v12 = (a1 + 208);
      v11 = *(a1 + 208);
      if (v11 - v9 >= v7)
      {
        if (v11 - v9 > v7)
        {
          *v12 = v9 + v7;
        }
      }

      else
      {
        sub_23EBADE2C((a1 + 200), v9 - v11 + v7);
        v6 = 1651861868;
      }

      v13 = 0;
      v14 = &qword_23EC201D8;
      v15 = (v50 & 1) == 0 && v4;
      v47 = v15;
      while (1)
      {
        if (v6 > 1885688653)
        {
          if (v6 > 1936611158)
          {
            if (v6 <= 2002862896)
            {
              if (v6 > 1937330257)
              {
                if (v6 <= 1937331825)
                {
                  if (v6 > 1937331018)
                  {
                    if (v6 <= 1937331059)
                    {
                      if (v6 == 1937331019)
                      {
                        goto LABEL_448;
                      }

                      v32 = 21326;
                      goto LABEL_322;
                    }

                    if (v6 != 1937331060)
                    {
                      v32 = 21844;
LABEL_322:
                      v31 = v32 | 0x73790000;
                      goto LABEL_396;
                    }

LABEL_412:
                    v21 = a1;
                    v39 = 21364;
LABEL_413:
                    v22 = v39 | 0x53790000;
                    goto LABEL_439;
                  }

                  if (v6 == 1937330258 || v6 == 1937330263)
                  {
                    goto LABEL_448;
                  }

                  v30 = 21093;
                  goto LABEL_289;
                }

                if (v6 <= 1953066361)
                {
                  if ((v6 - 1937331826) >= 2)
                  {
                    if (v6 == 1950434124)
                    {
                      v21 = a1;
                      v22 = 1950434124;
                    }

                    else
                    {
                      if (v6 != 1953066341)
                      {
                        goto LABEL_449;
                      }

LABEL_414:
                      v21 = a1;
                      v22 = 1381253996;
                    }

                    goto LABEL_439;
                  }

                  goto LABEL_448;
                }

                if (v6 > 1970496069)
                {
                  if (v6 == 1970496070)
                  {
                    goto LABEL_448;
                  }

                  if (v6 == 1970500196)
                  {
                    v21 = a1;
                    v22 = 1433617506;
                    goto LABEL_439;
                  }

                  goto LABEL_449;
                }

                if (v6 == 1953066362)
                {
                  goto LABEL_414;
                }

                v34 = 1953645423;
                goto LABEL_384;
              }

              if (v6 > 1937326963)
              {
                if (v6 <= 1937328486)
                {
                  if (v6 == 1937326964 || v6 == 1937327182)
                  {
                    goto LABEL_448;
                  }

                  v32 = 18028;
                  goto LABEL_322;
                }

                if (v6 > 1937329262)
                {
                  if (v6 == 1937329263)
                  {
                    goto LABEL_448;
                  }

                  v32 = 20077;
                  goto LABEL_322;
                }

                if (v6 == 1937328487)
                {
                  goto LABEL_412;
                }

                v30 = 19538;
LABEL_289:
                if (v6 == (v30 | 0x73790000))
                {
                  v21 = a1;
                  v22 = 942682734;
                  goto LABEL_439;
                }

                goto LABEL_449;
              }

              if (v6 <= 1937011780)
              {
                if (v6 == 1936611159 || v6 == 1936876406)
                {
                  goto LABEL_448;
                }

                if (v6 == 1937006964)
                {
LABEL_297:
                  v21 = a1;
                  v22 = 1097749364;
                  goto LABEL_439;
                }
              }

              else
              {
                if (v6 > 1937326412)
                {
                  if (v6 == 1937326413)
                  {
                    goto LABEL_448;
                  }

                  v32 = 16720;
                  goto LABEL_322;
                }

                if ((v6 - 1937011781) < 2)
                {
                  goto LABEL_297;
                }

                if (v6 == 1937068114)
                {
                  v21 = a1;
                  v22 = 1937068114;
                  goto LABEL_439;
                }
              }
            }

            else
            {
              if (v6 <= 2002866766)
              {
                if (v6 <= 2002864463)
                {
                  if ((v6 - 2002863153) > 0x22 || ((1 << (v6 - 49)) & 0x420040007) == 0)
                  {
                    v33 = v6 - 2002862897;
                    if (v33 > 0x25 || ((1 << v33) & 0x2000080007) == 0)
                    {
                      goto LABEL_449;
                    }
                  }

                  goto LABEL_448;
                }

                if (v6 <= 2002865472)
                {
                  if (v6 == 2002864464)
                  {
                    goto LABEL_448;
                  }

                  v19 = 18798;
                }

                else
                {
                  if (v6 == 2002865473)
                  {
                    goto LABEL_448;
                  }

                  if (v6 == 2002865741)
                  {
                    v21 = a1;
                    v22 = 1315917143;
                    goto LABEL_439;
                  }

                  v19 = 21057;
                }

                goto LABEL_190;
              }

              if (v6 <= 2002932291)
              {
                if (v6 > 2002927938)
                {
                  if (((v6 - 2002929742) > 7 || ((1 << (v6 - 78)) & 0x85) == 0) && v6 != 2002927939 && v6 != 2002929006)
                  {
                    goto LABEL_449;
                  }

                  goto LABEL_229;
                }

                if (v6 != 2002866767)
                {
                  if (v6 == 2002867012)
                  {
                    v21 = a1;
                    v22 = 1396995415;
                    goto LABEL_439;
                  }

                  v19 = 21325;
LABEL_190:
                  v31 = v19 | 0x77610000;
                  goto LABEL_396;
                }

                v40 = a1;
                v41 = 1400460148;
LABEL_442:
                if (sub_23EB8BE08(v40, v41))
                {
                  goto LABEL_449;
                }

                goto LABEL_448;
              }

              if (v6 <= 2003003252)
              {
                if ((v6 - 2002932292) > 0x11 || ((1 << (v6 - 68)) & 0x21001) == 0)
                {
                  v29 = 2003003251;
LABEL_217:
                  if (v6 != v29)
                  {
                    goto LABEL_449;
                  }

LABEL_298:
                  v21 = a1;
                  v22 = 1635215715;
                  goto LABEL_439;
                }

LABEL_229:
                v21 = a1;
                v22 = 2000834122;
                goto LABEL_439;
              }

              if (v6 <= 2003061874)
              {
                if (v6 == 2003003253)
                {
                  goto LABEL_298;
                }

                if (v6 != 2003060332)
                {
                  goto LABEL_449;
                }

LABEL_416:
                if (!v3)
                {
                  v21 = a1;
                  v22 = 1464095533;
                  goto LABEL_439;
                }

                goto LABEL_449;
              }

              if (v6 == 2003061875)
              {
                goto LABEL_416;
              }

              if (v6 == 2004050793)
              {
                v21 = a1;
                v22 = 1465074477;
                goto LABEL_439;
              }
            }
          }

          else if (v6 > 1918979648)
          {
            if (v6 <= 1918981233)
            {
              if (v6 > 1918980913)
              {
                if (v6 <= 1918981169)
                {
                  v24 = v6 - 76;
                  if ((v6 - 1918980940) <= 0x28)
                  {
                    if (((1 << v24) & 0x10082000000) != 0)
                    {
                      goto LABEL_447;
                    }

                    if (((1 << v24) & 0x41) != 0)
                    {
                      goto LABEL_448;
                    }
                  }

                  v20 = 21298;
                  goto LABEL_445;
                }

                if (v6 != 1918981170)
                {
                  v20 = 21613;
                  goto LABEL_445;
                }

LABEL_447:
                if (!v3)
                {
                  goto LABEL_448;
                }

                goto LABEL_449;
              }

              if (v6 <= 1918980215)
              {
                if (v6 == 1918979649)
                {
                  goto LABEL_448;
                }

                if (v6 != 1918979693)
                {
                  if (v6 != 1918980207 || v3)
                  {
                    goto LABEL_449;
                  }

                  v21 = a1;
                  v22 = 1417171063;
                  goto LABEL_439;
                }

                goto LABEL_447;
              }

              if (v6 > 1918980708)
              {
                if (v6 != 1918980709)
                {
                  if (v6 != 1918980719 || v3)
                  {
                    goto LABEL_449;
                  }

                  v21 = a1;
                  v36 = 21103;
LABEL_421:
                  v22 = v36 | 0x52610000;
LABEL_439:
                  if (!sub_23EB8BE08(v21, v22))
                  {
                    goto LABEL_449;
                  }

LABEL_448:
                  v42 = &(*v10)[12 * v13++];
                  v43 = *v14;
                  *(v42 + 8) = *(v14 + 2);
                  *v42 = v43;
                  goto LABEL_449;
                }

                goto LABEL_447;
              }

              if (v6 == 1918980216)
              {
                goto LABEL_448;
              }

              v20 = 21042;
LABEL_445:
              v37 = v20 | 0x72610000;
LABEL_446:
              if (v6 != v37)
              {
                goto LABEL_449;
              }

              goto LABEL_447;
            }

            if (v6 > 1936488043)
            {
              if (v6 > 1936608342)
              {
                if (v6 > 1936609878)
                {
                  if (v6 == 1936609879)
                  {
                    goto LABEL_448;
                  }

                  v27 = 22348;
                }

                else
                {
                  if (v6 == 1936608343)
                  {
                    goto LABEL_448;
                  }

                  v27 = 21068;
                }
              }

              else if (v6 > 1936606034)
              {
                if (v6 == 1936606035)
                {
                  v21 = a1;
                  v22 = 1936606035;
                  goto LABEL_439;
                }

                v27 = 19532;
              }

              else
              {
                if (v6 == 1936488044)
                {
LABEL_375:
                  v21 = a1;
                  v39 = 29516;
                  goto LABEL_413;
                }

                v27 = 16710;
              }

              v31 = v27 | 0x736E0000;
              goto LABEL_396;
            }

            if (v6 <= 1918981956)
            {
              if (v6 > 1918981953)
              {
                if (v6 != 1918981954)
                {
                  if (v6 != 1918981955 || v3)
                  {
                    goto LABEL_449;
                  }

                  v21 = a1;
                  v22 = 1466188648;
                  goto LABEL_439;
                }

                goto LABEL_448;
              }

              if (v6 == 1918981234)
              {
                goto LABEL_448;
              }

              v20 = 21810;
              goto LABEL_445;
            }

            if (v6 <= 1936017003)
            {
              if (v6 != 1918981957)
              {
                v20 = 22349;
                goto LABEL_445;
              }

              goto LABEL_447;
            }

            if (v6 == 1936017004)
            {
              goto LABEL_448;
            }

            if (v6 == 1936474988)
            {
              goto LABEL_375;
            }
          }

          else if (v6 > 1918977106)
          {
            if (v6 > 1918978899)
            {
              if (v6 > 1918979392)
              {
                if (v6 == 1918979393)
                {
                  goto LABEL_448;
                }

                if (v6 != 1918979428)
                {
                  if (v6 != 1918979445 || v3)
                  {
                    goto LABEL_449;
                  }

                  v21 = a1;
                  v22 = 1296257652;
                  goto LABEL_439;
                }
              }

              else if (v6 != 1918978900)
              {
                if (v6 == 1918979139)
                {
                  goto LABEL_448;
                }

                v31 = 1918979142;
                goto LABEL_396;
              }

              goto LABEL_447;
            }

            if (v6 > 1918977585)
            {
              if ((v6 - 1918978353) >= 2 && v6 != 1918977586)
              {
                v20 = 18028;
                goto LABEL_445;
              }

              goto LABEL_447;
            }

            if (v6 == 1918977107)
            {
              goto LABEL_448;
            }

            if (v6 != 1918977125)
            {
              if (v6 != 1918977345 || v3)
              {
                goto LABEL_449;
              }

              v21 = a1;
              v22 = 1464877357;
              goto LABEL_439;
            }

            if (!v3)
            {
              v21 = a1;
              v36 = 25668;
              goto LABEL_421;
            }
          }

          else
          {
            if (v6 <= 1918972226)
            {
              if (v6 <= 1886213216)
              {
                if ((v6 - 1886212169) <= 0xA && ((1 << (v6 - 73)) & 0x601) != 0 || v6 == 1885688654)
                {
                  goto LABEL_448;
                }

                v17 = 21838;
                goto LABEL_395;
              }

              if (v6 > 1886547537)
              {
                if (v6 != 1886547538)
                {
                  if (v6 != 1918128974 || v3)
                  {
                    goto LABEL_449;
                  }

                  v21 = a1;
                  v22 = 1414745645;
                  goto LABEL_439;
                }
              }

              else
              {
                if (v6 == 1886213217)
                {
                  v40 = a1;
                  v41 = 1181898604;
                  goto LABEL_442;
                }

                if (v6 != 1886547529)
                {
                  goto LABEL_449;
                }
              }

              v21 = a1;
              v22 = 1431519789;
              goto LABEL_439;
            }

            if (v6 <= 1918976817)
            {
              if (v6 != 1918972227 && v6 != 1918976355)
              {
                v20 = 16757;
                goto LABEL_445;
              }

              goto LABEL_447;
            }

            if ((v6 - 1918976833) > 0x31)
            {
              goto LABEL_444;
            }

            if (((1 << (v6 - 65)) & 0x2098000000000) != 0)
            {
              goto LABEL_447;
            }

            if (v6 != 1918976833)
            {
LABEL_444:
              v20 = 17202;
              goto LABEL_445;
            }

            if (!v3)
            {
              v21 = a1;
              v22 = 1094936659;
              goto LABEL_439;
            }
          }
        }

        else if (v6 > 1684558667)
        {
          if (v6 > 1836007759)
          {
            if (v6 <= 1851868525)
            {
              if (v6 <= 1836011587)
              {
                if (v6 <= 1836008531)
                {
                  if (v6 == 1836007760 || v6 == 1836008259)
                  {
LABEL_336:
                    if (v50)
                    {
                      goto LABEL_449;
                    }

                    goto LABEL_448;
                  }

                  v25 = 17225;
                }

                else if (v6 > 1836010821)
                {
                  if (v6 == 1836010822)
                  {
                    goto LABEL_336;
                  }

                  v25 = 19792;
                }

                else
                {
                  if (v6 == 1836008532)
                  {
                    goto LABEL_336;
                  }

                  v25 = 18756;
                }

                goto LABEL_335;
              }

              if (v6 <= 1836013170)
              {
                if ((v6 - 1836011588) <= 0x13 && ((1 << (v6 - 68)) & 0x80401) != 0)
                {
                  goto LABEL_336;
                }

                v25 = 21838;
                goto LABEL_335;
              }

              if (v6 > 1851867461)
              {
                if (v6 == 1851867462)
                {
                  v21 = a1;
                  v22 = 1312902988;
                  goto LABEL_439;
                }

                v38 = 16999;
                goto LABEL_358;
              }

              if (v6 == 1836013171)
              {
                goto LABEL_336;
              }

              if (v6 == 1849970010)
              {
                v21 = a1;
                v22 = 1313105224;
                goto LABEL_439;
              }
            }

            else
            {
              if (v6 > 1885621570)
              {
                if (v6 > 1885684046)
                {
                  if (v6 > 1885687894)
                  {
                    if (v6 == 1885687895)
                    {
                      goto LABEL_448;
                    }

                    v17 = 21315;
                  }

                  else
                  {
                    if (v6 == 1885684047)
                    {
                      goto LABEL_448;
                    }

                    v17 = 18756;
                  }

                  goto LABEL_395;
                }

                if (v6 > 1885623629)
                {
                  if (v6 == 1885623630)
                  {
LABEL_379:
                    if (!v47)
                    {
                      goto LABEL_449;
                    }

                    goto LABEL_448;
                  }

                  v17 = 16707;
LABEL_395:
                  v31 = v17 | 0x70650000;
                  goto LABEL_396;
                }

                if (v6 == 1885621571)
                {
                  goto LABEL_379;
                }

                v28 = 20567;
                goto LABEL_378;
              }

              if (v6 > 1853117269)
              {
                if (v6 > 1885619819)
                {
                  if (v6 == 1885619820)
                  {
                    goto LABEL_379;
                  }

                  v28 = 18756;
                }

                else
                {
                  if (v6 == 1853117270)
                  {
                    v21 = a1;
                    v22 = 1314148397;
                    goto LABEL_439;
                  }

                  v28 = 16722;
                }

LABEL_378:
                if (v6 == (v28 | 0x70640000))
                {
                  goto LABEL_379;
                }

                goto LABEL_449;
              }

              if (v6 > 1851871854)
              {
                if (v6 == 1851871855)
                {
                  goto LABEL_448;
                }

                v38 = 21326;
LABEL_358:
                v31 = v38 | 0x6E610000;
LABEL_396:
                if (v6 != v31)
                {
                  goto LABEL_449;
                }

                goto LABEL_448;
              }

              if (v6 == 1851868526)
              {
                goto LABEL_448;
              }

              if (v6 == 1851868780)
              {
                v21 = a1;
                v22 = 1313885520;
                goto LABEL_439;
              }
            }
          }

          else if (v6 > 1752641584)
          {
            if (v6 <= 1818449521)
            {
              if (v6 <= 1818315087)
              {
                if (v6 == 1752641585)
                {
                  goto LABEL_448;
                }

                if (v6 == 1766026340)
                {
                  v21 = a1;
                  v22 = 1766018116;
                  goto LABEL_439;
                }

                v31 = 1769161027;
              }

              else if (v6 > 1818317644)
              {
                if (v6 == 1818317645)
                {
                  goto LABEL_448;
                }

                v31 = 1818447190;
              }

              else
              {
                if (v6 == 1818315088)
                {
                  goto LABEL_448;
                }

                v31 = 1818316097;
              }

              goto LABEL_396;
            }

            if (v6 > 1835090283)
            {
              if (v6 > 1835626066)
              {
                if (v6 == 1835626067)
                {
                  goto LABEL_448;
                }

                v25 = 16708;
LABEL_335:
                if (v6 == (v25 | 0x6D6F0000))
                {
                  goto LABEL_336;
                }

                goto LABEL_449;
              }

              if (v6 == 1835090284)
              {
                goto LABEL_448;
              }

              if (v6 == 1835094130)
              {
                goto LABEL_198;
              }
            }

            else
            {
              if ((v6 - 1818449522) < 2 || v6 == 1818455382)
              {
                goto LABEL_448;
              }

              if (v6 == 1818575203)
              {
                v21 = a1;
                v22 = 1279607875;
                goto LABEL_439;
              }
            }
          }

          else
          {
            if (v6 > 1718842223)
            {
              if (v6 > 1735281764)
              {
                if (v6 > 1735283310)
                {
                  if (v6 == 1735283311)
                  {
                    goto LABEL_385;
                  }

                  v26 = 21326;
                }

                else
                {
                  if (v6 == 1735281765)
                  {
                    goto LABEL_385;
                  }

                  v26 = 19815;
                }
              }

              else if (v6 > 1735279206)
              {
                if (v6 == 1735279207)
                {
                  goto LABEL_385;
                }

                v26 = 17774;
              }

              else
              {
                if (v6 == 1718842224)
                {
                  goto LABEL_311;
                }

                v26 = 14645;
              }

              v34 = v26 | 0x676E0000;
LABEL_384:
              if (v6 == v34)
              {
LABEL_385:
                if (!v48)
                {
                  goto LABEL_449;
                }

                goto LABEL_448;
              }

              goto LABEL_449;
            }

            if (v6 <= 1702519653)
            {
              if (v6 > 1684886387)
              {
                if (v6 == 1684886388)
                {
                  v21 = a1;
                  v22 = 1298616948;
                }

                else
                {
                  if (v6 != 1685538412 || v3)
                  {
                    goto LABEL_449;
                  }

                  v21 = a1;
                  v22 = 1685540419;
                }

                goto LABEL_439;
              }

              if (v6 == 1684558668)
              {
                goto LABEL_448;
              }

              v18 = 21326;
LABEL_236:
              v31 = v18 | 0x64680000;
              goto LABEL_396;
            }

            if (v6 <= 1717920115)
            {
              if (v6 != 1702519654)
              {
                v31 = 1717907505;
                goto LABEL_396;
              }

LABEL_415:
              v21 = a1;
              v22 = 1163543378;
              goto LABEL_439;
            }

            if (v6 == 1717920116)
            {
              goto LABEL_448;
            }

            if (v6 == 1718186597)
            {
              v21 = a1;
              v22 = 1181898604;
              goto LABEL_439;
            }
          }
        }

        else if (v6 > 1280077418)
        {
          if (v6 <= 1633899616)
          {
            if (v6 <= 1397572214)
            {
              if (v6 <= 1349676901)
              {
                if (v6 == 1280077419)
                {
                  goto LABEL_448;
                }

                if (v6 == 1298223988)
                {
LABEL_311:
                  v21 = a1;
                  v22 = 1297314927;
                  goto LABEL_439;
                }

                v31 = 1346918739;
                goto LABEL_396;
              }

              if (v6 <= 1381328491)
              {
                if (v6 == 1349676902)
                {
LABEL_198:
                  v21 = a1;
                  v22 = 1349676902;
                }

                else
                {
                  if (v6 != 1381327990)
                  {
                    goto LABEL_449;
                  }

LABEL_411:
                  v21 = a1;
                  v22 = 1179996994;
                }

                goto LABEL_439;
              }

              if (v6 == 1381328492)
              {
                goto LABEL_411;
              }

              if (v6 == 1397572211)
              {
                goto LABEL_311;
              }
            }

            else
            {
              if (v6 > 1464626794)
              {
                if (v6 <= 1633116525)
                {
                  if (v6 != 1464626795 && (v6 != 1466517097 || !v3))
                  {
                    goto LABEL_449;
                  }

                  goto LABEL_448;
                }

                if (v6 == 1633116526)
                {
                  goto LABEL_351;
                }

                v37 = 1633895790;
                goto LABEL_446;
              }

              if (v6 > 1398097520)
              {
                if (v6 == 1398097521)
                {
                  goto LABEL_329;
                }

                v23 = 21366;
              }

              else
              {
                if (v6 == 1397572215)
                {
                  goto LABEL_311;
                }

                v23 = 17774;
              }

              if (v6 == (v23 | 0x53550000))
              {
LABEL_329:
                v21 = a1;
                v22 = 1130911088;
                goto LABEL_439;
              }
            }
          }

          else
          {
            if (v6 <= 1683440722)
            {
              if (v6 > 1635078737)
              {
                if (v6 > 1668573548)
                {
                  if (v6 == 1668573549)
                  {
                    goto LABEL_448;
                  }

                  v31 = 1668703602;
                  goto LABEL_396;
                }

                if (v6 != 1635078738)
                {
                  v29 = 1635214181;
                  goto LABEL_217;
                }
              }

              else if (v6 > 1635077711)
              {
                if (v6 != 1635077712)
                {
                  v31 = 1635078258;
                  goto LABEL_396;
                }
              }

              else
              {
                if (v6 == 1633899617)
                {
                  v40 = a1;
                  v41 = 1950434124;
                  goto LABEL_442;
                }

                if (v6 != 1635077710)
                {
                  goto LABEL_449;
                }
              }

LABEL_351:
              v21 = a1;
              v22 = 1632923251;
              goto LABEL_439;
            }

            if (v6 > 1684554342)
            {
              if (v6 <= 1684556900)
              {
                if (v6 == 1684554343)
                {
                  goto LABEL_448;
                }

                v18 = 17774;
                goto LABEL_236;
              }

              if (v6 == 1684556901)
              {
                goto LABEL_448;
              }

              if (v6 == 1684557159)
              {
                v21 = a1;
                v22 = 1145922931;
                goto LABEL_439;
              }
            }

            else if (v6 > 1684362099)
            {
              if (v6 == 1684362100)
              {
                v21 = a1;
                v22 = 1165123913;
                goto LABEL_439;
              }

              if (v6 == 1684551989)
              {
                v21 = a1;
                v22 = 1684551989;
                goto LABEL_439;
              }
            }

            else if (v6 == 1683440723)
            {
              if (!v3)
              {
                v21 = a1;
                v22 = 1146569811;
                goto LABEL_439;
              }
            }

            else if (v6 == 1684099956)
            {
              v21 = a1;
              v22 = 1098015561;
              goto LABEL_439;
            }
          }
        }

        else
        {
          if (v6 <= 911697527)
          {
            if (v6 <= 910976630)
            {
              if (v6 <= 910382944)
              {
                if (v6 == 910380129 || v6 == 910381153)
                {
                  goto LABEL_448;
                }

                v31 = 910381164;
                goto LABEL_396;
              }

              if ((v6 - 910382945) <= 0xF && ((1 << (v6 - 97)) & 0x8041) != 0)
              {
                goto LABEL_448;
              }

              v16 = 910975332;
              goto LABEL_404;
            }

            if (v6 <= 911102816)
            {
              if ((v6 - 910976631) < 2)
              {
LABEL_405:
                if (!v49)
                {
                  goto LABEL_449;
                }
              }

              else if ((v6 - 911102769) >= 2 || !v5)
              {
                goto LABEL_449;
              }

              goto LABEL_448;
            }

            if (v6 <= 911230059)
            {
              if ((v6 - 911102817) < 2)
              {
                goto LABEL_448;
              }

              v16 = 911230049;
              goto LABEL_404;
            }

            if (v6 == 911230060)
            {
              goto LABEL_405;
            }

            v35 = 24932;
LABEL_403:
            v16 = v35 | 0x36570000;
            goto LABEL_404;
          }

          if (v6 <= 913532258)
          {
            if (v6 <= 912356723)
            {
              if (v6 == 911697528 || v6 == 911697783)
              {
                goto LABEL_405;
              }

              v35 = 29797;
              goto LABEL_403;
            }

            if (v6 <= 912684907)
            {
              if (v6 == 912356724)
              {
                goto LABEL_405;
              }

              v16 = 912483943;
LABEL_404:
              if (v6 == v16)
              {
                goto LABEL_405;
              }

              goto LABEL_449;
            }

            if (v6 == 912684908)
            {
              v21 = a1;
              v22 = 1768961606;
              goto LABEL_439;
            }

            if (v6 == 913337712)
            {
              v21 = a1;
              v22 = 913337712;
              goto LABEL_439;
            }
          }

          else if (v6 > 1148808786)
          {
            if (v6 <= 1229213292)
            {
              if (v6 == 1148808787)
              {
                v21 = a1;
                v22 = 1835881796;
                goto LABEL_439;
              }

              if (v6 != 1163543366)
              {
                goto LABEL_449;
              }

              goto LABEL_415;
            }

            if (v6 == 1229213293)
            {
              v21 = a1;
              v22 = 1231975492;
              goto LABEL_439;
            }

            if (v6 == 1229409616)
            {
              v21 = a1;
              v22 = 1229409616;
              goto LABEL_439;
            }
          }

          else
          {
            if (v6 <= 913601123)
            {
              if (v6 == 913532259)
              {
                v21 = a1;
                v22 = 913532259;
                goto LABEL_439;
              }

              v16 = 913532535;
              goto LABEL_404;
            }

            if (v6 == 913601124)
            {
              v21 = a1;
              v22 = 913601124;
              goto LABEL_439;
            }

            if (v6 == 1146250611)
            {
              v22 = 1146250611;
              v21 = a1;
              goto LABEL_439;
            }
          }
        }

LABEL_449:
        v44 = *(v14 + 3);
        v14 = (v14 + 12);
        v6 = v44;
        if (!v44)
        {
          v45 = 12 * v13;
          v46 = *v12 - *v10;
          if (12 * v13 <= v46)
          {
            if (v46 > v45)
            {
              *v12 = &(*v10)[v45];
            }
          }

          else
          {
            sub_23EBADE2C(v10, 12 * v13 - v46);
          }

          return;
        }
      }
    }
  }
}

uint64_t sub_23EB8BD6C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  sub_23EB4BD2C(a2, __s);
  sub_23EB8CCB8(__p, __s);
  v7 = sub_23EB97710(a1, __p, a3, a4);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return v7;
}

void sub_23EB8BDEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_23EB8BE08(uint64_t a1, int a2)
{
  cf = 0;
  if (sub_23EB8BFFC(a1, 1717920116, &cf, 2))
  {
    goto LABEL_2;
  }

  if (!cf)
  {
    return 0;
  }

  v4 = CFGetTypeID(cf);
  if (v4 != CFDataGetTypeID())
  {
LABEL_2:
    v3 = 0;
  }

  else
  {
    v3 = sub_23EB97B60(cf, a2);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

uint64_t sub_23EB8BE98(uint64_t a1, int a2, int a3, uint64_t a4)
{
  sub_23EB4BD2C(a2, __s);
  sub_23EB8CCB8(__p, __s);
  v7 = MEMORY[0x277CBED28];
  if (!a3)
  {
    v7 = MEMORY[0x277CBED10];
  }

  v8 = sub_23EB8FC04(a1, __p, *v7, a4);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

void sub_23EB8BF30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EB8BF4C(uint64_t a1)
{
  cf = 0;
  if ((*(a1 + 373) & 1) != 0 || sub_23EB8BFFC(a1, 1349676902, &cf, 2) || !cf || (v4 = CFGetTypeID(cf), v4 != CFDataGetTypeID()) || (v2 = sub_23EB8C09C(a1, 1349676902, cf, 0), !v2))
  {
    v2 = sub_23EB89354(a1, 1);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v2;
}

uint64_t sub_23EB8BFFC(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  v11 = a1;
  pthread_mutex_lock((a1 + 392));
  ++*(a1 + 456);
  v8 = sub_23EB8C68C(a1, a2, a3, a4);
  v9 = v8;
  if (a3 && !v8 && *a3)
  {
    CFRetain(*a3);
  }

  sub_23EBADBC0(&v11);
  return v9;
}

void sub_23EB8C088(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EBADBC0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23EB8C09C(uint64_t a1, uint64_t a2, const __CFString *a3, uint64_t a4)
{
  cf = 0;
  if (!a3)
  {
    return 4294967292;
  }

  v5 = a3;
  v8 = sub_23EB91690(a1, a2);
  if (!v8)
  {
    cf = v5;
    goto LABEL_7;
  }

  v9 = sub_23EB91744(a1, a2, v5, &cf);
  if (!v9)
  {
    v5 = cf;
LABEL_7:
    v9 = sub_23EB8A18C(a1, a2, v5, a4);
    if (cf)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0;
    }

    if (v11 == 1)
    {
      CFRelease(cf);
    }
  }

  if (v9 == -19)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_23EB8C15C(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  theDict = 0;
  sub_23EB89280(a1);
  v2 = sub_23EB8C480(a1);
  if (v2)
  {
    return v2;
  }

  v17 = 0;
  if (sub_23EB8BE08(a1, 1381253996))
  {
    theString[0] = 0;
    v2 = sub_23EB8BFFC(a1, 1953066362, &theDict, 0);
    if (v2)
    {
      goto LABEL_34;
    }

    if (!theDict)
    {
      return 4294960569;
    }

    Value = CFDictionaryGetValue(theDict, @"zoneName");
    v4 = Value;
    if (!Value || !CFStringGetLength(Value) || !sub_23EBD5700(v4, theString) || !theString[0] || !CFStringGetLength(theString[0]))
    {
      if (CFDictionaryGetCount(theDict))
      {
        if (!sub_23EBD5674(theDict, v5, v6))
        {
          goto LABEL_19;
        }

        theString[0] = v4;
        if (!v4)
        {
          goto LABEL_19;
        }

        Length = CFStringGetLength(v4);
      }

      else
      {
        v8 = sub_23EBD551C(0, v5, v6);
        theString[0] = v8;
        if (!v8)
        {
          goto LABEL_19;
        }

        Length = CFStringGetLength(v8);
      }

      if (!Length)
      {
        goto LABEL_19;
      }
    }

    v2 = sub_23EB8A18C(a1, 1651725402, theString[0], 0);
    if (v2)
    {
      goto LABEL_34;
    }
  }

LABEL_19:
  if (!sub_23EB8BE08(a1, 1349676902) || (v2 = sub_23EB8C580(a1), !v2))
  {
    if (sub_23EB8BE08(a1, 1920159858))
    {
      theString[0] = 0;
      v13 = a1;
      v14 = 0;
      pthread_mutex_lock((a1 + 392));
      ++*(a1 + 456);
      v2 = sub_23EB8C68C(a1, 1349676902, &v14, 0);
      if (v2 || (v2 = sub_23EB8C900(a1, "restoreProfile", theString), v2))
      {
        sub_23EBADBC0(&v13);
        goto LABEL_34;
      }

      CFDictionarySetValue(v14, @"restoreProfile", theString[0]);
      CFRelease(theString[0]);
      sub_23EBADBC0(&v13);
    }

    sub_23EB8CB20(a1);
    v17 = time(0);
    v9 = gmtime(&v17);
    if (!v9 || v9->tm_year < 106 || (gettimeofday(&v16, 0), v2 = sub_23EB8CB80(a1, 1953066341, v16.tv_sec, 0), !v2))
    {
      v2 = sub_23EC0F418(__s, 0x10u);
      if (!v2)
      {
        sub_23EB8CCB8(theString, __s);
        v2 = sub_23EB8CC1C(a1, 1818449523, theString, 0);
        if (v12 < 0)
        {
          operator delete(theString[0]);
        }

        if (!v2)
        {
          v2 = sub_23EB8CB80(a1, 1818449522, 0x2000000, 0);
        }
      }
    }
  }

LABEL_34:
  if (theDict)
  {
    CFRelease(theDict);
  }

  return v2;
}

void sub_23EB8C44C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EB8C480(uint64_t a1)
{
  result = sub_23EB8BE08(a1, 1396995415);
  if (result)
  {
    v8 = 0;
    result = sub_23EB975E8(a1, 1918979649, &v8, 0);
    if (!result)
    {
      if (v8)
      {
        return 0;
      }

      v7 = 0;
      result = sub_23EB89D74(a1, 2002867012, &v7, 0);
      if (!result)
      {
        if ((v7 & 0xF) == 0)
        {
          return 0;
        }

        if (dword_27E381AB0 <= 5000 && (dword_27E381AB0 != -1 || sub_23EB74AC8(&dword_27E381AB0, 0x1388u)))
        {
          sub_23EB75374(&dword_27E381AB0, "ACPStatus BaseStation::FixUpSettingsAfterConfig()", 5000, "%s: WAN was not Auto in bridge mode, so setting to Auto\n", v3, v4, v5, v6, "ACPStatus BaseStation::FixUpSettingsAfterConfig()");
        }

        return sub_23EB8CB80(a1, 2002867012, 0, 0);
      }
    }
  }

  return result;
}

uint64_t sub_23EB8C580(uint64_t a1)
{
  v10 = 0;
  value = 0;
  cf = 0;
  v2 = sub_23EB9B238(a1, &cf);
  if (v2)
  {
    goto LABEL_2;
  }

  if (!cf)
  {
    return 4294960551;
  }

  v4 = CFDictionaryGetValue(cf, @"profiles");
  if (v4 && (v5 = v4, ValueAtIndex = CFArrayGetValueAtIndex(v4, *(a1 + 368)), (value = ValueAtIndex) != 0))
  {
    v7 = CFDictionaryGetValue(ValueAtIndex, @"name");
    if (v7)
    {
      v2 = sub_23EB710E8(v7, &v10);
      if (v2)
      {
LABEL_2:
        v3 = v2;
        goto LABEL_3;
      }

      v3 = sub_23EB8C900(a1, v10, &value);
      free(v10);
      if (!v3)
      {
        CFArraySetValueAtIndex(v5, *(a1 + 368), value);
        CFRelease(value);
        v2 = sub_23EB8A18C(a1, 1349676902, cf, 0);
        goto LABEL_2;
      }
    }

    else
    {
      v3 = 4294960569;
    }
  }

  else
  {
    v3 = 4294960551;
  }

LABEL_3:
  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

uint64_t sub_23EB8C68C(CFDictionaryRef *a1, uint64_t a2, CFNumberRef *a3, uint64_t a4)
{
  if (!a3)
  {
    return 4294960591;
  }

  *a3 = 0;
  sub_23EB4BD2C(a2, cStr);
  if (sub_23EB8E1B0(a1, a2))
  {
    sub_23EB8CCB8(__p, cStr);
    v8 = sub_23EB95194(a1, __p, a3, a4);
    v9 = v8;
    if (v29 < 0)
    {
      operator delete(__p[0]);
      if (v9)
      {
        return v9;
      }
    }

    else if (v8)
    {
      return v9;
    }

    v11 = 0;
    goto LABEL_22;
  }

  v10 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x8000100u);
  if (!v10)
  {
    return 4294960568;
  }

  v11 = v10;
  v12 = a1[5];
  if (!v12 || !a1[4])
  {
    v9 = 0;
    goto LABEL_35;
  }

  if (a4 <= 1)
  {
    if (CFDictionaryContainsKey(v12, v11))
    {
      Value = CFDictionaryGetValue(a1[5], v11);
      *a3 = Value;
      if (!Value)
      {
LABEL_17:
        v9 = 0xFFFFFFFFLL;
LABEL_35:
        CFRelease(v11);
        return v9;
      }
    }
  }

  v14 = *a3;
  if ((a4 & 0xFFFFFFFD) != 0 || v14)
  {
    goto LABEL_23;
  }

  if (CFDictionaryContainsKey(a1[4], v11))
  {
    v15 = CFDictionaryGetValue(a1[4], v11);
    *a3 = v15;
    if (v15)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

LABEL_22:
  v14 = *a3;
LABEL_23:
  if (v14)
  {
    goto LABEL_24;
  }

  if ((a4 & 0xFFFFFFFD) != 0)
  {
    v9 = 4294967291;
    goto LABEL_34;
  }

  __p[0] = 0;
  v16 = sub_23EB8CF64(a1, a2, __p);
  if (v16)
  {
    goto LABEL_33;
  }

  *a3 = __p[0];
  v9 = sub_23EB6FDFC(*MEMORY[0x277CBECE8], a1[6], "%kC=%O", v22, v23, v24, v25, v26, a2);
  if (__p[0])
  {
    CFRelease(__p[0]);
  }

  if (!v9)
  {
LABEL_24:
    if (a2 != 2002862934)
    {
      v9 = 0;
      goto LABEL_34;
    }

    __p[0] = 0;
    v16 = sub_23EBAEB84(*a3, 4095, __p);
    if (!v16)
    {
      if (__p[0])
      {
        *a3 = __p[0];
        v9 = sub_23EB6FDFC(*MEMORY[0x277CBECE8], a1[6], "%kC=%O", v17, v18, v19, v20, v21, 2002862934);
        if (__p[0])
        {
          CFRelease(__p[0]);
        }
      }

      else
      {
        v9 = 4294960568;
      }

      goto LABEL_34;
    }

LABEL_33:
    v9 = v16;
  }

LABEL_34:
  if (v11)
  {
    goto LABEL_35;
  }

  return v9;
}

void sub_23EB8C8E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EB8C900(uint64_t a1, uint64_t a2, __CFArray **a3)
{
  v3 = 4294960591;
  if (a2 && a3)
  {
    v6 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v9 = *(a1 + 200);
      v8 = *(a1 + 208);
      if (v8 == v9)
      {
        sub_23EB8A428(a1, 0);
        v9 = *(a1 + 200);
        v8 = *(a1 + 208);
      }

      v10 = v8 - v9;
      if (v10 >= 0xC)
      {
        v11 = v10 / 0xC;
        if (v11 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v11;
        }

        while (1)
        {
          v21 = 0;
          cf = 0;
          v14 = *v9;
          v9 += 3;
          v13 = v14;
          if (sub_23EB4BE0C(v14) && !sub_23EB92884(a1, v13, &cf, &v21))
          {
            v3 = sub_23EB6FDFC(v6, Mutable, "%kC=%O", v15, v16, v17, v18, v19, v13);
            if (v21 == 1 && cf)
            {
              CFRelease(cf);
            }

            if (v3)
            {
              break;
            }
          }

          if (!--v12)
          {
            v3 = sub_23EB6FDFC(v6, Mutable, "%kO=%s", v15, v16, v17, v18, v19, @"name");
            if (v3)
            {
              break;
            }

            *a3 = Mutable;
            return v3;
          }
        }
      }

      else
      {
        v3 = 4294960551;
      }

      CFRelease(Mutable);
    }

    else
    {
      return 4294960568;
    }
  }

  return v3;
}

uint64_t sub_23EB8CB20(uint64_t a1)
{
  v4 = 0;
  if (sub_23EB80448(0, &v4))
  {
    v2 = -1;
    v4 = -1;
  }

  else
  {
    v2 = v4;
  }

  return sub_23EB8CB80(a1, 1668573549, v2, 0);
}

uint64_t sub_23EB8CB80(uint64_t a1, int a2, int a3, uint64_t a4)
{
  sub_23EB4BD2C(a2, __s);
  sub_23EB8CCB8(__p, __s);
  v7 = sub_23EB906B8(a1, __p, a3, a4);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return v7;
}

void sub_23EB8CC00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EB8CC1C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  sub_23EB4BD2C(a2, __s);
  sub_23EB8CCB8(__p, __s);
  v7 = sub_23EB97684(a1, __p, a3, a4);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return v7;
}

void sub_23EB8CC9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_23EB8CCB8(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EBADC04();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void sub_23EB8CD70(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, std::string *a8@<X8>)
{
  a8->__r_.__value_.__r.__words[0] = 0;
  a8->__r_.__value_.__l.__size_ = 0;
  a8->__r_.__value_.__r.__words[2] = 0;
  if ((*(a1 + 287) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 272))
    {
      goto LABEL_3;
    }
  }

  else if (*(a1 + 287))
  {
LABEL_3:
    std::string::operator=(a8, (a1 + 264));
    return;
  }

  v11 = 0;
  sub_23EB6AA00(*(a1 + 336), a2, &v11, a3, a4, a5, a6, a7);
  if (!v9)
  {
    if (v11)
    {
      v10 = 0;
      if (!sub_23EB710E8(v11, &v10))
      {
        if (v10)
        {
          MEMORY[0x23EF1EFD0](a8);
          if (v10)
          {
            free(v10);
          }
        }
      }
    }
  }
}

void sub_23EB8CE10(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EB8CE30(uint64_t a1)
{
  cf = 0;
  v1 = qword_27E383818;
  if (!qword_27E383818)
  {
    return 4294960578;
  }

  v2 = a1;
  if (!*(qword_27E383818 + 16))
  {
    a1 = sub_23EBD45CC();
    v1 = qword_27E383818;
  }

  v3 = *v1;
  if (*v1 == v1 + 1)
  {
    return 0;
  }

  while (1)
  {
    v4 = v3[5];
    v5 = *(v4 + 4);
    a1 = sub_23EB91370(a1, *(v4 + 4));
    if ((a1 & 1) == 0)
    {
      v6 = !v5 || v5 == 913532535;
      if (!v6)
      {
        a1 = sub_23EB8CF64(v2, v5, &cf);
        v7 = cf;
        if (a1)
        {
          goto LABEL_23;
        }

        if (cf)
        {
          break;
        }
      }
    }

LABEL_14:
    v8 = v3[1];
    if (v8)
    {
      do
      {
        v9 = v8;
        v8 = *v8;
      }

      while (v8);
    }

    else
    {
      do
      {
        v9 = v3[2];
        v6 = *v9 == v3;
        v3 = v9;
      }

      while (!v6);
    }

    v3 = v9;
    if (v9 == (qword_27E383818 + 8))
    {
      return 0;
    }
  }

  a1 = sub_23EB8C09C(v2, v5, cf, 2);
  v7 = cf;
  if (!a1)
  {
    CFRelease(cf);
    cf = 0;
    goto LABEL_14;
  }

LABEL_23:
  v10 = a1;
  if (v7)
  {
    CFRelease(v7);
  }

  return v10;
}

uint64_t sub_23EB8CF64(uint64_t a1, int a2, CFMutableDictionaryRef *a3)
{
  v5 = sub_23EB4BD2C(a2, v9);
  sub_23EB8CCB8(&__p, v5);
  v6 = sub_23EB8CFF0(a1, &__p, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v6;
}

void sub_23EB8CFD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23EB8CFF0(uint64_t a1, std::string *__str, CFMutableDictionaryRef *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v26 = 0;
  memset(&__p, 0, sizeof(__p));
  sub_23EB8DCF4(__str, &v26, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    if (__p.__r_.__value_.__l.__size_ == 4 && *__p.__r_.__value_.__l.__data_ == 1917018482)
    {
      goto LABEL_32;
    }

    if (__p.__r_.__value_.__l.__size_ != 7 || (*__p.__r_.__value_.__l.__data_ == 1650552389 ? (v6 = *(__p.__r_.__value_.__r.__words[0] + 3) == 1684368482) : (v6 = 0), !v6))
    {
      if (__p.__r_.__value_.__l.__size_ != 4 || *__p.__r_.__value_.__l.__data_ != 1096045424)
      {
        if (__p.__r_.__value_.__l.__size_ != 9)
        {
          if (v26 != 2003061875)
          {
            goto LABEL_46;
          }

LABEL_45:
          Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
LABEL_66:
          v13 = 0;
          *a3 = Mutable;
          goto LABEL_67;
        }

        p_p = __p.__r_.__value_.__r.__words[0];
LABEL_17:
        v7 = p_p->__r_.__value_.__r.__words[0];
        v8 = p_p->__r_.__value_.__s.__data_[8];
        if (v7 == 0x647779636167656CLL && v8 == 115)
        {
          goto LABEL_45;
        }

        goto LABEL_40;
      }
    }

LABEL_37:
    v13 = 0;
    v14 = MEMORY[0x277CBED10];
LABEL_38:
    v15 = *v14;
LABEL_39:
    *a3 = v15;
    goto LABEL_67;
  }

  if (HIBYTE(__p.__r_.__value_.__r.__words[2]) != 4)
  {
    if (HIBYTE(__p.__r_.__value_.__r.__words[2]) != 7)
    {
      if (HIBYTE(__p.__r_.__value_.__r.__words[2]) != 9)
      {
        goto LABEL_40;
      }

      p_p = &__p;
      goto LABEL_17;
    }

    if (LODWORD(__p.__r_.__value_.__l.__data_) != 1650552389 || *(__p.__r_.__value_.__r.__words + 3) != 1684368482)
    {
      goto LABEL_40;
    }

    goto LABEL_37;
  }

  if (LODWORD(__p.__r_.__value_.__l.__data_) == 1917018482)
  {
    goto LABEL_32;
  }

  if (LODWORD(__p.__r_.__value_.__l.__data_) == 1096045424)
  {
    goto LABEL_37;
  }

LABEL_40:
  if (v26 == 2003061875)
  {
    goto LABEL_45;
  }

  if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
  {
    if (HIBYTE(__p.__r_.__value_.__r.__words[2]) != 4)
    {
      goto LABEL_54;
    }

    if (LODWORD(__p.__r_.__value_.__l.__data_) == 1297572210)
    {
LABEL_126:
      LODWORD(valuePtr[0]) = 0;
      Mutable = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, valuePtr);
      goto LABEL_66;
    }

    goto LABEL_50;
  }

LABEL_46:
  if (__p.__r_.__value_.__l.__size_ != 4)
  {
    goto LABEL_51;
  }

  if (*__p.__r_.__value_.__l.__data_ == 1297572210)
  {
    goto LABEL_126;
  }

  if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
  {
LABEL_51:
    if (__p.__r_.__value_.__l.__size_ != 4)
    {
      goto LABEL_54;
    }

    v17 = __p.__r_.__value_.__r.__words[0];
    goto LABEL_53;
  }

  if (HIBYTE(__p.__r_.__value_.__r.__words[2]) != 4)
  {
    goto LABEL_54;
  }

LABEL_50:
  v17 = &__p;
LABEL_53:
  if (LODWORD(v17->__r_.__value_.__l.__data_) == 1414226290)
  {
    goto LABEL_134;
  }

LABEL_54:
  if (sub_23EB8DE50(&__p, "raCh") || sub_23EB8DE50(&__p, "raDe"))
  {
    goto LABEL_99;
  }

  if (sub_23EB8DE50(&__p, "raMu"))
  {
    LODWORD(valuePtr[0]) = 2;
    Mutable = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, valuePtr);
    goto LABEL_66;
  }

  if (sub_23EB8DE50(&__p, "raMd"))
  {
LABEL_63:
    LOWORD(valuePtr[0]) = 1;
    Mutable = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt16Type, valuePtr);
    goto LABEL_66;
  }

  if (sub_23EB8DE50(&__p, "raPo"))
  {
LABEL_65:
    LOWORD(valuePtr[0]) = 100;
    Mutable = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt16Type, valuePtr);
    goto LABEL_66;
  }

  if (v26 <= 1835090283)
  {
    if (v26 > 1464626794)
    {
      if (v26 <= 1735279981)
      {
        if (v26 <= 1635078737)
        {
          if (v26 == 1464626795)
          {
            LODWORD(valuePtr[0]) = 4;
            Mutable = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, valuePtr);
            goto LABEL_66;
          }

          if (v26 == 1635076676)
          {
            goto LABEL_126;
          }
        }

        else
        {
          switch(v26)
          {
            case 1635078738:
              goto LABEL_63;
            case 1684556901:
              LODWORD(valuePtr[0]) = 86400;
              Mutable = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, valuePtr);
              goto LABEL_66;
            case 1735279207:
              v13 = 0;
              v15 = @"172.16.42.2";
              goto LABEL_39;
          }
        }

        goto LABEL_160;
      }

      if (v26 > 1735283310)
      {
        if (v26 == 1735283311)
        {
          v13 = 0;
          v15 = @"172.16.42.1";
          goto LABEL_39;
        }

        if (v26 == 1735283534)
        {
          v13 = 0;
          v15 = @"255.255.255.0";
          goto LABEL_39;
        }

        if (v26 != 1818575203)
        {
          goto LABEL_160;
        }

LABEL_99:
        LODWORD(valuePtr[0]) = 1;
        Mutable = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, valuePtr);
        goto LABEL_66;
      }

      if (v26 == 1735279982)
      {
        v13 = 0;
        v15 = @"172.16.42.200";
        goto LABEL_39;
      }

      if (v26 != 1735281765)
      {
        goto LABEL_160;
      }

LABEL_134:
      LODWORD(valuePtr[0]) = 3600;
      Mutable = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, valuePtr);
      goto LABEL_66;
    }

    if (v26 > 913532534)
    {
      if (v26 > 1280077418)
      {
        if (v26 == 1280077419)
        {
          goto LABEL_126;
        }

        if (v26 != 1381328492)
        {
          if (v26 == 1398097521)
          {
            LODWORD(valuePtr[0]) = 604800;
            Mutable = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, valuePtr);
            goto LABEL_66;
          }

          goto LABEL_160;
        }

        goto LABEL_99;
      }

      if (v26 == 913532535)
      {
        v21 = sub_23EB8BE08(a1, 912681828);
        v13 = 0;
        v14 = MEMORY[0x277CBED28];
        if (!v21)
        {
          v14 = MEMORY[0x277CBED10];
        }

        goto LABEL_38;
      }

      if (v26 != 913601124)
      {
        goto LABEL_160;
      }

      goto LABEL_37;
    }

    if (v26 <= 913337711)
    {
      if (!v26)
      {
        v13 = 4294967291;
        goto LABEL_67;
      }

      if (v26 == 912483943)
      {
        goto LABEL_126;
      }

      goto LABEL_160;
    }

    if (v26 != 913337712)
    {
      v20 = 913532259;
      goto LABEL_130;
    }

LABEL_131:
    v13 = 0;
    v14 = MEMORY[0x277CBED28];
    goto LABEL_38;
  }

  if (v26 <= 1885688642)
  {
    if (v26 <= 1836010831)
    {
      if (v26 <= 1836008258)
      {
        if (v26 == 1835090284)
        {
          LODWORD(valuePtr[0]) = 500;
          Mutable = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, valuePtr);
          goto LABEL_66;
        }

        if (v26 != 1835094130)
        {
          goto LABEL_160;
        }

        goto LABEL_112;
      }

      if (v26 == 1836008259)
      {
        LODWORD(valuePtr[0]) = 22;
        Mutable = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, valuePtr);
        goto LABEL_66;
      }

      if (v26 != 1836009796)
      {
        goto LABEL_160;
      }
    }

    else
    {
      if (v26 <= 1885620547)
      {
        if (v26 != 1836010832)
        {
          if (v26 == 1885618514)
          {
            LODWORD(valuePtr[0]) = 3;
            Mutable = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, valuePtr);
            goto LABEL_66;
          }

          goto LABEL_160;
        }

        goto LABEL_99;
      }

      if (v26 != 1885620548)
      {
        if (v26 == 1885621571)
        {
          goto LABEL_126;
        }

        v20 = 1885684035;
        goto LABEL_130;
      }
    }

    LODWORD(valuePtr[0]) = 600;
    Mutable = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, valuePtr);
    goto LABEL_66;
  }

  if (v26 <= 1918980215)
  {
    if (v26 <= 1918979138)
    {
      if (v26 == 1885688643)
      {
        goto LABEL_131;
      }

      v19 = 17491;
    }

    else
    {
      if (v26 == 1918979139)
      {
        LOWORD(valuePtr[0]) = 0x3FFF;
        Mutable = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt16Type, valuePtr);
        goto LABEL_66;
      }

      if (v26 == 1918979142)
      {
        LODWORD(valuePtr[0]) = 260047018;
        Mutable = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, valuePtr);
        goto LABEL_66;
      }

      v19 = 20033;
    }

    v20 = v19 | 0x72610000;
LABEL_130:
    if (v26 != v20)
    {
      goto LABEL_160;
    }

    goto LABEL_131;
  }

  if (v26 > 1937326415)
  {
    switch(v26)
    {
      case 2002864494:
        LODWORD(valuePtr[0]) = 16;
        Mutable = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, valuePtr);
        goto LABEL_66;
      case 2002862934:
        LODWORD(valuePtr[0]) = 1024;
        Mutable = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, valuePtr);
        goto LABEL_66;
      case 1937326416:
        goto LABEL_126;
    }

    goto LABEL_160;
  }

  if (v26 == 1918980216)
  {
    goto LABEL_65;
  }

  if (v26 == 1936488044)
  {
LABEL_112:
    LODWORD(valuePtr[0]) = 5;
    Mutable = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, valuePtr);
    goto LABEL_66;
  }

LABEL_160:
  *&valuePtr[0] = 0;
  v22 = sub_23EB4BB3C(v26, valuePtr);
  v13 = v22;
  if (v22)
  {
    goto LABEL_67;
  }

  v23 = 0;
  v24 = *(*&valuePtr[0] + 4);
  if (v24 > 6)
  {
    if ((v24 - 7) >= 2 && v24 != 12)
    {
      if (v24 != 13)
      {
        goto LABEL_174;
      }

      sub_23EB8DED4(v22, v26, a3);
LABEL_33:
      v13 = 0;
      goto LABEL_67;
    }

LABEL_32:
    v12 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], "", 0x8000100u);
    *a3 = v12;
    if (!v12)
    {
      v13 = 4294960568;
      goto LABEL_67;
    }

    goto LABEL_33;
  }

  if (v24 > 4)
  {
    if (v24 == 5)
    {
      v23 = 4;
      goto LABEL_174;
    }
  }

  else if (v24 != 3)
  {
    if (v24 == 4)
    {
      v23 = 2;
    }

    goto LABEL_174;
  }

  v23 = 1;
LABEL_174:
  memset(valuePtr, 0, sizeof(valuePtr));
  v13 = sub_23EB4EBC4(v26, valuePtr, v23, 1, a3);
LABEL_67:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v13;
}

void sub_23EB8DC50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23EB8DCF4(std::string *__str, unsigned int *a2, std::string *a3)
{
  memset(&__stra, 0, sizeof(__stra));
  v6 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  v7 = v6 < 0;
  if (v6 >= 0)
  {
    v8 = __str;
  }

  else
  {
    v8 = __str->__r_.__value_.__r.__words[0];
  }

  if (v7)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  else
  {
    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  v10 = v8 + size;
  if (size)
  {
    v11 = v8;
    v12 = (v8 + size);
    do
    {
      v13 = v11;
      v14 = v11;
      while (1)
      {
        v15 = *v14++;
        if (v15 == 46)
        {
          break;
        }

        v13 = v14;
        if (v14 == v10)
        {
          v13 = v12;
          goto LABEL_16;
        }
      }

      v11 = (&v13->__r_.__value_.__l.__data_ + 1);
      v12 = v13;
    }

    while (v14 != v10);
  }

  else
  {
    v13 = v8;
  }

LABEL_16:
  v16 = v13 - v8;
  if (v13 == v10)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16 + 1;
  }

  std::string::basic_string(&v22, __str, v17, 0xFFFFFFFFFFFFFFFFLL, &v24);
  __stra = v22;
  v18 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
  v19 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v18 = v22.__r_.__value_.__l.__size_;
  }

  if (v18 == 4)
  {
    if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = __str;
    }

    else
    {
      v20 = __str->__r_.__value_.__r.__words[0];
    }

    v21 = sub_23EB9AC64(v20);
    if (a2)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v21 = 0;
    if (a2)
    {
LABEL_26:
      *a2 = v21;
    }
  }

  if (a3)
  {
    std::string::operator=(a3, &__stra);
    v19 = HIBYTE(__stra.__r_.__value_.__r.__words[2]);
  }

  if (v19 < 0)
  {
    operator delete(__stra.__r_.__value_.__l.__data_);
  }
}

void sub_23EB8DE34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_23EB8DE50(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      sub_23EBADD84();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

uint64_t sub_23EB8DED4(uint64_t a1, int a2, CFMutableDictionaryRef *a3)
{
  if (!a3)
  {
    return 4294967292;
  }

  v5 = *MEMORY[0x277CBECE8];
  if (a2 != 1298223988)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *a3 = Mutable;
    if (!Mutable)
    {
      return 4294960568;
    }

    v9 = CFArrayCreateMutable(v5, 0, MEMORY[0x277CBF128]);
    if (!v9)
    {
      return 4294960568;
    }

    v10 = v9;
    v7 = 0;
    if (a2 > 1718186596)
    {
      if (a2 > 1937328486)
      {
        if (a2 == 1937328487)
        {
          v12 = *a3;
          v13 = @"problems";
          goto LABEL_30;
        }

        if (a2 != 1950434124)
        {
          v11 = 1970500196;
          goto LABEL_24;
        }

        CFDictionarySetValue(*a3, @"entries", v9);
        v30 = 0;
        v27 = sub_23EB6FDFC(v5, v10, "{%@}", v22, v23, v24, v25, v26, &v30);
        if (v27)
        {
LABEL_34:
          v7 = v27;
          goto LABEL_35;
        }

        v21 = v30;
        v29 = @"wirelessAccessTimes";
        v19 = "%kO=[%O]%kO=%O%kO=%i%kO=%O";
        v20 = v5;
LABEL_33:
        v27 = sub_23EB6FDFC(v20, v21, v19, v14, v15, v16, v17, v18, v29);
        goto LABEL_34;
      }

      if (a2 != 1718186597)
      {
        v11 = 1766026340;
LABEL_24:
        if (a2 == v11)
        {
          v12 = *a3;
          v13 = @"users";
          goto LABEL_30;
        }

LABEL_35:
        CFRelease(v10);
        return v7;
      }

      CFDictionarySetValue(*a3, @"firewallEnabled", *MEMORY[0x277CBED10]);
LABEL_29:
      v12 = *a3;
      v13 = @"entries";
      goto LABEL_30;
    }

    if (a2 > 1466517096)
    {
      if (a2 == 1466517097)
      {
        CFDictionarySetValue(*a3, @"radios", v9);
        v19 = "{}";
        v20 = v5;
        v21 = v10;
        goto LABEL_33;
      }

      if (a2 != 1684558668)
      {
        goto LABEL_35;
      }

      v12 = *a3;
      v13 = @"leases";
    }

    else
    {
      if (a2 == 912684908)
      {
        goto LABEL_29;
      }

      if (a2 != 1146250611)
      {
        goto LABEL_35;
      }

      v12 = *a3;
      v13 = @"dhcpReservations";
    }

LABEL_30:
    CFDictionarySetValue(v12, v13, v10);
    v7 = 0;
    goto LABEL_35;
  }

  v6 = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *a3 = v6;
  if (v6)
  {
    return 0;
  }

  else
  {
    return 4294960568;
  }
}

BOOL sub_23EB8E1B0(uint64_t a1, int a2)
{
  result = 0;
  if ((*(a1 + 386) & 1) == 0)
  {
    v3 = 0;
    if (!sub_23EBB4964(a2, &v3) && v3 && *(v3 + 25))
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_23EB8E208(uint64_t a1, std::string *__str)
{
  v4 = 0;
  sub_23EB8DCF4(__str, &v4, 0);
  return v4 && sub_23EB8E1B0(a1, v4);
}

std::string *sub_23EB8E260@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  result = sub_23EB8CCB8(a2, "WiFi.radios.[*].");
  if (a1 != -1)
  {
    snprintf(__str, 0x10uLL, "%d", a1);
    v5 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if (v5 >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = a2->__r_.__value_.__r.__words[0];
    }

    if (v5 >= 0)
    {
      size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = a2->__r_.__value_.__l.__size_;
    }

    v8 = v6 + size;
    if (size >= 1)
    {
      v9 = v6;
      do
      {
        v10 = memchr(v9, 42, size);
        if (!v10)
        {
          break;
        }

        if (*v10 == 42)
        {
          goto LABEL_14;
        }

        v9 = (v10 + 1);
        size = v8 - v9;
      }

      while (v8 - v9 > 0);
    }

    v10 = v8;
LABEL_14:
    if (v10 == v8)
    {
      v11 = -1;
    }

    else
    {
      v11 = v10 - v6;
    }

    return std::string::replace(a2, v11, 1uLL, __str);
  }

  return result;
}

void sub_23EB8E360(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_23EB8E37C(uint64_t *a1, char *__s, unint64_t a3)
{
  v5 = a1;
  v6 = *(a1 + 23);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v5 = *a1;
    v6 = a1[1];
  }

  v7 = strlen(__s);
  v8 = v6 - a3;
  if (v6 < a3)
  {
    return -1;
  }

  v9 = v7;
  if (v7)
  {
    v10 = (v5 + v6);
    if (v8 >= v7)
    {
      v13 = (v5 + a3);
      v14 = *__s;
      do
      {
        v15 = v8 - v9;
        if (v15 == -1)
        {
          break;
        }

        v16 = memchr(v13, v14, v15 + 1);
        if (!v16)
        {
          break;
        }

        v11 = v16;
        if (!memcmp(v16, __s, v9))
        {
          goto LABEL_8;
        }

        v13 = v11 + 1;
        v8 = v10 - (v11 + 1);
      }

      while (v8 >= v9);
    }

    v11 = v10;
LABEL_8:
    if (v11 == v10)
    {
      return -1;
    }

    else
    {
      return &v11[-v5];
    }
  }

  return a3;
}

uint64_t sub_23EB8E448(uint64_t a1, const __CFString *a2, const __CFString *a3, const __CFString *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v128 = *MEMORY[0x277D85DE8];
  v125 = 0;
  memset(&__p, 0, sizeof(__p));
  theArray = 0;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_6;
  }

  sub_23EB6FF14(a3, &theArray, "%kC.%kO", a4, a5, a6, a7, a8, 1466517097);
  v12 = v11;
  if (v11)
  {
    goto LABEL_6;
  }

  v13 = sub_23EB8F428(a1, theArray);
  v14 = v13 < 2 ? 0 : sub_23EB8F4AC(a1, theArray);
  v16 = v14 == 0;
  v21 = sub_23EB8F428(a1, 0);
  v22 = v21 < 2 ? 0 : sub_23EB8F4AC(a1, 0);
  v12 = 0;
  if (!v13)
  {
    goto LABEL_6;
  }

  v116 = v22 == 0;
  v117 = v22;
  if (!v21)
  {
    goto LABEL_6;
  }

  v12 = 0;
  if (v13 > 2 || v21 > 2)
  {
    goto LABEL_6;
  }

  v23 = 1651861868;
  v12 = 0;
  v24 = v21 == 2;
  v25 = v13 == 1 && v21 == 2;
  if (v13 != 2)
  {
    v24 = 0;
  }

  v114 = v24;
  v115 = v25;
  v26 = &qword_23EC201D8;
  do
  {
    if (dword_27E381AB0 <= 8000 && (dword_27E381AB0 != -1 || sub_23EB74AC8(&dword_27E381AB0, 0x1F40u)))
    {
      sub_23EB75374(&dword_27E381AB0, "ACPStatus BaseStation::MergeRadiosArraySettings(CFDictionaryRef, CFDictionaryRef, CFArrayRef)", 8000, "%s: Importing propertyCode: '%C'\n", v17, v18, v19, v20, "ACPStatus BaseStation::MergeRadiosArraySettings(CFDictionaryRef, CFDictionaryRef, CFArrayRef)");
    }

    if (!sub_23EB8F5B4(v23))
    {
      goto LABEL_43;
    }

    v27 = sub_23EB4BD2C(v23, v126);
    v28 = sub_23EB8CCB8(v121, v27);
    if (v23 == 2003061875)
    {
      v28 = MEMORY[0x23EF1EFD0](v121, "legacywds");
    }

    if (v21 == 1 || (v30 = sub_23EB8F9D0(v28, v23), (v30 & 1) != 0))
    {
LABEL_32:
      sub_23EB6FF14(a4, &v125, "[*].%ks", v29, v17, v18, v19, v20, v14);
      if (v31)
      {
        goto LABEL_33;
      }

      MEMORY[0x23EF1EFD0](&__p, "WiFi.radios.[*].");
      sub_23EB8FB78(&__p, v23, &__p);
      if (dword_27E381AB0 <= 8000 && (dword_27E381AB0 != -1 || sub_23EB74AC8(&dword_27E381AB0, 0x1F40u)))
      {
        sub_23EB75374(&dword_27E381AB0, "ACPStatus BaseStation::MergeRadiosArraySettings(CFDictionaryRef, CFDictionaryRef, CFArrayRef)", 8000, "%s: Importing val: '%@' @ %s in simple case.\n", v33, v34, v35, v36, "ACPStatus BaseStation::MergeRadiosArraySettings(CFDictionaryRef, CFDictionaryRef, CFArrayRef)");
      }

      goto LABEL_38;
    }

    if (!v115)
    {
      if (!v114)
      {
        goto LABEL_33;
      }

      sub_23EB6FF14(a4, &v125, "[*].%ks", v29, v17, v18, v19, v20, v14);
      if (!v58)
      {
        MEMORY[0x23EF1EFD0](&__p, "WiFi.radios.[*].");
        sub_23EB8FB78(&__p, v23, &__p);
        v112 = v16;
        snprintf(__str, 0x10uLL, "%ld", v117);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        v67 = p_p + size;
        if (size >= 1)
        {
          v68 = p_p;
          do
          {
            v69 = memchr(v68, 42, size);
            if (!v69)
            {
              break;
            }

            if (*v69 == 42)
            {
              goto LABEL_87;
            }

            v68 = (v69 + 1);
            size = v67 - v68;
          }

          while (v67 - v68 > 0);
        }

        v69 = v67;
LABEL_87:
        if (v69 == v67)
        {
          v70 = -1;
        }

        else
        {
          v70 = v69 - p_p;
        }

        std::string::replace(&__p, v70, 1uLL, __str);
        v16 = v112;
        if (dword_27E381AB0 <= 8000 && (dword_27E381AB0 != -1 || sub_23EB74AC8(&dword_27E381AB0, 0x1F40u)))
        {
          sub_23EB75374(&dword_27E381AB0, "ACPStatus BaseStation::MergeRadiosArraySettings(CFDictionaryRef, CFDictionaryRef, CFArrayRef)", 8000, "%s: Importing val: '%@' @ %s into 2.4GHz radio.\n", v71, v72, v73, v74, "ACPStatus BaseStation::MergeRadiosArraySettings(CFDictionaryRef, CFDictionaryRef, CFArrayRef)");
        }

        v12 = sub_23EB8FC04(a1, &__p, v125, 0);
        if (v12)
        {
          goto LABEL_39;
        }
      }

      sub_23EB6FF14(a4, &v125, "[*].%ks", v57, v17, v18, v19, v20, v16);
      if (v59)
      {
        goto LABEL_33;
      }

      MEMORY[0x23EF1EFD0](&__p, "WiFi.radios.[*].");
      sub_23EB8FB78(&__p, v23, &__p);
      snprintf(__str, 0x10uLL, "%ld", v116);
      v60 = sub_23EB8E37C(&__p, "*", 0);
      std::string::replace(&__p, v60, 1uLL, __str);
      if (dword_27E381AB0 <= 8000 && (dword_27E381AB0 != -1 || sub_23EB74AC8(&dword_27E381AB0, 0x1F40u)))
      {
        sub_23EB75374(&dword_27E381AB0, "ACPStatus BaseStation::MergeRadiosArraySettings(CFDictionaryRef, CFDictionaryRef, CFArrayRef)", 8000, "%s: Importing val: '%@' @ %s into 5GHz radio.\n", v61, v62, v63, v64, "ACPStatus BaseStation::MergeRadiosArraySettings(CFDictionaryRef, CFDictionaryRef, CFArrayRef)");
      }

      goto LABEL_38;
    }

    if (sub_23EB8FAFC(v30, v23))
    {
      goto LABEL_32;
    }

    sub_23EB6FF14(a4, &v125, "[*].%ks", v29, v17, v18, v19, v20, v14);
    if (v38)
    {
      goto LABEL_33;
    }

    MEMORY[0x23EF1EFD0](&__p, "WiFi.radios.[*].");
    sub_23EB8FB78(&__p, v23, &__p);
    if (v23 > 1918981954)
    {
      if (v23 == 2003061875 || v23 == 2003060332)
      {
LABEL_104:
        snprintf(__str, 0x10uLL, "%ld", v117);
        v78 = sub_23EB8E37C(&__p, "*", 0);
        std::string::replace(&__p, v78, 1uLL, __str);
        if (dword_27E381AB0 <= 8000 && (dword_27E381AB0 != -1 || sub_23EB74AC8(&dword_27E381AB0, 0x1F40u)))
        {
          sub_23EB75374(&dword_27E381AB0, "ACPStatus BaseStation::MergeRadiosArraySettings(CFDictionaryRef, CFDictionaryRef, CFArrayRef)", 8000, "%s: Importing val: '%@' @ %s into 2.4GHzOnly radio.\n", v79, v80, v81, v82, "ACPStatus BaseStation::MergeRadiosArraySettings(CFDictionaryRef, CFDictionaryRef, CFArrayRef)");
        }
      }

      else
      {
        if (v23 != 1918981955)
        {
LABEL_109:
          if (dword_27E381AB0 <= 8000 && (dword_27E381AB0 != -1 || sub_23EB74AC8(&dword_27E381AB0, 0x1F40u)))
          {
            sub_23EB75374(&dword_27E381AB0, "ACPStatus BaseStation::MergeRadiosArraySettings(CFDictionaryRef, CFDictionaryRef, CFArrayRef)", 8000, "%s: Code '%s' isn't supported.\n", v17, v18, v19, v20, "ACPStatus BaseStation::MergeRadiosArraySettings(CFDictionaryRef, CFDictionaryRef, CFArrayRef)");
          }

          goto LABEL_33;
        }

        v120 = 0;
        sub_23EB6FF14(a4, &v120, "[*].%kO:int", v39, v17, v18, v19, v20, v14);
        v12 = v76;
        if (v76)
        {
          goto LABEL_39;
        }

        if (v120 > 0xA || ((1 << v120) & 0x520) == 0)
        {
LABEL_140:
          v12 = 0;
          goto LABEL_33;
        }

        valuePtr = 0;
        HIDWORD(v118) = 0;
        sub_23EB6FF14(a2, &valuePtr, "%kC", v75, v17, v18, v19, v20, 1937329234);
        v12 = v77;
        if (v77 == -6727)
        {
          v12 = 4294960569;
LABEL_33:
          v32 = 1;
          goto LABEL_40;
        }

        if (!valuePtr || (Value = CFDictionaryGetValue(valuePtr, @"regions")) == 0 || (sub_23EB6FF14(a2, &v118 + 4, "%kC:int", v90, v17, v18, v19, v20, 1937330789), v12 = v92, v92) || (v93 = sub_23EB9048C(0, Value, SHIDWORD(v118), @"ht40_5GHz"), (v12 = v93) == 0))
        {
LABEL_39:
          v32 = 0;
          goto LABEL_40;
        }

        v94 = CFBooleanGetValue(v93);
        CFRelease(v12);
        if (!v94)
        {
          goto LABEL_140;
        }

        snprintf(__str, 0x10uLL, "%ld", v116);
        v95 = sub_23EB8E37C(&__p, "*", 0);
        std::string::replace(&__p, v95, 1uLL, __str);
        if (dword_27E381AB0 <= 8000 && (dword_27E381AB0 != -1 || sub_23EB74AC8(&dword_27E381AB0, 0x1F40u)))
        {
          sub_23EB75374(&dword_27E381AB0, "ACPStatus BaseStation::MergeRadiosArraySettings(CFDictionaryRef, CFDictionaryRef, CFArrayRef)", 8000, "%s: Importing val: '%@' @ %s into 5GHzOnly radio.\n", v96, v97, v98, v99, "ACPStatus BaseStation::MergeRadiosArraySettings(CFDictionaryRef, CFDictionaryRef, CFArrayRef)");
        }
      }

LABEL_38:
      v12 = sub_23EB8FC04(a1, &__p, v125, 0);
      if (!v12)
      {
        goto LABEL_33;
      }

      goto LABEL_39;
    }

    switch(v23)
    {
      case 1651720515:
        goto LABEL_104;
      case 1918976872:
        if (sub_23EBB4A64(1651724867) != 6)
        {
          goto LABEL_39;
        }

        LODWORD(valuePtr) = 0;
        if (CFNumberGetValue(v125, kCFNumberIntType, &valuePtr))
        {
          v83 = 0;
          v84 = 1;
          while (1)
          {
            v113 = v84;
            MEMORY[0x23EF1EFD0](&__p, "WiFi.radios.[*].");
            sub_23EB8FB78(&__p, 1651724867, &__p);
            snprintf(__str, 0x10uLL, "%ld", v83);
            v85 = sub_23EB8E37C(&__p, "*", 0);
            std::string::replace(&__p, v85, 1uLL, __str);
            if (sub_23EB90740(a1, &__p, valuePtr, 1))
            {
              sub_23EB8FB78(&__p, 1918976872, &__p);
              if (dword_27E381AB0 <= 8000 && (dword_27E381AB0 != -1 || sub_23EB74AC8(&dword_27E381AB0, 0x1F40u)))
              {
                sub_23EB75374(&dword_27E381AB0, "ACPStatus BaseStation::MergeRadiosArraySettings(CFDictionaryRef, CFDictionaryRef, CFArrayRef)", 8000, "%s: Importing val: %u @ %s into my radio index %ld.\n", v86, v87, v88, v89, "ACPStatus BaseStation::MergeRadiosArraySettings(CFDictionaryRef, CFDictionaryRef, CFArrayRef)");
              }

              v12 = sub_23EB8FC04(a1, &__p, v125, 0);
              if (v12)
              {
                goto LABEL_39;
              }
            }

            else if (dword_27E381AB0 <= 8000 && (dword_27E381AB0 != -1 || sub_23EB74AC8(&dword_27E381AB0, 0x1F40u)))
            {
              sub_23EB75374(&dword_27E381AB0, "ACPStatus BaseStation::MergeRadiosArraySettings(CFDictionaryRef, CFDictionaryRef, CFArrayRef)", 8000, "%s: Value: %u @ path '%s' isn't supported.\n", v17, v18, v19, v20, "ACPStatus BaseStation::MergeRadiosArraySettings(CFDictionaryRef, CFDictionaryRef, CFArrayRef)");
            }

            v84 = 0;
            v83 = 1;
            if ((v113 & 1) == 0)
            {
              goto LABEL_33;
            }
          }
        }

        v32 = 0;
        v12 = 4294967292;
        break;
      case 1918979445:
        v111 = v16;
        LODWORD(valuePtr) = 0;
        v120 = 0;
        v118 = 0;
        sub_23EB6FF14(a4, &valuePtr, "[*].%kO:int", v39, v17, v18, v19, v20, v14);
        v12 = v41;
        if (!v41)
        {
          v42 = valuePtr;
          v43 = valuePtr < 0xB;
          sub_23EB6FF14(a4, &v120, "[*].%kC:int", v40, v17, v18, v19, v20, v14);
          v12 = v44;
          if (!v44)
          {
            v45 = 0x530u >> v42;
            v46 = sub_23EB90564(v44, 1918979445, v43 & v45, 0, v120, &v118 + 1);
            v12 = v46;
            if (!v46)
            {
              v12 = sub_23EB90564(v46, 1918979445, v43 & v45, 1, v120, &v118);
              if (!v12)
              {
                MEMORY[0x23EF1EFD0](&__p, "WiFi.radios.[*].");
                sub_23EB8FB78(&__p, 1918979445, &__p);
                snprintf(__str, 0x10uLL, "%ld", v117);
                v47 = sub_23EB8E37C(&__p, "*", 0);
                std::string::replace(&__p, v47, 1uLL, __str);
                sub_23EB8FB78(&__p, 1918979445, &__p);
                if (dword_27E381AB0 <= 8000 && (dword_27E381AB0 != -1 || sub_23EB74AC8(&dword_27E381AB0, 0x1F40u)))
                {
                  sub_23EB75374(&dword_27E381AB0, "ACPStatus BaseStation::MergeRadiosArraySettings(CFDictionaryRef, CFDictionaryRef, CFArrayRef)", 8000, "%s: Mapping %u to 2.4GHz val: %u @ %s. into my radio\n", v48, v49, v50, v51, "ACPStatus BaseStation::MergeRadiosArraySettings(CFDictionaryRef, CFDictionaryRef, CFArrayRef)");
                }

                v12 = sub_23EB906B8(a1, &__p, SHIDWORD(v118), 0);
                if (!v12)
                {
                  MEMORY[0x23EF1EFD0](&__p, "WiFi.radios.[*].");
                  sub_23EB8FB78(&__p, 1918979445, &__p);
                  snprintf(__str, 0x10uLL, "%ld", v116);
                  v52 = sub_23EB8E37C(&__p, "*", 0);
                  std::string::replace(&__p, v52, 1uLL, __str);
                  sub_23EB8FB78(&__p, 1918979445, &__p);
                  if (dword_27E381AB0 <= 8000 && (dword_27E381AB0 != -1 || sub_23EB74AC8(&dword_27E381AB0, 0x1F40u)))
                  {
                    sub_23EB75374(&dword_27E381AB0, "ACPStatus BaseStation::MergeRadiosArraySettings(CFDictionaryRef, CFDictionaryRef, CFArrayRef)", 8000, "%s: Mapping %u to 5 GHz val: %u @ %s into my radio.\n", v53, v54, v55, v56, "ACPStatus BaseStation::MergeRadiosArraySettings(CFDictionaryRef, CFDictionaryRef, CFArrayRef)");
                  }

                  v12 = sub_23EB906B8(a1, &__p, v118, 0);
                  if (!v12)
                  {
                    v16 = v111;
                    goto LABEL_33;
                  }
                }
              }
            }
          }
        }

        v32 = 0;
        v16 = v111;
        break;
      default:
        goto LABEL_109;
    }

LABEL_40:
    if (v122 < 0)
    {
      operator delete(v121[0]);
    }

    if ((v32 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_43:
    v37 = *(v26 + 3);
    v26 = (v26 + 12);
    v23 = v37;
  }

  while (v37);
  if (sub_23EB8BE08(a1, 1198748750))
  {
    sub_23EB6FF14(a4, &v125, "[*].%ks", v101, v102, v103, v104, v105, v14);
    if (!v106)
    {
      MEMORY[0x23EF1EFD0](&__p, "WiFi.radios.[*].");
      sub_23EB8CCB8(v121, "vaps");
      sub_23EB90814(&__p, v121, &__p);
      if (v122 < 0)
      {
        operator delete(v121[0]);
      }

      if (dword_27E381AB0 <= 8000 && (dword_27E381AB0 != -1 || sub_23EB74AC8(&dword_27E381AB0, 0x1F40u)))
      {
        sub_23EB75374(&dword_27E381AB0, "ACPStatus BaseStation::MergeRadiosArraySettings(CFDictionaryRef, CFDictionaryRef, CFArrayRef)", 8000, "%s: Importing vaps to %s.\n", v107, v108, v109, v110, "ACPStatus BaseStation::MergeRadiosArraySettings(CFDictionaryRef, CFDictionaryRef, CFArrayRef)");
      }

      v12 = sub_23EB8FC04(a1, &__p, v125, 0);
    }
  }

LABEL_6:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v12;
}

void sub_23EB8F3C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

CFIndex sub_23EB8F428(uint64_t a1, CFArrayRef theArray)
{
  cf = 0;
  if (theArray || !sub_23EB8BFFC(a1, 1466517097, &cf, 0) && (theArray = CFDictionaryGetValue(cf, @"radios")) != 0)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return Count;
}

uint64_t sub_23EB8F4AC(uint64_t a1, CFArrayRef theArray)
{
  Value = theArray;
  v15 = 0;
  cf = 0;
  if (!theArray)
  {
    if (!sub_23EB8BE08(a1, 1935819842))
    {
      return 0;
    }

    if (sub_23EB8BFFC(a1, 1466517097, &cf, 0))
    {
      goto LABEL_10;
    }

    Value = CFDictionaryGetValue(cf, @"radios");
    if (!Value)
    {
      goto LABEL_10;
    }
  }

  Count = CFArrayGetCount(Value);
  if (Count >= 2)
  {
    v9 = Count;
    v10 = 0;
    while (1)
    {
      sub_23EB6FF14(Value, &v15, "[*].%kO:int", v4, v5, v6, v7, v8, v10);
      if (!v11 && (v15 & 0xE) != 0)
      {
        break;
      }

      if (v9 == ++v10)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v10 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

uint64_t sub_23EB8F5B4(int a1)
{
  result = 1;
  if (a1 > 1918977124)
  {
    if (a1 <= 1918980657)
    {
      if (a1 <= 1918978352)
      {
        if (a1 > 1918977365)
        {
          if (a1 == 1918977366 || a1 == 1918977586)
          {
            return result;
          }

          v5 = 18028;
        }

        else
        {
          if (a1 == 1918977125 || a1 == 1918977140)
          {
            return result;
          }

          v5 = 17729;
        }
      }

      else if (a1 <= 1918979406)
      {
        if ((a1 - 1918978353) < 2)
        {
          return result;
        }

        v5 = 19284;
      }

      else
      {
        if ((a1 - 1918979407) <= 0x26 && ((1 << (a1 - 79)) & 0x4000200001) != 0 || a1 == 1918979693)
        {
          return result;
        }

        v5 = 20591;
      }
    }

    else if (a1 <= 1918981169)
    {
      if ((a1 - 1918980658) <= 0x3D && ((1 << (a1 - 50)) & 0x2008000000000001) != 0 || (a1 - 1918980965) <= 0xF && ((1 << (a1 - 101)) & 0x8041) != 0)
      {
        return result;
      }

      v5 = 21298;
    }

    else
    {
      if (a1 > 1918981954)
      {
        if (((a1 - 1918981955) > 0xA || ((1 << (a1 - 67)) & 0x405) == 0) && a1 != 2003060332)
        {
          v4 = 2003061875;
          goto LABEL_68;
        }

        return result;
      }

      if (a1 == 1918981170 || a1 == 1918981229)
      {
        return result;
      }

      v5 = 21810;
    }

LABEL_62:
    v4 = v5 | 0x72610000;
    goto LABEL_68;
  }

  if (a1 > 1651724877)
  {
    if (a1 <= 1918976354)
    {
      if (a1 <= 1683440722)
      {
        if (a1 > 1651725132)
        {
          if (a1 == 1651725133)
          {
            return result;
          }

          v3 = 29268;
        }

        else
        {
          if (a1 == 1651724878)
          {
            return result;
          }

          v3 = 21323;
        }

        goto LABEL_67;
      }

      if (a1 > 1700876864)
      {
        if (a1 == 1700876865)
        {
          return result;
        }

        v4 = 1918128974;
      }

      else
      {
        if (a1 == 1683440723)
        {
          return result;
        }

        v4 = 1685538412;
      }

LABEL_68:
      if (a1 == v4)
      {
        return result;
      }

      return 0;
    }

    if (a1 > 1918976832)
    {
      v6 = a1 - 1918976833;
      if (v6 > 0x31 || ((1 << v6) & 0x2098000000001) == 0)
      {
        return 0;
      }

      return result;
    }

    if (a1 == 1918976355 || a1 == 1918976373)
    {
      return result;
    }

    v5 = 17202;
    goto LABEL_62;
  }

  if (a1 > 1651723636)
  {
    if (a1 <= 1651724336)
    {
      if (a1 == 1651723637)
      {
        return result;
      }

      v3 = 20045;
      goto LABEL_67;
    }

    if ((a1 - 1651724337) > 0x14 || ((1 << (a1 - 49)) & 0x100003) == 0)
    {
      v3 = 21059;
      goto LABEL_67;
    }
  }

  else if (a1 <= 1651720514)
  {
    if (a1 != 1633895790 && a1 != 1651717459)
    {
      v3 = 14413;
      goto LABEL_67;
    }
  }

  else if (((a1 - 1651722051) > 0x10 || ((1 << (a1 - 67)) & 0x12C05) == 0) && a1 != 1651720515)
  {
    v3 = 16724;
LABEL_67:
    v4 = v3 | 0x62730000;
    goto LABEL_68;
  }

  return result;
}

uint64_t sub_23EB8F9D0(uint64_t a1, int a2)
{
  result = sub_23EB8F5B4(a2);
  if (result)
  {
    result = 1;
    if (a2 <= 1918979427)
    {
      if (a2 > 1651724866)
      {
        if (a2 != 1651724867 && a2 != 1918976833)
        {
          v4 = 17256;
          goto LABEL_17;
        }
      }

      else if (a2 != 1651718221 && a2 != 1651720515)
      {
        v5 = 1651723637;
        goto LABEL_20;
      }
    }

    else if (a2 <= 1918981954)
    {
      if (a2 != 1918979428 && a2 != 1918979445)
      {
        v4 = 20077;
        goto LABEL_17;
      }
    }

    else if (a2 > 2003060331)
    {
      if (a2 != 2003061875)
      {
        v5 = 2003060332;
LABEL_20:
        if (a2 != v5)
        {
          return result;
        }
      }
    }

    else if (a2 != 1918981955)
    {
      v4 = 22341;
LABEL_17:
      v5 = v4 | 0x72610000;
      goto LABEL_20;
    }

    return 0;
  }

  return result;
}

uint64_t sub_23EB8FAFC(uint64_t a1, int a2)
{
  result = sub_23EB8F5B4(a2);
  if (result)
  {
    result = 1;
    if (a2 > 1918979692)
    {
      if (a2 == 1918979693)
      {
        return result;
      }

      v4 = 22341;
    }

    else
    {
      if (a2 == 1918976833)
      {
        return result;
      }

      v4 = 19812;
    }

    if (a2 != (v4 | 0x72610000))
    {
      return 0;
    }
  }

  return result;
}

void sub_23EB8FB78(unsigned __int8 *a1, int a2, std::string *a3)
{
  v9 = 0;
  v8 = 0;
  v5 = sub_23EB4BD2C(a2, &v8);
  sub_23EB8CCB8(__p, v5);
  sub_23EB90814(a1, __p, a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_23EB8FBE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}